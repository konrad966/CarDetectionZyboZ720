`timescale 1ns / 1ps



module ManageBBOXes
(
    input clk,
    input valid_box,
    input [63:0] bbox_in,
    
    output [63:0] bbox_out_0,
    output [63:0] bbox_out_1,
    output [63:0] bbox_out_2,
    output [63:0] bbox_out_3,
    output [63:0] bbox_out_4,
    output [63:0] bbox_out_5,
    output [63:0] bbox_out_6,
    output [63:0] bbox_out_7,
    output [63:0] bbox_out_8,
    output [63:0] bbox_out_9
);


reg [63:0] bbox_reg [9:0];
integer i;
initial
begin
    for(i=0; i<10; i=i+1)
    begin
        bbox_reg[i] = 64'b1;
    end
end

reg [3:0] current_bbox = 0;
reg [2:0] pass_cnt = 0;

always @(posedge clk)
begin
    if(valid_box)
    begin
        pass_cnt <= pass_cnt + 1;
        if(pass_cnt >= 2)
        begin
            pass_cnt <= 0;
            bbox_reg[current_bbox] <= bbox_in;
            current_bbox <= current_bbox + 1;
        end
        
    end
end


assign bbox_out_0 = bbox_reg[0];
assign bbox_out_1 = bbox_reg[1];
assign bbox_out_2 = bbox_reg[2];
assign bbox_out_3 = bbox_reg[3];
assign bbox_out_4 = bbox_reg[4];
assign bbox_out_5 = bbox_reg[5];
assign bbox_out_6 = bbox_reg[6];
assign bbox_out_7 = bbox_reg[7];
assign bbox_out_8 = bbox_reg[8];
assign bbox_out_9 = bbox_reg[9];

endmodule

