// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:08:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A7_B6/Mult_A7_B6_sim_netlist.v
// Design      : Mult_A7_B6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mult_A7_B6,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Mult_A7_B6
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [6:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [5:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [12:0]P;

  wire [6:0]A;
  wire [5:0]B;
  wire CLK;
  wire [12:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "7" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "6" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "12" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A7_B6_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "7" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "6" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "12" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mult_A7_B6_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [6:0]A;
  input [5:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [12:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [6:0]A;
  wire [5:0]B;
  wire CLK;
  wire [12:0]P;
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
  (* C_A_WIDTH = "7" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "6" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "12" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A7_B6_mult_gen_v12_0_14_viv i_mult
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
JiFhJpI/0/J5TmpXFBaAqArNnfH5MG8reTSgtKfB9Xc4rwM3IbS92KIt/GBrmwQhT04jaNVFekBn
GfuC3AAQYpSZ0iObGrTnqbka6xHbDZAY6RPv3K7tYbmIfdDhn0O4f5IZYUHWmnLF0NmoxpD0aRNb
oHOwmhK252VkKijNkIpRR/X79Nc5W4RH3mbM66Wl9Ffgzu8+0OcDuy3Q2WxafrcsdMI7gxFb9vc3
IF4P4vPCM8HyTI5W4jL9Ic1U429XZhZwZnAbxwDa0OPG+u+t2BhY9hoht0B3eNTnrewbGIeh3RoJ
i4tigljVbA5vtA81RlrO2/tJdtmYuiLLxb4MFg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p7NSHSOFIicqWe6tHVYC6PvoGyGtV29J4roWZaaLPZAKSWPbZQeyIPYX+qga0Fa7riUqx2c7DhuP
F2jkkwAt99AAwZJ3x+2Y76zJ/eX53CMlRledtpn04a7TicYidfoB5hfgNqcUZN39DjILCg8FCAnq
YS6ZYT3xtvGnyUCBIhSH0Z4hL/V4Cwq4n3e50FZO+rKYoouRSobTat3EIEvJN1b4DhPzQMV973jg
KsYAzuQTyafJIkNVdj/dCQ8/R1X4Dp4hRuejAz5KRfc6OPymzyCTrbZWsMT4NE7RPrFsQKIn9hwd
15uG3FTkwZOWcPQ2CbqcSnWK1Fhe9dJLi/lzRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
tAi3am3Qbq/nZSDHRe5lV79YIm8iAzL6xQ==
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
