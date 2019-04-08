`timescale 1ns / 1ps

module delay #(
    parameter N=18,      //szerekosc portow wejsciwego i wyjsciowego w bitach
    parameter DELAY=3  //dlugosc opoznienia ktore modul powinien wprowadzac
)
(
    input clk,
    input ce,
    input [N-1:0]indata,
    output [N-1:0]odata
);

wire [N-1:0] tdata [DELAY:0];

genvar i;
generate
    if (DELAY==0)
        assign odata=indata;
    else
    begin
       for(i=0;i<DELAY;i=i+1)
       begin
            delay_rejestr #(.N(N)) rej_i
                (   .clk(clk),
                    .ce(ce),
                    .d(tdata[i]),
                    .q(tdata[i+1])
                );
       end
       
       assign odata=tdata[DELAY];
       assign tdata[0]=indata;
       
    end
endgenerate

endmodule
