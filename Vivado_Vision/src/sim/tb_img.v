`timescale 1ns / 1ps

module tb_img();

wire clk_in;
wire de_in;
wire vsync_in;
wire [23:0] pixel_in;

wire clk_out;
wire de_out;
wire vsync_out;
wire [23:0] pixel_out;

wire dbg_InputImageRead;
wire [10:0] dbg_InHorSize;
wire [8:0] dbg_InVerSize;
wire [6:0] dbg_NetCnt;
wire [6:0] dbg_NetCntDel;
wire [10:0] dbg_HCnt;
wire [8:0] dbg_VCnt;
wire [5:0] dbg_HCntOut;
wire [5:0] dbg_VCntOut;
wire [10:0] dbg_FracHor;
wire [8:0] dbg_FracVer;
wire dbg_de_in_del_67;
wire [5:0] dbg_HorAddr_1;
wire [5:0] dbg_VerAddr_1;
wire [3:0] dbg_WriteEnable5;
wire [23:0] dbg_pixel_in_del_5;
wire [23:0] dbg_Context0;
wire [23:0] dbg_Context1;
wire [23:0] dbg_Context2;
wire [23:0] dbg_Context3;
wire [5:0] dbg_DeltaHorActual;
wire [6:0] dbg_OneMinusDeltaHorActual;
wire [5:0] dbg_DeltaVerActual;
wire [6:0] dbg_OneMinusDeltaVerActual;
wire dbg_de;
wire dbg_vsync;

wire [10:0] in_width = 11'd96;
wire [8:0] in_height = 9'd96;
img_in
#(
    .SIZE_X(96),
    .SIZE_Y(96)
) img_in_inst
(
    .clk(clk_in),
    .pixel_out(pixel_in),
    .de_out(de_in),
    .vsync_out(vsync_in)
);

imresize DUT
(
    .clk_in(clk_in),
    .hsync_in(),
    .vsync_in(vsync_in),
    .de_in(de_in),
    .pixel_in(pixel_in),
    .in_width(in_width),
    .in_height(in_height),
    .valid_in(de_in),
    .ready_in(1),
    
    .clk_out(clk_out),
    .hsync_out(),
    .vsync_out(vsync_out),
    .de_out(de_out),
    .pixel_out(pixel_out),
    .valid_out(),
    .ready_out(),
    
    .dbg_InputImageRead(dbg_InputImageRead),
    .dbg_InHorSize(dbg_InHorSize),
    .dbg_InVerSize(dbg_InVerSize),
    .dbg_NetCnt(dbg_NetCnt),
    .dbg_NetCntDel(dbg_NetCntDel),
    .dbg_HCnt(dbg_HCnt),
    .dbg_VCnt(dbg_VCnt),
    .dbg_HCntOut(dbg_HCntOut),
    .dbg_VCntOut(dbg_VCntOut),
    .dbg_FracVer(dbg_FracVer),
    .dbg_FracHor(dbg_FracHor),
    .dbg_de_in_del_67(dbg_de_in_del_67),
    .dbg_HorAddr_1(dbg_HorAddr_1),
    .dbg_VerAddr_1(dbg_VerAddr_1),
    .dbg_WriteEnable5(dbg_WriteEnable5),
    .dbg_pixel_in_del_5(dbg_pixel_in_del_5),
    .dbg_DeltaHorActual(dbg_DeltaHorActual),
    .dbg_OneMinusDeltaHorActual(dbg_OneMinusDeltaHorActual),
    .dbg_DeltaVerActual(dbg_DeltaVerActual),
    .dbg_OneMinusDeltaVerActual(dbg_OneMinusDeltaVerActual),
    .dbg_Context0(dbg_Context0),
    .dbg_Context1(dbg_Context1),
    .dbg_Context2(dbg_Context2),
    .dbg_Context3(dbg_Context3),
    .dbg_de(dbg_de),
    .dbg_vsync(dbg_vsync)
);

img_out
#(
    .SIZE_X(64),
    .SIZE_Y(64),
    .ID(3)
) img_out_inst
(
    .clk(clk_out),
    .pixel_in(pixel_out),
    .de_in(de_out),
    .vsync_in(vsync_out)
);
/////////////////////////////DEBUG
img_out
#(
    .SIZE_X(64),
    .SIZE_Y(64),
    .ID(10)
) img_out_Cont0
(
    .clk(clk_out),
    .pixel_in(dbg_Context0),
    .de_in(dbg_de),
    .vsync_in(dbg_vsync)
);

img_out
#(
    .SIZE_X(64),
    .SIZE_Y(64),
    .ID(11)
) img_out_Cont1
(
    .clk(clk_out),
    .pixel_in(dbg_Context1),
    .de_in(dbg_de),
    .vsync_in(dbg_vsync)
);

img_out
#(
    .SIZE_X(64),
    .SIZE_Y(64),
    .ID(12)
) img_out_Cont2
(
    .clk(clk_out),
    .pixel_in(dbg_Context2),
    .de_in(dbg_de),
    .vsync_in(dbg_vsync)
);

img_out
#(
    .SIZE_X(64),
    .SIZE_Y(64),
    .ID(13)
) img_out_Cont3
(
    .clk(clk_out),
    .pixel_in(dbg_Context3),
    .de_in(dbg_de),
    .vsync_in(dbg_vsync)
);


endmodule
