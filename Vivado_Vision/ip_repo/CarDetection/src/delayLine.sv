`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    11:50:46 03/29/2014
// Design Name:
// Module Name:    delayLine
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module delayLine
	#(
		parameter N     = 8,
		parameter DELAY = 1
	)
	(
		input  wire        clk,
		input  wire        rst,
		input  wire        ce,
		input  wire [N-1:0]data,
		output wire [N-1:0]outp
	);

	wire [N-1:0] tdata [DELAY:0];

	assign tdata[0] = data;

	generate
		for (genvar i = 0; i < DELAY; ++i) begin

			delay2
			#(
				.N(N)
			)
			delay_i
			(
				.clk  (clk       ),
				.rst  (rst       ),
				.ce   (ce        ),
				.idata(tdata[i]  ),
				.odata(tdata[i+1])
			);
		end
	endgenerate

	assign outp = tdata[DELAY];

endmodule

`default_nettype wire
