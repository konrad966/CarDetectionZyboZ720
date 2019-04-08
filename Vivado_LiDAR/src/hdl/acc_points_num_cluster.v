`timescale 1ns / 1ps

module acc_points_num_cluster(
    input clk,
    input ce,
    input rst,
    input A,
    
    output [10:0]y    //2000 easily 
);
    
wire [10:0]out;
wire [10:0]suma;

rejestr# (.N(11)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_num_pts_features ADD_num_points_features
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
