`timescale 1ns / 1ps

module save_boxes(
    input clk,
    input [15:0] angle,
    input [15:0] distance,
    input [7:0] intensity,   
    input [7:0] laser_num,
    input flag_buff_valid,
    input valid_point
);

wire [15:0] del_distance;
wire [15:0] del_angle;
wire [7:0] del_intensity;
wire [7:0] del_laser_num;
wire del_valid_point;
wire del_flag_buff_valid;
    
wire [99:0] cells_0;    
wire [99:0] cells_1;
wire [99:0] cells_2;

wire [6:0] nb_cell_0;
wire [6:0] nb_cell_1;
wire [6:0] nb_cell_2;

//reg state = 0;
//reg [2:0]cnt_flag = 0;
//reg flag_six_parts = 0;
//always @ (posedge clk)
//begin
//    case(state)
//    0:begin
//        if (flag_buff_valid)
//        begin
//            cnt_flag <= cnt_flag + 1;
//            if (cnt_flag >= 6)
//            begin
//                cnt_flag <= 1;
//                flag_six_parts <= 1;
//            end
//            state <= 1;
//        end end
//    1:begin
//        flag_six_parts <= 0;
//        if (~flag_buff_valid)
//        begin
//            state <= 0;
//        end end
//    endcase
//end

// latency 3
check_cell check_cell_0 (
    .clk(clk),
    .angle(angle),
    .distance(distance),    
    .flag_buff_valid(flag_buff_valid),
    .valid_point(valid_point),
    
    .cells(cells_0)
);

//WARNINIG!!    nb_cell = 100 means that point_distance is over cells limit (57,58,59m)
encoder encoder_0(
    .in(cells_0),
    .out(nb_cell_0)
);

save_cells save_cell_0(
    .clk(clk),
    .angle(del_angle),
    .distances(del_distance),
    .intensity(del_intensity),
    .laser_num(del_laser_num),
    .flag_valid_point(del_valid_point),
    .flag_buff_valid(del_flag_buff_valid),
    
    .cell_number(nb_cell_0),  
    .cells_part(2'd0) //0,1,2
);

//latency 3    
check_cell_1 check_cell_1 (
    .clk(clk),
    .angle(angle),       
    .distance(distance),    
    .flag_buff_valid(flag_buff_valid),
    .valid_point(valid_point),
    
    .cells(cells_1)
);

encoder encoder_1(
    .in(cells_1),
    .out(nb_cell_1)
);

save_cells save_cell_1(
    .clk(clk),
    .angle(del_angle),
    .distances(del_distance),
    .intensity(del_intensity),
    .laser_num(del_laser_num),
    .flag_valid_point(del_valid_point),
    .flag_buff_valid(del_flag_buff_valid),
    
    .cell_number(nb_cell_1),  
    .cells_part(2'd1) //0,1,2
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

encoder encoder_2(
    .in(cells_2),
    .out(nb_cell_2)
);

save_cells save_cell_2(
    .clk(clk),
    .angle(del_angle),
    .distances(del_distance),
    .intensity(del_intensity),
    .laser_num(del_laser_num),
    .flag_valid_point(del_valid_point),
    .flag_buff_valid(del_flag_buff_valid),
    
    .cell_number(nb_cell_2),  
    .cells_part(2'd2) //0,1,2
);


//DELAY
delay # (
    .N(16),
    .DELAY(3) ) DELAY_distance
(
    .clk(clk),
    .ce(1'b1),
    .indata(distance),
    .odata(del_distance)
);

delay # (
    .N(16),
    .DELAY(3) ) DELAY_angle
(
    .clk(clk),
    .ce(1'b1),
    .indata(angle),
    .odata(del_angle)
);

delay # (
    .N(8),
    .DELAY(3) ) DELAY_intensity
(
    .clk(clk),
    .ce(1'b1),
    .indata(intensity),
    .odata(del_intensity)
);

delay # (
    .N(8),
    .DELAY(3) ) DELAY_laser_num
(
    .clk(clk),
    .ce(1'b1),
    .indata(laser_num),
    .odata(del_laser_num)
);  

delay # (
    .N(2),
    .DELAY(3) ) DELAY_valid_point_buff
(
    .clk(clk),
    .ce(1'b1),
    .indata({valid_point,flag_buff_valid}),
    .odata({del_valid_point,del_flag_buff_valid})
);  

endmodule
