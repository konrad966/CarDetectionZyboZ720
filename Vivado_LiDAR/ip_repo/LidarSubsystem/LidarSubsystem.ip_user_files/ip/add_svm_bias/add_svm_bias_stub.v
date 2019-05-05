// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May  5 14:41:50 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_LiDAR/ip_repo/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_svm_bias/add_svm_bias_stub.v
// Design      : add_svm_bias
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module add_svm_bias(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[14:0],B[21:0],CLK,S[21:0]" */;
  input [14:0]A;
  input [21:0]B;
  input CLK;
  output [21:0]S;
endmodule
