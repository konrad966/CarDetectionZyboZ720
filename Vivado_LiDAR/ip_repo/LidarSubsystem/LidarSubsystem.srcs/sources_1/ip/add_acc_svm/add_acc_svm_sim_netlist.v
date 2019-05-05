// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 13:40:55 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/add_acc_svm/add_acc_svm_sim_netlist.v
// Design      : add_acc_svm
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "add_acc_svm,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module add_acc_svm
   (A,
    B,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [21:0]B;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [21:0]S;

  wire [16:0]A;
  wire [21:0]B;
  wire [21:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000000" *) 
  (* C_B_WIDTH = "22" *) 
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
  (* C_OUT_WIDTH = "22" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_acc_svm_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "17" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000000000000000000000" *) 
(* C_B_WIDTH = "22" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "22" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module add_acc_svm_c_addsub_v12_0_12
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
  input [16:0]A;
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
  wire [16:0]A;
  wire [21:0]B;
  wire [21:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000000000000000000000" *) 
  (* C_B_WIDTH = "22" *) 
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
  (* C_OUT_WIDTH = "22" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  add_acc_svm_c_addsub_v12_0_12_viv xst_addsub
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
GDTbSUxrm37I36ITtbkWR4hyKyu2Noer0/ODet2k+d2BnlcQbo1mJU47Ta/bUQFduNsxzIO1p9gI
pPcuzhRxfNCfQSKpCzlL9UlQt3S//8U/nK08Mu6+h0fK+PMEzGG6uT84ofjP78vzKMTJIpjJCxwE
gN99fGa/IKwqC6y/Qh8FOlfBgqwFdHU/husMq6LZKuFbpUTL/GyiE/aWZWnaAfKgDXQtoziTE+cS
fVgQ1U3GUXv4YbwGMDqCDRH/GSsu0yOj16Z7+q8kU3SE+NwW07fTAIhBt4igm3PsdQyEYMx71RIP
UgvkN8hM4YpuKSMYJwpzMIzKAEk5YGp1y0long==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tQkmB/Ziuki2w804HTyWXMzRAfor7rmWJtTu3lstPqCLcSxwQB7vr/VorVftgRjjAVIh5BdpQ53a
JaZ0QpAl9BWYdHyePBN7nRVwHeGQAE/sNJMJlob6uxsIWHxh55Sks3ldgazHVdPkDev9GFs1OE6C
rBF7w4ASlf0BdGGNSukoZ/docXhXxwyaFiJcU6gUpVWxH/vTIJgnR7Q9CKSuOkso8rb7FMkB1Jae
Wg9nPEyAcmHzfksbbFxDB22/7s+1J1XImSSx3HX1APcONtnoy/TAFO9/BM+8kXes7KrXu0aMWRqT
5qnnrJxOcjJXJXz49CszH1czc/QNVcowj996sg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12240)
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
