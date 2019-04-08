`timescale 1ns / 1ps
`default_nettype none

module svm
	#(
		parameter WINDOW_WIDTH        = 64,
		parameter WINDOW_HEIGHT       = 128,
		parameter BLOCK_SIZE          = 16,
		parameter BLOCKS_PER_WINDOW_X = 7,
		parameter BLOCKS_PER_WINDOW_Y = 15,
		parameter HISTOGRAM_BINS      = 9,
		parameter CELLS_IN_BLOCK      = 4,
		parameter BLOCKS_IN_LINE      = 159,
		parameter LINES_OF_BLOCKS     = 89,
		parameter SVM_MEM_INIT_PATH   = ""
	)
	(
		input  wire                               clk,
		input  wire                               reset,
		input  wire                               de,
		input  wire        [HISTOGRAMS_WIDTH-1:0] value,
		input  wire        [CONFIDENCE_WIDTH-1:0] bias,

		output wire                               bbox_valid_out,
		output wire        [15:0]                 bbox_x_start_out,
		output wire        [15:0]                 bbox_y_start_out,
		output wire        [15:0]                 bbox_x_end_out,
		output wire        [15:0]                 bbox_y_end_out,
		output wire signed [CONFIDENCE_WIDTH-1:0] confidence_out,
		output wire                               confidence_valid_out,

		output wire                               done
	);

	localparam                        HISTOGRAMS_WIDTH                                               = 12;
	localparam                        COEFF_WIDTH                                                    = 20;
	localparam                        VALUES_IN_BLOCK                                                = HISTOGRAM_BINS * CELLS_IN_BLOCK;
	localparam                        BLOCKS_IN_WINDOW                                               = BLOCKS_PER_WINDOW_X * BLOCKS_PER_WINDOW_Y;
	localparam                        CONFIDENCE_WIDTH                                               = HISTOGRAMS_WIDTH + COEFF_WIDTH + 12;      //($clog(VALUES_IN_BLOCK * BLOCKS_IN_WINDOW));
	localparam                        LONG_DELAY_LINE_LENGTH                                         = BLOCKS_IN_LINE - BLOCKS_PER_WINDOW_X;
	localparam                        LONG_DELAY_LINES                                               = BLOCKS_PER_WINDOW_Y - 1;

	localparam                        LAST_Y                                                         = LINES_OF_BLOCKS - BLOCKS_PER_WINDOW_Y + 1;
	localparam                        LAST_X                                                         = BLOCKS_IN_LINE - BLOCKS_PER_WINDOW_X + 1;

	localparam [(8*3*BLOCKS_PER_WINDOW_X*BLOCKS_PER_WINDOW_Y)-1:0] INIT_FILES_NUM_STR = {
//		"104", "103", "102", "101", "100", "099", "098",
//		"097", "096", "095", "094", "093", "092", "091",
//		"090", "089", "088", "087", "086", "085", "084",
//		"083", "082", "081", "080", "079", "078", "077",
//		"076", "075", "074", "073", "072", "071", "070",
//		"069", "068", "067", "066", "065", "064", "063",
//		"062", "061", "060", "059", "058", "057", "056",
//		"055", "054", "053", "052", "051", "050", "049",
		"048", "047", "046", "045", "044", "043", "042",
		"041", "040", "039", "038", "037", "036", "035",
		"034", "033", "032", "031", "030", "029", "028",
		"027", "026", "025", "024", "023", "022", "021",
		"020", "019", "018", "017", "016", "015", "014",
		"013", "012", "011", "010", "009", "008", "007",
		"006", "005", "004", "003", "002", "001", "000"
	};

	wire                              acc_value_valid[BLOCKS_PER_WINDOW_Y][BLOCKS_PER_WINDOW_X];
	wire       [CONFIDENCE_WIDTH-1:0] acc_value[BLOCKS_PER_WINDOW_Y][BLOCKS_PER_WINDOW_X];

	wire       [CONFIDENCE_WIDTH-1:0] acc_init_value[BLOCKS_PER_WINDOW_Y][BLOCKS_PER_WINDOW_X];
	wire                              acc_init_value_valid[BLOCKS_PER_WINDOW_Y][BLOCKS_PER_WINDOW_X];

	wire       [CONFIDENCE_WIDTH-1:0] delay_line_out[LONG_DELAY_LINES];
	wire                              delay_line_out_valid[LONG_DELAY_LINES];

	reg        [7:0]                  block_x                                                        = '0;
	reg        [7:0]                  block_y                                                        = '0;
	reg        [5:0]                  feature_counter                                                = '0;
	reg                               end_of_frame                                                   = '0;

	always @(posedge clk) begin
		if (reset) begin
			end_of_frame    <= '0;
			feature_counter <= '0;
			block_x         <= '0;
			block_y         <= '0;
		end
		else if (de) begin
			if (end_of_frame) begin
				end_of_frame    <= '0;
			end
			if (feature_counter == VALUES_IN_BLOCK - 'd1) begin
				feature_counter <= 'd0;
				if (block_x == BLOCKS_IN_LINE - 'd1) begin
					block_x <= '0;
					if (block_y == LINES_OF_BLOCKS - 'd1) begin
						block_y      <= 'd0;
						end_of_frame <= 'b1;
					end
					else begin
						block_y      <= block_y + 'd1;
					end
				end
				else begin
					block_x <= block_x + 'd1;
				end
			end
			else begin
				feature_counter <= feature_counter + 'd1;
			end
		end
	end

//  localparam                     ACC_LATENCY     = 5;
	localparam                        ACC_LATENCY                                                    = 6;
	localparam                        COUNTER_WIDTH                                                  = 8;
	wire       [COUNTER_WIDTH-1:0]    block_x_delayed;
	wire       [COUNTER_WIDTH-1:0]    block_y_delayed;
	reg                               ctx_row_valid                                                  = '0;
	reg                               ctx_col_valid                                                  = '0;
	delayLine #(
		.N    (2 * COUNTER_WIDTH ),
		.DELAY(ACC_LATENCY       )
	) delay_block_counter (
		.clk (clk                               ),
		.rst (reset                             ),
		.ce  (1'b1                              ),
		.data({block_x, block_y}                ),
		.outp({block_x_delayed, block_y_delayed})
	);

	always @(posedge clk) begin
		if (reset) begin
			ctx_col_valid <= '0;
		end
		else begin
			if (block_x_delayed == '0) begin
				ctx_col_valid <= '0;
			end
			else if (block_x_delayed == BLOCKS_PER_WINDOW_X - 'd1) begin
				ctx_col_valid <= 'b1;
			end
			else begin
				ctx_col_valid <= ctx_col_valid;
			end
		end
	end

	always @(posedge clk) begin
		if (reset) begin
			ctx_row_valid <= '0;
		end
		else begin
			if (block_y_delayed == '0) begin
				ctx_row_valid <= '0;
			end
			else if (block_y_delayed == BLOCKS_PER_WINDOW_Y - 'd1) begin
				ctx_row_valid <= 'b1;
			end
			else begin
				ctx_row_valid <= ctx_row_valid;
			end
		end
	end

	wire                              de_rising;
	reg                               prev_de                                                        = '0;
	always @(posedge clk) begin
		if (reset) begin
			prev_de <= '0;
		end
		else begin
			if (reset_acc | reset) begin
				prev_de <= '0;
			end
			else begin
				prev_de <= de;
			end
		end
	end

	assign de_rising                                                                  = ~prev_de & de;

	generate

		// delay lines
		for (genvar y = 0; y < BLOCKS_PER_WINDOW_Y - 1; ++y) begin : DELAY_LINES_GEN

			if (BLOCKS_IN_LINE == BLOCKS_PER_WINDOW_X) begin : NO_DELAY_LINES
				assign delay_line_out[y]       = acc_value[y][BLOCKS_PER_WINDOW_X-1];
				assign delay_line_out_valid[y] = acc_value_valid[y][BLOCKS_PER_WINDOW_X-1];
			end

			else begin : DELAY_LINES

				svmBRAMDelayLine #(
					.H_SIZE    (BLOCKS_IN_LINE - BLOCKS_PER_WINDOW_X),
					.DATA_WIDTH(CONFIDENCE_WIDTH                    )
				)
				svmBRAMDelayLine_inst (
					.clk       (clk                                       ),
					.rst       (end_of_frame | reset                      ),
					.din       (acc_value[y][BLOCKS_PER_WINDOW_X-1]       ),
					.din_valid (acc_value_valid[y][BLOCKS_PER_WINDOW_X-1] ),
					.dout      (delay_line_out[y]                         ),
					.dout_valid(delay_line_out_valid[y]                   )
				);

			end
		end

		for (genvar y = 0; y < BLOCKS_PER_WINDOW_Y; ++y) begin : SVM_CTX_ROWS
			for (genvar x = 0; x < BLOCKS_PER_WINDOW_X; ++x) begin : SVM_CTX_COLS

				if (y == 0 && x == 0) begin
					assign acc_init_value[y][x]       = '0;
					assign acc_init_value_valid[y][x] = de_rising;
				end
				else if (y != 0 && x == 0) begin
					assign acc_init_value[y][x]       = delay_line_out[y-1];
					assign acc_init_value_valid[y][x] = delay_line_out_valid[y-1];
				end
				else begin
					assign acc_init_value[y][x]       = acc_value[y][x-1];
					assign acc_init_value_valid[y][x] = acc_value_valid[y][x-1];
				end

				svmAccumulator
				#(
					.VECTOR_LENGTH   (VALUES_IN_BLOCK  ),
					.VECTOR_WIDTH    (HISTOGRAMS_WIDTH ),
					.MEM_INIT_FILE ({
							SVM_MEM_INIT_PATH,
							"/svm",
							INIT_FILES_NUM_STR[((x + y * BLOCKS_PER_WINDOW_X)*3*8) +: (3*8)],
							".txt"}),

					.SVM_COEFF_WIDTH (COEFF_WIDTH      ),
					.ACC_WIDTH       (CONFIDENCE_WIDTH )
				) acc (
					.clk           ( clk                        ),
					.reset         ( reset_acc | reset          ),
					.value_de      ( de                         ),
					.value         ( value                      ),
					.init_value_de ( acc_init_value_valid[y][x] ),
					.init_value    ( acc_init_value[y][x]       ),

					.value_out_de  ( acc_value_valid[y][x]      ),
					.value_out     ( acc_value[y][x]            )
				);

			end
		end
	endgenerate

	wire       [CONFIDENCE_WIDTH-1:0] confidence;
	wire                              confidence_valid;
	assign confidence                                                                 = acc_value[BLOCKS_PER_WINDOW_Y-1][BLOCKS_PER_WINDOW_X-1];
	assign confidence_valid                                                           = ctx_row_valid & ctx_col_valid & acc_value_valid[BLOCKS_PER_WINDOW_Y-1][BLOCKS_PER_WINDOW_X-1];

//  localparam                        FEATURE_COUNT                                                  = BLOCKS_IN_LINE * LINES_OF_BLOCKS * HISTOGRAM_BINS * CELLS_IN_BLOCK;
//  save_values #(
//      .INTEGRAL        (52                     ),
//      .OUTPUT_FILE_PATH("feature_vector_tb.txt"),
//      .MAX_VALUES      (FEATURE_COUNT          ),
//      .VALUES_PER_LINE (FEATURE_COUNT          ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("HEX"                  )
//  )
//  u_save_values (
//      .clk  (clk                                                           ),
//      .value(confidence                                                    ),
//      .de   (acc_value_valid[BLOCKS_PER_WINDOW_Y-1][BLOCKS_PER_WINDOW_X-1] )
//  );

	wire       [CONFIDENCE_WIDTH-1:0] confidence_plus_bias;
	wire                              confidence_plus_bias_valid;

	localparam                        ADDER_LATENCY                                                  = 4;
	adder_44s_44s_44s bias_adder // latency: 4
	(
		.CLK (clk                 ),
		.SCLR(reset               ),
		.A   (confidence          ),
		.B   (bias                ),
		.S   (confidence_plus_bias)
	);

	delayLine #(
		.N    (1             ),
		.DELAY(ADDER_LATENCY )
	) delay_confidence_plus_bias_valid (
		.clk ( clk                       ),
		.rst ( reset                     ),
		.ce  ( 1'b1                      ),
		.data( confidence_valid          ),
		.outp( confidence_plus_bias_valid)
	);

	wire       [7:0]                  block_x_to_classification;
	wire       [7:0]                  block_y_to_classification;
	delayLine #(
		.N    (2 * COUNTER_WIDTH ),
		.DELAY(ADDER_LATENCY     )
	) delay_block_counter_to_classification (
		.clk (clk                                                   ),
		.rst (reset                                                 ),
		.ce  (1'b1                                                  ),
		.data({block_x_delayed, block_y_delayed}                    ),
		.outp({block_x_to_classification, block_y_to_classification})
	);

	reg                               reset_acc                                                      = '0;
	// reset generator
	always @(posedge clk) begin
		if (reset) begin
			reset_acc <= '0;
		end
		else if ((block_x_delayed == BLOCKS_IN_LINE - 'd1) && (block_y_delayed == LINES_OF_BLOCKS - 'd1) && (confidence_valid == 'b1)) begin
			reset_acc <= 'b1;
		end
		else begin
			reset_acc <= '0;
		end
	end

	assign confidence_out                                                             = confidence_plus_bias;
	assign confidence_valid_out                                                       = confidence_plus_bias_valid;

	localparam                        PEDESTRIAN                                                     = 1'b1;
	localparam                        NON_PEDESTRIAN                                                 = 1'b0;
	wire                              classification;

	assign classification                                                             = (confidence_valid_out & confidence_plus_bias[CONFIDENCE_WIDTH-1]) ? PEDESTRIAN : NON_PEDESTRIAN;

	localparam                        BLOCK_STRIDE                                                   = 8;
	localparam                        BIT_SHIFT                                                      = $clog2(BLOCK_STRIDE);
	reg                               bbox_valid                                                     = '0;
	reg        [15:0]                 bbox_x_start                                                   = '0;
	reg        [15:0]                 bbox_y_start                                                   = '0;
	reg        [15:0]                 bbox_x_end                                                     = '0;
	reg        [15:0]                 bbox_y_end                                                     = '0;
	always @(posedge clk) begin
		if (reset) begin
			bbox_x_start <= '0;
			bbox_y_start <= '0;
			bbox_x_end   <= '0;
			bbox_y_end   <= '0;
			bbox_valid   <= '0;
		end
		else if ((classification == PEDESTRIAN) && confidence_valid_out) begin
			bbox_x_start <= (block_x_to_classification << BIT_SHIFT) - (WINDOW_WIDTH - BLOCK_SIZE);
			bbox_y_start <= (block_y_to_classification << BIT_SHIFT) - (WINDOW_HEIGHT - BLOCK_SIZE);
			bbox_x_end   <= (block_x_to_classification << BIT_SHIFT) + (BLOCK_SIZE - 'd1);
			bbox_y_end   <= (block_y_to_classification << BIT_SHIFT) + (BLOCK_SIZE - 'd1);
			bbox_valid   <= 'b1;
		end
		else begin
			bbox_x_start <= bbox_x_start;
			bbox_y_start <= bbox_y_start;
			bbox_x_end   <= bbox_x_end;
			bbox_y_end   <= bbox_y_end;
			bbox_valid   <= '0;
		end
	end

	assign done                                                                       = reset_acc;
	assign bbox_valid_out                                                             = bbox_valid;
	assign bbox_x_start_out                                                           = bbox_x_start;
	assign bbox_y_start_out                                                           = bbox_y_start;
	assign bbox_x_end_out                                                             = bbox_x_end;
	assign bbox_y_end_out                                                             = bbox_y_end;

endmodule

`default_nettype wire
