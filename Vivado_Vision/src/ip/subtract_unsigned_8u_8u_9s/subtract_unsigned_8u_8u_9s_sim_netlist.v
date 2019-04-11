// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:01:31 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/subtract_unsigned_8u_8u_9s/subtract_unsigned_8u_8u_9s_sim_netlist.v
// Design      : subtract_unsigned_8u_8u_9s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtract_unsigned_8u_8u_9s,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module subtract_unsigned_8u_8u_9s
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [8:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12
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
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [8:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
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
RfKxAffYrqbjR8zqIKX9F/M5l6zLW4OPLZKO+NhZOSMW55TS+9QzpuvLAn1zwQ5klrhqcjfLh4R/
AP9ccoQqGtuGQKsB2/5n/ee3msgkL2O85aXSezj/I388ywO+U6DhRzvKhKNNWXr/fe4gm+IuAvQF
VEtjV5qDgc/s47L3ip/7aXhjVv3KfQmBvozppjUe83rK2xs/KyZ0TxEADf4VHkyBcDK4Bbiyvvaz
vWU5AIDLewUT8ck69sQ97hM4rs2ifCIbmeE2RgtKt1tXucajPAPxI4dgwkerLY/efyIBp6+jMn/f
GaT01FWp4E4/L0fpDorSWGeEQHhBugs5Sg3TkA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uFBJcGZl92q+CcrfHfO3ch32Y5nDBhvuHWiHH6PcA6s3iT/5WGb2IHM0LrKJcIAWjTmTd85JAZSv
u63Oqmqv+oG5t3TWE+n4ekHtOzuGwyqr6H/Qgbb24GVG2wDmGLIO+7rTVilIpKzQhz+yMJJyNr5Y
1mAmO9dELr42mOns/2uueCL6xU0JJ9UgDvThhcwRbd90O/tv0o/hD5Xtlc3uv8TovZbz3S72qOXe
e3bEYiN3Kkdz1LruVso0fellkHQSWez9Qfbe1GJEY4iMFCxsMAKIo4A8Hri/f8ew/RwwrQ8hm9+E
fVJMb8Hg7+Sr9YE47gb2JnNDR4oqH7Qq8DQZPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9280)
`pragma protect data_block
+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
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
