`timescale 1ns / 1ps
`default_nettype none

module histogram
	#(
		parameter IMAGE_WIDTH   = 64,
		parameter IMAGE_HEIGHT  = 128,
		parameter MAX_DE_HEIGHT = 128,
		parameter CELLS_IN_LINE = 8
	)
	(
		input  wire        pclk,
		input  wire        deIn,
		input  wire  [3:0] bottomBin,
		input  wire  [3:0] topBin,
		input  wire  [11:0]bottomModulus,
		input  wire  [11:0]topModulus,
		input  wire        reset,
		output logic [17:0]histogramValueOut,
		output logic       deOut,
		output wire        fifo_full
	);

	localparam [3:0] HISTOGRAM_BINS   = 9;
	// 2^4 is because bin address is at 4 bits while only 9 of 16 addresses are used
	localparam       MAX_READ_ADDRESS = ((CELLS_IN_LINE - 1) * 2**4) + HISTOGRAM_BINS;

	reg [10:0] frame_y = '0;
	reg [10:0] frame_x = '0;

	// coordinates counter
	always @(posedge pclk) begin
		if (reset) begin
			frame_x <= '0;
			frame_y <= '0;
		end
		else begin
			if (deIn) begin
				frame_x <= frame_x + 'd1;
				if (frame_x == IMAGE_WIDTH - 'd1) begin
					frame_x <= '0;
					frame_y <= frame_y + 'd1;
					if (frame_y == IMAGE_HEIGHT - 'd1) begin
						frame_y <= '0;
					end
				end
			end
		end
	end

	wire fifo_write_en = (frame_y >= MAX_DE_HEIGHT) ? '0 : deIn;
	wire fifo_read_en;

	// delay fifo_write_en signal, so values are read from FIFO 10 cycles later after writing to FIFO
	// (FIFO initialization time)
	delayLine #(
		.N    (1 ),
		.DELAY(10)
	) delay_de (
		.clk (pclk          ),
		.rst (reset         ),
		.ce  (1'b1          ),
		.data(fifo_write_en ),
		.outp(fifo_read_en  )
	);

	wire [31:0] fifo_write_data = {bottomModulus, bottomBin, topModulus, topBin};
	wire [31:0] fifo_read_data;
	wire        fifo_empty;

	fifo_w32_d32 fifo (
		.clk   (pclk            ), // input wire wr_clk
		.srst  (reset           ),
		.din   (fifo_write_data ), // input wire [31 : 0] din
		.wr_en (fifo_write_en   ), // input wire wr_en
		.rd_en (fifo_read_en    ), // input wire rd_en
		.dout  (fifo_read_data  ), // output wire [31 : 0] dout
		.full  (fifo_full       ), // output wire full
		.empty (fifo_empty      )  // output wire empty
	);

	reg       fifo_data_valid         = '0;
	reg [1:0] fifo_data_valid_delayed = '0;

	wire [7:0] hist_x           = frame_x[10:3];
	wire [7:0] hist_y           = frame_y[10:3];
	wire [7:0] hist_x_delayed;
	wire [7:0] hist_y_delayed;
	reg  [7:0] hist_y_delayed_2;
	// coordinates of histogram
	delayLine #(
		.N    (8+8),
		.DELAY(11 )
	) delay_hist_coord (
		.clk (pclk                            ),
		.rst (reset                           ),
		.ce  (1'b1                            ),
		.data({hist_x, hist_y}                ),
		.outp({hist_x_delayed, hist_y_delayed})
	);

	wire [11:0] fifo_read_bottom_modulus         = fifo_read_data[31:20];
	wire [3:0]  fifo_read_bottom_bin             = fifo_read_data[19:16];
	reg  [11:0] fifo_read_bottom_modulus_delayed = '0;

	wire [11:0] fifo_read_top_modulus         = fifo_read_data[15:4];
	wire [3:0]  fifo_read_top_bin             = fifo_read_data[3:0];
	reg  [11:0] fifo_read_top_modulus_delayed = '0;
	// delay line
	always @(posedge pclk) begin
		if (reset) begin
			hist_y_delayed_2                 <= '0;
			fifo_data_valid                  <= '0;
			fifo_data_valid_delayed          <= '0;
			fifo_read_bottom_modulus_delayed <= '0;
			fifo_read_top_modulus_delayed    <= '0;
		end
		else begin
			hist_y_delayed_2                 <= hist_y_delayed;
			fifo_data_valid                  <= fifo_read_en;
			fifo_data_valid_delayed          <= {fifo_data_valid_delayed[0], fifo_data_valid};
			fifo_read_bottom_modulus_delayed <= fifo_read_bottom_modulus;
			fifo_read_top_modulus_delayed    <= fifo_read_top_modulus;
		end
	end

	localparam        WRITE_STATE       = 1'b0;
	localparam        READ_STATE        = 1'b1;
	localparam        BUFFER_COUNT      = 4;
	// difference of addresses of last bin of one histogram and first one of second histogram
	localparam [11:0] HIST_ADDRESS_JUMP = 2**4 - HISTOGRAM_BINS + 1;

	wire buffer_state[BUFFER_COUNT];

	wire [17:0] buffer_read_data[BUFFER_COUNT];
	reg  [11:0] buffer_read_address_delayed[BUFFER_COUNT];
	reg  [11:0] buffer_read_address_temp[BUFFER_COUNT];
	reg         buffer_read_en_temp[BUFFER_COUNT];
	reg         buffer_read_en_temp_delayed[BUFFER_COUNT];

	reg [11:0] buffer_write_address[BUFFER_COUNT];
	reg [17:0] buffer_write_data_temp[BUFFER_COUNT];

	logic [11:0] buffer_read_address[BUFFER_COUNT];
	logic        buffer_read_en[BUFFER_COUNT];
	logic [17:0] buffer_write_data[BUFFER_COUNT];
	logic        buffer_write_en[BUFFER_COUNT];

	wire [BUFFER_COUNT-1:0] buffer_read_data_valid;

	// switches every 8 lines
	assign buffer_state[0] = !hist_y_delayed_2[0] ? WRITE_STATE : READ_STATE; // bottom0
	assign buffer_state[1] = !hist_y_delayed_2[0] ? READ_STATE : WRITE_STATE; // bottom1

	assign buffer_state[2] = !hist_y_delayed_2[0] ? WRITE_STATE : READ_STATE; // top0
	assign buffer_state[3] = !hist_y_delayed_2[0] ? READ_STATE : WRITE_STATE; // top1

	reg [BUFFER_COUNT-1:0] buffer_data_written = '0;

	wire [11:0] modulus_to_buffer[BUFFER_COUNT];
	wire [3:0]  bin_to_buffer[BUFFER_COUNT];

	assign modulus_to_buffer[0] = fifo_read_bottom_modulus_delayed;
	assign modulus_to_buffer[1] = fifo_read_bottom_modulus_delayed;
	assign modulus_to_buffer[2] = fifo_read_top_modulus_delayed;
	assign modulus_to_buffer[3] = fifo_read_top_modulus_delayed;

	assign bin_to_buffer[0] = fifo_read_bottom_bin;
	assign bin_to_buffer[1] = fifo_read_bottom_bin;
	assign bin_to_buffer[2] = fifo_read_top_bin;
	assign bin_to_buffer[3] = fifo_read_top_bin;

	// generate 4 identical buffers for double-buffered read/write (separately top and bottom bins)
	// buffers 0, 1 - bottom
	// buffers 2, 3 - top
	generate
		for (genvar i = 0; i < BUFFER_COUNT; ++i) begin : GEN_BUFFER

			initial begin
				buffer_read_address_delayed[i] = '0;
				buffer_read_address_temp[i]    = '0;
				buffer_read_en_temp[i]         = '0;
				buffer_read_en_temp_delayed[i] = '0;
				buffer_write_address[i]        = '0;
				buffer_write_data_temp[i]      = '0;
			end

			always @(posedge pclk) begin
				if (reset) begin
					buffer_read_address_delayed[i] = '0;
					buffer_read_address_temp[i]    = '0;
					buffer_read_en_temp[i]         = '0;
					buffer_read_en_temp_delayed[i] = '0;
					buffer_write_address[i]        = '0;
					buffer_write_data_temp[i]      = '0;
				end
				else begin
					buffer_read_address_delayed[i] <= buffer_read_address[i];
					buffer_read_en_temp_delayed[i] <= buffer_read_en_temp[i];

					case (buffer_state[i])

						READ_STATE: begin
							if (buffer_data_written[i]) begin
								if (buffer_read_address_temp[i][3:0] == HISTOGRAM_BINS) begin
									buffer_read_address_temp[i] <= buffer_read_address_temp[i] + HIST_ADDRESS_JUMP;
								end
								else begin
									buffer_read_address_temp[i] <= buffer_read_address_temp[i] + 'd1;
								end

								// address which was read is going to be zeroed in next cycle
								buffer_write_address[i] <= buffer_read_address_temp[i];

								if (buffer_read_address_temp[i] > MAX_READ_ADDRESS - 'd1) begin
									buffer_read_en_temp[i] <= '0;
									buffer_data_written[i] <= '0;
								end
								else begin
									buffer_read_en_temp[i] <= 'b1;
									buffer_data_written[i] <= buffer_data_written[i];
								end
							end
						end

						WRITE_STATE: begin
							if (fifo_data_valid_delayed[0]) begin
								// current value is to be accumulated under the same address as previous one
								if (buffer_read_address_delayed[i] == buffer_write_address[i]) begin
									buffer_write_data_temp[i] <= buffer_write_data_temp[i] + modulus_to_buffer[i];
								end
								// subsequent writes under different addresses
								else begin
									buffer_write_data_temp[i] <= buffer_read_data[i] + modulus_to_buffer[i];
								end

								// keep the address where accumulated value should be written in next cycle
								buffer_write_address[i] <= buffer_read_address_delayed[i];

								// prepare for READ phase - initial values
								buffer_read_address_temp[i] <= '0;
								buffer_read_en_temp[i]      <= '0;
								buffer_data_written[i]      <= 'b1;
							end
						end

					endcase
				end
			end

			always_comb begin
				case (buffer_state[i])
					READ_STATE: begin
						buffer_read_address[i] = buffer_read_address_temp[i];
						buffer_read_en[i]      = buffer_read_en_temp[i];
						// zero buffer after reading it
						buffer_write_data[i]   = '0;
						buffer_write_en[i]     = buffer_read_en_temp[i] | buffer_read_en_temp_delayed[i];
					end
					WRITE_STATE: begin
						buffer_read_address[i] = {hist_x_delayed, bin_to_buffer[i]} + 'd1; // address 4 LSB are 1 to 9
						buffer_read_en[i]      = fifo_data_valid;
						if (buffer_data_written[i]) begin
							buffer_write_data[i] = buffer_write_data_temp[i];
						end
						else begin
							buffer_write_data[i] = '0;
						end
						buffer_write_en[i] = fifo_data_valid_delayed[1];
					end
				endcase
			end

			assign buffer_read_data_valid[i] = buffer_read_en_temp_delayed[i];

			bram_w18_d2560 bramMemory
			(
				.clka (pclk                    ), // input clka
				.ena  (1'b1                    ), // input wire ena
				.wea  (buffer_write_en[i]      ), // input [0 : 0] wea
				.addra(buffer_write_address[i] ), // input [11 : 0] addra
				.dina (buffer_write_data[i]    ), // input [17 : 0] dina
				.clkb (pclk                    ), // input clkb
				.enb  (buffer_read_en[i]       ), // input wire enb
				.addrb(buffer_read_address[i]  ), // input [11 : 0] addrb
				.doutb(buffer_read_data[i]     )  // output [17 : 0] doutb
			);
		end
	endgenerate

	// take histogram value from current READ buffer (if read was enabled - otherwise: zeros)
	// add top bin buffer value with bottom one
	// register memory output
	// assuming that both buffers in read mode work identically (status of bottom buffer is checked only)
	always @(posedge pclk) begin
		if (reset) begin
			histogramValueOut <= '0;
			deOut             <= '0;
		end
		else begin
			if (buffer_state[1] == READ_STATE && buffer_read_data_valid[1] && buffer_read_data_valid[3]) begin
				histogramValueOut <= buffer_read_data[1] + buffer_read_data[3];
				deOut             <= buffer_read_data_valid[1];
			end
			else if (buffer_state[0] == READ_STATE && buffer_read_data_valid[0] && buffer_read_data_valid[2]) begin
				histogramValueOut <= buffer_read_data[0] + buffer_read_data[2];
				deOut             <= buffer_read_data_valid[0];
			end
			else begin
				histogramValueOut <= '0;
				deOut             <= '0;
			end
		end
	end

endmodule

`default_nettype wire
