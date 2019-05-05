`timescale 1ns / 1ps

//TODO: Flagê ready_out, w zale¿noœci od tego czy kolejka jest prawie pe³na, czy nie mo¿na ustawiaæ w dwóch ró¿nych miejscach
        //Ale na razie jest na koñcu obliczania wszystkiego (po ComputingEnd) 

module project2image
(
    input clk,
    
    //Interface derived from AXI
    input valid_in,
    input ready_in,
    output valid_out,
    output ready_out,    //TODO set in proper moment

    input signed [15:0] min_x,   //every coordinate: s7c8f, in meters
    input signed [15:0] min_y,
    input signed [15:0] min_z,
    input signed [15:0] max_x,
    input signed [15:0] max_y,
    input signed [15:0] max_z,
    
    output [10:0] HorMinOut, //unsigned int
    output [10:0] HorMaxOut,
    output [8:0] VerMinOut,
    output [8:0] VerMaxOut    
);

// Flag indicating end of computing
wire ComputingEndWire;

// Registers for semi-AXI interface
reg ready_out_buf = 1'b1;

// Input registers for matrix
reg signed [15:0] x_in = 0;
reg signed [15:0] y_in = 0;
reg signed [15:0] z_in = 0;

// Buffer points if they're valid
// Generate 8 bounding box points
// Serialize points -> multiply by matrix
reg [17:0] point [7:0][2:0];
reg [1:0] state = 2'b0;
reg [2:0] cnt_pts = 3'b0;
reg internal_valid_reg = 0;
wire internal_valid;
always @(posedge clk)
begin
    case(state)
    0:begin  //IDLE
        internal_valid_reg <= 0;
        if(valid_in)
        begin
            state <= 1;
        end
    end
    
    1:begin //BUFFER_POINTS
        point[0][0] <= min_x;
        point[1][0] <= min_x;
        point[2][0] <= min_x;
        point[3][0] <= min_x;
        point[4][0] <= max_x;
        point[5][0] <= max_x;
        point[6][0] <= max_x;
        point[7][0] <= max_x;
        
        point[0][1] <= min_y;
        point[1][1] <= min_y;
        point[2][1] <= max_y;
        point[3][1] <= max_y;
        point[4][1] <= min_y;
        point[5][1] <= min_y;
        point[6][1] <= max_y;
        point[7][1] <= max_y;
        
        point[0][2] <= min_z;
        point[1][2] <= max_z;
        point[2][2] <= min_z;
        point[3][2] <= max_z;
        point[4][2] <= min_z;
        point[5][2] <= max_z;
        point[6][2] <= min_z;
        point[7][2] <= max_z;
        ready_out_buf <= 0; //Module in processing
        
        state <= 2;
    end
    
    2:begin    //SERIALIZE POINTS   //TODO: Add some flag indicating first point send? //TODO: Manage 'valid' flag
        if(cnt_pts <= 7)
        begin
            internal_valid_reg <= 1;
            
            x_in <= point[cnt_pts][0]; 
            y_in <= point[cnt_pts][1];
            z_in <= point[cnt_pts][2];
            
            if (cnt_pts == 7)
            begin
                cnt_pts <= 0;
                state <= 0;  //TODO: Should I set "ready_out_buf" flag?
            end else begin
                cnt_pts <= cnt_pts + 1;
            end
        end
    end
    
    endcase
end

//Generate MatrixMults
wire signed [16:0] MatrixParam[2:0][3:0];    //Format: s10c6f
wire signed [15:0] MatrixIn[3:0];            //Format: s7c8f
wire signed [32:0] MatrixMultOut[2:0][3:0];  //Format: s18c14f
genvar i,j;
generate
    for(i=0; i<3; i=i+1)
    begin
        for(j=0; j<4; j=j+1)
        begin
        MatrixMult Element //Latency: 3
        (
            .CLK(clk),
            .A(MatrixIn[j]),
            .B(MatrixParam[i][j]),
            .P(MatrixMultOut[i][j])
        );
        end
    end
endgenerate

//Generate adders to add MatrixMults outputs and give final result
wire signed [33:0] MatrixAddOut[2:0][1:0];
wire signed [34:0] MatrixOut[2:0];
generate
for(i=0; i<3; i=i+1) //Go through matrix rows
begin
    MatrixAdd Add_i0_i1    //Add elements (i,0) (i,1)
    (                      //Latency: 3
        .CLK(clk),
        //.CE(1'b1), //TODO!
        .A(MatrixMultOut[i][0]),
        .B(MatrixMultOut[i][1]),
        .S(MatrixAddOut[i][0])
    );
    
    MatrixAdd Add_i2_i3   //Add elements (i,2) (i,3)
    (                     //Latency: 3
        .CLK(clk),
        //.CE(1'b1), //TODO!
        .A(MatrixMultOut[i][2]),
        .B(MatrixMultOut[i][3]),
        .S(MatrixAddOut[i][1])
    );
    
    MatrixAdd2 Add_i0_i1_i2_i3  //Compute final matrix multiplying output
    (                           //Latency: 3
        .CLK(clk),
        //.CE(1'b1), //TODO!
        .A(MatrixAddOut[i][0]),
        .B(MatrixAddOut[i][1]),
        .S(MatrixOut[i])
    );  
end

endgenerate

//Delay interior_valid by overall latency of mult and both adders
wire internal_valid_delayed;
delay
#(
    .N(1),
    .DELAY(9)     //TODO: DELAY VALUE!
) valid_delay
(
    .clk(clk),
    .ce(1'b1),
    .x(internal_valid),
    .y(internal_valid_delayed)
);

// Divide first two coordinates by the third one to obtain
// horizontal and vertical pixel location
///TODO: Is sign handled well?
wire signed [34:0] Horizontal; //Format: s34c
wire signed [34:0] Vertical;   //Format: s34c
wire signed [39:0] DivHorOut;
wire signed [39:0] DivVerOut;
wire internal_valid_div;

Divider GetHorizontalLocation
(
    .aclk(clk),
    
    .s_axis_divisor_tdata({5'b0, MatrixOut[2]}),
    .s_axis_divisor_tvalid(internal_valid_delayed),
    
    .s_axis_dividend_tdata({5'b0, MatrixOut[0]}),
    .s_axis_dividend_tvalid(internal_valid_delayed),
    
    .m_axis_dout_tdata(DivHorOut), //Quotient: (36:2)
    .m_axis_dout_tvalid(internal_valid_div) //TODO - leave unconnected?
);

Divider GetVerticalLocation
(
    .aclk(clk),
    
    .s_axis_divisor_tdata({5'b0, MatrixOut[2]}),
    .s_axis_divisor_tvalid(internal_valid_delayed),
    
    .s_axis_dividend_tdata({5'b0, MatrixOut[1]}),
    .s_axis_dividend_tvalid(internal_valid_delayed),
    
    .m_axis_dout_tdata(DivVerOut), //Quotient: (36:2)
    .m_axis_dout_tvalid()
);

//Get minimum in bounding points
wire signed [34:0] HorizontalMin; //Format: s34c
wire signed [34:0] VerticalMin;   //Format: s34c
wire HorMinCheck;
wire VerMinCheck;
reg_min HorMin
(
    .clk(clk),
    .ce(internal_valid_div & HorMinCheck),
    .rst(ComputingEndWire), //TODO
    .d(Horizontal),
    .q(HorizontalMin)
);
reg_min VerMin
(
    .clk(clk),
    .ce(internal_valid_div & VerMinCheck),
    .rst(ComputingEndWire), //TODO
    .d(Vertical),
    .q(VerticalMin)
);

//Get maximum in bounding points
wire signed [34:0] HorizontalMax; //Format: s34c0f
wire signed [34:0] VerticalMax;   //Format: s34c0f
wire HorMaxCheck;
wire VerMaxCheck;
reg_max HorMax
(
    .clk(clk),
    .ce(internal_valid_div & HorMaxCheck),
    .rst(ComputingEndWire), //TODO
    .d(Horizontal),
    .q(HorizontalMax)
);
reg_max VerMax
(
    .clk(clk),
    .ce(internal_valid_div & VerMaxCheck),
    .rst(ComputingEndWire), //TODO
    .d(Vertical),
    .q(VerticalMax)
);

//Check if projected cluster is in image bounds
wire signed [34:0] HorMinBound = 35'd1;
wire signed [34:0] VerMinBound = 35'd1;
wire signed [34:0] HorMaxBound = 35'd1242;
wire signed [34:0] VerMaxBound = 35'd375;
wire OutOfBounds;

//Queue signals
wire [10:0] HorMaxQueue;
wire [10:0] HorMinQueue;
wire [8:0] VerMaxQueue;
wire [8:0] VerMinQueue;

//Delay output valid flag from divider with purpose to 
//take into consideration Latency of Min/Max register
wire internal_valid_div_delayed;
delay
#(
    .N(1),
    .DELAY(1)
) valid_div_delay
(
    .clk(clk),
    .ce(1'b1),
    .x(internal_valid_div),
    .y(internal_valid_div_delayed)
);

//Create flag indicating end of computing
wire FullQueue;
reg [1:0] state1 = 0;         //Initialize state as IDLE
reg ComputingEnd = 0;   //Flag indicating end of computing process
always @(posedge clk)
begin
    case(state1) 
        0:begin //IDLE
            ComputingEnd <= 0;
            if(internal_valid_div_delayed)
            begin
                state1 <= 1;
            end
        end
        1:begin //DATA_RUNNING
            if(~internal_valid_div_delayed)
            begin
                state1 <= 2;
                ComputingEnd <= 1;
            end
        end
        2:begin //Ready?
            ComputingEnd <= 0;
            ready_out_buf <= ~FullQueue;  //TODO: Or should it be set in next cycle?
            state1 <= 0;
        end
    endcase
end

//OutputQueue
ProjectImgFIFO FIFO
(
    .clk(clk),
    .srst(1'b0), //TODO
    
    .full(FullQueue),
    .din({VerMinQueue, VerMaxQueue, HorMinQueue, HorMaxQueue}),
    .wr_en(ComputingEndWire & (~OutOfBounds)),
    
    .empty(), //TODO
    .dout({VerMinOut, VerMaxOut, HorMinOut, HorMaxOut}),
    .rd_en(ready_in),
    .valid(valid_out)
);

//------Matrix input--------
assign MatrixIn[0] = x_in;
assign MatrixIn[1] = y_in;
assign MatrixIn[2] = z_in;
assign MatrixIn[3] = 16'h0100;

//------Ready out flag------
assign ready_out = ready_out_buf;

//---Internal valid flag----
assign internal_valid = internal_valid_reg;

//-----Dividers output------
assign Horizontal = DivHorOut[36:2];
assign Vertical   = DivVerOut[36:2];

//----Min and max check----
assign HorMinCheck = Horizontal < HorizontalMin;
assign VerMinCheck = Vertical   < VerticalMin;
assign HorMaxCheck = Horizontal > HorizontalMax;
assign VerMaxCheck = Vertical   > VerticalMax;

//------Bounds Check--------
assign OutOfBounds = (HorizontalMin < HorMinBound) | (VerticalMin < VerMinBound) | (HorizontalMax > HorMaxBound) | (VerticalMax > VerMaxBound);

//-----Queue signals--------
assign VerMinQueue = VerticalMin[8:0];    //If Vertical values are in image bounds (1:375), they can be written on 9 bits.
assign VerMaxQueue = VerticalMax[8:0];    //If they're not in image bounds, this value isn't valid anyway.
assign HorMinQueue = HorizontalMin[10:0]; //If Horizontal values are in image bounds (1:1242), they can be written on 11 bits.
assign HorMaxQueue = HorizontalMax[10:0]; //If they're not in image bounds, this value isn't valid anyway.

//--------Final flag--------
assign ComputingEndWire = ComputingEnd;

//----Matrix parameters-----
assign MatrixParam[0][0] = 17'h0986d;
assign MatrixParam[0][1] = 17'h14ba5;
assign MatrixParam[0][2] = 17'h1ffb0;
assign MatrixParam[0][3] = 17'h1e13d;
//--------------------------
assign MatrixParam[1][0] = 17'h02d19;
assign MatrixParam[1][1] = 17'h001e9;
assign MatrixParam[1][2] = 17'h14c16;
assign MatrixParam[1][3] = 17'h1e6bf;
//--------------------------
assign MatrixParam[2][0] = 17'h00040;
assign MatrixParam[2][1] = 17'h00000;
assign MatrixParam[2][2] = 17'h00001;
assign MatrixParam[2][3] = 17'h1ffef;

endmodule