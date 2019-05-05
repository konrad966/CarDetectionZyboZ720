// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May  2 00:38:57 2019
// Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx_workspace/LidarSubsystem/LidarSubsystem.srcs/sources_1/ip/mult_intens/mult_intens_sim_netlist.v
// Design      : mult_intens
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_intens,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module mult_intens
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [11:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [19:0]P;

  wire [11:0]A;
  wire [7:0]B;
  wire CLK;
  wire [19:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "12" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "19" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_intens_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "12" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "19" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_intens_mult_gen_v12_0_14
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
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [19:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [11:0]A;
  wire [7:0]B;
  wire CLK;
  wire [19:0]P;
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
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "19" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_intens_mult_gen_v12_0_14_viv i_mult
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
moLDeTys6O2AiC2NeIbcHXPx71jJuPE2qvW0M9h+Uv81K8BsaSeQv3EJIsUxv14sXyaLiL5GDT6X
7tsa0YUqlFy+rFKlyUJ3c44b1If9OS6UFJDQzS6VNC819XAtwUiC70aAVmXlHj90AKg6O7/MTfl6
XHCWpqa46cJVvZJMDHzXax/UBKL0bzI/k3H8YTMct/AMWQQJDyVFib3uH4SHEYvSaww284nUjRCQ
Tw/Muk4mZUz+IU3idpWQIXF6d0aBDJFadghB/RxVFrNALvrG7a2IB2GIDsHRdqYH0Lj5IC0Tk/RD
4q8cgPGIsKA9pYkw12Zbb4mFDVDdwzROcMgY7g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E5VUw63o0QFJRYElCOCofpO3JNz10Zr1E4OtBmsF3VviQh1MYp8cRBWy6PdNG+PRQy/ITdEKADU7
CiMAfnY5xJSjb36VNU+aMeON+TmvCvFWD6S7RBgrLwNqju8ML3bO345+F7FrNAka513qSp0NF0r9
uUHDsDO8mHcUK0DCCMWSIf3NyF+BUPYOOaExJ9xhr6DLU/Gt6vRaurnwCkWWZK9uc6ClAsvqBPzc
rooHMzPmL/Lfy0mV79O84d5FjtFrL1IfFeVvbr2a4iDHunXQJqBmYkBDbubVrzMYI9fUIXTPGp29
/mYO9M5gi+qgzJdgyq+2SvornyXU/Fdr/oFuOQ==

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
