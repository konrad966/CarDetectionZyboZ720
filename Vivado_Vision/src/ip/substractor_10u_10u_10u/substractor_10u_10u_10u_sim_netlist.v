// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:01:01 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/substractor_10u_10u_10u/substractor_10u_10u_10u_sim_netlist.v
// Design      : substractor_10u_10u_10u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "substractor_10u_10u_10u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module substractor_10u_10u_10u
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [9:0]S;

  wire [9:0]A;
  wire [9:0]B;
  wire CE;
  wire CLK;
  wire [9:0]S;
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
  (* c_a_width = "10" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  substractor_10u_10u_10u_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "10" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "0000000000" *) 
(* C_B_WIDTH = "10" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "10" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module substractor_10u_10u_10u_c_addsub_v12_0_12
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
  input [9:0]A;
  input [9:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [9:0]S;

  wire \<const0> ;
  wire [9:0]A;
  wire [9:0]B;
  wire CE;
  wire CLK;
  wire [9:0]S;
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
  (* c_a_width = "10" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "0000000000" *) 
  (* c_b_width = "10" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  substractor_10u_10u_10u_c_addsub_v12_0_12_viv xst_addsub
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
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j5A533Xt2/xgXNcVL757Fe3Fuaiv6XE1mi7vIVLreICanLMYGFWFt2teUEImPbxdY3EdiSa4X+wf
O+V7WfPgyqt8Mekkyr5xpHf88xYgt4B4/NWiAV/Se/J8Y6VX36hVAhnp3Q3WXpnFWqI53O5F3Izo
KTHONeL03YhRpYieltX8JXLEsxaz/+8jhugdPjp17wpvzK+IHQeXN1hXuPIT888TdKjCvoURgBJN
yPR+y3w2jjwlVcl/n/snuxerbztyi9sHYExrUsggAQl0nl+sBBhB7/vWXGlWfypH8JaSeeOM0tZU
GC5MpcLiiFQListztaL5r2vX7zEvIy37mLe3+w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kRbpnZaK34cFa8EMVtVjgdliaJCGObZKnMPysc49zfEDrTe9LpUGm1K6mtw0XjglPrPyxhi+VhAC
4TH+PagAsEw3Qy5WNwTuivBTRO0VWEUceTfGB7q/1IzCvImOMNs001C0GgkFvX7GcfLosBeGtwoi
5uUAEOILF0vEL7dfHbKr15qBEudwl94l7KPw0Sl1RLylEwgK9RcwpTMKUZW2arNOQfc/FLEMQRWH
bVtZ7RjQaQTewayTtRMh8XCVz70eLmUQH9mIz7cNhwLOmt+nltWzygnA97p6r6rPb7vJjdIqrTHK
IUlt8EQj2lFZ3jQBcFypw7Y6YsqmtjOHhQvrTw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10176)
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
