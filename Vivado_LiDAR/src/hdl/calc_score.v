`timescale 1ns / 1ps

module calc_score(
    input clk,
    input signed [21:0] svm_out,
    input flag_valid_svm,
    
    output [15:0] svm_score_out,     //1c15f
    output valid_score
);

wire [63:0] check;
wire [6:0] check_score;

encoder #(
    .LEN_IN(64)
) encoder_svm_score (
    .in(check),
    .out(check_score)
);

wire [15:0] svm_score;  // 1c15f
svm_score svm_score_instance (
    .a(check_score),
    .spo(svm_score)
);

//latency 2; in,out 1c15f
sub_score sub_score_instance (
    .CLK(clk),
    .A(16'b1000000000000000),
    .B(svm_score),
    .S(svm_score_out)
);

wire signed [15:0] z_out_del;
delay # (
    .N(1),
    .DELAY(2) ) DEL_flag_valid_score_2 (
    .clk(clk),
    .ce(1'b1),
    .indata(flag_valid_svm),
    .odata(valid_score)
);


wire signed [21:0] compare [62:0];
assign compare[0] = 22'h3fbbfa;
assign compare[1] = 22'h3fd844;
assign compare[2] = 22'h3fdf00;
assign compare[3] = 22'h3fe316;
assign compare[4] = 22'h3fe60e;
assign compare[5] = 22'h3fe868;
assign compare[6] = 22'h3fea5e;
assign compare[7] = 22'h3fec0f;
assign compare[8] = 22'h3fed8d;
assign compare[9] = 22'h3feee5;
assign compare[10] = 22'h3ff01f;
assign compare[11] = 22'h3ff141;
assign compare[12] = 22'h3ff24e;
assign compare[13] = 22'h3ff34c;
assign compare[14] = 22'h3ff43b;
assign compare[15] = 22'h3ff51f;
assign compare[16] = 22'h3ff5f8;
assign compare[17] = 22'h3ff6c9;
assign compare[18] = 22'h3ff792;
assign compare[19] = 22'h3ff855;
assign compare[20] = 22'h3ff912;
assign compare[21] = 22'h3ff9cb;
assign compare[22] = 22'h3ffa7f;
assign compare[23] = 22'h3ffb30;
assign compare[24] = 22'h3ffbdd;
assign compare[25] = 22'h3ffc88;
assign compare[26] = 22'h3ffd31;
assign compare[27] = 22'h3ffdd7;
assign compare[28] = 22'h3ffe7d;
assign compare[29] = 22'h3fff21;
assign compare[30] = 22'h3fffc5;
assign compare[31] = 22'h000068;
assign compare[32] = 22'h00010c;
assign compare[33] = 22'h0001af;
assign compare[34] = 22'h000254;
assign compare[35] = 22'h0002f9;
assign compare[36] = 22'h0003a0;
assign compare[37] = 22'h000449;
assign compare[38] = 22'h0004f3;
assign compare[39] = 22'h0005a1;
assign compare[40] = 22'h000651;
assign compare[41] = 22'h000706;
assign compare[42] = 22'h0007be;
assign compare[43] = 22'h00087b;
assign compare[44] = 22'h00093e;
assign compare[45] = 22'h000a08;
assign compare[46] = 22'h000ad8;
assign compare[47] = 22'h000bb2;
assign compare[48] = 22'h000c96;
assign compare[49] = 22'h000d85;
assign compare[50] = 22'h000e82;
assign compare[51] = 22'h000f90;
assign compare[52] = 22'h0010b1;
assign compare[53] = 22'h0011eb;
assign compare[54] = 22'h001343;
assign compare[55] = 22'h0014c1;
assign compare[56] = 22'h001672;
assign compare[57] = 22'h001868;
assign compare[58] = 22'h001ac3;
assign compare[59] = 22'h001dbb;
assign compare[60] = 22'h0021d0;
assign compare[61] = 22'h00288d;
assign compare[62] = 22'h0044d7;
assign check[0] = svm_out <= compare[0];
assign check[1] = svm_out > compare[0] & svm_out <= compare[1];
assign check[2] = svm_out > compare[1] & svm_out <= compare[2];
assign check[3] = svm_out > compare[2] & svm_out <= compare[3];
assign check[4] = svm_out > compare[3] & svm_out <= compare[4];
assign check[5] = svm_out > compare[4] & svm_out <= compare[5];
assign check[6] = svm_out > compare[5] & svm_out <= compare[6];
assign check[7] = svm_out > compare[6] & svm_out <= compare[7];
assign check[8] = svm_out > compare[7] & svm_out <= compare[8];
assign check[9] = svm_out > compare[8] & svm_out <= compare[9];
assign check[10] = svm_out > compare[9] & svm_out <= compare[10];
assign check[11] = svm_out > compare[10] & svm_out <= compare[11];
assign check[12] = svm_out > compare[11] & svm_out <= compare[12];
assign check[13] = svm_out > compare[12] & svm_out <= compare[13];
assign check[14] = svm_out > compare[13] & svm_out <= compare[14];
assign check[15] = svm_out > compare[14] & svm_out <= compare[15];
assign check[16] = svm_out > compare[15] & svm_out <= compare[16];
assign check[17] = svm_out > compare[16] & svm_out <= compare[17];
assign check[18] = svm_out > compare[17] & svm_out <= compare[18];
assign check[19] = svm_out > compare[18] & svm_out <= compare[19];
assign check[20] = svm_out > compare[19] & svm_out <= compare[20];
assign check[21] = svm_out > compare[20] & svm_out <= compare[21];
assign check[22] = svm_out > compare[21] & svm_out <= compare[22];
assign check[23] = svm_out > compare[22] & svm_out <= compare[23];
assign check[24] = svm_out > compare[23] & svm_out <= compare[24];
assign check[25] = svm_out > compare[24] & svm_out <= compare[25];
assign check[26] = svm_out > compare[25] & svm_out <= compare[26];
assign check[27] = svm_out > compare[26] & svm_out <= compare[27];
assign check[28] = svm_out > compare[27] & svm_out <= compare[28];
assign check[29] = svm_out > compare[28] & svm_out <= compare[29];
assign check[30] = svm_out > compare[29] & svm_out <= compare[30];
assign check[31] = svm_out > compare[30] & svm_out <= compare[31];
assign check[32] = svm_out > compare[31] & svm_out <= compare[32];
assign check[33] = svm_out > compare[32] & svm_out <= compare[33];
assign check[34] = svm_out > compare[33] & svm_out <= compare[34];
assign check[35] = svm_out > compare[34] & svm_out <= compare[35];
assign check[36] = svm_out > compare[35] & svm_out <= compare[36];
assign check[37] = svm_out > compare[36] & svm_out <= compare[37];
assign check[38] = svm_out > compare[37] & svm_out <= compare[38];
assign check[39] = svm_out > compare[38] & svm_out <= compare[39];
assign check[40] = svm_out > compare[39] & svm_out <= compare[40];
assign check[41] = svm_out > compare[40] & svm_out <= compare[41];
assign check[42] = svm_out > compare[41] & svm_out <= compare[42];
assign check[43] = svm_out > compare[42] & svm_out <= compare[43];
assign check[44] = svm_out > compare[43] & svm_out <= compare[44];
assign check[45] = svm_out > compare[44] & svm_out <= compare[45];
assign check[46] = svm_out > compare[45] & svm_out <= compare[46];
assign check[47] = svm_out > compare[46] & svm_out <= compare[47];
assign check[48] = svm_out > compare[47] & svm_out <= compare[48];
assign check[49] = svm_out > compare[48] & svm_out <= compare[49];
assign check[50] = svm_out > compare[49] & svm_out <= compare[50];
assign check[51] = svm_out > compare[50] & svm_out <= compare[51];
assign check[52] = svm_out > compare[51] & svm_out <= compare[52];
assign check[53] = svm_out > compare[52] & svm_out <= compare[53];
assign check[54] = svm_out > compare[53] & svm_out <= compare[54];
assign check[55] = svm_out > compare[54] & svm_out <= compare[55];
assign check[56] = svm_out > compare[55] & svm_out <= compare[56];
assign check[57] = svm_out > compare[56] & svm_out <= compare[57];
assign check[58] = svm_out > compare[57] & svm_out <= compare[58];
assign check[59] = svm_out > compare[58] & svm_out <= compare[59];
assign check[60] = svm_out > compare[59] & svm_out <= compare[60];
assign check[61] = svm_out > compare[60] & svm_out <= compare[61];
assign check[62] = svm_out > compare[61] & svm_out <= compare[62];
assign check[63] = svm_out > compare[62];

endmodule
