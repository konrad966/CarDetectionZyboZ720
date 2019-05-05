`timescale 1ns / 1ps

module load_cell
(   
    output flag_out,
    output signed [15:0]x_out,     //s6c9f
    output signed [15:0]y_out,  
    output signed [15:0]z_out,  
    output [7:0]intensity   
);

integer file;
reg eof;

reg [7:0]i = 7'b0;
reg [7:0]j = 7'b0;
reg [7:0] tmp;
reg flag = 0;

reg signed [15:0] x;
reg signed [15:0] y;
reg signed [15:0] z;
reg [7:0] in;

reg [50*8:1]filename;

initial
begin
    #5;
    for (i=1; i<=80; i=i+1)
    begin
        for (j=1; j<=40; j=j+1)
        begin
            $sformat(filename, "C:/Xilinx_workspace/dane_xyz/dataCell_%0d_%0d.bin", i, j);
            file = $fopen(filename,"rb");
            
            tmp = $fgetc(file);
            flag = 0;
            while(! $feof(file)) 
            begin
                
                x[15:8] = tmp;
                x[7:0] = $fgetc(file);
                
                y[15:8] = $fgetc(file);
                y[7:0] = $fgetc(file);
                
                z[15:8] = $fgetc(file);
                z[7:0] = $fgetc(file);
                
                in[7:0] = $fgetc(file);
                
                flag = 1;
                #10;
                flag = 0;
                tmp = $fgetc(file);
            end
            $fclose(file);
            #1000;
        end
    end
end

assign x_out = x;
assign y_out = y;
assign z_out = z;
assign intensity = in;
assign flag_out = flag;

endmodule