// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 19:18:03 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Sub_A9_B9/Sub_A9_B9_stub.v
// Design      : Sub_A9_B9
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *)
module Sub_A9_B9(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[8:0],B[8:0],CLK,CE,S[8:0]" */;
  input [8:0]A;
  input [8:0]B;
  input CLK;
  input CE;
  output [8:0]S;
endmodule
