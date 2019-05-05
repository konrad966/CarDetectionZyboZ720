`timescale 1ns / 1ps

module save_bram_address(
    input clk,
    input flag_valid_remove,
    
    output [7:0] addra
);

// count to write into BRAM
reg [1:0] cnt_3_write = 0;
reg [5:0] cnt_write = 0;
always @ (posedge clk)
begin
    if(flag_valid_remove)
    begin
        cnt_write <= cnt_write + 1;
        if (cnt_write >= 6'd39)
        begin
            cnt_3_write <= cnt_3_write + 1;
            cnt_write <= 6'b0;
        end
    end
end

assign addra = {cnt_3_write, cnt_write};

endmodule
