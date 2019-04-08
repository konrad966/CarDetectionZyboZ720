`timescale 1ns / 1ps

module DataFusion //Latencja: 5
(
    input clk,
        
    input valid_in,
    input [15:0] ProbabilityLiDAR,  //u1c15f
    input [15:0] ProbabilityCamera, //u1c15f
    
    output valid_out,
    output [15:0] ProbabilityFinal  //u1c15f
);

wire [15:0] ProbabilitySum;         //u1c15f
wire [15:0] ProbabilitySumDelayed;  //u1c15f
wire [15:0] ProbabilityProduct;     //u1c15f
wire [31:0] MultOut;                //u2c30f

MultProbability MultProbability_inst //Latencja: 3
(
    .CLK(clk),
    .A(ProbabilityLiDAR),
    .B(ProbabilityCamera),
    .P(MultOut)
);

assign ProbabilityProduct = MultOut[30:15];

AddProbability AddProbability_inst //Latencja: 2
(
    .CLK(clk),
    .A(ProbabilityLiDAR),
    .B(ProbabilityCamera),
    .S(ProbabilitySum)
); 

delay
#(
    .N(16),
    .DELAY(1)
) delay_sum
(
    .clk(clk),
    .ce(1'b1),
    .x(ProbabilitySum),
    .y(ProbabilitySumDelayed)
);

SubProbability SubProbability_inst //Latencja: 2
(
    .CLK(clk),
    .A(ProbabilitySumDelayed),
    .B(ProbabilityProduct),
    .S(ProbabilityFinal)
);

delay
#(
    .N(1),
    .DELAY(5)
)
delay_valid
(
    .clk(clk),
    .ce(1'b1),
    .x(valid_in),
    .y(valid_out)
);

endmodule
