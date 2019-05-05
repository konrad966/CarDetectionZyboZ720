// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Apr 30 21:02:24 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/acc_adder/acc_adder_sim_netlist.v
// Design      : acc_adder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "acc_adder,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module acc_adder
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [24:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [24:0]S;

  wire [15:0]A;
  wire [24:0]B;
  wire [24:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000000000" *) 
  (* C_B_WIDTH = "25" *) 
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
  (* C_OUT_WIDTH = "25" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  acc_adder_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000000000" *) 
(* C_B_WIDTH = "25" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "25" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module acc_adder_c_addsub_v12_0_12
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
  input [15:0]A;
  input [24:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [24:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [24:0]B;
  wire [24:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000000000" *) 
  (* C_B_WIDTH = "25" *) 
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
  (* C_OUT_WIDTH = "25" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  acc_adder_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
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
RDToilPSnh2xgheKMg6Lre7DF5AVjZK7uR1tSBSoTLlJGh/M9NPCK9NRUS685UZzPqhbSS04Kriv
IQhUzEmAVFVnncXH8yg+bv+cD82Vc1lpdbh4HYIQrSSNCO1ETowm9giPotbjwvjUj2ta2zu0Zm4P
S6LV+tXkR4ZPdT0CdKQP6BYaf3znh8K45o3tZJQGOS8811cgaDiGcVgT0oSRLyjOU7JKgAL0V7em
O7N/XDidQ2oggowIOV8YkdBpcxAL36lUYmPVnr6gEOEIG8RYg+SFd0T2ntpe0pcaKMaUBdEe/Wbd
XUm87xq7EPb3tD70YFa5+9tbghlGmJTqaLThYw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YbLZzdCN/6B3TzmdE/+nMYPdFrf/bt73b7Np7GOaMuQks0Jm2HM+CsfVrDbEp7lzwYQc4HvHp4Dl
CDb7mqstx5pw8tS2AfqIMPGq6vSh+UIBrzgv96l74Tx41NONJ/6+ixEcN32udP18qXoPjLoQA3LW
RuXaBSAQYK0hf1e3PprgHALcEvPgxM1mivpq3bjkhs/gn0BZ+2wP1dO5cnNyZae2oM1cFPeJI+KF
wAQFlsEpPBfg8lOTy4DR3L17uA4NWAha58cI+D62CFPy3m2tjMiyY01eu6ao5Y8x+UkGzX/prIjU
o96L4y6W20H8LHU73bTb36t8AjugBMq+4Kihzw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13456)
`pragma protect data_block
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
YMKDuQ==
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
