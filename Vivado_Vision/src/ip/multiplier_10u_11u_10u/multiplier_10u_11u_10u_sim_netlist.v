// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:11:14 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_10u_11u_10u/multiplier_10u_11u_10u_sim_netlist.v
// Design      : multiplier_10u_11u_10u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_10u_11u_10u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_10u_11u_10u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [9:0]P;

  wire [9:0]A;
  wire [10:0]B;
  wire CLK;
  wire [9:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "18" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_10u_11u_10u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "10" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "11" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "18" *) 
(* C_OUT_LOW = "9" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_10u_11u_10u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [9:0]A;
  input [10:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [9:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [9:0]A;
  wire [10:0]B;
  wire CLK;
  wire [9:0]P;
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
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "11" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "18" *) 
  (* C_OUT_LOW = "9" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_10u_11u_10u_mult_gen_v12_0_14_viv i_mult
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
Kn3lkzpscrR18oE/65O3RQ85fmKyzu3l1RCATGUeSRxzv+IJe0Zlg8GVykr3A7vPQaADsVtbyDzs
4yRy2GhYnmOFgZmawQ5B1+i/87QS5mK6R6hviva0gztY6Nw/oGFpjPr8zT/IT6/bJAxQLNO/Y34M
rvFGPzCcWEckVYyKCm2COyMIjpz3JMgdxE51j1++0EE2ScL6i07If/KkEb6u2h8G+k06u++sU5oB
FLAdPEvOosXeurrJYdYhhzk9Wlkyxv/nyEgj+NflYYldyeBXH4yRvh7IMp4DC0r21kivXd++cu7l
2In63IP5Xv807SUG0OKmOVoxSjvzf+BrZUhFRg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
htPioeGK9TS6MoPnlx5BjCyFCxoH4TlMFWBXymxQjhOVI51nljV3z7g9Bi9sgUvVTyk6CDtNv3xf
+Zn6JFK5s3nFP5WKIhb5C9MdPwvgurIxlH0fKoWLZO6bicJHqlMDqcLzQ9slna3vM0nX+QMvDrrO
9XZlfsC5xJyOaIm/O+Qe4nnlyAs9miUcSphU7GB51LbAiu85DUYaOySMgH2VaM5j9y7RdP3mhRkr
AdYAaNjx1F0IOVQun7MVu65ZYmCLuQHs7+jjvmDuQuVXeAGVGxgW8o2m0AI1LxUfC0rDQWg0/Hge
6lTpmbgrwaY9pGwS5CDAPkVUAQuAUW03y5a30A==

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
