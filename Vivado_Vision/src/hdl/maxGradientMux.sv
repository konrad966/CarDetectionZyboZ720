`timescale 1ns / 1ps
`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Bartosz Meus
//
// Create Date: 04.10.2016 22:17:00
// Design Name:
// Module Name: maxGradientMux
// Project Name:
// Target Devices:
// Tool Versions:
// Description: selects channel with maximum gradient module and drives output with it
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module maxGradientMux
	(
		input  wire                 valid,
		input  wire signed   [8:0]  gradientX_R,
		input  wire signed   [8:0]  gradientX_G,
		input  wire signed   [8:0]  gradientX_B,
		input  wire signed   [8:0]  gradientY_R,
		input  wire signed   [8:0]  gradientY_G,
		input  wire signed   [8:0]  gradientY_B,
		input  wire unsigned [17:0] modulusSquared_R,
		input  wire unsigned [17:0] modulusSquared_G,
		input  wire unsigned [17:0] modulusSquared_B,

		output reg  unsigned [16:0] modulusSquared,
		output reg  signed   [8:0]  gradientX,
		output reg  signed   [8:0]  gradientY
	);

	wire             r_ge_g;
	wire             r_ge_b;
	wire             g_ge_b;
	wire             b_ge_g;
	wire             b_ge_r;
	wire             g_ge_r;
	wire             sel_red, sel_green, sel_blue;
	wire       [2:0] sel;

// COMPARATOR
// ge == greater or equal
	assign r_ge_g = (modulusSquared_R >= modulusSquared_G);
	assign r_ge_b = (modulusSquared_R >= modulusSquared_B);
	assign g_ge_b = (modulusSquared_G >= modulusSquared_B);

	assign sel_red   = r_ge_g & r_ge_b;
	assign sel_green = ~r_ge_g & g_ge_b;
	assign sel_blue  = (r_ge_g & ~r_ge_b) | (~r_ge_g & ~g_ge_b);

	assign sel = {sel_red, sel_green, sel_blue};

	localparam [2:0] RED_SEL                      = 3'b100;
	localparam [2:0] GREEN_SEL                    = 3'b010;
	localparam [2:0] BLUE_SEL                     = 3'b001;

// MUX
	always_comb begin
		if (~valid) begin
			modulusSquared = '0;
			gradientX      = '0;
			gradientY      = '0;
		end
		else begin
			case (sel)
				RED_SEL: begin
					modulusSquared = modulusSquared_R[16:0];
					gradientX      = gradientX_R;
					gradientY      = gradientY_R;
				end
				GREEN_SEL: begin
					modulusSquared = modulusSquared_G[16:0];
					gradientX      = gradientX_G;
					gradientY      = gradientY_G;
				end
				BLUE_SEL: begin
					modulusSquared = modulusSquared_B[16:0];
					gradientX      = gradientX_B;
					gradientY      = gradientY_B;
				end
				default: begin
					modulusSquared = '0;
					gradientX      = '0;
					gradientY      = '0;
				end
			endcase
		end
	end

endmodule

`default_nettype wire
