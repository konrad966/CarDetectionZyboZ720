// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:00:16 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_12u_10u_12u/multiplier_12u_10u_12u_sim_netlist.v
// Design      : multiplier_12u_10u_12u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_12u_10u_12u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_12u_10u_12u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [11:0]A;
  wire [9:0]B;
  wire CLK;
  wire [11:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_12u_10u_12u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "12" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "20" *) 
(* C_OUT_LOW = "9" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_12u_10u_12u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [11:0]A;
  input [9:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [11:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [11:0]A;
  wire [9:0]B;
  wire CLK;
  wire [11:0]P;
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
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_12u_10u_12u_mult_gen_v12_0_14_viv i_mult
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
AgpXkjxy1U64UM9isjBvcYRGUl3OX2NY5rZm4PTWoPtmqzVnGYw8Fu8qDYegrC5hoE3P7VT1jFI7
owSSTSpMJM82/rP83vqAAIU8LJqOywnqhQGsWMFZQOvVX2bywUYkYhH6npYvenxgmjiBOgPLIBFJ
6sxe/n5V9spJ0EBPZ1aBHgSQwUtdqWLDH9LBClrF6HzTY9E/LBrUQ0qCmHf59pqD1b/HMb3DQv4/
Ld8i8yAuXE9i/XI5tad+L/vIou/RsQ0dLS7dc1XwboajM878JpmsqufxQ50+VM22UukcVpKiN+OF
JuDVPXQUm6jmvXZkhxULfFmmL99H/cZm9E+3/g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPz4RRCj8bV18WEyoD9uQrjmuJJ5IRYEocjKyY2Vw5+D0NoNarhmvgU6KicIMEQ30zn9UaI/9Joz
dwU4PTaIYtrAwUzysaxDZju6sPbrNOl5Mh0til9sMrkcWmXTujY21MyrrrWKzVg5LlUYhvYnkODX
HxowpLECmzJxqfycarVveXkQjVnSCm2FqJJ0Cum0fC5rdosCmgydWEUGKPpagvDAXwwcIWQwvJsY
gH5fgvodJIQT2mDPX1qjXtIXUPCaGAjx3kngFhrSIqJraBnbCAPAS3luji7F7L1XpgyIUoKM7CWd
h/hR3wpkdGkMvO7yzlkSJTDlEDi3Po6h2u6TCw==

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
