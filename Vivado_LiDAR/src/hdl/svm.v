`timescale 1ns / 1ps

module svm(
    input clk,
    input [15:0] features,
    input flag_valid_features,
    
    output signed [21:0] acc_svm_out,  //s8c13f
    output flag_valid_out
);

wire signed [15:0] beta [59:0];    //s2c13f

reg state = 0;
reg [5:0] cnt_beta = 0;
reg flag_end_valid_features = 0;
always @ (posedge clk)
begin
    case(state)
        0:begin
            flag_end_valid_features <= 0;
            if (flag_valid_features)
            begin
                state <= 1;
                cnt_beta <= cnt_beta + 1;
            end
        end
        1:begin
            cnt_beta <= cnt_beta + 1;
            if (~flag_valid_features)
            begin
                flag_end_valid_features <= 1;
                cnt_beta <= 0;
                state <= 0;
            end
        end
    endcase
end

wire signed [31:0] svm_mult;     //s3c28f
//latency 3; A s2c13f, B 1c15f, out s3c28f
mult_svm mult_svm_instance (
    .CLK(clk),
    .CE(flag_valid_features),
    .A(beta[cnt_beta]),
    .B(features),
    .P(svm_mult)
);

wire flag_valid_features_del3;
wire flag_end_valid_features_del5;
delay # (
    .N(1),
    .DELAY(3) ) DEL_flag_valid_features_del3 ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_valid_features),
    .odata(flag_valid_features_del3)
);
delay # (
    .N(1),
    .DELAY(5) ) DEL_flag_end_valid_features_del5 ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_valid_features),
    .odata(flag_end_valid_features_del5)
);

wire signed [16:0] svm_mult_vec; //s3c13f
assign svm_mult_vec = svm_mult[31:15];

wire signed [21:0] acc_svm;
assign flag_valid_out = flag_end_valid_features_del5;

acc_svm acc_svm_instance (
    .clk(clk),
    .ce(flag_valid_features_del3),
    .rst(flag_end_valid_features_del5),
    .A(svm_mult_vec),   //s3c13f
    .y(acc_svm) //s8c13f
);

wire [14:0] bias = 15'b101010100000010;    //2c13f

// latency 2; A 2c13f, B s8c13f, out s8c13f
add_svm_bias add_svm_bias_instance (
    .CLK(clk),
    .A(bias),
    .B(acc_svm),
    .S(acc_svm_out)
);

assign beta[0] = 16'b0000111100001101;
assign beta[1] = 16'b0000111010010100;
assign beta[2] = 16'b1111000000001010;
assign beta[3] = 16'b1111100110010100;
assign beta[4] = 16'b0000100100001010;
assign beta[5] = 16'b1110100001110110;
assign beta[6] = 16'b1111100000110001;
assign beta[7] = 16'b1111000110111011;
assign beta[8] = 16'b1101111010001100;
assign beta[9] = 16'b1110110101111110;
assign beta[10] = 16'b0000100010010011;
assign beta[11] = 16'b0000111010011100;
assign beta[12] = 16'b0000100111000111;
assign beta[13] = 16'b0000111100111001;
assign beta[14] = 16'b1011100010101001;
assign beta[15] = 16'b1110111101010111;
assign beta[16] = 16'b0000001010000100;
assign beta[17] = 16'b0000011101011010;
assign beta[18] = 16'b1110100110011011;
assign beta[19] = 16'b1011111101111001;
assign beta[20] = 16'b1101100011001000;
assign beta[21] = 16'b0000011000100110;
assign beta[22] = 16'b0011010101101110;
assign beta[23] = 16'b0100100011000110;
assign beta[24] = 16'b1110000010110111;
assign beta[25] = 16'b1011111101001110;
assign beta[26] = 16'b1110101101100101;
assign beta[27] = 16'b1110011110100101;
assign beta[28] = 16'b1111000011011100;
assign beta[29] = 16'b1101100011001100;
assign beta[30] = 16'b1110110111010110;
assign beta[31] = 16'b0010000100001100;
assign beta[32] = 16'b0101011110101110;
assign beta[33] = 16'b0011010010011001;
assign beta[34] = 16'b0000010010001010;
assign beta[35] = 16'b1110001101001001;
assign beta[36] = 16'b0000000110100101;
assign beta[37] = 16'b1111110111001111;
assign beta[38] = 16'b0000010000010110;
assign beta[39] = 16'b1111110101001111;
assign beta[40] = 16'b0000100111101010;
assign beta[41] = 16'b0000001111101100;
assign beta[42] = 16'b0001010001001101;
assign beta[43] = 16'b0000101100100101;
assign beta[44] = 16'b0000000110100000;
assign beta[45] = 16'b1111110100100000;
assign beta[46] = 16'b1111101110101011;
assign beta[47] = 16'b1111110001010111;
assign beta[48] = 16'b1111110000011110;
assign beta[49] = 16'b1111111110110010;
assign beta[50] = 16'b1111111110001110;
assign beta[51] = 16'b0000000111010001;
assign beta[52] = 16'b1111111100110010;
assign beta[53] = 16'b1111111101100111;
assign beta[54] = 16'b1111111110110011;
assign beta[55] = 16'b1111111111010011;
assign beta[56] = 16'b0000000000111111;
assign beta[57] = 16'b0000000001010101;
assign beta[58] = 16'b1111111101000101;
assign beta[59] = 16'b1111110010101100;

endmodule