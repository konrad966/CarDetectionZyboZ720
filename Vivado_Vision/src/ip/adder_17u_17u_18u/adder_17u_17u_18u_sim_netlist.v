// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:07:30 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/adder_17u_17u_18u/adder_17u_17u_18u_sim_netlist.v
// Design      : adder_17u_17u_18u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_17u_17u_18u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
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
bO6w8mRSGZ+9P1vB9cRo/BuljnWzY0Xq5F3w3Y9DO/2LMLWbv079Vr0OcDcLTrctqwFG8E0gsY9B
h7aINtKV2c0W8Glpm3kN2gkPOYgORFR/418cnalLKfcAPHitp/t531Kai2l15tqLsPqiWAqggWFp
ikqCt2P1O8p62J6djDV5B1ZkpE2kQEA0cgPvl4KgzEhF6TFHd2l7RpLDND5gEJWqVBfaIDWHSXOI
60Tt5iW2R1mYz8d+0LBN5LNKD+/U50KeUsEtkW+MA2owWQKrx1z3dTk+56O8A+1femULaqH5QKxk
zjv8ZvSYiFx1A5fRCmdRoRwNo9MawYclMiA7Fw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xQvwVws1Z09jJNS1w9Ci2ZiAhqtFHWy/2kziYkz2QtFZR0p5/fyp7eLg4FgIu4Q3iV0bRsNtCn4g
QSI9Kq/bhPnsMBRzDxqEDOvu8dyBRI+hm7LF56vYQVXMfJVbbJ/sHkzSdb8XDM4xEmFQtYJiYoIx
G7cRF9ZJ2yN//KkjH9VWjoLPkfzjN9dgnXU0mgHQguy3v1/7SZMB5HwqUabB+0ElAsjBp08kTXXu
YVZbHL/7DAlpMJLTtz4gyrXbja6XaY4nW++G+HRoLqmgyRGqsRWteyOMQx4a3WW89OZOObo14Ckr
4RHX/iRaQ7Ul9Q2Yo6z8g0BOTVoBfQ8caxy8Yw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27200)
`pragma protect data_block
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
yvUkxIzN0aepd4g=
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
