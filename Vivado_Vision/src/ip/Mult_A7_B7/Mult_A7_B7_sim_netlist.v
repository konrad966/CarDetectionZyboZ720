// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:08:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A7_B7/Mult_A7_B7_sim_netlist.v
// Design      : Mult_A7_B7
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mult_A7_B7,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Mult_A7_B7
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [6:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [6:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [13:0]P;

  wire [6:0]A;
  wire [6:0]B;
  wire CLK;
  wire [13:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "7" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "13" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A7_B7_mult_gen_v12_0_14 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "7" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "13" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mult_A7_B7_mult_gen_v12_0_14
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
  input [6:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [13:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [6:0]A;
  wire [6:0]B;
  wire CLK;
  wire [13:0]P;
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
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "13" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A7_B7_mult_gen_v12_0_14_viv i_mult
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
A403sgbXi5AcToiFTBkSTHI9epmKnbLkrr7rgAsrllSC6O6LHg3r+0h3iW1hPJ+6VMti6r0Ne26g
rMVHtP8WSsgd2rYvdxck4/GyfdKheCzmLQ6RUxfk3SX3Sw7Eesfx193W2RZcOU2lAJzQs7YuEFX+
NpakZO9GnO6l1GswodOU1xCj2J8oyR+qDVIoZQNA5S/DHAJtFI2hecU41NKUh+v0va/hlyeAf2Ej
pCvQXFY0XR0Qg0+r+VicpFsmD9uNWodxJY6c8ZG82L24botUX3racHp58uXI70n4u1uytYYHGs4T
KB75xD2UmZ1kyTQ8KYybuzHTnKcawz8PTvW0cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uN7TWslaOPN0Sv8h7IHGRKySHOyt835Wq3jLPJilojrabi0zrIdKIEnnu/ozOGcd64e500GSs2Es
w/YrGblj2qN0AiZLgqiJSCW+Q1D7gtItrRc4ALV7VC2hSFbLNnaJJhLm7npSx3duq+llsi9kD4rD
fqcySQGQDaIWMgU5FiCTYC7dIYba52DsJy7pZgtywg6V8E6/GfjWILoWwAcCnJHm0TsI9MLmxKjU
IycSB9JpV8rADSECQHeSVAlKGPIPEx5MlGrjfPjMf/WJDSe2tp4U0ZvxEHFxYGtFPiTqFcwhHaVB
hYDijG50n+rJtY221TqPidPKiE+o6+++pirUog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
173kww3ApvuboWICSXXVS+dgG3J/mWmoRQ==
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
