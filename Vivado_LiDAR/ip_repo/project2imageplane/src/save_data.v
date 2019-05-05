`timescale 1ns / 1ps

module save_data
(
    input clk,
    input valid_in,
    
    output ready_out,

    input [8:0] HorMinOut, //unsigned int
    input [8:0] HorMaxOut,
    input [10:0] VerMinOut,
    input [10:0] VerMaxOut
);
reg ready_out_buf = 1'b1;

initial
begin
    #300;
    ready_out_buf = 1'b1;
end

assign ready_out = ready_out_buf;

endmodule
