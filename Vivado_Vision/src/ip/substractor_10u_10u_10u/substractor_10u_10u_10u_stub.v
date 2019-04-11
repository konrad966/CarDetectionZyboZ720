// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:16:42 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/substractor_10u_10u_10u/substractor_10u_10u_10u_stub.v
// Design      : substractor_10u_10u_10u
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *)
module substractor_10u_10u_10u(A, B, CLK, CE, SCLR, S)
/* synthesis syn_black_box black_box_pad_pin="A[9:0],B[9:0],CLK,CE,SCLR,S[9:0]" */;
  input [9:0]A;
  input [9:0]B;
  input CLK;
  input CE;
  input SCLR;
  output [9:0]S;
endmodule
