// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:13:56 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/AddVer/AddVer_sim_netlist.v
// Design      : AddVer
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AddVer,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module AddVer
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
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
  (* C_HAS_CE = "0" *) 
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
  AddVer_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
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
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module AddVer_c_addsub_v12_0_12
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
  (* C_HAS_CE = "0" *) 
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
  AddVer_c_addsub_v12_0_12_viv xst_addsub
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
RyyH93H6FCXNiSUlPfOiIfowUlKGLm6U3nbEwTfhUtuQRj6xj8GGZkwg/piW7VzQhnI/b4AhlU/6
E6UcMYZ7m2fq8EH4xEJFKiOqLuicfT8qFBSnPGsmGs9EAd1et9TuVzPG7ZQmYH4JkfOawqGAGHIS
bwc1T5V4sMSSkAfDgsvJ39czgobhuIn2RnKN7YizqJYTq7m5B0q3JA/kslVeDkQHSXkRPAg2Lz1b
Hd0Rl1wbs07lqfDHACvRT5rRFQJfgvcpajNMHwik/Glv38VKzofeACTjeljJdFow6DKGNvMs7Ryk
7LOqL5U8ZhEpNIk8Zu1bjZ1tRtSNAyhCl4Wjrg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jfpK4gCT1CuqWqGtnvEjioKksOeRTYa/T9dVqM2F4vOkeiUNK8uUnOmgbx9KLO2rCyhKfUswquNu
mKWAO+6+cgLFTwlaY3DiAoyaGEkqgeJEmL2JkbBryMOUpyvYxT7L/loPl0AI2ok+853w5S2vJsMy
FmRDFnVWJW/bZYR2SMkrn7aI+kHlMctVkZDjDJqk+HiaVDGe1+ZngrLLPB+938IAZ538uZ8D03YH
wnrN8ylLCGbHZmrC7ZC5qSAf+rvaHitHNyjhmboytOjMxwjsteSMPPb0OLWFrsC+a3AqmMs4hstO
VE2/gMWVnmYscl32I/8r8E9mBrh8PcbysVyePA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3888)
`pragma protect data_block
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
s1z0prZ1dQ2f5YwV
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
