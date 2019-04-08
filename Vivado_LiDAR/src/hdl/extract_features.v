`timescale 1ns / 1ps

module extract_features(
    input clk,
    input [15:0] angle,       
    input [15:0] distance,    
    input [7:0] intensity,   
    input [7:0] laser_num,
    input flag_valid,
    
    output flag_valid_out, 
    output signed [15:0] x_min_out,
    output signed [15:0] y_min_out,
    output signed [15:0] z_min_out,     //s6c9f 
    
    output signed [15:0] x_max_out,
    output signed [15:0] y_max_out,
    output signed [15:0] z_max_out,
    output [10:0] num_points_out,
    
    output [15:0] h_out,            //1c15f
    output [15:0] w_out,
    output [15:0] l_out,
    output [15:0] num_points_norm_out, //1c15f
    output [15:0] intens_mean,         //1c15f
    
    output flag_intenshist_valid,
    output [15:0] intens_hist_out
    
    //output flag_xyzmean_valid,
    //output signed [15:0] xyz_mean_out
);


// 1. CALCULATE REAL DISTANCE in meters (d*0.002)

reg [15:0] c = 16'b0000000010000011;  //0.002 16fraction
wire [15:0] const;
wire [31:0] calc_distance;
wire [15:0] distance_new;      // 6c is enough because of max distance equal 60m

assign const = c;
assign distance_new = calc_distance[21:6];      //6c 10f

//latency 3; a:16c b:16f out:16c16f
mult_distance mult_distance_instance(
    .CLK(clk),
    .A(distance),
    .B(const),
    .P(calc_distance)
);

//sumaric latency 3

// 2. CALCULATE X Y Z COORDINATES

wire signed [35:0] calc_x;
wire signed [35:0] calc_y;
wire signed [27:0] calc_z;
wire signed [15:0] x_out;
wire signed [15:0] y_out;
wire signed [15:0] z_out;

wire signed [27:0] d_mult_cos;

// Save fixed values of sin/cos vertical angles - signed to each laser: s1c,10f;        [0] - min angle
wire signed [11:0] sin_th;
sin_thetas sin_theta_instance(
    .a(laser_num[5:0]),
    .spo(sin_th)
);
wire signed [11:0] cos_th;  
cos_thetas cos_theta_instance(
    .a(laser_num[5:0]),
    .spo(cos_th)
);

wire signed [11:0] del_sin_th;  
wire signed [11:0] del_cos_th;  
delay # (
    .N(24),
    .DELAY(3) ) DEL_sin_cos_theta (
    .clk(clk),
    .ce(1'b1),
    .indata({sin_th,cos_th}),
    .odata({del_sin_th, del_cos_th})
);

wire [11:0] address;
fi_address fi_address_instance(
    .angle(angle),
    .valid_point(flag_valid),
    .address(address)
);

// Save fixed values of sin/cos horizontal angles; 2082: s1c,10f;        
wire signed [11:0] sin_fi;  
sin_fis sin_fis_instance(
    .a(address),   //[TODO]
    .spo(sin_fi)
);    
wire signed [11:0] cos_fi;  
cos_fis cos_fis_instance(
    .a(address),   //[TODO] aderes 12bit
    .spo(cos_fi)
);

wire signed [11:0] del_sin_fi;  
wire signed [11:0] del_cos_fi;  
delay # (
    .N(24),
    .DELAY(6) ) DEL_sin_cos_fi (
    .clk(clk),
    .ce(1'b1),
    .indata({sin_fi,cos_fi}),
    .odata({del_sin_fi, del_cos_fi})
);

//Z_calc: a-6c10f; b-sc1f10; out-s7c20f; latency 3
Z_calc z_cal_features_instance (
    .CLK(clk),
    .A(distance_new),
    .B(del_sin_th),
    .P(calc_z)
);
//Z_calc: a-6c10f; b-sc1f10; out-s7c20f; latency 3
Z_calc d_mult_cos_features_instance (
    .CLK(clk),
    .A(distance_new),
    .B(del_cos_th),
    .P(d_mult_cos)
);
wire signed [23:0] cos_dis;      //s7c16f;
assign cos_dis = d_mult_cos[27:4];

//latency 3; a-s1c10f, b-s7c16f; out-s9c26f
XY_calc x_calc_instance (
    .CLK(clk),
    .A(del_cos_fi),
    .B(cos_dis),
    .P(calc_x)
);
XY_calc y_cal_instance (
    .CLK(clk),
    .A(del_sin_fi),
    .B(cos_dis),
    .P(calc_y)
);

//s6c9f
assign x_out = calc_x[32:17];
assign y_out = calc_y[32:17];
assign z_out = calc_z[26:11];

wire flag_point_under_ground;
wire signed [15:0] const_under_ground = 16'b1111010000000000;   //-6
assign flag_point_under_ground = z_out > const_under_ground;

wire flag_point_under_ground_del;
wire signed [15:0] z_out_del;
delay # (
    .N(17),
    .DELAY(3) ) DEL_flag_valid_z (
    .clk(clk),
    .ce(1'b1),
    .indata({z_out,flag_point_under_ground}),
    .odata({z_out_del,flag_point_under_ground_del})
);

//sumaric latency 9 for x, y, z

//3. CALCULATE HEIGHT, LENGTH, WEIGHT OF CLUSTER

wire del_flag_valid_xyz;
delay # (
    .N(1),
    .DELAY(9) ) DEL_flag_valid_xyz ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_valid),
    .odata(del_flag_valid_xyz)
);

wire del_flag_reset;

wire signed [15:0] x_min;
wire signed [15:0] x_max;
assign x_min_out = x_min;
assign x_max_out = x_max;

wire compare_xmin;
wire compare_xmax;
assign compare_xmin = (x_min > x_out);
assign compare_xmax = (x_max < x_out);

register #(.N(16)) rej_x_min_instance (
    .clk(clk),
    .ce(compare_xmin & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(x_out),
    .q(x_min)
);
register_zmax #(.N(16)) rej_x_max_instance (
    .clk(clk),
    .ce(compare_xmax & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(x_out),
    .q(x_max)
);

wire signed [15:0] y_min;
wire signed [15:0] y_max;
assign y_min_out = y_min;
assign y_max_out = y_max;

wire compare_ymin;
wire compare_ymax;
assign compare_ymin = (y_min > y_out);
assign compare_ymax = (y_max < y_out);

register #(.N(16)) rej_y_min_instance (
    .clk(clk),
    .ce(compare_ymin & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(y_out),
    .q(y_min)
);
register_zmax #(.N(16)) rej_y_max_instance (
    .clk(clk),
    .ce(compare_ymax & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(y_out),
    .q(y_max)
);

wire signed [15:0] z_min;
wire signed [15:0] z_max;
assign z_min_out = z_min;
assign z_max_out = z_max;

wire compare_zmin;
wire compare_zmax;
assign compare_zmin = (z_min > z_out_del);
assign compare_zmax = (z_max < z_out_del);

register #(.N(16)) rej_z_min_instance (
    .clk(clk),
    .ce(compare_zmin & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(z_out_del),
    .q(z_min)
);
register_zmax #(.N(16)) rej_z_max_instance (
    .clk(clk),
    .ce(compare_zmax & del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset),     //[TODO]
    .d(z_out_del),
    .q(z_max)
);

//s6c9f
wire signed [15:0] h;
wire signed [15:0] w;
wire signed [15:0] l;

//5c9f
wire [13:0] uh;
wire [13:0] uw;
wire [13:0] ul;
assign uh = h[13:0];
assign uw = w[13:0];
assign ul = l[13:0];

// 5c15f
wire [19:0] uh_div;
wire [19:0] uw_div;
wire [19:0] ul_div;

// 1c15f
//wire [15:0] h_out;
//wire [15:0] w_out;
//wire [15:0] l_out;

//latency 2; in: s6c9f, out: s6c9f
hwl_calc h_calc_instance(
    .CLK(clk),
    .A(z_max),
    .B(z_min),
    .S(h)
);

hwl_calc w_calc_instance(
    .CLK(clk),
    .A(y_max),
    .B(y_min),
    .S(w)
);

hwl_calc l_calc_instance(
    .CLK(clk),
    .A(x_max),
    .B(x_min),
    .S(l)
);

// Normalized value of h w l
assign uh_div = {uh,6'b0} >> 2;
assign uw_div = {uw,6'b0} >> 3;
assign ul_div = {ul,6'b0} >> 3;

assign h_out = uh_div[15:0];
assign w_out = uw_div[15:0];
assign l_out = ul_div[15:0];    //1c15f

//[TODO] opóŸniæ aby wsystkie sygan³y siê pojawia³y na wyjœciu w tym samym czasie

//4. CALCULATE CLUSTER NUMBER OF POINTS

wire [10:0] num_points;     //11c
assign num_points_out = num_points;

acc_points_num_cluster cell_point_num_cluster_instance (
    .clk(clk),
    .ce(del_flag_valid_xyz & flag_point_under_ground_del),
    .rst(del_flag_reset), //[TODO]
    .A(1'b1),
    .y(num_points)
);

// Normalize num_point 
wire [25:0] num_points_norm;

//latency 9
assign num_points_norm = {num_points,15'b0} >> 13;
assign num_points_norm_out = num_points_norm[15:0];  //1c15f

//5. Covariance vector

reg state1 = 0;
reg flag_end = 0;
wire flag_end_wire;
assign flag_end_wire = flag_end;
always @ (posedge clk)
begin
    case(state1)
      0:begin
        flag_end <= 0;
        if(flag_valid)
        begin
            state1 <= 1;
        end end
      1:begin
        if (~flag_valid)
        begin
            state1 <= 0;
            flag_end <= 1;
        end end
    endcase
end

////Calculate mean of x, y, z

//wire signed [24:0]x_sum;       //s15c9f
//acc_sum_xyz acc_sum_x(
//    .clk(clk),
//    .ce(del_flag_valid_xyz & flag_point_under_ground_del),           //[TODO]
//    .rst(del_flag_reset),         //[TODO]
//    .A(x_out),      //s6c9f
//    .y(x_sum)       
//);

//wire signed [24:0]y_sum;       //s15c9f
//acc_sum_xyz acc_sum_y(
//    .clk(clk),
//    .ce(del_flag_valid_xyz & flag_point_under_ground_del),           //[TODO]
//    .rst(del_flag_reset),         //[TODO]
//    .A(y_out),      //s6c9f
//    .y(y_sum)       
//);

//wire signed [24:0]z_sum;       //s15c9f
//acc_sum_xyz acc_sum_z(
//    .clk(clk),
//    .ce(del_flag_valid_xyz & flag_point_under_ground_del),           //[TODO]
//    .rst(del_flag_reset),         //[TODO]
//    .A(z_out),      //s6c9f
//    .y(z_sum)       //s15c9f
//);

//wire [24:0] xyz_sum [2:0];  //s15c9f
//assign xyz_sum [0] = x_sum;
//assign xyz_sum [1] = y_sum;
//assign xyz_sum [2] = z_sum;

//wire signed [39:0] xyz_mean;
////wire signed [15:0] xyz_mean_out;  //s6c9f
//wire xyz_mean_valid;

//wire del_flag_end_8;
//delay # (
//    .N(1),
//    .DELAY(8) ) DEL_flag_end8_instance ( 
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_end_wire),
//    .odata(del_flag_end_8)
//);

//reg state_xyz = 0;
//reg [1:0] cnt_xyz = 0;
//reg flag_div_xyz = 0;
//always @ (posedge clk)
//begin
//    case(state_xyz)
//      0:begin //IDLE
//        if(del_flag_end_8)
//        begin
//            state_xyz <= 1;
//            flag_div_xyz <= 1;
//        end end
//      1:begin
//        cnt_xyz <= cnt_xyz + 1;
//        if (cnt_xyz >= 2)
//        begin
//            cnt_xyz <= 0;
//            state_xyz <= 0;
//            flag_div_xyz <= 0;
//        end end
//    endcase
//end 

////latency 38, divisor:24 - 11c9f, divident:32 - s15c9f, out:40 - 34:0 valid: s24cs9f
//div_mean_xyz div_mean_x (
//    .aclk(clk),
//    .s_axis_divisor_tvalid(flag_div_xyz),       //[TODO]
//    .s_axis_divisor_tdata({num_points,9'b0}),
//    .s_axis_dividend_tvalid(flag_div_xyz),      //[TODO]
//    .s_axis_dividend_tdata(xyz_sum[cnt_xyz]),
//    .m_axis_dout_tvalid(xyz_mean_valid),
//    .m_axis_dout_tdata(xyz_mean)
//);

//Interprete div out and sign to s6c9f
//[TODO]

//9. Mean of intensity

wire del_flag_end;
delay # (
    .N(1),
    .DELAY(12) ) DEL_flag_end_instance ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_wire),
    .odata(del_flag_end)
);

wire [7:0] intensity_del;
delay # (
    .N(8),
    .DELAY(9) ) DEL_intensity_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(intensity),
    .odata(intensity_del)
);

wire [19:0]intens_sum;
acc_sum_itensity acc_sum_intens_instance(
    .clk(clk),
    .ce(del_flag_valid_xyz & flag_point_under_ground_del),  //[TODO]
    .rst(del_flag_reset), //[TODO]
    .A(intensity_del),
    .y(intens_sum)
);

reg [7:0] const_meanintens_norm = 8'b10010110; //=150
wire [7:0] meanintens_norm = const_meanintens_norm;
wire [18:0] intens_norm;
//to normalize divide by 150
//latency 3; a-11c, b-8c; out-19c 
mult_intens mult_intens (
    .CLK(clk),
    .A(num_points),
    .B(meanintens_norm),
    .P(intens_norm)
);

wire flag_meanintens_valid;
wire [39:0] calc_meanintens;
//wire [15:0] intens_mean;
// 37 latency; in: 23:0; 
div_mean_intens div_mean_intens_intens_instance (
    .aclk(clk),
    .s_axis_divisor_tvalid(del_flag_end),   //[TODO]
    .s_axis_divisor_tdata({5'b0,intens_norm}),
    .s_axis_dividend_tvalid(del_flag_end),  //[TODO]
    .s_axis_dividend_tdata({4'b0,intens_sum}),
    .m_axis_dout_tvalid(flag_meanintens_valid),
    .m_axis_dout_tdata(calc_meanintens)    //39:0, but 15:0 is valid, 15b for fraction
);

// Normalized value of intens mean
assign intens_mean = calc_meanintens[15:0];

//10. Histogram of intensity

wire [24:0] cell_intens;

assign cell_intens[0] = (intensity_del >= 16'd0 & intensity_del <= 16'd10) ? 1'b1 : 1'b0;
assign cell_intens[1] = (intensity_del > 16'd10 & intensity_del <= 16'd20) ? 1'b1 : 1'b0;
assign cell_intens[2] = (intensity_del > 16'd20 & intensity_del <= 16'd30) ? 1'b1 : 1'b0;
assign cell_intens[3] = (intensity_del > 16'd30 & intensity_del <= 16'd40) ? 1'b1 : 1'b0;
assign cell_intens[4] = (intensity_del > 16'd40 & intensity_del <= 16'd51) ? 1'b1 : 1'b0;
assign cell_intens[5] = (intensity_del > 16'd51 & intensity_del <= 16'd61) ? 1'b1 : 1'b0;
assign cell_intens[6] = (intensity_del > 16'd61 & intensity_del <= 16'd71) ? 1'b1 : 1'b0;
assign cell_intens[7] = (intensity_del > 16'd71 & intensity_del <= 16'd81) ? 1'b1 : 1'b0;
assign cell_intens[8] = (intensity_del > 16'd81 & intensity_del <= 16'd91) ? 1'b1 : 1'b0;
assign cell_intens[9] = (intensity_del > 16'd91 & intensity_del <= 16'd102) ? 1'b1 : 1'b0;
assign cell_intens[10] = (intensity_del > 16'd102 & intensity_del <= 16'd112) ? 1'b1 : 1'b0;
assign cell_intens[11] = (intensity_del > 16'd112 & intensity_del <= 16'd122) ? 1'b1 : 1'b0;
assign cell_intens[12] = (intensity_del > 16'd122 & intensity_del <= 16'd133) ? 1'b1 : 1'b0;
assign cell_intens[13] = (intensity_del > 16'd133 & intensity_del <= 16'd143) ? 1'b1 : 1'b0;
assign cell_intens[14] = (intensity_del > 16'd143 & intensity_del <= 16'd153) ? 1'b1 : 1'b0;
assign cell_intens[15] = (intensity_del > 16'd153 & intensity_del <= 16'd163) ? 1'b1 : 1'b0;
assign cell_intens[16] = (intensity_del > 16'd163 & intensity_del <= 16'd173) ? 1'b1 : 1'b0;
assign cell_intens[17] = (intensity_del > 16'd173 & intensity_del <= 16'd184) ? 1'b1 : 1'b0;
assign cell_intens[18] = (intensity_del > 16'd184 & intensity_del <= 16'd194) ? 1'b1 : 1'b0;
assign cell_intens[19] = (intensity_del > 16'd194 & intensity_del <= 16'd204) ? 1'b1 : 1'b0;
assign cell_intens[20] = (intensity_del > 16'd204 & intensity_del <= 16'd214) ? 1'b1 : 1'b0;
assign cell_intens[21] = (intensity_del > 16'd214 & intensity_del <= 16'd224) ? 1'b1 : 1'b0;
assign cell_intens[22] = (intensity_del > 16'd224 & intensity_del <= 16'd235) ? 1'b1 : 1'b0;
assign cell_intens[23] = (intensity_del > 16'd235 & intensity_del <= 16'd245) ? 1'b1 : 1'b0;
assign cell_intens[24] = (intensity_del > 16'd245 & intensity_del <= 16'd255) ? 1'b1 : 1'b0;

wire [10:0] hist [24:0];
genvar i;
generate
    for (i=0; i<25; i=i+1)
    begin
        acc_points_num acc_cell_intens_num(
        .clk(clk),
        .ce(cell_intens[i] & del_flag_valid_xyz & flag_point_under_ground_del),    //[TODO]
        .rst(flag_intenshist_valid),                      //[TODO]
        .A(1'b1),
        .y(hist[i])
    );
    end
endgenerate

// Normalized value of intens histogram

wire del_flag_end_hist;
delay # (
    .N(1),
    .DELAY(9) ) DEL_flag_end_hist_instance ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_wire),
    .odata(del_flag_end_hist)
);

reg state_h = 0;
reg flag_div_hist = 0;
reg [4:0] cnt_hist = 0;
always @ (posedge clk)
begin
    case(state_h)
      0:begin //IDLE
        if(del_flag_end_hist)
        begin
            state_h <= 1;
            flag_div_hist <= 1;
        end end
      1:begin
        cnt_hist <= cnt_hist + 1;
        if (cnt_hist >= 24)
        begin
            cnt_hist <= 0;
            state_h <= 0;
            flag_div_hist <= 0;
        end end
    endcase
end

wire [31:0] norm_hist;
//wire flag_intenshist_valid;

//latency 28; in 11c/11c; out 32, 11c15f
div_norm_intens_hist div_norm_intens_hist_instance (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div_hist),   //[TODO]
    .s_axis_divisor_tdata({4'b0,num_points}),
    .s_axis_dividend_tvalid(flag_div_hist),  //[TODO]
    .s_axis_dividend_tdata({4'b0,hist[cnt_hist]}),
    .m_axis_dout_tvalid(flag_intenshist_valid),
    .m_axis_dout_tdata(norm_hist)    //31:0, but 25:0 is valid, 15b for fraction
);

assign intens_hist_out = norm_hist[15:0];

//END

reg state_end = 0;
reg flag_end_out = 0;
wire flag_end_wire_out;
assign flag_end_wire_out = flag_end_out;
always @ (posedge clk)
begin
    case(state_end)
      0:begin
        flag_end_out <= 0;
        if(flag_intenshist_valid)
        begin
            state_end <= 1;
        end end
      1:begin
        if (~flag_intenshist_valid)
        begin
            state_end <= 0;
            flag_end_out <= 1;
        end end
    endcase
end

assign del_flag_reset = flag_end_wire_out;
assign flag_valid_out = flag_end_wire_out;

endmodule
