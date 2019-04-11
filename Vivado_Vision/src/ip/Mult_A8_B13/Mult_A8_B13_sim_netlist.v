// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:08:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A8_B13/Mult_A8_B13_sim_netlist.v
// Design      : Mult_A8_B13
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mult_A8_B13,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Mult_A8_B13
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [12:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [20:0]P;

  wire [7:0]A;
  wire [12:0]B;
  wire CLK;
  wire [20:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "13" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A8_B13_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "13" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "20" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mult_A8_B13_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [7:0]A;
  input [12:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [20:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [12:0]B;
  wire CLK;
  wire [20:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "13" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A8_B13_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q8NJ9Bclmsl1Ah91nmh4XU2o9PJEWUK5MjQSqA0AnF3Hfc9Gralt4m1jMbQQZiPgJ32uP2xwlG0B
j53zCdE1JMUyLxi8SVtxeGN9MJM5w4IrO0d34QtOTlPLMLkoJI08KXaBUqQZpiwnpAhaH5Ond1P5
5Jn/MG9+UJxTQyVrJr/01UdZewuogbOpU0dg+dknk/Ihbs0SNu5k8MYofifxRtGu6aS/GlLTkG+6
pXdVYzx0rkSY5dZtCO2vWB5b2M8PdgFhTVc2q3SbjhQsvM2LmTIL3UO3V8lvv5d6n9e6HVga8/Xy
veB3onCp/tqUdPvKQ9lC9zErFZOZpPEA9O3+hQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FHeFK80YlG1Gek+xnl4B00iAkuJ8pnWzHaGm+aMjFsm5n1Q8Wb/KaddSFfWZa6tRAEuy+F30r/H3
qp57ROS4XIqMCTtNsjPnToPsxSFZ/5/G2vezv3QpJO4tI8Hn+dFXTrT3omNCtshzZHvvb53lRpp4
A9z51Mni3Y038vclJgenEpeahXXVJrpDPcM1GAEGKP/ISuoatjXP21rroishCCaQmGZZySmYhmeK
7tTXgll5AEec101LbqV3RIUNKK1hvNF/u/e4vUVQ7gynxD7uyetb9HhgYAyaK1pgC2bzd6LqKCAp
7VSeFYFOhKHAPqK6Y4aY36S31jET9AJlHWkBsw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
