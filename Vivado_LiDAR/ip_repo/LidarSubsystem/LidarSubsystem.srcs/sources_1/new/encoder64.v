`timescale 1ns / 1ps

//Latency: 5
module encoder64
(
    input clk,
    input  [63:0] in,
    output [5:0] out
);
    wire [63:0] cond;
    wire [63:0] cond_del;
    wire [5:0] num [63:0];
    wire [63:0] in_del;
    wire [5:0] chain [64:0];
    wire [5:0] chain_del_16;
    wire [5:0] chain_del_32;
    wire [5:0] chain_del_48;
    wire [5:0] chain_del_64;
    assign chain[0] = 6'b0;
    
    genvar i;
    generate
        for(i=0; i<64; i=i+1)
        begin
            assign cond[i] = (in_del[i] == 1'b1);
            assign num[i] = (cond_del[i]) ? i : 0; //Delayed +
        end
    
        for(i=0; i<16; i=i+1)
        begin
            assign chain[i+1] = chain[i] | num[i];
        end
        
        assign chain[17] = chain_del_16 | num[16];
        
        for(i=17; i<32; i=i+1)
        begin
            assign chain[i+1] = chain[i] | num[i];
        end
        
        assign chain[33] = chain_del_32 | num[32];
        
        for(i=33; i<48; i=i+1)
        begin
            assign chain[i+1] = chain[i] | num[i];
        end
        
        assign chain[49] = chain_del_48 | num[48];

        for(i=49; i<64; i=i+1)
        begin
            assign chain[i+1] = chain[i] | num[i];
        end
        
    endgenerate
    
    //DELAY=0
    assign cond_del[15:0] = cond[15:0];
    
    delay
    #(
        .N(16),
        .DELAY(1)
    )
    delay_cond_1_1
    (
        .clk(clk),
        .ce(1'b1),
        .indata(cond[31:16]),
        .odata(cond_del[31:16])
    );
    
     delay
    #(
        .N(16),
        .DELAY(2)
    )
    delay_cond_2_1
    (
        .clk(clk),
        .ce(1'b1),
        .indata(cond[47:32]),
        .odata(cond_del[47:32])
    );
    
    delay
   #(
       .N(16),
       .DELAY(3)
   )
   delay_cond_3_1
   (
       .clk(clk),
       .ce(1'b1),
       .indata(cond[63:48]),
       .odata(cond_del[63:48])
   );
   
   delay
   #(
        .N(6),
        .DELAY(1)
   ) delay_chain_16_1
   (
        .clk(clk),
        .ce(1'b1),
        .indata(chain[16]),
        .odata(chain_del_16)
   );
   
    delay
   #(
        .N(6),
        .DELAY(1)
   ) delay_chain_32_1
   (
        .clk(clk),
        .ce(1'b1),
        .indata(chain[32]),
        .odata(chain_del_32)
   );
    
   delay
   #(
        .N(6),
        .DELAY(1)
   ) delay_chain_48_1
   (
        .clk(clk),
        .ce(1'b1),
        .indata(chain[48]),
        .odata(chain_del_48)
   );
    
    delay
    #(
        .N(6),
        .DELAY(1)
     ) delay_chain_64_1
     (
        .clk(clk),
        .ce(1'b1),
        .indata(chain[64]),
        .odata(chain_del_64)
     );
     
     delay
     #(
        .N(64),
        .DELAY(1)
     ) delay_input
     (
        .clk(clk),
        .ce(1'b1),
        .indata(in),
        .odata(in_del)
     );
    
    assign out = chain_del_64;
    
endmodule
