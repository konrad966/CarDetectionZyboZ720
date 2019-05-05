`timescale 1ns / 1ps

module acc_points_num(
    input clk,
    input ce,
    input rst,
    input A,
    
    output [10:0]y
);
    
wire signed [10:0]out;
wire signed [10:0]suma;

reg_point_num # (.N(11)) point_num
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_num_pts ADD_num
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
