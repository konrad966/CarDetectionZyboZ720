`timescale 1ns / 1ps

module reg_min
#(
    parameter N = 35
)
(
    input clk,
    input ce,
    input rst,
    input [N-1:0]d,
    output [N-1:0]q
);

reg [N-1:0]val = 35'h3ffffffff; //2^34 - 1

always @(posedge clk)
begin
    if(rst) val <= 35'h3ffffffff; //2^34 - 1
    else begin
        if(ce) val <= d;
        else   val <= val;
    end
end

assign q=val;

endmodule
