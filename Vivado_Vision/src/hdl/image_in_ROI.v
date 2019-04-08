`timescale 1ns / 1ps

//TODO: Consider adding FIFO to the project if FIFO from the proceeding module would not be enough
//TODO: Handle ready_in flag => further module is 'imresize'
//TODO: Handle InWidth/OutWidth

module image_in_ROI
(
    //Interface: project2image <-> image_in_ROI
    input clk,
    input [10:0] HorMinIn,
    input [10:0] HorMaxIn,
    input [8:0] VerMinIn,
    input [8:0] VerMaxIn,
    input valid_in,
    output ready_out,
     
    //Interface: image_in_ROI <-> ARM
    output ARMImgRequest,
    output [10:0] HorMinOut,
    output [10:0] HorMaxOut,
    output [8:0] VerMinOut,
    output [8:0] VerMaxOut,
    input [23:0] pixel_in,
    input de_in,
    input vsync_in,
    
    //Interface: image_in_ROI <-> imresize
    input ready_in,
    output valid_out,
    output [23:0] pixel_out,
    output de_out,
    output vsync_out,
    output [10:0] OutWidth,
    output [8:0] OutHeight
);

reg ready_out_buf = 1;

reg ARMImgRequestBuf = 0;

reg [10:0] HorMinBuf;
reg [10:0] HorMaxBuf;
reg [8:0] VerMinBuf;
reg [8:0] VerMaxBuf;

wire [10:0] SubHor;
wire [8:0] SubVer;

reg [2:0] state = 0;
always @(posedge clk)
begin
    case(state)
    
        0:begin //IDLE - wait for data from proceeding module
            if(valid_in & ready_in) //TODO - ready_in somewhere else?
            begin
                HorMinBuf <= HorMinIn;
                HorMaxBuf <= HorMaxIn;
                VerMinBuf <= VerMinIn;
                VerMaxBuf <= VerMaxIn;
                
                ARMImgRequestBuf <= 1;
                ready_out_buf <= 0;
                state <= 1;
            end
        end
    
        1:begin //WaitForImageBeginning
            if(de_in)
            begin
                state <= 2;
            end
        end
        
        2:begin //WaitForImageEnd
            if(~de_in)
            begin
                state <= 3;
            end
        end
        
        3:begin //Wait for ready_in from further module
            if(ready_in)
            begin
                ready_out_buf <= 1;
                state <= 0;
            end
        end
    
    endcase
end

Sub_A11_B11 SubWidth //Latency: 1
(
    .CLK(clk),
    .CE(1'b1),
    .A(HorMaxBuf),
    .B(HorMinBuf),
    .S(SubHor)
);

Add1_A11 ComputeWidth //Latency: 0
(   
    .CE(1),
    .A(SubHor),
    .S(OutWidth)
);

Sub_A9_B9 SubHeight //Latency: 1
(
    .CLK(clk),
    .CE(1'b1),
    .A(VerMaxBuf),
    .B(VerMinBuf),
    .S(SubVer)
);

Add1_A9 ComputeHeight //Latency: 0
(   
    .CE(1),
    .A(SubVer),
    .S(OutHeight)
);


assign ready_out = ready_out_buf;
assign ARMImgRequest = ARMImgRequestBuf;

assign HorMinOut = HorMinBuf;
assign HorMaxOut = HorMaxBuf;
assign VerMinOut = VerMinBuf;
assign VerMaxOut = VerMaxBuf;

//width  = HorMax - HorMin + 1
//height = VerMax - VerMin + 1

assign pixel_out = pixel_in;
assign de_out = de_in;
assign valid_out = de_in; //TODO
assign vsync_out = vsync_in;

endmodule
