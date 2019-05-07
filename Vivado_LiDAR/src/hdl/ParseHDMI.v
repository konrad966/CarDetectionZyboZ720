`timescale 1ns / 1ps

module ParseHDMI(
    input clk,
    input [23:0] pixel_in,
    input de,
    
    output clk_out,
    output flag_valid_out,
    output signed [15:0] x_out,
    output signed [15:0] y_out,
    output signed [15:0] z_out,
    output [7:0] intens_out
);

reg signed [15:0] x_reg = 0;
reg signed [15:0] y_reg = 0;
reg signed [15:0] z_reg = 0;
reg [7:0] intens_reg = 0;
reg flag_reg = 0;
reg clk_out_reg = 0;

assign clk_out = clk_out_reg;
assign flag_valid_out = flag_reg; //TODO Czy dodanie "& de" jest dobra zmiana? 
assign x_out = x_reg;
assign y_out = y_reg;
assign z_out = z_reg;
assign intens_out = intens_reg;

reg [1:0] state = 0; 

always @ (posedge clk)
begin
    case(state)
        0:begin
            clk_out_reg <= 0;
            if (de)
            begin
                x_reg[15:8] <= pixel_in[15:8];  //G [15:0] B [7:0]
                z_reg[15:8] <= pixel_in[7:0];
                state <= 1;
            end
        end
        1:begin
            if (de)
            begin
                x_reg[7:0] <= pixel_in[15:8];
                z_reg[7:0] <= pixel_in[7:0];
                state <= 2;
            end         
        end
        2:begin
            if (de)
            begin
                y_reg[15:8] <= pixel_in[15:8];
                intens_reg <= pixel_in[7:0];
                state <= 3;
            end       
        end
        3:begin
            if (de)
            begin
                y_reg[7:0] <= pixel_in[15:8];
                flag_reg <= pixel_in[0];
                clk_out_reg <= 1;
                state <= 0;
            end
        end
    endcase
end

endmodule
