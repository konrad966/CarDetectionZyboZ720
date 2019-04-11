// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:08:34 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_9s_9s_17s/multiplier_9s_9s_17s_sim_netlist.v
// Design      : multiplier_9s_9s_17s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_9s_9s_17s,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_9s_9s_17s
   (CLK,
    A,
    B,
    CE,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "17" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_9s_9s_17s_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "9" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "9" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "17" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_9s_9s_17s_mult_gen_v12_0_14
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
  input [8:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [17:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [17:0]P;
  wire SCLR;
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "9" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "9" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "17" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_9s_9s_17s_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
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
qDonrguGfvLidokDYBlk+pmx/aJ0Cc5qQs20DRiPRffoozY/qw7S+AxdLspwkSh9EJ0eUNrWbsxV
crnOVKQ2aHcFXTIjrJxLhXMdqYUR7b2x0bgv3M3l3IOZoRjCwU0p9vs5POVbmn4IHfaG/3O9oFx7
ocbTymon/3Ntkh0iHevcO86qTJfuTjTsZnm24df7f0EzU4GhqL17CBwTdDc+t2SBSCsABx6F29Nu
yzyfoUWYzO4J42/SH8m68HyUkL8XFOIBY+ZDYdL/Ve5UheDgB4tFjPhCOyBqF2yzrwRd7bOqXBOP
X/RCVrfkKkaqXeATWd6VM/Fp7hEqwNTP/eKdlQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Cjc5VIzmLGbexq+3rpal7xjG35HgMNwBi/4nXOYfaZ86cnjcBWdLNdmFQlxeb+W/VOuGNGbmDC4i
gZJhCOvskghPxhDgV7+MYnUQ6urpp0bimh16oxaLyg7jBOtBae8q5kQpIscKsJuVppXs2fVKSAoj
K2pbqh5Vt4+h0PTXvLarGNsur9YDJGx/6pqscL68XbysviILxUWZQrpEUoacCSdvk7NOXW6HD4Lu
3VGRk/qBPw2onToxTVeUwqg5T92p8iLBB6B6F+5IA72CMUojiCIseE9k6jc3/DabVbKn/N9RrBu0
N5LD73YtswGdqKxuE445uR8uH4ZMBGRcfLD5BA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7392)
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
