// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 19:27:34 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Add1_A9/Add1_A9_sim_netlist.v
// Design      : Add1_A9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Add1_A9,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Add1_A9
   (A,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [8:0]S;

  wire [8:0]A;
  wire [8:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "9" *) 
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
  (* C_OUT_WIDTH = "9" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add1_A9_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "9" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Add1_A9_c_addsub_v12_0_12
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
  input [8:0]A;
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
  output [8:0]S;

  wire \<const0> ;
  wire [8:0]A;
  wire [8:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "9" *) 
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
  (* C_OUT_WIDTH = "9" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add1_A9_c_addsub_v12_0_12_viv xst_addsub
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
XfbwSOhL0A4hrNuOCjS92zpnCte/Dz2jMbo0N8FAt0s7D5eMtJ78rJ78XcF3/VKlb5Q54bqDtn4i
sWXvQwY2yVZOvmllZYinbPkiWLjlOxepT+RocypP9ih0xLJ+PXrNmogfWKzlFlSlDbfV8EbGEj76
dtpR9FYFTZGfC8B4gjBV3h1nhnOXQFuoVZIAg/rU8Pz8PBK2SsKn22DPAbxdnkIHY71iwWgXI1zr
yyT0dRxEI+9Tk0KQRRGfuYWZZEc7Z7P4i/n+dvsD6OdaLK4wNjAwRx+q/M9vSi1XuJrCAE699v9H
qOUoKaKkmPr1sCRE9t9SyIy9Nn9mtcViRP6ZPg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WCin2CojUha3r6TsUITZGjRxW3ymotcThrDEgw/uUsHlBZJKG2k/Zeh6NHmNtbqB11NyXfTefbWh
mS8xmzXDUx4MlaD70PMPC9j3qHEUYjmeqfOIMqoCY9THesxRgHPwtGtXaZPqIAum3tTm3wng1nu5
cFefBdpfZTuiNw16jtCMoACePsftOht2YOInK0eA3iX/W5IvbIyjABbAjba231Ew32HlGS6nlm0t
2SmIqUn3W3W/m37xulOLznYXWaX8qarQGSHMOGDNP4eerofovbclwiNgeIJc1zn55J/iYJgCW+Hl
PcdS21LISPRhe66taKNCynXbPOCwIC2hOxFX9Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3888)
`pragma protect data_block
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
Jd2bJeK5b5e3bFKG
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
