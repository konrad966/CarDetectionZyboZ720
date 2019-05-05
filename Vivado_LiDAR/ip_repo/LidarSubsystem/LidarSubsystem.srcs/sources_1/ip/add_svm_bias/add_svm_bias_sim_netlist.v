// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 13:38:47 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_svm_bias/add_svm_bias_sim_netlist.v
// Design      : add_svm_bias
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_svm_bias,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_svm_bias
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [14:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [21:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [21:0]S;

  wire [14:0]A;
  wire [21:0]B;
  wire CLK;
  wire [21:0]S;
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
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000000000" *) 
  (* c_b_width = "22" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "22" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_svm_bias_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "15" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000000" *) 
(* C_B_WIDTH = "22" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "22" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_svm_bias_c_addsub_v12_0_12
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
  input [14:0]A;
  input [21:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [21:0]S;

  wire \<const0> ;
  wire [14:0]A;
  wire [21:0]B;
  wire CLK;
  wire [21:0]S;
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
  (* c_a_width = "15" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "0000000000000000000000" *) 
  (* c_b_width = "22" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "22" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_svm_bias_c_addsub_v12_0_12_viv xst_addsub
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
i7d6kFDgxdHa4eViuhSJUGsLaItCxxdU5xVYY2y+cKXRztDJavmXHmOUcj/SYVq4H9Sd4f1F6/79
h4GDwWX3ZZ6BqZ5MOAvf3Yzm35oJr7z2+JMz3cUjRn3aMUAiDqrZvIKfOnMHLr294sfr7Z48Oa3l
m21Amj9JDpHqh0ntcEFyAXXIq0F0d5twcjXXzMfKGgh7lCFa1Nru6cynOqmQ6DbD3nrXotyndrgO
VrSszP0lHhPy7OcW8d/F6lHgcgpWlGFz4l08HkLxl/tRnumE5saKUMbBlSoMNXuMVEtAs9vPdwNz
Z1e7mU0V6h8jjcK2QKWq/zYRakbbKrlv3LZ1WQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C/BczX/71j5JS3AzSMukREHA9jxe2lqbSxbs3HI6jOUgzBkojPTG3mn+S+vpmwUAnIBzYO7s/cws
BMekD3o/x6x+7CaQTqsPjyBdatykRX2PJv+9y2wugcR8G7iIjdJLm6/Ly4yJnmT9DhGESEdyhFmV
UKCey7JucE5nqtXly6/xzsvqjkolTeewy3gdPnP/I5f0QnJt8om18Xtwvqwmlwh0NIb6C6rbrq1X
JdBHZU5mwU9tOMrTk2yGCw7rYcrGsHkxQgmcTHwFIPeFJwVwAsSoFStQWe9RfwuGiQg4qbV89MJ9
4sGsmsWiM6ZbNiDFPHCdaG+X21rVyre2WC8Hrw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27472)
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
