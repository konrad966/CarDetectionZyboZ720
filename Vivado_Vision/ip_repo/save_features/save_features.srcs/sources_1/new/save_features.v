`timescale 1ns / 1ps

module save_features(
    input wire clk,
    input wire de_img,
    input wire [11:0] hog_value,
    input wire hog_value_valid,
    input wire hog_value_done,
    
    output wire we,
    output wire [31:0] dout,
    output wire [10:0] addr,
    output wire features_saved
    );
    
    reg [11:0] addr_reg = 0;
    reg state = 0;
    reg cechy_na_pewno_dobre = 0;
    
    always @(posedge clk)
    begin
        case(state)
        
            0: begin
                if(de_img)
                begin
                    state <= 1;
                    cechy_na_pewno_dobre <= 1;
                end
                else
                begin
                    cechy_na_pewno_dobre <= 0;
                end
            end
        
            1: begin
                if(hog_value_valid)
                begin
                    addr_reg <= addr_reg + 1;
                end
                
                if(hog_value_done)
                begin
                    addr_reg <= 0;
                    state <= 0;
                    cechy_na_pewno_dobre <= 0;
                end
            end
        endcase
    end
    
    assign addr = addr_reg;
    assign dout = {20'b0, hog_value};
    assign we = hog_value_valid & cechy_na_pewno_dobre;
    assign features_saved = hog_value_done;
    
endmodule
