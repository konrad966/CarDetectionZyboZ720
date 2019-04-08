`timescale 1ns / 1ps
`default_nettype none

module hog
	#(
		parameter IMG_WIDTH          = 1280, //64          //1280
		parameter IMG_HEIGHT         = 720,  //64          //720
		parameter H_SIZE             = 1980, //83          //1650
		parameter CELL_SIZE          = 8,    //8           //8
		parameter CELLS_IN_LINE      = 160,  //64/8 = 8    //160
		parameter LINES_OF_CELLS     = 90,   //64/8 = 8    //90
		parameter MAX_HIST_DE_HEIGHT = 192,  //64          //720... Check definition!
		parameter HISTOGRAM_BINS     = 9     //9(default) //9(default)
	)
	(
		input  wire        pclk,
		input  wire        hsync,
		input  wire        vsync,
		input  wire [7:0]  pixel_r,
		input  wire [7:0]  pixel_g,
		input  wire [7:0]  pixel_b,
		input  wire        de_pix,
		input  wire        reset,
		output wire        de_out,
		output wire [11:0] hog,

		output wire [7:0] dbg_gradient_x,
		output wire [7:0] dbg_gradient_y,
		output wire       dbg_vsync,
		output wire       dbg_hsync,
		output wire       dbg_de,

		//alarms
		output wire alarm_buffer_fifo_full,
		output wire alarm_histogram_fifo_full,
		output wire alarm_norm_hist_fifo_full,
		output wire alarm_feature_fifo_full
	);

