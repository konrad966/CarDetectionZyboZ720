// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 00:35:39 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top add_intens -prefix
//               add_intens_ add_instance_sim_netlist.v
// Design      : add_instance
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_instance,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_intens
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [19:0]S;

  wire [19:0]A;
  wire [19:0]B;
  wire [19:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000" *) 
  (* C_B_WIDTH = "20" *) 
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
  (* C_OUT_WIDTH = "20" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_intens_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "20" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000" *) 
(* C_B_WIDTH = "20" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "20" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module add_intens_c_addsub_v12_0_12
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
  input [19:0]A;
  input [19:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [19:0]S;

  wire \<const0> ;
  wire [19:0]A;
  wire [19:0]B;
  wire [19:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000000000000" *) 
  (* C_B_WIDTH = "20" *) 
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
  (* C_OUT_WIDTH = "20" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_intens_c_addsub_v12_0_12_viv xst_addsub
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
kziItYcgF1ysymChT9EM7nb4wwZ59Q9FCkP4NW2DSKPtx10MugrcnSE6d8YsNCdw8yfV3vEdrPuy
5qFY61GyQ6v3yCtn+5y4ZXvZMfeUHyBUvI2D5lh3nATqb3luQzaBjmmSR0IxaCZ2H8y358PeZUYE
r/4PYxG0M4hFKcXmLfkZ1Owz2XdYL+q1zgcBlVBwh0binThSqi8fJH84GPju/BDbDkvKjYNhv0qD
IaY4l2A0VMLpWGJNG1afA+7Kk1nI+lAjnEB4oSes150585gwxUctpW34vA38t1FombeO6tsrIRpL
ULYR7TXHy+OgUZtFqD2dY+3Bp+ld690kSU0JKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U3SEnvkr8yCTz5wFL0a/vr65PBeTsds8fcULLeD+Zn1ZuxIufEHYVkqoWO5zR2ykhqUDE14hwFAx
c0IazVAqJqmeSAm5kJkQvn44gUqkf6GbQQ+oZSoBFG61h47ndVHaVywDpFqPtrVYdsigwv7rbE9K
cGwyDxciaV5ofTeD5Xx1hOjkoV8I8Uz4m36VWbAMTiN0AuXTSgsi6GDKywy46jrwC92mIynUwqZ4
vZPfSn+gUvr703P+cuhY6g8T8imxnZG0lfYlfbRiTnXtlu0zbkJw7wZ/7hCEP6YbrXXLEmAOtJnm
JGYvtTWJHNrp7sC1+KPjOY+eqmi+Az95sdaE/Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10864)
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
