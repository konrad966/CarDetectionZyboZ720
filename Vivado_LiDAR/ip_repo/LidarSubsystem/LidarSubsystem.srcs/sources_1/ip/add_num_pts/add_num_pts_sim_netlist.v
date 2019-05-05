// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Apr 30 21:16:48 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_num_pts/add_num_pts_sim_netlist.v
// Design      : add_num_pts
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_num_pts,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_num_pts
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [0:0]A;
  wire [10:0]B;
  wire [10:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000" *) 
  (* C_B_WIDTH = "11" *) 
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
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_num_pts_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_num_pts_c_addsub_v12_0_12
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
  input [0:0]A;
  input [10:0]B;
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
  wire [0:0]A;
  wire [10:0]B;
  wire [10:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "1" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "00000000000" *) 
  (* C_B_WIDTH = "11" *) 
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
  (* C_OUT_WIDTH = "11" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_num_pts_c_addsub_v12_0_12_viv xst_addsub
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
Rv+oph0jta/E5EKYl1vy85VeBJI+Wd+ySxLDpK/KFwrY5KFBmUxRC2QPogI03vgV+pTZIhS+ENFX
4hJwFCtUe9I0/oL61c3GfwZm2TOKCIhqTa3dxsXgw3W5egNJoXw1x72yCyeZtMVZUJxxAOBD7v2H
IN6B81qTIT1Zm3w0/gNEi8xM79H4zIPtDDQbjOwXr/ovr3nFKbT70GbEakTLSZUhAx5PmBFZmL3C
4HmJzGwT69qb/L51XtFpyIIj1w9h8RKMWeC+5+63YK3bCSTHqhy+pg0Vkh7uqaiZvDZW/VtaHxZY
z0j0Q85+MtB9s8Ck7QQhp8r/gZafOEOQ7Cdwbw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CkscT8tSB+yIPHq9gwHbjuB7YeUUya/1ejcloFGL68bDntx28+oU+gqYn5c9JF3vvrwZYhnJuUG8
A005933VtrLJoFTKhnfHVAfmuklbBrhsZ6bCM0brR3mMZHZvYvM2ssKR4no4Xdv2UP10eKH6U7YZ
lgZnKl8d4dp0OJOmZboVka3DsYZwBhDMvp03qpH7vsaohuJvdasObVlVd/r2thAOy7tWQEvZzTYp
QT23GA2NCLVm8UIN5Ig9f7NZmZ4btlV79bEvbNCkwfP15vzkZX3mHDpWhtvaDjMtl71OELfUXL7R
5mHaq/3lQ8j/n0o+IY3DC9H1ZR2XOzZr2ZFgaw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4368)
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
