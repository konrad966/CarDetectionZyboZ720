`timescale 1ns / 1ps

// data is processing to distance equal 40m

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
    
wire flag;
wire signed [15:0] x;    
wire signed [15:0] y;
wire signed [15:0] z;
wire [7:0] intens;
    
load_cell LOAD (   
    .flag_out(flag),
    .x_out(x),       //s6c9f  
    .y_out(y),  
    .z_out(z),  
    .intensity(intens)   
);  

wire valid_score;
wire signed [47:0] box_min;
wire signed [47:0] box_max;
wire [15:0] svm_score;
LidarSubsystem LidarSubsystem_instance(
    .clk(clk),
    .flag(flag),
    .x(x),
    .y(y),
    .z(z),
    .intens(intens),
    
    .box_min_out(box_min),
    .box_max_out(box_max),
    .svm_score(svm_score),
    .valid_score(valid_score)
);
  
save_scores save_scores(
    .clk(clk),
    .cnt(2'd0),
    .score(svm_score),
    .box_min(box_min),
    .box_max(box_max),
    .flag_valid(valid_score)
);    
        
endmodule