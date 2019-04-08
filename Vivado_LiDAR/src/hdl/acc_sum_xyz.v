`timescale 1ns / 1ps

module acc_sum_xyz(
    input clk,
    input ce,
    input rst,
    input [15:0]A,
    
    output [24:0]y //s15c9f
);
    
wire [24:0]out;
wire [24:0]suma;

rejestr# (.N(25)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_xyz ADD_xyz
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
