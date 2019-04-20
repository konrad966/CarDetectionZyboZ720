`timescale 1ns / 1ps
`default_nettype none

module humanDetectionNoScale
	#(
		parameter H_SIZE       = 1650,
		parameter IMAGE_WIDTH  = 1280,
		parameter IMAGE_HEIGHT = 720
	)
	(
		input  wire                        clk,
		input  wire                        reset,
		input  wire                        de,
		input  wire                        hsync,
		input  wire                        vsync,
		input  wire [7:0]                  r,
		input  wire [7:0]                  g,
		input  wire [7:0]                  b,
		input  wire [CONFIDENCE_WIDTH-1:0] svm_bias,
		output wire                        de_out,
		output wire                        hsync_out,
		output wire                        vsync_out,
		output wire [7:0]                  r_out,
		output wire [7:0]                  g_out,
		output wire [7:0]                  b_out,
		output wire [15:0]                 bbox_x_start,
		output wire [15:0]                 bbox_y_start,
		output wire [15:0]                 bbox_x_end,
		output wire [15:0]                 bbox_y_end,
		output wire                        bbox_valid,
		output wire                        done,
		output wire [3:0]                  alarm_code,
		output wire [7:0]                  dbg_gradient_x,
		output wire [7:0]                  dbg_gradient_y,
		output wire                        dbg_vsync,
		output wire                        dbg_hsync,
		output wire                        dbg_de,
        output wire [11:0]                 dbg_hog_value,
		output wire                        dbg_hog_de,
		output wire [CONFIDENCE_WIDTH-1:0] confidence_out,
		output wire                        confidence_valid_out
	);

	localparam                             HOG_BLOCK_SIZE          = 16;
	localparam                             HOG_CELL_SIZE           = 8;
	localparam                             HOG_CELLS_IN_BLOCK      = 4;
	localparam                             COLOR_DEPTH             = 24;
	localparam                             HOG_HISTOGRAM_BINS      = 9;
	localparam                             HOG_LINES_OF_CELLS      = IMAGE_HEIGHT / HOG_CELL_SIZE;
	localparam                             HOG_CELLS_IN_LINE       = IMAGE_WIDTH / HOG_CELL_SIZE;
	localparam                             HOG_LINES_OF_BLOCKS     = HOG_LINES_OF_CELLS - 1;
	localparam                             HOG_BLOCKS_IN_LINE      = HOG_CELLS_IN_LINE - 1;
	localparam                             HISTOGRAM_VALUE_WIDTH   = 12;
	localparam                             CONFIDENCE_WIDTH        = 44;
	localparam                             WINDOW_WIDTH            = 64;
	localparam                             WINDOW_HEIGHT           = 128;
	localparam                             HOG_BLOCKS_PER_WINDOW_X = WINDOW_WIDTH / HOG_CELL_SIZE - 1;
	localparam                             HOG_BLOCKS_PER_WINDOW_Y = WINDOW_HEIGHT / HOG_CELL_SIZE - 1;

	wire                                   hog_de;
	wire       [HISTOGRAM_VALUE_WIDTH-1:0] hog_value;
	hog #(
		.IMG_WIDTH          (IMAGE_WIDTH                        ),
		.IMG_HEIGHT         (IMAGE_HEIGHT                       ),
		.H_SIZE             (H_SIZE                             ),
		.MAX_HIST_DE_HEIGHT (HOG_CELL_SIZE * HOG_LINES_OF_CELLS ),
		.CELL_SIZE          (HOG_CELL_SIZE                      ),
		.CELLS_IN_LINE      (HOG_CELLS_IN_LINE                  ),
		.LINES_OF_CELLS     (HOG_LINES_OF_CELLS                 )
	) hog_inst (
		.pclk                     (clk           ),
		.hsync                    (hsync         ),
		.vsync                    (vsync         ),
		.pixel_r                  (r             ),
		.pixel_g                  (g             ),
		.pixel_b                  (b             ),
		.de_pix                   (de & ~reset   ),
		.de_out                   (hog_de        ),
		.hog                      (hog_value     ),
		.reset                    (reset         ),
		.dbg_gradient_x           (dbg_gradient_x),
		.dbg_gradient_y           (dbg_gradient_y),
		.dbg_de                   (dbg_de        ),
		.dbg_vsync                (dbg_vsync     ),
		.dbg_hsync                (dbg_hsync     ),
		.alarm_buffer_fifo_full   (alarm_code[0] ),
		.alarm_feature_fifo_full  (alarm_code[1] ),
		.alarm_histogram_fifo_full(alarm_code[2] ),
		.alarm_norm_hist_fifo_full(alarm_code[3] )
	);

	svm #(
		.WINDOW_WIDTH       (WINDOW_WIDTH                                      ),
		.WINDOW_HEIGHT      (WINDOW_HEIGHT                                     ),
		.BLOCK_SIZE         (HOG_BLOCK_SIZE                                    ),
		.BLOCKS_PER_WINDOW_X(HOG_BLOCKS_PER_WINDOW_X                           ),
		.BLOCKS_PER_WINDOW_Y(HOG_BLOCKS_PER_WINDOW_Y                           ),
		.HISTOGRAM_BINS     (HOG_HISTOGRAM_BINS                                ),
		.CELLS_IN_BLOCK     (HOG_CELLS_IN_BLOCK                                ),
		.BLOCKS_IN_LINE     (HOG_BLOCKS_IN_LINE                                ),
		.LINES_OF_BLOCKS    (HOG_LINES_OF_BLOCKS                               ),
		.SVM_MEM_INIT_PATH  ("C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/svm_2")
	)
	svm_inst (
		.de                  ( hog_de       ),
		.value               ( hog_value    ),
		.bias                ( svm_bias     ),
		.bbox_valid_out      ( bbox_valid   ),
		.bbox_x_start_out    ( bbox_x_start ),
		.bbox_y_start_out    ( bbox_y_start ),
		.bbox_x_end_out      ( bbox_x_end   ),
		.bbox_y_end_out      ( bbox_y_end   ),
		.clk                 ( clk          ),
		.confidence_out      ( confidence_out ),
		.confidence_valid_out( confidence_valid_out ),
		.done                ( done         ),
		.reset               ( reset        )
	);

	assign de_out    = de;
	assign hsync_out = hsync;
	assign vsync_out = vsync;
	assign r_out     = r;
	assign g_out     = g;
	assign b_out     = b;

    assign dbg_hog_value = hog_value;
    assign dbg_hog_de = hog_de;
endmodule

`default_nettype wire
