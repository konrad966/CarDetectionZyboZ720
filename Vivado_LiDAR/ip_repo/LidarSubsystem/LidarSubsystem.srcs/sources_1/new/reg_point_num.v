`timescale 1ns / 1ps

module reg_point_num #(
    parameter N=13   // ilosc bitow rejestru
)
(
    input clk,
    input ce,
    input rst,
    input signed [N-1:0]d,
    output signed [N-1:0]q
);
    
reg [N-1:0]val=0;

always @ (posedge clk)
begin
    if (rst)    val <= 0;
    else
    begin
        if (ce) val<=d;
        else val<=val;
    end
end
assign q=val; 
    
endmodule
