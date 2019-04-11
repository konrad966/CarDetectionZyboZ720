// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 19:21:35 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Add1_A11/Add1_A11_sim_netlist.v
// Design      : Add1_A11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Add1_A11,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Add1_A11
   (A,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [10:0]A;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "1" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "1" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add1_A11_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Add1_A11_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [10:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [10:0]S;

  wire \<const0> ;
  wire [10:0]A;
  wire [10:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "1" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "1" *) 
  (* C_B_WIDTH = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add1_A11_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qHDcD05Igd0yy0n0TaSiV5LJ3HXcRN+bWj6m3Yt5rOGIR6ioQmCGZtMz70UvZKNp7/5XmQjJZ3W9
mzjYtZ15xY/gE5ItzRMB58nwjQgi17S6qRpvneHpjm0bKupRLFNarF/1C7yNEiYdW8zkEpuljh09
VB+KakNns48k8lEEB5auTx7DeyYoKyd9caTEjj77mc2679c54ebZwRBCYlXLCPIHF5fhyAULNrbf
gsAroD3QKIVKvOYU1jFzCvi47m/zqwATx+s8q5feMeKXB7/jH7EdlS1pn6E/LpvbLAeQDqcJm57p
BQDy5x2vi/pQkesZt/NV1C2bP2T+dBHXWVfN6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hqb1bus/d4Bm0ExB9LUdCEiBiEx6Okr6vTD1zcILfS/rjioVkjdHAPe11eE6Ws8geiBYFp3WmbRx
sesQXkyq6vGLhiRujiJK1hvU3qBFLtlLJY1lIoHuU2XMAnWU7n7Buob5IabTYwjkJRzXw4Yeo8nd
etPxlHDAfHOdIvPtijlKxJI1g5X5EpfRBru4DLsjr7WourzQDQ5ypVUtdkSEQKxMUaLdnp6bxsdg
rvNvhiY7SYWZooCFLKapkVE5a5RAuYh17xgDxeeTbywAovuoh+9Cn5zkyVKL9IILuwJa/Bx+Zp9M
0t0ZFeHeRBQgrG46hJ1P7Q66RNGVk2/YM4ggQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
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
