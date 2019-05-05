`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2018 03:45:20 PM
// Design Name: 
// Module Name: register
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


module reg_del
#(
    parameter N = 8
)
(
    input clk,
    input ce,
    input [N-1:0]d,
    output [N-1:0]q
);

reg [N-1:0]val=0;

always @(posedge clk)
begin
    if(ce) val<=d;
    else val<=val;
end

assign q=val;

endmodule
