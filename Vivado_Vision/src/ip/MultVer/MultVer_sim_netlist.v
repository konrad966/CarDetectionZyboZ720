// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:02:25 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/MultVer/MultVer_sim_netlist.v
// Design      : MultVer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MultVer,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module MultVer
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [6:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [8:0]A;
  wire [6:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "9" *) 
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
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultVer_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "9" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "7" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module MultVer_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [8:0]A;
  input [6:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [8:0]A;
  wire [6:0]B;
  wire CLK;
  wire [15:0]P;
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
  (* C_A_WIDTH = "9" *) 
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
  (* C_OUT_HIGH = "15" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultVer_mult_gen_v12_0_14_viv i_mult
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
p8nPPZg3+0FILl+ZTXCXiX2pbSyHUmSaW1UBX3fNmnZ6CuxGyg9/u8DCdjrwmW12qzliFnbMAN3C
dVYfj36QeJDdm9ZkmyqFYQMpZu5NQLnbogCEQeO25lEo8vsUQqL10iVC1Nsaskac5bMpYvOTbfum
8mui60aSJxFdnQPughgJyoaiexgQOPlU5gnhJrdvh/nfTTUwGNS6pu6HrwiAu3dVdFfaPHtqmecc
2ltlhM3q0XJe7kNLSmAZo+tjvTlmFGwq6SCPS7mOEgZ2n1AaBRGwuiel8c97Qiul7/K/OLFmFbKK
cfDkOp1yhq8QHXBPScIoBDk4zEoreiT57s825A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vv1HqUFOZV12Yu5QbwaZWx8jQOL9Og4Zp/nkwpVZMdF6gQnG8m7N04ZLeaA/hjNVIduZAfVCTFl9
RoBnRKchzyRb3D6NZHojSkNWiS5Um51nYnBQqMPYZrcIgZNXGi/7zaq3JWH1Qh2ZfpErhgYT/287
4PAflHwbwN9ShQspkjwPKoDLzUgO8YPGX6avn8xs8gM5NnF3FotH/8n5OazFazOxQu9IuNuvxbmm
HogTnviysuG85BB8dyTZplgvbk3M578j+d2p3/h3NI1es9njV2nVvPIAtoBxdxKwnq/lHCKU1PQc
nyWbqeT1uny11tM2qc0fR/yAVoQkm6twgRQlWw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
5xbEhtYHU+Cw
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
