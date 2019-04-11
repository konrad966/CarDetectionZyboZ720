// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:16:42 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/substractor_10u_10u_10u/substractor_10u_10u_10u_sim_netlist.v
// Design      : substractor_10u_10u_10u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "substractor_10u_10u_10u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module substractor_10u_10u_10u
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [9:0]S;

  wire [9:0]A;
  wire [9:0]B;
  wire CE;
  wire CLK;
  wire [9:0]S;
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
  (* c_a_width = "10" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  substractor_10u_10u_10u_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "10" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000" *) 
(* C_B_WIDTH = "10" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "10" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module substractor_10u_10u_10u_c_addsub_v12_0_12
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
  input [9:0]A;
  input [9:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [9:0]S;

  wire \<const0> ;
  wire [9:0]A;
  wire [9:0]B;
  wire CE;
  wire CLK;
  wire [9:0]S;
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
  (* c_a_width = "10" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  substractor_10u_10u_10u_c_addsub_v12_0_12_viv xst_addsub
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
inPYPm74DgUtCKUKwkWDLPhfgdN6jepGBRqV4+sR8tFiw31CnjSP7ZwWWdBG2UE7iDi8wxBTi1a9
GS2vLHfYdhLodKAfUHq6iNW/qMWA3542c81UcbnvqGW6NoQg9eUakmxCZyEkS8KmiiWhm5Rf8vK5
KwP63ZYXHXfgMBAr47arKrGtP9Kz+Ih1Z8T+eeqN2hR1xeb55ck77Z8iFvymPo543uiMwLUsiWMy
vkfTpWpACKy6uP0hUJnypZPDqGZQG9UJcZwLuBFeq3hpBZU7sSfaW0y/Fq1L9cZAgLS5o62NcQDU
uKL5zbfroo4Qiw3rRC8HNqQNI2M+VS19ehm4fA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1XPF3sqe66hlpaTeKw0U+SvXtMjrX5wtpQBy+m0dbSgdIPQ5Rr9p/kzBilj56jJgCDUgh5cXMhCW
SuWtJk1suBt6JFSkXT9zyB9Z/U/ZtAIEh7MhNFuhroQPmTsTW1Bl52O3gm/Im88LDBjnj+HAq7qq
ytrHok5UulTk4Qp+TODdiS2o8AW9vR//btNcmsNaQfxGSot/kRVg+oo1hwI26s6svPMyrgp93kTI
wTmlHrfiFtwo7tJtvCw0xE63town12Tg6+v7mCkReviSUbaTipAxoJD0l3g/1PdBARJ2VhMedDPK
Bx/g5FCflndl25Cz/Iv9Ke6kdhct9mw/hOubeA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10080)
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
