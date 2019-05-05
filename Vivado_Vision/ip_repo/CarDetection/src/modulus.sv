`timescale 1ns / 1ps
`default_nettype none

module modulus
	(
		input wire        pclk,
		input wire        reset,
		input wire [16:0] squareModule,
		input wire        de,

		output wire [15:0] modulusOut, //u.13.3
		output wire        deOut
	);

	wire [15:0] squareRootOutput;
	wire        squareRootOutputTvalid;

	squareRoot squareRootInstance (
		.aclk                    (pclk                           ), // input wire aclk
		.s_axis_cartesian_tvalid (de                             ), // input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata  ({1'b0, squareModule, 6'b000000}), // input wire [23 : 0] s_axis_cartesian_tdata7
		.m_axis_dout_tvalid      (squareRootOutputTvalid         ), // output wire m_axis_dout_tvalid
		.m_axis_dout_tdata       (squareRootOutput               ), // output wire [15 : 0] m_axis_dout_tdata
		.aresetn                 (~reset                         )
	);

	assign deOut      = squareRootOutputTvalid;
	assign modulusOut = squareRootOutput;

endmodule

`default_nettype wire
