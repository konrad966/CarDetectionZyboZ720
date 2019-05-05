`timescale 1ns / 1ps

module read_bram_addres(
    input clk,
    input flag_valid_remove,
    input [7:0] addra,
    
    output flag_bram_valid_out,
    output [7:0] addrb
);

// count to read from BRAM
wire del_flag_valid_remove;
reg [1:0] cnt_2 = 0;
reg [1:0] cnt_2_col = 0;
reg [1:0] cnt_col = 0;
reg [1:0] cnt_col_init = 0;
reg [5:0] cnt_row = 0;
reg [5:0] cnt_row_init = 0;
reg [1:0] state = 0;
reg cnt_wait = 0;
reg flag_bram_out = 0;
wire flag_bram_valid;
reg [11:0] cnt_clusters = 0;

always @ (posedge clk)
begin
    case(state)
        0:begin //INIT state
            if(addra[7:6] == 2 & addra[5:0] == 3)
            begin
                state <= 1;
            end 
        end
        
        1:begin //IDLE state
            if (del_flag_valid_remove)
            begin
                state <= 2;
                flag_bram_out <= 1; 
            end
        end
        
        2:begin //READ state
            cnt_2 <= cnt_2 + 1;
            cnt_row <= cnt_row_init + cnt_2 + 1;
            if (cnt_2 >= 2'd2)
            begin
                cnt_2 <= 2'b0;
                cnt_2_col <= cnt_2_col + 1;
                cnt_col <= cnt_col_init + cnt_2_col + 1;
                cnt_row <= cnt_row_init;
                if (cnt_2_col >= 2'd2)
                begin
                    cnt_2_col <= 2'b0;
                    state <= 1;
                    flag_bram_out <= 0;
                    cnt_row_init <= cnt_row_init + 1;
                    cnt_row <= cnt_row_init + 1;
                    cnt_col <= cnt_col_init;
                    if (cnt_row_init >= 6'd37)
                    begin
                        state <= 3;
                        cnt_row_init <= 6'b0;
                        cnt_row <= 6'b0;
                        cnt_col_init <= cnt_col_init + 1;
                        cnt_col <= cnt_col_init + 1;
                    end
                end
            end
        end
        
        3:begin //State - when one column ends, it waits for two cells in new column to arrive -> only then new segment can be properly getted
            if (del_flag_valid_remove)
            begin
                if(cnt_wait == 1)
                begin
                    cnt_wait <= 0;
                    state <= 1;
                end else begin
                    cnt_wait <= cnt_wait + 1;
                end
            end
        end
    endcase
    
    if(del_flag_valid_remove)
    begin
        cnt_clusters <= cnt_clusters + 1;
        if(cnt_clusters >= 40*80-1)
        begin
            cnt_clusters <= 0;
            cnt_2 <= 0;
            cnt_2_col <= 0;
            cnt_col <= 0;
            cnt_col_init <= 0;
            cnt_row <= 0;
            cnt_row_init <= 0;
            
            state <= 0;
        end
    end
end

delay # (
    .N(1),
    .DELAY(1) ) DEL_flag 
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_valid_remove),
    .odata(del_flag_valid_remove)
);

delay # (
    .N(1),
    .DELAY(2) ) DEL_flag_bram 
(
    .clk(clk),
    .ce(1'b1),
    .indata(flag_bram_out),
    .odata(flag_bram_valid)
);

assign addrb = {cnt_col,cnt_row};
assign flag_bram_valid_out = flag_bram_valid;

endmodule
