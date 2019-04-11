// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 21 11:15:52 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/LUT_Probability/LUT_Probability_stub.v
// Design      : LUT_Probability
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *)
module LUT_Probability(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],spo[15:0]" */;
  input [5:0]a;
  output [15:0]spo;
endmodule
