`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Bartosz Meus
//
// Create Date: 09.05.2016 11:24:54
// Design Name:
// Module Name: l2normOverlapping
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module l2norm
	#(
		parameter CELLS_IN_LINE  = 160, //8
		parameter LINES_OF_CELLS = 90, //8
		parameter HISTOGRAM_BINS = 9,
		parameter BLOCKS_IN_LINE = 159 //7
	)
	(
		input  wire        clk,
		input  wire        de,
		input  wire        reset,
		input  wire [17:0] histogram_value,
		output wire        de_out,
		output wire [11:0] value_out,
		output wire        feature_fifos_full,
		output wire        prev_hist_fifo_full
	);

	localparam CELL_CNT_WIDTH  = 8;
	localparam LINE_CNT_WIDTH  = 8;
	localparam CELLS_PER_BLOCK = 4;

	// --- square root - norm factor
	wire [35:0] squared_hist_value;

	multiplier_18u_18u_36u square_hist_mult ( // Latency: 3
		.CLK (clk               ), // input wire CLK
		.SCLR(reset             ),
		.A   (histogram_value   ), // input wire [17 : 0] A
		.B   (histogram_value   ), // input wire [17 : 0] B
		.P   (squared_hist_value)  // output wire [35 : 0] P
	);

	wire de_delayed;

	delayLine #(
		.N    (1 ),
		.DELAY(3 )
	) square_to_mult_delay (
		.clk (clk       ),
		.rst (reset     ),
		.ce  (1'b1      ),
		.data(de        ),
		.outp(de_delayed)
	);

	wire [35:0] cell_accumulated;
	wire        de_accumulator;
	wire [3:0]  current_bin;

	// accumulates 9 bins of histogram
	accumulator #(
		.INPUT_WIDTH   (36),
		.OUTPUT_WIDTH  (36),
		.DATA_LENGTH   (9 ),
		.COUNTER_LENGTH(4 )
	) acc (
		.inputValue(squared_hist_value),
		.de        (de_delayed        ),
		.clk       (clk               ),
		.reset     (reset             ),
		.valueOut  (cell_accumulated  ),
		.deOut     (de_accumulator    ),
		.counterOut(current_bin       )
	);

	reg        acc_buffer_write_en   = '0;
	reg [7:0]  acc_buffer_write_addr = '0;
	reg [35:0] acc_buffer_write_data = '0;
	reg [7:0]  cell_x                = '0;
	reg [7:0]  cell_y                = '0;

	// process for writing to accumulated values buffer
	always @(posedge clk) begin
		if (reset) begin
			acc_buffer_write_en   <= '0;
			acc_buffer_write_addr <= '0;
			acc_buffer_write_data <= '0;
			cell_x                <= '0;
			cell_y                <= '0;
		end
		else begin
			// last bin is accumulated, prepare for writing to buffer
			if (de_accumulator) begin
				acc_buffer_write_en   <= 'b1;
				acc_buffer_write_addr <= cell_x;
				acc_buffer_write_data <= cell_accumulated;
				// that was last cell in line...
				if (cell_x == (CELLS_IN_LINE - 'd1)) begin
					// ...and last line of cells (in other words: last cell in frame)
					if (cell_y == (LINES_OF_CELLS - 'd1)) begin
						cell_x <= '0;
						cell_y <= '0;
					end
					// ...not the last line
					else begin
						cell_x <= '0;
						cell_y <= cell_y + 'd1;
					end
				end
				// some cell in the middle of a line
				else begin
					cell_x <= cell_x + 'd1;
					cell_y <= cell_y;
				end
			end
			else begin
				acc_buffer_write_en <= '0;
			end
		end
	end

	bram_36w_256d cell_accum_buff (
		.clka (clk                   ), // input wire clka
		.ena  (1'b1                  ), // input wire ena
		.wea  (acc_buffer_write_en   ), // input wire [0 : 0] wea
		.addra(acc_buffer_write_addr ), // input wire [7 : 0] addra
		.dina (acc_buffer_write_data ), // input wire [35 : 0] dina
		.clkb (clk                   ), // input wire clkb
		.enb  (acc_buffer_read_en    ), // input wire enb
		.addrb(acc_buffer_read_addr  ), // input wire [7 : 0] addrb
		.doutb(acc_buffer_read_data  )  // output wire [35 : 0] doutb
	);

	reg  [7:0]  acc_buffer_read_addr = '0;
	reg         acc_buffer_read_en   = '0;
	wire [35:0] acc_buffer_read_data;

	// if current line is not the first one,
	// then read accumulated cell with the same x coordinate from previous cell
	always @(posedge clk) begin
		if (reset) begin
			acc_buffer_read_addr <= '0;
			acc_buffer_read_en   <= '0;
		end
		else begin
			if (cell_y != '0 && de_delayed) begin
				if (current_bin == 'd0) begin
					acc_buffer_read_addr <= '0;
					acc_buffer_read_en   <= 'b1;
				end

				else if (current_bin == (HISTOGRAM_BINS - 'd1)) begin
					acc_buffer_read_addr <= acc_buffer_read_addr + 'd1;
					acc_buffer_read_en   <= 'b1;
				end
				else begin
					acc_buffer_read_addr <= acc_buffer_read_addr;
					acc_buffer_read_en   <= 'b0;
				end
			end
			else begin
				acc_buffer_read_en   <= '0;
				acc_buffer_read_addr <= acc_buffer_read_addr;
			end
		end
	end

	// delay read data so it 'meets' with current cell sum
	wire [35:0] acc_buffer_read_data_delayed;
	delayLine #(
		.N    (36              ),
		.DELAY(HISTOGRAM_BINS-1)
	) prev_line_acc_data_delay (
		.clk (clk                         ),
		.rst (reset                       ),
		.ce  (1'b1                        ),
		.data(acc_buffer_read_data        ),
		.outp(acc_buffer_read_data_delayed)
	);

	reg [36:0] two_cells_sum       = '0;
	reg        two_cells_sum_valid = '0;

	// sums i-th accumulated cells in j-th and (j-1)-th line
	always @(posedge clk) begin
		if (reset) begin
			two_cells_sum_valid <= '0;
			two_cells_sum       <= '0;
		end
		else begin
			if (cell_y == '0) begin
				two_cells_sum_valid <= '0;
				two_cells_sum       <= '0;
			end
			else if (de_accumulator) begin
				two_cells_sum_valid <= 'b1;
				two_cells_sum       <= acc_buffer_read_data_delayed + cell_accumulated;
			end
			else begin
				two_cells_sum_valid <= '0;
				two_cells_sum       <= two_cells_sum;
			end
		end
	end

	// delay 2-cell sum to get another 2-cell sum and
	wire [36:0] two_cells_sum_delayed;
	wire        two_cells_sum_valid_delayed;
	delayLine #(
		.N    (37 + 1        ),
		.DELAY(HISTOGRAM_BINS)
	) two_cell_sum_delay (
		.clk (clk                                                 ),
		.rst (reset                                               ),
		.ce  (1'b1                                                ),
		.data({two_cells_sum_valid, two_cells_sum}                ),
		.outp({two_cells_sum_valid_delayed, two_cells_sum_delayed})
	);

	wire [7:0] cell_x_delayed;
	delayLine #(
		.N    (8),
		.DELAY(1)
	) delay_cell_x_to_4_cell_adder (
		.clk (clk           ),
		.rst (reset         ),
		.ce  (1'b1          ),
		.data(cell_x        ),
		.outp(cell_x_delayed)
	);

	// sums (x,y) + (x-1,y) + (x-1,y-1) + (x,y-1)
	reg [36:0] four_cells_sum       = '0;
	reg        four_cells_sum_valid = '0;
	always @(posedge clk) begin
		if (reset) begin
			four_cells_sum       <= '0;
			four_cells_sum_valid <= '0;
		end
		else begin
			// previous 2-cell sum is valid and current cell su
			if (two_cells_sum_valid_delayed && cell_x_delayed != '0) begin
				four_cells_sum       <= two_cells_sum_delayed + two_cells_sum;
				four_cells_sum_valid <= 'b1;
			end
			else begin
				four_cells_sum       <= four_cells_sum;
				four_cells_sum_valid <= '0;
			end
		end
	end

	localparam [36:0] EPSILON       = 'b0001011;
	reg        [36:0] sum_eps       = '0;
	reg               sum_eps_valid = '0;
	always @(posedge clk) begin
		if (reset) begin
			sum_eps       <= '0;
			sum_eps_valid <= '0;
		end
		else begin
			if (four_cells_sum_valid) begin
				sum_eps       <= four_cells_sum + EPSILON;
				sum_eps_valid <= 'b1;
			end
			else begin
				sum_eps       <= sum_eps;
				sum_eps_valid <= '0;
			end
		end
	end

	wire [31:0] block_norm;
	wire        block_norm_valid;
	squareRoot_48u_24u block_norm_square_root ( // latency: 25
		.aclk                   ( clk                         ), // input wire aclk
		.aresetn                ( ~reset                      ),
		.s_axis_cartesian_tvalid( sum_eps_valid               ), // input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata ( {6'h0, sum_eps[35:0], 6'h0} ), // input wire [47 : 0] s_axis_cartesian_tdata
		.m_axis_dout_tvalid     ( block_norm_valid            ), // output wire m_axis_dout_tvalid
		.m_axis_dout_tdata      ( block_norm                  )  // output wire [31 : 0] m_axis_dout_tdata
	);

	wire [23:0] norm_factor                = block_norm[23:0];
	wire        norm_factor_valid          = block_norm_valid;
	wire        norm_factor_valid_extended;
	pulseExtend #(
		.PULSE_WIDTH(HISTOGRAM_BINS)
	) extend_norm_factor_valid (
		.clk      (clk                       ),
		.rst      (reset                     ),
		.ce       (1'b1                      ),
		.pulse_in (norm_factor_valid         ),
		.pulse_out(norm_factor_valid_extended)
	);

	wire [23:0] norm_factor_delayed;
	wire        norm_factor_valid_extended_delayed;
	delayLine #(
		.N    (1 + 24        ),
		.DELAY(HISTOGRAM_BINS)
	) delay_norm_factor_for_2nd_cell (
		.clk  (clk                                                      ),
		.rst  (reset                                                    ),
		.ce   (1'b1                                                     ),
		.data ({norm_factor_valid_extended, norm_factor}                ),
		.outp ({norm_factor_valid_extended_delayed, norm_factor_delayed})
	);

	wire [17:0] hist_value_delayed;
	wire        hist_de_delayed;

	delayLine #(
		.N    (1 + 18                 ),
		.DELAY(2 * HISTOGRAM_BINS + 32) // latency from rising edge of input de signal to valid square root result
	) delay_current_line_to_divide (
		.clk (clk                                  ),
		.rst (reset                                ),
		.ce  (1'b1                                 ),
		.data({de, histogram_value}                ),
		.outp({hist_de_delayed, hist_value_delayed})
	);

	reg         hist_fifo_read_en    = '0;
	wire [17:0] hist_fifo_out;
	wire        hist_fifo_full;
	wire        hist_fifo_empty;
	wire [10:0] hist_fifo_data_count;

	wire last_line_of_histograms;
	wire en_write_histogram_to_fifo;
	assign last_line_of_histograms    = (cell_y == LINES_OF_CELLS - 'd1) ? 'b1 : '0;
	assign en_write_histogram_to_fifo = ~last_line_of_histograms & de;

	// accumulates histograms (so they are available along with next line histograms)
	fifo_18w_2048d prev_line_fifo (
		.clk       ( clk                        ), // input wire clk
		.srst      ( reset                      ), // input wire srst
		.din       ( histogram_value            ), // input wire [17 : 0] din
		.wr_en     ( en_write_histogram_to_fifo ), // input wire wr_en
		.rd_en     ( hist_fifo_read_en          ), // input wire rd_en
		.dout      ( hist_fifo_out              ), // output wire [17 : 0] dout
		.full      ( hist_fifo_full             ), // output wire full
		.empty     ( hist_fifo_empty            ), // output wire empty
		.data_count( hist_fifo_data_count       )  // output wire [10:0]
	);

	reg hist_fifo_out_valid = '0;
	always @(posedge clk) begin
		if (reset) begin
			hist_fifo_out_valid <= '0;
		end
		else begin
			hist_fifo_out_valid <= hist_fifo_read_en;
		end
	end

	localparam [5:0]  WAIT_DELAY        = 2 * HISTOGRAM_BINS + 28;
	localparam [11:0] HISTOGRAMS_LENGTH = HISTOGRAM_BINS * CELLS_IN_LINE;
	localparam [3:0]  STOP_STATE        = 4'b0001;
	localparam [3:0]  WAIT_STATE        = 4'b0010;
	localparam [3:0]  DELAY_STATE       = 4'b0100;
	localparam [3:0]  READ_STATE        = 4'b1000;
	localparam [7:0]  LINES_OF_BLOCKS   = LINES_OF_CELLS - 1;

	reg [7:0]  line_counter    = '0;
	reg [5:0]  latency_counter = '0;
	reg [11:0] read_counter    = '0;
	reg [3:0]  state           = STOP_STATE;

	// state machine for reading previous line histograms and aligning them
	// with current line histograms for normalization
	always @(posedge clk) begin
		if (reset) begin
			line_counter      <= '0;
			read_counter      <= '0;
			latency_counter   <= '0;
			hist_fifo_read_en <= '0;
			state             <= STOP_STATE;
		end
		else begin
			case (state)
				STOP_STATE: begin
					line_counter      <= '0;
					read_counter      <= '0;
					latency_counter   <= '0;
					hist_fifo_read_en <= '0;
					if (cell_y != '0) begin
						state <= WAIT_STATE;
					end
					else begin
						state <= STOP_STATE;
					end
				end
				WAIT_STATE: begin
					read_counter      <= '0;
					latency_counter   <= '0;
					hist_fifo_read_en <= '0;
					if (de) begin
						line_counter <= line_counter + 'd1;
						state        <= DELAY_STATE;
					end
					else begin
						line_counter <= line_counter;
						state        <= WAIT_STATE;
					end
				end
				DELAY_STATE: begin
					latency_counter   <= latency_counter + 'd1;
					read_counter      <= '0;
					line_counter      <= line_counter;
					hist_fifo_read_en <= '0;
					if (latency_counter == WAIT_DELAY) begin
						state <= READ_STATE;
					end
					else begin
						state <= DELAY_STATE;
					end
				end
				READ_STATE: begin
					line_counter      <= line_counter;
					latency_counter   <= latency_counter;
					read_counter      <= read_counter + 'd1;
					hist_fifo_read_en <= 'b1;
					if (read_counter == (HISTOGRAMS_LENGTH - 'd1)) begin
						if (line_counter == LINES_OF_BLOCKS) begin
							state <= STOP_STATE;
						end
						else begin
							state <= WAIT_STATE;
						end
					end
					else begin
						state <= READ_STATE;
					end
				end
				default: begin
					line_counter      <= '0;
					latency_counter   <= '0;
					read_counter      <= '0;
					hist_fifo_read_en <= '0;
					state             <= STOP_STATE;
				end
			endcase
		end
	end

	// wires for 4 dividers and FIFOs in generate block
	wire [17:0]                hist_to_divider[CELLS_PER_BLOCK-1:0];
	wire [CELLS_PER_BLOCK-1:0] hist_valid_to_divider;
	wire [31:0]                hist_normalized[CELLS_PER_BLOCK-1:0];
	wire [CELLS_PER_BLOCK-1:0] hist_normalized_valid;
	wire [23:0]                norm_to_divider[CELLS_PER_BLOCK-1:0];
	wire [CELLS_PER_BLOCK-1:0] norm_valid_to_divider;

	assign hist_to_divider[0] = hist_fifo_out;
	assign hist_to_divider[1] = hist_fifo_out;
	assign hist_to_divider[2] = hist_value_delayed;
	assign hist_to_divider[3] = hist_value_delayed;

	assign hist_valid_to_divider[0] = hist_fifo_out_valid;
	assign hist_valid_to_divider[1] = hist_fifo_out_valid;
	assign hist_valid_to_divider[2] = hist_de_delayed;
	assign hist_valid_to_divider[3] = hist_de_delayed;

	assign norm_to_divider[0] = norm_factor;
	assign norm_to_divider[1] = norm_factor_delayed;
	assign norm_to_divider[2] = norm_factor;
	assign norm_to_divider[3] = norm_factor_delayed;

	assign norm_valid_to_divider[0] = norm_factor_valid_extended;
	assign norm_valid_to_divider[1] = norm_factor_valid_extended_delayed;
	assign norm_valid_to_divider[2] = norm_factor_valid_extended;
	assign norm_valid_to_divider[3] = norm_factor_valid_extended_delayed;

	reg  [CELLS_PER_BLOCK-1:0] feature_read_en                              = '0;
	wire [11:0]                feature_fifo_out[CELLS_PER_BLOCK-1:0];
	wire [CELLS_PER_BLOCK-1:0] feature_fifo_full;
	wire [CELLS_PER_BLOCK-1:0] feature_fifo_empty;
	wire [10:0]                feature_fifo_data_count[CELLS_PER_BLOCK-1:0];
	wire [CELLS_PER_BLOCK-1:0] feature_fifo_valid;

	generate
		for (genvar i = 0; i < CELLS_PER_BLOCK; ++i) begin : GEN_DIVIDER
			divider_24u_24u_32u divider ( // latency: 34
				.aclk                  ( clk                        ), // input wire aclk
				.aresetn               ( ~reset                     ),
				.s_axis_divisor_tvalid ( norm_valid_to_divider[i]   ), // input wire s_axis_divisor_tvalid
				.s_axis_divisor_tdata  ( norm_to_divider[i]         ), // input wire [23 : 0] s_axis_divisor_tdata
				.s_axis_dividend_tvalid( hist_valid_to_divider[i]   ), // input wire s_axis_dividend_tvalid
				.s_axis_dividend_tdata ( {hist_to_divider[i], 6'h0} ), // input wire [23 : 0] s_axis_dividend_tdata
				.m_axis_dout_tvalid    ( hist_normalized_valid[i]   ), // output wire m_axis_dout_tvalid
				// IP core set to 8-bit fractional part, but for following inputs, the output has 11-bit fractional part
				.m_axis_dout_tdata     ( hist_normalized[i]         )  // output wire [31 : 0] m_axis_dout_tdata
			);

			fifo_12w_2048d feature_fifo (
				.clk       ( clk                        ), // input wire clk
				.srst      ( reset                      ), // input wire srst
				// u_1i_11f
				.din       ( hist_normalized[i][11:0]   ), // input wire [11 : 0] din
				.wr_en     ( hist_normalized_valid[i]   ), // input wire wr_en
				.rd_en     ( feature_read_en[i]         ), // input wire rd_en
				.dout      ( feature_fifo_out[i]        ), // output wire [11 : 0] dout
				.valid     ( feature_fifo_valid[i]      ), // output wire valid
				.full      ( feature_fifo_full[i]       ), // output wire full
				.empty     ( feature_fifo_empty[i]      ), // output wire empty
				.data_count( feature_fifo_data_count[i] )  // output wire [10:0]
			);

		end
	endgenerate

	reg [1:0] fifo_sel         = '0;
	reg [3:0] hist_val_counter = '0;

	reg [1:0]                 fifo_sel_delayed        = '0;
	reg [CELLS_PER_BLOCK-1:0] feature_read_en_delayed = '0;


	localparam       FEATURE_INIT_STATE            = 2'b01;
	localparam       FEATURE_READ_STATE            = 2'b10;
	reg        [1:0] feature_state                 = FEATURE_INIT_STATE;
	reg        [7:0] block_counter                 = '0;
	reg              selected_feature_fifo_read_en = '0;

	//
	// state machine to create feature vector in proper order
	//
	always @(posedge clk) begin
		if (reset) begin
			fifo_sel_delayed              <= '0;
			feature_read_en_delayed       <= '0;
			hist_val_counter              <= '0;
			fifo_sel                      <= '0;
			block_counter                 <= '0;
			feature_state                 <= FEATURE_INIT_STATE;
			selected_feature_fifo_read_en <= '0;
		end
		else begin
			case (feature_state)
				FEATURE_INIT_STATE: begin
//              feature_read_en  <= '0;
					hist_val_counter <= '0;
					fifo_sel         <= '0;
					block_counter    <= '0;
					if (feature_fifo_data_count[0] == HISTOGRAM_BINS) begin
						feature_state                 <= FEATURE_READ_STATE;
						selected_feature_fifo_read_en <= 'b1;
					end
					else begin
						feature_state                 <= FEATURE_INIT_STATE;
						selected_feature_fifo_read_en <= '0;
					end
				end
				FEATURE_READ_STATE: begin

					if (feature_fifo_empty[fifo_sel]) begin
//                  feature_read_en  <= '0;
						selected_feature_fifo_read_en <= '0;
						hist_val_counter              <= hist_val_counter;
						fifo_sel                      <= fifo_sel;
						feature_state                 <= FEATURE_READ_STATE;
						block_counter                 <= block_counter;
					end
					else begin
						selected_feature_fifo_read_en <= 'b1;

						// it's last value for this block, next will be read from another FIFO
						if (hist_val_counter == (HISTOGRAM_BINS - 'd1)) begin
							hist_val_counter <= '0;
							if (fifo_sel == CELLS_PER_BLOCK - 'd1) begin
								fifo_sel <= '0;
								if (block_counter == BLOCKS_IN_LINE - 'd1) begin
									block_counter                 <= '0;
									selected_feature_fifo_read_en <= '0; // override read enable
									feature_state                 <= FEATURE_INIT_STATE;
								end
								else begin
									block_counter <= block_counter + 'd1;
									feature_state <= FEATURE_READ_STATE;
								end
							end
							else begin
								fifo_sel      <= fifo_sel + 'd1;
								feature_state <= FEATURE_READ_STATE;
								block_counter <= block_counter;
							end
						end
						// continue reading from the same FIFO in next cycle
						else begin
							hist_val_counter <= hist_val_counter + 'd1;
							fifo_sel         <= fifo_sel;
							feature_state    <= FEATURE_READ_STATE;
							block_counter    <= block_counter;
						end
					end
				end
				default: begin
//              feature_read_en  <= '0;
					selected_feature_fifo_read_en <= '0;
					hist_val_counter              <= '0;
					fifo_sel                      <= '0;
					feature_state                 <= FEATURE_INIT_STATE;
					block_counter                 <= '0;
				end
			endcase

			fifo_sel_delayed        <= fifo_sel;
			feature_read_en_delayed <= feature_read_en;
		end

	end

	always_comb begin
		if (selected_feature_fifo_read_en) begin
			// one-hot encoding
			case (fifo_sel)
				2'd0: begin
					feature_read_en <= 4'b0001;
				end
				2'd1: begin
					feature_read_en <= 4'b0010;
				end
				2'd2: begin
					feature_read_en <= 4'b0100;
				end
				2'd3: begin
					feature_read_en <= 4'b1000;
				end
				default: begin
					feature_read_en <= 4'b0000;
				end
			endcase
		end
		else begin
			feature_read_en <= 4'b0000;
		end
	end

	assign value_out = feature_fifo_out[fifo_sel_delayed];
	// feature is valid when data from one of the feature FIFOs is read
	assign de_out    = |(feature_read_en_delayed);

	// alarms
	assign feature_fifos_full  = |(feature_fifo_full);
	assign prev_hist_fifo_full = hist_fifo_full;

endmodule

`default_nettype wire
