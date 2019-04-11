// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:14:44 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_12u_10u_12u/multiplier_12u_10u_12u_sim_netlist.v
// Design      : multiplier_12u_10u_12u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_12u_10u_12u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_12u_10u_12u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [11:0]A;
  wire [9:0]B;
  wire CLK;
  wire [11:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_12u_10u_12u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "12" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "10" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "20" *) 
(* C_OUT_LOW = "9" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_12u_10u_12u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [11:0]A;
  input [9:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [11:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [11:0]A;
  wire [9:0]B;
  wire CLK;
  wire [11:0]P;
  wire SCLR;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "20" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_12u_10u_12u_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Xy0rQtyFjlVkbWfeQXwuqraA3MiYyL0eFNjbY4iEa+s0Iy4tsgQeJeqb8F2nyNFI15QQro+xjbie
m+gt7LRqSA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ket885wFwjDLqC97HI68cpTwpD1hGBIJdkMh+rsfw+vPf59MdHJNNbcLh5jkiDAOhjCAn8l7Pljd
OAdA4DPaB1th3EEcK28Uhm8xkCE8u1JeKM+cTawL1ZqM7f5vFJDMTdaQdo2ODraPwf63iOc4O7I1
Jp0iW8w4eq4dmJxUtLQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0sLRbF/nd38eurlUzps5D+y+9REEleMhJud3+B55Wgm1hYo1ntzC4vdMFNHAcAq1l46fEiE/D85o
eYPC/WuBoZraAAbt+2vzvO+6NgUIpKKrii5bWkc7zSRBw4OUgkdgOToRQnup7uEq7pNL5gER2W2q
jpbl57Ks7667W7TbtoCx+55cY2wmHeQ+Fi9eAhxvopt9UQ7JhiAITU32QV0QOUo0C5DuMrCOfUPt
Q4mY/sCujPAsGwpHpQOH6JmVeTJ9/9FBANFdHkzv6F+8T8a1pEE2+YcJXysHrFHMtW27J1ZZCZGA
hChjmCakAGz4Jve6Njfz9RKNiLrrvv0gHwgvEw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z45gwqdZGpYP0Kv2lPvhL9t/dewTJD5ANS61F5BSLbdhMd8PVbRummT3J9CrH0Xrbuzjih6sOpQw
kP9SCPfkWk0LECt8HjobCatSEoRRONU79HyCEoDk93VT8CY8JL1BVS13wUngEWn6CIfitTyUUXR/
CxyxtdDZQFDUfHXEX4XQ0Yn12IXvHzgVAVLyG8UmGQWtQl4u7U/ZvMszHbCI4hHi6FW2kYvzBYlf
e14GZYOKCoOlqFp/3u2vs2rSSE9ciWV/SYIJDbOxsQCcBEM+UYYOzWikcZxKJAlJhndq92g1JKTL
sQcp7SBbbJ1O6Xynuz0MZ47Dfl+F87qkHSjwDQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AeZ3V4sxDArImz8Q4W0bdOLintyw5zFj71qsxS4fYZUiRz8fNjC87lJzQ+YnUM13/42C5tAz/W5B
5De7uFmIgyIiHZ7Y1Ljeaa49Hank9rJJwKCFDSSNL8oJL51I1jWnn7YQnA7UX2zo1TTkepqKq7HW
QLVQHxdIfz7XQJ1KYPLfGQXcsGEecPlraNmNXeykJAgtAFm5XnR8iyVOGbjm9W9BUx0070wOpVoK
DNLr58vy3yAgTwtSBr+RexJEsBPZIUDyrA9NgYHy91GC6l4e/tQMTkA5GUgHnQd/YiVINSR358nO
A3j+0MMXq+Hrg0TJtfXsqD7mdjD7gjs4pqa1Vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BTz6m4RfoEciTWA22aqSQ7leYhQBT580p+3gUMnEkDKrl8y/O8yBG9prYh9eaBfxpy/1/zsYPTfE
O0sD3klOHeyC81JjLy2AWCWL1sk9/7n5I9vvSHXaQP4PHYRjAzqZC2XENPD0SKyVkobaEQpad+o8
VjB8RI608B9GgMaZvYA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
D7Hbf96be8hL6h8aH9GXSy4IzBK9xG0ri9cVSVfA+REat+znGl+3rKoWJP3Y8xVsMkc1boG+wuph
DvXt9Y8VIRQAHNgamdZlVmWFc7YNNoioXwxsiPQUGQ033qF9EQryRyyXiVxfPqJOSfqv7PrbvgOT
5UDZUXtmOWGVrgoDlz45TFPs5v+lO6i3RYt0nujylzKTS8VLhLp7chpkjrCdjQc8hZGNDkUI5WPz
T16PgMtr8+aqlEn030MgQ09L5vJki+2qisAmejQVoQ30QbY0N/13XTb4LdaYF1u53Ib59hKf/1nP
//1d/wsq1f4QJoIkaVIa2ngZqWphjv4BhaOjtw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ulek9hN/gSVTGmRZmE0TA4xohqGppXhMufReFYq+Ebjbk3LQCK+mILZqJnTc/ijwV57CGtNajsKB
66+7KWUepy0IOtdIE6FnJ2SOWO7j9diY8iMdplVg1padsmz8JZy2LvFzZ774+1zo8sJvxl0bfN0R
oHWPVJLA5xyMHvj22m8uJn7WkEWPmWcFEw63sdRnPw/WRPT8qrqrvr/Mo4vsVL+hCNw+VqzGsO5u
iSkpD+S6e9zDDqnehSvrL+Kc2FgifIRD2z9i/LV3mNoqfu4n/3hQHjK2AxqtsnwERKw3p48cz9CQ
K4Ln8brQWpWCkbheiBfPXNLgN5n3TI5UhYqfMw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DF1sxWgjSwCj3KUqTlF8XVuxKC+2EH0Td53dwG7qXKJE6aRMQNWi430vvAwBKzfODSk0NUQmshoV
f0P5dxzrvp8FTBg0qdOyCX6st1UOSf22a9QT291g7n1UPsafuUOxAECYa0wYcUSZTutpUYMFdGiZ
dO4WWqks9xth/8ieKK/2lUB+91ELHb09AvStTU/HIRvH0KFWJ2RwvUT1DGbZEaqK9rt2bGGZm/yL
1jze2K2mHSlO23E+G2rxMhiBLUQgXKqKaEPQAnWskZ0/RyjWHNAy+o3PwyRJxROZVxJOifHy1hO6
rXJYMe8uDLtnYUU1swgrBNQZsLYQI2Ewf7n3KA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8144)
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
