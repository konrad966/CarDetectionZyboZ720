// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:07:28 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/subtracter_11u_11u_11u/subtracter_11u_11u_11u_sim_netlist.v
// Design      : subtracter_11u_11u_11u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtracter_11u_11u_11u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module subtracter_11u_11u_11u
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [10:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  subtracter_11u_11u_11u_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtracter_11u_11u_11u_c_addsub_v12_0_12
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
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
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
  subtracter_11u_11u_11u_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
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
gpdMM+VZGqbraaeGOWZ/wUV2e2ZelkouARgPv1cdTP+FXZYeVTuuS4CmqJScgRB1qdy2bEsDqZF2
J+8aIr/1eB4hiVNDV2tEFiRJAMFDLYFc/Hlo1/fbvy4iEXFewrw/CvEM5oAsGBawn9arugALU7mX
h4GrxQyBBjvCBWEFgBguGNRIAfxzcBtUqbVyX7iwLvquE88uml9kUKl7VWDDBLXlVwnskYi9xntS
WxrcJgpU6ggyMa8klm6WXv7KEX0pIX4s3Pqu3NuL8PomzEYfcMzAh2ICpbG6QlFeZZfNQU4c9VlD
aHvpEdeLNdcVFjmZ5V3hm1n7xrW3kK/a2dYXLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
25PcXy2jPJ/itMziFiGyGWE4PktR4rC4W9sk3onQ3np0XNA3vAfvzyORF2TVDFkOP56rMK+V2KXS
ICGht6XJ1Nsmf185ozzNZbYK5kXzD2y6OFebveypQIG4/eOVQcbdp6Fk4qu/5CQBnaFs4OGgMsJz
wwySlC65YbawlOiFRXgyTcGwHs3dDsaZa8IGg5VviCAUxq34fSInso572Y6PKoOAlySjFUbxc+W5
ct4pwHwlRw9hKiMxUKEP7g7l8VV5cAJGcgLCzuUJ9O88+IwUHSFdVXuaq7AECuHlFnEbxIpaY2Uw
1xOIwXCENQvNxYbcjLz/E/xE2kTt2nUD4PURxg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10656)
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
