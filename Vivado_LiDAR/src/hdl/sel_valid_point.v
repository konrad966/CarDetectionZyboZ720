`timescale 1ns / 1ps

module sel_valid_point #(
    parameter metr_num = 15'd500)       //1m = 1*500 = 500
(
    input clk,
    
    input [15:0]angle,    
    input [15:0]distance,
    input [7:0]intensity,
    input [7:0]laser_num,
    input flag_buff_valid,
    
    input [59:0] remove_all,
    
    output valid_point
);

wire [59:0] cells;
assign valid_point = ~((cells & remove_all) == 60'b0) & flag_buff_valid;
    
genvar k;
generate
    //Comparator; Input:  [15:0]distance; Output: [64:0]cell
    for (k=0; k<60; k=k+1)
    begin
        assign cells[k] = (distance > metr_num*(k) & distance <= metr_num*(k+1)) ? 1'b1 : 1'b0;
    end
endgenerate

endmodule