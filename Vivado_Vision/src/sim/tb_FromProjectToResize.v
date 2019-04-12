`timescale 1ns / 1ps

module tb_FromProjectToResize();

//////////////////////////////////////////
//////////////Generate CLK////////////////
reg clk = 0;
initial
begin
    while(1)
    begin
        #5; clk <= 0;
        #5; clk <= 1;
    end
end
//////////////Generate CLK////////////////
//////////////////////////////////////////




//////////////////////////////////////////
////////////////Variables/////////////////

/////////////////////////////////////
///////////Project2Image/////////////
wire clk_proj;
wire valid_in_proj;
wire ready_in_proj;
wire valid_out_proj;
wire ready_out_proj;

wire [15:0] min_x_proj;
wire [15:0] min_y_proj;
wire [15:0] min_z_proj;
wire [15:0] max_x_proj;
wire [15:0] max_y_proj;
wire [15:0] max_z_proj;

wire [10:0] HorMinOut_proj;
wire [10:0] HorMaxOut_proj;
wire [8:0] VerMinOut_proj;
wire [8:0] VerMaxOut_proj;
///////////Project2Image/////////////
/////////////////////////////////////

/////////////////////////////////////
///////////image_in_ROI//////////////
wire clk_ROI;
wire [10:0] HorMinIn_ROI;
wire [10:0] HorMaxIn_ROI;
wire [8:0] VerMinIn_ROI;
wire [8:0] VerMaxIn_ROI;
wire valid_in_ROI;
wire ready_out_ROI;
 
wire ARMImgRequest_ROI;
wire [10:0] HorMinOut_ROI;
wire [10:0] HorMaxOut_ROI;
wire [8:0] VerMinOut_ROI;
wire [8:0] VerMaxOut_ROI;
wire [23:0] pixel_in_ROI;
wire de_in_ROI;
wire vsync_in_ROI;

wire ready_in_ROI;
wire valid_out_ROI;
wire [23:0] pixel_out_ROI;
wire de_out_ROI;
wire vsync_out_ROI;
wire [10:0] OutWidth_ROI;
wire [8:0] OutHeight_ROI;
///////////image_in_ROI//////////////
/////////////////////////////////////

/////////////////////////////////////
////////////ARMEmulator//////////////
wire clk_ARM;
wire ARMImgRequest_ARM;
wire [10:0] HorMinIn_ARM;
wire [10:0] HorMaxIn_ARM;
wire [8:0] VerMinIn_ARM;
wire [8:0] VerMaxIn_ARM;
wire [23:0] pixel_out_ARM;
wire de_out_ARM;
wire vsync_out_ARM;
////////////ARMEmulator//////////////
/////////////////////////////////////

/////////////////////////////////////
//////////////Imresize///////////////
wire clk_in_imresize;
wire hsync_in_imresize;
wire vsync_in_imresize;
wire de_in_imresize;
wire [23:0] pixel_in_imresize;

wire [10:0] in_width_imresize;
wire [8:0] in_height_imresize;
wire valid_in_imresize;
wire ready_in_imresize;

wire clk_out_imresize;
wire hsync_out_imresize;
wire vsync_out_imresize;
wire de_out_imresize;
wire [23:0] pixel_out_imresize;

wire valid_out_imresize;
wire ready_out_imresize;
//////////////Imresize///////////////
/////////////////////////////////////

/////////////////////////////////////
//////////////Img_out////////////////
wire clk_imgout;
wire [23:0] pixel_in_imgout;
wire de_in_imgout;
wire vsync_in_imgout;
//////////////Img_out////////////////
/////////////////////////////////////

////////////////Variables/////////////////
//////////////////////////////////////////



//////////////////////////////////////////
/////////////////Modules//////////////////

/////////////////////////////////////
////////////Assign CLKs//////////////
assign clk_proj = clk;
assign clk_ROI = clk;
assign clk_ARM = clk;
assign clk_in_imresize = clk;
assign clk_imgout = clk;
////////////Assign CLKs//////////////
/////////////////////////////////////

/////////////////////////////////////
///////////////Inputs////////////////

//Test No. 1
assign min_x_proj = 16'h0ff4;
assign min_y_proj = 16'h074b;
assign min_z_proj = 16'hfe43;

assign max_x_proj = 16'h12de;
assign max_y_proj = 16'h095c;
assign max_z_proj = 16'hffc5;

assign valid_in_proj = 1'b1;

///////////////Inputs////////////////
/////////////////////////////////////
project2image project2image_inst
(
    .clk(clk_proj),
    
    .valid_in(valid_in_proj),
    .ready_out(ready_out_proj),
    .min_x(min_x_proj),   //every coordinate: s7c8f, in meters
    .min_y(min_y_proj),
    .min_z(min_z_proj),
    .max_x(max_x_proj),
    .max_y(max_y_proj),
    .max_z(max_z_proj),
    
    .ready_in(ready_in_proj),
    .valid_out(valid_out_proj),
    .HorMinOut(HorMinOut_proj), //unsigned int
    .HorMaxOut(HorMaxOut_proj),
    .VerMinOut(VerMinOut_proj),
    .VerMaxOut(VerMaxOut_proj)    
);

assign HorMinIn_ROI = HorMinOut_proj;
assign HorMaxIn_ROI = HorMaxOut_proj;
assign VerMinIn_ROI = VerMinOut_proj;
assign VerMaxIn_ROI = VerMaxOut_proj;
assign valid_in_ROI = valid_out_proj;
assign ready_in_proj = ready_out_ROI;

image_in_ROI image_in_ROI_inst
(
    .clk(clk_ROI),
    
    .HorMinIn(HorMinIn_ROI),
    .HorMaxIn(HorMaxIn_ROI),
    .VerMinIn(VerMinIn_ROI),
    .VerMaxIn(VerMaxIn_ROI),
    .valid_in(valid_in_ROI),
    .ready_out(ready_out_ROI),
     
    .ARMImgRequest(ARMImgRequest_ROI),
    .HorMinOut(HorMinOut_ROI),
    .HorMaxOut(HorMaxOut_ROI),
    .VerMinOut(VerMinOut_ROI),
    .VerMaxOut(VerMaxOut_ROI),
    .pixel_in(pixel_in_ROI),
    .de_in(de_in_ROI),
    .vsync_in(vsync_in_ROI),
    
    .ready_in(ready_in_ROI),
    .valid_out(valid_out_ROI),
    .pixel_out(pixel_out_ROI),
    .de_out(de_out_ROI),
    .vsync_out(vsync_out_ROI),
    .OutWidth(OutWidth_ROI),
    .OutHeight(OutHeight_ROI)
);

assign HorMinIn_ARM = HorMinOut_ROI;
assign HorMaxIn_ARM = HorMaxOut_ROI;
assign VerMinIn_ARM = VerMinOut_ROI;
assign VerMaxIn_ARM = VerMaxOut_ROI;
assign ARMImgRequest_ARM = ARMImgRequest_ROI;
assign pixel_in_ROI = pixel_out_ARM;
assign de_in_ROI = de_out_ARM;
assign vsync_in_ROI = vsync_out_ARM;

ARMEmulator ARMEmulator_inst
(
    .clk(clk_ARM),
    
    .ARMImgRequest(ARMImgRequest_ARM),
    .HorMinIn(HorMinIn_ARM),
    .HorMaxIn(HorMaxIn_ARM),
    .VerMinIn(VerMinIn_ARM),
    .VerMaxIn(VerMaxIn_ARM),
    .pixel_out(pixel_out_ARM),
    .de_out(de_out_ARM),
    .vsync_out(vsync_out_ARM)
);

assign hsync_in_imresize = 1'b0; //constant, hsync is unused in imresize
assign vsync_in_imresize = vsync_out_ROI;
assign de_in_imresize = de_out_ROI;
assign pixel_in_imresize = pixel_out_ROI;
assign in_width_imresize = OutWidth_ROI;
assign in_height_imresize = OutHeight_ROI;
assign valid_in_imresize = valid_out_ROI;
assign ready_in_ROI = ready_out_imresize;

imresize imresize_inst
(
    .clk_in(clk_in_imresize),
    
    .ready_out(ready_out_imresize),
    .hsync_in(hsync_in_imresize),
    .vsync_in(vsync_in_imresize),
    .de_in(de_in_imresize),
    .pixel_in(pixel_in_imresize),
    .in_width(in_width_imresize),
    .in_height(in_height_imresize),
    .valid_in(valid_in_imresize),
    
    .clk_out(clk_out_imresize),     //unused
    .hsync_out(hsync_out_imresize), //unused
    .vsync_out(vsync_out_imresize),
    .de_out(de_out_imresize),
    .pixel_out(pixel_out_imresize),
    .ready_in(ready_in_imresize),
    .valid_out(valid_out_imresize) //unused(in this version of simulation)
);

assign ready_in_imresize = 1'b1;
assign pixel_in_imgout = pixel_out_imresize;
assign de_in_imgout = de_out_imresize;
assign vsync_in_imgout = vsync_out_imresize;

img_out img_out_inst
(
    .clk(clk_imgout),
    
    .pixel_in(pixel_in_imgout),
    .de_in(de_in_imgout),
    .vsync_in(vsync_in_imgout)
);
/////////////////Modules//////////////////
//////////////////////////////////////////

endmodule
