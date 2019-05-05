`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2016 13:28:38
// Design Name: 
// Module Name: signle_bbox
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
// 
//////////////////////////////////////////////////////////////////////////////////


module signle_bbox
#(  parameter COUNTER_WIDTH = 11
)(
    input clk,
    
    
    input [15:0] bbox_xs,
    input [15:0] bbox_xe,
    input [15:0] bbox_ys,
    input [15:0] bbox_ye,
    input [2:0] colour,
            
    
    input [COUNTER_WIDTH-1:0] frameW_in,
    input [COUNTER_WIDTH-1:0] frameH_in,
    input [23:0] rgb_in,
    input de_in,
    input hsync_in,
    input vsync_in,
    
    output [COUNTER_WIDTH-1:0] frameW_out,
    output [COUNTER_WIDTH-1:0] frameH_out,
    output [23:0] rgb_out,
    output de_out,
    output hsync_out,
    output vsync_out 
);

reg [7:0] r_r = 0;
reg [7:0] r_g = 0;
reg [7:0] r_b = 0;

reg r_de = 0;
reg r_hsync = 0;
reg r_vsync = 0;   

reg [COUNTER_WIDTH-1:0] r_frameW = 0;
reg [COUNTER_WIDTH-1:0] r_frameH = 0;

  
    
always @(posedge clk)
    begin
        
        if (((frameW_in == bbox_xs || frameW_in == bbox_xe) && (frameH_in > bbox_ys && frameH_in < bbox_ye)) || 
            ((frameH_in == bbox_ys || frameH_in == bbox_ye) && (frameW_in > bbox_xs && frameW_in < bbox_xe))) 
        begin
            // TODO extend
            if ( colour == 3'b001 )
            begin
                r_r <= 8'd255;
                r_g <= 0;
                r_b <= 0;
            end
            else
            begin
                r_r <= 0;
                r_g <= 0;
                r_b <= 8'd255;            
            end            
        end
        else
        begin
            r_r <= rgb_in[23:16];
            r_g <= rgb_in[15:8];
            r_b <= rgb_in[7:0];  
        end
       
        r_de <= de_in;
        r_hsync <= hsync_in;
        r_vsync <= vsync_in;
        
        r_frameW <= frameW_in;
        r_frameH <= frameH_in;
    end
    
// Output assigment
assign frameW_out = r_frameW;
assign frameH_out = r_frameH;

assign rgb_out = {r_r,r_g,r_b};
assign de_out = r_de;
assign hsync_out = r_hsync;
assign vsync_out = r_vsync;
    
    

endmodule
