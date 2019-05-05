// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 13:51:16 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/sub_score/sub_score_sim_netlist.v
// Design      : sub_score
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sub_score,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module sub_score
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
  sub_score_c_addsub_v12_0_12 U0
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
module sub_score_c_addsub_v12_0_12
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
  sub_score_c_addsub_v12_0_12_viv xst_addsub
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
Z3Z+jja8V93J260GIu5ex/Y6RiF9sylsDshQJb9vmorhR8A2TdS1lQd7oz2HkcDP0nu9WZN5GB4R
LagConrU2Cv4TrRT3DiUDmd3DDwI5rYbf98X2e7s+9ReZNlRHK/1z9Qc5UXnSsepWnITJSxgdhBI
RXQGK0ICVqCKaQF9Jcg0j7Bc6rHWrV0izpsWgCDZpXjFugUSG8Ml3/lVy0PwQRgtyD/4cBVc/SgO
6IPx8NNzHJSQh6J6CJ8IG80ZgsXRDv+jT3gaXrsUdVyv17uJGZ1Wa6uUOtsWzMIxcJoVBC8sEuuu
MFt3P+3S4I2bmOpzHV65vJ7jqi/5OD36oy7cKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NsX5MMWXq5ZsfftFTjK5tfEHNtjE4oIYz35gVpTumSlVaZm3rUFm7ZHwx9u6YetLULzrrUDAfwoI
Vex36r3ngHUSmW74glI6orO3wJtfdS829MW4N1MDrMRtkKxtdxcDEAbxLwczI9w32g4kSncANE15
jl6AuYtWwg2AJsT4FaJmQ1IIIs4yPbxokal3IkRGhouatuOz0B6k6zJLm40yKCtSMFFPnrXDFNO8
a2wH1fPXLCpIuoodSf7ACzm6CUgalcNNhreHz3M5g2qAzpTaCnLsWKNfLBmLN+J9Vqa3B13rGejX
CpXc9g3Id1ViqtWUTCb/LkHSWm26u03MU+uRFA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26224)
`pragma protect data_block
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
4GHvMg==
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
