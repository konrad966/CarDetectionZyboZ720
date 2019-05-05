`timescale 1ns / 1ps

module extract_features(
    input clk,
    input flag_in_valid,
    input [402:0] bram_out,
    
    output features_valid,
    output [15:0] feature,
    output signed [47:0] box_min,
    output signed [47:0] box_max
);

wire signed [15:0] x_min_in;
wire signed [15:0] x_max_in;
wire signed [15:0] y_min_in;
wire signed [15:0] y_max_in;
wire signed [15:0] z_min_in;
wire signed [15:0] z_max_in;
wire [10:0] num_points;
wire [19:0] intens_sum;
wire [274:0] hist_out;
wire remove;
assign {remove,hist_out,intens_sum,num_points,z_max_in,z_min_in,y_max_in,y_min_in,x_max_in,x_min_in} = bram_out;

wire [10:0] hist [24:0];
genvar i;
generate
    for (i=0; i<25; i=i+1)
    begin
        assign hist[i] = hist_out[11*i+10 : 11*i];
    end
endgenerate

wire [15:0] h_out;
wire [15:0] w_out;
wire [15:0] l_out;
wire [15:0] num_points_out;
wire [15:0] intens_out;

reg state1 = 0;
reg flag_end = 0;
wire flag_end_wire;
assign flag_end_wire = flag_end;
always @ (posedge clk)
begin
    case(state1)
      0:begin
        flag_end <= 0;
        if(flag_in_valid)
        begin
            state1 <= 1;
        end end
      1:begin
        if (~flag_in_valid)
        begin
            state1 <= 0;
            flag_end <= 1;
        end end
    endcase
end

reg flag_reset = 0;

// 1.H

//s6c9f
wire signed [15:0] h;
wire signed [15:0] w;
wire signed [15:0] l;
wire signed [15:0] z_min;
wire signed [15:0] z_max;
wire compare_zmin;
wire compare_zmax;
assign compare_zmin = (z_min > z_min_in);
assign compare_zmax = (z_max < z_max_in);
register #(.N(16)) rej_z_min_instance (
    .clk(clk),
    .ce(compare_zmin & flag_in_valid & ~remove),
    .rst(flag_reset),     
    .d(z_min_in),
    .q(z_min)
);
register_max #(.N(16)) rej_z_max_instance (
    .clk(clk),
    .ce(compare_zmax & flag_in_valid & ~remove),
    .rst(flag_reset),          
    .d(z_max_in),
    .q(z_max)
);

//latency 2; in: s6c9f, out: s6c9f
hwl_calc h_calc_instance(
    .CLK(clk),
    .A(z_max),
    .B(z_min),
    .S(h)
);

// 2.W

wire signed [15:0] y_min;
wire signed [15:0] y_max;
wire compare_ymin;
wire compare_ymax;
assign compare_ymin = (y_min > y_min_in);
assign compare_ymax = (y_max < y_max_in);
register #(.N(16)) rej_y_min_instance (
    .clk(clk),
    .ce(compare_ymin & flag_in_valid & ~remove),
    .rst(flag_reset),       
    .d(y_min_in),
    .q(y_min)
);
register_max #(.N(16)) rej_y_max_instance (
    .clk(clk),
    .ce(compare_ymax & flag_in_valid & ~remove),
    .rst(flag_reset),     
    .d(y_max_in),
    .q(y_max)
);

//latency 2; in: s6c9f, out: s6c9f
hwl_calc w_calc_instance(
    .CLK(clk),
    .A(y_max),
    .B(y_min),
    .S(w)
);

// 3.L

wire signed [15:0] x_min;
wire signed [15:0] x_max;
wire compare_xmin;
wire compare_xmax;
assign compare_xmin = (x_min > x_min_in);
assign compare_xmax = (x_max < x_max_in);
register #(.N(16)) rej_x_min_instance (
    .clk(clk),
    .ce(compare_xmin & flag_in_valid & ~remove),
    .rst(flag_reset),          
    .d(x_min_in),
    .q(x_min)
);
register_max #(.N(16)) rej_x_max_instance (
    .clk(clk),
    .ce(compare_xmax & flag_in_valid & ~remove),
    .rst(flag_reset),         
    .d(x_max_in),
    .q(x_max)
);

//latency 2; in: s6c9f, out: s6c9f
hwl_calc l_calc_instance(
    .CLK(clk),
    .A(x_max),
    .B(x_min),
    .S(l)
);

assign box_min = {x_min,y_min,z_min};
assign box_max = {x_max,y_max,z_max};    

// Normalized value of h w l
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
assign uh_div = {uh,6'b0} >> 2;
assign uw_div = {uw,6'b0} >> 3;
assign ul_div = {ul,6'b0} >> 3;

assign h_out = uh_div[15:0];
assign w_out = uw_div[15:0];
assign l_out = ul_div[15:0];    //1c15f


// 4.Points num

wire [11:0] num_points_sum;
acc_pts_num features_point_num (
    .clk(clk),
    .ce(flag_in_valid & ~remove),
    .rst(flag_reset), 
    .A(num_points),
    .y(num_points_sum)
);
// Normalize num_point 
wire [26:0] num_points_norm;
assign num_points_norm = {num_points_sum,15'b0} >> 13;
assign num_points_out = num_points_norm[15:0];  //1c15f

// 5.Intensity mean
wire [15:0] intens_mean_out;

wire [19:0] intens;
acc_itensity acc_sum_intens_instance(
    .clk(clk),
    .ce(flag_in_valid & ~remove),  
    .rst(flag_reset),
    .A(intens_sum),
    .y(intens)
);

reg [7:0] const_meanintens_norm = 8'b10010110; //=150
wire [7:0] meanintens_norm = const_meanintens_norm;
wire [19:0] intens_norm;
//to normalize divide by 150
//latency 3; a-12c, b-8c; out-20c 
mult_intens mult_intens (
    .CLK(clk),
    .A(num_points_sum),
    .B(meanintens_norm),
    .P(intens_norm)
);


// 6-30.Histogram of ntensity

wire [11:0] hist_sum [24:0];
wire [19:0] hist_19 [25:0];
genvar j,a;
generate
    for (j=0; j<25; j=j+1)
    begin
        acc_hist acc_hist_instance(
            .clk(clk),
            .ce(flag_in_valid & ~remove),  
            .rst(flag_reset), 
            .A(hist[j]),
            .y(hist_sum[j])
        );
    end
    
    for (a=1; a<26; a=a+1)
    begin
        assign hist_19[a] = {8'b0,hist_sum[a-1]};
    end
    assign hist_19[0] = intens;
endgenerate

// Normalized value of intens histogram

wire del_flag_end_hist;
delay # (
    .N(1),
    .DELAY(4) ) DEL_flag_end_hist_instance ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_wire),
    .odata(del_flag_end_hist)
);

wire [19:0] intens_divisor [1:0];
assign intens_divisor[0] = intens_norm;
assign intens_divisor[1] = {8'b0,num_points_sum};

reg state_h = 0;
reg flag_div_hist = 0;
reg flag_div_hist_step = 0;
reg [4:0] cnt_hist = 0;
reg cnt_divisor = 0;
always @ (posedge clk)
begin
    case(state_h)
      0:begin //IDLE
        if(del_flag_end_hist)
        begin
            state_h <= 1;
            flag_div_hist <= 1;
            flag_div_hist_step <= 1;
        end end
      1:begin
        cnt_hist <= cnt_hist + 1;
        cnt_divisor <= 1;
        flag_div_hist_step <= 0;
        if (cnt_hist >= 25)
        begin
            cnt_hist <= 0;
            cnt_divisor <= 0;
            state_h <= 0;
            flag_div_hist <= 0;
        end end
    endcase
end

wire [31:0] norm_intens;
wire flag_intens_valid;
// 37 latency; in: 19:0; 
div_mean_intens div_mean_intens_intens_instance (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div_hist),   
    .s_axis_divisor_tdata({4'b0,intens_divisor[cnt_divisor]}),
    .s_axis_dividend_tvalid(flag_div_hist),  
    .s_axis_dividend_tdata({4'b0,hist_19[cnt_hist]}),
    .m_axis_dout_tvalid(flag_intens_valid),
    .m_axis_dout_tdata(norm_intens)    //39:0, but 15:0 is valid, 15b for fraction
);

assign intens_out = norm_intens[15:0];

// Serialize features and send outside
// h w l np intens_mean intens_hist

wire del_flag_div_hist;
delay # (
    .N(1),
    .DELAY(32) ) DEL_flag_div_hist_instance ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_div_hist_step),
    .odata(del_flag_div_hist)
);

reg [2:0] state_out = 0;
reg flag_hwlnp_valid = 0;
reg [15:0] feature_reg = 0;
always @ (posedge clk)
begin
    case(state_out)
      0:begin //IDLE
        flag_hwlnp_valid <= 0;
        flag_reset <= 0;
        if(del_flag_div_hist & (num_points_out != 16'b0))
        begin
            state_out <= 1;
        end end
      1:begin
        feature_reg <= h_out;
        flag_hwlnp_valid <= 1;
        state_out <= 2;
        end
      2:begin
        feature_reg <= w_out;
        state_out <= 3;
        end
      3:begin
        feature_reg <= l_out;
        state_out <= 4;
        end
      4:begin
        feature_reg <= num_points_out;
        state_out <= 5;
        end
      5:begin
        feature_reg <= intens_out;
        if (~flag_intens_valid)
        begin
            state_out <= 0;
            flag_hwlnp_valid <= 0;
            flag_reset <= 1;
        end end
    endcase
end

assign feature = feature_reg;
assign features_valid = flag_hwlnp_valid;

endmodule
