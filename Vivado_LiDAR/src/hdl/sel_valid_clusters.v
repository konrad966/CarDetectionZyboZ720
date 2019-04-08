`timescale 1ns / 1ps

module sel_valid_clusters (
    input clk,
    input flag,
    input [10:0] num_points,
    
    output valid_cluster
);

assign valid_cluster = (num_points > 11'd20) & flag;

endmodule