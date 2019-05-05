// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri May  3 20:23:34 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/mult_svm/mult_svm_sim_netlist.v
// Design      : mult_svm
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_svm,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module mult_svm
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
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
  mult_svm_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_svm_mult_gen_v12_0_14
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
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
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
  mult_svm_mult_gen_v12_0_14_viv i_mult
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
O7CWwj2OBeSucnGqw3GHxTAMdN3JHjsJhgr/KSbs/X6e8XjeLZGV6nDfVklm+HkGyyrx7ELOJ4uX
SpV+Y7xbjb+7AnVJ/19nQb1BD3daUM8MVuGjbrLe9h6n/YM3khm3jvauQ3Q1t1c/s3Qxo0An5xcg
r2RwBnJEMT2S3L+BRwFzq3jtxSqq51Y0JjagMaccHtS9ePxQ26QxzETPoOjxxRf38I72d8lnOYaF
vVgS96b2EL9RFIy3XvGUXEH7WZqOWqJxU2xDDK8P/vP/IJRm5xBHvsgwbLtYEjBuY3NCNp/66kcg
yhuRyq2/7scYfnaHvDoZCieR1tCWSkxMS5VZfQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
16njCCPOQiGuh8S2riG/Dm4o0kiJbzCAyO4qHf1CsTqft43UqrASwmLiv9koQNIIwHdEuTGovV1V
/n9rePQ4Q5AxcmqOkcY5AbeVDJOwO/PpbHywfI5HnYY46ekX17sc+ckCu9/U3WUgp0lmwAnZxi//
FR2U9c7SpSL27jK/v/3doKWpvSxlpxmEphjHl6R/RcnPoiC2sFk5xFpuCsIAQRNzaPnmmsQrFkJ2
xuYWivdNsBjFtxJywjkaex+hXszYBw3F/3Nk39WFdp/0H92sHi/5gnn91T+Ys25QrK/MZ6rldZZv
E2EcvotRMBO4FPRIldbWh26wWmspm4NMImDU+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
3nA=
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
