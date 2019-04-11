// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:39:20 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/MatrixMult/MatrixMult_sim_netlist.v
// Design      : MatrixMult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MatrixMult,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module MatrixMult
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [32:0]P;

  wire [15:0]A;
  wire [16:0]B;
  wire CLK;
  wire [32:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "17" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MatrixMult_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "17" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "32" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module MatrixMult_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [16:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [32:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [16:0]B;
  wire CLK;
  wire [32:0]P;
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
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "17" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MatrixMult_mult_gen_v12_0_14_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
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
FcyAqRalEp7c30C+GSg8TlKyMdKqBmIPAT63Fvu8jbdITfTj8DDTjZczon6/7tGWstletAUOUjRN
K4J7LkBY2Bl+zW742VmW38EhTz/QGCns441QIjqE/94Py632Uh2WXJ3VF2Ki71L0WjOjUeeHWSpg
f11z8gVO5fMZHbqMiSChCAddovZMLqv3/A+ZWv7mauVd8L8J+/DXQ0vwnvCD5twedAx8Iwx3OdYA
9U5fB6zRhHjk/Pxsh96aSIxUstN4TCWZ6h/Kc/RPw2wDxKWqOR2L20ZY+VhsRA+sdrU5eyD8trBq
pr6kpgKyzp4Firjk/LQnafRpFPfHGxtvBx+BPA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WNZSdNuTHdWpPXAgO72WFZml2ArEyY6CUIHNK5Z0rIVatSIueR5m8o48CetBo5ImwneWBkQsSeAW
R1HIktlSs2FC9vUx4nUXRbdYsMX9DP5SUo4DscdONP0hsqY/UdoJGSw2/0qJ/J231kfmilGM37Z+
gvUTK0SnhRtHY1E75vYpzJ/XUepq4VBuEJC8oVuH7GfWs/pG3vjHP3oFNFQB5lHBJkSDEuDqnUxA
eW1mw59Be2pHrm6ilklo7nkeW/xKrOyx2KQjWhLTk37gE8w6yapg5n3faK0HqdhaZlbxVcIGBYMG
3/G8f4XS++EResoHqqF8U7shOSMZRDnpOUssQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
n6g=
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
