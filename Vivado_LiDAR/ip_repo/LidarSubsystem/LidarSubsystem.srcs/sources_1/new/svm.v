`timescale 1ns / 1ps

module svm(
    input clk,
    input features_valid,
    input [15:0] feature, //1c15f
    
    output flag_valid_out,
    output signed [21:0] acc_svm_out  //s8c13f
);

wire signed [15:0] beta [29:0];    //s2c13f

reg state = 0;
reg [5:0] cnt_beta = 0;
reg flag_end_valid_features = 0;
always @ (posedge clk)
begin
    case(state)
        0:begin
            flag_end_valid_features <= 0;
            if (features_valid)
            begin
                state <= 1;
                cnt_beta <= cnt_beta + 1;
            end
        end
        1:begin
            cnt_beta <= cnt_beta + 1;
            if (~features_valid)
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
    .A(beta[cnt_beta]),
    .B(feature),
    .P(svm_mult)
);

wire flag_valid_features_del3;
wire flag_end_valid_features_del5;
delay # (
    .N(1),
    .DELAY(3) ) DEL_flag_valid_features_del3 ( 
    .clk(clk),
    .ce(1'b1),
    .indata(features_valid),
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
    .y(acc_svm)         //s8c13f
);

wire [14:0] bias = 15'b000110101101111;    //2c13f

// latency 2; A 2c13f, B s8c13f, out s8c13f
add_svm_bias add_svm_bias_instance (
    .CLK(clk),
    .A(bias),
    .B(acc_svm),
    .S(acc_svm_out)
);

assign beta[0] = 16'b0101101000011001;
assign beta[1] = 16'b1011111010000011;
assign beta[2] = 16'b1100100100011000;
assign beta[3] = 16'b1100111110011011;
assign beta[4] = 16'b0001111010011000;
assign beta[5] = 16'b1011101011110110;
assign beta[6] = 16'b1111111001101100;
assign beta[7] = 16'b1111011011101101;
assign beta[8] = 16'b0000001011111000;
assign beta[9] = 16'b1111010000011001;
assign beta[10] = 16'b0001000111101110;
assign beta[11] = 16'b0000010011011111;
assign beta[12] = 16'b0001000001111111;
assign beta[13] = 16'b0001001101111101;
assign beta[14] = 16'b0001101111100001;
assign beta[15] = 16'b0000101011100001;
assign beta[16] = 16'b0000011000010011;
assign beta[17] = 16'b0000000101010110;
assign beta[18] = 16'b1111111010101010;
assign beta[19] = 16'b0000010000110001;
assign beta[20] = 16'b0000000100000000;
assign beta[21] = 16'b0000000011000010;
assign beta[22] = 16'b1111110110101011;
assign beta[23] = 16'b1111101101100100;
assign beta[24] = 16'b1111110111011001;
assign beta[25] = 16'b1111110001011111;
assign beta[26] = 16'b1111111001010111;
assign beta[27] = 16'b1111111101011000;
assign beta[28] = 16'b1111111010111110;
assign beta[29] = 16'b1111101101011001;

endmodule