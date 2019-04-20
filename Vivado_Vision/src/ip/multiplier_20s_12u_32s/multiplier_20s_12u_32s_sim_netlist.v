// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 22:56:16 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_20s_12u_32s/multiplier_20s_12u_32s_sim_netlist.v
// Design      : multiplier_20s_12u_32s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_20s_12u_32s,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_20s_12u_32s
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [19:0]A;
  wire [11:0]B;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
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
  multiplier_20s_12u_32s_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "20" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_20s_12u_32s_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [19:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [19:0]A;
  wire [11:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
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
  multiplier_20s_12u_32s_mult_gen_v12_0_14_viv i_mult
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
dHm6kkuTtgDiMt4YyqxQ0bX7ubeDBImMRZ2T45KZwrAIVwtun4I0PiI1U0zWNVEe03+RrnCRLEPD
0RopCF/UU8vqJYrFtHm85ryIlcFXPtIfFv142MU75y4LdJl+7/NfiJS2qhy6uBRLvzj7di1D7ro4
IG0J3xhmTqba8AZId6Z5VRj/ppaGRfWLmi5Vid1Q4srVbv+Z8wfD4YQ3tHT951PbBLhQfAyuwxva
/qY67j/JSNUM6sG222yLn4N5dI9rkyJbTBUsMkWIxNeik3XIlpCS+sR2fvaj2wLMl+DUM9g96kv+
3LleTfyXlERzC3rPnx62P0eJkDHP4vBQbm7R2A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
anbQzPt4HziJVXR96m7fnP959oXcqeI2UHYAURIVRF8363GfeKR0z/c/k2Rr1ZO6pAX5Y9jweyT1
mgx7a82hFPw6CeKCH2AoEQzbHL17ct6supXMIteprGN47Fn80gBYft/+FMcAAB8sTe9PppPNN7tp
aNSeIMf2f/Qg4zoa3+AA0hRtymx/wo+cU+mY7uGFHrffu+SJHOnhTOTjBLsnrD47Vbh2DXzAWRj0
H/ncymI1fFzfOQMbiXj3nmDDFSSo2kHeJwl/DpsM2y/bpsgtUM4/LOFeGME6cQXpclR/zUpjUqRg
HMvTBqDyB6WsT/q44cpQ9vJ5+8K4SKTloa5Xrg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7856)
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
