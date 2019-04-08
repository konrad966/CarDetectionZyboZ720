`timescale 1ns / 1ps

module img_out
#(
    parameter SIZE_X = 64,
    parameter SIZE_Y = 64,
    parameter LEN_X = $clog2(SIZE_X),
    parameter LEN_Y = $clog2(SIZE_Y),
    parameter ID = 0
)
(
    input clk,
    input [23:0] pixel_in,
    input de_in,
    input vsync_in
);

integer file;
reg [14*8-1:0] str = 0;
reg [100*8-1:0] filename = 0;

//reg [LEN_X-1:0] HCnt = 0;
//reg [LEN_Y-1:0] VCnt = 0;

initial
begin
    $sformat(filename, "C:/PracaInz/tests/out/image_outSysTest%0d.ppm", ID);
    file = $fopen(filename, "wb");
    //$sformat(str,"P6\n%0d %0d\n255\n", SIZE_X, SIZE_Y);
    $fwrite(file,"P6\n%0d %0d\n255\n",SIZE_X, SIZE_Y);
end

reg [2:0] state = 0;
always @(posedge clk)
begin
    case(state)   
        0:begin
            if(vsync_in)
            begin
                $fclose(file);
                state <= 1;
            end else begin
                if(de_in)
                begin
                    $fwrite(file,"%c",pixel_in[7:0]); //R
                    $fwrite(file,"%c",pixel_in[15:8]); //G
                    $fwrite(file,"%c",pixel_in[23:16]); //B
                end
            end
        end
        
        1:begin
        
        end
    endcase
end

endmodule
