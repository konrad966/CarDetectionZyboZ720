// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 19:54:52 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/sub_zmax_zmin/sub_zmax_zmin_stub.v
// Design      : sub_zmax_zmin
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *)
module sub_zmax_zmin(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[15:0],CLK,S[15:0]" */;
  input [15:0]A;
  input [15:0]B;
  input CLK;
  output [15:0]S;
endmodule