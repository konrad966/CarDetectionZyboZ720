// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:01:30 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/adder_12s_11u_12s/adder_12s_11u_12s_sim_netlist.v
// Design      : adder_12s_11u_12s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_12s_11u_12s,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module adder_12s_11u_12s
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [11:0]S;

  wire [11:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "0" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12s_11u_12s_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "12" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_12s_11u_12s_c_addsub_v12_0_12
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
  input [11:0]A;
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
  output [11:0]S;

  wire \<const0> ;
  wire [11:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "0" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12s_11u_12s_c_addsub_v12_0_12_viv xst_addsub
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
MYK1EDwU30GYCLBoHxEGqT8eASlPNivYrSapUSq79S2E3hIgfHFWFQG88/XsDCjT+QTvilxhQwxd
KHecf4YfwR8wwmDkyrDjxlCGcDV8JhXiscaLqKL45g93wYrH8cOFDdVLsolMXqnmP1YpfIQIovhb
qCc0OWeCsmrBTtff3zh/P3o3UjvkF2uQM6eu720VZW6Z6+KKxN0bC1gukbS0jO0sehv0+cx6hSlS
NOScbwWjHxUpqa0vCF7//jV1fmTZ3RQeBa9HU6NVDH/F+/pQzHhrrDoPfDO21gqTYTDjOOEwU82s
mv92TjKCVVwEmAWMo8CIVL3PM+uk/3XTBf9ebg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qfCT07jnmCvIu1eZZ5G0Oy5m1A++5BSl7lryET89KWIyYycSEC/gnvTYl2UhmsUfyT/ncl1Pj3Qr
puFWIbnUpzZyE/NJSHC8jkSKzkrOokAAfqy+vsAlVff9k+KVpPhBC7FypdKRVq8nRIgMtFh42Pbm
5wjTMUBaWEo8AnYYcfIzB/3UTikykantYi5NsfWhEBz/WcdmnTKk0bwl0m0IjRL5s9DNVyJXgcyL
D2LIVjygLxQpNP3QoRfD8xZTbRKT0z3rYIzqdkpt+MJ/sjQi280vyYUSN0EifFE9Jk6nrez4JKyI
aB5Dp4JapFLxTUmaZ7nqwf2fXkTzNCqahiZrxg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10832)
`pragma protect data_block
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
CRU=
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
