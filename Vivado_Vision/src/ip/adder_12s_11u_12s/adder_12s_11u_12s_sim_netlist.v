// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:04:18 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/adder_12s_11u_12s/adder_12s_11u_12s_sim_netlist.v
// Design      : adder_12s_11u_12s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_12s_11u_12s,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module adder_12s_11u_12s
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [11:0]S;

  wire [11:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "0" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12s_11u_12s_c_addsub_v12_0_12 U0
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

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "12" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "12" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module adder_12s_11u_12s_c_addsub_v12_0_12
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
  input [11:0]A;
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
  output [11:0]S;

  wire \<const0> ;
  wire [11:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [11:0]S;
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
  (* c_a_type = "0" *) 
  (* c_a_width = "12" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "12" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  adder_12s_11u_12s_c_addsub_v12_0_12_viv xst_addsub
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
Kw5PokPRB1F0RtPwCk5YZ65SG0iZaJ6wPmIEc7tEhf271JDc7DPXot45VbTXsVvUVDhyzd0g75OU
FxD2FcqhDQRUzL7CgkpSaCpdU08E5Xey7OQkwoOpDRspRV6pzFjlNS7py3fKzJJYPerWXNSXn/bK
K4+kt4nkZi+8lrwEq5Yjb7qszERMLuArI0mRRU9gMGEUfhSJKgYFmJyGm/WX9zL5ELOR8a5lu7ax
rZHib3H4pm4WU/KfCwmz7d28ydSYAUx99EtodwRjqsI2ChMOhYVQefkREvu1KEmP6xf+plE3b20U
/vDbAXvn+U0IoZuvyhi9osqdqoDlvfw1tdNPZg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T21HKw58laZo9TBwg59RNRwVcBqSnY81io0kLZNFLR8n+jht7TUHFwxhfhUOJgwibBCRe5VURFeO
KH8tzyWcKpoQly/F7DLkiNXasRAIp+S3LU6ZnIKoNuxgoE3EW0MuQGCWV4mRZIdymzAjX3LKz2rS
/hFp9UMSBD3DSQlsdX4Fpf4rNbASmshfj3ijd4+pWOeKWlBC939U0a2GC2ftXB3SMkST/eGnVfvx
L8SnacGc6w62aW1NjkIwCSiwE8zxPSE+Wiidx5h6ahGNVVXemixo73xahI5un7qxnAOAl9OsDEb9
ZVA7Gedj8H7aQw+Us5M/MxACMfYLz8eynR5rYw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10928)
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
