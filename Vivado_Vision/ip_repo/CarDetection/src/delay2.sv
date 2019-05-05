`timescale 1ns / 1ps
`default_nettype none

module delay2
	#(
		parameter N = 8
	)
	(
		input  wire         clk,
		input  wire         rst,
		input  wire         ce,
		input  wire [N-1:0] idata,
		output wire [N-1:0] odata
	);

	reg [N-1:0] val = '0;

	always @(posedge clk) begin
		if (rst) begin
			val <= '0;
		end
		else if (ce) begin
			val <= idata;
		end
		else begin
			val <= val;
		end
	end

	assign odata = val;

endmodule

`default_nettype wire
