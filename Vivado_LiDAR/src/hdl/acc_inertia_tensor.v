`timescale 1ns / 1ps

module acc_inertia_tensor(
    input clk,
    input ce,
    input rst,
    input [22:0]A,
    
    output [28:0]y //s19c9f
);
    
wire [28:0]out;
wire [28:0]suma;

rejestr# (.N(29)) REJ
(
    .clk(clk),
    .ce(ce),
    .rst(rst),
    .d(suma),
    .q(out)
);

// latencja = 0 //WARNING!! latencja jak¹ chcia³o vivado to 3! jak coœ nie dziala sprawdzic
add_acc_inertia add_acc_inertia
(
    .A(A),
    .B(out),
    .CE(ce),
    .S(suma)
);

assign y = out;
    
endmodule
