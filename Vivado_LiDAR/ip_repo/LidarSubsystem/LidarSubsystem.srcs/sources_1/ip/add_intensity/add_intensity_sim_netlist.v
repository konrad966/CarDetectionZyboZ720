// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  1 13:17:27 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_intensity/add_intensity_sim_netlist.v
// Design      : add_intensity
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_intensity,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_intensity
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [19:0]S;

  wire [7:0]A;
  wire [19:0]B;
  wire [19:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
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
  add_intensity_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000000" *) 
(* C_B_WIDTH = "20" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "20" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_intensity_c_addsub_v12_0_12
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
  input [7:0]A;
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
  wire [7:0]A;
  wire [19:0]B;
  wire [19:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "8" *) 
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
  add_intensity_c_addsub_v12_0_12_viv xst_addsub
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
j06xUAKBmixdAS7xk45Q1vuj/+O2GRL4Phbh5KE3IvzloOkPv7volo7xfj7MISyCK9JYKR0ydsjV
xazn37cFcFodAHbBPN94eEQIiFUdXnSi9CY4sB8G/K9NW6uK8hgwxCt08hFw7gQwt5Bb+j+dtCtx
Kz7m6yZCMnxiWSOd0+sv8Jyhm+k3UyoE+udGYQuzdiCISXZZOvxEEgPnLep1wJu5sdKurepTEOA2
27y/tkkSX1bMlK6gYV+QQ/86x5IHsqyFZyO9BXfguJ/mjGadnILiHwcXiF4u5X3IAArXis7XiLw0
DtxKBGWEeVwhsc6S+Uh0Thm9pxuOl2CW1M6TjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Oueh2ZmKzho9GULsAfjYTs/qNmQQltERCN0zbp6+DXV/Gu0PWNgXX4PDl3sz+eJ2wq9qZOXwNYrL
0JtWS2WG/1LZumTTSqDnqAWyfpFu5uJ40/qEDsqh81RpjDoueajxQQX0K8MdRdcibaHRozhlgLiK
yWjSjS8UrjNuR+2nu+0EZg6sqK0iPSH5IXhD1ngCfAZxBmM3gflRddk5ldqagpOyPPRbIBlhzPdQ
YTiRotaTSAAwGLCwzn0GQBs3h17zzXkhjEzotQmg9WQLbhpOeUUWw4O/y2jbSmvNbQybUUUB9/0t
g5wqnBHkr0cLAJeoij6oBaSyhP0guaJwZAmudQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
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
