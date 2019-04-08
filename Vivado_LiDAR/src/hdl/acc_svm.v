`timescale 1ns / 1ps

module acc_svm(
    input clk,
    input ce,
    input rst,
    input signed [16:0]A,  //s3c13f
    
    output signed [21:0]y //s8c13f
);
    
wire signed [21:0]out;
wire signed [21:0]suma;

rejestr# (.N(22)) REJ_svm_instance
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_acc_svm add_acc_svm_instance
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