// ---- gradient

	wire         gradient_out_de;
	wire  [8:0]  gradient_out_gradient_x;
	wire  [8:0]  gradient_out_gradient_y;
	wire  [16:0] gradient_out_modulus_squared;
	logic [8:0]  dbg_gradient_x_abs;
	logic [8:0]  dbg_gradient_y_abs;
	maxGradient #(
		.H_SIZE (H_SIZE)
	) gradient_inst (
		.pclk                (pclk                        ),
		.reset               (reset                       ),
		.hsync               (hsync                       ),
		.vsync               (vsync                       ),
		.pixel_r             (pixel_r                     ),
		.pixel_g             (pixel_g                     ),
		.pixel_b             (pixel_b                     ),
		.de_pix              (de_pix                      ),
		.hsync_out           (dbg_hsync                   ),
		.vsync_out           (dbg_vsync                   ),
		.de_out              (gradient_out_de             ),
		.gradient_x_out      (gradient_out_gradient_x     ),
		.gradient_y_out      (gradient_out_gradient_y     ),
		.squared_modulus_out (gradient_out_modulus_squared)
	);

	always_comb begin
		if (gradient_out_gradient_x[8] == 1'b1) begin
			dbg_gradient_x_abs = -gradient_out_gradient_x;
		end
		else begin
			dbg_gradient_x_abs = gradient_out_gradient_x;
		end
	end

	always_comb begin
		if (gradient_out_gradient_y[8] == 1'b1) begin
			dbg_gradient_y_abs = -gradient_out_gradient_y;
		end
		else begin
			dbg_gradient_y_abs = gradient_out_gradient_y;
		end
	end

	assign dbg_gradient_x = dbg_gradient_x_abs[7:0];
	assign dbg_gradient_y = dbg_gradient_y_abs[7:0];
	assign dbg_de         = gradient_out_de;
//  save_values #(
//      .SIGN            (1                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (8                      ),
//      .OUTPUT_FILE_PATH("gradient_x.txt"       ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_gradient_y (
//      .clk  (pclk                   ),
//      .de   (gradient_out_de        ),
//      .value(gradient_out_gradient_y)
//  );


//  save_values #(
//      .SIGN            (1                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (8                      ),
//      .OUTPUT_FILE_PATH("gradient_y.txt"       ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_gradient_x (
//      .clk  (pclk                   ),
//      .de   (gradient_out_de        ),
//      .value(gradient_out_gradient_x)
//  );

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (17                     ),
//      .OUTPUT_FILE_PATH("gradient_mod.txt"     ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_gradient_mod_squared (
//      .clk  (pclk                        ),
//      .de   (gradient_out_de             ),
//      .value(gradient_out_modulus_squared)
//  );


// ---- modulus

	wire [15:0] modulus_out;
	wire        modulus_out_de;

	modulus modulus_inst (
		.pclk         (pclk                        ),
		.reset        (reset                       ),
		.squareModule (gradient_out_modulus_squared),
		.de           (gradient_out_de             ),

		.modulusOut (modulus_out    ),
		.deOut      (modulus_out_de )
	);

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (16                     ),
//      .OUTPUT_FILE_PATH("modulus.txt"          ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_gradient_mod (
//      .clk  (pclk           ),
//      .de   (modulus_out_de ),
//      .value(modulus_out    )
//  );

// ---- modulus delay to bins choice

	wire [15:0] modulus_out_delayed;

	delayLine #(
		.N     (16),
		.DELAY (10)
	) delay_modulus (
		.clk  (pclk               ),
		.rst  (reset              ),
		.ce   (1'b1               ),
		.data (modulus_out        ),
		.outp (modulus_out_delayed)
	);

// ---- angle

	wire        angle_de_out;
	wire [11:0] angle_out_angle;

	angle angle_inst(
		.pclk      (pclk                   ),
		.reset     (reset                  ),
		.gradientX (gradient_out_gradient_x),
		.gradientY (gradient_out_gradient_y),
		.de        (gradient_out_de        ),

		.angleOut (angle_out_angle ),
		.deOut    (angle_de_out    )
	);

// ---- bins choice

	wire        bins_choice_out_de;
	wire [3:0]  bins_choice_out_bottom_bin;
	wire [3:0]  bins_choice_out_top_bin;
	wire [10:0] bins_choice_out_angle_0_180;

	binsChoice bin_choice_inst (
		.pclk  (pclk            ),
		.reset (reset           ),
		.de    (angle_de_out    ),
		.angle (angle_out_angle ),

		.deOut         (bins_choice_out_de         ),
		.bottomBinOut  (bins_choice_out_bottom_bin ),
		.topBinOut     (bins_choice_out_top_bin    ),
		.angle0_180Out (bins_choice_out_angle_0_180)
	);

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (11                     ),
//      .OUTPUT_FILE_PATH("angle_pos.txt"        ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_angle (
//      .clk  (pclk                       ),
//      .de   (bins_choice_out_de         ),
//      .value(bins_choice_out_angle_0_180)
//  );

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (4                      ),
//      .OUTPUT_FILE_PATH("top_bin.txt"          ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_top_bin (
//      .clk  (pclk                   ),
//      .de   (bins_choice_out_de     ),
//      .value(bins_choice_out_top_bin)
//  );

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (4                      ),
//      .OUTPUT_FILE_PATH("bottom_bin.txt"       ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_bottom_bin (
//      .clk  (pclk                      ),
//      .de   (bins_choice_out_de        ),
//      .value(bins_choice_out_bottom_bin)
//  );


// ---- modulus division

	wire        modulus_division_out_de;
	wire [11:0] modulus_division_out_top_modulus;
	wire [11:0] modulus_division_out_bottom_modulus;

	modulusDivision modulus_divider_inst (
		.pclk       (pclk                        ),
		.reset      (reset                       ),
		.modulus    (modulus_out_delayed[11:0]   ),
		.de         (bins_choice_out_de          ),
		.bottom_bin (bins_choice_out_bottom_bin  ),
		.angle0_180 (bins_choice_out_angle_0_180 ),

		.top_modulus_out    (modulus_division_out_top_modulus   ),
		.bottom_modulus_out (modulus_division_out_bottom_modulus),
		.de_out             (modulus_division_out_de            )
	);

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (12                     ),
//      .OUTPUT_FILE_PATH("top_vote.txt"         ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_top_modulus (
//      .clk  (pclk                            ),
//      .de   (modulus_division_out_de         ),
//      .value(modulus_division_out_top_modulus)
//  );

//  save_values #(
//      .SIGN            (0                      ),
//      .FRACTIONAL      (0                      ),
//      .INTEGRAL        (12                     ),
//      .OUTPUT_FILE_PATH("bottom_vote.txt"      ),
//      .MAX_VALUES      (IMG_WIDTH * IMG_HEIGHT ),
//      .VALUES_PER_LINE (IMG_WIDTH              ),
//      .STOP_SIM        (0                      ),
//      .BASE            ("DEC"                  )
//  )
//  save_bottom_modulus (
//      .clk  (pclk                               ),
//      .de   (modulus_division_out_de            ),
//      .value(modulus_division_out_bottom_modulus)
//  );

// ---- bins delay to modulus division

	wire [3:0] top_bin_delayed;
	wire [3:0] bottom_bin_delayed;
	delayLine #(
		.N     (8),
		.DELAY (8)
	) delay_histogram_bins (
		.clk  (pclk                                                 ),
		.rst  (reset                                                ),
		.ce   (1'b1                                                 ),
		.data ({bins_choice_out_top_bin, bins_choice_out_bottom_bin}),
		.outp ({top_bin_delayed, bottom_bin_delayed}                )
	);

// ---- buffer before histogram

	wire        buffer_out_de;
	wire [3:0]  buffer_out_bottom_bin;
	wire [3:0]  buffer_out_top_bin;
	wire [11:0] buffer_out_bottom_modulus;
	wire [11:0] buffer_out_top_modulus;

	buffer #(
		.IMAGE_WIDTH (IMG_WIDTH)
	) pre_histogram_buffer (
		.pclk             (pclk                               ),
		.reset            (reset                              ),
		.de               (modulus_division_out_de            ),
		.bottomBin        (bottom_bin_delayed                 ),
		.topBin           (top_bin_delayed                    ),
		.bottomModulus    (modulus_division_out_bottom_modulus),
		.topModulus       (modulus_division_out_top_modulus   ),
		.deOut            (buffer_out_de                      ),
		.bottomBinOut     (buffer_out_bottom_bin              ),
		.topBinOut        (buffer_out_top_bin                 ),
		.bottomModulusOut (buffer_out_bottom_modulus          ),
		.topModulusOut    (buffer_out_top_modulus             ),
		.fifo_full        (alarm_buffer_fifo_full             )
	);

// ---- histogram

	wire [17:0] histogram_out_histogram_value;
	wire        histogram_out_de;

	localparam BLOCKS_IN_LINE      = CELLS_IN_LINE - 1;
	localparam LINES_OF_BLOCKS     = LINES_OF_CELLS - 1;
	localparam HISTOGRAMS_IN_BLOCK = 4;

	histogram #(
		.IMAGE_WIDTH   (IMG_WIDTH          ),
		.IMAGE_HEIGHT  (IMG_HEIGHT         ),
		.MAX_DE_HEIGHT (MAX_HIST_DE_HEIGHT ),
		.CELLS_IN_LINE (CELLS_IN_LINE      )
	) histogram_inst (
		.pclk              (pclk                         ),
		.reset             (reset                        ),
		.deIn              (buffer_out_de                ),
		.bottomBin         (buffer_out_bottom_bin        ),
		.topBin            (buffer_out_top_bin           ),
		.bottomModulus     (buffer_out_bottom_modulus    ),
		.topModulus        (buffer_out_top_modulus       ),
		.histogramValueOut (histogram_out_histogram_value),
		.deOut             (histogram_out_de             ),
		.fifo_full         (alarm_histogram_fifo_full    )
	);

