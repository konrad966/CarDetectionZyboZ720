// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:01:52 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_10u_11u_10u/multiplier_10u_11u_10u_sim_netlist.v
// Design      : multiplier_10u_11u_10u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_10u_11u_10u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_10u_11u_10u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [9:0]P;

  wire [9:0]A;
  wire [10:0]B;
  wire CLK;
  wire [9:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
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
  (* C_OUT_HIGH = "18" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_10u_11u_10u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "10" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "11" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "18" *) 
(* C_OUT_LOW = "9" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_10u_11u_10u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [9:0]A;
  input [10:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [9:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [9:0]A;
  wire [10:0]B;
  wire CLK;
  wire [9:0]P;
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
  (* C_A_WIDTH = "10" *) 
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
  (* C_OUT_HIGH = "18" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_10u_11u_10u_mult_gen_v12_0_14_viv i_mult
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
ciHNE9aDH/cOq6H+1KPu1AUQ2j5R7CXow290YOX01+XMkUrFwVUYXaLnmgNho+0IB6KRba7hHTPB
OdZEMIoYXyH9woFOcOY2q/ikopnvWR8ZKbgmKgil41KyCqo02qP0Pr4Ci0lBawz9Nuh3orVgCpb2
8FFi9CLvHMrDqCOfq2nb+8EmNIYgeMVcE/qjEbEyzRLGUNEuBtzEWBWDZ1PycNvXUYvV6J1YHTkQ
gu/18nJjWzh0EztQ630LYZKKQA7C9mmwZm53IMZsv6kVrFb5LCrFNx7Zec7s7xmBYDczNezBkSLf
ONk7bPnxS3yJKTFiekZT4TB6noFLERb5WQbBWg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FhbEf6mKlkc4XNG6bmokScTKW65st5bPHUJeygUi1Dq7roRg2AS9Pkc3uVuOk0cVDvuN3ncAjmRs
biqzJfVIsA2yKQ+zOjJsQ2cORCA1BEFoVS8Pr6gzbtmDzU3+/5MWypk/32dQ23m9SqyXZ0L380Gr
zCiwzJDA5eyBpFzW+xZ/mHcos+jKcWiyZ6RiSWNsMWQdquL1byeSRBeumtek4/zG5odMuRprfd61
4o9kNzQN5+fTb2VtNQKD13CFs4dKARmnafp5IFX1+KkMgk9myT5sVBdIbfVPUJGxxazU+mbBTRFx
3DfaT+k0UakwqBqZMlAPc8NHcgiWu4vXa4aQ5w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8144)
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
