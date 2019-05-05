`timescale 1ns / 1ps
`default_nettype none

module maxGradient
	#(
		parameter H_SIZE = 83
	)
	(
		input  wire        pclk,
		input  wire        reset,
		input  wire        de_pix,
		input  wire        hsync,
		input  wire        vsync,
		input  wire [7:0]  pixel_r,
		input  wire [7:0]  pixel_g,
		input  wire [7:0]  pixel_b,
		output wire        de_out,
		output wire        hsync_out,
		output wire        vsync_out,
		output wire [8:0]  gradient_x_out,
		output wire [8:0]  gradient_y_out,
		output wire [16:0] squared_modulus_out
	);

	localparam CHANNELS      = 3;
	localparam CHANNEL_DEPTH = 8;
	localparam COLOR_DEPTH   = 24;
	localparam CTX_SIZE      = 3;
	// color channels + HDMI sync signals (hsync, vsync, de)
	localparam CONTEXT_WIDTH = COLOR_DEPTH + 3;

	reg  [CONTEXT_WIDTH-1:0] ctx[2:0][2:0];
	wire [CONTEXT_WIDTH-1:0] delay_line_out[CTX_SIZE-1];
	reg                      de_pix_delayed             = '0;
	reg  [COLOR_DEPTH-1:0]   pixel_delayed              = '0;
	reg                      hsync_delayed              = '0;
	reg                      vsync_delayed              = '0;
	wire                     ctx_valid;

	always @(posedge pclk) begin
		if (reset) begin
			pixel_delayed  <= '0;
			de_pix_delayed <= '0;
			hsync_delayed  <= '0;
			vsync_delayed  <= '0;
		end
		else begin
			pixel_delayed  <= {pixel_r, pixel_g, pixel_b};
			de_pix_delayed <= de_pix;
			hsync_delayed  <= hsync;
			vsync_delayed  <= vsync;
		end
	end

	assign ctx_valid = ctx[0][1][CONTEXT_WIDTH-1] & ctx[1][0][CONTEXT_WIDTH-1] & ctx[1][1][CONTEXT_WIDTH-1] & ctx[1][2][CONTEXT_WIDTH-1] & ctx[2][1][CONTEXT_WIDTH-1];

	reg [5:0] ctx_valid_delayed = '0;
	always @(posedge pclk) begin
		if (reset) begin
			ctx_valid_delayed <= '0;
		end
		else begin
			ctx_valid_delayed <= {ctx_valid_delayed[4:0], ctx_valid};
		end
	end

	// context 3x3
	for (genvar y = 0; y < CTX_SIZE; ++y) begin : GEN_CTX_DELAY_ROWS
		for (genvar x = 0; x < CTX_SIZE; ++x) begin : GEN_CTX_DELAY_COLS

			initial begin
				ctx[y][x] = '0;
			end

			// first pixel
			if (y == 0 && x == 0) begin
				always @(posedge pclk) begin
					if (reset) begin
						ctx[y][x] <= '0;
					end
					else begin
						ctx[y][x] <= {de_pix_delayed, hsync_delayed, vsync_delayed, pixel_delayed};
					end
				end
			end

			// first pixel in line
			else if (x == 0) begin
				always @(posedge pclk) begin
					if (reset) begin
						ctx[y][x] <= '0;
					end
					else begin
						ctx[y][x] <= delay_line_out[y - 1];
					end
				end
			end

			// any other pixel
			else begin
				always @(posedge pclk) begin
					if (reset) begin
						ctx[y][x] <= '0;
					end
					else begin
						ctx[y][x] <= ctx[y][x - 1];
					end
				end
			end
		end
	end

	for (genvar i = 0; i < CTX_SIZE-1; ++i) begin : CTX_DELAY_LINES
		delayLineBRAM_WP_27w_2048d #(
			.WIDTH (27)
		) long_delay_line (
			.clk    (pclk               ),
			.rst    (reset              ),
			.ce     (1'b1               ),
			.din    (ctx[i][CTX_SIZE-1] ),
			.dout   (delay_line_out[i]  ),
			.h_size (H_SIZE - CTX_SIZE  )
		);
	end

// --- GRADIENT CALCULATION
	wire signed   [8:0]  output_substraction_x[CHANNELS];
	wire signed   [8:0]  output_substraction_y[CHANNELS];
	wire unsigned [17:0] output_multiplication_x[CHANNELS];
	wire unsigned [17:0] output_multiplication_y[CHANNELS];
	wire unsigned [17:0] modulus_squared[CHANNELS];

	wire signed [8:0] gradient_x_delayed[CHANNELS];
	wire signed [8:0] gradient_y_delayed[CHANNELS];

	generate
		for (genvar i = 0; i < CHANNELS; ++i) begin : GEN_GRADIENT

			// --- SUBTRACT - X GRADIENT
			subtract_unsigned_8u_8u_9s substractorX ( //latency: 1
				// +1 because de signal is at position 0
				.A   (ctx[1][0][CHANNEL_DEPTH*i +: CHANNEL_DEPTH] ), // input wire [7 : 0] A
				.B   (ctx[1][2][CHANNEL_DEPTH*i +: CHANNEL_DEPTH] ), // input wire [7 : 0] B
				.CLK (pclk                                        ), // input wire CLK
				.SCLR(reset                                       ),
				.CE  (1'b1                                        ), // input wire CE
				.S   (output_substraction_x[i]                    )  // output wire [8 : 0] S
			);

			// --- SUBTRACT - Y GRADIENT
			subtract_unsigned_8u_8u_9s substractorY ( //latency: 1
				.A   (ctx[0][1][CHANNEL_DEPTH*i +: CHANNEL_DEPTH] ), // input wire [7 : 0] A
				.B   (ctx[2][1][CHANNEL_DEPTH*i +: CHANNEL_DEPTH] ), // input wire [7 : 0] B
				.CLK (pclk                                        ), // input wire CLK
				.SCLR(reset                                       ),
				.CE  (1'b1                                        ), // input wire CE
				.S   (output_substraction_y[i]                    )  // output wire [8 : 0] S
			);

			// --- SQUARE - X GRADIENT
			multiplier_9s_9s_17s multiplierX ( //latency: 3
				.CLK (pclk                       ), // input wire CLK
				.SCLR(reset                      ),
				.A   (output_substraction_x[i]   ), // input wire [8 : 0] A
				.B   (output_substraction_x[i]   ), // input wire [8 : 0] B
				.CE  (1'b1                       ), // input wire CE
				.P   (output_multiplication_x[i] )  // output wire [17 : 0] P
			);

			// --- SQUARE - Y GRADIENT
			multiplier_9s_9s_17s multiplierY ( //latency: 3
				.CLK (pclk                       ), // input wire CLK
				.SCLR(reset                      ),
				.A   (output_substraction_y[i]   ), // input wire [8 : 0] A
				.B   (output_substraction_y[i]   ), // input wire [8 : 0] B
				.CE  (1'b1                       ), // input wire CE
				.P   (output_multiplication_y[i] )  // output wire [17 : 0] P
			);

			// --- SUM SQUARED X AND Y GRADIENT - GET SQUARED GRADIENT MODULE
			adder_17u_17u_18u adder ( //latency: 2
				.A   (output_multiplication_x[i][16:0] ), // input wire [16 : 0] A
				.B   (output_multiplication_y[i][16:0] ), // input wire [16 : 0] B
				.CLK (pclk                             ), // input wire CLK
				.SCLR(reset                            ),
				.CE  (1'b1                             ), // input wire CE
				.S   (modulus_squared[i]               )  // output wire [17 : 0] S
			);

			delayLine #(
				.N     (18 ),
				.DELAY (5  )
			) delayGradients (
				.clk  (pclk                                                 ),
				.rst  (reset                                                ),
				.ce   (1'b1                                                 ),
				.data ({output_substraction_x[i], output_substraction_y[i]} ),
				.outp ({gradient_x_delayed[i], gradient_y_delayed[i]}       )
			);

		end
	endgenerate

	wire [2:0]sync_signals;
	delayLine #(
		.N     (3),
		.DELAY (6)
	) delaySyncSignals (
		.clk  (pclk                                          ),
		.rst  (reset                                         ),
		.ce   (1'b1                                          ),
		.data (ctx[1][1][(CONTEXT_WIDTH-1):(CONTEXT_WIDTH-3)]),
		.outp (sync_signals                                  )
	);

	assign de_out    = sync_signals[2];
	assign hsync_out = sync_signals[1];
	assign vsync_out = sync_signals[0];

	generate
		if (CHANNELS == 3) begin : GEN_MUX
			maxGradientMux mux( //latency: 0
				.valid            (ctx_valid_delayed[5]  ),
				.gradientX_R      (gradient_x_delayed[2] ),
				.gradientX_G      (gradient_x_delayed[1] ),
				.gradientX_B      (gradient_x_delayed[0] ),
				.gradientY_R      (gradient_y_delayed[2] ),
				.gradientY_G      (gradient_y_delayed[1] ),
				.gradientY_B      (gradient_y_delayed[0] ),
				.modulusSquared_R (modulus_squared[2]    ),
				.modulusSquared_G (modulus_squared[1]    ),
				.modulusSquared_B (modulus_squared[0]    ),
				.modulusSquared   (squared_modulus_out   ),
				.gradientX        (gradient_x_out        ),
				.gradientY        (gradient_y_out        )
			);
		end
		else begin
			assign squared_modulus_out = modulus_squared[0];
			assign gradient_x_out      = gradient_x_delayed[0];
			assign gradient_y_out      = gradient_y_delayed[0];
		end
	endgenerate

endmodule

`default_nettype wire
