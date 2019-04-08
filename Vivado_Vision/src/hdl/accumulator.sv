`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10.05.2016 10:14:18
// Design Name:
// Module Name: accumulator
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


module accumulator
	#(
		parameter INPUT_WIDTH    = 36,
		parameter OUTPUT_WIDTH   = 40,
		parameter DATA_LENGTH    = 9,
		parameter COUNTER_LENGTH = 4

	)
	(
		input wire [INPUT_WIDTH-1:0] inputValue,
		input wire                   de,
		input wire                   clk,
		input wire                   reset,

		output wire [OUTPUT_WIDTH-1:0]  valueOut,
		output wire                     deOut,
		output wire [COUNTER_LENGTH-1:0]counterOut
	);

	reg [OUTPUT_WIDTH-1:0]   acc       = '0;
	reg [OUTPUT_WIDTH-1:0]   accOutReg = '0;
	reg                      deOutReg  = '0;
	reg [COUNTER_LENGTH-1:0] counter   = '0;

	always @(posedge clk) begin
		if (reset) begin
			counter   <= '0;
			acc       <= '0;
			accOutReg <= '0;
			deOutReg  <= '0;
		end
		else begin
			if (de) begin
				counter <= counter + 'd1;
				acc     <= acc + inputValue;
			end
			if (counter == DATA_LENGTH) begin
				accOutReg <= acc;
				deOutReg  <= 'b1;
				if (de) begin
					counter <= 'd1;
					acc     <= inputValue;
				end
				else begin
					counter <= '0;
					acc     <= '0;
				end

			end
			else begin
				deOutReg <= '0;
			end
		end
	end

	assign valueOut   = deOutReg ? accOutReg : '0;
	assign deOut      = deOutReg;
	assign counterOut = counter;

endmodule

`default_nettype wire
