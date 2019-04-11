// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:02:12 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/OneMinusDeltaAdder/OneMinusDeltaAdder_sim_netlist.v
// Design      : OneMinusDeltaAdder
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "OneMinusDeltaAdder,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module OneMinusDeltaAdder
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [5:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [6:0]S;

  wire [5:0]A;
  wire [6:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "6" *) 
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
  (* C_OUT_WIDTH = "7" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  OneMinusDeltaAdder_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "6" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "7" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module OneMinusDeltaAdder_c_addsub_v12_0_12
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
  input [5:0]A;
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
  output [6:0]S;

  wire \<const0> ;
  wire [5:0]A;
  wire [6:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "6" *) 
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
  (* C_OUT_WIDTH = "7" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  OneMinusDeltaAdder_c_addsub_v12_0_12_viv xst_addsub
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
ArIDlVg7hc9goa0SytnKBt/xiG2dtpBsQj6QK7QZldzPn6U48sR5Iw0GoJR8MOpNTp/VDJrWp7gn
5Fny7G0zuc2Y70pM7iUuajm9sy/Q0JdCjlFW3+GXkX5ov4Gvsobs2VSNU4S8jvRcet54W+3356Zo
Q0zlCkuM3zAZ9JhCRxg+Q3cQpdZyk7yLkATvUiHmysdNE8Vby1cRdshP/cd6EUKwrWlB2cWDUWXu
J/u9yJ9xDGCb92/LKfLB4Jejlxv0FGR7Zc5fnEoSzK+BgH6NxlHGBbyvD9yX/5pDCMUA3Kywj54n
YYS4lNwWoPUOUElO9K4Mx3OunrfWfCUtCE6Wiw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ooQbSgHDkJw+hjrrwTCyPKS73uRzuimNvzyscah8Khl8ZiKz+9EZkLoBMRbPszwhDIeGF3eGCIet
D5M1iQCx3/+/WR3YGjEBi3ZhRkETD4o2Oz4Pnjtq9jo8EqEqQEbLJTN9eXK78jG0Q62dqxpFrML2
RLLQPwGenW+1G8nVODqHq3ZhjkfO66s104FstFvGPaRdb1hoielZEiahTTKyRH3Wr9ruKleLRrEf
h6DBuI261E50H91LVX+/tOBmq9/uc4YhdoJyMFwSJFr4aNDVyQZBMHQd8p2dh/QdZquSvtwBcC+5
cpOMoeoSMWWR2PdP2Mt7EEW4kL7aguSODHmkew==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3760)
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
