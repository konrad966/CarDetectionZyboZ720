// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  1 23:58:33 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top add_hist -prefix
//               add_hist_ add_num_points_sim_netlist.v
// Design      : add_num_points
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_num_points,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_hist
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [11:0]S;

  wire [10:0]A;
  wire [11:0]B;
  wire [11:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000000000000" *) 
  (* C_B_WIDTH = "12" *) 
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
  (* C_OUT_WIDTH = "12" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_hist_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000000" *) 
(* C_B_WIDTH = "12" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module add_hist_c_addsub_v12_0_12
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
  input [11:0]B;
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
  wire [10:0]A;
  wire [11:0]B;
  wire [11:0]S;
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
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "000000000000" *) 
  (* C_B_WIDTH = "12" *) 
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
  (* C_OUT_WIDTH = "12" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_hist_c_addsub_v12_0_12_viv xst_addsub
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
gLItWn+NbZXmN/RlEPTLw7WvoCArF+/dzVZZOUNb6OyjQK6vATvVif//wy89d8jz4lnGEvniPnKJ
mYGGrQDaJbQkLca3C9Zw4X+565AZAcadllDWIjSn0D83qdxKSWu6PtaxaYabxA7Fv/qvzNnrIzd1
IRi4GJR3kQtjL7UWhtQUjcJeab0H4urYiRHs1n+7Gf/yoxnm93vgNDXv4oeal4oUG5I5X0A1JV67
KOUB1vXjJHP4Y0Z0TrW/l2M2IoIAcb5aOZBZXWOtjRbLhGI7cJ7GPVNFn0QQPrsoZYEU+AWzgYMA
h2tdepCph6nj8IacqI9WIjpweyYULH9qRoWHBA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kotHfs6W8vKwB6o/+Oi7giKC6clqqdnafxgj9gWeYNj+3IJhhbLpa8b67MdGvODTK99BlgkYH+5j
1zrqNsG9Oj+lEltkdsHC/BWrMVoXuO0S2Wqyv4hNmGWVfuvY19Ate7l+pSZ0ed3IyAzAMCbhTsdL
LhGqVhaXLCdqkzAYgQMXXhJclmd48bQqFJNfujxNgcr6rGEIUfiKSHWFE2g4XB3i4aAmFbJ6gg9g
OaFNWqgQ237GpYeIM4useMT9AY2xbOj3WqSD8ZV9WkqTO+c6BelVFeYpibLrWY8MPHCZtcyKepZi
omJp2f/8ypi99PoBWFxibahibXlku9t2Nf49mg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
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
