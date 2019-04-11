// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 19:17:26 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Sub_A11_B11/Sub_A11_B11_sim_netlist.v
// Design      : Sub_A11_B11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Sub_A11_B11,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Sub_A11_B11
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [10:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "11" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Sub_A11_B11_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Sub_A11_B11_c_addsub_v12_0_12
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
  input [10:0]B;
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
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "11" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Sub_A11_B11_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
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
bIl92oezuVxrO9Lug2C9WRdGkwUfQdqXsQCGvtPgQlE47ukstDA2Rh/B87s9ewYupQNLBwoFKPHP
zJnKuHCaNpTVuihYCTroO2991z01NzdOIO3iRGhagObSgYdoVQC5uXT8XHk2xzpXN55KrBX4ap1j
j9gRQNDMHZJa5DAcxIIFaa/778FlmcCIXcCItjleRcoPzvz32dbAiRGTcK+N3sk1aj/8gt6d2V7Z
GOX5q44EMxp9b4nXNHh5YtjKvTIAv5W8k5FwWHqmA+QSrmDXJyHe2EE/Zq6LHVXmJ3NN6VlelTtu
P3MtZSUuDFPImJ4qzLIbdBJyRHnAOgs67qwBwg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6fy+HdI8x8dCpEJgfwGm2NdHG3eNNPnDok22LzWrdSna2QamqHU6BkDhlqPjotEpWP/wzRE8wpht
so+gxc8852z5NCnXq7Awh0PCMyW2ECiXkjkluTH1ZgojaYLm93JoOGPa0RfuASCPbYDwMmW5YH/d
jqz59YsypeuTQxFF5WYglm0HDW3itD4lQxCswiKBYRt2j73fQ23m4Ov9U5ibRHblKf38UNoumIlx
JugaUmNKLMDOi7iLdkfDmmLJ6CMJQVlyWuMQswV2PzfPbyCRfXQzWgUSCrsU+etz+uHqtzxzlXCg
hGnw58HFd2pSlCzFOTdWTvCtmWC9b1o8e2X1Aw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10304)
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
