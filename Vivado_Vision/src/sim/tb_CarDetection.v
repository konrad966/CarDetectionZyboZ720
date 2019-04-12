`timescale 1ns / 1ps

module tb_CarDetection();

//////////////////////////////////////////
//////////////Generate CLK////////////////
reg clk = 1'b0;
reg reset = 1'b0;
initial
begin
    while(1)
    begin
        #1; clk <= 1'b0;
        #1; clk <= 1'b1;
    end
end

initial
begin
    #1;
    reset <= 1'b1;
    #4;
    reset <= 1'b0;
end
//////////////Generate CLK////////////////
//////////////////////////////////////////




//////////////////////////////////////////
////////////////Variables/////////////////

/////////////////////////////////////
//////////////ImgIn//////////////////
wire clk_imgin;
wire [23:0] pixel_out_imgin;
wire de_out_imgin;
wire vsync_out_imgin;

wire clk_hdmi;
wire hdmi_de;
wire hdmi_hs;
wire hdmi_vs;

wire [7:0] hdmi_r;
wire [7:0] hdmi_g;
wire [7:0] hdmi_b;
//////////////ImgIn//////////////////
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
wire [11:0] dbg_hog_value;
wire dbg_hog_de;
wire [43:0] confidence_out_Detect;
wire confidence_valid_out_Detect;
///////////CarDetection//////////////
/////////////////////////////////////

////////////////Variables/////////////////
//////////////////////////////////////////




//////////////////////////////////////////
/////////////////Modules//////////////////

/////////////////////////////////////
////////////Assign CLKs//////////////
//assign clk_imgin = clk;
//assign clk_Detect = clk;
////////////Assign CLKs//////////////
/////////////////////////////////////

/////////////////////////////////////
///////////////Inputs////////////////
//?????????????????????????????????//
//?????????????????????????????????//
///////////////Inputs////////////////
/////////////////////////////////////
//img_in img_in_inst
//(
//    .clk(clk_imgin),
//    .pixel_out(pixel_out_imgin),
//    .de_out(de_out_imgin),
//    .vsync_out(vsync_out_imgin)
//);
hdmi_in hdmi_in_inst
(
    .hdmi_clk(clk_hdmi),
    .hdmi_de(hdmi_de),
    .hdmi_hs(hdmi_hs),
    .hdmi_vs(hdmi_vs),

    .hdmi_r(hdmi_r),
    .hdmi_g(hdmi_g),
    .hdmi_b(hdmi_b)
);

assign reset_Detect = reset; //Not in use


delay
#(
    .N(27),
    .DELAY(5)
) 
delay_inst
(
    .clk(clk_hdmi),
    .ce(1'b1),
    .x({hdmi_r, hdmi_g, hdmi_b, hdmi_de, hdmi_hs, hdmi_vs}),
    .y({r_Detect, g_Detect, b_Detect, de_Detect, hsync_Detect, vsync_Detect})
);

assign clk_Detect = clk_hdmi;
//assign de_Detect = hdmi_de;
//assign hsync_Detect = hdmi_hs;
//assign vsync_Detect = hdmi_vs;
//assign r_Detect = hdmi_r;
//assign g_Detect = hdmi_g;
//assign b_Detect = hdmi_b;
//assign de_Detect = de_out_imgin;
//assign hsync_Detect = 1'b0; //Unused?? TODO - Possible source of errors!
//assign vsync_Detect = vsync_out_imgin;
//assign r_Detect = pixel_out_imgin[7:0];
//assign g_Detect = pixel_out_imgin[15:8];
//assign b_Detect = pixel_out_imgin[23:16];
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
    .dbg_hog_value(dbg_hog_value),
    .dbg_hog_de(dbg_hog_de),
    .confidence_out(confidence_out_Detect),
    .confidence_valid_out(confidence_valid_out_Detect)
);

hdmi_out hdmi_out_inst
(
    .hdmi_clk(clk_hdmi),
    .hdmi_de(dbg_de_Detect),
    .hdmi_vs(dbg_vsync_Detect),
    .hdmi_data({dbg_gradient_x_Detect,dbg_gradient_x_Detect,dbg_gradient_x_Detect})
);

/////////////////Modules//////////////////
//////////////////////////////////////////

endmodule
