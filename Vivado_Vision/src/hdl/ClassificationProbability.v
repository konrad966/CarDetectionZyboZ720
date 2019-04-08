`timescale 1ns / 1ps

module ClassificationProbability(
    input clk,
    input [43:0] svm_out, //s14c29f
    input valid_in,
    
    output [15:0] probability, //1c15f
    output valid_out
);

wire [63:0] check;
wire [5:0] check_score;
wire [15:0] probability_tmp; //1c15f

encoder64 encoder_svm_score //Latencja: 5
(
    .clk(clk),
    .in(check),
    .out(check_score)
);

LUT_Probability LUT_Probability_instance 
(
    .a(check_score),
    .spo(probability_tmp)
);

//latency 2; in,out 1c15f
SubProb SubProb_instance 
(
    .CLK(clk),
    .A(16'b1000000000000000),
    .B(probability_tmp),
    .S(probability)
);

delay
#(
    .N(1),
    .DELAY(7) //5-Encoder, 2-Subtracter
) 
del_valid_in 
(
    .clk(clk),
    .ce(1'b1),
    .x(valid_in),
    .y(valid_out)
);

wire signed [43:0] compare [62:0];
assign compare[0] = 44'hfff784a4912;
assign compare[1] = 44'hfffaf772314;
assign compare[2] = 44'hfffbc9b1bcf;
assign compare[3] = 44'hfffc492255c;
assign compare[4] = 44'hfffca5caefc;
assign compare[5] = 44'hfffcef367f5;
assign compare[6] = 44'hfffd2c6b871;
assign compare[7] = 44'hfffd6131fce;
assign compare[8] = 44'hfffd8fcf52f;
assign compare[9] = 44'hfffdb9bc79c;
assign compare[10] = 44'hfffddffbf60;
assign compare[11] = 44'hfffe0346f6e;
assign compare[12] = 44'hfffe2426d45;
assign compare[13] = 44'hfffe43045e0;
assign compare[14] = 44'hfffe6031810;
assign compare[15] = 44'hfffe7bef9bb;
assign compare[16] = 44'hfffe9673c8e;
assign compare[17] = 44'hfffeafe9de8;
assign compare[18] = 44'hfffec876934;
assign compare[19] = 44'hfffee0390ff;
assign compare[20] = 44'hfffef74c1bb;
assign compare[21] = 44'hffff0dc6ff9;
assign compare[22] = 44'hffff23be36f;
assign compare[23] = 44'hffff3943f95;
assign compare[24] = 44'hffff4e68a90;
assign compare[25] = 44'hffff633b2c0;
assign compare[26] = 44'hffff77c9359;
assign compare[27] = 44'hffff8c1f83c;
assign compare[28] = 44'hffffa04a13f;
assign compare[29] = 44'hffffb454505;
assign compare[30] = 44'hffffc84938f;
assign compare[31] = 44'hffffdc33889;
assign compare[32] = 44'hfffff01dd84;
assign compare[33] = 44'h00000412c0d;
assign compare[34] = 44'h0000181cfd4;
assign compare[35] = 44'h00002c478d7;
assign compare[36] = 44'h0000409ddba;
assign compare[37] = 44'h0000552be53;
assign compare[38] = 44'h000069fe682;
assign compare[39] = 44'h00007f2317d;
assign compare[40] = 44'h000094a8da4;
assign compare[41] = 44'h0000aaa0119;
assign compare[42] = 44'h0000c11af58;
assign compare[43] = 44'h0000d82e013;
assign compare[44] = 44'h0000eff07de;
assign compare[45] = 44'h0001087d32a;
assign compare[46] = 44'h000121f3485;
assign compare[47] = 44'h00013c77757;
assign compare[48] = 44'h00015835903;
assign compare[49] = 44'h00017562b32;
assign compare[50] = 44'h000194403cd;
assign compare[51] = 44'h0001b5201a5;
assign compare[52] = 44'h0001d86b1b2;
assign compare[53] = 44'h0001feaa977;
assign compare[54] = 44'h00022897be3;
assign compare[55] = 44'h00025735145;
assign compare[56] = 44'h00028bfb8a1;
assign compare[57] = 44'h0002c93091e;
assign compare[58] = 44'h0003129c217;
assign compare[59] = 44'h00036f44bb7;
assign compare[60] = 44'h0003eeb5544;
assign compare[61] = 44'h0004c0f4dfe;
assign compare[62] = 44'h000833c2801;
assign check[0] = svm_out <= compare[0];
assign check[1] = svm_out > compare[0] & svm_out <= compare[1] ;
assign check[2] = svm_out > compare[1] & svm_out <= compare[2] ;
assign check[3] = svm_out > compare[2] & svm_out <= compare[3] ;
assign check[4] = svm_out > compare[3] & svm_out <= compare[4] ;
assign check[5] = svm_out > compare[4] & svm_out <= compare[5] ;
assign check[6] = svm_out > compare[5] & svm_out <= compare[6] ;
assign check[7] = svm_out > compare[6] & svm_out <= compare[7] ;
assign check[8] = svm_out > compare[7] & svm_out <= compare[8] ;
assign check[9] = svm_out > compare[8] & svm_out <= compare[9] ;
assign check[10] = svm_out > compare[9] & svm_out <= compare[10] ;
assign check[11] = svm_out > compare[10] & svm_out <= compare[11] ;
assign check[12] = svm_out > compare[11] & svm_out <= compare[12] ;
assign check[13] = svm_out > compare[12] & svm_out <= compare[13] ;
assign check[14] = svm_out > compare[13] & svm_out <= compare[14] ;
assign check[15] = svm_out > compare[14] & svm_out <= compare[15] ;
assign check[16] = svm_out > compare[15] & svm_out <= compare[16] ;
assign check[17] = svm_out > compare[16] & svm_out <= compare[17] ;
assign check[18] = svm_out > compare[17] & svm_out <= compare[18] ;
assign check[19] = svm_out > compare[18] & svm_out <= compare[19] ;
assign check[20] = svm_out > compare[19] & svm_out <= compare[20] ;
assign check[21] = svm_out > compare[20] & svm_out <= compare[21] ;
assign check[22] = svm_out > compare[21] & svm_out <= compare[22] ;
assign check[23] = svm_out > compare[22] & svm_out <= compare[23] ;
assign check[24] = svm_out > compare[23] & svm_out <= compare[24] ;
assign check[25] = svm_out > compare[24] & svm_out <= compare[25] ;
assign check[26] = svm_out > compare[25] & svm_out <= compare[26] ;
assign check[27] = svm_out > compare[26] & svm_out <= compare[27] ;
assign check[28] = svm_out > compare[27] & svm_out <= compare[28] ;
assign check[29] = svm_out > compare[28] & svm_out <= compare[29] ;
assign check[30] = svm_out > compare[29] & svm_out <= compare[30] ;
assign check[31] = svm_out > compare[30] & svm_out <= compare[31] ;
assign check[32] = svm_out > compare[31] & svm_out <= compare[32] ;
assign check[33] = svm_out > compare[32] & svm_out <= compare[33] ;
assign check[34] = svm_out > compare[33] & svm_out <= compare[34] ;
assign check[35] = svm_out > compare[34] & svm_out <= compare[35] ;
assign check[36] = svm_out > compare[35] & svm_out <= compare[36] ;
assign check[37] = svm_out > compare[36] & svm_out <= compare[37] ;
assign check[38] = svm_out > compare[37] & svm_out <= compare[38] ;
assign check[39] = svm_out > compare[38] & svm_out <= compare[39] ;
assign check[40] = svm_out > compare[39] & svm_out <= compare[40] ;
assign check[41] = svm_out > compare[40] & svm_out <= compare[41] ;
assign check[42] = svm_out > compare[41] & svm_out <= compare[42] ;
assign check[43] = svm_out > compare[42] & svm_out <= compare[43] ;
assign check[44] = svm_out > compare[43] & svm_out <= compare[44] ;
assign check[45] = svm_out > compare[44] & svm_out <= compare[45] ;
assign check[46] = svm_out > compare[45] & svm_out <= compare[46] ;
assign check[47] = svm_out > compare[46] & svm_out <= compare[47] ;
assign check[48] = svm_out > compare[47] & svm_out <= compare[48] ;
assign check[49] = svm_out > compare[48] & svm_out <= compare[49] ;
assign check[50] = svm_out > compare[49] & svm_out <= compare[50] ;
assign check[51] = svm_out > compare[50] & svm_out <= compare[51] ;
assign check[52] = svm_out > compare[51] & svm_out <= compare[52] ;
assign check[53] = svm_out > compare[52] & svm_out <= compare[53] ;
assign check[54] = svm_out > compare[53] & svm_out <= compare[54] ;
assign check[55] = svm_out > compare[54] & svm_out <= compare[55] ;
assign check[56] = svm_out > compare[55] & svm_out <= compare[56] ;
assign check[57] = svm_out > compare[56] & svm_out <= compare[57] ;
assign check[58] = svm_out > compare[57] & svm_out <= compare[58] ;
assign check[59] = svm_out > compare[58] & svm_out <= compare[59] ;
assign check[60] = svm_out > compare[59] & svm_out <= compare[60] ;
assign check[61] = svm_out > compare[60] & svm_out <= compare[61] ;
assign check[62] = svm_out > compare[61] & svm_out <= compare[62] ;
assign check[63] = svm_out > compare[62];

endmodule
