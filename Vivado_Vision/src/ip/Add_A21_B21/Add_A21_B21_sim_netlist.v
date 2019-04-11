// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:13:58 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Add_A21_B21/Add_A21_B21_sim_netlist.v
// Design      : Add_A21_B21
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Add_A21_B21,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Add_A21_B21
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [20:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [20:0]S;

  wire [20:0]A;
  wire [20:0]B;
  wire CLK;
  wire [20:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "21" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000000000000" *) 
  (* c_b_width = "21" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "21" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add_A21_B21_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "21" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "000000000000000000000" *) 
(* C_B_WIDTH = "21" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "21" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Add_A21_B21_c_addsub_v12_0_12
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
  input [20:0]A;
  input [20:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [20:0]S;

  wire \<const0> ;
  wire [20:0]A;
  wire [20:0]B;
  wire CLK;
  wire [20:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "21" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "000000000000000000000" *) 
  (* c_b_width = "21" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "21" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Add_A21_B21_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
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
TbPdoHEGbuui3I48MAGN8AzOqt7GWxk4IeiRw4TL+jhkqOsr4aBYUMsqPBRUlEknlsax9arFwEhx
cIzIYJz4QQJVqWMny30mYyhryL2EtLyQxEEGVKxtNC7iR9K3TUXMdBpYBCZmSDzO3zZY17dJBbmH
0I9tUMJ5RgpVLgL9KD5X0moX42i9B4b3PSXuY+G1a11a+2VjoxYh55utanou7HAF1p+VV0xPDjgI
pyHSJz6KyZuVgIyc23oOti7yu92Vz57h0zls4ryZ5chmzUjRkt78DG+XvqJxS4/H80wdezHAUrQd
KMBtNRng7sXcrVXa2jtnmiyrsogPPp5WANc7Zw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vgoHMyeO6aKwcXuhW0QzQkiUmtowljlVohRBlxJo8ngIbmmvoZIna9n8/m4jwrTH8Zg0Ji+JZsTc
cT0DWqD1DiMkP284dqDfWBS6G/dc5c4Lcyg6oL2LPBQz4jC4XR+9Iyu2O0usMyDM5JVLTzOQ4Ynm
5y72Z7nPdOcpLhEM/nH2hLlGwR2o1UZms0cZZCL5fzejcBKzgd9nZOCyBeB3WKB3pGADkUrsC3gJ
24jxsV7HjB/dQDknOLdz/9nCwkzdH/1Tp5orz44kMJE9mwxGjKcOBKm4m9kOUhIGAVx1Mey5/Iwh
SAJZPWhuQDx4IBRs1dA0fS+XheNyE8Ehp0xPFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28544)
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
