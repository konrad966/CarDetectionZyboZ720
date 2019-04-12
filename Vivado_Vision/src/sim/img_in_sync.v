`timescale 1ns / 1ps

`timescale 1ns / 1ps

module img_in_sync
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
    output reg hsync_out,
    output reg vsync_out
);

integer file;

reg [6:0] HCnt = 0;
reg [LEN_Y-1:0] VCnt = 0;

reg [3:0] i = 0;
initial
begin
    file = $fopen("C:/PracaInz/tests/out/image_out.ppm", "rb");
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

reg [7:0] state_img = 0;
always @(posedge clk)
begin
    case(state_img)
        0:begin  //INIT
            HCnt <= 0;
            VCnt <= 1;
            de_out <= 0;
            hsync_out <= 0;
            vsync_out <= 0;
            state_img <= 1;
        end
        
        1:begin //SEND HORIZONTAL LINE
            HCnt <= HCnt + 1;

            if(HCnt >= SIZE_X)
            begin
                de_out <= 0;
                hsync_out <= 1;
                vsync_out <= 0;
                state_img <= 2;
            end else begin
                de_out <= 1;
                hsync_out <= 0;
                vsync_out <= 0;
                pixel_out[7:0] <= $fgetc(file); //R
                pixel_out[15:8] <= $fgetc(file); //G
                pixel_out[23:16] <= $fgetc(file); //B            
            end
        end
    
        2:begin //SET HSYNC FOR ONE CYCLE
            de_out <= 0;
            hsync_out <= 0;
            vsync_out <= 0;
            HCnt <= HCnt + 1;
            state_img <= 3;
        end
        
        3:begin //WAIT FOR SOME TIME (HSIZE-SIZE_X-1 cycles)
            if(HCnt >= H_SIZE)
            begin
                VCnt <= VCnt + 1;
                HCnt <= 0;
                de_out <= 0;
                hsync_out <= 0;
                vsync_out <= 0;
                state_img <= 1;
            end else begin
                HCnt <= HCnt + 1;
                de_out <= 0;
                hsync_out <= 0;
                vsync_out <= 0;
            
            end
        end
        
    endcase
end








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
                if(HCnt >= H_SIZE-1)
                begin
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
                end else begin
                    HCnt <= HCnt + 1;
                    de_out <= 0;
                end
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
