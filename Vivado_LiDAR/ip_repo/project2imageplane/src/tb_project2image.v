`timescale 1ns / 1ps

module tb_project2image();

wire clk;
wire valid_in;
wire ready_in;
wire valid_out;
wire ready_out;

wire signed [15:0] min_x; //s6c9f
wire signed [15:0] min_y;
wire signed [15:0] min_z;
wire signed [15:0] max_x;
wire signed [15:0] max_y;
wire signed [15:0] max_z;

wire [10:0] HorMinOut; //uint
wire [10:0] HorMaxOut;
wire [10:0] VerMinOut; //uint
wire [10:0] VerMaxOut;

wire [63:0] bbox;


////////////////////////////////////////
////////////////////////////////////////
////////////////////////////////////////

//load_data LOAD
//(
//    .clk(clk),
//    .valid_out(valid_in),
//    .ready_in(ready_out),
    
//    .min_x(min_x),
//    .min_y(min_y),
//    .min_z(min_z),
//    .max_x(max_x),
//    .max_y(max_y),
//    .max_z(max_z)
//);

assign min_x = 16'h0800;
assign min_y = 16'hfc00;
assign min_z = 16'hfc00;
assign max_x = 16'h0c00;
assign max_y = 16'h0400;
assign max_z = 16'h0000;
assign valid_in = 1;
assign ready_in = 1;

project2image DUT
(
    .clk(clk),
    .valid_in(valid_in),
    .ready_in(ready_in),
    .valid_out(valid_out),
    .ready_out(ready_out),
    
    .min_x(min_x),
    .min_y(min_y),
    .min_z(min_z),
    .max_x(max_x),
    .max_y(max_y),
    .max_z(max_z),
    
    .HorMinOut(HorMinOut),
    .HorMaxOut(HorMaxOut),
    .VerMinOut(VerMinOut),
    .VerMaxOut(VerMaxOut),
    .bbox(bbox)
);

//save_data SAVE
//(
//    .clk(clk),
    
//    .valid_in(valid_out),
//    .ready_out(ready_in),
    
//    .HorMinOut(HorMinOut),
//    .HorMaxOut(HorMaxOut),
//    .VerMinOut(VerMinOut),
//    .VerMaxOut(VerMaxOut)
//);

endmodule
