`timescale 1ns / 1ps

module tb_All();

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

/////////////////////////////////////
///////////CarDetection//////////////
wire clk_Detect;
wire reset_Detect;
wire de_Detect;
wire hsync_Detect;
wire vsync_Detect;
wire [7:0] r_Detect;
wire [7:0] g_Detect;
wire [7:0] b_Detect;
wire [43:0] svm_bias_Detect;
wire de_out_Detect;
wire hsync_out_Detect;
wire vsync_out_Detect;
wire [7:0] r_out_Detect;
wire [7:0] g_out_Detect;
wire [7:0] b_out_Detect;
wire [15:0] bbox_x_start_Detect;
wire [15:0] bbox_y_start_Detect;
wire [15:0] bbox_x_end_Detect;
wire [15:0] bbox_y_end_Detect;
wire bbox_valid_Detect;
wire done_Detect;
wire [3:0] alarm_code_Detect;
wire [7:0] dbg_gradient_x_Detect;
wire [7:0] dbg_gradient_y_Detect;
wire dbg_vsync_Detect;
wire dbg_hsync_Detect;
wire dbg_de_Detect;
wire [43:0] confidence_out_Detect;
wire confidence_valid_out_Detect;
///////////CarDetection//////////////
/////////////////////////////////////

/////////////////////////////////////
////////////Probability//////////////
wire clk_prob;
wire [43:0] svm_out_prob; //s14c29f
wire valid_in_prob;
wire [15:0] probability_prob; //1c15f
wire valid_out_prob;
////////////Probability//////////////
/////////////////////////////////////

/////////////////////////////////////
/////////////DataFusion//////////////
wire clk_Fusion;
wire valid_in_Fusion;
wire [15:0] ProbabilityLiDAR_Fusion;  //u1c15f
wire [15:0] ProbabilityCamera_Fusion; //u1c15f
wire valid_out_Fusion;
wire [15:0] ProbabilityFinal_Fusion;  //u1c15f
/////////////DataFusion//////////////
/////////////////////////////////////

////////////////Variables/////////////////
//////////////////////////////////////////



//////////////////////////////////////////
/////////////////Modules//////////////////

/////////////////////////////////////
////////////Assign CLKs//////////////
assign clk_proj        = clk;
assign clk_ROI         = clk;
assign clk_ARM         = clk;
assign clk_in_imresize = clk;
assign clk_imgout      = clk;
assign clk_Detect      = clk;
assign clk_prob        = clk;
assign clk_Fusion      = clk;
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

assign ProbabilityLiDAR_Fusion = 16'h3340; //0.4004

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

img_out
#(
    .ID(1),
    .SIZE_X(149),
    .SIZE_Y(73)
)
img_out_inst2
(
    .clk(clk_imgout),
    
    .pixel_in(pixel_out_ROI),
    .de_in(de_out_ROI),
    .vsync_in(vsync_out_ROI)
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

img_out 
#(
    .ID(0)
)
img_out_inst
(
    .clk(clk_imgout),
    
    .pixel_in(pixel_in_imgout),
    .de_in(de_in_imgout),
    .vsync_in(vsync_in_imgout)
);

assign reset_Detect = 1'b0; //Not in use
assign de_Detect = de_out_imresize;
assign hsync_Detect = 1'b0; //Unused?? TODO - Possible source of errors!
assign vsync_Detect = vsync_out_imresize;
assign r_Detect = pixel_out_imresize[7:0];
assign g_Detect = pixel_out_imresize[15:8];
assign b_Detect = pixel_out_imresize[23:16];
assign svm_bias_Detect = 44'hFFFC3C55080;

CarDetection CarDetection_inst
(
    .clk(clk_Detect),
    .reset(reset_Detect),
    .de(de_Detect),
    .hsync(hsync_Detect),
    .vsync(vsync_Detect),
    .r(r_Detect),
    .g(g_Detect),
    .b(b_Detect),
    .svm_bias(svm_bias_Detect),
    
    .de_out(de_out_Detect),
    .hsync_out(hsync_out_Detect),
    .vsync_out(vsync_out_Detect),
    .r_out(r_out_Detect),
    .g_out(g_out_Detect),
    .b_out(b_out_Detect),
    .bbox_x_start(bbox_x_start_Detect),
    .bbox_y_start(bbox_y_start_Detect),
    .bbox_x_end(bbox_x_end_Detect),
    .bbox_y_end(bbox_y_end_Detect),
    .bbox_valid(bbox_valid_Detect),
    .done(done_Detect),
    .alarm_code(alarm_code_Detect),
    .dbg_gradient_x(dbg_gradient_x_Detect),
    .dbg_gradient_y(dbg_gradient_y_Detect),
    .dbg_vsync(dbg_vsync_Detect),
    .dbg_hsync(dbg_hsync_Detect),
    .dbg_de(dbg_de_Detect),
    .confidence_out(confidence_out_Detect),
    .confidence_valid_out(confidence_valid_out_Detect)
);

assign valid_in_prob = confidence_valid_out_Detect;
assign svm_out_prob = confidence_out_Detect;

ClassificationProbability ClassificationProbability_inst
(
    .clk(clk_prob),
    .svm_out(svm_out_prob),
    .valid_in(valid_in_prob),
    
    .probability(probability_prob),
    .valid_out(valid_out_prob)
);

assign ProbabilityCamera_Fusion = probability_prob;
assign valid_in_Fusion = valid_out_prob;

DataFusion DataFusion_inst
(
    .clk(clk_Fusion),
        
    .valid_in(valid_in_Fusion),
    .ProbabilityLiDAR(ProbabilityLiDAR_Fusion),
    .ProbabilityCamera(ProbabilityCamera_Fusion),
    
    .valid_out(valid_out_Fusion),
    .ProbabilityFinal(ProbabilityFinal_Fusion)
);

/////////////////Modules//////////////////
//////////////////////////////////////////

endmodule
