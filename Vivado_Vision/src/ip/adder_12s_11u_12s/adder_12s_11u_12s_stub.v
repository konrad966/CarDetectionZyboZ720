// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:04:18 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/adder_12s_11u_12s/adder_12s_11u_12s_stub.v
// Design      : adder_12s_11u_12s
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module adder_12s_11u_12s(A, B, CLK, CE, SCLR, S)
/* synthesis syn_black_box black_box_pad_pin="A[11:0],B[10:0],CLK,CE,SCLR,S[11:0]" */;
  input [11:0]A;
  input [10:0]B;
  input CLK;
  input CE;
  input SCLR;
  output [11:0]S;
endmodule
