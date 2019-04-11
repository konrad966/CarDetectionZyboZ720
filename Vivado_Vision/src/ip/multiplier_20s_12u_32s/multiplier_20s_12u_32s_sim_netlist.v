// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:03:39 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_20s_12u_32s/multiplier_20s_12u_32s_sim_netlist.v
// Design      : multiplier_20s_12u_32s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_20s_12u_32s,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_20s_12u_32s
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [11:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [19:0]A;
  wire [11:0]B;
  wire CLK;
  wire [31:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_20s_12u_32s_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "20" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "12" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_20s_12u_32s_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [19:0]A;
  input [11:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [19:0]A;
  wire [11:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "20" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "12" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_20s_12u_32s_mult_gen_v12_0_14_viv i_mult
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
KZpD/dvpVQD5zzdsg0PkvNlw5aoAF2w1rE6JrGjne2e+8Xx07S/TrpHvrvjYVxPU6yXR8/fNfDDi
6pBAtPf7T7yS7sb4hK1G8y1H8rbYuDNwyDi4n+YyRZuamOJblPEy+tGIYn1khUFSmd7akqDhPNdU
7lKzQfsb7cG97M5t/fftwlXmTN1LjQW4MH4lCzWtiM4rwCl5uavaTDGA2oUVvhNpaRyOhPaujoxo
irTryurdS+T2/zmI9/D5q6RQi7vFvwW1AlpexvsB2i2djeC1NvfI5NSulaQkSkcb7Smk2P2a9P1b
wSJdIQPQrJenWqyntHWkpxQxDNLo90KtfgHUdA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PoL4Wex6RwomC7vPprYk2l6sbGsXX055l3VXE854gEZY3l9eAo0GpWe2IkcLywf4TaEeAtTSiZSY
kyfrnB+TBWmOPSKG4Vdo3Mr7u7AkSprmBwwL+DZo/nCswWjLsC+0QWx7gVf6FSi3NRGd+Ofz+cyh
IW6zqiUPYct1zL5u/tj2Vmc/uGHSRIEvMLwAeg1/sJi7/tmgjCc2uqkQm8UbfShJTv7ioYEKiE6P
7ckmVU6lCTSz3vc7V8ao80w7PQ1oVKNHdAfZv4boGsDy8ceTIy+kD7R4zBc/5Z6XHY6MsumPro6D
9nfqRNkATYQV3BSJ9Pjr/IiaA0GXt/mkhgGadA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7856)
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
