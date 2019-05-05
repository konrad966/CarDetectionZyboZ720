`timescale 1ns / 1ps

module LidarSubsystem(
    input clk,
    input flag,
    input signed [15:0] x,
    input signed [15:0] y,
    input signed [15:0] z,
    input [7:0] intens,
    
    output signed [47:0] box_min_out,
    output signed [47:0] box_max_out,
    output [15:0] svm_score,
    output valid_score
);

wire remove;
wire flag_valid_remove;
wire signed [15:0] x_min;
wire signed [15:0] x_max;
wire signed [15:0] y_min;
wire signed [15:0] y_max;
wire signed [15:0] z_min;
wire signed [15:0] z_max;
wire [10:0] num_points;
wire [19:0] intens_sum;
wire [274:0] hist_out;
preprocessing remove_all_module(
    .clk(clk),
    .flag(flag),       
    .x(x),
    .y(y),
    .z(z),            
    .intens(intens),
    
    .remove(remove),
    .flag_valid_out(flag_valid_remove),
    .x_min(x_min),
    .x_max(x_max),
    .y_min(y_min),
    .y_max(y_max),
    .z_min(z_min),
    .z_max(z_max),
    .num_points(num_points),
    .intens_sum(intens_sum),
    .hist_out(hist_out)
);    

//save_cells save_cells(
//    .clk(clk),
//    .box_min({x_min,y_min,z_min}),
//    .box_max({x_max,y_max,z_max}),
//    .flag_valid(flag_valid_remove & ~remove)
//);

wire [7:0] addra;
wire [7:0] addrb;
wire flag_bram_valid;
save_bram_address addra_bram(
    .clk(clk),
    .flag_valid_remove(flag_valid_remove),
    .addra(addra)
);

read_bram_addres addrb_bram(
    .clk(clk),
    .flag_valid_remove(flag_valid_remove),
    .addra(addra),
    .flag_bram_valid_out(flag_bram_valid),
    .addrb(addrb)
);

wire [402:0] bram_in;
wire [402:0] bram_out;
assign bram_in = {remove,hist_out,intens_sum,num_points,z_max,z_min,y_max,y_min,x_max,x_min};
blk_mem BRAM (
    .clka(clk),
    .wea(flag_valid_remove),
    .addra(addra),
    .dina(bram_in),
    
    .clkb(clk),
    .addrb(addrb),
    .doutb(bram_out)
);      
        
wire features_valid;
wire [15:0] feature; 
wire signed [47:0] box_min;
wire signed [47:0] box_max;
extract_features extract_features(
    .clk(clk),
    .flag_in_valid(flag_bram_valid),
    .bram_out(bram_out),
    
    .features_valid(features_valid),
    .feature(feature),
    .box_min(box_min),
    .box_max(box_max)
);    

wire signed [47:0] del_box_min;
wire signed [47:0] del_box_max;
delay # (
    .N(96),
    .DELAY(14) ) DEL_box ( 
    .clk(clk),
    .ce(1'b1),
    .indata({box_min,box_max}),
    .odata({del_box_min,del_box_max})
);

wire signed [21:0] acc_svm_out;  //s8c13f
wire flag_valid_svm_out;
//latency 5
svm svm_instance (
    .clk(clk),
    .feature(feature),
    .features_valid(features_valid),
    
    .acc_svm_out(acc_svm_out),        //s8c13f
    .flag_valid_out(flag_valid_svm_out)
);

//latency 7
calc_score calc_0(
    .clk(clk),
    .svm_out(acc_svm_out),
    .flag_valid_svm(flag_valid_svm_out),
    
    .svm_score_out(svm_score),     //1c15f
    .valid_score(valid_score)
);  

assign box_min_out = del_box_min;
assign box_max_out = del_box_max;

endmodule
