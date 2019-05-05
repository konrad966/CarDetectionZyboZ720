`timescale 1ns / 1ps

module save_features
(
    input clk,
    input [1:0]cnt,
    input [15:0]feature,
    
    input flag_valid
);

integer file;
reg [60*8:1] filename;

always @ (posedge clk)
begin
    if (flag_valid)
    begin
            $sformat(filename, "C:/Xilinx_workspace/features/f%0d.bin",cnt);
            file=$fopen(filename,"ab");
            $fwrite(file,"%c",feature[15:8]);
            $fwrite(file,"%c",feature[7:0]);
            $fclose(file);
    end
end

endmodule
