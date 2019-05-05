`timescale 1ns / 1ps

module load_data
(
    input ready_in,

    output clk,
    output valid_out,
    
    output signed [15:0] min_x, //s7c8f
    output signed [15:0] min_y,
    output signed [15:0] min_z,
    output signed [15:0] max_x,
    output signed [15:0] max_y,
    output signed [15:0] max_z
);

integer file;

reg signed [15:0] min_x_buf; //s7c8f
reg signed [15:0] min_y_buf;
reg signed [15:0] min_z_buf;
reg signed [15:0] max_x_buf;
reg signed [15:0] max_y_buf;
reg signed [15:0] max_z_buf;

reg clk_internal = 1'b0;
reg valid_out_buf = 1'b0;

//Provide CLK
initial
begin
    while(1)
    begin
        #1; clk_internal <= 1'b0;
        #1; clk_internal <= 1'b1;
    end
end

reg [7:0] i = 8'b0;
reg tmp = 1'b0;

//Read input data
initial
begin
    file = $fopen("C:/PracaInz/test_files/project2image.bin", "rb"); //TODO: Add filename
    
    for(i=0; i<20; i=i+1)
    begin
        while(~ready_in)
        begin
            #1;
        end
        //Read bytes
        min_x_buf[7:0]  <= $fgetc(file);
        min_x_buf[15:8] <= $fgetc(file);
        min_y_buf[7:0]  <= $fgetc(file);
        min_y_buf[15:8] <= $fgetc(file);
        min_z_buf[7:0]  <= $fgetc(file);
        min_z_buf[15:8] <= $fgetc(file);
        max_x_buf[7:0]  <= $fgetc(file);
        max_x_buf[15:8] <= $fgetc(file);
        max_y_buf[7:0]  <= $fgetc(file);
        max_y_buf[15:8] <= $fgetc(file);
        max_z_buf[7:0]  <= $fgetc(file);
        max_z_buf[15:8] <= $fgetc(file);
        valid_out_buf <= 1'b1;
        #6;
        valid_out_buf <= 1'b0;
    end
    $fclose(file);
end

assign min_x = min_x_buf;
assign min_y = min_y_buf;
assign min_z = min_z_buf;
assign max_x = max_x_buf;
assign max_y = max_y_buf;
assign max_z = max_z_buf;

assign clk = clk_internal;
assign valid_out = valid_out_buf;

endmodule
