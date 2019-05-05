`timescale 1ns / 1ps

module acc_sum_itensity(
    input clk,
    input ce,
    input rst,
    input [7:0]A,
    
    output [19:0]y    //totally keine grenze example
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
add_intensity ADD_intens
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
