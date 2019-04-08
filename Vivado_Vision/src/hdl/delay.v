`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2018 03:40:09 PM
// Design Name: 
// Module Name: delay
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


module delay
#(
    parameter N = 8,
    parameter DELAY = 5
)
(
    input clk,
    input ce,
    input [N-1:0]x,
    output [N-1:0]y
);

wire [N-1:0] tdata [DELAY:0];


genvar i;

generate
    if(DELAY==0)
        assign y=x;
    else
    begin
        for(i=0; i<DELAY; i=i+1)
        begin
            reg_del
            #( 
                .N(N)
            ) reg_i
            (
                .clk(clk),
                .ce(ce),
                .d(tdata[i]),
                .q(tdata[i+1])
            );        
        end
        
        assign tdata[0] = x;
        assign y = tdata[DELAY];   
    
    end

endgenerate


endmodule
