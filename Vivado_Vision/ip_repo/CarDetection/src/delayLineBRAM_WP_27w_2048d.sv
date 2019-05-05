`timescale 1ns / 1ps
`default_nettype none

module delayLineBRAM_WP_27w_2048d
	#(
		parameter WIDTH       = 27,
		parameter BRAM_SIZE_W = 11
	)
	(
		input  wire                   clk,
		input  wire                   rst,
		input  wire                   ce,
		input  wire [WIDTH-1:0]       din,
		output wire [WIDTH-1:0]       dout,
		input  wire [BRAM_SIZE_W-1:0] h_size
	);

	reg [BRAM_SIZE_W-1:0] position = '0;

	wire [WIDTH-1:0] dina;
	wire [WIDTH-1:0] douta;

	// RAM controller
	always @(posedge clk) begin
		if (rst) begin
			position <= '0;
		end
		else if (ce) begin
			position <= position + 'd1;
			if (position == h_size - 'd2) begin
				position <= '0;
			end
		end
	end

	// Block RAM
	bram_27w_2048d BRAM (
		.clka  (clk     ),
		.ena   (ce      ),
		.wea   (ce      ),
		.addra (position),
		.dina  (dina    ),
		.douta (douta   )
	);

	assign dina[WIDTH-1:0] = din;
	assign dout            = douta[WIDTH-1:0];

endmodule

`default_nettype wire
