// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:08:23 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_9s_9s_17s/multiplier_9s_9s_17s_sim_netlist.v
// Design      : multiplier_9s_9s_17s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_9s_9s_17s,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_9s_9s_17s
   (CLK,
    A,
    B,
    CE,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
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
pYJ8w1HomFLz8VBG1w4/mJMCDv1/XS36jNTMLNiIN48hKBSRqFd+hDe/qT4f8jgEW5qOMkQNNOCJ
wdZkSyLP2yVGw5HeLQdeZdjR3cCQpD538i+jvexgj3RjJl8qFTLaVg4IQTkObs6/Wa5K+o194XQZ
FRiVpjb6ZsHfDTifF0X0pgfIb08w3QtLNi5DvIVB/Nqg8tpRCr1XpVzBTVOYo01MtDohw/cwOMiz
6V9xFh7VLGCsNcGBoiVCHi+qzU5ved6atpmjWpwW+kz4d+PAvfFOs+qVo8SNHPHFfM/9OENyAgyp
n1zHePb0Qdl6KVwViFwL35McgwcsMYdYrYaKRA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g6W32QzE5rW8LHTxYj3oJWdXIZUxCg5sIiQfn2ir/QYb2zIkUw3wSwioc4wKmuhnc8a9ZqJ4b13s
MaHr/aBOiKUbCmBOATj9Tia1SJb1jhboG45A+OUTiBZe3vt/2hVH9vhnHQGrGIl3cdGabfH5hPMR
IPHv43Tf9cq3c/hHe8a64fr5kFbnj7RKpSo3nMsWL9qvagw6rmGE7A5JEz3VHnTVBYuwnDxU+n8o
e6UxZYWkVRo66RlYKy8tCuw80QQvrXN87j39fGeiIIYDtobfOcaola1ilkJc2CrOT8C8QOJ0qQTq
qje6yFP6yi8FHKUq6JimtBBptUDkEsuj+Ts44w==

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
