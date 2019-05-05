`timescale 1ns / 1ps

module accumulator(
    input clk,
    input ce,
    input rst,
    input signed [15:0]A,   //s6c9f
    
    output signed [24:0]y    //totally keine grenze example s15c9f
);
    
wire signed [24:0]out;
wire signed [24:0]suma;

rejestr# (.N(25)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
acc_adder ADD
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
