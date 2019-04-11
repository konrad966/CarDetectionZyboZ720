// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:13:57 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/AddHor/AddHor_sim_netlist.v
// Design      : AddHor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AddHor,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module AddHor
   (A,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [10:0]A;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
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
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  AddHor_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module AddHor_c_addsub_v12_0_12
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
  output [10:0]S;

  wire \<const0> ;
  wire [10:0]A;
  wire [10:0]S;
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
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  AddHor_c_addsub_v12_0_12_viv xst_addsub
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
nmhL1gFbElxFYYBAqp9Bx4hcJ9I9vK6oQfLKIf0FLJcKCQC1nt4TSgZ5NBF9tpg90LTrS4qGY0Pd
egWsd8NNjIZnD9wPDZaNpqVBRWfmv/TW6HKWjixdtN5u7oSkYNhy0sMUZxzULU1XRQ8AR6M6gs2S
YiAAWE6qlvIFXYprmPb1o5q1ivDu119O1MS9oyOomTljWjyqWnBALocRq3vFjdyIVR9buXNjPFgV
PUb+2V8gDNWpAVu1Gwn+ss0A9xuyMkTMXjUlllu8bYW0LiZPDDGBVipvdZP4x0oEC3YSUkHscgeR
7ommYE7lA0wzVwMqNSYvjMghTAQXpxgd0NOWjw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u22d0wTZBPhN6kLQOqVyyM5qfZyU1nC1tRZlgbvkxwnwz/MEVk5X7pQeJb3xnbidAGLYEYku+Q+y
tYShqDG7ekqGH2nrUo8vg9XVF/rvSjPPxoD9c7QNiwoc6ARvBwndMHfDx0OxKrEOzHbdhtZvsMTR
AgrEVeqothCssEhvvMSPpH1ceOheAtpBKS9bB1QIeAh9W1Eh0QliEs+bGts58Qd+Nc8m/RSqhYvK
+xhS73ExAFjSSPsUsRT/Uws9EsBPr06I2m6UTDBQi86H2RwpVUNJG1+M9+8xxMrvu94UUGNKwkJE
uxWNSFrZoOrJEafL/ks9DhaaeyE4CGI4PpBtyQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4128)
`pragma protect data_block
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
/nzCz3K/XxqZmwM9AL9p2d+hvQbw5u4R
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
