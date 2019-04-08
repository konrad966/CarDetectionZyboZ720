`timescale 1ns / 1ps

module remove_ground #( 
    parameter metr_num = 16'd250,       //0.5m = 0.5*500 = 250
                                        //lim = 60m = 60*500 = 30 000
    parameter gr_tresh = 28'd100,        //0.15m = 0.15*500 = 75     //mozna spróbowac dac z 20cm
                                        //0.2m = 0.2*500 = 100
    parameter no_tresh = 11'd10,
    parameter max_tresh = 18'd500,      //1m = 1*500 = 500
    parameter di_tresh = 18'd1500)      //3m = 3*500 = 1500
(
    input clk,
    input flag,
    input flag_frame,
           
    input [15:0] distance,      
    input [7:0] laser_num,   //0-63, 0 is the lowest vertical angle
    
    output [59:0] remove_all,
    output flag_remove_end
);     

wire del_flag;
wire del_flag_frame;
wire flag_mean_valid;
wire del_flag_mean_valid;

wire signed [27:0] calc_z;
wire signed [17:0] z_int;

//remove ground
wire [119:0] cells;
wire [119:0] del_cells;

wire [119:0] compare;
wire signed [27:0] acc_out [119:0];
wire signed [31:0] calc_mean;
wire signed [27:0] mean;
wire signed [27:0] sub;

reg [119:0] rem_ground_res_num_pts = 0;
wire [119:0] rem_ground_res_num_pts_wire;

wire signed [27:0] ground_tresh;
reg [119:0] rm_ground;
wire [119:0] remove_ground;

//remove noise
wire [10:0] num_points [119:0];
wire signed [17:0] del_z_min;

wire [10:0] num_points_noise;
wire [10:0] noise_tresh;
reg [59:0] rm_noise;
wire [59:0] remove_noise;

//remove foreground
wire [119:0] compare_zmax;
wire signed [17:0] z_min [119:0];
wire signed [17:0] z_max [119:0];
wire signed [17:0] z_min_foreground [59:0];
wire signed [17:0] z_max_foreground [59:0];
wire signed [17:0] zmax_minus_zmin;

wire signed [17:0] zmax_tresh;
wire signed [17:0] diff_tresh;
reg [59:0] rm_foreground;
wire [59:0] remove_foreground;


reg state = 0;
reg flag_div = 0;
reg [7:0] cnt_cells = 0;
always @ (posedge clk)
begin
    case(state)
      0:begin //IDLE
        if(del_flag_frame)
        begin
            state <= 1;
            flag_div <= 1;
        end end
      1:begin
        cnt_cells <= cnt_cells + 1;
        if (cnt_cells >= 119)
        begin
            cnt_cells <= 0;
            state <= 0;
            flag_div <= 0;
        end end
    endcase
end

reg [1:0] state1 = 0; 
reg flag_sub = 0;
reg [7:0] cnt_rm_ground = 0;
always @ (posedge clk)
begin
    case(state1)
      0:begin //IDLE
        flag_sub <= 0;
        rem_ground_res_num_pts <= 0;
        if(del_flag_mean_valid)
        begin
            state1 <= 1;
        end end
      1:begin
        cnt_rm_ground <= cnt_rm_ground + 1;
        if (cnt_rm_ground >= 119)
        begin
            cnt_rm_ground <= 0;
            state1 <= 2;
        end
        if (sub < ground_tresh)
        begin 
            rm_ground[cnt_rm_ground] = 1'b0;
        end else begin
            rm_ground[cnt_rm_ground] = 1'b1;
        end end
      2:begin
            rem_ground_res_num_pts <= ~rm_ground;
            state1 <= 0;
            flag_sub <= 1;
        end
    endcase
end

reg state2 = 0;
reg flag_add = 0;
reg [7:0] cnt_noise = 0;
always @ (posedge clk)
begin
    case(state2)
      0:begin //IDLE
        if(flag_sub)
        begin
            state2 <= 1;
            flag_add <= 1;
        end end
      1:begin
        cnt_noise <= cnt_noise + 2;
        if (cnt_noise >= 118)
        begin
            cnt_noise <= 0;
            state2 <= 0;
            flag_add <= 0;
        end end
    endcase
end

reg state3 = 0; 
reg flag_noise_end = 0;
reg [5:0] cnt_rm_noise = 0;
always @ (posedge clk)
begin
    case(state3)
      0:begin //IDLE
        flag_noise_end <= 0;
        if(flag_add)
        begin
            state3 <= 1;
        end end
      1:begin
        cnt_rm_noise <= cnt_rm_noise + 1;
        if (cnt_rm_noise >= 59)
        begin
            cnt_rm_noise <= 0;
            state3 <= 0;
            flag_noise_end <= 1;
        end
        if (num_points_noise < noise_tresh)
        begin 
            rm_noise[cnt_rm_noise] = 1'b0;
        end else begin
            rm_noise[cnt_rm_noise] = 1'b1;
        end end
    endcase
end

reg state4 = 0;
reg flag_subz = 0;
wire del_flag_subz;
reg [5:0] cnt_sub_zmax_zmin = 0;
always @ (posedge clk)
begin
    case(state4)
      0:begin //IDLE
        if(flag_sub)
        begin
            state4 <= 1;
            flag_subz <= 1;
        end end
      1:begin
        cnt_sub_zmax_zmin <= cnt_sub_zmax_zmin + 1;
        if (cnt_sub_zmax_zmin >= 59)
        begin
            cnt_sub_zmax_zmin <= 0;
            state4 <= 0;
            flag_subz <= 0;
        end end
    endcase
end

reg state5 = 0; 
reg flag_foreground_end = 0;
reg [5:0] cnt_rm_foreground = 0;
always @ (posedge clk)
begin
    case(state5)
      0:begin //IDLE
        flag_foreground_end <= 0;
        if(del_flag_subz)
        begin
            state5 <= 1;
        end end
      1:begin
        cnt_rm_foreground <= cnt_rm_foreground + 1;
        if (cnt_rm_foreground >= 59)
        begin
            cnt_rm_foreground <= 0;
            state5 <= 0;
            flag_foreground_end <= 1;
        end
        if (zmax_minus_zmin > diff_tresh || z_max_foreground[cnt_rm_foreground] > zmax_tresh)
        begin 
            rm_foreground[cnt_rm_foreground] = 1'b0;
        end else begin
            rm_foreground[cnt_rm_foreground] = 1'b1;
        end end
    endcase
end

//Create cells and count necessery values
genvar k;
generate
    //Comparator; Input:  [15:0]distance; Output: [119:0]cell
    for (k=0; k<120; k=k+1)
    begin
        assign cells[k] = (distance > metr_num*(k) & distance <= metr_num*(k+1)) ? 1'b1 : 1'b0;
        assign compare[k] = (z_min[k] > z_int);
        assign compare_zmax[k] = (z_max[k] < z_int);
    end 
    
    for (k=0; k<60; k=k+1)
    begin
        assign z_min_foreground[k] = (z_min[2*k] > z_min[2*k+1]) ? z_min[2*k+1] : z_min[2*k];
        assign z_max_foreground[k] = (z_max[2*k] > z_max[2*k+1]) ? z_max[2*k] : z_max[2*k+1];
    end
endgenerate

genvar i;
generate
    for (i=0; i<120; i=i+1)
    begin
    accumulator element_acc(
        .clk(clk),
        .ce(del_cells[i] && del_flag),
        .rst(flag_sub),
        .A(z_int),
        .y(acc_out[i])
    );

    register reg_z_min (
        .clk(clk),
        .ce(del_cells[i] && del_flag && compare[i]),
        .rst(flag_foreground_end || rem_ground_res_num_pts_wire[i]),
        .d(z_int),
        .q(z_min[i])
    );

    register_zmax reg_z_max (
        .clk(clk),
        .ce(del_cells[i] && del_flag && compare_zmax[i]),
        .rst(flag_foreground_end || rem_ground_res_num_pts_wire[i]),
        .d(z_int),
        .q(z_max[i])
    );

    acc_points_num cell_point_num (
        .clk(clk),
        .ce(del_cells[i] && del_flag),
        .rst(flag_noise_end || rem_ground_res_num_pts_wire[i]),
        .A(1'b1),
        .y(num_points[i])
    );
    end    
endgenerate

// Save fixed values of sin vertical angles - signed to each laser: s1c,10f;        [0] - min angle
wire signed [11:0] sin_th;  
sin_thetas sin_theta(
    .a(laser_num[5:0]),
    .spo(sin_th)
);

//Z_calc: a-16c; b-s1c10f; out-s1c17f10; latency 3
Z_calc z_cal (
    .CLK(clk),
    .A(distance),
    .B(sin_th),
    .P(calc_z)
);

// 34 latency
div_mean div_mean (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div),
    .s_axis_divisor_tdata({5'b0,num_points[cnt_cells]}),
    .s_axis_dividend_tvalid(flag_div),
    .s_axis_dividend_tdata({4'b0,acc_out[cnt_cells]}),
    .m_axis_dout_tvalid(flag_mean_valid),
    .m_axis_dout_tdata(calc_mean)    //31:0, but 29:0 is valid, 2b for fraction
);

// 3 latency
sub_mean_min mean_minus_min (
    .CLK(clk),
    .CE(flag_mean_valid),
    .A(mean),
    .B(del_z_min),
    .S(sub)
);

// 1 latency
add_num_pts_noise add_num_pts_noise (
    .CLK(clk),
    .CE(flag_add),
    .A(num_points[cnt_noise]),
    .B(num_points[cnt_noise+1]),
    .S(num_points_noise)
);

// 2 latency
sub_zmax_zmin sub_zmax_zmin (
    .CLK(clk),
    .CE(flag_subz),
    .A(z_max_foreground[cnt_sub_zmax_zmin]),
    .B(z_min_foreground[cnt_sub_zmax_zmin]),
    .S(zmax_minus_zmin)
);

delay # (
    .N(1),
    .DELAY(3) ) DEL_flag 
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag),
    .odata(del_flag)
);

delay # (
    .N(120),
    .DELAY(3) ) DEL_cells 
(
    .clk(clk),
    .ce(1'b1),
    .indata(cells),
    .odata(del_cells)
);

delay # (
    .N(1),
    .DELAY(4) ) DEL_flag_frame 
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_frame),
    .odata(del_flag_frame)
);

delay # (
    .N(18),
    .DELAY(34) ) DEL_z_min 
(
    .clk(clk),
    .ce(1'b1),
    .indata(z_min[cnt_cells]),
    .odata(del_z_min)
);

delay # (
    .N(1),
    .DELAY(2) ) DEL_flag_mean_valid
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_mean_valid),
    .odata(del_flag_mean_valid)
);

delay # (
    .N(1),
    .DELAY(1) ) DEL_flag_subz
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_subz),
    .odata(del_flag_subz)
);

assign z_int = calc_z[27:10];
assign mean = calc_mean[29:2];    //mean without fraction

assign ground_tresh = gr_tresh;
assign noise_tresh = no_tresh;
assign zmax_tresh = max_tresh;
assign diff_tresh = diff_tresh;

assign remove_ground = rm_ground;
assign rem_ground_res_num_pts_wire = rem_ground_res_num_pts;

assign remove_noise = rm_noise;
assign remove_foreground = rm_foreground;
assign remove_all = remove_noise & remove_foreground;

assign flag_remove_end = flag_foreground_end;

endmodule