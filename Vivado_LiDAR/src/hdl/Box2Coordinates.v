`timescale 1ns / 1ps

module Box2Coordinates
(
    input [47:0] box_min_in,
    input [47:0] box_max_in,
    
    output [15:0] min_x,
    output [15:0] min_y,
    output [15:0] min_z,
    output [15:0] max_x,
    output [15:0] max_y,
    output [15:0] max_z
);

assign min_x = box_min_in[47:32];
assign min_y = box_min_in[31:16];
assign min_z = box_min_in[15:0];
assign max_x = box_max_in[47:32];
assign max_y = box_max_in[31:16];
assign max_z = box_max_in[15:0];

endmodule
