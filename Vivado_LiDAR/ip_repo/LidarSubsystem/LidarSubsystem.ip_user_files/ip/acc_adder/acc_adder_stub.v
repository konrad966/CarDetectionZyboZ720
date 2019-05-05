// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May  5 14:47:17 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_LiDAR/ip_repo/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/acc_adder/acc_adder_stub.v
// Design      : acc_adder
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module acc_adder(A, B, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[15:0],B[24:0],CE,S[24:0]" */;
  input [15:0]A;
  input [24:0]B;
  input CE;
  output [24:0]S;
endmodule
