// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:02:22 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/divider_24u_24u_32u/divider_24u_24u_32u_stub.v
// Design      : divider_24u_24u_32u
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_13,Vivado 2018.2" *)
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
