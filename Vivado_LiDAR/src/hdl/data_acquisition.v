`timescale 1ns / 1ps

module data_acquisition(
    input clk,

    output flag_out,
    output flag_frame,
    output [15:0]distance_out,      //2B distance, 2B angle (fi), 1B laser_num (theta), 1B intensity
    output [15:0]angle_out, 
    output [7:0]laser_num_out,      //0-63, 0 is the lowest vertical angle
    output [7:0]intensity_out  
);

reg [2:0]cnt_frame = 0;

reg [7:0] cnt_pt = 0;
reg [7:0] cnt_gr = 0;

wire flag;
reg flag_o = 0;
reg flag_fr = 0;
reg [1:0] state = 0;

reg [15:0] current_an = 0;
reg [15:0] current_di = 0;
reg [7:0] current_in = 0;
reg [7:0] current_ln = 0;

wire [15:0] an [11:0][31:0];
wire [15:0] di [11:0][31:0];
wire [7:0]  in [11:0][31:0];
wire [7:0]  ln [11:0][31:0];

wire [6143:0]angle;      
wire [6143:0]distance;   
wire [3071:0]intensity;  
wire [3071:0]laser_num; 

genvar k;
genvar m;
generate
for (k=0; k<12; k=k+1) begin
      for (m=0; m<32; m=m+1) begin
        assign di[k][m] = distance [ k*32*16 + m*16 + 15 : k*32*16 + m*16 ]; 
        assign an[k][m] = angle    [ k*32*16 + m*16 + 15 : k*32*16 + m*16 ];
        assign in[k][m] = intensity[ k*32*8  + m*8  + 7  : k*32*8  + m*8  ];
        assign ln[k][m] = laser_num[ k*32*8  + m*8  + 7  : k*32*8  + m*8  ];
      end
end
endgenerate

always @(posedge clk)
begin
case (state)
  0:begin //IDLE
    if(flag)
    begin
        state <= 1;
    end else begin
        flag_o <= 0;
    end
    flag_fr <= 0;
    end
    
  1:begin //RCV
    flag_o <= 1;
    cnt_pt <= cnt_pt + 1;
    current_an <= an[cnt_gr][cnt_pt];
    current_di <= di[cnt_gr][cnt_pt];
    current_in <= in[cnt_gr][cnt_pt];
    current_ln <= ln[cnt_gr][cnt_pt];
    state <= 2;
    cnt_frame <= cnt_frame + 1;
    end
    
  2:begin //SENDING
      cnt_pt <= cnt_pt + 1;
      current_an <= an[cnt_gr][cnt_pt];
      current_di <= di[cnt_gr][cnt_pt];
      current_in <= in[cnt_gr][cnt_pt];
      current_ln <= ln[cnt_gr][cnt_pt];
      if (cnt_pt >= 31)
      begin
          cnt_pt <= 0;
          
          if(cnt_gr < 12)
          begin
              cnt_gr <= cnt_gr + 1;
              if(cnt_gr >= 11)
              begin
                  cnt_gr <= 0;
                  state <= 0;  //GOTO IDLE
                  if (cnt_frame >= 5)
                  begin
                    cnt_frame <= 0;
                    flag_fr <= 1;
                  end 
              end   
          end
      end
  end
  
  default:begin //OTHER
    cnt_pt <= 0;
    cnt_gr <= 0;
    flag_o <= 0;
    state <= 0;  
  end 
endcase
end

load_file frame (
    .flag_out(flag),
    .angle(angle),                 //6144 = 12*32*16b; each distance has its own angle
    .distance(distance),           //6144 = 12*32*16b
    .intensity(intensity),         //3072 = 12*32*8b
    .laser_num(laser_num)          //0-63, 0 is the lowest vertical angle
);

assign distance_out = current_di;
assign angle_out = current_an;
assign laser_num_out = current_ln;
assign intensity_out = current_in;

assign flag_out = flag_o;
assign flag_frame = flag_fr;

endmodule
