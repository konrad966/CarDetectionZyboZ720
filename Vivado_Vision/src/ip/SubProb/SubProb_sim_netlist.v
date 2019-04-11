// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 21 11:18:54 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/SubProb/SubProb_sim_netlist.v
// Design      : SubProb
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SubProb,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module SubProb
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [15:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  SubProb_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module SubProb_c_addsub_v12_0_12
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
  input [15:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [15:0]S;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]S;
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
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  SubProb_c_addsub_v12_0_12_viv xst_addsub
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
c59MD184RZRwbERL42FB6fr+uAZLn3Nb+CfOnMnsksy1CP3uh6hf8j36STZzWIdPRby1pbasQ0SI
neXSpbQ1OozdAd8VKAuv/vNtQE3/elG9O1JgCOt0anEAG17rRpqPp+QcyAkBal1bObZ5wM0uNcPu
X2PcVU8EoWVsX+P5Qqmxq2NEMMIuiZjO1BTpksDnaPtdWYwhkKb6/PNgukBJcIEg+DSzXKFTQCZP
M/1I1Ts22RSK0kKaRF2wdJQjoUYSUdCPS9mHnwi8ChUpsh6I73AP4JgUSZHMbc02bjajfbhvjglE
zWQHPNbmhOl3omfA19oU0gYRRFaevEGYvsVR0A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MBeo0kVGghi0KLqD+6L6oKneAMp01gjB89Qb7h4wglJt7mH8eOjcrFM2ZjxeN6E0YDOLOsauhHZ2
JVtiyJXK4IBLycRtxNaKVExE/4tGU8HfddGEgJF3XDhBHAfxYeR4AKvX4pHcid0d6PJTzR/3POxF
sLz2yoKLUt0ZC0f6l5GIuLfe4qv+xvETINSQR6jU2/GRjFTvKXNmSf9YZ4015IrdRfd1DFk2Kxin
FYa+2nBi9JY6RN4U2kiQJ9MPJQG220rPXDm+wdsebfUUr0i4xT2wQcy3+3BPbW2yGw9cMyegp5rJ
OoR5DbYBZ/MEpfunHYRFW3t7v8h1fCWV2t3whA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26176)
`pragma protect data_block
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
piI1TBz3diqhavBjxg==
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
