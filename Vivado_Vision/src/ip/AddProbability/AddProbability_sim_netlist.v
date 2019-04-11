// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 21 11:27:26 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/AddProbability/AddProbability_sim_netlist.v
// Design      : AddProbability
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "AddProbability,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module AddProbability
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
  (* c_add_mode = "0" *) 
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
  AddProbability_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "16" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000000000" *) 
(* C_B_WIDTH = "16" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "16" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module AddProbability_c_addsub_v12_0_12
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
  (* c_add_mode = "0" *) 
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
  AddProbability_c_addsub_v12_0_12_viv xst_addsub
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
dLmC08RZIj9cbxPeECo8Yln8B9tynrSPpi/aNJp+HUkd1aZw/xjklX+n4XvP+4DX6FthbFxCo9H6
Mz2TLtURw5YUQUll7v5Ts/Mza4I8m480XulgZi1qTQWVeOSIM3ozulyL3zs2iwgnoall5wZ39lfh
YicB3RUegJSbMYn0IHEFEr4L2oR6MXZjQJHrGb9UY2QRwFEAzOW+WIqUl+WsJVZKZxh9OaTeYmSz
o1qM45moKX/8BunrjYWPtyYTKJUpinFTXDvvaPDdxdLGiVvB4l2Gg2fVFp5x/N8tdstBpdaXaVB0
RtPkoRbal+q77Le5UNwxyDh3Emlgs/oSI3DwDg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vPr9SpBrEcOjRuEmA0LKoEhsPjRnyBGAdvIp/+lLJAiDOaNwZCZN8As0efD47FAOD6dk14DtjQI4
Lrb6J3XDuTCLfv6IGrytNFe/M1d/MKliLcNPqO4I09uAsX1dwKvQbuCM9ikCWX3LIAhj2biMHcxb
Uskey06jeIKO+v4ns87clE2ZV2hCLtYRMGo0yich9T8ME9Zxp4v58jm2eT0nC8kNcqK0iU93jgBX
EWrUkNlI/6+2ymhzianomFQOyuAumy+YkrV0k1GISX1F7irVa+yi4kAYzmJOPaYDH2ohUtznYYS+
2fg4UMXuXVXUcpBxbHDXzQRqBmNIKzz7C1km4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22720)
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
