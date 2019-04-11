// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:09:36 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/adder_17u_17u_18u/adder_17u_17u_18u_sim_netlist.v
// Design      : adder_17u_17u_18u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_17u_17u_18u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module adder_17u_17u_18u
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [17:0]S;

  wire [16:0]A;
  wire [16:0]B;
  wire CE;
  wire CLK;
  wire [17:0]S;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000" *) 
  (* c_b_width = "17" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "18" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_17u_17u_18u_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "17" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000000000" *) 
(* C_B_WIDTH = "17" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "18" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_17u_17u_18u_c_addsub_v12_0_12
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
  input [16:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [17:0]S;

  wire \<const0> ;
  wire [16:0]A;
  wire [16:0]B;
  wire CE;
  wire CLK;
  wire [17:0]S;
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
  (* c_a_width = "17" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000000000" *) 
  (* c_b_width = "17" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "2" *) 
  (* c_out_width = "18" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_17u_17u_18u_c_addsub_v12_0_12_viv xst_addsub
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
VaevBSdX0ofjNiEDyIH8l4isnZsqBIwLP7gH+fmERcGcrgAmfEarJ1ctZqGwQ5Fndb7NeSKmbubF
M82JBZtMYQRR/WdJYn3E/oqit25IKmOYou9S009f7BxKuADgcODVv1ZtpsdFhlsgRh6wb9OY1KqC
qAPAUhCrbUBDffGGtQBmDcVq50q5DVmTCYXIisJvcCXfEDHw90vjCNQBFt3vGiVUpc5DtZ+mxuH0
r5Aplf3zH4uiBElcVciDvu9MHf9ihjc0J0T8PvF7jWudwMptLEzD4syCFvvy9aTvgPK4DVF6Grpt
2lNNkhyqA/756eJblNd4PFM472j6CSMOCxIocg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2GviUG0Son7vl4tBTYBO+HVVgsaR3Cn0m4RnLtENbUsPlwGNNhABO0ZuyNeXWqMocsEQXbAAVal3
Hp7LeTW/osQ8pJcujkKNfeFRsk+00qLwoNJJ+ICwluzEtZS/cVQQm3X62hQLFUZRGZaP0DIl6EfR
9/vEGH3W9TPQyBAN6Wp3hJBwQum16s5bvp0pjHuRPu+4ryY3lGLZIYIhJNQGe6IkeCdmy8jILDnX
0D2GU2/FXroqqjQcqbMfWkp1pNaLJ64MaOw0Gos3D4Kubesq0xUhLD+ufd9SkqXawI7+cSL00R7t
JZWOgqWxa+ZJzGvCBrokmPZD2Sxbee7npW1AOQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 26912)
`pragma protect data_block
xnFGBEDMTPja1VHggPMAa2CM+6icfrJGjchSQH2PniQ76YD0x3drJdZVJ14b7xIl0WGxYiOTcu8C
TzUNGENp6RCWpOyqPI2H8TKSKJ9xtTklA1WAioU2tcCGgAp6lzDi1d5LUbAuZrcdQdav9+9762NT
dj8eC7XBj4PgwmrF3M1Gqvf1KlWVmZ2XzyJmrFGpv9XKJ2dfJ0zlpPZI5Lv1KUjXa3acTe22jSKR
zre9qlaNoscbU5UUJk7Rp2vPQlFaJkn96z0CVg36IsKobTlJPMjT/sB9qYqvQTI/Bo7tdBpwp0P6
8CeePtzUhmS7AYIn0n5LS9GWaQ3Z1jLhGTEu7NWXrBJ+bc5QDhFWrbA/Arojx9vntJ3ounvPLHFR
7iAZ2+bz/hmBucz+C7SbkV2kwVupAPmvfXxcR7XiaksN/74jpTQaNiIDtjUjIgMknsffD5SJjI+j
4x9UFyaXwwLlcxOQybGVTEE7Oj+0Jgsbwpu41Q6pc3qj/kStu8EOfBx3znnFMJGAg5udya+uczgT
sbyBudWvFEFiHc2dZF/hiBdxFhKZx+ti6kEfP8K8DISd3RLA+cxZNnZ1d+gPxykYeT+B/1oIlhcK
ZB0/tHsGJ1XZRcilBoliUD+rTVhwayeljtrIn9OqFwggtTzlXyw+AE9YE7HTZmryIUUts6wxbs8z
jYFJ8+9qyKAf9Y+v2JN+kJtJoKMCI7Apqeihk7k1rtgZk3tDKTtznbuLbnwATcIkHmIoPlmQMQdy
mhzs3BzmuE+u6ONAwipor4VqHdJqjf9Yq1YjKZVAQnppK7kmrTDkjIiGRaBm/jo2JuaRIZMtaQb0
jGT+xBB2mexdqGlf6TRSmIjJ+Tp5TT0gkiuhfGCx8XyHgooaKWpS+eulsmTUkmrNsJA0thsK1Npk
AU1cFDKdVRdBnVMgDVuz0z4Sb4fxiXc8ICHlhcTQcVEq5ZKQTSCctghUdruIv786BOL4RAyv1bSm
XnKo5wOVP2ANVz1ZN/lUVX5o9++m3XNDfo5+iyjgldlZ/V4RMTZLUZoTBK92ObhyWlmb8ztmIO2o
Y/abtSEt9t1zfMY5KP26t5kR0yc8gL2SrQC+/nq35LXwvAbi5ui//3fsdg7er/KkC7AOvgzJae9X
7Xs8pgd8wEkJkZMoVTo16na3UEl1F2n7O4NX5bLPgTSv9uSINY6XI8WD+CgpcAemxmEUE2vMfh43
rIXSSznPlk1emm0T1GMZtA2Ph+EjuZev5RMAtI1aoZzKTStOOSI6DtOcc5d1QgCo0MNIfddwf7gb
0uJH//L7n3ccdDDT7x5QKjL2A8WvGMV2q2yaSZ4GF53gFp2jO0Se3LHlSIAkiZum7hyYzzfGHaDK
L/2PWwU26ZWyfMIJLoRbCZoynK6lrI0fdQMLFgNQVSFIHVtLTC9pvAfoPq56TWGw0PXTsUBMOlEu
phEUN0ohs9ONWO2LlYBvmmGcuC5yyUbqQk3YcKqAwlsdXYLu/IM1nNvlR48lVhTN4pMWRXCTO1xs
QvQRMVeiS4EPbdAt1hxSuZmW1BebLeYeSgETpihwtC3Y+YQ+jzL/Jcj2YoB2QBhWspiXEoH0uCCV
YtMcO/GidF8tFObttiUOm25oENkuT1N0eQRCz5uOyzBFK1HPospz/8comaAE8IaUDDQ6CsLRphol
7Ja7qqgsZo7KRmyAgVA6BR4KKidElaLryi4kZj5Qv5d4Tg4Ul3azMZsR8jJCueeTc4QRTotPfNuq
lnkoXnl27Y2sl+GghCj9rCyr+falRsmSiH7AjKNXbpMyIPLub2UZwfjmfpFqZ0EUgzlwFKZeLGLi
NLJa7bg0SVQNLCtXhqWkaDb7fcaIlV0q5lnv+yF2MEPpFEIF8eBbDRvQ5Nf9IJqjfKz/z0N6diSB
OKemDz1AkQZtPv00Ke+45ESGGjNRL/qgHLObEzdHpjloKsvEV8dZXMiZI3/AYnDw/Vuj1GR3EYBU
9BQU82JlX1lGkxTBIENyD85Z0Hu0Ln7AzfAl5ObF7UHTXz8TYmdxurfXzyw0dgsuAW+NTPphCdC4
w0Uo1eSDSNnjy7tJUEKqFNk6B++h2GZvtwd3whtKRRkwe5JDe2cwDYhp7XnhhmxDJXf3HPxFjkNj
UdHNLO9pEqoD5ccEe7ZpPOCg9bTbEADT4U1UWd+VI/Hs6zxpjHZQ4uzXT0q3qG+03SOsmM7QglCP
xnYKcBqOPlTn6oZX/9wGO7MKlbSg6epLSCDVjXQ/1RL0k8GEYu2YOHa5gYK4N//CXOw6gWI+km0r
QxElqyekD3/rzZbkoEftKJqspTgcMsqa3J7sYaxkNhDDzjjzn6QG9iiDpS4iq505J0sZrSBlGcLK
vPDKASjHuiAs08ik/dC5Rwr/tYd40DAeT4KdBYEyx9/3g2UhUvKmfgISBoz2yMYO54j/orBaIWY5
GaELVZ2KgeoCc18lGIj4Rc/QoGKIkXwCTy6t8Exlh0NP0MGBJkgeOn1aeZEY/wGrFVKoH5f2Xlyl
SgOcufjfEU5qKQJIUVB5mKx06upKwlcU58Byq+LNyEEueWQnkwLmowTdVoMxqCqhEOn32muSwmqk
pUQNbM/HM+yMui87TvWoE3CMQdpxCvrS+oX5KB0H8xwwCWj3a2dLHrf8AogJMynmL+rJWlBnxi+9
wI7qT7l/yUUBh7YCziguvUW5o+21fpHre/Qt/Zw1Wv8CF1TA6CoKhkZk+dScLtw0cUIr3HlmIekO
70L9FphEZXOByvN/xrfj4JyNpXiFtMT4g64dYL3WPBkOLMC04X+1KQ5ScLWsOyNeanm7e3rWDYbe
kYk1s8UQEtcVcK4NsZ188j1Zox0Y5+c+2uApAG6c19VND07K2sxUNkeH53s05OTpsbgJQ+Sq7Ctw
jEGT6znP2vZOLDUePBZs8uKyT9HeZOplbceHodIj2WhnuTQxOtGjClAF1AV5zbymA/J4divUtwS7
CYlxi5RtkRWHLGtSa9s7Aw7mK9ZX8cBrMaa5p8Wd/Gwo773kh0PeiPoJAeEugrBGnmtN0Ed/D54V
hfOOKaax96oPnil82cciAjWdU7LZaVcEkOX80IZQHN+H5+HpycWwDSlwLnlxVGziV0O4FfG+6Oqp
OolJkgyvn+589RS6GS2zUWHruIKwNcnSwx02SO5EL1YgumTqvRQXFRHGsIDsnqsVb/7b8T8l6qH0
J252cjSkr1aamQIKg9q68AayEp9P2DESrSb72iQHhKI9NlVYjMMVWlzeqSkKLnldXVZUZOrsS7Qr
rVTJVMOMHnh9WUATyuao4j4Yk6ZmTI/x2Rd4HbrgDrStv1k+WWH1v6oCVOxoZb7DssyM/3PanJ2d
a+6dYovy3p2TfXVncvcMP7RPl4LNjCeMEmg/US4pxMWX3FMdam49NlfD0BSNuDd2J9O9ZeNiQfiU
g6mNaJAqURiZ7KVTctD04ryLwg5DJ95cmhhk1AsImtTStwcPCbWWG87iSA7bIYHwysM0PtrEATXV
HgXLIqIOPllOJrfZs6Ge127eQkkQAHcWkbO/7OQ/uDlvBp/JDaC0128yfr2vOQIAw4q6G7yWWILZ
VHOLF5lPWfUCd18Vv4XEjzDf/XNC93WZ5paXz9oAK+rKs3YND8wcxLRXeFUcLKvE4VXWKZvZtibt
AILtUqGMQXWduYTzgTY99tMQ6u2Yxn6LEnDgtys6C3YOq5FmOr+ZYiJJqkn/xJXjcaqgn6wvWwW8
5epoWszCSjHyiKAAI3YSAq2ob5jwc3LlqA+2oUFrkZht1DrBiV6pTdjL4elPnM6rgFycSQtkoGRB
XvHVxd29STJLrxnN/CXXmZblf1aOuSVkCGYNtkc+oHNyPmzdZ2AqFR/5c4uci9M1JuK+qA8/1Veh
KCASv+xOsxHPEu0zfVJ3lM4R304EJDJHwcxn44kHmke4MGzd0vXYZQA0idZogMdbfquLM/HACiQT
0TCGqY4pYP5f1xfXAZ1/ciKGsIFOuErAEWoMf9/N1/NbPY3sYKQL4Zm3LAsTcg+4NitxI24yaubU
PPf0BEfOl4ARA7DMMj9enGghVrgv20YAvby6mqXKMJ2grX0WuZVhTGTbf8T20GuJigYvSeDxIJzV
w9lncLCcUA+eAduXGzkqQ3akkf2NUGcPzAy1xpzjLqJLV4wBdGmQBkhfUl+wIeq8G/0+XBGNk7Lv
cqI+mkqGZk+hMiyL67qW0EReP0j8s9anBBxVa/vNsg6/iUIuC0rCSLK6fdfkGzaUFP64O4GUXpc2
5eKgOKxIx2ytnbYuZr8G4y0HXMW1d9bFnHF0zT4dSsZzSvYLniDphqVVLtmS+dm780EFB9Urqds+
pxJa/o4X9DDBG9G4XO2KWgDLlXs2ZVVxTXjTa6DCWHZdb/SDM5Oohy3lH7zFB/4UD1CXXZLag/I6
OMd2+n3AOdgUp6R7/Wxgc2JfPQQBmePkDYsIwzLSDiFgJutBdyXcCd0Hb6FWc1bXSSVk+Vs2nt8V
YAlUhQFzObTtSNMIWhudXF1EqzttWecvlVxIrP0B8dUMT9QMVnWju/IGeHB6a92Tfaq007sXBaIu
swWogHAgzTqJc78dZD2MH8sTjef+yR4OQX5X2z1acpFH5RHO6pLhl3K8bleuOFLbzX9magJg1gpN
KcRPG5cfQBc+PwM+PT2UKvEAgX19FPIwmH93jWqAuC9tPFhjmOzHrtpsAZ12wyTNSO9j0b5+CZdr
OftV8+9hM6JrfSOePtyJQJV6uGP0DSNf2pr42sBXGfot2ZILRGdxVHi/oWtddTRRWXxtNTURbjHp
paPGxZmopzD2tGokiiirVrHpOVv8tu146a7yNVhEF7FFQ+B2VJYVMmw1CRgZByl3L2IDR6Sn6Af+
Vn7kLQ1MHrq7I0s1DoyCDqdlauDSusP+pUwF2Qx385VVnEoEVtaWp4xaWNtnw4daBbNboCTD/m8m
y910SXKXJG8Uc9wjoOoiwO87hAzseM/1Zw91mhSHedIqT8FOo4svTxgwdcqyd7BQgymf7LVty2Nl
srGmxNyPEJvcVP//Tx/tbDbEzLDyMdm04PLLKyhNa5ywEnwM+N6VeeNw4ZttJI8o4O2hmig0ZLN7
s+A2T5x59BVv13MiiEv7AEv3cqnWdNmVyBo4618dyCq5SxDXV4MgiTUTx89jYNxLeb/U9yU3Mlqu
ILrybFchJ/sCqWjDAGD2VSTrunTm6AHYSG7s6kyaSNJ6g17vvSp0Dc7CquJ0fprGpluAiOrtkQKh
r0HlY77szM22GM4mIV9admFuBbfNVhel6MpH26fPPyetg2qPk49OArs8bk+M6d4zWi0Myi0AFviP
FqcQ5C/5rU/IXNrQXnpggVzpudzzygdQxhL7g33G3/6grvhTqvI8qwgDLTOwX1av+i9M8TJugbHZ
Lm2IQjJrQpaXNvPnjTLVh5j0bTaPwUhwtlNdcmcaDwaDZLc1W0jXCIPMXhQ2ZWkrpScR55JZoNNV
mDpQELPmEjkLmPf/S0+v57lFWyQbm36IK/1bDFWOhvdyZg4XvjjRxgokid8jxnqgQnNGQaK2HxEu
9ygUhs6nYVIyv+FgimIGmL/Uq+3Vc9GsIBnxUIMTcNrFNU7Y+WEmrsn1E+irfxnwHuqf81e0jgoQ
wTcUgF7h5AoNcjaj1jtLCDEO7T8HQyVCaYzJ5Eg5yEgnWxF1UsiJAn0Pu/jhIvpDtyDAF0Z/wymv
0EXRcgUWUuTIzZ7hVc9K5NSWkVwd4LyL6ZzaXNF67fUCYVBK4Duw/HT1Vqqu1aiup4s+JOpBP18j
molSpzbtTaANgItCKGTCTvtmgRbtmJied0j/rLG4oZxvHSY9SJrOmflV1tqua7VbxfO7Spf4U460
bNEnPYTLGKVg2TSVeK/lf5iHIi9VsByHhQ63pAYhSwzADAjQpJE+Xvn2TKRiB5H/w13GUZp/d04u
s1eIbyw8w3WXvE34OBsWmj62fNMI8GmNSfMtXDBvu9B+EbWHZit7F6ESZ/V0rxvMsVxRFp1DGO04
9mO69zHuyMPpXJn2ff3BcEf/2wPbdzoMHiyI5t8YbaRheLZdLGIq9U7kY6h1BguQz8F/hpOZqDBa
uwvfc/SdyjTJ/qsbhx7oOHSPekZ/9r6bWPjmmK1Z2esDYTlr9NufeiWox4x4X+BYj095wWuN7N4m
KTZ+1+073ZZk6rLYb9gDc3mQuDT9zBXy3G+4P5nqy1W9tLbo0gvFwCr3bCKQES2XO21pSlfofZ9x
nJkZvStQFnEKLJH0B8S1Zye1uKfyG9h+QPxWpU5BCHIWdAIPNvhRH0w8EM+nhcLGGZlgXkiro29Y
vP5MTVqpXKITfb8efwJMDE9BS/uxXMfYqstewO2EXObcGO7MOqVMXZjxGhzN41WFU9QxNhOVBf96
qSvEc34xuDOt5eaduPWv6/lMNB2F5z3ktmDqca6rBtXwZva9BKGOgfAxdwdtIfKMgViHqTSASVX/
rzaQTchjUq09oPnpWLE7EsvTImSccCJYqr4Wwl+489P6adCPzCzdvL/6utE5Ce0ZM3NM84SsS2X7
qF8Gl7z/pDvY4LAtemh4DXU4IMfEffSkiQiLGRDb1D0yr9kFPUTGsJIF/DV/ID5eghPrte4cHyk2
4RBOQjlNNW/UMHc1t7mP0XtMcdkdm+JFhgEL/81kK3xW8/c6dLvOUHP/jETWWATdrq5rSLBAs7+T
Lhk6qceyYT5TcHh3RS90gw3uXYLWrozaC/5zo3XWLsW5n50DaDSy9GBsh7GirfccIu6949t63cyu
AIUBXhTKkmYP1wnGDOhwMGAR10pWPwq5gw/HNs3non1ow5hrcH3L82ylkTNB8HOZ1t7O47AkFICN
C1O61Vm6MFCqAxasq28Dxgd9gRsmnydtst5vqb+zB7+hOWV4IzrqFySyw1wG3PvyNUs8SjIYbEGM
l0gV98c1b9+70Pru0EZHTzw4qRLAbYtnNBqqrvX6E2er7FEUFM618lq3WdFLUpMfxzJvGijiCYMP
KDH37tHIyYsowyw7SiMupAGpjKMecSjW0UqK8H1yPeqthSokL1nBEtKWuER/oXgpLIicoSnh5Zc6
zeyPoXYDVNamxeja0A+n4LrPmLHHrrzAvTdc+/pn3Y7iU5XhqkDO4qeUMVbnXZeZKfQWQvhzxGF6
s+61osyWw1RqsxpD0b9mNJJ2d7NDtEzgmDucdy+AIgUADfrQy91hGHlGYvVjSNQc3Y6r4fgFhYOL
VIuVoPh80X8H+2nApJTxAqlgyPP137fH7w1KN5WD73rhYrhylJbsY6Ido9vTDuHAqpT3YwRw6LeT
CQbSAY2FKO9bMEdO0yLh1Oed5prY2cYaWmSpnaXPd3690CDfst+0GfnIYNXuiNwjVYOTec8Y2FUf
FYemM+Rb/KBAetChIbegUskGuJjX19l09wPuMtB9qHFDai3RZWdgwL4KgVznJhF9zmVbaa8bO5sb
T3FyFmDpSBGrRmaAx4pTXHdcvUTaidiotLEsSDGTVsQEKMlssBamuWpdZAljTRo8Zjfxpn9b6Xk+
Po3g9I6gy+DrMVQtnv1sKUphn2EYjmHQbtmYRZEWy0d9RlJ0PZ3/m6EZgqEWYYWYw0ytr7B+EzfY
S5qmWHl/e5KEWBk0uaM+68TFoOwr+yGKrQuAFjUoX06z0GqWUjI4QMCas7DUxIId5R9ZQJEi2nGJ
hiXK0tqcb1XV1FvQenFMTRiYRW/MYlbfQ0Y8PlcScirhhUcdLABnsdn61QW1LUU6GLHInPRzBtpV
P1foPIESoqvVAwsQ8oGBVkirBnBi0LePTDh8re+eBMN0uNHHv7Hhfo2i6DLVV3BaSqSJ6tO6lWDX
uTgtbHynU1VqHTHMD5pk3oY8IUbYlY/SzptwbTRyTjMj3R7ux0b8ypNPXYiEu4oRBCbG5pMC7snr
/8DkVHuzaT0ka4f/A8rs9/O6GX5ik/ZQYEEwhKmT4g5btIJi5+ibNyfrqYS338RZTld/ZgYLnFRH
AX6GoFnM+Um7pZJ3kdsfxU+TMHkV3RVep069Ie0YXcsTacij7fOa6BUZqlMW7OS3e56RQZZu7aGg
YlSUQsbiSQdc8Kqc1MVcpaYd5a06sFRToZnaijrbAs5SMRZxW0n0wnm0KDJARwWBFQXKf3sRyxxQ
9w/BYm650575ZRCTrNTv5t7gEklXtG6DR6vfypLid4PASfZtuLgj8mziE1nufuBGL988SpzefN8h
Q2OPtDIUA1Y/I5smOjmN4EVswjk1lczhb3dEO79OjwLuBujZ/RI2vvWgj+FAYsDjJXJHdutTMOcx
0UeeRcOFg63eZMPjhgPQ8D4dFh1+iBYc58xQ7crGyzejaRYt6bYgUSJks9LErXaJcGXVoxJZd3MT
9Myr+ZCm1btkvGy51Vg58cun2+NTgr3vHE3eRAIiGNovuHfhqntm3Oh6VCT388h9N8/YTHtXG3Ff
o5Lgplh4MVPJOOujpU9idJ18AZREuuv70VK4tZQ2zu4IFk2wnCFoYOfDzEQ+xmL4irFdw8HzgVwv
mn5EXol41xOVC9JBaddfhWu4yKtpA9/r5U1BBWAc3CguPS+JtrVL++FBL9TStj89cczegv9wNgbH
YwCirL7Q/+T3e7kaYZ52MtA7Yb/1vkMbga+icF9Jx7X75IDXWv7FLv2RfZCOtsGFychxXpNyCss3
kJ4o/04Q+8OXr4WwOw00tMkDEs6UdNyAuADhUXk290NCLELZFP5kuegl1CCioas6JL5YhJwYzXdi
osQ54Sp4WGVcD3cK6tJ+MdyyWI554RWK2ZWFF8126BUy1FMhmBSk6ufTPptXizZePuH33XqmOMh/
whLAyfDTxNrbULaPfR2Su9Ue2jMNiQEG5qwBUa8f24kHVePy+2Zp2KN59iQIj2ifv6hqqE8gN93g
oia7ymNU2t3UN4Q/u0QYq5p/deFcGRoKDWJMm9L2wUmamRNPUBNOASdogM7c54McGX9y3YsqfEDW
cb7GNyMdRfkuhmAegxjezMF5B2WEU9Psx3GVu2t+6/THzgLt0HxVAnEqByrMPkGtAMVR+wxagkvX
ONx+Ocp2nMqZqJHvJvRfiqaxg8HPC0SRVev2IVp/lqcQ9nY5i0ZXd6fsGlUSafXoWJiR0W6VnqXY
4KKPl2o/QUVO3FtUDvFvJbHwLjBdr0OawzgEEDe4gKl4VL95ZDCg2cPw8rTg33mxLKGQAeU9SAwC
nl38+yzvblUweNWj7lGOc5MFHoliko6oQp85mnY+9dYnv4PuYS4N+z3/IqB3rfwH16pImvaDNe6H
r9woDMteCxPGk0xF90tpdEfrkwlSj2j5SsEj6lNLysQjDKoHGrA2ouvXsYl3JTH225AwDQSYnJIu
WJ/7l5r43GD7gzcwlzXLUdapUnMOGZFN/dxyRPHltiyBl8p48mKSmrAn9+t3n1sC3DP1Wsl3lRrk
58ExODUDVOMaywVU698PxgmEXtY85LfLawrhwJDz7No6vi2+39OASFonI8lHjy3Oce55SGvEhLW5
6YxBCyAnAmN2eDOukmuBym8dU4vUKpXfZmfmt73dszudao9RgsGefq+lYj3zsL74DpnrXlKgT7A6
DojD1rh7EMNv2yODrMwbv9bTM23/F476bd9nhWwmGeNd+JPEd8iAUT5OFhJrxARu2pHU15qhx/6L
Wvfi6HL9RntnpzSPgOcpRNOZa+VuXYfE5nepCkxdudLji5jGeu4LGXybup0QiYr1GNWP/K/gonyl
lsUdVesXErCDd+a+qNgTNqFuG8Unz06ABema+k7HUZbefmuq9r15SAdXbyszMa+FZKVqr8CAVLLm
4C2aqYlYt9RSHCJjVCT2tV56JWDsk1u5aor3t8JhBJkSYdu/K/wSSr1dC070ijlIxlFc1KtQOmTd
+eVbkW/Tv8C/sd1ixnqmsHhl2fHfk/s+U3IDQwJhoLgBortAJpGnrjEyz83mm40qYlcjTgsIqcAy
jw1+PZCoPAXcwt0rH4vFO8Q7XMo7bjgQg6eSdmkg6hGTtpt52cQqO3Fbh+8+jIkFPxm2o5x/dctg
7W/SNNY1WW8XHyU5IDW46re7fY01tJ4JbbzDNiG0stNfyblrxpv4yPzzbD3SeSSFM9xQnANMJ3an
7Y1U7SiNONPx0eCQTrC6159wq66bzZsx2kLzE7hACZRlXTgiY2eLlOO33R3gPa1mBD9jo6O4aapF
v0kFxLyh0OumamRZm8wnoOKFQOSEwwDw2boxjm4eq9UVw4fmFJ//cchlqzivlh0pL6s81c9GB8zp
J9o6Z7Gct18atCnJQnETyvQWky1fLOUZGu5VtQvx2vt8u+DjDEJiv0PeOEkLbZDsljGIJjBXx/Li
ko/CYp680285pQRw1mdudqkUplYOinL2SD+jyOpcm//eKjl4tO3GUMlxK9F85mn7X2aTxNjFBSLh
PWv5k4lfCX7IrIaE4KQvyhV/qLP4lt5fKE/OcBKQy7txU+cHP+2pw6gxRukIlXxnVtNalUZOuGQz
4/ihjd9LP3cVUVTGP9w3lNZ/GCF1qEopAn2L53b2h3gWtfVX6s/mBxlbXBfmZnKEgM1DKKZ+htXk
TNTHC7urQIOd3tVD14kppZMPcj8WfzfS3QZdivGRdgJg5wrVUYcyHGTc8sjpgUT3KNyBRw0cETBK
4LWtpjZrrqMIf4+eWN+eMyqEUas2sF3DWwcb0vigb0OiSZhcjtSvRJ74o/vXVzz/x5iak206hxT6
vZNIEBM+8Lg4LJE2hM7ZjGe+RxNDy5SBq+gsJJePFSzY9hYg9Rz0x8VXX2/li0hgmE6rg3WeOXix
YKAy3lnlLmOXFbyCtBcr7y9IDES96IGx38xeXkGmUlBxZ5S55tkjCZp4reQUMgWwvr/iGFqLW3CJ
5z2rZfpNfETELlthdrE00diMFi8qtqYHV4iGjv+IftZX16cMWhoKpF38o0Q5N+PUN3sYvD2QoNPq
Yxs3bGGJdE6jrDEeWeR+nQ33i8e+Xao3LAokg4PJ1OefG2vxVCDZcZhSd2h+tixDuNs6ePBqC1Eu
BqasL8yJfXCb5EO3CUuxPRjsPJfyMwz8gDC9EaKOjFmsxYH1YUXbAsIwxdJgZ5Kg33yDdeRJV8fy
JyQUkxRsTaXb5vzoSXewr5rr8xjjOfYL+Mxmgnj+o+NiVpMIQW1CfMBlvrAlX2xyoUxC4ZBMVGeG
52gMmwYv2IWuC6bhZrsnZWNBjFTz0MI9jVAkC2PB106rlMKl0TwkfveFaFfOG9tTbtbkF7yCR8+d
RfMoffjn1GeQmsd3efvfhFuQMTUL8EG4fTY52C4loBvxs7WJivItyOtGTApXyTmabzlMyBv9P5Bg
1ek3cnr5c3tea6f7BiwPvvxH/i+pPqGUrTqe8Hky1tWtLcI0BK7ccf6WnxJ8jnwlSIafcC9TimgR
krLRqH67LKFtEgLvHvDAnTuxyeAriyDLfS8uOY/B4K+fDhgBW4DjXktbhN8Ar/D2fk7jFK9i7f4J
4a89CTTutogf1j0TXaWUwMEHfVODGbHHgZxAr1qmTYkCChGkqqYzY9VSifUCvURGGOOA6ZYV9YVo
ewimCAGoDIa7gQ+UNht5H6WUKgXZYJOA4pBN6YDTs8tQdP+sdhOX/s2RGVKLGuxJcsyHH2iHV8zD
CM1rdxLJSUdOGxZ1oz8QaNef96WuqM2fUKLBDNtZinHRUCi6nlUdt4ELspRDNrLhm+4dQnBncRKJ
19+ZjBmjwX5ywOm8ykkoxheb1BIxup6fOkr2uzZN9zxyg7pCXA6iNFICYxkQwjw6lSFcwV3h7xzw
lpS0XRzuJx+1JVHZGqdd1UF3z/ogtkBTVTKBGXepZBgn5lt8AVvfJt1saA/JxDSKYIB3TfIHZyDc
NJjqqDMv3ktWMpMPYqbJAq06JdCThNOQVWyXv3xs69eWFpOkdIRrmU7BirjqANjgEeBFXBzUndl1
jWwk818QgI0Pr2d0mrwgnr5p+BRiMjopvQhISqYz+6Eqwa9wYkI58j4k7jd306i0y2hfg/iJgfH/
um2lLZxEE2ftv2HLgxNsVywL4Gtc2keylsFgtIrb0+8FQvvqjWrRKeFLRUde3ITV5/hlfmKcdAhr
NRocpoz/+hjjKWrALCcsHT4YyGxkArt5Cadp+86Nmy9icGlLI9YPKautdB+cpn2R2+E1nuIYX/V+
E2q3Jq++xbcpDw8LREDtKx3T1mk+j8V56W1g/HQQEW2QbZ7u31DBppcUdBChqR6kTZBQa5v4/vro
G59gFsSYjdcEswxnaG34eX6eFg/9BfJ2t9WV2CyshpVrXKhaf90troHNQkPqHCCUDESCloqQXFaY
3zto1+wLwkQyVmNdVNDrk78VdRDEAn4TbrPU0C4W3dV8yzauqh6h7S6jin/8pSOMO81mhCHWnQbf
HHIa0Z0Tslbbz0FB5/zMs7w9fgDai5E+FJphK4LbbU+JpsOj+b2h09bI25roX7segU9Y2gldD/Hq
5/rUWC2nksPT4UqA0kbVK6p+sXbswFKHXXbLAxWOYLnzsRIkaw6kxfPx6m0i67jwcd8BY7NlpPqS
B7jeHraCA+qukubmXBHNf+kLOTZXkPGY+EWTFBCFHVdvy64irQdZ/+u4KGUpoJi1xC8OpLk86S/e
X9u07YS7DdSAZEXPWWdwcDiwqE2fQGisBpR9RZwp2SStKwT3gIjz3cwr9HjVQ6WiquDxjN356JVD
SI5QSxbHP2QQmXdDAwqRxdP+8u2kYsKKC3Ju8GYtJPM3lvzAFyihroJiJbJXoMy6x88RPBZ1OKQZ
4xsRWw5xqeR7UpKj7LNBBU4AwCYMiH0vaR8cxh7V7d6kHheZ+9+/uzun2JpcxXeOqez10NUBgOQr
XwLugrtnTbXSr4t8nZjWl4RPDZNKTXlxVm0qMfLqqR8AZlCGzb7dNJOfwfZ/IIJ1pgx5cglOeL6K
2Bb3q/CigwrCBhzBRg8htLm6EuL806Iv+T10ih85WNYz7m2W7gDZJ9wd8S5vMF6+4YcgcNAlhr3a
Rdy3CizAOLYC+tdNSBUhXe6fh6rRLXFNJC7HFjnj5SukLHzLDw/p8QdyutDR3LmsVK/Oa06tMxKJ
WQas1nNKKU7hRmWY3wHoIm2Va3bJ2pNvd+jG0zPqxQhKL6sO1g5nabLPBl0w7G7kfPGnjm7SNDo7
YM8pFSgoxd1l6oJpvl3jZWBpv3EWMQwYPAMqPwphbRNQkHs2QelW/UBhof+YAWCYIRjVLMk8I4Z6
btHXucVuzNjQ7JVLiq+cU037RhMpeeG5zfCOpLV/e8EmakqBqM6Wf1YrQxIIjZBlUQ2WWku7aqJr
8ZgsXSHpUjHF7vusrWxEYL0js8++PQb8BjQ4Z2tchhPqhpSqXAYwjC/u5bwoZdazneJU8wzhXQjf
ycgA/jwYB6DUa7keRIAGi/TfBdvdLuKG3xs/MLe6el8e9siPRpQtkNLxg1T/UFjMiHHRLrCUG4XC
aTN4Lm4koIjSJZvdtJ0r8GNoBvPaD5QJuWXuZMXbwZGe65+l2bDqpDHZ3gp50z04Q7/8u0ZHv5js
JWp3oqMAxAsF6j/QaesYXcpAa8PfD+QP6iKqJ1SDMPS8cqwGlgX0Rnqa2xFhWjG1O541yuN+dNZl
khsLvQtqy3N+6nRukTfcDVF6JEH0loMPCGX+wNBMmuH8izOHOZgwbu3cdHzRw1iQ3Ddv53qNyBTA
B5VXGbT/rIzIu2yix9GNXQf7xWZaS6PK/2uYKkV8+2Dd5htLeOcRmp1vpWKYkNWXzvpO/pV0T3fs
eFQbW0GAPJgGM9ELOceUUq+DDZ/y67K9sD/flK/DGxNxfCGg3dJR7+4wBInz/0sqRMhfJg+FyEx7
h15LsUo9TnbG1hWn6T2BXHW4XRz8six/Tlf0NRYCC78EVsOQl5wNj+1DOnrF0va8q5iWUBPh+RhP
5rkAGiaA6tARceeJDZvL48sLpRLt3GqpxUY5b0ILYNwUS6jh5CPyfjZPLlDl02lpexVrj5GCQ58d
yx90edbaPBNogkhQC2PylXftfTluifopbAKYE2t047iO9oIUswa+SgjVnL1g8a7rDBDNaBvsdAb4
Z+zP1uBL8c79kNYmEPzOu9xsU2tAHkXzE2TtDz+lpnTnSlgcd9F8HuSbjj9hrQpLDxVt+cBRh1cE
N9sAtO866bjgTImQQhWctbu+iLpeMB/g/TyUfvHa6itDDwTjb6SWVFV/hfgy6BJdVfsKZ59GSk5f
eyMRX29R1hr0di7+jhGFIEezZPlPtFyp51XoqdCt2nM4Y0mFC/6xZVsgCEN4HbbuzX0bPlo8mxTu
BpvhnoRRRjSaO0rctSor05jaB7ao9jf4rSvHNqnjDaSw/3R9cZMpot4Mcb61ZufqCY/S15lBDiWo
vXb5H45CW6bP1WZK/mpQ9BYiAOJlMLWHAy8sVUO3fPQcQb1M9CE6Y2IXeqnoW3Tunmw1f/OSg/YR
uv4eZK02/plXwFMh8V+riwba5sQF7cd1bys4TmJBjIxDA0lzCS3FZQzKkTzDObGDpO8LsL3R9/eI
qcVgDEALOb3Fd3Whr1ha+15Seuf9/pI+qWJ11xit3iZc1UzleH6CWiI/gB8wgS8QTfOCk9gsvQCq
IcsAKsMZbfspT7YnNrhjdUBanMTn6jEgBKxNxy82IeB+56TrjQ+CdxmD0omwrueUIjfu+AafaqYv
OdkjQMrq5yEntf7d6GXDvVWUlwDm1IyhwpgwVDyFAouUhclb79VmZ6jx5O97+7wKDB3+MkfFjhPH
/jGiePbEuNi/BF/zE3VuGiW53qTcYzie3FInnEgveN6/Aq4rca9VaFCj+mgA0VbgVvYA8V942hcp
uBlyrrVXI/eVOD7/9us3JQ5u0/6K3XHEX+z6R19FJw6YF055vezt0WBBSRsXPHk39RWZNzSK3vCX
vVX/VSOr9Pms7NJXDGBOQI81IV3ybv9djcUzEHNvHgWP+VyGTbHIsD4xKeTGHbvyMaPN/Kfpygue
5T/8RTRFbIi10oDHw9Qwvu+/9308IFB2XwF2rF3z9gKjL22rF6ivG96rKaFjd7SaGEIPG2avuQb2
h8dF4ebrAnxgr8JJoaPPcEXuDzGOiMCct6EtDpAE5Hw4bdatNnzvUyQScVVH4oFLg5sZynOryGxN
L/TpgM5Ju19jDJpYk17PIqztZ1V1C3n16/QuQ+6R5zQqxWPrsZzf6nMithhPSezlLMWfd6NzSu91
CADKZnWzQ7KJGNTvW4SHZvy2z09qtGkpRCo1B1Vwjqu+zXUXqOdx/OAnvtSVgFbwxXMCCuTaSM7l
xqxBx70Iunt/JbOrZIldOI16fDlfZRZpmpUwTUYxCd3g3lHMhM+N/Jc00AJ59+DtxagYFN/mM8Dz
m3XOsS865WyTzyrH3VVWQLeC9DWp2Ts1yRB5yi4zFgTqqyhBU3UOHtNyHAGuV3dGt5LK6AuWmMmD
3cusKwM6cVcRXj40AHlHtaUEKX1ZlPx3zoUo6bjlc9XgRDOmfi2XxYN3JKMDdzWB/E/7LATUNK+c
FA81AnPqmGgHvqBDPp1Q9GIq+0swKsyvnb6ZtltkUPML4lQvc57i/21LQvAvm9BOPIURDpPUbRPD
tg6OT27CfF0uI4aT/I6wpiPpjXZtwofqpmrhDeEahTu9Ido90fXxRPhPjgq1D+bKLRxnOTFNGgJg
MObOn7UbyJxd/pOTwKsNymUy7hr1RlIjmqnJcHXVWuGQ/XE0DScW2Vs99h3uqrxU86fnrjN+abXT
HAeLxEBxZxcz1gEotJMjrMEfgscwQnoNjWZ2FLxSyzBB4Xv4oO2ybSTJYlktaWhAQ0Dj90A9iu4+
oYvQjz4gDtZuU9LvEWwtbNBRM569Lh3FYBTpiPXu/oT/XEOB4Jjy5qF00yGITd5Iz3Az0GsnKDwu
xg5B4oQQXEd5s0Dya2b8m8zAfIEaBgst4z7wA3NcVgjvq9gdltLNPqHWjPcalmr0lgbbPXZ+QtSG
unS5TrQM4/DMvaLmAWc1JbnmesUqzVpreYX+Tv7PQbxtzSNPCZwsKOtUey2mlJKSUb7B9gqviqha
XMFL8usCxR7K6EUl9Uas8eAor7sZsVkxduDVxcnG3uYh69lMnSgo3N2w6QlKsOPgxSxaWnDWJChF
a8Nkk93cPN3OVHZ88rPgLN9PfwXniwMEvrLMihvO3ThBfSXGvjTxk6v/NPKkEqSrzjy0bcikgDhY
VJ2kfU/8XboeZIeCluz76J4I2Oz4evJlpwGIO67xWqKj8qFrKhZsVk+Mf/DJPMUIQeY/n0Jbtl0a
8VFmtpvf0sfvkTKZGlAey7haqp+Zs+NuzqSdxvSv9Ni/1vTp57U084HFfbk42DGpHQkJVUMyx3Ug
DjM42tb0U6jjGpZSlOL/SZg14muuaq/B3ZzwUn0AgFmfeufGpH+hY+DjoKFE2Ijp+QmHFrq+b1TN
99FLUpBKQoE5zw6BHcwOSDKb4VI5XT111wLtGVV4PxELqtN0XOpPaIE2cndvF4Bw9cKZ8iKBFHoU
aXRt+XODuJu3S4wtuW9xwTYtsw1NcxT3+Goy2yOCWHryExDkSo409BEBPuoyBx/HyPWjQGpslc5a
OA9KRZ0hXypspotIc2VsopARAmUtLDUJEDk9Q2uGGBAYdVVL2L5X5ctpH/zLKqQN0xGYWbgYsNtz
47edaq95L44HconuxiatcnHo6DaxlE8L7wWlXr3h6AL1/vBBOfh4ugKQ6fXvksQd/Z6EVvDjeJRW
wOJuZ3GG2cByX0qkXHx7RBX0r7J4oHMSs02Jx7aGMWV2P6ftUjg5xJKgvBgnakoDV6PkkctLO0dH
XjN9nMZwIVXOtuEvmbigYlJ36i+sFygrhHJF7ms2rlVeMSsbvcPXF7fMPDy7AeXKs0TGkkyv7tvI
Xl2iLQttIqVy1LGVcQfMwLUyqPj6N/G1J0Txq/p2qItV5VPfIR60xrN3LcS5m7Hu3zRLW5lznySQ
q1aDKln+DUuec/tYEhyMZ5nc0PwugnqquB2yc9eV3YoemojAMlBvdkPKTuIcn28VexgiqlQx92te
skOJIdIGdMIv5BtXI6OQEkkhOsRyycm811ltwtAOlDB5LTqN6DUeWOu4ObQmjG5UAHNBmrg56kaW
u5XO8I/lxint/0eLtomtRuB5eg/0bp8owUBRiQMMyKzDCrFmXf03qqpgzDavBqaCQcQPRLA89hJo
AEUe84ouWkLKBAebmrqZ8L/R1bbqcbp5ZaMvOA5DAAD7eQPB6ESTi+pSFsAIafb+8R337Vo5PVSw
C/VYrphfRDyU6bQUtXFe7baIfsiS9YEeuupwlxT+PWLPIVL/+7IjxyogqBW4ak/O7IacsDYfKD0w
09uRATyZBRegFoN9GsFnB/+iznxXVVkYENx8MU7LDEM1PAI0Bgn/ZEle5xP30sU+8zwfxaIdO4WY
bwki6/ODsK6J052vbjyF0o4D02LSoTAXuu1Gz4uOMfZC05nTrZLv8DsTwdTqirSYjN1CAp28CPmH
nLPnlFwthsUaQi5fxoWSUvrOGinbfWf23BYNc7i/6ejKBJAKF6mLguG95jpkKIdjAQpjbYNSzH44
I6fd8C4vzyEfR89dySGbT955vEmZwTLM97ikn6zZh5vAwwD2Ls1HFv2pYwjDffDR3dh8HynGzIkj
/VdWjjY36UY7Vgpw1XeQxSHsZrZBU0Nrb4hTedZa5fIbMsJFhs7VbKF1bE4KEwKJUK3CU5v958wc
p+I3iRjZeox22NI/SjkVZTO95LHyvxcTBUk2HofXXlxuoBLUDeCHURHOrMYDN/5ODKxAqSPBK81P
HIFzxOn/Hd1j4vdErAslu+SwtOJBk4Zto9VMixgDjy1xh12jQj6IDe2b1k46YVzxFKNVWSE3NB/K
/aEMlpA4JqMCqdfTH07Vz5QMB/IKomDMRvrsxhME5LyC/rNk/s3E9VX9UOf6jUoO8FVSE+FaGU1B
jT6qv+cX47O3C42plAR1qLNjKxNZkwMgObYekwJPHmYXhFUJo+HAIxxCqN+Evv3RdFKI+x71v9IJ
HJa9NQWB19ZaK3UR57yE7B7jn5TNxIGtQoz9Lg/Ki/+Yh/2tVolCDFDvzqtCYa4jdY6bHquWlICg
HCOhOpE+fmoI5+nnZx/yXh6kRR4HerLe0HsPtiOfdnyLAhxLJZNXyhHqVKiwP72HPVX+wYAWYU44
mWvpjIZ4FqOEsgQHcbVYhGcZisxLIu3ZypV/Wd0mz90NjFrRM1U5yO+CBigrJ77OU125vFVq5gKq
PfJfk1ldCWKaNXD6c9y8Tt4K/CKscpxGHb8y/3K9rEM8vIsdqR4meFk2rxGCBDG0LiX0WK50Yi15
kvJcqsntcL4eY8vcFTvvZ2aMFah22IOeImQwzhaVcME8VLqAVA/1Eo5GO5NsEfPmJJHXbcy92h3G
mPFYjWUOGuDrlvU7jgCpUrLGhJz/pVIMq7e4IAWTkTTBUBHMsG6fkpuYARqSwxqBxA5s5aJNdqPo
pWACSYBmggkWrIMkZhqp6TusJtDSPDZUaWWXEltk6O3+MZtQIYF5RvatDUn/djAHObezpb2tg3gs
nCNGyhkFAgS3Geqf1F47y00C3WWSLCsOubgBLlfJ2H6G2GX2zHVXa/SBCxXIvKXB1Xikv+3U3/rF
4H12j1xga+suQ0arCD/ipvA+iXYW1MRXKNAzXIWb/ULQq7HXH4x0QJ4gmdshIcMAVU3kRTwMLqeS
1mzU86B19L/lmwwdniHe2waAPVywJ/O/Bb9E6IY4iwpGRj4opsC+YXIys1r74xa9Y2FBQMyUlIZD
7En+3BXpjoZkBPVI/eVVTjYTO7dTfxhMiyd6+HBpuynomepxSaFKTEopH0tCA1tuoSexoQ94nWOw
weHY5R5T4GC2U6HyfoXk2+smAY5PEkHcxdkTVQ87YJ+/RBAdeaVSPlsNC26DjlLeSjDOtMNm7vP9
ZECZklh+jdUtp6mzi/MgJqILb2eIKa9Af7dnx/bs/Izd6jbMs7wl6M2xTMNWi9eg9kgjJVvJ6xoa
NlcVOukaE3C8nM0aBirIsC+9SphjcSEMMMiIZcEun72miV6azeb2SeUd2bM3tPJi1bHh+CIr39vl
7rIufsizuyaO2o6xfisYVcTkn3wqKmi/gFvBaJ6oEQIeQuOJC2dzOcN1EOEcgLSxVlw0N+902KrI
Lci5Y/qW739DULaMtIbF7K6JbcEAT9wGZA/R8P1a22S4HUMwt1AB28jVLhqXOlAIgU2zalj9KNgh
omeSU1S771T6AGnFIvztpzo0KyQJ2iIB9yVB90WWTXjQPkHMC0LrLhmgXPmMJutISvjQCMUnRz+i
TiE5Qd61ISSj2vMZ96TxUDQ9JOeE0ChZ63BACg/1CK3zWZW6D6ww9Wowr6G8QMBLXXk4lY6eIS7o
cC6IMGltJ8kPBfPUacbmV/qFVcDwAJ/1Sd/K9DxyOsWucF/JfMsOPoAa9kgRI27TmHDWCvYiLcqF
JJwEgLlseCt5IdD8YqdVan2HEg1MwOdi/hvUrEaHkE/mxxfyKt6KRz79xekhHEmHxQuHmK+6N+3p
a35zM0zs61DssTixDdnm4J4dnwpKc8H1TeD3f4FJzGJJbrIjLlLpLrvuu0Lj4N6JhMFf4RgTfFKu
I1hCofSXBCSel9jeATulSENRllDwlklZ/qkmkQ/rZ7NP1yRz/QxC9NwlnAtamRvMSHNzL0b32mk9
vfqgYo4GBkXE+w4r4a3e1aHuGkWZJj9fQu9Loh15pHXt6kl6uNCtq8LHYBDA/csXYR+eFHRL5QFN
uHx0V8wx4Fo8l8cxTZMdxYmDlvdwgTWEL/IsEIUcPZwl3EmmDDN06/0NXckuaPZHevw+y0aYfhCQ
OAc0ZGGa2ofUa6mJ3l5lj1elFx6a245AufN2ht8J1L/jn1JylxxX7SDOeNx0zBlJg87RD0oRFq+d
Q2S6CwDHfCWXBAxuF1lnsThQmTJEJ1Be8EFTKn235Na2ZdFpPGlDtCrgEJ35QQ/9mptQ1Fpsorrk
PYK9wHdpuCoZLrNa9SVx9cTqa4wOj3KeUpTekHi2SQjdajGlbjciG37NVQURUoRLwxNEd7OonPrb
ok+3JdY373cS+RftHfXUFJjubiFuQEOaIxzwXqneUMv4zBTPzWQvNSN5cfnAFyOCQUU1eRD67seo
/TwlhnNFgtBHR2lH/lNsOFbv78bLN1RVfWp7GPqVWcpHlDZNkTftXQo0m96TEvbVA40CoFFLvCFr
Dt44NYHNL6MBrygBWoaz2JwJfWKGwpZwidYeuzWLAqA/opyKy4OpvWcExmJTmrHrBEklmAm007y4
nxa2OV6pKNQ94WUD+OIfi89TSswx74JUbeFiM2P6iwZtq7qlw50BQN2nlKvqi/U3maMv7/BqN/VJ
Ej+ybRO6lclrMHPkfkwLxkcHu7jlybGeg70PomOKa22sFH9uGS2G8oG1OIOegyvLI2hubaIDOBgE
gR5lxnRfMbBarzVCdURt+zT+BqTRwbtuB/q2M7ufzlAJ7RilC66gvbkdqxSxx3mJ9T1dVz67YnTW
tL9LOxomK1QJ18pUo11DTE30BKvmagELgfYOH7A4MWcfy+rUzpacknz5YwSRlgAXi6R9g5ZcNEs7
AT3wOE4MUpHt/VZRKyGXv7fZRGs/i7cqasWTlkljCTYbpV/Y0v3+7Db41c2gwifR3PsHFPq8+Eu5
rSpCq7e9Z/R56eqgbChNbO51EiNecNJZGIXlW2BzZGH7dp+vIpPPGNzLOyXoVvYCvAhsidZyGXHp
JMNTkHjY/wH255m1c2pEg3MCMy8KTbz5RcWlm28VzYdWVc25UdtRKBznNavwoIzK5pN++pjAk/M/
u8aEFPtNEZpgeOl+7SrYtgZRuj2cTzVkibRvyjvvGn+kxPwiUtlsSbefSGJ+c/U0BQl3Ran5jAUl
68R4z/WuJuxsXUbzLc7TKaC80+bwX60ASLLax7tLBZjjFR1M1fiMCc5nOQ307AjZ17xebLrEeqbx
GdrmgHxzuPlwc4YJOtssjuyPf3qWY7ONatHKdVOWgspDEaVBRhgfbOieu6ZEP9QraLkytyAXhkyX
gyBN9KJTipbrJDYPUF11fTUt/Bd6OwXYUZCNq3Iv3Fdwd6gjedmQ3Zt43ayKeb6Dwd9rblahkQFf
SYyx7rqf2Y2tNxMcWFCnrhR8CRx/1rWte9Qo2z2PFLFmOu5deFXYhbv5ciQ0bYF8xs9IEYvrc2QR
kpNX76GoHYsZv9HgYEzBu+EoYVZ4EYVf++lBK6G2JVxdubEDG60el5dsXjBvSGRHKfZlffDDRx7i
oByDnLxglygFrez2qTdsEbG99FKVYwiOVJNBP7WlYHMA6Asfr4CRsIhJFXsmN8HNVP481pOOwboa
H3calIA1zoEETc8VKhxDKrqX4dfAHAj8m8Ur3/NLWt5Vwb+7BCdk3wG8spE9jnsIa0jgsyXXFIGG
bSruIz6lJsB/NFrvOTUWNWpip0hXTu019jLBsZZPBCslElmiw4fUtC2qiDDuR5KUiV+szFuSSeUG
DqJZli9hdznLDtKBf0e6/Gpxcef/l68HgG2vSuyMk3I+ucgjtTiTLUI2s5PSmCAD4WA0XNZDvfwg
1YHdHkVwwFRarcP1vtx7yhBls6wEYQxZWcnpX54yH/5rxjemQDsKLH251pKwWBLBYRA4GPRSZ953
fExdI/7pGfA+MYr2FaCl9k5BKLUvdZmQZzzo8yzf2KxG23UyNa6q5tSSGT/1icDm7iegfCoDCLHO
ukX2ykAd6+MgL0yD/72OTQ3sGyjBLPdn4t9dW7JWEXcS518pCAlK69G7Ym21wcmeFV83PRQCU7kD
5iCje7y7LgOh41UkWkleJOcC/zX55Va9YyBvvQzIARUPvcp2ntd1YAaEIHmLoMeETXIvWqXjnNcD
CPBpe3gYlpsxt9KyE7zF0mDCJrrON7vfUvQgUMm23ik3KMNE2OLttCCPa/zDKjOQH4zI7SiHGOd/
wCTFyHnYeF9bPitUh4JYa+yjj9q0WHL2ALsUP6NWv9U5+RU3sY5BzvwwIBFL2MS+68qxvL3/R8RD
iKnX67i6scZZVAvgwfvrivTXlRazzqAnPWCoguFYQKXcLb3j9sYfHzbQfkmDNQE8nNsXBEafZdEp
zwaLluqB5DpvMJIxOLrxlExO47AmJc4Ay4XDycMeonLI2/O03zsuh76IWpVrJV8kkMQrBpV2b5E3
ddsqoImMb4Lq1Q+aQjWSRQvfuY123zCN15wY+zFBIdqROz6e/UElr4kDzaevoFTJ+4K1xV40O0PE
+glj+t7sbzordSud7RgZvK2IxlV2s5a4qLEBZu3H7+tkQa0UeSZginfUPwHPNiWkri7quGXoXlez
kJ7Yv9sIcODK8DGT5N5cCiRGycAQM7NLMG3sJEiHbpeQ+067tKQqvUOqElYMC7mCd4BbJUNB1SNA
RzIICrM1Xl/rM8076izWNgTSjdPFCrG6ImZzxT8hNNr7/jFT2zBEb6szkLoXAUO2QKslGg9qPSoG
kZ/IKEAaDVXEfoFm6XejrsjSp21dBwYn7geoaShROcQuSYJd16GDi/7bOwYkje7XDyErkJ0qUrZE
P48uuFb+1gbIR48HF++fyncs6IjRoBcI1VJsjpJtGIYmGVO1bOu+OCEO/TIHaH0pKBCPsCQC74Py
4IJaKYqlTZOBlHDQ/jN9wz0SxB0d2ncKFdwl2A/s9NuA7v+735Jsby28ebaSlOUfICTR9NCj/Abb
J/E1NlvghpL/bWWfthKBeA8pgn69hJPnTEoNJ0D6oi4CuNnm3m59QIahQS/7IAPpZfCiEyR5CJXv
fEvDFEp8Qmv19gv0ZBUS4QWMUrFGHhdFOHRmBMdLx2rONKLK2weZuNPso42BR+Mxtph6P4ERnCFz
bv7VCii+SeRw/wqaJWC6sJkRtcMZeMCJVkF3tTl7imLyIIXsdJ2dJKycyHABp0SH77sOyc1obvnD
oYLv4Ml1UiAJIn2YjRWuYn2AysQvMu8Wn50KaiiSokSSZtFbgYhsei5WnZTLIKY5LK/97hKaUUOT
8z2kHb1uyyDpDsUmPt0Zmb8KAJO2Ux7VAUhMNApO9kqprbfwv38Rvk3ncuuK687S40IXoRI7T8Ta
xBWAWe3yYgcUAVwapLSEv8zECQAc9wjIVWHuKR30TEuNre2jSHRH21Ib/BqDqvOp02Qrv8eX22+m
zvErXBi0aMqLUQ5eU0ad2qv4bnt3EfRBE1hzXbJHIN2YQfUgFikVZBFwT51eJ9BFJFxUJbrwHYSY
cvzOch0QW48XK/jmSOw5A7gVL6VGioGDE5FinU+G4oiw+rFOcRAGozpVXGASqVq7800yAx9xhuC+
O4w81cL2quh1DOMCopdvuXQN0t0lVDZYSX7FvMZAd1ra20ylU36mZELwxcMXKR6tlLN0QrWXp+XO
EDgvQvk87PJ/c//Bwa2Q6pFEARgHTibD1Lp01kHhJPfBdod4YGT7QAGOVUfRymgif5Qa9jy8WSqd
Gmb9bMcmAWfqGNKpF72y9hSuHpm6T6cr+QAYT6Z9wn6TJwB18afzwWKwkhbWRj4Lh1nM+4qC8ghP
PMiDPZ+MRh8rIS61sfuWjrG6zIwrU2ZHOFcc10uXlTpbzZNbrQcHjaR2PBC4lysAAkPTnimAlmOC
WkRpCuk81jKamrJM+dz/zLccv84QNuuvyzMYT/tP5PQaG2qeHKytiwn6IasXBcquPfyhLvs/Ct7x
dZ5LEqcro/X2z+g3h2xOeuVnFkEnEyWlFWTZEh5gkvhcdiewVWvspZ2P8L9HToaEDCEX/dbLltKm
EHY2cCQo4X4YKHIsiTIrLn0FJTQKzKpHKtB/1X675LY8s7fUM2V8qp+hw5gSTGOHLqAvJNoWJg86
HvrrUloABAFhKw+t2l9Y88OmnmsLyf1ed5kaecGEWCllFGvTcYaJ1vH2nTa6bT5UBmKE9Wn9rlAZ
FweEAzoam6jL3Xksj3yjOeoUIKD8mWJs1eyPD5dPJupv6chtSnbM3Od8ryzP0dNzZKCdB3ONbf3C
GyXY4lTf2sVfrEuR1xynX5mqMKaEGTbEwNKBjgi+QzY1WwE1RZLFR85O4H6YvPoM+lsJloIKRah2
vX6syBhS6twtD8F4662Ej4D91hmcjUrH0uIvAYIkSEJ9XK0D4QXPM44SCKHZISMSetVI8cpBz57L
aOcPHcKwE7W4o6kCZBjIriH5B585tPjaAO559Kpzk2CP54AFFZZZ19x3oO/tU5b9JRruL9okYL44
kSeCIkVOHtqMyky0Q6datkepCDPnjLgW6ymOg+H8aPAJ91M4XqjCv8gIEu7dSuz8IBurMpi03NyK
hifXQu/XWSfPsBQVDd8b6DlcbzdakHo+8C7qxVeUMmmJukQdH4QLluqX804b55BsGVl+iTQX6jcA
dSBhD4Q7M2UbXbj5WJI4uuZ9wRZjsx3mBkm8HQULdp2flY+NN9ybTvzjD6LLZDQ1XhU2Wn10J4Wf
x/gaI/zsdTMJdlT2CVw4acwmbNv4lscNNyO5KDmF0o/ed34bzvrxsiIedxMl2jtEOu7ZB5X6nIRQ
i/MX8+kYiIU7W0/TLYhi5CyCHnr1aPq+DX/AGSmHHyTO8sWEvR++UB++CgC1U8DGNhUBVdsgfNEX
2YaG794aKYEqoTAumJ5SJWfLsVZ0KeBnSGrzmxc0EWnT7ScOrkapoxbGiONL1KOMl15aMrBlU4CR
SglJoooSFXcaS7kD+Q0wEfw1gtJDLUYdtko1NQ2ZlVlXiJAfmhVL9oRVYHi+IcXnhfSB86vn4adF
ue/8X8z44KEGAuf7bEBdR5tLutmS7YqSlxm4x6WDnsi/XDHx64cY06zeTI4tftkuywV+KMpGkZ1+
kNgtURbgR3H6my9rg/awbXCxKf1yK5ZSGbkDn2tHJFefI9uK372KDnR1+d9nKgjuZPUpSsUSH7C1
ZvoHBG2W6J33awnYSXs0gvGn/9IKYd2IXTf/6rLDJsTdIentbKF77Du3L+MBBUSSejhgb8QvPiVL
EZLXleZ9mUGrjAQoIpFBFH2wsWhlQdmVks/+BuJ5HmDQ8ct2YEb/TAo6fGHweBvgLgjQ0EU7DZaC
ED0eAFT8MFO+W5xtRTuhQ4gE23YC80dDkpbLsXwJmSLeTp/IFHqO0DMnxFt7JB/92avLF50xS5DL
1W+BFui1sIsy8GO+jON+YGtGvY3AaWh5cVWhXhtm/KaT6HhzFqdVIqb4g3FcCPIQEDtobUPwUvKn
8gizh2pdpVHnp/5x4NiRz1brq+nJ4coRy2Y5xM00XSKv4Pqr8z2gf3yUJSR/ogZMhty+y5jHV3BA
8f1YPX4kX4+BRQR+AUTgwZ3kJQQX3Vi1i23Ueea1joRwPm4OPuwm1Os86NHS99NYt+rfS9l+m9Ai
A1M5iw8dpOfcq4H9X+jmevq13OixO+8hM2iA2kD8OkpFrSD3DxxlwgjnRLWJpLqi83REM0ZVkWnC
I7UY6OkoUeOTviqE/Y39lCX6abAYOYNl3rhBG7N3zbB0YIr4IAhKoiDX1qU8RQRneU0YokILj5+V
O15KSFiYvZSshY5ymahLngLBXQM6lkoUjBih4JOEDcu0MA97z/+UUWUcwGW0BuwGaY/FB7aOI5Pm
OJLIRrapW79ReNGgiJnheyTNPu1DvqOtZQXN0dS6+xTBady4iifTkB0plPHFgilhIdJVteBz8c1C
ktO67dla+btXxa07H0RTHVBv/CwrlPPskN5KESjjSSfj6TwEi5JK+AJEtzLJsXRjuOTdtqHXk3WU
fCvQVwzYs7YhTOEIrvhll8L+7ALgYgwkBqWZhwQ672olqb/jL3mBN+zFpo6ykIWteq2eluljQpiI
46NFt39GF0gdHpF7O4f15XS7fjzEmSliv4qIo7L+noadTe8QRw/EVc+NjT3r1Jj+Dyr5Fl1mIpL3
SQwkj9k0dTEFFbEjer06v2Jhx9qHd2NZZHTId0FhTxpAeusTexGGkmtJlrS2Dez4YCzY4WO9T4DB
GZFCswxsD+BrCpN4yiEHdx0RVENAuqgNZX55Dk60YkumLzKPK+tMSmVIFLgMLQM4OwSXiyY41Mbs
GCKTfUXzEjqs8Cr9ZvzvX0xRwQkcABKqul5h8IPbPfDzHn/238C0Mi0a1iJrDGUTrBgAg1BFWMjV
Yqs7Ops5df0woLT/5ZESmtlQ7HBOTvrXcbEaHcXsBxqkC0tn+/cgzRaIoPU/cp9EvJxAHG6tH5LL
FHZEoRmNjGsj8gb+zB2iVM5slX7WDM8I+2Vzn8B8kNONyuUCqSZgn9es5IZvxUci1pENVoNmWxHO
IyntS2BTP+ZxRMP9fq6NyrI4r/wN6ekHpGcM252oTKwXwMvqGX5V2pOjFWTcKNsY6RpxBCQ8vy8l
Oe4R68ln619mihzRB7vfkOlxJVeY7I0U3+bNCaojDX/GoH+DJ7fHzMUaIbW/39BUHFrMttwqVbvX
c1VOgsYCWv1zmInB2vIY7lmTTahJZyyN2zb2mPvCPTmqbKNT2++dT1fKhBcxJnwHVX4DI8UPPGv+
lZyLNFPQ/9YEO7lesUpvrNHV0ScpZ6Qx2bl7e6AxSLOnQccQo4JATZmU0As2NlzbDIKdzIxuFyUE
hPby9enPCQ46BqXfM+78No4LU0nvwSzN0kXj2YFviihkJGf8HjUoJGZjSAJeLafSubY0Fh51kpEj
cBmw37FG+JIQ03gzKqYnerHa+N1211LVUyLkmQdYkjojLZqFC8HpX/xOcFe8/a6jQDmXsjcMXHW7
lm+ZwrTY6h5+asiFbt4DcymhrB6HKvMsRWwi3OQEdJvj/7ksFw/nzGXlWhACHbwZosQjgwk8bUmw
79aAbnM15xkUCbihIxfnIDtB1sIv3LzozOtx73/asVnaZD3DW8z/d/de6UIJ0oYwnMZxERmRXuyC
TW1hsNut2YAJFqiP7mdWv0ZxgfPga20J+JK2SyItbheqRJvbd7NOkaE8qhfMffcKDCeQWgoQLfVS
KXgvWtl9Sod/SejbZ0TY4HVSs1ERnDSTAq3p1dw0H1MmCyHeJ+ROWpt/ap0t52Olzmmh/nYd43Ga
Gz6iBwIahejTeHJP56JUgsR/1ISgux0oUr/C2PtDp8avdeyBHvLUNpd/rWyp9+Yo/rcBtV2zmo+f
Yjc4kZhLm3/TRw3XeXKXa87Y3K5zwXbjBwKme/lyMNSzn+FZQBTTmjicYiWlAiQNNwZy2Jj8KLBM
VYOtSH+PNnIofphleHxKs+8q8d/u/pS729V+vu1+XVZPmRMOVjnhKkCothAZMp2vhhMsoDz/WoFr
Tg5G6h6wFjH4B2AQjiiPfZf0fGorLE1cMBsgw4A5GnebdhlU/V+KKKsldmrqceKgI0O4fbsbp1YN
f//wJWmhGyQbI7KzSDjYF2/V1dZRKNwjbE+caZKr7Ei6Rwa2sSX3vb3cp5Rkc7L/11UwXXhDHyZw
Mgkvc8nx7uHcsdHLuqGzcb9ZN/m5fckKK04ue2MRuLOV5nN9h52OkOKnZR4MaDKQiXTPMtML3WN/
ONqfKC6CM613yS9zf8gcbrzwxMLNqmGDafUVBa1KICkfMtsJGYHBpfiqXuPHHqBHSQKOq5z/TMVL
X/UdnxmJPXxUui6s5YD9DuME3dk+cR57s7pi9D5kcLP1N4a1eHZSZCjw5E70qbjaAWBb7Do4gj4s
G86OZbjUDuB0ykbLmpa9+V252XJlTNNgcqE+HURVZuBkqNi0v8suqIkceqj4Nhje0cqo8FqMAYgf
RY/IZ3GkHzTy8dKKWEyzOuoidjvyxFp1t/W7NWaFZw0halJQUCDCHBAchb4NTGUn8b+Mw8Xu5nBn
U5qBC2UMkhUJkbyNhV/SH/AE64y+045iQ0UOr7oNbCi4WW3Fzk2VcDDUrshQjg2w2LRxjodq4mQv
sbb2gSl+g3JoONQkWHAjXqXWsmTlzGp3j9Mfuix9nTpiU2QTbtO8YyNuRF0FtJlJsprrC63dU7xh
+dOuMayXDyeGzMOIgZxVJUA+iToSS/wgU1G45Gmc59twzmYM3B9DV1hBlDrtcWMXxsbVVXYnw4Iy
roNHJG3mBUiVShRZJumZuiB6Z7Ns2EHP+cMYiN6imu9rbzXedBSKYH4pTyq+AOvheUqjGe5/Azrl
+4YobtPSciCCre/iOs/hQ1jJIixAEw5tZE0ZUduN1zQDC+mWhtCoYTWG5DMx9errnzps6U7WhOZ+
u89muAwHvJpvdBvJFT1pbgvMYz7IAgFPzlNeA9wRGSfG7jKopvPMBZdibs7aajfRz7dv6/FBHAzG
AyRII7aluvbAHWlYnylLpIvSyERIG7e2+w8O9VCDpiWOpXTIg5VNKeNtOWtY5agbsjp0RiGSKdJU
ZTxCYVtXBGBC+b24LABna293bnLXaFSXAQjriQlafaQWAeeXilt8A1vybiJSBFatoCNeautBsJbJ
69IQKn1ZCALGBnCcqpqv35EZWmoR7febhzoEzfYO+ribxpoP7U3YaC/e1zSna13K0umyOXjPa6jm
hTC9tWeYVT5Q8wBUlfKmRPcnSCdMwbyLtZFBVIjrmH02eUTlsFZHRuWcToF3UoLui1C02RAiK0QO
N3ConAySzyAYYOdig/6+xlF84YofHB21gkRFfwLFJYdK2iPv5qg6LXck6x5SV9Zv7y0aNs7h6Rfb
VB7kcuoTIQsFK3IBBkTZAyl7qUbnJVuMkimTPt/cXoqfaZGUYo33rFAAVDtPdpptl4ICPFv0lBop
Vyqzgqf/8g5Ye0GVLqyxvwiTY5BL+uWQPZ2uo3C8qsN3Y0MycEppd03ZxVWTOlTKEN4gAjH2gHeB
vY/rAqhOCZ3ia+7lcagcQyHgzyGmcGny5locLE+CPhpWZyjrY5k5M4qIl09TMH08wEfSmn9X5iSu
8Ss2vot802DcEYURK+YdeAJ/N48GNVyue5qNBzARYR4KeXDopCcuZaCVPJ34J81ZPD0wfjxBzcls
VMW48mVOF4zjAxKiaq9NJRY5ZTWHyGaLXStnIT6bIq0NH6rC6YawDOgQ79dcDAUlUh2VR0EhlNUP
ESC73PMnSWKmZTVzA6EjEQtRDXKDb1yoGPCBV10GBlQyHxL0+u1Qm9H3AnlcQN67rctD4euCheN/
54N7UgQnn4bQ++tx2uHbkDsaI4E/g4lDKePSXzTH5N2+TDLAJiUKFY8AwapDwQYuA4X+bX77NbXX
jwqprs6CIs2M2JGgGQmJ1eeO8HySTJXsVovmZT8U+SXh4T+Er/r4jCGlVljdTyq6y58pgwC5Xrje
En6N3X2Qf1GE/0z8AQnVRm9tQjKBA5ucZKhKj5rev5kbWnldNEOYzjzyPJuWqh5/PJ8nt4p1ut5D
aW/cncfykspq3fKC95rmojReDCYEwd658b6XluOjE8i1sLhWcfB4/DJLGfFK/BO45DZX0bdeNf9j
FTliv0VGM4ns8ims/5o9XcYTkEFnr55uYdPz7AqFSintGWujIuJxMYD8G0NUTbrOCo9axta/x4du
4BtpCXJkf+KDPZzOx5aIIkm2kqElEuhjoxOVwvLQesWi2/IcalFTaxoV7FQ+t4Gl7n35z275tl9q
bfs/l3ak49law0HelsYfImV5mpWBbSXgz3IxfeOYLGiq8NlbW+VyF4yuyQqJA6Br21ldAqWm3wPx
079z+CgXm281TMBu23WXqql9VHA0S1/XJqrMb8KDNunqOUQis8lQTbqfbueKCIjrvr7MLpDo+/Gf
AmkkLirdREJ4VTNzWaXGF1LQBoCJ8+cbpS4ZUX515ogKWvVbIekJP9t4ry+GhGsS5cruP9mhnhm6
HJfGdNxcjkeEM+A+BG2yQyFhP5VehCTuvx9S+NFMrjSufmB3WED6Ll5OJRRmPR2zi6SMEj44N8KI
8ydvpAiqRjxYQym03w0qJjpH1NejQ7GSoqj0NT4f7x7EBCQGj+2bflOv9GltRtxaV9RKNxPr+0wH
B9DSWyDgPehxeWPG6VdTJkUuNQcGIh33Yxbeu2u0ngOfuZYLwOBODRkPnQQzrWIaSoxcyWuyJMue
UBuYl9gT1t9kQEpT1CmNmRMXAMG/Iuk5v/jvGPN6TKkqcef9K8LXLXnfj3EdE9Z6YqGWgEMZ5Wap
b0PVoqlSh+vZ2tw/x5pNBK03Ks1zxGf0R0rkoI4th9JTNOEgtdsyUJpeIi/PhPymMhenBhvFwi5v
4WEVG11ItJxwPAlcG+dsqyIrmZ56nc0mIQ7c3AOB2NqVddcXoZ2m5X3MxBgYdufliFdHowl+p8Pq
PtVz6GXklz2K2ienC7PpSLxnqS7NZDYB2l2hxCONWk+tu5+bcud6n+IHr7Us52oSBEP3ZE9OuQGV
0U2W5eiVnigEtjc/DPj99YCjaFHLV0bvYVQPYl7aqqHzk2INtfbZGuC+vwk7NiJLo5VHCPrHhqK0
6JHlXZxiLBQ2dxDd0fR/1DlpSQSUjczfVZQcrGxV5IFRWD9QMQaLalHA+0lMg53mvnHA4RGaKtm+
haQ06T77graBBrLf7IsEEYPmIXk/uhuF1JxhRFWLKzIUzgYwu4boFAtFn1P2YjzVAXZBrmGSBGoG
msv70TYFbT4BjRpR2LgIUPG6jaAPvjJK1B3Hwoi2FCCkb2fOHAkZzFm3+fzJBDe4Q9bnXyKmjLWT
Dm7GXFIiMwWvRNTbDO6U+IVbcAsvPPoB3NSv9pp7qGhADsM4WwZDlYbOjAbcNPFTolSdWCqvcgLM
Agpkhs2xI+jp6O6yj7EMw8d0Ciz9hjKbsW7TtHIWGv0+QnmmjdA4093y5fReODrg4c906lHT3klX
s0r5XROGqV0KwjkyxItudm1sc/9UrwwoMqklh0K2DwJhWC/N/X3lraXChUGwe39WLv3jKTa00sDM
saNK61D2SGHaL/i05xkYAzEH0mqpPxyZmXipSZQgMbGCVfeNXXBe3Kuq1EQE2aWr5mPfNumKhGdc
gMBzB6HuWoXQVfe4lsXZ9qk+8wPRyxdhwGRE9EdSBwuFJB0r+mKsLgjGunuuVbpdU5/Av7LnhLvr
Q1+iH7chiwx7Jae92w5dxjVkmHMqbktEU8dVwJp7XThudqV+ZnE5njYw77itcwA69zomAOoLFhKe
7t4rcWuf8hlPyxjXdxzkZoi5RfmPpJiYal8oyqWEvCGw7KiWItW1SArQ0S8ZKILH233Znqb+hIb4
gGYH8984xNOoAlDh8Gtp1GFbQJRVDNY7Rr48dR8EcHf+bi0qXCkAumICO8HZEycw55+99VUIewSd
8fz7vCwD4ohAE+AUENSW5uUNTRsvStwMAD7wN5AqqlTlv4BsHMbANKlr+Kh5xO/Acadlw5laH3AX
dV408JcK9akI0OQ5HmpgnWoW0Po3s8O7s6iIHmZLBMkdeOWNpFXJmXi+yuv/hy15CpOP4BrPxlmK
uYaXLBI5fejW6kVvf0Nz4OdiAmQ9/3lzqc+WQR9ipFW/kmuSFKsVw78euzuOH322wyf7PBZNG2u6
WqItwW7hpdA+neAw/nB0fjYISNYoaERerud2nToc1ASaXeMNUC/aGj6d7+vDVVN9wqGo8/Gu/tlp
eki84yKTggPrzts3U6BluD6eXHhRHptZczQsHz2Fgtuofq9Oe3uQLP+egfkwD4SVYoqRbH3pEoG8
u35qocgs5cFDJcodpMrI/t9TBkujMwjmy2W7CozMHGHXRtq+5DGPQufHn8k0Ecprv1Na/MarJFwJ
YPY2dE+L4kbNNsbP4MbY6npBOcH8B/py06f79vLMbl6v0VGmz5n6Cd183RPIhHf69lE/bC3cZHvf
BT/5OXZCckxx07XmxKxDOMhAZe8tZ5Yrx14GBti2yxcbyuExmpxvrDUphM0U86H+HFwGUmmidmGZ
YwdKCbHnkkH26PkOUdK/T/PYcpnBzhJ6KOJ8Sjg1RvKWCFljX1uczpLsHiXZBtWBQCHc0pdqosdx
F1K18lM/NTHXVqe4oEpuqAthLbi0gUE6yOtvrA8nG43ZUPpV5npbiG+9O7fsDaxm5MWkR+8ko7/F
jaoVxyvA/gbkvZwOxo8AlwRNDcavYAksc8JaN1rDqI3o28VrzIl0BMvSRVVYl5MoeRIRecC9+/lZ
jgSaA6WTjhZ9hxvDUtVmLjBXkG5xW28atjf42H+qzH7/0YMQ7o2J3B4d9cO0u5KjQmX+5zuGKKSm
iniB/oWe2AJWapA2hFVNlH+jrLStWpZale2+XnzWR+38tlZ5PrLMNqP0L7yO9vSZbA1YCaO8w8+w
RaGayYa+tU8wEQriB3zGDlVcJk1fA46Rng/WMLGLf/H6c1asrdr1gfpryDN5wgK5k001opx/Rl70
rK+BOjixXBe2HRW0cohu+CLFEJ1OXC/lPQiWuGy1jAOF3zPVljjjNM1CVbDCDyPgCyMaiDrZoaoh
QX20TIMhoo8ZR+4+oEjiu8i6sPC6KD7Isa9U2K4gmSF2c7GLQqqjYk3tLzcEEPkAtziRrTOiqczD
ZzehXQwYAR4ZEjM4pWfrbHyCLYSInRAEYxozcLIuAfUtlBBEb4+na3J9QEtYuhO9l7kbuhCJdzy4
v1twU7IsukDeoaVQh/6pY1mdisyKGyjciJZUQDlYpHGPfLyN29vNTYRTaFo/8HDHuutAGo1v/Bc0
4xaPG9gHryNN7VT4IB5Znus2+YaxssDwOV7mMEh5RRqX/iVajVMTedVBCRwMuLufkPwhbWn4w83g
u1SvAOgmhLvwOuWH29o6SKoMbXXHWn3s5M5q79TgZaZxhK9u13HwiEEXo0fZOQIYE6gUlMsLPG8o
PALhRfTKrBlGtNQxGaw72i/xIl3Cq0Xf/ch/v4+gC9OMytAaq8X6InVSqvLnYIeeHy5vvkq9p/v2
BP8hj/JjsearY7QDKBZsYy5OpUrnBZwSD/azMrw1OsGqOwEXlMt4wTPn5nEguXDmMIC95Hmk/aY6
2jXmxJVVfAM5FmeNRZW1Zc6Bxr4/QyKGEzjYHpeen9ea8AboxYnU5nLfORQUFlKPpCsee8QyNLpf
nLwkcDW5+l4lBWANZNlHoCgYv0q4GXZidp9GhA3gspLF+IUh4CsvutenGJ/GWn+uK3XdGyZMpDGU
0o2YaPufIc7gzJFxC9OBkxl0DJBLIB76S2hk+oq8vcQwk7lTbEn0tBzh8pNjywFJV1RvH0fy3TSj
JymG4Wn0q/9eDl1BkePjK5sZCkv4wiKYYPouN4bmIhmjOVl0xI4zrdf+Jbk3i/y2CflBx9GcRtpY
ba8mT+6d61yRdEeERxIfBzciRrluQazMeYG6DI7HyFXX/bw/UneKwiAv7d0v9UUmxBQME+GsbVG8
MUJsZiFkjYNsax4W0PQYLsY/OJfkEw+nKcKlRfZZ0AoCZdto6MubH4QUh1K5EsS3xlk6sRALoSSk
MJ757ZQ7Xj+0ipqCeZcvC35DvSVT7B1TsBEsjxVURRSivwVx4QssQl7OJbtQHPHEtajqoHskSmfu
npRJO7nvS4GfFZ6kZnNpL8aoUNhtdw4kVml2jK/jNmvVZEHsAOhMY9dTZw3334P/2xj7BQr8jgae
4PlN8r31smPiWhz3IiXzka1e1efOCw1pfGtln8TWmB8zYqYW9lUFmjG7MvMKrMtIWpp6z0voPdpu
bS679kbmTCgndvlibBjdUWWDFCSOzGeqpQQUcrud7MHpR7auhynLhZDQ5iYDskzj72nH8rxURfnw
6N7AGJ3m0m+2CIXY/gnKwTDOiLmBPpVGmpXuOTiIENURIKOTYk3ChxTklLS2f0aUJPIkhTiVnwGt
WlnVyqAJkJ0ZoW2gHs6dpS8aDDXNSwo6T4pPtBD1JNSDDXZ8ANe6epTGcuBMgLSLQd+QJcQ6LWz7
o5rJOnM4dkGLm0SWml2f6ZgHV8JQ5MpCJcC7wkMCDpc6L/l/0XqZz0xblCa4p6lQNBaqVX4Wlc6X
0KN+3q/Y9f2j3HAB733nygtuKtogns+en00WdGzbf/0KlYOubRfJrPSybfLyvdqXqUbb0d8nLtP5
KKy9YF2XL2L6XrXW29c0FW7qzkIqzZlyK7zjnhei4S9tUX/vzetJj6/h1dDdacEEFAj6xBl1Ogiy
udy1BqVKkdGtmqQClJq47m2wvFMo91crZ3uN7Pgdg0TUnAM1OGTxvT68JtdFE4H67YtMGbMVY5k1
6PWc6B6v9Q3tqC7f7GD4watNvg9WRlbQQOOR8+7R9D+l5VBS3NO4Q1r9mUC6yQVlmYI8D0tdbxc/
I5XWHDRZQqvPq8CPr3ekqs0/eHx2sBofn5WZmuGsVu9P6ZG577RD4UnKY6GjotFct2ae1zTWHFJg
htxYt1OZknsvvd+XXnsP0c+7L7ClRBStpcDjh0rTgsOBffDXEMKigazco48kilm3mrPF8FeS1tlP
eyaVBqO0+tirHhEO7mrlBcCJckDtzyTXW3H1QICbjW/re1Sd51iRf3xb8tJuxWYPmqQZbJp9CsGz
3X/BMSfS0KWnLxkRKMetku4NHJRElofoQ2y3CJ15rslREx/Oq4+CGaOnIstavUJhJomfQhmx/j1g
JQu4nlIRVLAccwLx+CA+IEBEQL1L+TGVpfBYB03roEQp9PfnvT8VdRfTW6g5zDlk9i3repdUtVHw
ih/geZ560fnXt8UjIUWz606S003tqMRudROrnkX2KWycFBW025ldkOk6TOWHCTgKIA2FZMqgPpz3
u8MQHQgUCzvsMlizCaIPcGuLHMwppq+j44YNYnZ3RzA4ESdc+mcTwmNAwfzPDpXC4q9duApQWjTi
S79RbBLxzKEsoksdJbGu3dnlecnBtjj2ceTh7ByGoIHLNRecIEpyvcUdf/26RaWhOiAkrolf+1Pu
rqqWfQxHsADiEQ0ZkPOXKvZn3U+vlH1sjKWVr6gKzwHTWgq0mWH1McJVTVtt7RnycN9A5aF3+aNK
pCx0yJro0bXMqv2bwixTd5IHVublvnLqcs37VsotNBX4XFnZUKJTp4skOCwbWYITQeP8fsXixYgM
OEA8wbO7qQyiA3gRUEUNhTevwG7b3ymBi4HFVsfsAlzfpsUH1cB5D7JQIs8zjpOvrAtTDPtR0sEE
svBw5q8CqSxPDQHdCVK3LMqsYAlStMgA3tWWR8QjfhMUmlKAK8YeziUMY7JBTaqKu9Jkt9QxsKar
ooKKWfTRIhzI+K9vUikLG4iCvyiOOT1eSQN/Zl9XHFrK+7Nw2ydMDz5Zc7s80gsjHm0z25FZHp8t
SEQnw8i1UkAEhNw6CYEmLSsohQ4VMOf/0r8xO6DVmTMDXA8nLWqxBTODdyiV8l/w9+uf+oyQSkq6
EExWBMqTA58tJmpnLQLq816ymqpruQQkxNgTYqwSY551L3hghMZZ5swr5cbrgiTT1Wz8V673ztgl
Bd8oLOPekWRhgq1nO1ij9pm4aIei3eherbYQ07hB9AdO8SqQ9sB2VY9ooXxK6Q2Kbc5wExPTLFiQ
l/iKDcq5G+IHKfXY/D9+01h54jALhr9b3+DGES75X9lMYQTqUgabQzdI7HquJ25FcyCWoWttapBo
NVlwnzs+yCclitTvEYDgLfr5FPLvs9f0aiVWMlqbEAGS6YRV5HtF0qa3bkP+1jLK9NIKx74R35tW
kK0bLNXhhrhyAmIeuT8+CSNb1/J49qV+uyp7NWvl8tgKXAwaVEpN6+J0uWqejQUKCxRCub1Pqijo
O0MODPg1Xtbj0WtAaF/RkkRoU9JOJIKFr5X2wUt+h269vbiblxa5HwIKYMdf1z5AGBSq8ptdUohN
lAbviU/JjfVskyulYcS+tpuaA6ECCWivhnCFHs7nstSpFO9TRYkudiW53FMZC7foDmoLYBbVguHk
hcNfy+kePx2cJAvBvVjjpMDMYCLDb/kCV+nCqx69bdJIen9SDYTR5zpoGo5UhRogoMMzH5usq3JX
3VllF8ufx1A=
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
