`timescale 1ns / 1ps

module img_in
#(
    parameter SIZE_X = 64,
    parameter SIZE_Y = 64,
    parameter H_SIZE = 83,
    parameter LEN_X = $clog2(SIZE_X),
    parameter LEN_Y = $clog2(SIZE_Y)
)
(
    output reg clk,
    output reg [23:0] pixel_out,
    output reg de_out,
    output reg vsync_out
);

integer file;

reg [6:0] HCnt = 0;
reg [LEN_Y-1:0] VCnt = 0;

reg [3:0] i = 0;
initial
begin
    //file = $fopen("C:/PracaInz/tests/in/ImresizeDebug/Dbg_96_96.ppm", "rb");
    file = $fopen("C:/PracaInz/tests/in/image_96.ppm", "rb");
    for(i=0; i<13; i=i+1)//Skip first 13 bytes (header)
    begin
        $fgetc(file); 
    end
    
    while(1)
    begin
        #1; clk <= 1'b0;
        #1; clk <= 1'b1;
    end
end

reg [1:0] state = 0;
always @(posedge clk)
begin
    case(state)
        0:begin
            if(HCnt < SIZE_X-1)
            begin
                vsync_out <= 0;
                HCnt <= HCnt + 1;
                pixel_out[7:0] <= $fgetc(file); //R
                pixel_out[15:8] <= $fgetc(file); //G
                pixel_out[23:16] <= $fgetc(file); //B
                de_out <= 1;
            end else begin
                //if(HCnt >= H_SIZE-1)
                //begin
                    HCnt <= 0;
                    if(VCnt == SIZE_Y-1)
                    begin
                        state <= 1;
                        pixel_out[7:0] <= $fgetc(file); //R
                        pixel_out[15:8] <= $fgetc(file); //G
                        pixel_out[23:16] <= $fgetc(file); //B
                        de_out <= 1;
                    end else begin
                        VCnt <= VCnt + 1;
                        pixel_out[7:0] <= $fgetc(file); //R
                        pixel_out[15:8] <= $fgetc(file); //G
                        pixel_out[23:16] <= $fgetc(file); //B
                        de_out <= 1;
                    end
                //end else begin
                    //HCnt <= HCnt + 1;
                    //de_out <= 0;
                //end
            end
        end
        
        1:begin
            VCnt <= 0;
            vsync_out <= 1;
            de_out <= 0;
            $fclose(file);
            state <= 2;
        end
        
        2:begin
            vsync_out <= 0;
        end
    
    endcase

end

endmodule
