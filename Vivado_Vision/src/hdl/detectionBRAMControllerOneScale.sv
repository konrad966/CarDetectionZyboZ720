`timescale 1ns / 1ps
`default_nettype none

// suffixes in signals of this module are clock domains

module detectionBRAMControllerOneScale
	#(
		parameter ADDRESS_WIDTH      = 8,
		parameter COORD_WIDTH        = 16,
		parameter MEMORY_WIDTH       = 32,
		parameter TEST_MODE          = 0,
		parameter FREQ_DIVIDER_WIDTH = 1
	)
	(
		input  wire                     pclk,
		input  wire                     clk_axi,
		input  wire                     reset_pclk,
		input  wire                     reset_axi,
		input  wire                     ps_ready_axi,
		input  wire                     ps_busy_axi,
		output wire                     request_irq_out_axi,
		input  wire [COORD_WIDTH-1:0]   bbox_x_start_pclk,
		input  wire [COORD_WIDTH-1:0]   bbox_y_start_pclk,
		input  wire [COORD_WIDTH-1:0]   bbox_x_end_pclk,
		input  wire [COORD_WIDTH-1:0]   bbox_y_end_pclk,
		input  wire                     bbox_valid_pclk,
		input  wire                     classification_done_pclk,

		// write side
		output wire                     write_en_out_axi,
		output wire [ADDRESS_WIDTH-1:0] write_address_out_axi,
		output wire [MEMORY_WIDTH-1:0]  write_data_out_axi
	);

	// CDC (pclk to axi) + queueing incoming data
	wire                           classification_done_axi;
	wire                           fifo_empty_axi;
	wire       [MEMORY_WIDTH-1:0]  fifo_data_out_axi;
	reg                            fifo_read_en_axi         = '0;
	wire                           ps_busy_pclk;
	wire                           fifo_full_pclk;

	PulseSyncCDC sync_ps_busy (
		.clkIn           ( clk_axi      ),
		.clkOut          ( pclk         ),
		.resetIn         ( reset_axi    ),
		.resetOut        ( reset_pclk   ),
		.pulseIn         ( ps_busy_axi  ),
		.pulseOut        ( ps_busy_pclk ),
		.fallingEdge     (              ),
		.risingEdge      (              ),
		.pulseOutFiltered(              )
	);

	fifo_w64_r32_d128_async detection_fifo (
		.wr_clk ( pclk                                                                    ),
		.rd_clk ( clk_axi                                                                 ),
		.rst    ( reset_pclk                                                              ),
		.din    ( {bbox_y_start_pclk, bbox_y_end_pclk, bbox_x_start_pclk, bbox_x_end_pclk}),
		.wr_en  ( bbox_valid_pclk & ~ps_busy_pclk & ~fifo_full_pclk                       ),
		.rd_en  ( fifo_read_en_axi                                                        ),
		.dout   ( fifo_data_out_axi                                                       ),
		.full   ( fifo_full_pclk                                                          ),
		.empty  ( fifo_empty_axi                                                          )
	);

	PulseSyncCDC sync_classification_done (
		.clkIn           ( pclk                     ),
		.clkOut          ( clk_axi                  ),
		.resetIn         ( reset_pclk               ),
		.resetOut        ( reset_axi                ),
		.pulseIn         ( classification_done_pclk ),
		.pulseOut        (                          ),
		.fallingEdge     (                          ),
		.risingEdge      ( classification_done_axi  ),
		.pulseOutFiltered(                          )
	);

	localparam [ADDRESS_WIDTH-1:0] BYTES_OF_DATA            = MEMORY_WIDTH / 8;

	reg        [MEMORY_WIDTH-1:0]  detection_cnt;

	localparam [2:0]               SM_RESET                 = 3'b001;
	localparam [2:0]               SM_IDLE                  = 3'b010;
	localparam [2:0]               SM_WRITE_Y_COORD         = 3'b011;
	localparam [2:0]               SM_WRITE_X_COORD         = 3'b100;
	localparam [2:0]               SM_WRITE_HEADER          = 3'b101;
	localparam [2:0]               SM_IRQ_REQUEST           = 3'b110;
	localparam [2:0]               SM_WAIT_X_COORD          = 3'b111;

	reg        [2:0]               sm_state_axi             = SM_RESET;
	reg                            request_irq_axi          = '0;
	reg                            write_en_axi             = '0;
	reg        [ADDRESS_WIDTH-1:0] write_address_axi        = '0;
	reg        [MEMORY_WIDTH-1:0]  write_data_axi           = '0;
	reg                            done_pending_axi         = '0;              // not to loose classification_done signal during fifo reading
	wire                           freq_div_counter_max_axi;

	generate

		if (FREQ_DIVIDER_WIDTH == 0) begin : GEN_NO_DIV
			assign freq_div_counter_max_axi                   = 'b1;
		end
		else begin : GEN_DIV

			reg [FREQ_DIVIDER_WIDTH-1:0] freq_div_counter_axi = '0;

			always @(posedge clk_axi) begin
				if (reset_axi) begin
					freq_div_counter_axi <= '0;
				end
				else if (sm_state_axi == SM_WRITE_HEADER) begin
					freq_div_counter_axi <= freq_div_counter_axi + 'd1;
				end
				else begin
					freq_div_counter_axi <= freq_div_counter_axi;
				end
			end

			assign freq_div_counter_max_axi                   = &(freq_div_counter_axi);

		end

	endgenerate

	generate

		if (TEST_MODE == 0) begin : GEN_ACT_MODE

			always @(posedge clk_axi) begin
				if (~ps_ready_axi | reset_axi) begin
					request_irq_axi   <= '0;
					write_address_axi <= '0;
					write_data_axi    <= '0;
					write_en_axi      <= '0;
					detection_cnt     <= '0;
					fifo_read_en_axi  <= '0;
					done_pending_axi  <= '0;
					sm_state_axi      <= SM_RESET;
				end
				else begin
					case (sm_state_axi)

						SM_RESET: begin
							request_irq_axi   <= '0;
							write_address_axi <= '0;
							write_data_axi    <= '0;
							write_en_axi      <= '0;
							detection_cnt     <= '0;
							fifo_read_en_axi  <= '0;
							done_pending_axi  <= '0;
							if (ps_ready_axi) begin
								sm_state_axi     <= SM_IDLE;
							end
							else begin
								sm_state_axi     <= SM_RESET;
							end
						end

						SM_IDLE: begin
							request_irq_axi   <= '0;
							write_address_axi <= write_address_axi;
							write_data_axi    <= '0;
							write_en_axi      <= '0;
							detection_cnt     <= detection_cnt;
							if (~fifo_empty_axi) begin // even when classification finished, read the rest of detections
								fifo_read_en_axi <= 'b1;
								if (classification_done_axi) begin
									done_pending_axi <= 'b1;
								end
								sm_state_axi     <= SM_WRITE_Y_COORD;
							end
							else if (classification_done_axi | done_pending_axi) begin
								sm_state_axi     <= SM_WRITE_HEADER;
								fifo_read_en_axi <= '0;
								done_pending_axi <= '0;
							end
							else begin
								sm_state_axi     <= SM_IDLE;
								fifo_read_en_axi <= '0;
								done_pending_axi <= '0;
							end
						end

						SM_WRITE_Y_COORD: begin
							request_irq_axi   <= '0;
							write_en_axi      <= 'b1;
							write_address_axi <= write_address_axi + BYTES_OF_DATA;
							write_data_axi    <= fifo_data_out_axi;
							detection_cnt     <= detection_cnt; // incremented after x is written
							if (classification_done_axi) begin
								done_pending_axi <= 'b1;
							end
							if (fifo_empty_axi) begin
								fifo_read_en_axi <= '0;
								sm_state_axi     <= SM_WAIT_X_COORD;
							end
							else begin
								fifo_read_en_axi <= 'b1;
								sm_state_axi     <= SM_WRITE_X_COORD;
							end

						end

						SM_WAIT_X_COORD: begin
							request_irq_axi   <= '0;
							write_en_axi      <= '0;
							write_address_axi <= write_address_axi;
							write_data_axi    <= write_data_axi;
							detection_cnt     <= detection_cnt;
							if (classification_done_axi) begin
								done_pending_axi <= 'b1;
							end
							if (fifo_empty_axi) begin
								fifo_read_en_axi <= '0;
								sm_state_axi     <= SM_WAIT_X_COORD;
							end
							else begin
								fifo_read_en_axi <= 'b1;
								sm_state_axi     <= SM_WRITE_X_COORD;
							end
						end

						SM_WRITE_X_COORD: begin
							request_irq_axi   <= '0;
							write_en_axi      <= 'b1;
							write_address_axi <= write_address_axi + BYTES_OF_DATA;
							write_data_axi    <= fifo_data_out_axi;
							detection_cnt     <= detection_cnt + 'd1;
							fifo_read_en_axi  <= '0;
							if (classification_done_axi) begin
								done_pending_axi <= 'b1;
							end
							sm_state_axi      <= SM_IDLE;
						end

						SM_WRITE_HEADER: begin
							request_irq_axi   <= '0;
							write_en_axi      <= 'b1;
							write_address_axi <= '0;
							write_data_axi    <= detection_cnt;
							detection_cnt     <= '0;
							fifo_read_en_axi  <= '0;
							done_pending_axi  <= '0;
							if (ps_busy_axi || ~freq_div_counter_max_axi) begin
								sm_state_axi     <= SM_IDLE;
							end
							else begin
								sm_state_axi     <= SM_IRQ_REQUEST;
							end
						end

						SM_IRQ_REQUEST: begin
							request_irq_axi   <= 'b1;
							write_address_axi <= '0;
							write_data_axi    <= '0;
							write_en_axi      <= '0;
							detection_cnt     <= '0;
							fifo_read_en_axi  <= '0;
							done_pending_axi  <= '0;
							sm_state_axi      <= SM_RESET;
						end

						default: begin
							request_irq_axi   <= '0;
							write_address_axi <= '0;
							write_data_axi    <= '0;
							write_en_axi      <= '0;
							detection_cnt     <= '0;
							fifo_read_en_axi  <= '0;
							done_pending_axi  <= '0;
							sm_state_axi      <= SM_RESET;
						end
					endcase
				end
			end
		end

		else begin : GEN_TEST_MODE

