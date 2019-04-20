// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 22:59:24 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/multiplier_18u_18u_36u/multiplier_18u_18u_36u_sim_netlist.v
// Design      : multiplier_18u_18u_36u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_18u_18u_36u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module multiplier_18u_18u_36u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_18u_18u_36u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "18" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "0" *) (* C_OUT_HIGH = "35" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_18u_18u_36u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [17:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [35:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
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
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_18u_18u_36u_mult_gen_v12_0_14_viv i_mult
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
FYkl7Cmbnx5RH+d/eKxxjjzBwIQnVTholGtbgHwzJWuF5ivxxPGyTydJCmkFcJ/FQCwkOUwAUvxR
aa9DcDNlJn9vg0u3aHvnkH/EPhUAFtMVeC8gXmXA9E9C6ESkuRT1EF7exI1MCoeQb0UnblD94i3t
Ud0P3WgUXCj64Ttyj4qPU/WbUu8yRyDccQhCljgLUuN4rOQrfvfL26hcZWl82b4B69l4TxZq8xPC
BDBANv8CbkmTMVkz9hPKnBKLu7mjLmLSDczgtNlwOYyhAZqyZYheJjn7XgMQzk20m+11pkyekZRI
SmdLxlyQsr6agDuGiJRHkXxaUJrB2Ym2gvGnLg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rZ5dF+XT2VMIA2MAs1nyjhEKvhKFnS717VoF6Owvxc58fKdLj8xJ3h5ZPa6ZwIN1ogJrvXk3llkd
NclnzUGcUvwalRtM6YgRKUINQMPt+/WBx9WBFNlbgdh/yersNzdOnSMzS0djnYPPe0J4kjUYfDps
ZlO9vmGmxcnf/MRDNyvMjAAcoQ/lrOHYMyIyS/mYZmXjvn6qkELHrvZbBKZPsvo6xPRIZm5Ez/k6
5j5iN+1SEeTr6LyMnTyRvWL4MbJ3noL+dpAZwglf57rA4kTSdGnjTOXDZpkCykpEkVHb6t3az9S/
D5uuo176j65g3rIc3pjJ4+wKNxkftNxxyfd0wA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19024)
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
