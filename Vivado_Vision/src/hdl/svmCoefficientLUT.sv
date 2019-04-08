`timescale 1ns / 1ps
`default_nettype none

module svmCoefficientLUT
	#(
		parameter DATA_DEPTH    = 36,
		parameter DATA_WIDTH    = 20,
		parameter MEM_INIT_FILE = "svm.txt"
	)
	(
		input wire                     clk,
		input wire                     reset,
		input wire [ADDRESS_WIDTH-1:0] address,

		output reg [DATA_WIDTH-1:0] data_out
	);

	localparam ADDRESS_WIDTH = $clog2(DATA_DEPTH);

	(* rom_style = "distributed" *) reg [DATA_WIDTH-1:0] rom_mem [DATA_DEPTH-1:0];
	logic [DATA_WIDTH-1:0] data;

	// initialize ROM memory containing SVM coefficients
	initial begin
		$readmemh(MEM_INIT_FILE, rom_mem , 0, DATA_DEPTH - 1);
	end

	always @(address) begin
		data = rom_mem[address];
	end

	// register output
	always @(posedge clk) begin
		if (reset) begin
			data_out <= '0;
		end
		else begin
			data_out <= data;
		end
	end

endmodule

`default_nettype wire
