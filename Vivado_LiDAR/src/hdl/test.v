`timescale 1ns / 1ps

module test(
);

reg clk = 1'b0;

initial
begin
    while (1)
    begin
       #5; clk = 1'b1;
       #5; clk = 1'b0;
    end
end

wire [15:0]angle;      
wire [15:0]distance;  
wire [7:0]intensity; 
wire [7:0]laser; 

wire [15:0]buff_angle;      
wire [15:0]buff_distance;  
wire [7:0]buff_intensity; 
wire [7:0]buff_laser;   

wire [59:0]remove_all;
wire flag_frame;
wire flag_remove_end;
wire flag;

wire flag_buff_valid;
wire del_flag_buff_valid;

data_acquisition data(
    .clk(clk),
    .flag_out(flag),
    .flag_frame(flag_frame),
    .distance_out(distance),      //2B distance, 2B angle (fi), 1B laser_num (theta), 1B intensity
    .angle_out(angle), 
    .laser_num_out(laser),        //0-63, 0 is the lowest vertical angle
    .intensity_out(intensity) 
);

remove_ground ground(
    .clk(clk),
    .flag(flag),
    .flag_frame(flag_frame),      
    .distance(distance),      
    .laser_num(laser),   //0-63, 0 is the lowest vertical angle

    .remove_all(remove_all),
    .flag_remove_end(flag_remove_end)
);

wire valid_point;
sel_valid_point sel_valid_points(
    .clk(clk),
    .angle(buff_angle),       
    .distance(buff_distance),    
    .intensity(buff_intensity),   
    .laser_num(buff_laser),
    .remove_all(remove_all),
    .flag_buff_valid(del_flag_buff_valid),
    
    .valid_point(valid_point)
);

wire flag_cluster_valid;        //star loading, because first cluster are save

save_cells save_cells0 (
    .clk(clk),
    .angle(buff_angle),
    .distance(buff_distance),
    .intensity(buff_intensity),
    .laser_num(buff_laser),
    
    .valid_point(valid_point),
    .flag_buff_valid(del_flag_buff_valid),
      
    .cells_part(2'd0), //0,1,2
    
    .flag_cluster_valid(flag_cluster_valid)
);

save_cells_1 save_cells1 (
    .clk(clk),
    .angle(buff_angle),
    .distance(buff_distance),
    .intensity(buff_intensity),
    .laser_num(buff_laser),
    
    .valid_point(valid_point),
    .flag_buff_valid(del_flag_buff_valid),
      
    .cells_part(2'd1) //0,1,2
);

save_cells_2 save_cells2 (
    .clk(clk),
    .angle(buff_angle),
    .distance(buff_distance),
    .intensity(buff_intensity),
    .laser_num(buff_laser),
    
    .valid_point(valid_point),
    .flag_buff_valid(del_flag_buff_valid),
      
    .cells_part(2'd2) //0,1,2
);

wire [15:0] distance_0;
wire [15:0] angle_0;
wire [7:0] intensity_0;
wire [7:0] laser_num_0;
wire flag_cluster_0;

wire [15:0] distance_1;
wire [15:0] angle_1;
wire [7:0] intensity_1;
wire [7:0] laser_num_1;
wire flag_cluster_1;

wire [15:0] distance_2;
wire [15:0] angle_2;
wire [7:0] intensity_2;
wire [7:0] laser_num_2;
wire flag_cluster_2;

reg flag_end_out_0 = 1'b1;
wire flag_end_wire_out_0;
reg flag_end_out_1 = 1'b1;
wire flag_end_wire_out_1;
reg flag_end_out_2 = 1'b1;
wire flag_end_wire_out_2;

load_cells load_cells_0(
    .cell_part(2'd0),
    .flag_buff_valid(flag_cluster_valid & flag_end_wire_out_0),
    
    .flag_out(flag_cluster_0),
    .angle(angle_0),     
    .distance(distance_0),
    .intensity(intensity_0),
    .laser_num(laser_num_0)
);

load_cells load_cells_1(
    .cell_part(2'd1),
    .flag_buff_valid(flag_cluster_valid & flag_end_wire_out_1),
    
    .flag_out(flag_cluster_1),
    .angle(angle_1),     
    .distance(distance_1),
    .intensity(intensity_1),
    .laser_num(laser_num_1)
);

load_cells load_cells_2(
    .cell_part(2'd2),
    .flag_buff_valid(flag_cluster_valid & flag_end_wire_out_2),
    
    .flag_out(flag_cluster_2),
    .angle(angle_2),     
    .distance(distance_2),
    .intensity(intensity_2),
    .laser_num(laser_num_2)
);

wire [15:0] h_out_0;
wire [15:0] w_out_0;
wire [15:0] l_out_0;
wire [15:0] num_points_norm_out_0;
wire [10:0] num_points_out_0;
wire [15:0] intens_mean_0;
wire flag_valid_out_0;
wire flag_intenshist_valid_0;
wire [15:0] intens_hist_out_0;
wire signed [15:0] x_min_0;
wire signed [15:0] y_min_0;
wire signed [15:0] z_min_0;
wire signed [15:0] x_max_0;
wire signed [15:0] y_max_0;
wire signed [15:0] z_max_0;

wire [15:0] h_out_1;
wire [15:0] w_out_1;
wire [15:0] l_out_1;
wire [15:0] num_points_norm_out_1;
wire [10:0] num_points_out_1;
wire [15:0] intens_mean_1;
wire flag_valid_out_1;
wire flag_intenshist_valid_1;
wire [15:0] intens_hist_out_1;
wire signed [15:0] x_min_1;
wire signed [15:0] y_min_1;
wire signed [15:0] z_min_1;
wire signed [15:0] x_max_1;
wire signed [15:0] y_max_1;
wire signed [15:0] z_max_1;

wire [15:0] h_out_2;
wire [15:0] w_out_2;
wire [15:0] l_out_2;
wire [15:0] num_points_norm_out_2;
wire [10:0] num_points_out_2;
wire [15:0] intens_mean_2;
wire flag_valid_out_2;
wire flag_intenshist_valid_2;
wire [15:0] intens_hist_out_2;
wire signed [15:0] x_min_2;
wire signed [15:0] y_min_2;
wire signed [15:0] z_min_2;
wire signed [15:0] x_max_2;
wire signed [15:0] y_max_2;
wire signed [15:0] z_max_2;

extract_features extract_features_0(
    .clk(clk),
    .angle(angle_0),       
    .distance(distance_0),    
    .intensity(intensity_0),   
    .laser_num(laser_num_0),
    .flag_valid(flag_cluster_0),
    
    .flag_valid_out(flag_valid_out_0),
    .h_out(h_out_0),
    .w_out(w_out_0),
    .l_out(l_out_0),
    .x_min_out(x_min_0),
    .y_min_out(y_min_0),
    .z_min_out(z_min_0),
    .x_max_out(x_max_0),
    .y_max_out(y_max_0),
    .z_max_out(z_max_0),
    .num_points_out(num_points_out_0),
    .num_points_norm_out(num_points_norm_out_0),
    .intens_mean(intens_mean_0),
    
    .flag_intenshist_valid(flag_intenshist_valid_0),
    .intens_hist_out(intens_hist_out_0)
);

extract_features extract_features_1(
    .clk(clk),
    .angle(angle_1),       
    .distance(distance_1),    
    .intensity(intensity_1),   
    .laser_num(laser_num_1),
    .flag_valid(flag_cluster_1),
    
    .flag_valid_out(flag_valid_out_1),
    .h_out(h_out_1),
    .w_out(w_out_1),
    .l_out(l_out_1),
    .x_min_out(x_min_1),
    .y_min_out(y_min_1),
    .z_min_out(z_min_1),
    .x_max_out(x_max_1),
    .y_max_out(y_max_1),
    .z_max_out(z_max_1),
    .num_points_out(num_points_out_1),
    .num_points_norm_out(num_points_norm_out_1),
    .intens_mean(intens_mean_1),
    
    .flag_intenshist_valid(flag_intenshist_valid_1),
    .intens_hist_out(intens_hist_out_1)
);

extract_features extract_features_2(
    .clk(clk),
    .angle(angle_2),       
    .distance(distance_2),    
    .intensity(intensity_2),   
    .laser_num(laser_num_2),
    .flag_valid(flag_cluster_2),
    
    .flag_valid_out(flag_valid_out_2),
    .x_min_out(x_min_2),
    .y_min_out(y_min_2),
    .z_min_out(z_min_2),
    .x_max_out(x_max_2),
    .y_max_out(y_max_2),
    .z_max_out(z_max_2),
    .h_out(h_out_2),
    .w_out(w_out_2),
    .l_out(l_out_2),
    .num_points_out(num_points_out_2),
    .num_points_norm_out(num_points_norm_out_2),
    .intens_mean(intens_mean_2),
    
    .flag_intenshist_valid(flag_intenshist_valid_2),
    .intens_hist_out(intens_hist_out_2)
);

wire [15:0]angle_0_step2;      
wire [15:0]distance_0_step2;  
wire [7:0]intensity_0_step2; 
wire [7:0]laser_0_step2; 

wire [15:0]angle_1_step2;      
wire [15:0]distance_1_step2;  
wire [7:0]intensity_1_step2; 
wire [7:0]laser_1_step2; 

wire [15:0]angle_2_step2;      
wire [15:0]distance_2_step2;  
wire [7:0]intensity_2_step2; 
wire [7:0]laser_2_step2; 

wire flag_new_points_0;
load_cells_step2 load_cells_features2_0(
    .cell_part(2'd0),
    .flag_buff_valid(flag_valid_out_0),

    .flag_out(flag_new_points_0),
    .angle(angle_0_step2),     
    .distance(distance_0_step2),  
    .intensity(intensity_0_step2),  
    .laser_num(laser_0_step2)   
);

wire flag_new_points_1;
load_cells_step2 load_cells_features2_1(
    .cell_part(2'd1),
    .flag_buff_valid(flag_valid_out_1),

    .flag_out(flag_new_points_1),
    .angle(angle_1_step2),     
    .distance(distance_1_step2),  
    .intensity(intensity_1_step2),  
    .laser_num(laser_1_step2)   
);

wire flag_new_points_2;
load_cells_step2 load_cells_features2_2(
    .cell_part(2'd2),
    .flag_buff_valid(flag_valid_out_2),

    .flag_out(flag_new_points_2),
    .angle(angle_2_step2),     
    .distance(distance_2_step2),  
    .intensity(intensity_2_step2),  
    .laser_num(laser_2_step2)   
);

wire [15:0]features_0;
wire features_valid_0;
wire signed [47:0] box_min_0;
wire signed [47:0] box_max_0;
wire [15:0]features_1;
wire features_valid_1;
wire signed [47:0] box_min_1;
wire signed [47:0] box_max_1;
wire [15:0]features_2;
wire features_valid_2;
wire signed [47:0] box_min_2;
wire signed [47:0] box_max_2;

extract_features_step2 extract_features_step2_0(
    .clk(clk),
    
    .angle(angle_0_step2),
    .distance(distance_0_step2),  
    .intensity(intensity_0_step2),  
    .laser(laser_0_step2),
    .flag_new_points(flag_new_points_0),
    
    .flag_valid_hwlni(flag_valid_out_0),
    .flag_valid_intensity(flag_intenshist_valid_0),
    .x_min(x_min_0),     //s6c9f
    .y_min(y_min_0),
    .z_min(z_min_0),
    .x_max(x_max_0),
    .y_max(y_max_0),
    .z_max(z_max_0),
    .num_points(num_points_out_0),
    
    .h_in(h_out_0),             
    .w_in(w_out_0),
    .l_in(l_out_0),
    .num_points_norm_in(num_points_norm_out_0),
    .mean_intensity_in(intens_mean_0),
    .hist_intensity_in(intens_hist_out_0),
    
    .features(features_0),
    .flag_valid_out(features_valid_0),
    
    .box_min(box_min_0),
    .box_max(box_max_0)
);

extract_features_step2 extract_features_step2_1(
    .clk(clk),
    
    .angle(angle_1_step2),
    .distance(distance_1_step2),  
    .intensity(intensity_1_step2),  
    .laser(laser_1_step2),
    .flag_new_points(flag_new_points_1),
    
    .flag_valid_hwlni(flag_valid_out_1),
    .flag_valid_intensity(flag_intenshist_valid_1),
    .x_min(x_min_1),     //s6c9f
    .y_min(y_min_1),
    .z_min(z_min_1),
    .x_max(x_max_1),
    .y_max(y_max_1),
    .z_max(z_max_1),
    .num_points(num_points_out_1),
    
    .h_in(h_out_1),             
    .w_in(w_out_1),
    .l_in(l_out_1),
    .num_points_norm_in(num_points_norm_out_1),
    .mean_intensity_in(intens_mean_1),
    .hist_intensity_in(intens_hist_out_1),
    
    .features(features_1),
    .flag_valid_out(features_valid_1),
    
    .box_min(box_min_1),
    .box_max(box_max_1)
);

extract_features_step2 extract_features_step2_2(
    .clk(clk),
    
    .angle(angle_2_step2),
    .distance(distance_2_step2),  
    .intensity(intensity_2_step2),  
    .laser(laser_2_step2),
    .flag_new_points(flag_new_points_2),
    
    .flag_valid_hwlni(flag_valid_out_2),
    .flag_valid_intensity(flag_intenshist_valid_2),
    .x_min(x_min_2),     //s6c9f
    .y_min(y_min_2),
    .z_min(z_min_2),
    .x_max(x_max_2),
    .y_max(y_max_2),
    .z_max(z_max_2),
    .num_points(num_points_out_2),
    
    .h_in(h_out_2),             
    .w_in(w_out_2),
    .l_in(l_out_2),
    .num_points_norm_in(num_points_norm_out_2),
    .mean_intensity_in(intens_mean_2),
    .hist_intensity_in(intens_hist_out_2),
    
    .features(features_2),
    .flag_valid_out(features_valid_2),
    
    .box_min(box_min_2),
    .box_max(box_max_2)
 );
 
 reg state_end_0 = 0;
 assign flag_end_wire_out_0 = flag_end_out_0;
 always @ (posedge clk)
 begin
     case(state_end_0)
       0:begin
         flag_end_out_0 <= 0;
         if (~flag_cluster_valid)
         begin
            flag_end_out_0 <= 1;
         end
         if(features_valid_0)
         begin
             state_end_0 <= 1;
             flag_end_out_0 <= 1;
         end end
       1:begin
         flag_end_out_0 <= 0;
         if(~features_valid_0)
         begin
             state_end_0 <= 0;
         end end
     endcase
 end
 
 reg state_end_1 = 0;
 assign flag_end_wire_out_1 = flag_end_out_1;
 always @ (posedge clk)
 begin
     case(state_end_1)
       0:begin
         flag_end_out_1 <= 0;
         if (~flag_cluster_valid)
         begin
            flag_end_out_1 <= 1;
         end
         if(features_valid_1)
         begin
             state_end_1 <= 1;
             flag_end_out_1 <= 1;
         end end
       1:begin
         flag_end_out_1 <= 0;
         if(~features_valid_1)
         begin
             state_end_1 <= 0;
         end end
     endcase
 end
 
 reg state_end_2 = 0;
 assign flag_end_wire_out_2 = flag_end_out_2;
 always @ (posedge clk)
 begin
     case(state_end_2)
       0:begin
         flag_end_out_2 <= 0;
         if (~flag_cluster_valid)
         begin
            flag_end_out_2 <= 1;
         end
         if(features_valid_2)
         begin
             state_end_2 <= 1;
             flag_end_out_2 <= 1;
         end end
       1:begin
         flag_end_out_2 <= 0;
         if(~features_valid_2)
         begin
             state_end_2 <= 0;
         end end
     endcase
 end
 
save_features save_features_instance_0 (
 .clk(clk),
 .cnt(2'd0),
 .feature(features_0),
 .flag_valid(features_valid_0)
);
save_features save_features_instance_1 (
  .clk(clk),
  .cnt(2'd1),
  .feature(features_1),
  .flag_valid(features_valid_1)
);
save_features save_features_instance_2 (
   .clk(clk),
   .cnt(2'd2),
   .feature(features_2),
   .flag_valid(features_valid_2)
);

wire svm_valid_out_0;
wire signed [21:0] acc_svm_0;
wire svm_valid_out_1;
wire signed [21:0] acc_svm_1;
wire svm_valid_out_2;
wire signed [21:0] acc_svm_2;

svm svm_instance_0 (
    .clk(clk),
    .features(features_0),
    .flag_valid_features(features_valid_0),
    .acc_svm_out(acc_svm_0),        //s8c13f
    .flag_valid_out(svm_valid_out_0)
);
svm svm_instance_1 (
    .clk(clk),
    .features(features_1),
    .flag_valid_features(features_valid_1),
    .acc_svm_out(acc_svm_1),        //s8c13f
    .flag_valid_out(svm_valid_out_1)
);
svm svm_instance_2 (
    .clk(clk),
    .features(features_2),
    .flag_valid_features(features_valid_2),
    .acc_svm_out(acc_svm_2),        //s8c13f
    .flag_valid_out(svm_valid_out_2)
);

wire [15:0] svm_score_0;
wire valid_score_0;
wire [15:0] svm_score_1;
wire valid_score_1;
wire [15:0] svm_score_2;
wire valid_score_2;

calc_score calc_0(
    .clk(clk),
    .svm_out(acc_svm_0),
    .flag_valid_svm(svm_valid_out_0),
    .svm_score_out(svm_score_0),     //1c15f
    .valid_score(valid_score_0)
);
calc_score calc_1(
    .clk(clk),
    .svm_out(acc_svm_1),
    .flag_valid_svm(svm_valid_out_1),
    .svm_score_out(svm_score_1),     //1c15f
    .valid_score(valid_score_1)
);
calc_score calc_2(
    .clk(clk),
    .svm_out(acc_svm_2),
    .flag_valid_svm(svm_valid_out_2),
    .svm_score_out(svm_score_2),     //1c15f
    .valid_score(valid_score_2)
);

save_scores save_scores_0(
    .clk(clk),
    .cnt(2'd0),
    .score(svm_score_0),
    .box_min(box_min_0),
    .box_max(box_max_0),
    .flag_valid(valid_score_0)
);
save_scores save_scores_1(
    .clk(clk),
    .cnt(2'd1),
    .score(svm_score_1),
    .box_min(box_min_1),
    .box_max(box_max_1),
    .flag_valid(valid_score_1)
);
save_scores save_scores_2(
    .clk(clk),
    .cnt(2'd2),
    .score(svm_score_2),
    .box_min(box_min_2),
    .box_max(box_max_2),
    .flag_valid(valid_score_2)
);

wire empty_intensity;
wire empty_laser;
wire empty_distance;
wire empty_angle;
wire flag_read;

reg read = 0;
reg state = 0;

assign flag_read = read;
//flag_buff_valid is one when Fifo sends five buffered UDP velo frames 
assign flag_buff_valid = flag_read & ~empty_intensity & ~empty_laser & ~empty_distance & ~empty_angle;

always @ (posedge clk)
begin
    case (state)
        0:begin
          if (flag_remove_end && ~empty_intensity & ~empty_laser & ~empty_distance & ~empty_angle)
          begin
            state <= 1;
            read <= 1; 
          end end
        1:begin
          if (empty_intensity)
          begin
            read <= 0;
            state <= 0;
          end end
    endcase
end

delay # (
    .N(1),
    .DELAY(1) ) DELAY_flag_buff_valid
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_buff_valid),
    .odata(del_flag_buff_valid)
);


//FIFO buffer, read latency 1
fifo_generator_distance FIFO_distance (
    .clk(clk),
    .srst(1'b0),
    .din(distance),
    .wr_en(flag),
    .rd_en(flag_read),
    
    .dout(buff_distance),
    .full(),
    .empty(empty_distance),
    .prog_full()
);

fifo_generator_distance FIFO_angle (
    .clk(clk),
    .srst(1'b0),
    .din(angle),
    .wr_en(flag),
    .rd_en(flag_read),
    
    .dout(buff_angle),
    .full(),
    .empty(empty_angle),
    .prog_full()
);

fifo_generator_intensity FIFO_intensity (
    .clk(clk),
    .srst(1'b0),
    .din(intensity),
    .wr_en(flag),
    .rd_en(flag_read),
    
    .dout(buff_intensity),
    .full(),
    .empty(empty_intensity),
    .prog_full()
);

fifo_generator_intensity FIFO_laser_num (
    .clk(clk),
    .srst(1'b0),
    .din(laser),
    .wr_en(flag),
    .rd_en(flag_read),
    
    .dout(buff_laser),
    .full(),
    .empty(empty_laser),
    .prog_full()
);

save_file save_dist (
    .clk(clk),
    .angle(buff_angle),
    .distances(buff_distance),
    .intensity(buff_intensity),
    .laser_num(buff_laser),
    
    .flag_valid_point(valid_point)
);

endmodule
