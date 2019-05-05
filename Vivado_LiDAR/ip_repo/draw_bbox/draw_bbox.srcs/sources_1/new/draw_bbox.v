`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2016 17:12:34
// Design Name: 
// Module Name: draw_bbox
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Rysowanie bbox'ow na obrazie. Jedenk bbox to 64 bity po 16 na kazda skladowa (troche na wyrost, ale nie da się specjalnie mniej)
// TODO
// Consider other colour usage
//////////////////////////////////////////////////////////////////////////////////



module draw_bbox
#( parameter IMAGE_WIDTH = 1280,
   parameter IMAGE_HEIGHT = 720,
   parameter COUNTER_WIDTH = 11
)
(
    input clk,
    
    input de_in,
    input hsync_in,
    input vsync_in,
            
    input [23:0] rgb_in,
    
    input [63:0] bbox_0,
    input [63:0] bbox_1,
    input [63:0] bbox_2,
    input [63:0] bbox_3,
    input [63:0] bbox_4,
    input [63:0] bbox_5,
    input [63:0] bbox_6,
    input [63:0] bbox_7,
    input [63:0] bbox_8,
    input [63:0] bbox_9,
                               
    
    output de_out,
    output hsync_out,
    output vsync_out,
                
    output [23:0] rgb_out
);


// bbox matrices
wire [15:0] bbox_xs [9:0];
wire [15:0] bbox_xe [9:0];
wire [15:0] bbox_ys [9:0];
wire [15:0] bbox_ye [9:0];
wire [2:0] colour [9:0];

// counter generation
reg [COUNTER_WIDTH-1:0] r_frameW;
reg [COUNTER_WIDTH-1:0] r_frameH;

wire [COUNTER_WIDTH-1:0] frameW [10:0];
wire [COUNTER_WIDTH-1:0] frameH [10:0];


// horizontal and vertical counters generation
// ZYBO inverse logic
always @(posedge clk)
begin
    if (vsync_in == 1'b1)
    begin
        r_frameW <= 11'b0;
        r_frameH <= 11'b0;
    end
    
    if(de_in) begin
        r_frameW <= r_frameW + 1;
        if(r_frameW == IMAGE_WIDTH - 1) 
        begin
            r_frameW <= 11'b0;
            r_frameH <= r_frameH + 1;
            if(r_frameH == IMAGE_HEIGHT - 1) 
            begin
                r_frameH <= 11'b0;
            end 
        end
     end
end

assign frameW[0] = r_frameW;
assign frameH[0] = r_frameH;




// bbox assigment

assign bbox_xs[0] = bbox_0[15:0];
assign bbox_xe[0] = bbox_0[31:16];
assign bbox_ys[0] = bbox_0[47:32];
assign bbox_ye[0] = bbox_0[60:48];
assign colour[0] = bbox_0[63:61];

assign bbox_xs[1] = bbox_1[15:0];
assign bbox_xe[1] = bbox_1[31:16];
assign bbox_ys[1] = bbox_1[47:32];
assign bbox_ye[1] = bbox_1[60:48];
assign colour[1] = bbox_1[63:61];

assign bbox_xs[2] = bbox_2[15:0];
assign bbox_xe[2] = bbox_2[31:16];
assign bbox_ys[2] = bbox_2[47:32];
assign bbox_ye[2] = bbox_2[60:48];
assign colour[2] = bbox_2[63:61];

assign bbox_xs[3] = bbox_3[15:0];
assign bbox_xe[3] = bbox_3[31:16];
assign bbox_ys[3] = bbox_3[47:32];
assign bbox_ye[3] = bbox_3[60:48];
assign colour[3] = bbox_3[63:61];

assign bbox_xs[4] = bbox_4[15:0];
assign bbox_xe[4] = bbox_4[31:16];
assign bbox_ys[4] = bbox_4[47:32];
assign bbox_ye[4] = bbox_4[60:48];
assign colour[4] = bbox_4[63:61];

assign bbox_xs[5] = bbox_5[15:0];
assign bbox_xe[5] = bbox_5[31:16];
assign bbox_ys[5] = bbox_5[47:32];
assign bbox_ye[5] = bbox_5[60:48];
assign colour[5] = bbox_5[63:61];

assign bbox_xs[6] = bbox_6[15:0];
assign bbox_xe[6] = bbox_6[31:16];
assign bbox_ys[6] = bbox_6[47:32];
assign bbox_ye[6] = bbox_6[60:48];
assign colour[6] = bbox_6[63:61];

assign bbox_xs[7] = bbox_7[15:0];
assign bbox_xe[7] = bbox_7[31:16];
assign bbox_ys[7] = bbox_7[47:32];
assign bbox_ye[7] = bbox_7[60:48];
assign colour[7] = bbox_7[63:61];

assign bbox_xs[8] = bbox_8[15:0];
assign bbox_xe[8] = bbox_8[31:16];
assign bbox_ys[8] = bbox_8[47:32];
assign bbox_ye[8] = bbox_8[60:48];
assign colour[8] = bbox_8[63:61];

assign bbox_xs[9] = bbox_9[15:0];
assign bbox_xe[9] = bbox_9[31:16];
assign bbox_ys[9] = bbox_9[47:32];
assign bbox_ye[9] = bbox_9[60:48];
assign colour[9] = bbox_9[63:61];




wire [23:0] rgb [10:0];

wire de [10:0];
wire hsync [10:0];
wire vsync [10:0];


assign rgb[0] = rgb_in;

assign de[0] = de_in;
assign hsync[0] = hsync_in;
assign vsync[0] = vsync_in;

// -------------------------------------------------------------------------------------------------------------------------------
// bbox 0


genvar k;
generate 
for (k=0; k < 10; k=k+1) begin

signle_bbox
#(  .COUNTER_WIDTH(COUNTER_WIDTH)
) bbox_i
(
    .clk(clk),
    .bbox_xs(bbox_xs[k]),
    .bbox_xe(bbox_xe[k]),
    .bbox_ys(bbox_ys[k]),
    .bbox_ye(bbox_ye[k]),
    .colour(colour[k]),            
    
    .frameW_in(frameW[k]),
    .frameH_in(frameH[k]),
    .rgb_in(rgb[k]),
    .de_in(de[k]),
    .hsync_in(hsync[k]),
    .vsync_in(vsync[k]),
    
    .frameW_out(frameW[k+1]),
    .frameH_out(frameH[k+1]),
    .rgb_out(rgb[k+1]),
    .de_out(de[k+1]),
    .hsync_out(hsync[k+1]),
    .vsync_out(vsync[k+1]) 
);
end
endgenerate

			
assign de_out = de[10];
assign hsync_out = hsync[10];
assign vsync_out = vsync[10];

assign rgb_out = rgb[10];


	

    
    
    
endmodule
