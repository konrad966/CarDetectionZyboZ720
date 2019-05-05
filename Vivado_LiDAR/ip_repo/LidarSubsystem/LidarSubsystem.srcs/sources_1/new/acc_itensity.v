`timescale 1ns / 1ps

module acc_itensity(
    input clk,
    input ce,
    input rst,
    input [19:0]A,
    
    output [19:0]y    //totally keine grenze example 6*30*(64/4)*255
);
    
wire [19:0]out;
wire [19:0]suma;

rejestr# (.N(20)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_intens ADD_intens_instance
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
