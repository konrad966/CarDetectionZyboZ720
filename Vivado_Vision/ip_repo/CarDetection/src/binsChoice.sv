`timescale 1ns / 1ps
`default_nettype none

module binsChoice
	(
		input wire        pclk,
		input wire        reset,
		input wire        de,
		input wire [11:0] angle,

		output wire        deOut,
		output wire [3:0]  bottomBinOut,
		output wire [3:0]  topBinOut,
		output wire [10:0] angle0_180Out
	);

	localparam [10:0] PI       = 11'b11001001000; // 3.140625 (u_2_9)
	localparam [10:0] PI_DIV_9 = 11'b10110111011; // 2.865234375 (u_2_9)

	wire [11:0] piAdderOutput;

	// add pi
	adder_12s_11u_12s piAdder ( //latency: 1
		.A   (angle        ), // input wire [11 : 0] A
		.B   (PI           ), // input wire [10 : 0] B
		.CLK (pclk         ), // input wire CLK
		.SCLR(reset        ),
		.CE  (1'b1         ), // input wire CE
		.S   (piAdderOutput)  // output wire [11 : 0] S
	);

	wire        deDelayed;
	wire [11:0] angleDelayed;

	delayLine #(
		.N     (13),
		.DELAY (1 )
	) delayAngleModulus (
		.clk  (pclk                     ),
		.rst  (reset                    ),
		.ce   (1'b1                     ),
		.data ({de, angle}              ),
		.outp ({deDelayed, angleDelayed})
	);

	wire [10:0] angle0_180;
	wire [3:0]  scaleBinMultiplierOutput;

	assign angle0_180 = angleDelayed[11] ? piAdderOutput[10:0] : angleDelayed[10:0];

	multiplier_11u_11u_4u scaleBinMultiplier ( //latency: 3
		.CLK (pclk                    ), // input wire CLK
		.SCLR(reset                   ),
		.A   (angle0_180              ), // input wire [10 : 0] A
		.B   (PI_DIV_9                ), // input wire [10 : 0] B
		.P   (scaleBinMultiplierOutput)  // output wire [3 : 0] P
	);

	wire        deDelayed2;
	wire [10:0] angle0_180Delayed2;

	delayLine #(
		.N     (12),
		.DELAY (3 )
	) delayDe (
		.clk  (pclk                            ),
		.rst  (reset                           ),
		.ce   (1'b1                            ),
		.data ({deDelayed, angle0_180}         ),
		.outp ({deDelayed2, angle0_180Delayed2})
	);

	// boundary bins cases
	assign bottomBinOut  = scaleBinMultiplierOutput == 4'd9 ? 4'd0 : scaleBinMultiplierOutput;
	assign topBinOut     = bottomBinOut == 4'd8 ? 4'd0 : bottomBinOut + 4'd1;
	assign deOut         = deDelayed2;
	assign angle0_180Out = angle0_180Delayed2;

endmodule

`default_nettype wire
