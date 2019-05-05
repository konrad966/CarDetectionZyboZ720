// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed May  1 23:58:34 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_num_points/add_num_points_sim_netlist.v
// Design      : add_num_points
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_num_points,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_num_points
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
  add_num_points_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_num_points_c_addsub_v12_0_12
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
  add_num_points_c_addsub_v12_0_12_viv xst_addsub
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
gcGWovwjQO1U4kEoUn+PpXcXT3ha3OnM0Ie2KEewixlqFQrGpM+lAt94nexawbtfrvSO2s5kS5b7
OKYfXqvR8NtlzHodu0dHEvWESu5eKYtC6IYxQPl75H4JShhniX48h0ENlwRvhBPgqLYocfZ11AiR
ZatlUb0VG9sF2yGw77NbzNhscXuG5n5wPziznyzF9b6MHaOHs6EBUV2xwUHGmIJjm7B4B83/o1/0
Ln7ekdF8XDEH4Qm0T4Btv2BgciONVX6dYFbfO2MnybRNOcYBsaxdtGeFgGUOiqeEAbJvQqHsUyMe
kQURc7cJI4BzvlWmgnhagm+7Q4ZVctzAnnaKjA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1vVw9rZ0aa7JxQg7L6tdlC7qdiBjjdU/e7l7RThEUMuz6xryB1F+WltbpnehCtRGyyAOHn2tsgNT
AQvWTEMsm7GUDyVaSF+1kRsu65765voZCwFSTvIYo9va+rLHiZj5tgvmWvVKM/Eb0hNbShiBOShL
qOGRaYDTq82MsoYtcbE7WFr5tw+NVCeuy2hHgDleVcIpaf71GYN3l+aDxAv7XcrshTEiv/XV4Huz
cwrO55RfZ48rwRKsCoERkJA7HthDmhJAkqHugWkJHM1bZcqfYhZtSS7z4UmvjSyEm0YgoBqwdN7x
X3AFwLFE3XiOJ95V2lOIkobdQ7TuyFE+rH5j0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
pNjR5iSpK1yLPwBpNsjOT2nyLj/M90V3iw==
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
