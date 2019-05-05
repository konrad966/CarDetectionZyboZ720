`timescale 1ns / 1ps

module save_cells(
    input clk,
    input signed [47:0] box_min,
    input signed [47:0] box_max,
    input flag_valid
);

integer file;
reg [60*8:1] filename;

always @ (posedge clk)
begin
    if (flag_valid)
    begin
            $sformat(filename, "C:/Xilinx_workspace/cells/c0.bin");
            file=$fopen(filename,"ab");
            
            $fwrite(file,"%c",box_min[47:40]);
            $fwrite(file,"%c",box_min[39:32]);
            $fwrite(file,"%c",box_min[31:24]);
            $fwrite(file,"%c",box_min[23:16]);
            $fwrite(file,"%c",box_min[15:8]);
            $fwrite(file,"%c",box_min[7:0]);

            $fwrite(file,"%c",box_max[47:40]);
            $fwrite(file,"%c",box_max[39:32]);
            $fwrite(file,"%c",box_max[31:24]);
            $fwrite(file,"%c",box_max[23:16]);
            $fwrite(file,"%c",box_max[15:8]);
            $fwrite(file,"%c",box_max[7:0]);
            
            $fclose(file);
    end
end

endmodule