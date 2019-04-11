// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 19:18:03 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Sub_A9_B9/Sub_A9_B9_sim_netlist.v
// Design      : Sub_A9_B9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Sub_A9_B9,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Sub_A9_B9
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [8:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [8:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [8:0]S;

  wire [8:0]A;
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
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
  (* c_a_width = "9" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000" *) 
  (* c_b_width = "9" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Sub_A9_B9_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "9" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000" *) 
(* C_B_WIDTH = "9" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Sub_A9_B9_c_addsub_v12_0_12
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
  input [8:0]B;
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
  wire [8:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
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
  (* c_a_width = "9" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000" *) 
  (* c_b_width = "9" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Sub_A9_B9_c_addsub_v12_0_12_viv xst_addsub
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
GXnqLualNtTP6rAXOS1p4S73CWkuEmj4FOFHnvsBwEPEziq9KNHhHoIWS83ItQCIQa4OgVhcKu6Q
OQVo8hI/m6kdUbUudfTwpcFBru0NDoNe1nN9IB+npJHRg/9BiRjBhMPWzrwtouWjeWhTQpuQaTpM
91HP/G42BRBEbd/5fNkRbh2fqV5xSGlOxg5wq+hbTyuMO1Sg9D+kHZoIBTaZFq89hCYFwOeZZUNz
0JhQ+30j5QI0mjNX8xfbfZzanBmIyQiSgPEsmB9Aoyn5ScU/cHj60l+F5vYrFWlbSsBFNPWn4wVb
df344GzuGwYDMjs/ra/WhhGfjRpOhl+WssZWsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SAuS3Xq2pc3hBr1H8xj/uIErcVWrx/947r+Omov0DvcIzz7BoYt3FgLMudXqmLbS4rMwtDeHN681
3SZn/q5nqgBlnmJvaPWUaqheMDvmcLSp1o8NcZlxcZi36nBK8XIIgHG7nSyTTUQqz/GLHX/bjuzk
rj6HlP9HY60cV5+x+08uhPLWhtQoC7pqdzwfI65tnr4UNfXZKeUxIeqHNmQXQgaFB1re9iLB1skS
NWf5cKqrn7pt1dpYR6kmf/DW+ZNKFORl6sQ6y9+NIfIbPPJDihCVy8wH52y4X69VDFniAQEegheQ
d8s55jDvrE4wl9Ua75AbPt3yWOxcHxR+ze/2JQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9008)
`pragma protect data_block
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
STM=
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
