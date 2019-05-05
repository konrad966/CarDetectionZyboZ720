`timescale 1ns / 1ps

module CheckScore(
    input clk,
    input valid_score,
    input [15:0] svm_score, //1c15f
    
    output flag_car
);

//0100110011001101 = 60%
assign flag_car = valid_score & (svm_score >= 16'b0100000000000000 ? 1'b1 : 1'b0);

endmodule
