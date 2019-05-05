`timescale 1ns / 1ps
`default_nettype none

module svmAccumulator
	#(
		parameter VECTOR_LENGTH   = 36,
		parameter VECTOR_WIDTH    = 12,
		parameter SVM_COEFF_WIDTH = 20,
		parameter MEM_INIT_FILE   = "svm000.txt",
		parameter ACC_WIDTH       = 44
	)
	(
		input wire                             clk,
		input wire                             value_de,
		input wire unsigned [VECTOR_WIDTH-1:0] value,
		input wire                             init_value_de,
		input wire signed   [ACC_WIDTH-1:0]    init_value,
		input wire                             reset,

		output logic                        value_out_de,
		output logic signed [ACC_WIDTH-1:0] value_out
	);

	reg          [5:0]              counter           = '0;
	reg                             last              = '0;
	reg                             coefficient_valid = '0;
	reg unsigned [VECTOR_WIDTH-1:0] value_delayed     = '0;

	always @(posedge clk) begin
		if (reset) begin
			counter           <= '0;
			last              <= '0;
			coefficient_valid <= '0;
			value_delayed     <= '0;
		end
		else begin
			if (value_de) begin
				if (counter == (VECTOR_LENGTH - 'd1)) begin
					counter <= '0;
					last    <= 'b1;
				end
				else begin
					counter <= counter + 1;
					last    <= '0;
				end
			end
			else begin
				counter <= counter;
				last    <= '0;
			end
			coefficient_valid <= value_de;
			value_delayed     <= value;
		end
	end

	wire signed [SVM_COEFF_WIDTH-1:0] coefficient;

	// synchronous - latency: 1
	svmCoefficientLUT #(
		.DATA_DEPTH   (VECTOR_LENGTH   ),
		.DATA_WIDTH   (SVM_COEFF_WIDTH ),
		.MEM_INIT_FILE(MEM_INIT_FILE   )
	)
	svmCoefficientLUT_inst (
		.clk     (clk         ),
		.reset   (reset       ),
		.address (counter     ),
		.data_out(coefficient )
	);

//  reg signed [ACC_WIDTH-1:0] init_value_register = '0;
//
//  always @(posedge clk) begin
//      if (reset) begin
//          init_value_register <= '0;
//      end
//      else if (init_value_de) begin
//          init_value_register <= init_value;
//      end
//  end
//
//  localparam                        MULTADD_LATENCY   = 5;
//  wire       signed [ACC_WIDTH-1:0] multadd_out;
//  wire                              multadd_out_valid;
//  logic      signed [ACC_WIDTH-1:0] multadd_out_muxed;
//  wire                              store_result;
//  reg                               add_init;
//  reg        signed [ACC_WIDTH-1:0] acc_value;
//
//  delayLine #(
//      .N    (                 ),
//      .DELAY( MULTADD_LATENCY )
//  ) delay_multadd_valid (
//      .clk (clk               ),
//      .ce  (1'b1              ),
//      .data(coefficient_valid ),
//      .outp(multadd_out_valid )
//  );
//
//  delayLine #(
//      .N    (                    ),
//      .DELAY( MULTADD_LATENCY - 1)
//  ) delay_add_init (
//      .clk (clk          ),
//      .ce  (1'b1         ),
//      .data(last         ),
//      .outp(store_result )
//  );
//
//  multadd_20s_12s_44s multadd_inst
//  (
//      .A       ( coefficient      ),
//      .B       ( value            ),
//      .C       ( multadd_out_muxed),
//      .SUBTRACT( 1'b0             ),
//      .CE      ( 1'b1             ),
//      .CLK     ( clk              ),
//      .SCLR    ( 1'b0             ),
//      .PCOUT   (                  ),
//      .P       ( multadd_out      )
//  );
//
//  always_comb begin
//      if (reset) begin
//          multadd_out_muxed = '0;
//      end
//      else if (multadd_out_valid) begin
//          multadd_out_muxed = multadd_out;
//      end
//      else begin
//          multadd_out_muxed = '0;
//      end
//  end
//
//  always @(posedge clk) begin
//      if (reset) begin
//          acc_value <= '0;
//          add_init  <= '0;
//      end
//      else if (store_result) begin
//          acc_value <= multadd_out_muxed;
//          add_init  <= 'b1;
//      end
//      else begin
//          acc_value <= '0;
//          add_init  <= '0;
//      end
//  end
//
//  always @(posedge clk) begin
//      if (reset) begin
//          value_out    <= '0;
//          value_out_de <= '0;
//      end
//      else if (add_init) begin
//          value_out    <= acc_value + init_value_register;
//          value_out_de <= 'b1;
//      end
//      else begin
//          value_out    <= '0;
//          value_out_de <= '0;
//      end
//  end

	localparam MULT_LATENCY         = 3;
	wire       multiplier_out_valid;
	wire       add_init_value;
	delayLine #(
		.N    (1            ),
		.DELAY(MULT_LATENCY )
	) delay_coef_valid_signal (
		.clk (clk                 ),
		.rst (reset               ),
		.ce  (1'b1                ),
		.data(coefficient_valid   ),
		.outp(multiplier_out_valid)
	);

	delayLine #(
		.N    (1               ),
		.DELAY(MULT_LATENCY + 1)
	) delay_last_signal (
		.clk (clk           ),
		.rst (reset         ),
		.ce  (1'b1          ),
		.data(last          ),
		.outp(add_init_value)
	);

	wire unsigned [VECTOR_WIDTH-1:0]                 value_delayed_to_mult;
	wire signed   [VECTOR_WIDTH+SVM_COEFF_WIDTH-1:0] multiplier_out;
	wire signed   [ACC_WIDTH-1:0]                    multiplier_out_extended;

	assign value_delayed_to_mult = coefficient_valid ? value_delayed : '0;

	multiplier_20s_12u_32s multiplier ( // latency: 3
		.CLK (clk                   ), // input wire CLK
		.SCLR(reset                 ),
		.A   (coefficient           ), // input wire [19 : 0] A
		.B   (value_delayed_to_mult ), // input wire [11 : 0] B
		.P   (multiplier_out        )  // output wire [31 : 0] P
	);

	// convert 32-bit to 44-bit
	assign multiplier_out_extended = multiplier_out;

	reg signed [ACC_WIDTH-1:0] acc_value                 = '0;
	reg signed [ACC_WIDTH-1:0] init_value_latched        = '0;
	reg                        acc_value_plus_init_valid = '0;
	reg signed [ACC_WIDTH-1:0] acc_value_plus_init       = '0;
	always @(posedge clk) begin
		if (reset) begin
			init_value_latched <= '0;
		end
		else if (init_value_de) begin
			init_value_latched <= init_value;
		end
		else begin
			init_value_latched <= init_value_latched;
		end
	end

	always @(posedge clk) begin
		if (reset) begin
			acc_value_plus_init_valid <= '0;
			acc_value_plus_init       <= '0;
			acc_value                 <= '0;
		end
		else begin
			if (add_init_value) begin
				acc_value_plus_init_valid <= 'b1;
				acc_value_plus_init       <= init_value_latched + acc_value;
				if (multiplier_out_valid) begin
					acc_value <= multiplier_out_extended;
				end
				else begin
					acc_value <= '0;
				end
			end
			else begin
				acc_value_plus_init_valid <= '0;
				acc_value_plus_init       <= acc_value_plus_init;
				if (multiplier_out_valid) begin
					acc_value <= acc_value + multiplier_out_extended;
				end
				else begin
					acc_value <= acc_value;
				end
			end
		end
	end

	always_comb begin
		if (acc_value_plus_init_valid) begin
			value_out_de = 'b1;
			value_out    = acc_value_plus_init;
		end
		else begin
			value_out_de = '0;
			value_out    = '0;
		end
	end

endmodule

`default_nettype wire
