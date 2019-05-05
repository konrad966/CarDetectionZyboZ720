`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Bartosz Meus
//
// Create Date: 22:45:00 10/11/2016
// Design Name:
// Module Name: svmBRAMDelayLine
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
module svmBRAMDelayLine
	#(
		parameter H_SIZE     = 152,
		parameter DATA_WIDTH = 32
	)
	(
		input  wire                  clk,
		input  wire                  rst,
		input  wire [DATA_WIDTH-1:0] din,
		input  wire                  din_valid,
		output wire [DATA_WIDTH-1:0] dout,
		output wire                  dout_valid
	);

	localparam                  MEM_DEPTH       = 256;
	localparam                  PTR_WIDTH       = $clog2(MEM_DEPTH);

	reg        [PTR_WIDTH-1:0]  position        = '0;
	wire       [DATA_WIDTH-1:0] dout_temp;
	reg                         dout_valid_temp = '0;

	bram_44w_256d bram (
		.clka  (clk       ),
		.ena   (din_valid ),
		.wea   (din_valid ),
		.addra (position  ),
		.dina  (din       ),
		.douta (dout_temp )
	);

	always @(posedge clk) begin
		if (rst) begin
			position        <= '0;
			dout_valid_temp <= '0;
		end
		else if (din_valid) begin
			if (position == H_SIZE - 'd1) begin
				position <= '0;
			end
			else begin
				position <= position + 'd1;
			end
			dout_valid_temp <= 'b1;
		end
		else begin
			position        <= position;
			dout_valid_temp <= '0;
		end
	end

	assign dout_valid = dout_valid_temp;
	assign dout       = dout_valid_temp ? dout_temp : '0;

endmodule

`default_nettype wire
