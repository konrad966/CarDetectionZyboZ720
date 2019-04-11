// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:18:17 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_18u_18u_36u/multiplier_18u_18u_36u_sim_netlist.v
// Design      : multiplier_18u_18u_36u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_18u_18u_36u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_18u_18u_36u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [17:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [35:0]P;

  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_18u_18u_36u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "18" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "0" *) (* C_OUT_HIGH = "35" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_18u_18u_36u_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [17:0]A;
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [35:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [17:0]A;
  wire [17:0]B;
  wire CLK;
  wire [35:0]P;
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
  (* C_A_WIDTH = "18" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OUT_HIGH = "35" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_optimize_goal = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_18u_18u_36u_mult_gen_v12_0_14_viv i_mult
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
ARbavcwN2Ha7fSEVefegWF/jXD8LFYHriano+e3d9lYOgyS34eiQUnVaAUAHorhyqczJpr2/3935
pITegkeKbZejLob7sbPuTR8t7WKOqn/FVAEaNZ3vIhP+NwiPQO5nrnkTAaYtI9EKUjwe/zUTiRGG
jfYN8hLZ686Mkx39j3NDWWmDQwmM8I6DTZg+NZo/xXB5grzNMM8brSKICQejcRp4f+T3IfC9kEZc
Mp1AVZR0D69W+r/9Spj8EJ7NJXTugvhyAWpzpndRjV9qZ62rAkWDjM1ZAMSgTX2QNv1fvbXeWe3I
GcAHV/+5HPGDxPm1QDzBhms3H/M7oceBm1xSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2jz33bg7f0F+XILqQqGKHyZVcWTYhRCsdzc2xSQOz9BPVmkx90Vy9i+c8MIAZzmHd7sEhxptPg/N
z+sSAQtI3PYhQHpDqeeJMlLq3xlZzOgoPe1M2+DKzY2Z81Q2dll6RFf8Dsz4OEXQqVJCy2PqgLWD
wUU7MunkI0NpO9rS26HP7isPnmCrDWVwtUcE2OiCA9srwp57/EKxe2ZK4nlJkYuy/Mdx0+I8zMHu
BMzuq2wTfdn+kUMM+qG//ZzJrg3JpAvVVXYthKAlvCi8K4XlK+VH+7KMyXrUNcEmp9624W8wgklh
RxH3P9x9aHqswSAmfzxziVobKMPG72Q7V/MNNA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19024)
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
