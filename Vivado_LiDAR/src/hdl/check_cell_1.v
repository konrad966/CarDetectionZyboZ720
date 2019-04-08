`timescale 1ns / 1ps

module check_cell_1  #(
    parameter metr_num = 16'd1500)       //3m = 3*500 = 1500
(
    input clk,
    input [15:0] angle,       
    input [15:0] distance,    
    input flag_buff_valid,
    input valid_point,
    
    output [99:0] cells
);

wire [15:0] angle_first;
reg [15:0] angle_0 = 0;    //first angle for 30degree buffor
assign angle_first = angle_0;

reg state = 0;
reg [2:0]cnt_flag = 6;
always @ (posedge clk)
begin
    case(state)
    0:begin
        if (flag_buff_valid)
        begin
            cnt_flag <= cnt_flag + 1;
            if (cnt_flag >= 3'd6)
            begin
                cnt_flag <= 1;
                angle_0 <= angle;
            end
            state <= 1;
        end end
    1:begin
        if (~flag_buff_valid)
        begin
            state <= 0;
        end end
    endcase
end

wire [15:0] del_angle;
delay # (
    .N(16),
    .DELAY(1) ) DELAY_check_angle
(
    .clk(clk),
    .ce(1'b1),
    .indata(angle),
    .odata(del_angle)
);

wire [15:0] del_distance;
wire  del_valid_point;
delay # (
    .N(17),
    .DELAY(3) ) DELAY_check_distance
(
    .clk(clk),
    .ce(1'b1),
    .indata({distance,valid_point}),
    .odata({del_distance,del_valid_point})
);

wire [15:0] delta_angle;
sub_angle sub_angle (
    .A(del_angle),
    .B(angle_first),
    .CLK(clk),
    .CE(1'b1),
    .S(delta_angle)
);

//[TODO] weŸ pod uwagê przechodzenie z 360 do zera stopni

// komórki od 1m do 58m
assign cells[0] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd3110 & del_distance > 0*metr_num+500 & del_distance <= 1*metr_num+500);
assign cells[1] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd3110 & del_distance > 1*metr_num+500 & del_distance <= 2*metr_num+500);
assign cells[2] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd1555 & del_distance > 2*metr_num+500 & del_distance <= 3*metr_num+500);
assign cells[3] = del_valid_point & (delta_angle > 16'd1555 & delta_angle <= 16'd3110 & del_distance > 2*metr_num+500 & del_distance <= 3*metr_num+500);
assign cells[4] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd1555 & del_distance > 3*metr_num+500 & del_distance <= 4*metr_num+500);
assign cells[5] = del_valid_point & (delta_angle > 16'd1555 & delta_angle <= 16'd3110 & del_distance > 3*metr_num+500 & del_distance <= 4*metr_num+500);
assign cells[6] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd1037 & del_distance > 4*metr_num+500 & del_distance <= 5*metr_num+500);
assign cells[7] = del_valid_point & (delta_angle > 16'd1037 & delta_angle <= 16'd2074 & del_distance > 4*metr_num+500 & del_distance <= 5*metr_num+500);
assign cells[8] = del_valid_point & (delta_angle > 16'd2074 & delta_angle <= 16'd3111 & del_distance > 4*metr_num+500 & del_distance <= 5*metr_num+500);
assign cells[9] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd1037 & del_distance > 5*metr_num+500 & del_distance <= 6*metr_num+500);
assign cells[10] = del_valid_point & (delta_angle > 16'd1037 & delta_angle <= 16'd2074 & del_distance > 5*metr_num+500 & del_distance <= 6*metr_num+500);
assign cells[11] = del_valid_point & (delta_angle > 16'd2074 & delta_angle <= 16'd3111 & del_distance > 5*metr_num+500 & del_distance <= 6*metr_num+500);
assign cells[12] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd778 & del_distance > 6*metr_num+500 & del_distance <= 7*metr_num+500);
assign cells[13] = del_valid_point & (delta_angle > 16'd778 & delta_angle <= 16'd1556 & del_distance > 6*metr_num+500 & del_distance <= 7*metr_num+500);
assign cells[14] = del_valid_point & (delta_angle > 16'd1556 & delta_angle <= 16'd2334 & del_distance > 6*metr_num+500 & del_distance <= 7*metr_num+500);
assign cells[15] = del_valid_point & (delta_angle > 16'd2334 & delta_angle <= 16'd3112 & del_distance > 6*metr_num+500 & del_distance <= 7*metr_num+500);
assign cells[16] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd778 & del_distance > 7*metr_num+500 & del_distance <= 8*metr_num+500);
assign cells[17] = del_valid_point & (delta_angle > 16'd778 & delta_angle <= 16'd1556 & del_distance > 7*metr_num+500 & del_distance <= 8*metr_num+500);
assign cells[18] = del_valid_point & (delta_angle > 16'd1556 & delta_angle <= 16'd2334 & del_distance > 7*metr_num+500 & del_distance <= 8*metr_num+500);
assign cells[19] = del_valid_point & (delta_angle > 16'd2334 & delta_angle <= 16'd3112 & del_distance > 7*metr_num+500 & del_distance <= 8*metr_num+500);
assign cells[20] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd622 & del_distance > 8*metr_num+500 & del_distance <= 9*metr_num+500);
assign cells[21] = del_valid_point & (delta_angle > 16'd622 & delta_angle <= 16'd1244 & del_distance > 8*metr_num+500 & del_distance <= 9*metr_num+500);
assign cells[22] = del_valid_point & (delta_angle > 16'd1244 & delta_angle <= 16'd1866 & del_distance > 8*metr_num+500 & del_distance <= 9*metr_num+500);
assign cells[23] = del_valid_point & (delta_angle > 16'd1866 & delta_angle <= 16'd2488 & del_distance > 8*metr_num+500 & del_distance <= 9*metr_num+500);
assign cells[24] = del_valid_point & (delta_angle > 16'd2488 & delta_angle <= 16'd3110 & del_distance > 8*metr_num+500 & del_distance <= 9*metr_num+500);
assign cells[25] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd622 & del_distance > 9*metr_num+500 & del_distance <= 10*metr_num+500);
assign cells[26] = del_valid_point & (delta_angle > 16'd622 & delta_angle <= 16'd1244 & del_distance > 9*metr_num+500 & del_distance <= 10*metr_num+500);
assign cells[27] = del_valid_point & (delta_angle > 16'd1244 & delta_angle <= 16'd1866 & del_distance > 9*metr_num+500 & del_distance <= 10*metr_num+500);
assign cells[28] = del_valid_point & (delta_angle > 16'd1866 & delta_angle <= 16'd2488 & del_distance > 9*metr_num+500 & del_distance <= 10*metr_num+500);
assign cells[29] = del_valid_point & (delta_angle > 16'd2488 & delta_angle <= 16'd3110 & del_distance > 9*metr_num+500 & del_distance <= 10*metr_num+500);
assign cells[30] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd519 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[31] = del_valid_point & (delta_angle > 16'd519 & delta_angle <= 16'd1038 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[32] = del_valid_point & (delta_angle > 16'd1038 & delta_angle <= 16'd1557 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[33] = del_valid_point & (delta_angle > 16'd1557 & delta_angle <= 16'd2076 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[34] = del_valid_point & (delta_angle > 16'd2076 & delta_angle <= 16'd2595 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[35] = del_valid_point & (delta_angle > 16'd2595 & delta_angle <= 16'd3114 & del_distance > 10*metr_num+500 & del_distance <= 11*metr_num+500);
assign cells[36] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd519 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[37] = del_valid_point & (delta_angle > 16'd519 & delta_angle <= 16'd1038 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[38] = del_valid_point & (delta_angle > 16'd1038 & delta_angle <= 16'd1557 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[39] = del_valid_point & (delta_angle > 16'd1557 & delta_angle <= 16'd2076 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[40] = del_valid_point & (delta_angle > 16'd2076 & delta_angle <= 16'd2595 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[41] = del_valid_point & (delta_angle > 16'd2595 & delta_angle <= 16'd3114 & del_distance > 11*metr_num+500 & del_distance <= 12*metr_num+500);
assign cells[42] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd445 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[43] = del_valid_point & (delta_angle > 16'd445 & delta_angle <= 16'd890 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[44] = del_valid_point & (delta_angle > 16'd890 & delta_angle <= 16'd1335 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[45] = del_valid_point & (delta_angle > 16'd1335 & delta_angle <= 16'd1780 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[46] = del_valid_point & (delta_angle > 16'd1780 & delta_angle <= 16'd2225 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[47] = del_valid_point & (delta_angle > 16'd2225 & delta_angle <= 16'd2670 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[48] = del_valid_point & (delta_angle > 16'd2670 & delta_angle <= 16'd3115 & del_distance > 12*metr_num+500 & del_distance <= 13*metr_num+500);
assign cells[49] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd445 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[50] = del_valid_point & (delta_angle > 16'd445 & delta_angle <= 16'd890 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[51] = del_valid_point & (delta_angle > 16'd890 & delta_angle <= 16'd1335 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[52] = del_valid_point & (delta_angle > 16'd1335 & delta_angle <= 16'd1780 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[53] = del_valid_point & (delta_angle > 16'd1780 & delta_angle <= 16'd2225 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[54] = del_valid_point & (delta_angle > 16'd2225 & delta_angle <= 16'd2670 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[55] = del_valid_point & (delta_angle > 16'd2670 & delta_angle <= 16'd3115 & del_distance > 13*metr_num+500 & del_distance <= 14*metr_num+500);
assign cells[56] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd389 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[57] = del_valid_point & (delta_angle > 16'd389 & delta_angle <= 16'd778 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[58] = del_valid_point & (delta_angle > 16'd778 & delta_angle <= 16'd1167 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[59] = del_valid_point & (delta_angle > 16'd1167 & delta_angle <= 16'd1556 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[60] = del_valid_point & (delta_angle > 16'd1556 & delta_angle <= 16'd1945 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[61] = del_valid_point & (delta_angle > 16'd1945 & delta_angle <= 16'd2334 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[62] = del_valid_point & (delta_angle > 16'd2334 & delta_angle <= 16'd2723 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[63] = del_valid_point & (delta_angle > 16'd2723 & delta_angle <= 16'd3112 & del_distance > 14*metr_num+500 & del_distance <= 15*metr_num+500);
assign cells[64] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd389 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[65] = del_valid_point & (delta_angle > 16'd389 & delta_angle <= 16'd778 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[66] = del_valid_point & (delta_angle > 16'd778 & delta_angle <= 16'd1167 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[67] = del_valid_point & (delta_angle > 16'd1167 & delta_angle <= 16'd1556 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[68] = del_valid_point & (delta_angle > 16'd1556 & delta_angle <= 16'd1945 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[69] = del_valid_point & (delta_angle > 16'd1945 & delta_angle <= 16'd2334 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[70] = del_valid_point & (delta_angle > 16'd2334 & delta_angle <= 16'd2723 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[71] = del_valid_point & (delta_angle > 16'd2723 & delta_angle <= 16'd3112 & del_distance > 15*metr_num+500 & del_distance <= 16*metr_num+500);
assign cells[72] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd346 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[73] = del_valid_point & (delta_angle > 16'd346 & delta_angle <= 16'd692 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[74] = del_valid_point & (delta_angle > 16'd692 & delta_angle <= 16'd1038 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[75] = del_valid_point & (delta_angle > 16'd1038 & delta_angle <= 16'd1384 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[76] = del_valid_point & (delta_angle > 16'd1384 & delta_angle <= 16'd1730 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[77] = del_valid_point & (delta_angle > 16'd1730 & delta_angle <= 16'd2076 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[78] = del_valid_point & (delta_angle > 16'd2076 & delta_angle <= 16'd2422 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[79] = del_valid_point & (delta_angle > 16'd2422 & delta_angle <= 16'd2768 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[80] = del_valid_point & (delta_angle > 16'd2768 & delta_angle <= 16'd3114 & del_distance > 16*metr_num+500 & del_distance <= 17*metr_num+500);
assign cells[81] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd346 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[82] = del_valid_point & (delta_angle > 16'd346 & delta_angle <= 16'd692 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[83] = del_valid_point & (delta_angle > 16'd692 & delta_angle <= 16'd1038 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[84] = del_valid_point & (delta_angle > 16'd1038 & delta_angle <= 16'd1384 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[85] = del_valid_point & (delta_angle > 16'd1384 & delta_angle <= 16'd1730 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[86] = del_valid_point & (delta_angle > 16'd1730 & delta_angle <= 16'd2076 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[87] = del_valid_point & (delta_angle > 16'd2076 & delta_angle <= 16'd2422 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[88] = del_valid_point & (delta_angle > 16'd2422 & delta_angle <= 16'd2768 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[89] = del_valid_point & (delta_angle > 16'd2768 & delta_angle <= 16'd3114 & del_distance > 17*metr_num+500 & del_distance <= 18*metr_num+500);
assign cells[90] = del_valid_point & (delta_angle >= 16'd0 & delta_angle <= 16'd311 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[91] = del_valid_point & (delta_angle > 16'd311 & delta_angle <= 16'd622 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[92] = del_valid_point & (delta_angle > 16'd622 & delta_angle <= 16'd933 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[93] = del_valid_point & (delta_angle > 16'd933 & delta_angle <= 16'd1244 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[94] = del_valid_point & (delta_angle > 16'd1244 & delta_angle <= 16'd1555 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[95] = del_valid_point & (delta_angle > 16'd1555 & delta_angle <= 16'd1866 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[96] = del_valid_point & (delta_angle > 16'd1866 & delta_angle <= 16'd2177 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[97] = del_valid_point & (delta_angle > 16'd2177 & delta_angle <= 16'd2488 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[98] = del_valid_point & (delta_angle > 16'd2488 & delta_angle <= 16'd2799 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);
assign cells[99] = del_valid_point & (delta_angle > 16'd2799 & delta_angle <= 16'd3110 & del_distance > 18*metr_num+500 & del_distance <= 19*metr_num+500);

endmodule
