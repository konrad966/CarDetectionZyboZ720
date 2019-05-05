`timescale 1ns / 1ps

module acc_pts_num(
    input clk,
    input ce,
    input rst,
    input [10:0]A,
    
    output [11:0]y
);

wire [11:0]out;
wire [11:0]suma;

rejestr# (.N(12)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0
add_num_points ADD_num_points_instance
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;

endmodule
