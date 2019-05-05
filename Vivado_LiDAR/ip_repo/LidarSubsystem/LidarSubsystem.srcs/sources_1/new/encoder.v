`timescale 1ns / 1ps

module encoder
#(
    parameter LEN_IN = 100,
    parameter LEN_OUT = $clog2(LEN_IN+1)
)
(
    input  [LEN_IN -1:0] in,
    output [LEN_OUT-1:0] out
);
    wire [LEN_OUT-1:0] num [LEN_IN:0];
    wire [LEN_OUT-1:0] chain [LEN_IN+1:0];
    assign chain[0] = 0;
    
    genvar i;
    generate
        for(i=0; i<LEN_IN; i=i+1)
        begin
            assign num[i] = (in[i]==1'b1) ? i : 0;
            assign chain[i+1] = chain[i] | num[i];
        end
    endgenerate
    
    assign num[LEN_IN] = (in == 0) ? LEN_IN : 0;
    assign chain[LEN_IN+1] = chain[LEN_IN] | num[LEN_IN];
    
    assign out = chain[LEN_IN+1];
endmodule
