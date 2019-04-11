// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 21 11:44:51 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/MultProbability/MultProbability_sim_netlist.v
// Design      : MultProbability
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MultProbability,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module MultProbability
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultProbability_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module MultProbability_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultProbability_mult_gen_v12_0_14_viv i_mult
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
pVwWl96gUQnhIHWMF9JYgFH7t7nGewNLs8OU7hCEYJeUcPVgu4BQcQTuYnBlr7qUX/xPHL6RdteZ
tTSFzf2l+euhm7cTqTu8XKs4hsnHuZ5Cbrv0ivb50z/54qzGVYV4mhlSIKBBwNqpG+8QLiw6kedX
GHc9cT3yw+8xxyfPqcxOoxT+EJ7yuqbxQdAX1gc8tMRAaFkZP2BxrrJ98ydIZVM/pkI03IL5qCIi
VMwHoK+1han9+rmi82j+mFjTIrg4l8Yl++cI6AB0Kkg6sukOL8LFrKOp9886ZpVsmDlj4RS0mw6a
Ye5BSFyBybBTwtAP5+BiT1RNsPbWoyEB/22izA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6zFhsqR7ALy5nWeyWx27xGlq1B0yW4gZ8R2ffN1pqfULoKrId7fztF2yw0F3tPPzJXGeg60UO4WF
51I1IIsnoyQ43PmCMSFV4j6AY3LrUQBSvfmCzrWzOTdmNKWt7ZUCNI9FoLPb0q/SwZyGgmjHhfy9
YXQ4y+DfasApL/3UXgWrHKvrSTirzF0xrr9Jv80ExB7r7PwWnaNgwEwRnYk3ZBlP17224i7SJ0BX
Tj0/N8//cIGDjSy7Ve1DR36W9U2vMmatPzJeTiqJyIZ1LYGZdGZQJ+fhnbbVHDOGg2dnNCi8TUpK
/s2Dmm6Fh7WlFCsHpq6JCHohpj4zLtve3f//8w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
wMUMsdKKM4BMnv52YXfBQWe5
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
