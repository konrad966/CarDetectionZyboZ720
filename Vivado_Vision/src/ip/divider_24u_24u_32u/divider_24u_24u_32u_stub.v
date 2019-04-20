// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Apr 13 00:00:55 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/divider_24u_24u_32u/divider_24u_24u_32u_stub.v
// Design      : divider_24u_24u_32u
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_14,Vivado 2018.3" *)
module divider_24u_24u_32u(aclk, aresetn, s_axis_divisor_tvalid, 
  s_axis_divisor_tdata, s_axis_dividend_tvalid, s_axis_dividend_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_divisor_tvalid,s_axis_divisor_tdata[23:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[23:0],m_axis_dout_tvalid,m_axis_dout_tdata[31:0]" */;
  input aclk;
  input aresetn;
  input s_axis_divisor_tvalid;
  input [23:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  input [23:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [31:0]m_axis_dout_tdata;
endmodule