//          always @(posedge clk) begin
//              if (~ps_ready) begin
//                  delay_cnt      <= '0;
//                  launch_test_tx <= '0;
//              end
//              else if (delay_cnt == 32'h0fffffff) begin
//                  delay_cnt      <= '0;
//                  launch_test_tx <= 'b1;
//              end
//              else begin
//                  delay_cnt      <= delay_cnt + 'd1;
//                  launch_test_tx <= '0;
//              end
//          end
//
//          always @(posedge clk) begin
//              if (~ps_ready) begin
//                  request_irq   <= '0;
//                  write_address <= '0;
//                  write_data    <= '0;
//                  write_en      <= '0;
//                  detection_cnt <= '0;
//                  sm_state      <= SM_RESET;
//              end
//              else begin
//                  case (sm_state)
//
//                      SM_RESET: begin
//                          request_irq   <= '0;
//                          write_address <= '0;
//                          write_data    <= '0;
//                          write_en      <= '0;
//                          detection_cnt <= '0;
//                          if (ps_ready) begin
//                              sm_state <= SM_WAIT;
//                          end
//                          else begin
//                              sm_state <= SM_RESET;
//                          end
//                      end
//
//                      SM_WAIT: begin
//                          request_irq   <= '0;
//                          write_address <= '0;
//                          write_data    <= '0;
//                          write_en      <= '0;
//                          detection_cnt <= '0;
//                          if (launch_test_tx) begin
//                              sm_state <= SM_TX_WRITE;
//                          end
//                          else begin
//                              sm_state <= SM_WAIT;
//                          end
//                      end
//
//                      SM_TX_WRITE: begin
//                          request_irq   <= '0;
//                          write_en      <= 'b1;
//                          write_address <= write_address + BYTES_OF_DATA;
//                          write_data    <= {TEST_MODE_Y[detection_cnt], TEST_MODE_X[detection_cnt]};
//                          detection_cnt <= detection_cnt + 'd1;
//                          if (detection_cnt == TEST_MODE_COUNTER_MAX - 'd1) begin
//                              sm_state <= SM_WRITE_HEADER;
//                          end
//                          else begin
//                              sm_state <= SM_TX_WRITE;
//                          end
//                      end
//
//                      SM_WRITE_HEADER: begin
//                          request_irq   <= '0;
//                          write_en      <= 'b1;
//                          write_address <= '0;
//                          write_data    <= detection_cnt;
//                          detection_cnt <= '0;
//                          sm_state      <= SM_IRQ_REQUEST;
//                      end
//
//                      SM_IRQ_REQUEST: begin
//                          request_irq   <= 'b1;
//                          write_address <= '0;
//                          write_data    <= '0;
//                          write_en      <= '0;
//                          detection_cnt <= '0;
//                          sm_state      <= SM_WAIT;
//                      end
//
//                      default: begin
//                          write_address <= '0;
//                          write_data    <= '0;
//                          write_en      <= '0;
//                          request_irq   <= '0;
//                          detection_cnt <= '0;
//                          sm_state      <= SM_RESET;
//                      end
//                  endcase
//              end
//          end
		end
	endgenerate

	assign write_en_out_axi      = write_en_axi;
	assign write_address_out_axi = write_address_axi;
	assign write_data_out_axi    = write_data_axi;
	assign request_irq_out_axi   = request_irq_axi;

endmodule

`default_nettype wire
