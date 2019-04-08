`timescale 1ns / 1ps
`default_nettype none

module pulseExtend
	#(
		parameter PULSE_WIDTH = 9
	)
	(
		input  wire clk,
		input  wire rst,
		input  wire ce,
		input  wire pulse_in,

		output wire pulse_out
	);

	reg [PULSE_WIDTH-2:0] delayed_pulse;
	always @(posedge clk) begin
		if (rst) begin
			delayed_pulse <= '0;
		end
		else begin
			if (ce) begin
				delayed_pulse <= {delayed_pulse[PULSE_WIDTH-3:0], pulse_in};
			end
			else begin
				delayed_pulse <= delayed_pulse;
			end
		end
	end
	
	assign pulse_out = |{delayed_pulse, pulse_in};

endmodule

`default_nettype wire
