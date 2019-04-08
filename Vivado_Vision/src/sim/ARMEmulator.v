`timescale 1ns / 1ps

module ARMEmulator
(
    input clk,
    
    input ARMImgRequest,
    input [10:0] HorMinIn,
    input [10:0] HorMaxIn,
    input [8:0] VerMinIn,
    input [8:0] VerMaxIn,
    output [23:0] pixel_out,
    output de_out,
    output vsync_out
);

// R = pix[7:0], G = pix[15:8], B = pix[23:16]
reg [23:0] img [1242:1][375:1];
initial
begin
    $readmemh("C:/PracaInz/Img.txt",img);
end

reg [10:0] HorMinBuf = 0;
reg [10:0] HorMaxBuf = 0;
reg [8:0] VerMinBuf = 0;
reg [8:0] VerMaxBuf = 0;

reg [10:0] HCnt = 0;
reg [8:0] VCnt = 0;

reg de = 0;
reg vsync = 0;

reg [2:0] state = 0;
always @(posedge clk)
begin
    case(state)
    
        0:begin
            vsync <= 0;
            if(ARMImgRequest)
            begin
                HorMinBuf <= HorMinIn;
                HorMaxBuf <= HorMaxIn;
                VerMinBuf <= VerMinIn;
                VerMaxBuf <= VerMaxIn;
                HCnt <= HorMinIn;
                VCnt <= VerMinIn;
                de <= 1;
                
                state <= 1;
            end
        end
    
        1:begin
            if(HCnt < HorMaxBuf)
            begin
                HCnt <= HCnt + 1;
            end else begin
                HCnt <= HorMinBuf;
                if(VCnt < VerMaxBuf)
                begin
                    VCnt <= VCnt + 1;
                end else begin
                    VCnt <= VerMinBuf;
                    de <= 0;
                    vsync <= 1;
                    state <= 0;
                end
            end
        end
    
    endcase
end

assign pixel_out = img[HCnt][VCnt];
assign de_out = de;
assign vsync_out = vsync;

endmodule