//  save_values #(
//      .SIGN            (0               ),
//      .FRACTIONAL      (0               ),
//      .INTEGRAL        (18              ),
//      .OUTPUT_FILE_PATH("histograms.txt"),
//      .MAX_VALUES      (160 * 9 * 4     ),
//      .VALUES_PER_LINE (160 * 9 * 4     ),
////        .MAX_VALUES      (1152            ),
////        .VALUES_PER_LINE (1152            ),
//      .STOP_SIM        (1               ),
//      .BASE            ("DEC"           )
//  )
//  u_save_values (
//      .clk  (clk2                         ),
//      .de   (histogram_out_de             ),
//      .value(histogram_out_histogram_value)
//  );

// ---- l2 norm
	wire        l2norm_out_de;
	wire [11:0] l2norm_out_normalized_histogram;
	l2norm #(
		.CELLS_IN_LINE  (CELLS_IN_LINE ),
		.LINES_OF_CELLS (LINES_OF_CELLS),
		.HISTOGRAM_BINS (HISTOGRAM_BINS),
		.BLOCKS_IN_LINE (BLOCKS_IN_LINE)
	) l2norm_inst (
		.clk                (pclk                            ),
		.de                 (histogram_out_de                ),
		.reset              (reset                           ),
		.histogram_value    (histogram_out_histogram_value   ),
		.de_out             (l2norm_out_de                   ),
		.value_out          (l2norm_out_normalized_histogram ),
		.prev_hist_fifo_full(alarm_norm_hist_fifo_full       ),
		.feature_fifos_full (alarm_feature_fifo_full         )
	);

//  save_values #(
//      .SIGN            (0         ),
//      .FRACTIONAL      (0         ),
//      .INTEGRAL        (12        ),
//      .OUTPUT_FILE_PATH("norm_alt.txt"),
//      .MAX_VALUES      (3780      ),
//      .VALUES_PER_LINE (3780      ),
//      .STOP_SIM        (1         ),
//      .BASE            ("DEC"     )
//  )
//  u_save_values (
//      .clk  (pclk                           ),
//      .de   (l2norm_out_de                  ),
//      .value(l2norm_out_normalized_histogram)
//  );

//  localparam FEATURE_VECTOR_LENGTH = BLOCKS_IN_LINE * LINES_OF_BLOCKS * HISTOGRAM_BINS * HISTOGRAMS_IN_BLOCK;

	assign hog    = l2norm_out_normalized_histogram;
	assign de_out = l2norm_out_de;

endmodule

`default_nettype none
