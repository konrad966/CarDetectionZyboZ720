// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Jan 21 11:18:53 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top SubProbability -prefix
//               SubProbability_ SubProb_sim_netlist.v
// Design      : SubProb
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SubProb,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module SubProbability
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
  SubProbability_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module SubProbability_c_addsub_v12_0_12
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
  SubProbability_c_addsub_v12_0_12_viv xst_addsub
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
Fa9v8zOrmHhwatll+aCLoJqRWb39s9pmzy5ijuuP179QjyBRuIeQoorREKBc5m0hrZDTvqV2KXHL
P/HRG59frZl+eZlOggL4Z3QJKoI0hd1xU7thUbg6ZGlxgHWOcUp/VUrgNTJ09UE74SYglic+Ed0q
Q5/F09s3HAe623HdQK/P8XDqyk915LZJo5H/vcoFlRo490DIl/ZzqY5/dVpt7YPHJvz2YIqSjM73
k7Li7RbSCoPhx7Qlrr2Rzbl2jveefGJcttJlseAvbdaq8yPGi0RhRA2cONAJ8IDfwGjA41nGDeLo
Kk4Ll3TtTjj8+qtITS7bFZG+Zd5jQO9parVmBg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pix+s3gdCxUmYlZ5bJOBhpmLfnw/cwKLMkN3WJtYWloILZ4RuNUAAUgu5vX6je7hnNLf0x3b5JFg
oS4JNoscSjbY1Ezbdf4MP0TeUBpQbzjw1fA7xMINfHO3s5IOiiJTZsPBNi8HDIudl0cHayRRl6Tc
n9HlsvYIqCNrUTnuyp6QpCxMujuGPO4BP7Nm2WAiZc7UWQc8VY+z4hBzpsxC+7JFcecef0t5Cf5/
WG8NcVQFsRoI+ovSXj4iZb2MDui7DWrUoiEH1l4zGRcxQZJCZNAlElw3w6lBcoU09xmxoDtti2hx
KD1cP8HcwA+3rxBuCvo+wIjhxHCcleXGRRH/kA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26768)
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
