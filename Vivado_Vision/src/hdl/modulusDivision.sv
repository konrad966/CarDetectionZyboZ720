`timescale 1ns / 1ps
`default_nettype none

module modulusDivision
	(
		input wire        pclk,
		input wire        reset,
		input wire [11:0] modulus,
		input wire        de,
		input wire [3:0]  bottom_bin,
		input wire [10:0] angle0_180,

		output wire [11:0] top_modulus_out,
		output wire [11:0] bottom_modulus_out,
		output wire        de_out
	);

	localparam [10:0] SCALE_9_PI = 11'b10110111011;
	localparam [9:0]  ONE_FIXED  = 10'b1000000000;

	logic [10:0] bottom_bin_boundary;
	wire  [10:0] delta_angle;
	wire  [9:0]  upper_vote;
	wire  [9:0]  bottom_vote;
	wire  [11:0] modulus_delayed;
	wire  [9:0]  upper_vote_delayed;

	always_comb begin
		case (bottom_bin)
			4'd0: bottom_bin_boundary    = 11'b00000000000;
			4'd1: bottom_bin_boundary    = 11'b00010110011;
			4'd2: bottom_bin_boundary    = 11'b00101100101;
			4'd3: bottom_bin_boundary    = 11'b01000011000;
			4'd4: bottom_bin_boundary    = 11'b01011001011;
			4'd5: bottom_bin_boundary    = 11'b01101111110;
			4'd6: bottom_bin_boundary    = 11'b10000110000;
			4'd7: bottom_bin_boundary    = 11'b10011100011;
			4'd8: bottom_bin_boundary    = 11'b10110010110;
			default: bottom_bin_boundary = 11'b00000000000;
		endcase
	end

	subtracter_11u_11u_11u sub_delta_angle ( //latency: 1
		.A   (angle0_180         ), // input wire [10 : 0] A
		.B   (bottom_bin_boundary), // input wire [10 : 0] B
		.CLK (pclk               ), // input wire CLK
		.SCLR(reset              ),
		.CE  (1'b1               ), // input wire CE
		.S   (delta_angle        )  // output wire [10 : 0] S
	);

	multiplier_10u_11u_10u mult_upper_vote ( //latency: 3
		.CLK (pclk            ), // input wire CLK
		.SCLR(reset           ),
		.A   (delta_angle[9:0]), // input wire [9 : 0] A
		.B   (SCALE_9_PI      ), // input wire [10 : 0] B
		.P   (upper_vote      )  // output wire [9 : 0] P
	);

	substractor_10u_10u_10u sub_bottom_vote ( //latency: 1
		.A   (ONE_FIXED   ), // input wire [9 : 0] A
		.B   (upper_vote  ), // input wire [9 : 0] B
		.CLK (pclk        ), // input wire CLK
		.SCLR(reset       ),
		.CE  (1'b1        ), // input wire CE
		.S   (bottom_vote )  // output wire [9 : 0] S
	);

	delayLine
	#(
		.N    (12),
		.DELAY(5 )
	) delay_modulus (
		.clk (pclk           ),
		.rst (reset          ),
		.ce  (1'b1           ),
		.data(modulus        ),
		.outp(modulus_delayed)
	);

	delayLine
	#(
		.N    (10),
		.DELAY(1 )
	) delay_upper_vote (
		.clk (pclk              ),
		.rst (reset             ),
		.ce  (1'b1              ),
		.data(upper_vote        ),
		.outp(upper_vote_delayed)
	);

	multiplier_12u_10u_12u mult_bottom_modulus ( //latency: 3
		.CLK (pclk              ), // input wire CLK
		.SCLR(reset             ),
		.A   (modulus_delayed   ), // input wire [11 : 0] A
		.B   (bottom_vote       ), // input wire [9 : 0] B
		.P   (bottom_modulus_out)  // output wire [11 : 0] P
	);

	multiplier_12u_10u_12u mult_top_modulus ( //latency: 3
		.CLK (pclk              ), // input wire CLK
		.SCLR(reset             ),
		.A   (modulus_delayed   ), // input wire [11 : 0] A
		.B   (upper_vote_delayed), // input wire [9 : 0] B
		.P   (top_modulus_out   )  // output wire [11 : 0] P
	);

	delayLine
	#(
		.N    (1),
		.DELAY(8)
	) delay_de (
		.clk (pclk  ),
		.rst (reset ),
		.ce  (1'b1  ),
		.data(de    ),
		.outp(de_out)
	);

endmodule

`default_nettype wire
