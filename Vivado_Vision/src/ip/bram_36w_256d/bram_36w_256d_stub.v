// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:06:18 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/bram_36w_256d/bram_36w_256d_stub.v
// Design      : bram_36w_256d
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module bram_36w_256d(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[7:0],dina[35:0],clkb,enb,addrb[7:0],doutb[35:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [7:0]addra;
  input [35:0]dina;
  input clkb;
  input enb;
  input [7:0]addrb;
  output [35:0]doutb;
endmodule
