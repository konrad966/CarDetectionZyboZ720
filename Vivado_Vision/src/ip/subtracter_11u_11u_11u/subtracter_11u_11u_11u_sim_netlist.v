// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:02:37 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/subtracter_11u_11u_11u/subtracter_11u_11u_11u_sim_netlist.v
// Design      : subtracter_11u_11u_11u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtracter_11u_11u_11u,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module subtracter_11u_11u_11u
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [10:0]S;

  wire [10:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
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
  (* c_a_width = "11" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtracter_11u_11u_11u_c_addsub_v12_0_12 U0
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
(* C_A_WIDTH = "11" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000000" *) 
(* C_B_WIDTH = "11" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "11" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtracter_11u_11u_11u_c_addsub_v12_0_12
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
  output [10:0]S;

  wire \<const0> ;
  wire [10:0]A;
  wire [10:0]B;
  wire CE;
  wire CLK;
  wire [10:0]S;
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
  (* c_a_width = "11" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000000" *) 
  (* c_b_width = "11" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "11" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtracter_11u_11u_11u_c_addsub_v12_0_12_viv xst_addsub
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
Y6OVkbj/qCdXlAKcx/kTJHNkazaQLraj821Qlj6cASYahs+lKQWY5yr/gU0k8nKHKTSR3lXbURcJ
cUJTefhFGMZNQUJl18vXpMkiXGgo4gjO3TGBpre5qWkhz5VNqKmyYKFBPrD3+udl0NDRLIYV2kOa
+YAwBmOnmmhST7GVbUsa1aTWpmmCtvgkCc4gwZWSGnwU69NcbalkQ4XaJRiBINqz6HIDSvGH5gia
jUIZKXW9staXJTzkpKG2LPS961cLhZZvNQMyT9Tjmg+aut81LjoChisI6qL6pWL2qgfC/B3axRV5
/wUbKEcy0lkkLtDHSyaI9aM/ovcY4lLDFhuoLQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mSKcoKULE4tD1mRCEWnzCdnFnpQMmv1CRo6O4qQLJIiXKVSlB6wvAzh3NyIxddCGQEjcU0T/PYjz
+e/xtcgldcu3XOGry3nYtYPxUF9Ek8iWBJoFy39yItBySflhEqTY7GIww0YmbXStpZihKbMSFdj9
3x9yGjPm56gtMoPk1TG4Opq7sJd3excv6ils1zXQZYU0B+7OEBK2VSy1k34Zx1hEmh8gEhJzObvi
vF2ozOnz4sITU9EC41rtCM6+5fVHDOoJwZFIE1BCO+dNKmePAeMzx40CbN5B1r2cBOJE90nez+Sb
txBu+5O1XzqZJkwmU1fYertH4WZgZQ2z1Hz05w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10752)
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
