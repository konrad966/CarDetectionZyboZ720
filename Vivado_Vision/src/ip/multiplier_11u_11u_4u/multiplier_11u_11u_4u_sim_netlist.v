// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:03:32 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_11u_11u_4u/multiplier_11u_11u_4u_sim_netlist.v
// Design      : multiplier_11u_11u_4u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_11u_11u_4u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_11u_11u_4u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [3:0]P;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [3:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "18" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_11u_11u_4u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "11" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "11" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "21" *) 
(* C_OUT_LOW = "18" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_11u_11u_4u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [10:0]A;
  input [10:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [3:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [3:0]P;
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "18" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_11u_11u_4u_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
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
g7azmhtm6FcP7uNFjuXJjN8Z6yccOPk3SSjzvKB27peFKmnPmQmov5+YTGwYqqN9LpdyiUExk8K6
vPnJqontvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
MFrqn2K0Cr7TmQ5al162oDGiY83d+AkTWOgFyXPYrTNznygR/tx44RAp24ytphNK9p6shs2EFMg/
Qqz0l8DCWiVEoJ/T8vMpnAn7Y+poGVGS1qAR3qE2njrl81VcGBZJeFaWIudhfr/DLTuuf2T/dWDU
YpelM3KbfYNPPiPy8PU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FZca5XZouG+/BYoQ8qrJTmnJanku4IprIWRkO6VciHehE5WehR0wsZJhfKlqLEeY1oTPA4bXaxmY
NjYkrop4EOwW8t47/hj2kFLI1OKUAE/TAhCGg/aNSOViUbB3dUomG/y+TBuDt9L6g0Arj1vb/5Pt
IChc5ZdEfRr1lJMTpFfP+5qmEH6lePPdzgPZATPB4Zrj0P6EyiEsU1FKBuAKd9iYNGiLCxVomaz0
3/RwK2Nl+/l4mc7PJt5Hso+4s1qHb4s2wD+OgbIwdH26ZkEnKVFpaLiuWQKu9uhDLGnsBMPf7XDE
p29f+mrvP9Zi/3nonA2aBKrTwR7XuH+ZYoakxA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jP68OjlYJglq3zpmKrXOhq7Sex8XNW8fQKp4hUNmuw06OOoKhQASNTnjtyVjAIk/VXb64ViBu1ds
cNMJybDSWBhnChfJq4h9PNybShGJXxSm3NDOo5wUHKf10Eti3fSotB9rVks+tNdTEZo4O97kgfdD
G1FNOqlsYcQiShEGLLiEQ2yYtgJBxJ+jc8mFjIEfPhAYy1ElrvtFEpnhkNS2LfE7xdWOQdO/XoKK
ibeY08pgncTI3pvO6TMbXushf0AX2S7hgfk8ysZrT+0gktqFrJnyR6oljS6VVPLtRNW2vo/cC8XQ
Bzvwwt4cpSo5KLS4XxB6qClZipItck2AUEdIbQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o7jAZIoXlFbFtDYmtXhfRBlb07dhBb6Wp03mlT4T0FXtvccSHWhWZgc+VUNwt6TohLihOwvSipPP
XVXpGL4pUVYNdQBCVpFzhMkt6jhyUgsF5t10yI5Of6YEfQrDHigceoBukM3+/zJHPprrPQE6FUvC
wXSGhBCXnHJs1R+n4l0714w8/WftPQhlD9QGQp1qT2VARQXUKBRxcRjxe9TcLfs0P4xnN7uHu0R6
JTmV+MHmhGpetSZGx+B2Wa1MQofUPURqwE70IwBoUhdXH8+39DT5I6x2+wMY6RcVATnhNd2BCgPd
RzAhwfrcqRiU9aB+eNNdFR8ve9M2nGMmV2JxZg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Cl1Dz+fZIDYEIQuUd0pSg+5jknmtX/JERd+yOZ2SRaVra/4pU/eCTjEXMzhz4VFGYB6dgUxMsGBk
nL2WNdn/uaSPpi6mNF0UHQvZik4pUkYPrnRbFveVqW8i1t95SG0RW96uD19206lWrp5U1lqc4fH7
sfKHi8ZpU3MAg0DOO0E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qqp76m2aV9ue8Qai7QUavb+lhRYdu/txrnwYLzwTe0vS0S2OD1vxr8VeIT3bF/ZuXlTGm4S/UCSF
bgOPp7VqEOeGNfsSPK+VpQ+foQMENCQYccwKquBDSg/sLjpPK9uuoGLBLxjw2OwsRzplVFXiPcRN
LYK1/FmCP7RJBNgmhh/ti99a+WSl6i2YIIRGocNplQlG8FXq8ZTTHd/x2Gtdf/zGvJOy/fNsos6S
Oq9yJ0rMmbGeWbri5c04gZM08pUmXBsivgOHm2IVEZZFM4SBqrsi0xa52hs2kelc3iKJcWiTvU3X
0fJP9qNFuIjXBPPZvEYwhVtIh6DwiIC2viSscQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lHt1wT6dxU0Kuv/Jq7RrVbWmbW/x8rvWFCRzuQmNZCyNTv02OHPOvZi18ee5kZWinx7ukupMol9h
Ss1nnW6CXjeflHVeqoZXom1I+gPqeQewvZOSbeTUC9XG/1/0PLn2eeK2bIjitKUCssEgK9MHRpFA
PBFc1cWLJgbIG12OyLkd66v95XHw4BmxyZ/1o8OlbTGFEz3XTcolRdEazWNoaybaO/bW7R2NdX9w
rGr55n9LvwRPiBryX7kAnbhyX9Tl1nU72iFPnpce9CC7IOB5eCrfHHiac5HijVLuNvwNFYEr0Oxr
ueLVACKLV1gZzWNyUKrtmHbNzo8JZO7FGwsytA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ldVz1cIzVuHx/76IdocU7HPIm9yQ0wnmxV+o9wh9QqbNBZl5bW1KJ7LaS2hg6B32t1VBa61fUxia
0qu+fsbZGEVDdUtSxve2gl5rabFfPU8o/fFTRaVGWLoE0kr8KX8kbFu7gCaAgruzxOYcAx0tWZsP
jT2XQp5iHjImEfPuytY1Adlr0zEEdHKNL3QI9cR/ey3kU6e8QjwarTsotTNHTLOmcEWdr6Vujm8b
eU64tMnebnXaku6Kv9yMxbjMXl5JCjv7o3OAhHPJWr2F+xmt2bKTrO7lhMxrkl4Ud7K9sQ/cWux4
1ZiDTksSbFR3ZQFNYMleM4+GdpxRuU/oyvQxqw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8928)
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
