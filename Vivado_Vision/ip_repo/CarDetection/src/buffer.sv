`timescale 1ns / 1ps
`default_nettype none

module buffer
	#(
		parameter IMAGE_WIDTH = 1280
	)
	(
		input wire       pclk,
		input wire       de,
		input wire [3:0] bottomBin,
		input wire [3:0] topBin,
		input wire [11:0]bottomModulus,
		input wire [11:0]topModulus,
		input wire       reset,

		output wire       deOut,
		output wire [3:0] bottomBinOut,
		output wire [3:0] topBinOut,
		output wire [11:0]bottomModulusOut,
		output wire [11:0]topModulusOut,
		output wire       fifo_full
	);


	reg         fifoWriteEnable = '0;
	reg         fifoReadEnable  = '0;
	reg  [31:0] fifoDataIn      = '0;
	wire [31:0] fifoDataOut;
	wire        fifoEmpty;
	wire [10:0] fifoDataCount;

	reg fifoReadEnableDelayed = '0;

	fifo_w32_d2048 fifo (
		.clk       (pclk           ), // input wire clk
		.srst      (reset          ), // input wire srst
		.din       (fifoDataIn     ), // input wire [31 : 0] din
		.wr_en     (fifoWriteEnable), // input wire wr_en
		.rd_en     (fifoReadEnable ), // input wire rd_en
		.dout      (fifoDataOut    ), // output wire [31 : 0] dout
		.full      (fifo_full      ), // output wire full
		.empty     (fifoEmpty      ), // output wire empty
		.data_count(fifoDataCount  )  // o11
	);

	reg [10:0] writeCounter = '0;
	reg [10:0] readCounter  = '0;

	always @(posedge pclk) begin
		if (reset) begin
			writeCounter    <= '0;
			fifoWriteEnable <= '0;
			fifoDataIn      <= '0;
			readCounter     <= '0;
			fifoReadEnable  <= '0;
		end
		else begin
			if (de) begin
				writeCounter    <= writeCounter + 'd1;
				fifoWriteEnable <= 'b1;
				fifoDataIn      <= {bottomBin, topBin, bottomModulus, topModulus};
			end
			else begin
				fifoWriteEnable <= '0;
			end

			if (writeCounter >= IMAGE_WIDTH) begin
				fifoReadEnable <= 'b1;
			end

			if (fifoReadEnable) begin
				readCounter <= readCounter + 'd1;
			end

			if (readCounter == IMAGE_WIDTH - 'd1 & fifoReadEnable) begin
				fifoReadEnable <= '0;
				readCounter    <= '0;
				if (de) begin
					writeCounter <= writeCounter - IMAGE_WIDTH + 'd1;
				end
				else begin
					writeCounter <= writeCounter - IMAGE_WIDTH;
				end
			end
		end
	end

	always @(posedge pclk) begin
		if (reset) begin
			fifoReadEnableDelayed <= '0;
		end
		else begin
			fifoReadEnableDelayed <= fifoReadEnable;
		end
	end

	assign deOut            = fifoReadEnableDelayed;
	assign bottomBinOut     = fifoReadEnableDelayed ? fifoDataOut[31:28] : '0;
	assign topBinOut        = fifoReadEnableDelayed ? fifoDataOut[27:24] : '0;
	assign bottomModulusOut = fifoReadEnableDelayed ? fifoDataOut[23:12] : '0;
	assign topModulusOut    = fifoReadEnableDelayed ? fifoDataOut[11:0] : '0;

endmodule

`default_nettype wire
