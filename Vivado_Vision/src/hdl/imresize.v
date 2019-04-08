`timescale 1ns / 1ps

// I assume input image is less or equal 255x255
// if not -> change size of:
//   - in_width,
//   - in_height,
//   - HCnt,
//   - VCnt,
// Input image: max resolution: 1272x375

//Context mapping: (Hor, Ver)
// context[0] <=> Context_1_1
// context[1] <=> Context_1_2
// context[2] <=> Context_2_1
// context[3] <=> Context_2_2

//Handle ready_in/ready_out!

//TODO: Is there any reason why Net is computed with indicies starting from 1 and not from 0 (more convenient for further modules is starting from 0 indice)

module imresize
#(
    parameter MAX_IN_WIDTH = 1272,
    parameter MAX_IN_HEIGHT = 375,
    parameter OUT_WIDTH  = 64,
    parameter OUT_HEIGHT = 64,
    parameter HORLEN = $clog2(MAX_IN_WIDTH), //11 bit
    parameter VERLEN = $clog2(MAX_IN_HEIGHT) //9 bit
)
(
    //--------Inputs--------//
    
    input clk_in,
    input hsync_in,
    input vsync_in,
    input de_in,
    input [23:0] pixel_in,
  
    input [HORLEN-1:0] in_width,
    input [VERLEN-1:0] in_height,
    input valid_in,
    input ready_in,
    
    //--------Outputs--------//
    
    output clk_out,
    output hsync_out,
    output vsync_out,
    output de_out,
    output [23:0] pixel_out,

    output valid_out,
    output ready_out
    
    //DBGOuts
//    output dbg_InputImageRead,
//    output [HORLEN-1:0] dbg_InHorSize,
//    output [VERLEN-1:0] dbg_InVerSize,
//    output [6:0] dbg_NetCnt,
//    output [6:0] dbg_NetCntDel,
//    output [10:0] dbg_HCnt,
//    output [8:0] dbg_VCnt,
//    output [5:0] dbg_HCntOut,
//    output [5:0] dbg_VCntOut,
//    output [8:0] dbg_FracVer,
//    output [10:0] dbg_FracHor,
//    output dbg_de_in_del_67,
//    output [5:0] dbg_HorAddr_1,
//    output [5:0] dbg_VerAddr_1,
//    output [3:0] dbg_WriteEnable5,
//    output [23:0] dbg_pixel_in_del_5,
//    output [5:0] dbg_DeltaHorActual,
//    output [6:0] dbg_OneMinusDeltaHorActual,
//    output [5:0] dbg_DeltaVerActual,
//    output [6:0] dbg_OneMinusDeltaVerActual,
//    output [23:0] dbg_Context0,
//    output [23:0] dbg_Context1,
//    output [23:0] dbg_Context2,
//    output [23:0] dbg_Context3,
//    output dbg_de,
//    output dbg_vsync
);
///////////////////////////////////////////
////////////////Variables//////////////////

reg ready_out_buf = 1;
assign ready_out = ready_out_buf;
wire del_ready_in;
wire del_vsync_in;

/////////////////////////////////////////
///////////Compute Input Net/////////////
// Input sizes
reg [HORLEN-1:0] InHorSizeBuf = 0;
reg [VERLEN-1:0] InVerSizeBuf = 0;
wire [HORLEN-1:0] InHorSize;
wire [VERLEN-1:0] InVerSize;

wire [HORLEN-1:0] ScaleHor;
wire [VERLEN-1:0] ScaleVer;
wire [HORLEN-1+6:0] ScaleHorTmp;
wire [VERLEN-1+6:0] ScaleVerTmp;

reg [6:0] NetCntBuf = 1;    //6 + 1 bit, because OutSize = 64 = 2^6
wire [6:0] NetCnt;          // ---------------||-----------------
reg [6:0] NetCntDelBuf = 1;    //6 + 1 bit, because OutSize = 64 = 2^6
wire [6:0] NetCntDel;          // ---------------||-----------------

wire del_valid_in;

wire [HORLEN:0] FracHorTmp;
wire [VERLEN:0] FracVerTmp;
wire [HORLEN-1:0] FracHor;
wire [VERLEN-1:0] FracVer;
wire [HORLEN-1:0] FracHorInc;
wire [VERLEN-1:0] FracVerInc;
wire [5:0] DeltaHorTmp;
wire [5:0] DeltaVerTmp;

// Net values
reg [HORLEN-1:0] NetHorBuf [OUT_WIDTH:1][3:0];
reg [VERLEN-1:0] NetVerBuf [OUT_HEIGHT:1][3:0];
wire [HORLEN-1:0] NetHor [OUT_WIDTH:1][3:0];
wire [VERLEN-1:0] NetVer [OUT_HEIGHT:1][3:0];

//DeltaValues
reg [5:0] DeltaHorBuf [OUT_WIDTH:1];
reg [5:0] DeltaVerBuf [OUT_HEIGHT:1];
wire [5:0] DeltaHor [OUT_WIDTH:1];
wire [5:0] DeltaVer [OUT_HEIGHT:1];
///////////Compute Input Net/////////////
/////////////////////////////////////////

///////////////////////////////////////////////////////
//////////////// Maintain Input Pixels ////////////////

// Horizontal and vertical pixel counters
reg [HORLEN-1:0] HCntBuf = 0;
reg [VERLEN-1:0] VCntBuf = 1;
wire [HORLEN-1:0] HCnt;
wire [VERLEN-1:0] VCnt;

wire [23:0] pixel_in_del;
wire valid_in_del;
wire de_in_del;
wire de_in_del_67;

wire InputImageRead_del;
wire InputImageRead;
reg InputImageReadBuf = 1'b0;

//////////////// Maintain Input Pixels ////////////////
///////////////////////////////////////////////////////


///////////////////////////////////////////////////////
//////////////// Compute output image /////////////////

reg [5:0] HCntOutBuf = 0;
reg [5:0] VCntOutBuf = 0;
wire [5:0] HCntOut;
wire [5:0] VCntOut;

//////////////// Compute output image /////////////////
///////////////////////////////////////////////////////

///////////////Variables/////////////////
/////////////////////////////////////////



//TODO: After input flag is set, process input vars to obtain Net (DSPs, dividers?)
//      -compromise between number of used DSPs, dividers and compute time (in Zybo-Z10 max DSP 80)
//TODO: Add input image delay (wait for Net values)
//      Another solution (requires modification of preceeding module):
//          -preceeding module sets values of "in_width", "in_height",        
//          -preceeding module sets flag - it's ready to send an image,
//          -imresize computes Net values and sets flag - it's ready to acquire image
//          -preceeding module starts sending image
//
//TODO: 
//
//


/////////////////////////////////////////
///////////Compute Input Net/////////////
assign InHorSize = InHorSizeBuf;
assign InVerSize = InVerSizeBuf;

assign ScaleHorTmp = {InHorSize, 6'b0} >> 6;  //divide horizontal input size by OutHorSize = 2^6 //u11c6f
assign ScaleVerTmp = {InVerSize, 6'b0} >> 6;  //divide vertical input size by OutVerSize = 2^6   //u9c6f
assign ScaleHor = ScaleHorTmp[HORLEN-1:0];    //u5c6f
assign ScaleVer = ScaleVerTmp[VERLEN-1:0];    //u3c6f

assign NetCnt = NetCntBuf;
assign NetCntDel = NetCntDelBuf;

MultHor MultHorInst //Latency: 3
(
    .CLK(clk_in),
    .A(ScaleHor),
    .B(NetCnt),
    .P({FracHorTmp, DeltaHorTmp})
);

AddHor AddHorInst //Latency: 0
(
    .A(FracHorTmp[HORLEN-1:0]),
    .S(FracHorInc)
);

MultVer MultVerInst //Latency: 3
(
    .CLK(clk_in),
    .A(ScaleVer),
    .B(NetCnt),
    .P({FracVerTmp, DeltaVerTmp})
);

AddVer AddVerInst //Latency: 0
(
    .A(FracVerTmp[VERLEN-1:0]),
    .S(FracVerInc)
);

assign FracHor = (FracHorTmp[HORLEN-1:0] < InHorSize) ? (FracHorInc) : (FracHorTmp[HORLEN-1:0]); //FracHor = min(FracHorTmp+1, InWidth)
assign FracVer = (FracVerTmp[VERLEN-1:0] < InVerSize) ? (FracVerInc) : (FracVerTmp[VERLEN-1:0]); //FracVer = min(FracVerTmp+1, InHeight)
//assign FracHor = (FracHorTmp[HORLEN-1:0]); //FracHor = min(FracHorTmp+1, InWidth)
//assign FracVer = (FracVerTmp[VERLEN-1:0]); //FracVer = min(FracVerTmp+1, InHeight)

reg [2:0] state = 0;
reg ComputingStartFlag = 0;
//Compute Net values
always @(posedge clk_in)
begin
    if(vsync_out)
    begin
        ready_out_buf <= 1;
    end

    case(state)
        0:begin
            NetCntBuf <= 1;
            if(valid_in & ready_in) //TODO
            begin
                InHorSizeBuf <= in_width;
                InVerSizeBuf <= in_height;
                ready_out_buf <= 0; //Not ready to get more data
                state <= 1;
            end
        end
        1:begin
            if(NetCntBuf == 64) //TODO
                begin
                 //if(~valid_in)
                 if(vsync_in)
                    begin
                        state <= 0;
                    end
                end
            else
                begin
                    NetCntBuf <= NetCntBuf + 1;
                end
            end
    endcase
end

//Delay valid_in by latency of MultHor/MultVer
delay
#(
    .N(3),
    .DELAY(3)
)
delay_valid_in_ready_in
(
    .clk(clk_in),
    .ce(1'b1),
    .x({valid_in, ready_in, vsync_in}),
    .y({del_valid_in, del_ready_in, del_vsync_in})
);

//Save computed Net values to buffers
reg [1:0] state1 = 0;
always @(posedge clk_in)
begin
    case(state1)
        0:begin
            NetCntDelBuf <= 1;
            if(del_valid_in)
            begin
                state1 <= 1;
            end
        end
        1:begin

             DeltaHorBuf[NetCntDel] <= DeltaHorTmp;
             DeltaVerBuf[NetCntDel] <= DeltaVerTmp;
         
             NetHorBuf[NetCntDel][0] <= FracHor;
             NetVerBuf[NetCntDel][0] <= FracVer;
             
             NetHorBuf[NetCntDel][1] <= FracHor;
             NetVerBuf[NetCntDel][1] <= (FracVer != InVerSize) ? (FracVer+1) : (FracVer);
             
             NetHorBuf[NetCntDel][2] <= (FracHor != InHorSize) ? (FracHor+1) : (FracHor);
             NetVerBuf[NetCntDel][2] <= FracVer;
             
             NetHorBuf[NetCntDel][3] <= (FracHor != InHorSize) ? (FracHor+1) : (FracHor);
             NetVerBuf[NetCntDel][3] <= (FracVer != InVerSize) ? (FracVer+1) : (FracVer);
             
            if(NetCntDel == 7'd64)
                begin
                    state1 <= 2;
                end
            else
                begin
                     NetCntDelBuf <= NetCntDelBuf + 1;
                end
        end
        
        2:begin //Wait for image end
            if(del_vsync_in)
            begin
                state1 <= 0;
            end
        end
    endcase
end

//Connect wires to NetHor/NetVer buffers
genvar i,j;
generate
    for(i=1; i<=OUT_WIDTH; i=i+1)
    begin
        for(j=0; j<4; j=j+1)
        begin
            assign NetHor[i][j] = NetHorBuf[i][j];
            assign NetVer[i][j] = NetVerBuf[i][j];
        end
        assign DeltaHor[i] = DeltaHorBuf[i];
        assign DeltaVer[i] = DeltaVerBuf[i];
    end
endgenerate
///////////Compute Input Net/////////////
/////////////////////////////////////////


///////////////////////////////////////////////////////
//////////////// Maintain Input Pixels ////////////////
delay
#(
    .N(26),
    .DELAY(68) //Net Values are computed
)
delay_pixel_in_valid_in
(
    .clk(clk_in),
    .ce(1'b1),
    .x({pixel_in, valid_in, de_in}),
    .y({pixel_in_del, valid_in_del, de_in_del}) //TODO: de_in_del is unused!
);

delay
#(
    .N(1),
    .DELAY(67) //Net Values are computed
)
delay_de_in_67
(
    .clk(clk_in),
    .ce(1'b1),
    .x(de_in),
    .y(de_in_del_67)
);

assign HCnt = HCntBuf;
assign VCnt = VCntBuf;

reg [1:0] state3 = 0;
always @(posedge clk_in)
begin
    case(state3)
        0:begin
            if(de_in_del_67)  //delay of de_in is 67, because pixel_in has to be delayed by one cycle 
            begin
                HCntBuf <= HCntBuf + 1;
                state3 <= 1;
            end else begin
                VCntBuf <= 1;
                HCntBuf <= 0;
            end
        end
        
        1:begin
        
            if(HCntBuf >= InHorSize)
            begin
                if(VCntBuf >= InVerSize)
                begin
                    InputImageReadBuf <= 1;
                    state3 <= 2;
                end else begin
                    HCntBuf <= 1;
                    VCntBuf <= VCntBuf + 1;
                end
            end else begin
                HCntBuf <= HCntBuf + 1;
            end      
        end
        
        2:begin
            if(~de_in_del_67)
            begin
                state3 <= 0;
            end
        end
    endcase
end

//Provide proper pixel address
//TODO: Move to Variables code section
wire [63:0] CondHor [3:0];
wire [63:0] CondVer [3:0];
wire [5:0] HorAddr [3:0];
wire [5:0] VerAddr [3:0];
wire [3:0] writeEnable;
wire [23:0] context[3:0];
wire [23:0] del_context[3:0];
generate
    for(i=0; i<4; i=i+1)
    begin
        for(j=0; j<OUT_WIDTH; j=j+1)
        begin
            assign CondHor[i][j] = (HCnt == NetHor[j+1][i]);
            assign CondVer[i][j] = (VCnt == NetVer[j+1][i]);
        end
        assign writeEnable[i] = (CondVer[i] != 64'b0) & (CondHor[i] != 64'b0); //64 - output widths
    
        encoder64 encoderHor //Latency: 5
        (
            .clk(clk_in),
            .in(CondHor[i]),
            .out(HorAddr[i])
        );
        
        encoder64 encoderVer //Latency: 5
        (
            .clk(clk_in),
            .in(CondVer[i]),
            .out(VerAddr[i])
        );
    end
endgenerate

wire valid_in_del_5;
wire [3:0] writeEnable_5;
wire [23:0] pixel_in_del_5;
delay
#(
    .N(29),
    .DELAY(5)
) Delay5 //synchronize valid_in, pixel_in and writeEnable with encoder, encoder Latency equals to 5
(
    .ce(1'b1),
    .clk(clk_in),
    .x({valid_in_del, writeEnable, pixel_in_del}),
    .y({valid_in_del_5, writeEnable_5, pixel_in_del_5})
);
delay
#(
    .N(1),
    .DELAY(5)
) DelayInputImageRead
(
    .ce(1'b1),
    .clk(clk_in),
    .x({InputImageRead}),
    .y({InputImageRead_del})
);

// Context_64x64x24bit
//    Size: 64x64x3B = 4096*24bit
//    One cell: 24 bit
//    Address: 12 bit [6 bytes - row, 6 bytes - col]
//    Latency: 2
//    Interface:
//      in:  addra[11:0]
//      in:  clka
//      in:  dina[23:0]
//      in:  wea (Write Enable port A)
//      out: douta[23:0]
Context_64x64x24bit Context_1_1 //Read latency: 2
(
    .addra({HorAddr[0], VerAddr[0]}), //12bit
    .clka(clk_in),  
    .dina(pixel_in_del_5), //24bit
    .ena(valid_in_del_5 & writeEnable_5[0]), //TODO
    .wea(valid_in_del_5 & writeEnable_5[0]), //TODO
    
    .addrb({HCntOut, VCntOut}),
    .clkb(clk_in),
    .doutb(context[0]),
    .enb(InputImageRead_del)
);
Context_64x64x24bit Context_1_2 //Read latency: 2
(
    .addra({HorAddr[1], VerAddr[1]}), //12bit  //TODO: Or {HorAddr[2], VerAddr[2]} ??
    .clka(clk_in),  
    .dina(pixel_in_del_5), //24bit
    .ena(valid_in_del_5 & writeEnable_5[1]), //TODO
    .wea(valid_in_del_5 & writeEnable_5[1]), //TODO
    
    .addrb({HCntOut, VCntOut}),
    .clkb(clk_in),
    .doutb(context[1]),
    .enb(InputImageRead_del)
);
Context_64x64x24bit Context_2_1 //Read latency: 2 //TODO: Or {HorAddr[2], VerAddr[2]} ??
(
    .addra({HorAddr[2], VerAddr[2]}), //12bit
    .clka(clk_in),
    .dina(pixel_in_del_5), //24bit
    .ena(valid_in_del_5 & writeEnable_5[2]), //TODO
    .wea(valid_in_del_5 & writeEnable_5[2]), //TODO
    
    .addrb({HCntOut, VCntOut}),
    .clkb(clk_in),
    .doutb(context[2]),
    .enb(InputImageRead_del)
);
Context_64x64x24bit Context_2_2 //Read latency: 2
(
    .addra({HorAddr[3], VerAddr[3]}), //12bit
    .clka(clk_in),
    .dina(pixel_in_del_5), //24bit
    .ena(valid_in_del_5 & writeEnable_5[3]), //TODO
    .wea(valid_in_del_5 & writeEnable_5[3]), //TODO
    
    .addrb({HCntOut, VCntOut}),
    .clkb(clk_in),
    .doutb(context[3]),
    .enb(InputImageRead_del)
);
//////////////// Maintain Input Pixels ////////////////
///////////////////////////////////////////////////////



///////////////////////////////////////////////////////
//////////////// Compute output image /////////////////

reg de_out_tmp_buf = 1'b0;
reg vsync_out_tmp_buf = 1'b0;
wire de_out_tmp;
wire vsync_out_tmp;

assign de_out_tmp = de_out_tmp_buf;
assign vsync_out_tmp = vsync_out_tmp_buf;

assign VCntOut = VCntOutBuf;
assign HCntOut = HCntOutBuf;

assign InputImageRead = InputImageReadBuf;

reg [1:0] state2 = 0;
reg [2:0] cnt_wait = 0;
always @(posedge clk_in)
begin
    case(state2)
        0:begin
            vsync_out_tmp_buf <= 1'b0;
            if(InputImageRead_del)
            begin
                state2 <= 1;
                de_out_tmp_buf <= 1'b1;
            end
        end
        
        1:begin
           if(HCntOutBuf >= 63)
           begin
               HCntOutBuf <= 0;
               if(VCntOutBuf >= 63)
               begin
                   VCntOutBuf <= 0;
                   InputImageReadBuf <= 0; 
                   
                   de_out_tmp_buf <= 1'b0;
                   vsync_out_tmp_buf <= 1'b1;
                   
                   state2 <= 2;
               end else begin
                   VCntOutBuf <= VCntOutBuf + 1;
               end
           end else begin
               HCntOutBuf <= HCntOutBuf + 1;
           end
        end
        
        2:begin
            if(cnt_wait == 5)
                begin
                    cnt_wait <= 0;
                    state2 <= 0;
                end
            else
                begin
                    cnt_wait <= cnt_wait + 1;
                end
        end
    endcase
end

wire [5:0] DeltaHorActual;         //u0c6f
wire [5:0] DeltaVerActual;         //u0c6f
wire [6:0] OneMinusDeltaHorActual; //u1c6f
wire [6:0] OneMinusDeltaVerActual; //u1c6f

assign DeltaHorActual = DeltaHor[HCntOut+1]; //TODO: Is such an assignement possible?
assign DeltaVerActual = DeltaVer[VCntOut+1];

//1-delta == ~delta + 1'b1
OneMinusDeltaAdder DeltaHorAdder //Latency: 0
(
    .A(~DeltaHorActual),
    .S(OneMinusDeltaHorActual) //u1c6f
);

OneMinusDeltaAdder DeltaVerAdder //Latency: 0
(
    .A(~DeltaVerActual),
    .S(OneMinusDeltaVerActual) //u1c6f
);

delay //Latency: 1
#(
    .N(96), //4*24 = 96
    .DELAY(1)
) delay_context
(
    .clk(clk_in),
    .ce(1'b1),
    .x({context[3], context[2], context[1], context[0]}),
    .y({del_context[3], del_context[2], del_context[1], del_context[0]})
);

wire [13:0] Mult_OMDH_OMDV_Out;
wire [11:0] Mult_DH_DV_Out;
wire [12:0] Mult_OMDH_DV_Out;
wire [12:0] Mult_DH_OMDV_Out;

Mult_A7_B7 Mult_OMDH_OMDV //Latency: 3
(
    .CLK(clk_in),
    .A(OneMinusDeltaHorActual), //u1c6f
    .B(OneMinusDeltaVerActual), //u1c6f
    .P(Mult_OMDH_OMDV_Out)      //u2c12f //the second bit for "c" part is never used, because Delta is in [0,1] so 1-Delta is also in [0,1]
);

Mult_A6_B6 Mult_DH_DV //Latency: 3
(
    .CLK(clk_in),
    .A(DeltaHorActual), //u0c6f
    .B(DeltaVerActual), //u0c6f
    .P(Mult_DH_DV_Out)  //u0c12f
);

Mult_A7_B6 Mult_OMDH_DV //Latency: 3
(
    .CLK(clk_in),
    .A(OneMinusDeltaHorActual), //u1c6f
    .B(DeltaVerActual),         //u0c6f
    .P(Mult_OMDH_DV_Out)        //u1c12f
);

Mult_A7_B6 Mult_DH_OMDV //Latency: 3
(
    .CLK(clk_in),
    .A(OneMinusDeltaVerActual), //u1c6f
    .B(DeltaHorActual),         //u0c6f
    .P(Mult_DH_OMDV_Out)        //u1c12f
);


/////////////////////////////////////////////
////////////// Compute R canal //////////////

wire [20:0] R_x_Context_1_1_out; //u9c12f
wire [20:0] R_x_Context_1_2_out; //u9c12f
wire [20:0] R_x_Context_2_1_out; //u9c12f
wire [20:0] R_x_Context_2_2_out; //u9c12f 
wire [20:0] R_Con_11_plus_Con_12_out; //u9c12f
wire [20:0] R_Con_21_plus_Con_22_out; //u9c12f
wire [20:0] R_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out; //u9c12f

Mult_A8_B13 R_x_Context_1_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[0][7:0]),
    .B(Mult_OMDH_OMDV_Out[12:0]),
    .P(R_x_Context_1_1_out) //u9c12f
);

Mult_A8_B13 R_x_Context_1_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[1][7:0]),
    .B(Mult_OMDH_DV_Out),
    .P(R_x_Context_1_2_out) //u9c12f
);

Mult_A8_B13 R_x_Context_2_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[2][7:0]),
    .B(Mult_DH_OMDV_Out),
    .P(R_x_Context_2_1_out) //u9c12f
);

Mult_A8_B13 R_x_Context_2_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[3][7:0]),
    .B({1'b0, Mult_DH_DV_Out}),
    .P(R_x_Context_2_2_out) //u9c12f
);

Add_A21_B21 R_Con_11_plus_Con_12 //Latency: 2
(
    .CLK(clk_in),
    .A(R_x_Context_1_1_out),
    .B(R_x_Context_1_2_out),
    .S(R_Con_11_plus_Con_12_out)
);

Add_A21_B21 R_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(R_x_Context_2_1_out),
    .B(R_x_Context_2_2_out),
    .S(R_Con_21_plus_Con_22_out)
);

Add_A21_B21 R_Con_11_plus_Con_12_plus_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(R_Con_11_plus_Con_12_out),
    .B(R_Con_21_plus_Con_22_out),
    .S(R_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out)
);

assign pixel_out[7:0] = R_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out[19:12]; //Take only integer part of output value

////////////// Compute R canal //////////////
/////////////////////////////////////////////



/////////////////////////////////////////////
////////////// Compute G canal //////////////

wire [20:0] G_x_Context_1_1_out; //u9c12f
wire [20:0] G_x_Context_1_2_out; //u9c12f
wire [20:0] G_x_Context_2_1_out; //u9c12f
wire [20:0] G_x_Context_2_2_out; //u9c12f 
wire [20:0] G_Con_11_plus_Con_12_out; //u9c12f
wire [20:0] G_Con_21_plus_Con_22_out; //u9c12f
wire [20:0] G_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out; //u9c12f

Mult_A8_B13 G_x_Context_1_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[0][15:8]),
    .B(Mult_OMDH_OMDV_Out[12:0]),
    .P(G_x_Context_1_1_out) //u9c12f
);

Mult_A8_B13 G_x_Context_1_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[1][15:8]),
    .B(Mult_OMDH_DV_Out),
    .P(G_x_Context_1_2_out) //u9c12f
);

Mult_A8_B13 G_x_Context_2_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[2][15:8]),
    .B(Mult_DH_OMDV_Out),
    .P(G_x_Context_2_1_out) //u9c12f
);

Mult_A8_B13 G_x_Context_2_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[3][15:8]),
    .B({1'b0, Mult_DH_DV_Out}),
    .P(G_x_Context_2_2_out) //u9c12f
);

Add_A21_B21 G_Con_11_plus_Con_12 //Latency: 2
(
    .CLK(clk_in),
    .A(G_x_Context_1_1_out),
    .B(G_x_Context_1_2_out),
    .S(G_Con_11_plus_Con_12_out)
);

Add_A21_B21 G_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(G_x_Context_2_1_out),
    .B(G_x_Context_2_2_out),
    .S(G_Con_21_plus_Con_22_out)
);

Add_A21_B21 G_Con_11_plus_Con_12_plus_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(G_Con_11_plus_Con_12_out),
    .B(G_Con_21_plus_Con_22_out),
    .S(G_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out)
);

assign pixel_out[15:8] = G_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out[19:12]; //Take only integer part of output value

////////////// Compute G canal //////////////
/////////////////////////////////////////////



/////////////////////////////////////////////
////////////// Compute B canal //////////////

wire [20:0] B_x_Context_1_1_out; //u9c12f
wire [20:0] B_x_Context_1_2_out; //u9c12f
wire [20:0] B_x_Context_2_1_out; //u9c12f
wire [20:0] B_x_Context_2_2_out; //u9c12f 
wire [20:0] B_Con_11_plus_Con_12_out; //u9c12f
wire [20:0] B_Con_21_plus_Con_22_out; //u9c12f
wire [20:0] B_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out; //u9c12f

Mult_A8_B13 B_x_Context_1_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[0][23:16]),
    .B(Mult_OMDH_OMDV_Out[12:0]),
    .P(B_x_Context_1_1_out) //u9c12f
);

Mult_A8_B13 B_x_Context_1_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[1][23:16]),
    .B(Mult_OMDH_DV_Out),
    .P(B_x_Context_1_2_out) //u9c12f
);

Mult_A8_B13 B_x_Context_2_1 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[2][23:16]),
    .B(Mult_DH_OMDV_Out),
    .P(B_x_Context_2_1_out) //u9c12f
);

Mult_A8_B13 B_x_Context_2_2 //Latency: 3
(
    .CLK(clk_in),
    .A(del_context[3][23:16]),
    .B({1'b0, Mult_DH_DV_Out}),
    .P(B_x_Context_2_2_out) //u9c12f
);

Add_A21_B21 B_Con_11_plus_Con_12 //Latency: 2
(
    .CLK(clk_in),
    .A(B_x_Context_1_1_out),
    .B(B_x_Context_1_2_out),
    .S(B_Con_11_plus_Con_12_out)
);

Add_A21_B21 B_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(B_x_Context_2_1_out),
    .B(B_x_Context_2_2_out),
    .S(B_Con_21_plus_Con_22_out)
);

Add_A21_B21 B_Con_11_plus_Con_12_plus_Con_21_plus_Con_22 //Latency: 2
(
    .CLK(clk_in),
    .A(B_Con_11_plus_Con_12_out),
    .B(B_Con_21_plus_Con_22_out),
    .S(B_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out)
);

assign pixel_out[23:16] = B_Con_11_plus_Con_12_plus_Con_21_plus_Con_22_out[19:12]; //Take only integer part of output value

////////////// Compute B canal //////////////
/////////////////////////////////////////////

/////////////////////////////////////////////
/////////////// Sync Signals ////////////////
delay
#(
    .N(2),
    .DELAY(10)
) delay_sync
(
    .ce(1'b1),
    .clk(clk_in),
    .x({de_out_tmp, vsync_out_tmp}),
    .y({de_out, vsync_out})
);

//Omit hsync_out
assign hsync_out = 1'b0;
assign clk_out = clk_in;

/////////////// Sync Signals ////////////////
/////////////////////////////////////////////

//////////////// Compute output image /////////////////
///////////////////////////////////////////////////////

//DEBUG
//assign dbg_InputImageRead = InputImageRead;
//assign dbg_InVerSize = InVerSize;
//assign dbg_InHorSize = InHorSize;
//assign dbg_NetCntDel = NetCntDel;
//assign dbg_NetCnt = NetCnt;
//assign dbg_HCnt = HCnt;
//assign dbg_VCnt = VCnt;
//assign dbg_HCntOut = HCntOut;
//assign dbg_VCntOut = VCntOut;
//assign dbg_FracVer = FracVer;
//assign dbg_FracHor = FracHor;
//assign dbg_de_in_del_67 = de_in_del_67;
//assign dbg_HorAddr_1 = HorAddr[0];
//assign dbg_VerAddr_1 = VerAddr[0];
//assign dbg_WriteEnable5 = writeEnable_5;
//assign dbg_pixel_in_del_5 = pixel_in_del_5;
//assign dbg_DeltaHorActual = DeltaHorActual;
//assign dbg_OneMinusDeltaHorActual = OneMinusDeltaHorActual;
//assign dbg_DeltaVerActual = DeltaVerActual;
//assign dbg_OneMinusDeltaVerActual = OneMinusDeltaVerActual;
//assign dbg_Context0 = del_context[0];
//assign dbg_Context1 = del_context[1];
//assign dbg_Context2 = del_context[2];
//assign dbg_Context3 = del_context[3];

//delay
//#(
//    .N(2),
//    .DELAY(2)
//)
//dbg_delay
//(
//    .clk(clk_in),
//    .ce(1'b1),
//    .x({de_out_tmp, vsync_out_tmp}),
//    .y({dbg_de, dbg_vsync})
//);

endmodule
