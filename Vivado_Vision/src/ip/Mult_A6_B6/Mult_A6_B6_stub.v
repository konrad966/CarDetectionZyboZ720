// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:08:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A6_B6/Mult_A6_B6_stub.v
// Design      : Mult_A6_B6
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *)
module Mult_A6_B6(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[5:0],B[5:0],P[11:0]" */;
  input CLK;
  input [5:0]A;
  input [5:0]B;
  output [11:0]P;
endmodule
