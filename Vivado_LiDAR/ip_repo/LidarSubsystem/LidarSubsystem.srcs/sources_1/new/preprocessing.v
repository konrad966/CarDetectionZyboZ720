`timescale 1ns / 1ps

module preprocessing #( 
    //parameter gr_thresh = 25'b0000000001001101,        //0.15m s6c9f
    parameter gr_thresh = 25'b0000000001100110,        //0.2m s6c9f
    parameter no_thresh = 11'd10,
    parameter max_thresh = 16'b10000000000,            //2m
    parameter di_thresh = 16'b10000000000 )            //2m
(
    input clk,
    input flag,
    input signed [15:0] x,
    input signed [15:0] y,
    input signed [15:0] z,            
    input [7:0] intens,
    
    output remove,
    output flag_valid_out,
    output signed [15:0] x_min,
    output signed [15:0] x_max,
    output signed [15:0] y_min,
    output signed [15:0] y_max,
    output signed [15:0] z_min,
    output signed [15:0] z_max,
    output [10:0] num_points,
    output [19:0] intens_sum,
    output [274:0] hist_out
);   

wire signed [24:0] z_acc_out;
wire flag_reset;

acc_points_num cell_point_num (
    .clk(clk),
    .ce(flag),
    .rst(flag_reset),   
    .A(1'b1),
    .y(num_points)
);

accumulator acc_z(
    .clk(clk),
    .ce(flag),
    .rst(flag_reset),      
    .A(z),          //s6c9f
    .y(z_acc_out)   //s15c9f
);

wire compare_xmin;
wire compare_xmax;
wire compare_ymin;
wire compare_ymax;
wire compare_zmin;
wire compare_zmax;

assign compare_xmin = x_min > x;
assign compare_ymin = y_min > y;
assign compare_zmin = z_min > z;
assign compare_xmax = x_max < x;
assign compare_ymax = y_max < y;
assign compare_zmax = z_max < z;

register reg_x_min (
    .clk(clk),
    .ce(flag & compare_xmin),
    .rst(flag_reset),   
    .d(x),
    .q(x_min)
);
register reg_y_min (
    .clk(clk),
    .ce(flag & compare_ymin),
    .rst(flag_reset),   
    .d(y),
    .q(y_min)
);
register reg_z_min (
    .clk(clk),
    .ce(flag & compare_zmin),
    .rst(flag_reset),   
    .d(z),
    .q(z_min)
);

register_max reg_x_max (
    .clk(clk),
    .ce(flag & compare_xmax),
    .rst(flag_reset),   
    .d(x),
    .q(x_max)
);
register_max reg_y_max (
    .clk(clk),
    .ce(flag & compare_ymax),
    .rst(flag_reset),  
    .d(y),
    .q(y_max)
);
register_max reg_z_max (
    .clk(clk),
    .ce(flag & compare_zmax),
    .rst(flag_reset),   
    .d(z),
    .q(z_max)
);

reg state = 0;
reg flag_div = 0;
always @ (posedge clk)
begin
    case(state)
      0:begin
        flag_div <= 0;
        if(flag)
        begin
            state <= 1;
        end end
      1:begin
        if (~flag)
        begin
            state <= 0;
            flag_div <= 1;
        end end
    endcase
end

wire signed [31:0] calc_mean;
wire flag_mean_valid;
wire del_flag_mean_valid;
//31 latency
div_mean_z div_mean (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div),
    .s_axis_divisor_tdata({5'b0,num_points}),
    .s_axis_dividend_tvalid(flag_div),
    .s_axis_dividend_tdata({7'b0,z_acc_out}),
    .m_axis_dout_tvalid(flag_mean_valid),
    .m_axis_dout_tdata(calc_mean)    //31:0, 2b for fraction
);

wire signed [15:0] del_z_min;
wire signed [24:0] sub_z;     //9f
wire signed [24:0] z_mean;

assign z_mean = calc_mean[26:2]; //reject 2b of fraction

// 3 latency
sub_mean_min mean_minus_min (
    .CLK(clk),
    .A(z_mean),
    .B(del_z_min),
    .S(sub_z)
);

wire signed [15:0] zmax_minus_zmin;
// 2 latency
sub_zmax_zmin sub_zmax_zmin (
    .CLK(clk),
    .A(z_max),
    .B(z_min),
    .S(zmax_minus_zmin)
);

wire rm_ground;
wire rm_noise;
wire rm_foreground;

wire signed [31:0] ground_thresh;
wire [10:0] noise_thresh;
wire signed [15:0] diff_thresh;
wire signed [15:0] zmax_thresh;
assign ground_thresh = gr_thresh;
assign noise_thresh = no_thresh;
assign diff_thresh = di_thresh;
assign zmax_thresh = max_thresh;

assign rm_ground = (sub_z < ground_thresh & del_flag_mean_valid) ? 1'b1 : 1'b0;
assign rm_noise = (num_points < noise_thresh & del_flag_mean_valid) ? 1'b1 : 1'b0;
assign rm_foreground = ((zmax_minus_zmin > diff_thresh || z_max > zmax_thresh) & del_flag_mean_valid) ? 1'b1 : 1'b0 ;
assign remove = rm_ground || rm_noise || rm_foreground;

delay # (
    .N(16),
    .DELAY(31) ) DEL_z_min 
(
    .clk(clk),
    .ce(1'b1),
    .indata(z_min),
    .odata(del_z_min)
);

delay # (
    .N(1),
    .DELAY(3) ) DEL_flag_mean_valid
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_mean_valid),
    .odata(del_flag_mean_valid)
);

delay # (
    .N(1),
    .DELAY(4) ) DEL_flag_mean_valid_4
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_mean_valid),
    .odata(flag_reset)
);

// INTENSITY FEATURES

acc_sum_itensity acc_sum_intens_instance(
    .clk(clk),
    .ce(flag),  
    .rst(flag_reset),
    .A(intens),
    .y(intens_sum)
);

wire [24:0] cell_intens;

assign cell_intens[0] = (intens >= 16'd0 & intens <= 16'b00000000000000001010) ? 1'b1 : 1'b0;
assign cell_intens[1] = (intens > 16'b00000000000000001010 & intens <= 16'b00000000000000010100) ? 1'b1 : 1'b0;
assign cell_intens[2] = (intens > 16'b00000000000000010100 & intens <= 16'b00000000000000011111) ? 1'b1 : 1'b0;
assign cell_intens[3] = (intens > 16'b00000000000000011111 & intens <= 16'b00000000000000101001) ? 1'b1 : 1'b0;
assign cell_intens[4] = (intens > 16'b00000000000000101001 & intens <= 16'b00000000000000110011) ? 1'b1 : 1'b0;
assign cell_intens[5] = (intens > 16'b00000000000000110011 & intens <= 16'b00000000000000111101) ? 1'b1 : 1'b0;
assign cell_intens[6] = (intens > 16'b00000000000000111101 & intens <= 16'b00000000000001000111) ? 1'b1 : 1'b0;
assign cell_intens[7] = (intens > 16'b00000000000001000111 & intens <= 16'b00000000000001010010) ? 1'b1 : 1'b0;
assign cell_intens[8] = (intens > 16'b00000000000001010010 & intens <= 16'b00000000000001011100) ? 1'b1 : 1'b0;
assign cell_intens[9] = (intens > 16'b00000000000001011100 & intens <= 16'b00000000000001100110) ? 1'b1 : 1'b0;
assign cell_intens[10] = (intens > 16'b00000000000001100110 & intens <= 16'b00000000000001110000) ? 1'b1 : 1'b0;
assign cell_intens[11] = (intens > 16'b00000000000001110000 & intens <= 16'b00000000000001111010) ? 1'b1 : 1'b0;
assign cell_intens[12] = (intens > 16'b00000000000001111010 & intens <= 16'b00000000000010000101) ? 1'b1 : 1'b0;
assign cell_intens[13] = (intens > 16'b00000000000010000101 & intens <= 16'b00000000000010001111) ? 1'b1 : 1'b0;
assign cell_intens[14] = (intens > 16'b00000000000010001111 & intens <= 16'b00000000000010011001) ? 1'b1 : 1'b0;
assign cell_intens[15] = (intens > 16'b00000000000010011001 & intens <= 16'b00000000000010100011) ? 1'b1 : 1'b0;
assign cell_intens[16] = (intens > 16'b00000000000010100011 & intens <= 16'b00000000000010101101) ? 1'b1 : 1'b0;
assign cell_intens[17] = (intens > 16'b00000000000010101101 & intens <= 16'b00000000000010111000) ? 1'b1 : 1'b0;
assign cell_intens[18] = (intens > 16'b00000000000010111000 & intens <= 16'b00000000000011000010) ? 1'b1 : 1'b0;
assign cell_intens[19] = (intens > 16'b00000000000011000010 & intens <= 16'b00000000000011001100) ? 1'b1 : 1'b0;
assign cell_intens[20] = (intens > 16'b00000000000011001100 & intens <= 16'b00000000000011010110) ? 1'b1 : 1'b0;
assign cell_intens[21] = (intens > 16'b00000000000011010110 & intens <= 16'b00000000000011100000) ? 1'b1 : 1'b0;
assign cell_intens[22] = (intens > 16'b00000000000011100000 & intens <= 16'b00000000000011101011) ? 1'b1 : 1'b0;
assign cell_intens[23] = (intens > 16'b00000000000011101011 & intens <= 16'b00000000000011110101) ? 1'b1 : 1'b0;
assign cell_intens[24] = (intens > 16'b00000000000011110101 & intens <= 16'd255) ? 1'b1 : 1'b0;

wire [10:0] hist [24:0];
genvar i;
generate
    for (i=0; i<25; i=i+1)
    begin
        acc_points_num acc_cell_intens_num(
        .clk(clk),
        .ce(cell_intens[i] & flag),    
        .rst(flag_reset),                      
        .A(1'b1),
        .y(hist[i])
    );
    
        assign hist_out[11*i+10 : 11*i] = hist[i];
    end
endgenerate

assign flag_valid_out = del_flag_mean_valid;

endmodule