// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:02:25 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/MultHor/MultHor_sim_netlist.v
// Design      : MultHor
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MultHor,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module MultHor
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [6:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [17:0]P;

  wire [10:0]A;
  wire [6:0]B;
  wire CLK;
  wire [17:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "17" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultHor_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "11" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "7" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "17" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module MultHor_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [10:0]A;
  input [6:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [17:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [10:0]A;
  wire [6:0]B;
  wire CLK;
  wire [17:0]P;
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
  (* C_A_WIDTH = "11" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "7" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "17" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  MultHor_mult_gen_v12_0_14_viv i_mult
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
Ibww7VqU66rBQD60oDo4SkPT+8BAB/SdwMMkLiTPF424Pf7ybSfuX+CDT+nXkgPqR4clf1m78YDp
zwu/HhxCNEzzEUOuyDPasMnGhR2ob5Mz6QFgePeqbdmIScmhF8VbbvKQ8aFuAjZwa5E4AxZWVi2i
feoiP6MPLy+qpwTrIXaPBNf4VQDrz7xfA6LeRs2EgMdRFqsKdP8FnEOgzgC8zmbf0PTx6N1Q321O
+D1AnksQGoDsMirRhaLRMRws24rVuFtrnOh8BhSTNs2bG30vxfisYtpqumfSJ6YW3IBHHK8RjloR
XDZ4nv8ycX3CLMwBWDJ3fC4hXQSSq+jap12n4w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QTlUQolztdgccVz2yd94mQ7CoQChCUod3MXAQ8f+/AnRv7OFJo5pD0gkNicvQwadhQ43bJWYVMGv
2mhhpLcDsjDmIHGnOBThnccuoLrhORjgNtfdykBD8hs1JTLXn3DWBevprvccCFeb5t9jX1fS/e3F
bBKmPQ6DXAn2dR8Y+vJlCIDUCc/c/qy8cNRGTOzU6bqa0JVzMVLIHoZ7F1RMtgWsDjhBFKCaqgQp
e4faxj9bjlaGkVBq6rjMwp7iPTwvvtwgOLGQ1WSDpuV3WhRZKvH5Z7Qtul9T3FcSINsESYBlqb1k
5KRh02pPhZxwQb7yjQZsLKlOpD2yAsBlbxdcug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
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
