// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Dec 22 21:13:41 2018
// Host        : DESKTOP-5FKQOC4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Praca_magisterska/vivado_projects/vivado_hog_projects/adas17/adas17.srcs/sources_1/ip/multiplier_11u_11u_4u/multiplier_11u_11u_4u_sim_netlist.v
// Design      : multiplier_11u_11u_4u
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multiplier_11u_11u_4u,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module multiplier_11u_11u_4u
   (CLK,
    A,
    B,
    SCLR,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [10:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [10:0]B;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [3:0]P;

  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [3:0]P;
  wire SCLR;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "11" *) 
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
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "18" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_11u_11u_4u_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "11" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "11" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "21" *) 
(* C_OUT_LOW = "18" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multiplier_11u_11u_4u_mult_gen_v12_0_14
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
  input [10:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [3:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [10:0]A;
  wire [10:0]B;
  wire CLK;
  wire [3:0]P;
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
  (* C_A_WIDTH = "11" *) 
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
  (* C_OUT_HIGH = "21" *) 
  (* C_OUT_LOW = "18" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multiplier_11u_11u_4u_mult_gen_v12_0_14_viv i_mult
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
lC6CZwjM0e/3YXuVxqzf41SGBgXh13Y8iK58agV5X0+0sCCYimesZeFPUP7u3XOfAAeb19SYZw7a
v2NPMtwUORJWTWKCEBeJZJDIVsNBJvTDIobZEHWdsVM1MAO8PJnzMe/LgKIMlLBOu7FiYDG/2BHv
uhi9Q6hjmYuFi3gIBYnOQ6eURkkRCbq4B81CnIP0KYP3Oj3HHVnCRv5FmPiAcHtyy6DkVZGQJuZJ
N58JjtMjZKPki4z50nwXRLw8I9a2uiA5K4VeyMJTWqLY0JKGHMEpws+8jiggfiPEX6lDxE2NDKjS
n2WRL0QM0nhzkQyjIZmzGeZczzqoRNrxtC7nKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rVrwi+sVnEnElrOKKv6nmCUjqW+SD1YgwP3NH/7tkCn3nkXQkz0e7oABhc8EiMLXMSnXqF8B4GDL
706+hQQBFG7tzU2XBc7PXZIeeRY8yOw33RHIe2hKrWzIFkByvgJEGFxUWxLONDROHf+O2XMmNPk6
qMRoIdpKuTmPo5OJuB+trsKVJh21/3eypMKgH7osUFySGTQWR3SVEwoqbU27r01V552DITWlFfAC
VOvkgO0N3O02xNavkRnz9EEynbjbHqtLW8BDuQmJjOLXheXvWptMJq6RfQXomEmUqVoQx1eXjMqw
+LOoc8Oc8pyNr5kStNuN99ojzmnQaQxj/ZFzrQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8928)
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
