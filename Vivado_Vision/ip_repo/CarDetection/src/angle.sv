`timescale 1ns / 1ps
`default_nettype none

module angle
	(
		input wire       pclk,
		input wire       reset,
		input wire [8:0] gradientX,
		input wire [8:0] gradientY,
		input wire       de,

		output wire [11:0] angleOut, //s_2_9 (12s)
		output wire        deOut
	);

	localparam [11:0] PI = 12'b011001001000; //s_2_9

	reg [9:0] extendedGradientX = '0;
	reg [9:0] extendedGradientY = '0;

	// extend gradient by 1 bit, depending on gradient sign
	always @(posedge pclk) begin
		if (reset) begin
			extendedGradientX <= '0;
			extendedGradientY <= '0;
		end
		else begin
			extendedGradientX = gradientX[8] == 0? {gradientX[8], 1'b0, gradientX[7:0]} : {gradientX[8], 1'b1, gradientX[7:0]};
			extendedGradientY = gradientY[8] == 0? {gradientY[8], 1'b0, gradientY[7:0]} : {gradientY[8], 1'b1, gradientY[7:0]};
		end
	end

	wire [15:0] arcTanOutput;
	wire        arcTanDe;

	arcTangent arcTan (
		.aclk                    (pclk                                                        ), // input wire aclk
		.aresetn                 (~reset                                                      ),
		.s_axis_cartesian_tvalid (de                                                          ), // input wire s_axis_cartesian_tvalid
		.s_axis_cartesian_tdata  ({6'b000000, extendedGradientY, 6'b000000, extendedGradientX}), // input wire [31 : 0] s_axis_cartesian_tdata
		.m_axis_dout_tvalid      (arcTanDe                                                    ), // output wire m_axis_dout_tvalid
		.m_axis_dout_tdata       (arcTanOutput                                                )  // output wire [15 : 0] m_axis_dout_tdata
	);

	wire [19:0] delayGradientsOutput;

	delayLine #(
		.N     (20),
		.DELAY (16)
	) delayGradients (
		.clk  (pclk                                  ),
		.rst  (reset                                 ),
		.ce   (1'b1                                  ),
		.data ({extendedGradientX, extendedGradientY}),
		.outp (delayGradientsOutput                  )
	);

	reg [11:0] arcTangentTemp       = '0;
	reg [11:0] arcTangent           = '0;
	reg        arcTangentDelayed1De = '0;
	reg        arcTangentDelayed2De = '0;
	reg        arcTangentDelayed3De = '0;

	always @(posedge pclk) begin
		if (reset) begin
			arcTangentTemp       <= '0;
			arcTangent           <= '0;
			arcTangentDelayed1De <= '0;
			arcTangentDelayed2De <= '0;
			arcTangentDelayed3De <= '0;
		end
		else begin
			// zero division case
			if (delayGradientsOutput[19:10] == '0) begin
				if (delayGradientsOutput[9:0] == '0) begin
					arcTangentTemp <= '0;
				end
				else begin
					if (delayGradientsOutput[9] == 1'b0) begin
						arcTangentTemp <= 12'b001100100100;
					end else begin
						arcTangentTemp <= 12'b110011011100;
					end
				end
			end
			else begin
				arcTangentTemp <= arcTanOutput[11:0];
			end

			if (arcTangentTemp == PI || arcTangentTemp == '1) begin
				arcTangent <= '0;
			end
			else begin
				arcTangent <= arcTangentTemp;
			end

			arcTangentDelayed1De <= arcTanDe;
			arcTangentDelayed2De <= arcTangentDelayed1De;
			arcTangentDelayed3De <= arcTangentDelayed2De;
		end
	end

	assign angleOut = arcTangent;
	assign deOut    = arcTangentDelayed3De;

endmodule

`default_nettype wire

