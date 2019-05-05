// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 19:54:52 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/sub_zmax_zmin/sub_zmax_zmin_sim_netlist.v
// Design      : sub_zmax_zmin
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sub_zmax_zmin,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module sub_zmax_zmin
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
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sub_zmax_zmin_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sub_zmax_zmin_c_addsub_v12_0_12
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
  (* c_a_type = "0" *) 
  (* c_a_width = "16" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000" *) 
  (* c_b_width = "16" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "16" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sub_zmax_zmin_c_addsub_v12_0_12_viv xst_addsub
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
jXpEDriBbdLAtXF8RHfq5SEu8hn36l4a1kIs0x1qWGdohxb/Ld6uq6L7Rg8oM363Vq5WdHBHA5Ht
P+8ZJBrxfT23Kh0YtzpV0fyEp7QE4weEqo5N3nsNwA747mpv8JNSro8eMvvj/YjHOSaRemBRqkXG
nLE47zYHJs2rqGEgQbrnl2BxcTzcTb1QCv5lDsbf3hyppp3kiCUFFgw6Jgz+QdIv9ybTuUE1+W9y
MNzXiFVK4ELZAuWHP2gQ9NpZupRJqHUXvw5M5nMXq4olbYKbrVORWUiUSZ0GNSCgFWLk06S/kvBO
Km5H/jxCs30dy4VE3h8TsWHb8+d5OhFt0mLSFA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VgElafjHDQnk4FUtlJ4goiW5yEzZspo0WWWNaK9cj/as3+K46NmJkuTY5f64sP2/V865KW4PSc2C
fkR0DSj2T5v+QMEeCB1llDFUrFkISYc1YsQ0rNmvfSCX/gXCZ/GyXM9tCyjqTc514Kx/W68p+KdY
2CyUinaQ5WRtHLreoG01g/f8XRdmLoudA2K1ZwxTu8HHPlGk7RzF6NdFjA4nlX9qQ2bC6f4WIK7w
6n2L0zo9JXXKmB9jhMXijyT0nFcBw0Ll9xHZPNmzO0jaNeWe1ND2aTFw4lCrre349wsON9Ho2uyq
RygiZjo7Oczrkxr4kUuOnojkF5LdQkSCNBMkhg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26336)
`pragma protect data_block
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
9eA=
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
