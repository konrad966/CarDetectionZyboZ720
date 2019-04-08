`timescale 1ns / 1ps

module acc_points_num_box(
    input clk,
    input ce,
    input rst,
    input A,
    
    output [3:0]y
);
    
wire signed [3:0]out;
wire signed [3:0]suma;

reg_point_num# (.N(4)) point_num
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_num_pts_box ADD_num_box
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
