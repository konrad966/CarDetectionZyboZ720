`timescale 1ns / 1ps

module accumulator(
    input clk,
    input ce,
    input rst,
    input signed [17:0]A,
    
    output signed [27:0]y    //totally keine grenze example 2^17 * 384 * 5
);
    
wire signed [27:0]out;
wire signed [27:0]suma;

rejestr# (.N(28)) REJ
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
