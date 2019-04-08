`timescale 1ns / 1ps

module extract_features_step2(
    input clk,
    
    input [15:0] angle,
    input [15:0] distance,
    input [7:0] intensity,
    input [7:0] laser,
    input flag_new_points,
    
    input flag_valid_hwlni,
    input signed [15:0] x_min,
    input signed [15:0] y_min,
    input signed [15:0] z_min,     //s6c9f
    input signed [15:0] x_max,
    input signed [15:0] y_max,
    input signed [15:0] z_max,
    input [10:0] num_points,
    
    //input flag_valid_xyzmean,
    //input signed [15:0] xyz_mean_in,
    
    input [15:0] h_in,             
    input [15:0] w_in,
    input [15:0] l_in,
    input [15:0] num_points_norm_in,
    input [15:0] mean_intensity_in,
    
    input flag_valid_intensity, //comes before flag_valid_hwlni
    input [15:0] hist_intensity_in,
    
    output [15:0] features,
    output signed [47:0] box_min,
    output signed [47:0] box_max,
    output flag_valid_out
);

//// new points?

//reg [2:0] cnt_timeout = 0;
//reg state_timeout = 0;
//reg flag_invalid_out_reg = 0;
//always @ (posedge clk)
//begin
//    case(state_timeout)
//        0:begin
//            if (flag_valid_hwlni)
//            flag_invalid_out_reg <= 0;
//            begin
//                state_timeout <= 1;
//                cnt_timeout <= cnt_timeout + 1;
//            end
//        end
//        1:begin
//            cnt_timeout <= cnt_timeout + 1;
//            if (flag_new_points)
//            begin
//                cnt_timeout <= 0;
//                state_timeout <= 0;
//            end
//            if (cnt_timeout >= 3'd4)
//            begin
//                cnt_timeout <= 0;
//                state_timeout <= 0;
//                flag_invalid_out_reg <= 1;
//            end
//        end
//    endcase
//end
//assign flag_invalid_out = flag_invalid_out_reg;

// Save features in BRAM

wire [15:0] h_in_del1;
wire [15:0] w_in_del2;
wire [15:0] l_in_del3;
wire [15:0] num_points_in_del4;
wire [15:0] mean_intensity_in_del5;

reg signed [47:0] box_min_reg = 0;
reg signed [47:0] box_max_reg = 0;
assign box_min = box_min_reg;
assign box_max = box_max_reg;

reg signed [15:0] z_min_reg = 0;

reg [10:0] num_points_reg = 0;
reg signed [15:0] x_mean_reg = 0;
reg signed [15:0] y_mean_reg = 0;
reg signed [15:0] z_mean_reg = 0;

reg state = 0;
reg [15:0] reg_feature = 0;
//reg [6:0] reg_address = 0; //!!!WARNING 6:0 for 70 bram - pozmianieæ wszêdzie w always na 7'b
reg [5:0] reg_address = 0;
reg reg_flag_ena = 0;
reg [1:0] state1 = 0;
reg state2 = 0; 
reg [2:0] cnt1 = 0;
reg [1:0] cnt2 = 0;
always @ (posedge clk) //save intensity histogram to BRAM
begin
    case(state)
        0:begin
        if (flag_valid_intensity)
        begin
            state <= 1;
            reg_feature <= hist_intensity_in;
            reg_address <= 6'd35;
            reg_flag_ena <= 1;
        end end
        1:begin
            reg_feature <= hist_intensity_in;
            reg_address <= reg_address + 1;
            reg_flag_ena <= 1;
            if (reg_address >= 6'd59)
            begin
                state <= 0;
                reg_flag_ena <= 0;
            end
        end
    endcase
    
    case(state1)
        0:begin
        if (flag_valid_hwlni)
        begin
            state1 <= 1;
            cnt1 <= cnt1 + 1;
            z_min_reg <= z_min;
            
            box_min_reg[47:32] = x_min;
            box_min_reg[31:16] = y_min;
            box_min_reg[15:0] = z_min;
            
            box_max_reg[47:32] = x_max;
            box_max_reg[31:16] = y_max;
            box_max_reg[15:0] = z_max;
           
            num_points_reg <= num_points;
        end end
        1:begin
        if (cnt1 == 3'd1)
        begin
            reg_feature <= h_in_del1;
            reg_address <= 6'd0;
            reg_flag_ena <= 1;
            cnt1 <= cnt1 + 1;
        end if (cnt1 == 3'd2)
        begin
            reg_feature <= w_in_del2;
            reg_address <= 6'd1;
            cnt1 <= cnt1 + 1;
        end if (cnt1 == 3'd3)
        begin
            reg_feature <= l_in_del3;
            reg_address <= 6'd2;
            cnt1 <= cnt1 + 1;
        end if (cnt1 == 3'd4)
        begin
            reg_feature <= num_points_in_del4;
            reg_address <= 6'd3;
            cnt1 <= cnt1 + 1;
        end if (cnt1 == 3'd5)
        begin
            reg_feature <= mean_intensity_in_del5;
            reg_address <= 6'd34;
            cnt1 <= 0;
            state1 <= 2;
        end end
        2:begin
            reg_flag_ena <= 0;
            state1 <=0;
        end
    endcase
    
//    case(state2)
//        0:begin
//        if (flag_valid_xyzmean)
//        begin
//            state2 <= 1;
//            cnt2 <= cnt2 + 1;
//            x_mean_reg <= xyz_mean_in;
//        end end
//        1:begin
//          cnt2 <= cnt2 + 1;
//          if (cnt2 == 2'd1)
//          begin
//            y_mean_reg <= xyz_mean_in;
//          end
//          if (cnt2 >= 2'd2)
//          begin
//                z_mean_reg <= xyz_mean_in;
//                state2 <= 0;
//                cnt2 <= 0;
//          end
//        end
//    endcase
end

wire [15:0] feature;
wire flag_ena;
wire flag_enb;
wire [5:0] address;
wire [5:0] address_read;
assign feature = reg_feature;
assign flag_ena = reg_flag_ena;
assign address = reg_address;

BRAM_feature_vector bram_feature_vector_instance(
    .clka(clk),
    .wea(flag_ena),
    .ena(flag_ena),
    .addra(address),   // [6:0]
    .dina(feature),    // [15:0]
    .clkb(clk),
    .enb(flag_enb),
    .addrb(address_read),
    .doutb(features)
);

//DELAY
delay # (
    .N(16),
    .DELAY(1) ) DEL_h_in_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(h_in),
    .odata(h_in_del1)
);
delay # (
    .N(16),
    .DELAY(2) ) DEL_w_in_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(w_in),
    .odata(w_in_del2)
);
delay # (
    .N(16),
    .DELAY(3) ) DEL_l_in_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(l_in),
    .odata(l_in_del3)
);
delay # (
    .N(16),
    .DELAY(4) ) DEL_num_points_in_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(num_points_norm_in),
    .odata(num_points_in_del4)
);
delay # (
    .N(16),
    .DELAY(5) ) mean_intensity_in_del ( 
    .clk(clk),
    .ce(1'b1),
    .indata(mean_intensity_in),
    .odata(mean_intensity_in_del5)
);

// 1. CALCULATE REAL DISTANCE in meters (d*0.002)

reg [15:0] c = 16'b0000000010000011;  //0.002 16fraction
wire [15:0] const;
wire [31:0] calc_distance;
wire [15:0] distance_new;      // 6c is enough because of max distance equal 60m

assign const = c;
assign distance_new = calc_distance[21:6];      //6c 10f

//latency 3; a:16c b:16f out:16c16f
mult_distance mult_distance_instance_etap2(
    .CLK(clk),
    .A(distance),
    .B(const),
    .P(calc_distance)
);
//sumaric latency 3

// 2. CALCULATE Z COORDINATE

// Save fixed values of sin/cos vertical angles - signed to each laser: s1c,10f;        [0] - min angle
wire signed [11:0] sin_th;
sin_thetas sin_theta_instance_etap2(
    .a(laser[5:0]),
    .spo(sin_th)
);

wire signed [11:0] del_sin_th;  
delay # (
    .N(12),
    .DELAY(3) ) DEL_sin_theta_etap2 (
    .clk(clk),
    .ce(1'b1),
    .indata(sin_th),
    .odata(del_sin_th)
);

wire signed [27:0] calc_z;
//Z_calc: a-6c10f; b-sc1f10; out-s7c20f; latency 3
Z_calc z_cal_features_instance_etap2 (
    .CLK(clk),
    .A(distance_new),
    .B(del_sin_th),
    .P(calc_z)
);
//s6c9f
wire signed [15:0] z_out;

wire flag_point_under_ground;
wire signed [15:0] const_under_ground = 16'b1111010000000000;   //-6
assign flag_point_under_ground = z_out > const_under_ground;

wire flag_new_points_del6;
delay # (
    .N(1),
    .DELAY(6) ) DEL_flag_new_points_del6 ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_new_points),
    .odata(flag_new_points_del6)
);

assign z_out = calc_z[26:11];
//sumaric latency for z - 6

//7. Slice num points

wire signed [15:0] z_min_wire = z_min_reg;

// Compute slice height
//2c9f
reg [10:0] const_slice [9:0];
//s6c9f
wire signed [15:0] hslice [9:0];

initial
begin
    const_slice[0] <= 11'b00001100110; // <= 0,19921875m
    const_slice[1] <= 11'b00011001101; // <= 0,3984375m
    const_slice[2] <= 11'b00100110011; // <= 0,6015625m
    const_slice[3] <= 11'b00110011010; // <= 0,80078125m
    const_slice[4] <= 11'b01000000000; // <= 1m
    const_slice[5] <= 11'b01001100110; // <= 1,19921875m
    const_slice[6] <= 11'b01011001101; // <= 1,3984375m
    const_slice[7] <= 11'b01100110011; // <= 1,6015625m
    const_slice[8] <= 11'b01110011010; // <= 1,80078125m
    const_slice[9] <= 11'b10000000000; // <= 2m
end

genvar j;
generate
    for (j=0; j<10; j=j+1)
    begin
        //latency 2; A s6c9f, B 2c9f, out s6c9f
        add_Hslice add_Hslice (
            .CLK(clk),
            .CE(flag_new_points_del6 & flag_point_under_ground),  //[TODO]
            .A(z_min_wire),
            .B(const_slice[j]),
            .S(hslice[j])
        );
    end
endgenerate

// Which slice

wire flag_reset;

wire [9:0] compare_slice;
assign compare_slice[0] = z_out >= z_min_wire & z_out < hslice[0]; 
assign compare_slice[1] = z_out >= hslice[0] & z_out < hslice[1]; 
assign compare_slice[2] = z_out >= hslice[1] & z_out < hslice[2]; 
assign compare_slice[3] = z_out >= hslice[2] & z_out < hslice[3]; 
assign compare_slice[4] = z_out >= hslice[3] & z_out < hslice[4]; 
assign compare_slice[5] = z_out >= hslice[4] & z_out < hslice[5]; 
assign compare_slice[6] = z_out >= hslice[5] & z_out < hslice[6]; 
assign compare_slice[7] = z_out >= hslice[6] & z_out < hslice[7]; 
assign compare_slice[8] = z_out >= hslice[7] & z_out < hslice[8];
assign compare_slice[9] = z_out >= hslice[8] & z_out < hslice[9]; 

//Slice num point

wire [10:0] num_points_slice [9:0];

genvar k;
generate
     for(k=0; k<10; k=k+1)
     begin
        acc_points_num_cluster acc_points_num_slice (
            .clk(clk),
            .ce(compare_slice[k] & flag_new_points_del6 & flag_point_under_ground),  //[TODO]
            .rst(flag_reset), //[TODO]
            .A(1'b1),
            .y(num_points_slice[k])
        );
     end  
endgenerate

//Normalization

reg state_1 = 0;
reg flag_end_new_point = 0;
always @ (posedge clk)
begin
    case(state_1)
      0:begin //IDLE
        flag_end_new_point <= 0;
        if(flag_new_points)
        begin
            state_1 <= 1;
        end end
      1:begin
        if (~flag_new_points)
        begin
            state_1 <= 0;
            flag_end_new_point <= 1;
        end end
    endcase
end

wire flag_end_new_points_del5;
delay # (
    .N(1),
    .DELAY(5) ) flag_end_new_points_del5_instance_step2 ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_new_point),
    .odata(flag_end_new_points_del5)
);

reg state_np = 0;
reg flag_div_np = 0;
reg [3:0] cnt_npt = 0;
always @ (posedge clk)
begin
    case(state_np)
      0:begin //IDLE
        if(flag_end_new_points_del5)
        begin
            state_np <= 1;
            flag_div_np <= 1;
        end end
      1:begin
        cnt_npt <= cnt_npt + 1;
        if (cnt_npt >= 9)
        begin
            cnt_npt <= 0;
            state_np <= 0;
            flag_div_np <= 0;
        end end
    endcase
end

wire [10:0] num_point_wire = num_points_reg;
wire flag_npslice_valid;
wire [31:0] np_slice;

//latency 29; divident: 12c, divisor: 11c, out: 31:0, valid 26:15, 15f
div_norm_pt_slice div_norm_pt_slice_instance (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div_np),   //[TODO]
    .s_axis_divisor_tdata({5'b0,num_point_wire}),
    .s_axis_dividend_tvalid(flag_div_np),  //[TODO]
    .s_axis_dividend_tdata({4'b0,num_points_slice[cnt_npt]}),
    .m_axis_dout_tvalid(flag_npslice_valid),
    .m_axis_dout_tdata(np_slice)    //31:0, but 26:0 is valid, 15b for fraction
);

wire [15:0] np_slice_out;
assign np_slice_out = np_slice[15:0];

reg state_np_write = 0;
always @ (posedge clk)
begin
    case(state_np_write)
        0:begin
        if (flag_npslice_valid)
        begin
            state_np_write <= 1;
            reg_feature <= np_slice_out;
            reg_address <= 6'd4;
            reg_flag_ena <= 1;
        end end
        1:begin
            reg_feature <= np_slice_out;
            reg_address <= reg_address + 1;
            reg_flag_ena <= 1;
            if (reg_address >= 6'd13)
            begin
                state_np_write <= 0;
                reg_flag_ena <= 0;
            end
        end
    endcase
end

//sumaric latency for firts np_slice is 36
//num_points for first cluster is valid, because of load_cells, acc count all_num_point without first

//8. SLICE W AND L

// calc  X Y coordinate

wire signed [11:0] cos_th;  
cos_thetas cos_theta_instance(
    .a(laser[5:0]),
    .spo(cos_th)
);
wire signed [11:0] del_cos_th;  
delay # (
    .N(12),
    .DELAY(3) ) DEL_cos_theta_step2 (
    .clk(clk),
    .ce(1'b1),
    .indata(cos_th),
    .odata(del_cos_th)
);

wire [11:0] address_for_fi;
fi_address fi_address_instance_step2(
    .angle(angle),
    .valid_point(flag_new_points),
    .address(address_for_fi)
);

// Save fixed values of sin/cos horizontal angles; 2082: s1c,10f;        
wire signed [11:0] sin_fi;  
sin_fis sin_fis_instance_step2(
    .a(address_for_fi),
    .spo(sin_fi)
);    
wire signed [11:0] cos_fi;  
cos_fis cos_fis_instance_step2(
    .a(address_for_fi),
    .spo(cos_fi)
);

wire signed [11:0] del_sin_fi;  
wire signed [11:0] del_cos_fi;  
delay # (
    .N(24),
    .DELAY(6) ) DEL_sin_cos_fi_step2 (
    .clk(clk),
    .ce(1'b1),
    .indata({sin_fi,cos_fi}),
    .odata({del_sin_fi, del_cos_fi})
);

wire signed [27:0] d_mult_cos;
//Z_calc: a-6c10f; b-sc1f10; out-s7c20f; latency 3
Z_calc d_mult_cos_features_instance_step2 (
    .CLK(clk),
    .A(distance_new),
    .B(del_cos_th),
    .P(d_mult_cos)
);
wire signed [23:0] cos_dis;      //s7c16f;
assign cos_dis = d_mult_cos[27:4];

wire signed [35:0] calc_x;
wire signed [35:0] calc_y;
wire signed [15:0] x_out;
wire signed [15:0] y_out;

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

wire flag_point_under_ground_del;
wire signed [15:0] z_out_del;
delay # (
    .N(17),
    .DELAY(3) ) DEL_flag_valid_z (
    .clk(clk),
    .ce(1'b1),
    .indata({z_out, flag_point_under_ground}),
    .odata({z_out_del, flag_point_under_ground_del})
);

//s6c9f
assign x_out = calc_x[32:17];
assign y_out = calc_y[32:17];
// sumaric latency for x, y is 9

// calc slice w l

//s6c9f
wire signed [15:0] x_min_slice [9:0];
wire signed [15:0] x_max_slice [9:0];
wire [9:0] compare_xmin_slice;
wire [9:0] compare_xmax_slice;

wire signed [15:0] y_min_slice [9:0];
wire signed [15:0] y_max_slice [9:0];
wire [9:0] compare_ymin_slice;
wire [9:0] compare_ymax_slice;

wire flag_new_points_del9;  
delay # (
    .N(1),
    .DELAY(9) ) DEL_flag_new_points_del9_instance (
    .clk(clk),
    .ce(1'b1),
    .indata(flag_new_points),
    .odata(flag_new_points_del9)
);

wire [9:0] del_compare_slice;
delay # (
    .N(10),
    .DELAY(3) ) DEL_compare_slice ( 
    .clk(clk),
    .ce(1'b1),
    .indata(compare_slice),
    .odata(del_compare_slice)
);

genvar m;
generate
     for(m=0; m<10; m=m+1)
     begin
         assign compare_xmin_slice[m] = (x_min_slice[m] > x_out);
         assign compare_xmax_slice[m] = (x_max_slice[m] < x_out);
         
         assign compare_ymin_slice[m] = (y_min_slice[m] > y_out);
         assign compare_ymax_slice[m] = (y_max_slice[m] < y_out);
     
        register #(.N(16)) rej_x_min_slice (
            .clk(clk),
            .ce(del_compare_slice[m] & compare_xmin_slice[m] & flag_new_points_del9 & flag_point_under_ground_del),      //[TODO]
            .rst(flag_reset),                          //[TODO]
            .d(x_out),
            .q(x_min_slice[m])
        );
        register_zmax #(.N(16)) rej_x_max_slice (
            .clk(clk),
            .ce(del_compare_slice[m] & compare_xmax_slice[m] & flag_new_points_del9 & flag_point_under_ground_del),      //[TODO]
            .rst(flag_reset),                       //[TODO]
            .d(x_out),
            .q(x_max_slice[m])
        );
        
        register #(.N(16)) rej_y_min_slice (
            .clk(clk),
            .ce(del_compare_slice[m] & compare_ymin_slice[m] & flag_new_points_del9 & flag_point_under_ground_del),      //[TODO]
            .rst(flag_reset),                          //[TODO]
            .d(y_out),
            .q(y_min_slice[m])
        );
        register_zmax #(.N(16)) rej_y_max_slice (
            .clk(clk),
            .ce(del_compare_slice[m] & compare_ymax_slice[m] & flag_new_points_del9 & flag_point_under_ground_del),      //[TODO]
            .rst(flag_reset),                       //[TODO]
            .d(y_out),
            .q(y_max_slice[m])
        );
     end
endgenerate

//s6c9f
wire signed [15:0] w_slice [9:0];
wire signed [15:0] l_slice [9:0];

//5c9f
wire [13:0] uw_slice [9:0];
wire [13:0] ul_slice [9:0];

generate
    for (m=0; m<10; m=m+1)
    begin
        assign uw_slice[m] = w_slice[m][13:0];
        assign ul_slice[m] = l_slice[m][13:0];
        
        // latency 2        
        hwl_calc w_calc_slice(
            .CLK(clk),
            .A(y_max_slice[m]),
            .B(y_min_slice[m]),
            .S(w_slice[m])
        );
        
        hwl_calc l_calc_slice(
            .CLK(clk),
            .A(x_max_slice[m]),
            .B(x_min_slice[m]),
            .S(l_slice[m])
        );
    end
endgenerate

// Normalization

wire [12:0] wl_norm [1:0][9:0];
wire [13:0] wl_slice [1:0][9:0];

assign wl_norm[0][0] = 13'b0101000000000;    //4c9f
assign wl_norm[0][1] = 13'b1001000000000;
assign wl_norm[0][2] = 13'b1001000000000;
assign wl_norm[0][3] = 13'b1001000000000;
assign wl_norm[0][4] = 13'b0110000000000;
assign wl_norm[0][5] = 13'b1000100000000;
assign wl_norm[0][6] = 13'b0110100110000;
assign wl_norm[0][7] = 13'b1000011010000;
assign wl_norm[0][8] = 13'b1000100000000;
assign wl_norm[0][9] = 13'b0110110100000;
assign wl_norm[1][0] = 13'b1100010100000;
assign wl_norm[1][1] = 13'b1011101100000;
assign wl_norm[1][2] = 13'b1011111010000;
assign wl_norm[1][3] = 13'b1110000000000;
assign wl_norm[1][4] = 13'b1100000000000;
assign wl_norm[1][5] = 13'b1110000000000;
assign wl_norm[1][6] = 13'b1110000000000;
assign wl_norm[1][7] = 13'b1110000000000;
assign wl_norm[1][8] = 13'b1101000000000;
assign wl_norm[1][9] = 13'b1110000000000;

genvar p;
generate
    for(p=0; p<10; p=p+1)
    begin
        assign wl_slice[0][p] = uw_slice[p];
        assign wl_slice[1][p] = ul_slice[p];
    end
endgenerate


wire flag_end_new_points_del10;  
delay # (
    .N(1),
    .DELAY(10) ) DEL_flag_end_new_points_del10_instance (
    .clk(clk),
    .ce(1'b1),
    .indata(flag_end_new_point),
    .odata(flag_end_new_points_del10)
);

reg state_wl_slice = 0;
reg cnt_wl = 0;
reg [3:0] cnt_wl_num = 0;
reg flag_div_wl = 0;
always @ (posedge clk)
begin
    case(state_wl_slice)
      0:begin //IDLE
        if(flag_end_new_points_del10)
        begin
            state_wl_slice <= 1;
            flag_div_wl <= 1;
        end end
      1:begin
        cnt_wl_num <= cnt_wl_num + 1;
        if (cnt_wl_num >= 9)
        begin
            cnt_wl_num <= 0;
            cnt_wl <= cnt_wl + 1;
            if (cnt_wl >= 1)
            begin
                cnt_wl <= 0;
                state_wl_slice <= 0;
                flag_div_wl <= 0;
            end
        end end
    endcase
end 

wire flag_wlslice_valid;
wire [31:0] wl_slice_div_out;
//latency 31: in: 5c9f / 4c9f
div_wl_slice div_wl_slice_instance (
    .aclk(clk),
    .s_axis_divisor_tvalid(flag_div_wl),   //[TODO]
    .s_axis_divisor_tdata({3'b0,wl_norm[cnt_wl][cnt_wl_num]}),
    .s_axis_dividend_tvalid(flag_div_wl),  //[TODO]
    .s_axis_dividend_tdata({2'b0,wl_slice[cnt_wl][cnt_wl_num]}),
    .m_axis_dout_tvalid(flag_wlslice_valid),
    .m_axis_dout_tdata(wl_slice_div_out)    //31:0, but 28:0 is valid, 15b for fraction
);

wire [15:0] wl_slice_out;
assign wl_slice_out = wl_slice_div_out[15:0];

//sumaric latency for first w is 43

//delay 3

wire flag_wlslice_valid_del;  
wire [15:0] wl_slice_out_del;
delay # (
    .N(17),
    .DELAY(3) ) DEL_flag_wlslice_valid_del (
    .clk(clk),
    .ce(1'b1),
    .indata({flag_wlslice_valid,wl_slice_out}),
    .odata({flag_wlslice_valid_del,wl_slice_out_del})
);

reg state_wl_write = 0;
reg [3:0] cnt_wlslice_write = 0;
always @ (posedge clk)
begin
    case(state_wl_write)
        0:begin
        if (flag_wlslice_valid_del)
        begin
            reg_feature <= wl_slice_out_del;
            if (num_points_slice[cnt_wlslice_write] == 11'b0)
            begin
                reg_feature <= 16'b0;
            end
            state_wl_write <= 1;
            reg_address <= 6'd14;
            reg_flag_ena <= 1;
            cnt_wlslice_write <= cnt_wlslice_write + 1;
        end end
        1:begin
            reg_feature <= wl_slice_out_del;
            if (num_points_slice[cnt_wlslice_write] == 11'b0)
            begin
                reg_feature <= 16'b0;
            end
            reg_flag_ena <= 1;
            cnt_wlslice_write <= cnt_wlslice_write + 1;
            if (cnt_wlslice_write >= 4'd9)
            begin
                cnt_wlslice_write <= 4'b0;
            end
            if (reg_address >= 6'd33)
            begin
                cnt_wlslice_write <= 4'b0;
                state_wl_write <= 0;
                reg_flag_ena <= 0;
            end
            else
            begin
                reg_address <= reg_address + 1;
            end
        end
    endcase
end
//sumaric latency with write for first w is 48

//// 5. 6. COVARIANCE i TENSOR

//// Normalize points in cluster

//wire signed [15:0] x_mean = x_mean_reg;
//wire signed [15:0] y_mean = y_mean_reg;
//wire signed [15:0] z_mean = z_mean_reg;

//wire signed [15:0] x_norma;
//wire signed [15:0] y_norma;
//wire signed [15:0] z_norma; //s6c9f

////latency 2; in s6c9f
//sub_normalize_xyz sub_normalize_x (
//    .CLK(clk),
//    .CE(flag_new_points_del9 & flag_point_under_ground_del),       //[TODO]
//    .A(x_out),
//    .B(x_mean),
//    .S(x_norma)
//);
//sub_normalize_xyz sub_normalize_y (
//    .CLK(clk),
//    .CE(flag_new_points_del9 & flag_point_under_ground_del),       //[TODO]
//    .A(y_out),
//    .B(y_mean),
//    .S(y_norma)
//);
//sub_normalize_xyz sub_normalize_z (
//    .CLK(clk),
//    .CE(flag_new_points_del9 & flag_point_under_ground_del),       //[TODO]
//    .A(z_out_del),
//    .B(z_mean),
//    .S(z_norma)
//);
////latency 11 for xyz_norma

//// Compute elements of covariance matrix
////[TODO]

////6. Inertia tensor

//wire signed [31:0] xx; wire signed [31:0] yy; wire signed [31:0] zz; 
//wire signed [31:0] xy; wire signed [31:0] zx; wire signed [31:0] yz;

//wire signed [23:0] xy_out; wire signed [23:0] zx_out; wire signed [23:0] yz_out;

//assign xy_out = xy[23:0];
//assign zx_out = xy[23:0];
//assign yz_out = xy[23:0];

//// latency 3, in:s6c9f, out:s13c18f
//mult_inertia_tensor mult_inertia_xx(
//    .CLK(clk),
//    .A(x_norma),
//    .B(x_norma),
//    .P(xx)
//);
//mult_inertia_tensor mult_inertia_yy(
//    .CLK(clk),
//    .A(y_norma),
//    .B(y_norma),
//    .P(yy)
//);
//mult_inertia_tensor mult_inertia_zz(
//    .CLK(clk),
//    .A(z_norma),
//    .B(z_norma),
//    .P(zz)
//);

//mult_inertia_tensor mult_inertia_xy(
//    .CLK(clk),
//    .A(x_norma),
//    .B(y_norma),
//    .P(xy)
//);
//mult_inertia_tensor mult_inertia_yz(
//    .CLK(clk),
//    .A(y_norma),
//    .B(z_norma),
//    .P(yz)
//);
//mult_inertia_tensor mult_inertia_zx(
//    .CLK(clk),
//    .A(z_norma),
//    .B(x_norma),
//    .P(zx)
//);

//wire signed [31:0] y_plus_z;    //s13c18f
//wire signed [31:0] x_plus_z;
//wire signed [31:0] x_plus_y;

//wire signed [22:0] y_plus_z_out;    //s13c9f
//wire signed [22:0] x_plus_z_out;
//wire signed [22:0] x_plus_y_out;

////latency 3; s13c18f
//add_inetria_tensor add_inetria_yz (
//    .CLK(clk),
//    .A(yy),
//    .B(zz),
//    .S(y_plus_z)  
//);
//add_inetria_tensor add_inetria_xz (
//    .CLK(clk),
//    .A(xx),
//    .B(zz),
//    .S(x_plus_z)  
//);
//add_inetria_tensor add_inetria_xy (
//    .CLK(clk),
//    .A(xx),
//    .B(yy),
//    .S(x_plus_y)  
//);

//assign y_plus_z_out = y_plus_z[22:0];   //s13c9f
//assign x_plus_z_out = x_plus_z[22:0];
//assign x_plus_y_out = x_plus_y[22:0];
////latency 17 for x_plus_y_out itd...

//// Caculate inertia tensor martix elements

//wire flag_new_points_del17;
//wire flag_point_under_ground_del11;  
//delay # (
//    .N(17),
//    .DELAY(1) ) DEL_flag_new_points_del17 (
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_new_points),
//    .odata(flag_new_points_del17)
//);
//delay # (
//    .N(11),
//    .DELAY(1) ) DEL_flag_point_under_ground_del11 (
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_point_under_ground),
//    .odata(flag_point_under_ground_del11)
//);

//wire signed [28:0] acc_xx; wire signed [28:0] acc_yy; wire signed [28:0] acc_zz;
//wire signed [28:0] acc_xy; wire signed [28:0] acc_yz; wire signed [28:0] acc_zx;

//// in: s13c9f , out: s19c9f
//acc_inertia_tensor acc_inertia_tensor_xx (
//    .clk(clk),
//    .ce(flag_new_points_del17 & flag_point_under_ground_del11),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(y_plus_z_out),
//    .S(acc_xx)
//);
//acc_inertia_tensor acc_inertia_tensor_yy (
//    .clk(clk),
//    .ce(flag_new_points_del17 & flag_point_under_ground_del11),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(x_plus_z_out),
//    .S(acc_yy)
//);
//acc_inertia_tensor acc_inertia_tensor_zz (
//    .clk(clk),
//    .ce(flag_new_points_del17 & flag_point_under_ground_del11),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(x_plus_y_out),
//    .S(acc_zz)
//);

//wire flag_new_points_del14;
//wire flag_point_under_ground_del8;  
//delay # (
//    .N(14),
//    .DELAY(1) ) DEL_flag_new_points_del14 (
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_new_points),
//    .odata(flag_new_points_del14)
//);
//delay # (
//    .N(8),
//    .DELAY(1) ) DEL_flag_point_under_ground_del8 (
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_point_under_ground),
//    .odata(flag_point_under_ground_del8)
//);

//acc_inertia_tensor acc_inertia_tensor_xy (
//    .clk(clk),
//    .ce(flag_new_points_del14 & flag_point_under_ground_del8),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(xy_out),
//    .S(acc_xy)
//);
//acc_inertia_tensor acc_inertia_tensor_yz (
//    .clk(clk),
//    .ce(flag_new_points_del14 & flag_point_under_ground_del8),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(yz_out),
//    .S(acc_yz)
//);
//acc_inertia_tensor acc_inertia_tensor_zx (
//    .clk(clk),
//    .ce(flag_new_points_del14 & flag_point_under_ground_del8),      //[TODO]
//    .rst(flag_reset),     //[TODO]  
//    .A(zx_out),
//    .S(acc_zx)  //s19c9f
//);

//// xy, yz, zx should be with '-'
//wire signed [28:0] acc_xy_not;
//wire signed [28:0] acc_yz_not;
//wire signed [28:0] acc_zx_not;
//assign acc_xy_not = ~acc_xy;
//assign acc_yz_not = ~acc_yz;
//assign acc_zx_not = ~acc_zx;

//wire signed [20:0] xy_not_c;
//wire signed [20:0] yz_not_c;
//wire signed [20:0] zx_not_c;
////latency 2
//add_one add_one_xy (
//    .CLK(clk),
//    .CE(),      //[TODO]
//    .A(acc_xy_not[28:8]),
//    .B(1'b1),
//    .S(xy_not_c)
//);
//add_one add_one_yz (
//    .CLK(clk),
//    .CE(),      //[TODO]
//    .A(acc_yz_not[28:8]),
//    .B(1'b1),
//    .S(yz_not_c)
//);
//add_one add_one_zx (
//    .CLK(clk),
//    .CE(),      //[TODO]
//    .A(acc_zx_not[28:8]),
//    .B(1'b1),
//    .S(zx_not_c)
//);

//wire signed [28:0] acc_xy_out; wire signed [28:0] acc_yz_out; wire signed [28:0] acc_zx_out;
//assign acc_xy_out = {xy_not_c,acc_xy_not[7:0]};
//assign acc_yz_out = {yz_not_c,acc_yz_not[7:0]};
//assign acc_zx_out = {zx_not_c,acc_zx_not[7:0]}; 

//// Normalize value of inertia tensor elements

////s19c15f
//wire signed [34:0] inertia1_div; wire signed [34:0] inertia2_div; wire signed [34:0] inertia3_div;
//wire signed [34:0] inertia4_div; wire signed [34:0] inertia5_div; wire signed [34:0] inertia6_div; 

//assign inertia1_div = {acc_xx,6'b0} >>> 8192;
//assign inertia2_div = {acc_yy,6'b0} >>> 32768;
//assign inertia3_div = {acc_zz,6'b0} >>> 32768;
//assign inertia4_div = {acc_xy_out,6'b0} >>> 4096;
//assign inertia5_div = {acc_yz_out,6'b0} >>> 512;
//assign inertia6_div = {acc_zx_out,6'b0} >>> 1024;

//wire signed [15:0] inertia [5:0];

//assign inertia[0] = inertia1_div[15:0];
//assign inertia[1] = inertia2_div[15:0];
//assign inertia[2] = inertia3_div[15:0];
//assign inertia[3] = inertia4_div[15:0];
//assign inertia[4] = inertia5_div[15:0];
//assign inertia[5] = inertia6_div[15:0];

////latency 17 for inertia 3 4 5
////latency 18 for inertia 0 1 2 

//// write to BRAM

//wire flag_end_new_points_del17;
//delay # (
//    .N(1),
//    .DELAY(17) ) flag_end_new_points_del17_instance_step2 ( 
//    .clk(clk),
//    .ce(1'b1),
//    .indata(flag_end_new_point),
//    .odata(flag_end_new_points_del17)
//);

//reg state_tensor_write = 0;
//reg [2:0] cnt_tensor = 0;
//always @ (posedge clk)
//begin
//    case(state_tensor_write)
//        0:begin
//        if (flag_end_new_points_del17)
//        begin
//            state_tensor_write <= 1;
//            reg_feature <= inertia[cnt_tensor];
//            reg_address <= 7'd10;
//            reg_flag_ena <= 1;
//            cnt_tensor <= cnt_tensor + 1;
//        end end
//        1:begin
//            reg_feature <= inertia[cnt_tensor];
//            reg_address <= reg_address + 1;
//            reg_flag_ena <= 1;
//            cnt_tensor <= cnt_tensor + 1;
//            if (reg_address >= 7'd15)
//            begin
//                cnt_tensor <= 0;
//                state_tensor_write <= 0;
//                reg_flag_ena <= 0;
//            end
//        end
//    endcase
//end

//END

reg state_reset = 0;
reg reg_flag_reset = 0;
always @ (posedge clk)
begin
    case(state_reset)
      0:begin //IDLE
        reg_flag_reset <= 0;
        if(flag_wlslice_valid_del)
        begin
            state_reset <= 1;
        end end
      1:begin
        if (~flag_wlslice_valid_del)
        begin
            state_reset <= 0;
            reg_flag_reset <= 1;
        end end
    endcase
end

assign flag_reset = reg_flag_reset;

// READ FROM BRAM

reg state_read = 0;
reg [5:0] reg_address_read = 0;
reg reg_flag_enb = 0;
assign flag_enb = reg_flag_enb;
assign address_read = reg_address_read;

always @ (posedge clk)
begin
    case(state_read)
        0:begin
        if (flag_reset)
        begin
            state_read <= 1;
            reg_address_read <= 6'd0;
            reg_flag_enb <= 1;
        end end
        1:begin
            reg_address_read <= reg_address_read + 1;
            reg_flag_enb <= 1;
            if (reg_address_read >= 6'd59)
            begin
                state_read <= 0;
                reg_flag_enb <= 0;
            end
        end
    endcase
end

wire flag_enb_del;
delay # (
    .N(1),
    .DELAY(2) ) delay_flag_valid_out ( 
    .clk(clk),
    .ce(1'b1),
    .indata(flag_enb),
    .odata(flag_enb_del)
);

assign flag_valid_out = flag_enb_del;

endmodule