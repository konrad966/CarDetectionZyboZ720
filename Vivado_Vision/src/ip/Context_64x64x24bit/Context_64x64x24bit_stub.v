// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:22:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Context_64x64x24bit/Context_64x64x24bit_stub.v
// Design      : Context_64x64x24bit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module Context_64x64x24bit(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[11:0],dina[23:0],clkb,enb,addrb[11:0],doutb[23:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [11:0]addra;
  input [23:0]dina;
  input clkb;
  input enb;
  input [11:0]addrb;
  output [23:0]doutb;
endmodule
