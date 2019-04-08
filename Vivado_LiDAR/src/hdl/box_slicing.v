`timescale 1ns / 1ps

module box_slicing (
    input clk,
    input [15:0] angle,
    input [15:0] distance,
    input [7:0] intensity,   
    input [7:0] laser_num,
    input flag_buff_valid,
    input valid_point,
    
    //DEBUG
    output [2:0]cnt_flag_out,
    output flag_six_parts_out
    //END DEBUG
);

wire [99:0] cells_0;
wire [99:0] cells_1;
wire [99:0] cells_2;

wire del_flag_buff_valid;
wire del_valid_point;

wire [4:0] num_points_0 [99:0];
wire [99:0] flag_num_points_0;

wire [4:0] num_points_1 [99:0];
wire [99:0] flag_num_points_1;

wire [4:0] num_points_2 [99:0];
wire [99:0] flag_num_points_2;

reg state = 0;
reg [2:0]cnt_flag = 0;
reg flag_six_parts = 0;
assign flag_six_parts_out = flag_six_parts;
assign cnt_flag_out = cnt_flag;
always @ (posedge clk)
begin
    case(state)
    0:begin
        if (flag_buff_valid)
        begin
            cnt_flag <= cnt_flag + 1;
            if (cnt_flag >= 6)
            begin
                cnt_flag <= 1;
                flag_six_parts <= 1;
            end
            state <= 1;
        end end
    1:begin
        flag_six_parts <= 0;
        if (~flag_buff_valid)
        begin
            state <= 0;
        end end
    endcase
end

genvar k;
generate
    for (k=0; k<100; k=k+1)
    begin
        assign flag_num_points_0[k] = (del_valid_point & (num_points_0[k] >= 5'd21)) ? 1'b0 : 1'b1;
        assign flag_num_points_1[k] = (del_valid_point & (num_points_1[k] >= 5'd21)) ? 1'b0 : 1'b1;
        assign flag_num_points_2[k] = (del_valid_point & (num_points_2[k] >= 5'd21)) ? 1'b0 : 1'b1;
    end
    
    for (k=0; k<100; k=k+1)
    begin
    acc_points_num_box box_point_num_0 (
        .clk(clk),
        .ce(flag_num_points_0[k] && cells_0[k] && del_flag_buff_valid),
        .rst(0),    //[TODO]
        .A(1'b1),
        .y(num_points_0[k])
    );
    
    acc_points_num_box box_point_num_1 (
        .clk(clk),
        .ce(flag_num_points_1[k] && cells_1[k] && del_flag_buff_valid),
        .rst(0),    //[TODO]
        .A(1'b1),
        .y(num_points_1[k])
    );
    
    acc_points_num_box box_point_num_2 (
        .clk(clk),
        .ce(flag_num_points_2[k] && cells_2[k] && del_flag_buff_valid),
        .rst(0),    //[TODO]
        .A(1'b1),
        .y(num_points_2[k])
    );
    end 
    
endgenerate

// latency 3
check_cell check_cell_0 (
    .clk(clk),
    .angle(angle),       
    .distance(distance),    
    .flag_buff_valid(flag_buff_valid),
    .valid_point(valid_point),
    
    .cells(cells_0)
);

// latency 3
check_cell_1 check_cell_1 (
    .clk(clk),
    .angle(angle),       
    .distance(distance),    
    .flag_buff_valid(flag_buff_valid),
    .valid_point(valid_point),
    
    .cells(cells_1)
);

// latency 3
check_cell_2 check_cell_2 (
    .clk(clk),
    .angle(angle),       
    .distance(distance),    
    .flag_buff_valid(flag_buff_valid),
    .valid_point(valid_point),
    
    .cells(cells_2)
);

delay # (
    .N(1),
    .DELAY(3) ) DELAY_flag_buff_valid
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_buff_valid),
    .odata(del_flag_buff_valid)
);

delay # (
    .N(1),
    .DELAY(3) ) DELAY_valid_point
(
    .clk(clk),
    .ce(1'b1),
    .indata(valid_point),
    .odata(del_valid_point)
);

//DEBUG

//END DEBUG

endmodule