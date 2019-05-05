// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  1 23:58:34 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_num_points/add_num_points_stub.v
// Design      : add_num_points
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *)
module add_num_points(A, B, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[10:0],B[11:0],CE,S[11:0]" */;
  input [10:0]A;
  input [11:0]B;
  input CE;
  output [11:0]S;
endmodule
