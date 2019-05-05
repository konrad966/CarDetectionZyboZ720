`timescale 1ns / 1ps

module reg_max
#(
    parameter N = 37
)
(
    input clk,
    input ce,
    input rst,
    input [N-1:0]d,
    output [N-1:0]q
);

reg signed [N-1:0]val = 0; //-2^34

always @(posedge clk)
begin
    if(rst) val <= 0; //-2^34
    else begin
        if(ce) val <= d;
        else   val <= val;
    end
end

assign q=val;

endmodule
