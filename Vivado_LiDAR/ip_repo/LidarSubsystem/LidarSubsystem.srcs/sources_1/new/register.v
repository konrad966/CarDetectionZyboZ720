`timescale 1ns / 1ps

module register#(
    parameter N=16
)
(
    input clk,
    input ce,
    input rst,
    input signed [N-1:0]d,
    output signed [N-1:0]q
);

reg signed [N-1:0] val;
initial 
begin
    val = 2**(N-1)-1;
end

always @ (posedge clk)
begin
   if (rst) val <= 2**(N-1)-1;
   else
   begin
       if (ce) val<=d;
       else val<=val;
   end
end
assign q=val; 
    
endmodule
