// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jan 12 21:08:59 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A6_B6/Mult_A6_B6_sim_netlist.v
// Design      : Mult_A6_B6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Mult_A6_B6,mult_gen_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_14,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module Mult_A6_B6
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [5:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [5:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [11:0]P;

  wire [5:0]A;
  wire [5:0]B;
  wire CLK;
  wire [11:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "6" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "6" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A6_B6_mult_gen_v12_0_14 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "6" *) (* C_B_TYPE = "1" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "6" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "11" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_14" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module Mult_A6_B6_mult_gen_v12_0_14
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [5:0]A;
  input [5:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [11:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [5:0]A;
  wire [5:0]B;
  wire CLK;
  wire [11:0]P;
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
  (* C_A_WIDTH = "6" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "6" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "11" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  Mult_A6_B6_mult_gen_v12_0_14_viv i_mult
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
d/HdbiNHqwpsLBKpexx2ypZ5I4Um4N3bDTX0mRWjXyhLc1ZqVqGMScxsOb3IGiTonzPGqlsG1AAI
WwhB20KdgFhXUMCEeSWl60akpQjXi+U77Y45XzTt0pbj+bCR7XG3baCQvUc3M7bI6Ck2zsVK+l2u
/5wf+o1CPjSX5CkHP25X/mcLGbe+MVVXRSfaS5HEEZd2xWhb3TuHnZsbwjdm2k2EeBk8EMIop+1p
K3VQJuY9CRKyqH1H6ZmSoxEHYju9nnUnl6202ViYE2+Hes2MyyuYLGrrv5yig8/PG7W9aB+qnCgm
c/DB0bPEw7B4T7ntZLXR6l0uo7GrATZRN4vWMA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dXYxLlbph5bh6QSYzQuPXpxlzzZ+1aa6UVlUBMydxPKTe1Lbo6k/QXy0Ww46VHZaxZIqJP/gjrFy
W7w5e3G3iXOuRM+gD48PF+5Fc+2dS7w1MSVQGmtrcx/NOrJd+Bi+8gGePk9IAjepOGu3kg0PO2qX
o62BRDH/zXfaIFsedt9C7O7T8gWGYNuha1hkQozgVDVG4LkNoj970Uhmd1r8I3cucagDWOpJ4Ada
Qyk/a36DYKGgNFlDYPGtgHyLnxSSG3npNbd7MWXLCFI/54Y73iuYbwY9p0h9xKOZjNjCMrwr710u
ILkQokc+t+A0/38w/MvIFmJsQJRYxpkKOSrP4g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
0RwvLvt+DZ0+WRm+PkKnCoHRo2jzCkGFdrvRovxVcVXt+Cqfygo2QpgaUxNgxQRsjQyRYGRQvdKb
BlMtIzX8f71qLXwUcKau7HnN7lSyUCKb60/8En03Um/E6KV0j69OAk7ylzUvarJfBQn+Ax6iVwpp
7Q49xHDgUCZZ82Z1AtlYuML4OxP9N6UCM41mFPoyAZrLWynJNMHCVUMtUzvgpqXpiKLEP1ebs/N0
Pj5X8l88sYr2dnnc6uptAOUIIJ3aBPGtd1fYJ9vSykVLkdsDuxIYZuR50t3NneIqg6HP9hFDEi5X
p2akbWRKrUu83Vc5DCJNkBS0M1cKgQa64UuvwNr6R1L+pY2/Q1Kkz8s3we16FNONXrYTsAG5Oz10
w2lkRVm0GgZDBXxWhQCB81uDkYiWzj6vnzoQ1Li9+PCJAZcoO+OpcxG02QObBMeB0MJB8xEIj1qm
AdY0Hnl/dQ4YFZDWrdIigU6Crc+5+hpuUGlRtp8Zilm9jJX2j8RZJ8udmO5eGd0xvUik6eaXS/1D
d/u2JlGR94qoO9aWxvL9BXbSZ0pYWXtWNGrOlgOzh7sWJQafi8PpLRfQdILSNDTl3sz0+RYNgOaM
iCXEL1i9KaaD2pTvH0Ot3yxRgNRtt8JejDp1ajFgdI/73Sg6p2EBw4pFzDRXaxby1RAKfcJBX1fQ
oRKPuWW9HLbCm7BoWPvKskaN0tCHuKtlgJ0qx0ZtmWRJvf4J1+kLY091n8AWgzaSEAjU6NsEA+v9
QEeolL5GO7W/+YEJoKOagVgkdXqVZcHrrUtGqekZveix0EUqli6CoQrpOHanGezKmitym6GGxXsc
QbnUszsTbFsz2OiJSMcvnrdXrwgDk67BZV4Yx5DpfpkXux5NboW+syJ7Ws1hzRdn/kVThS21VKgO
2rOtzNzF11zbaK6VELEUreSaUFv9LPgTOdHtJCIZy9tGuKu360rzkBj+FwvTvi3wv0hwVDWElOhk
g//CoUCmbjvGmf5LH4KVjJxQSBfBJH0yLkXYl22NZlOQsc7gHJgyxN5PLn2CitEuX+CZes5lAO8v
DZ3Lyku1tO0uhRoNcgPkKaau3DX4pk9ApCx1d0cjdj6UlGYBEVYULv5p9yDB6/hysgS1mQVVAbrP
m+HOBYjuW80Hwgs9I8YjI2tS8GKXqzZFJXVg7LrZM0A/KFqicSnRFdIa/6nHKC0RXApATnlE9Kgt
pS6PauMJj8UdmksabMiC4SAT8ZDY8LnHR1Di80zqEofbsUEOlJxjcuSkGh24+60PDesLUhxVqibe
HbJ35Mp7PhFwzEu5sQIH8Mw0D3FX6OhLp6laNIHIeZZC6EDtPj++a3BKKkdfmG8HYmO/XRMAFpg5
VK9MebLpJhxrQl4h68mznh6C2LnOyz5/iAvqsoPhLCYNudw16AYFVFnV1E0pRe7kQzSLTmWLQF/k
/bLzwczAF/2X4d+D9zgWDTNbnE6X1EKnOxBudjEakUgN154Bq+W6JWfg2VZ95+yfJg3h+vDSb0E8
iWBXuE19wTUAOJxBhpyvJ+EpalOx52brFWxiPUFteIJgOfgdKX0ZKmuOK1QIc/tOwCnBLvjBSaEp
JWHRM6YKI9RqnOPBB7wA+OuQ28L9j0UVUfUVQ1f5QEOsxFBRig1kgbduKEGKcqKm4HcGpybHQVWB
PHQ0+HLx8icH/Z6ttDHChNOopojs8mqpdsXT1BqA6DzAuSIcOZSCqjbO9UKj9mJ2w+01BN7E+w2C
jyDrJESKS87AnvmZjDCQ1wrwCt1KbnJOkMKrDVhoy/J6MhnMsaThNyEc/2ExesrYDuN0aXCDvs0s
utOPxUwEow1mi4zxz1PMCr7kRvTs9Ep2veS3XD2odRaLGTYEHZEuE+bMkHFh3zrHWLpH5YxNDX2Z
91v3lWuy+XlkC+KTXqb91x+UtaidXE1bwD9MnoVW9voIBZTRHUEbHJtutaAyKMJ9sggchw0w+62k
Imea4FnLzTQg6bYi8C73Xvy1Nmb9AyZ0kR26Ro9/b3xW9mmY/WHGu5wPepEQ4Df5EVceCrQH9kha
N8a3HUN9byiY5uph50BWCOgGVfe+A7TVKL96sALq9RBqpBNXylwtcCskI6plCRP8CLqNl2zVZFHb
G+gq5/zUQYLRo1bvnuSwomtsjVtskJ+X/RIfETBw3zLUPrre+016MZUYv0zf3CVfoqjxChyiZvij
L7k1fv+c2b3YszCOr0AMEqSXSK20QAYODXUmWknNvc/HtD63LhhoUQ0irUHEzh4vgme7f0PKp7l9
06jEn2VCBQ0mhWSGLjRyCDYJgOI3x+fp2V39jU/650kmYQ9fuGsrE16btR0Oe+DEV/EM7+tO8903
h6fqeAw5WR/XLx3jSEPNC3gEXm8NSMGQQfUWpbVWrROyj/bUP9C1090Nm03lCNpkqEzHzbyPAJB2
1af5q9H7mQS7ILEBLt/mCJAXZ6yZBW18fM3uTpwY8d5MrBKI/pVkl2wpSwk1w+aL1IY6qJhTvyiZ
u6vHrFHZJ5mWvtem6nCTrA/U8Yrbv0Yd8+UQz2N91e53M7mG3h9JUunhLF9S1Pndc/8TDB/DlIAk
45wr7UkFl/IIsBppBrj7W2JOZxiGpboij7K8BlIxKOpIxZ5XlR/olLpo/Fv6uFwh2e5po3/BIZ7g
0ngt6FzbHc0aLuSdvfsmpmoLKQWQnWU/jQQAFjJjW0W/u01Ac/E1csCknCqvh72dwxl8i2oCC7jn
b7rjF3UVd9wgjQgJab29DRHhhsW3aZNbJ50aw6rw4/9zF19zSx6oLsvMZbhNIFsy2PHNYH3nUqfy
uHBNFyEIwVZEf+5wIpE0Ix1ShF64906cqzEntrDp91GksiKDy/zUySa31NHX/HATdenkcuoSYj7J
nnoAQD8oABIZDY5gz/bVsNLylBuWvZyMEtZ0jKluu5UFq9PH74v3SJ7RVkDWcnZ+NNxllhgS7aO3
ABXZlFNz43iACjBz/Kdo1jb8iakaFFfG9PnfC/0ZZBsHq88qfgVdpooJm1NN8ciQksZHrVn0Oz7K
3Aa+uDZfkpB5801TjreIdoHChtMHbc97bq6f83ft8QJWHWglKNmcdcn1sqkXFl8P9QFnAInX/TdK
JN7os/BDvEqmRlrrJiIbUmaz/8sTVCZh5N117eEGyY1T+6lfc3cp+63t3mZxt1/a2qFaaAV89ruI
FgHxQ+r1nvfo2jA+e9LOKJTPxIm7sFO/5kRvEa1hkaLlQM86/BD3xYttSeqvowuuucsd5KWobsRO
YVUq2gNmiJYz7luLOdTQ+Mi0i4TaOosJk/hAo8nbxmaQWDPx6448Tkjck07wcNrlc5d2F5RXnNGe
ZWXP8zENq/PFdK49+67xs6j3xFtTu0GR0VltqrGeEwWvrov5gOuVPs0Ot4L6DL/q+6MltKFzD4Wz
uIKWBU0ixCN8/JbgcdrI/dxaV7rlE0OnyHkPmF2KUMtjZ1vq2glIDscH1NqZRc49uV6obLqo8UTj
FrGQtNsuN8JGCd6kJbY2Y7/uUxImmcMHjCexKTL2aDHqnu0ucWJB77W5mqsCZRzXIsrv6ESuuWZY
tTZeyIrXZy0iE+dpET3zmJcyvGNGaT0e7pQBRB0bJzfqLtx5FIrN7RepvONgfE0iplcEAlejzaQr
OFDcfSJxkNSP1jxKF/EQoBkxwVr4BHds+EopDSCZeMsGKgu54UhwYGjSaxtCtIiM0oHVd9lWrR8P
56O7kE/zjA+R/AWpCt7KZVwvIhp+A0etJXv025IFxWc9rPlFfOcASNJvaSx41FLOliWtcgAFmz+7
qPvex7bn4t8uQx6Mg7ZWkufBIhKaywQid9+cz7lFXdn8knb46YXkuHfOYcq55m1ojmDngF1sX+92
dT5deNA8PdCDCC3VGiujPlaK3TYO5Z/PlYjWxdDI+aIE03LEXo9NeYQocpK5Y6jWAfeoPnO6qlVi
CGvdbFXVMhOzsW3lczxHRwSOZm9sfaHZRgQdGFVaqzK/wvyQNHMQNaINyXFu2kk16+HBqvCP6SOZ
ioXyaCtjV0xDckeKlKf1afY+kM/Pke0FdrNDPybcYr2QZ62ia6VebDSu53XhnmusbDMG+52e70RV
EE5tdfOaZySlEnJfYdYKpA10Ei8V4bQMMfnW6hkMoDF2inL1vjMGl9kX2dHF2E+xj2YOhhpFjkbm
aeWj7E0rdwViiL9dU8O+TZIcFmP+koqIBLjFcmbykaaqQ4HzUds90nyXHnQNRdp1xGJGbCsE1UZ1
0/8uhhzSPvFrrrsf0ZDSiKWRQpsoz8ViFnN3pylZATxSmXOxLxj6mH6d2v8/XxKo265BE4x+JJn1
1rAjM2Y/q6o/aGRS1i6N5vaLsNX++mzfz3jjwZMcjmIdSn9E5Xpufcy+5BIST5YT6SH/PPjR6Nr/
aU01b2Eyyoreu9gox3q9oc4TADMhK4S57fcPvoJeGvgsXItdNJwRlIhxpvRjkZK+8Lh/pj9h4EHn
6zYdurSB3w07ojrQMffi8jcAEJ4N+ScFVykl3hvrzp3/IcyO9/GgssNCM0ZnrGijC5Oqw8NBH9d1
l9TL+m+zjFJ5zy4v2KjQGcym5U8jSMc2ognBLoKT5THDIjx6PoHOl7PZYah2Jn42pLOfROiPy+to
2AEkh1Xx2Ofmlv5JDcejW0zRCi3b3KPthYk818JN+oX48DoI6/9a/samjS9bTXC1OM5NCQK8zeyP
P4S5Lovrnx0eijGvS2NXPrMoY2jZSxSCKeAK/eVyDvt632+a+Gf4p83MDjE2iVU6dAEdB9Yqj/1e
f+PirJrGr3Ecd7vnkIBvwH2UDNdB7cOeFKkDkzGD8bhHV0DBDp5rtjiOkfq9Yn0zdV4ZAMfdDKEK
E0wZqioZAufyAjDLt+/qxaJ/UEhn3WNDe1Aa3vmXc5Ex9RY2B/oVI1RpkdMIJZzwxwjUVqN1BG31
D3Jsa3JwQQ3Jt6gOweB6uEBRwU5J5YZzJg9OKHHRiSPb8Qw49M+YLTjF19PpipJ1O/N4i4Jk0ff1
wVQCXX0dMdskOH8TpEN7oMWD8IBpb09OTi72Xl6ssimju1N6g+rE3qkNAwPgDdlGDxcbpmHnFLjH
RdocT2x5t8PVR6OAcvyla6MaHCcMHPUgj3aQ3pF//nvH/Xu0GpYlRPsvwPg8w3ksUaWFCus3ZkKx
K/XlkYIuzTQMFd5Sij9XeT7Walu1jcY+7Qb5J7jGgP8PYtKjzRerZ/32DqvMV8JfgDCylGl7NbWf
j42foy5/heSZbo6/Z5g7S61Og6qfCOi8rnWz5/GEKfZoiPmUEm6485rkVJQGQBHtdo6gvbgJtW64
KMabrZ71tnMDVilM1aYKZYfWHqLl1JKPKzYFXRFElcETHeMalUeWe9LlwyX2GLFp8e/FZanKA75h
mHkzj3L1nNwPCsQj0XBwGnMNija1/cHJq+CpV7kJzLfJGnbWWLXqePLtu67ZiXWMHovAaRDXONvt
xm3HIr3va5mkdwKu4jpSEd+OKv69wXO5fpG8MzO3Ju6cE3nbYE/AY3i6fA6/goD5Ccbp8KfaQliV
vIYuamZNPxSXfjLAHuZXOrxDHXS7jI8qZOgvRC+gG6lTXDoqcbQ3gk523q5LQbnNCvuxWQ0xLsNb
nWunXQ+2pe3Z0Vm2oGQbWgSoRahPHFCiZ7cWx1lYyui3rUYlCZSw7HLviM4z/3am1noJ8n5hmVBS
E1Ral+vA+xwqKxoNnWhwNWYgntz2pea8dKjKMs+8MpCoFHZ1KkuQ6hi7RHIg5mUplpOodt8zx/cB
p7SgOhG6qwLn16VUs2ceW/y82zMiTOjHTbCp1PaMRFJ6r5dz+JCVqH5B6V5QymMZmVQCIyVRHCFJ
jd1U5Wzcr9UImn9B0+PwNicObWzK+ZYtFyk9J2f5NgT0E147T3IAepN1+sdAAlD2zHCAkXmC5vOd
HOzsgI6MFSqPG4e7c7eMqbrMCdISfBDMJzCABzPP7FDVQo3jQqEZ+3sXiGk8Vd7HTcP1xXtae1Dd
5PcQ9zOH6cfniqRnvGEun3fzlfAzpIL8WPjwGQc4UzbUxEmFPYAWCTcl2tFEclXP35wTJHUeTFNt
xY8WqhDcoIQ5XJALNDRlmJh/irdMGUcca01MIUHaVfMCjqnLZ5VhzbhCB2jGhmuv0xlH1BbcJrNY
IhPAvlZDJ/4eR3BXvyzI0asvyJzUtNbhUYpiD77SZWOV9uJLyMHgBW5vxgc89BMfQdKgWvfjMFnl
dKa/widFHnvuTXXU2qk15f49rpN7dS2zU0FVfaUcEhOfg6pyKZvuF3/P/O1JSVMgkwhlZ5I87FQu
UgyMspnPzYc6RpcpgZwsCdZSIc3YnzND0+NIcabwnSwU6JKr7RaB2hWNtuXD/bXAchVfBQVTpu49
fDQLrr8VdoklnoL5MpwlwuNc6wEKXLhPxYqtZq8pgeqmfPoa3nwOEXvWzgnFP3dHUP453SECNgRM
pti+rl5zGM+vY2OaL9LcKx14V4cs/TFwxGFP3kBIP3ZZpmvvzkXpNacORgteTP3jQMkqOozvOxKO
IYL485+3tHjaPlGL+jxfDIWxrVrC6+z/NHxAp7vmhJzluCCLPQEKYWfuHQTPaeWO0shh6U1eEwZH
Ugfv6TXk1CkEbgXZGek7Jq7icvH6pX5ISqw8kjHmaXdyvHJ74Key7Trr7FddgGAj8Jj0mt4IyZnP
EJUFbYYxyVadIVQKBrBeX6C7OJmjfJsqz2jRvYFphORkO1pBqViG/ihXB5mdBn7WLDGf4C8YsI3j
qa4KGhGDYTeWNRWEFOmhzwywiKfs19ZeWaXSJh95IapMyYaYzvHsWuZJkwoQncrHcg+oCcGOnIM6
q5DrkrReTsZ7RQ2QG/2QLW0Z94walMFafzZI1Vb5y3E3oushuNkzKdWFpWTmTWzsBJHDTc91YiKX
M5s0A28xjywpdJSCTy7/UGnp3eyL6DaNoGEMbBdtE323tFeb5xPMVrHdlNcrZaOxb41HVv8atVEv
nKn+IbyiYRL43Up7owMPOrpdjOAUxAhlvO5HfMYI0Rb0Z4Qn73ZWNScuMnyRRWYQYZUSd6dmKEw1
ZuzaeMi8wtOmnCyXursIbbNmvelsNNOCnaaNiE2O2e1Y1LRGS+GTs213CGkdAM4yGsdVxSkXjK2O
RGoqzBnGwUEGewpcfnIagS1dxBb++YM8iXWNezacdB6XP6htma9jgHbCn2Kt4SwmXGXII0RxWp80
7LV/Uh+TZkkm0OhZGfHa/ZMtNeW7SvjBIptj0J5ftD/lFi+cYuZo7L9y/1+v9BFINoLrDBQYvlCh
1rSKtgPnymLH1QMXLidOr/nHL69dqeN87S+LJjR/YcReVk6X5BEVBJP/exb91ljyg+D0+flmu/D+
stJXiZ5FsEMbbtY4I0SPIzkZ1W1AmnxVodyZ6MJZlaFeEwTseYKf7U1qyK1GagElGRwgk2jbwOAV
PO/6axWvt5kzoik05qDlVoNTGy6csGCG+6eThgsNkOEqZiNlEWET5hOONMX4gJ+rL/diIdoWaXiV
yi0Jw9eW4KWs8rNnpfaJn4OSTb21MgXJoyOfjHmje/xo2GkK5uE0QGC9MTPECw2LcaKY/2DsGF0I
k3UhbUwnSZ/EmVbi3yhfQVu2rBgtCnJkxkWzVSQHUEcI7zqmBiZb7ss23vSUzxsMltI2khREtTif
pQKtl/M/E4mSGcM807JwNKL2taE4Chb1bO5dKv9yJQz3BZ6a8RYxd1GzV+1FIpJMI1LoXb4o5syF
o6J0xapg1z3rPBrFEPnlMXGLTH8IQBDx/tm4PPmQEAYHsfTkFmjjljdc/GToGsvbpopJbs7mhVGj
0Ccb9X+pSYEWteONBwLIFWElAqArDC4KhgIvsq2kZ6MnMeSh1TwcsIpoLZlF6hU0CEleZKqvBTKF
mHP36sXPsH25bnlGmWHNd0zKI9Ui1MqAhnycTP4ldZUlnKkpW9+j5QZU+vFoaHz+kHl0aWdFQngq
pN2S2sIvPYHEzmI/i99GSSEPYJRg5zzy2ITHztMeZxJcehVNZFmIfOW7w04spHZ9pr/hboFnpY3g
j84Wi35KoURgsJYOzXXcuVwC6rJ12nVCF782cq39yIbny+Zxv1HSZUyZ5t6sUkn93crTDu+win44
ebCTTGY+3Ecq+MhTUgjGr9Cu0g95Klo+BvH1O1MRx4/Sls7PERRtelKzlhSPO7aiDIWIsyim/NDt
Y4BKi8KKuCpHdfq7Wlc4eV/Zd5R6gqVq3folqtj+9kS4wozHmQ9AXDg4qCljLSB45Ucew286IXz0
MHfrtwhOZLbGf+9Lq2TizaqW265GC10frtLqWXTps/Q7QLu4d/Ttbr9SiXtVmcMD+SK7p5NOrqNq
h6Kifo/0MdNFCLsadaWKq+y3wmS2ycn2MIsdL3hE9QCpgkAJlfJs+ZqJsCZKYwCkM+ufD94HO9bU
2SkKoB7oEt2DduLBDWoIjIlIZHNpNQysrKeBYx0ifR29PhATZ/Phq3Ctoq/NiGJIaOOgL1v09FfW
iWu4LGUColtJENFU4CbVIZx59OFlMavFp6ggDlfxTxvRFaknf8uIiV8Q4zoC9W4wS4uhlhgFEXJ7
a/A6t5nR6NnhQWTdMZcdSchS8WhKfcqO2e3WF4JOqDn9kGs8tgUgFFOE75jUIH1blzJgJnyWp25/
3Dt+HTIDZXv2AeSBGmMQS2+YDcLfE15ZW9cioNIijoACyNmJGUoTs1QHiT6g8/eQKhfl1E1XvAc7
6+x+hhzSSOjIYNrT/B2NqaoPatEAFyM08x+2MdZxWFgBSJMt7MGio4Z4MqiWXSXHhAxB340Uame/
QU8CiN3Qf6IyPcSurkRFwszGO/0aX3LuZVYYrIVSgrUv3WMUGFEz5yIBHHd2m07N3Ubz3AiekVD0
zf8hpHBXk8DSJ287QQVZrL1feC/KCiMx1Mq8s5mAGfnZOLItEzOBn6TQc9by/LtfKtvmoDwUltJM
hqERwuJlpLbdiGo3rPcqGKoHo/XWUSnGQllCdXT2vuLvnCz3MWPKamGngrnhrEJYoG+QG8tGxvR/
gW7e+XutDS0WeRWIKed8+39HkIYeWAP4+hqQB0ywHC9OXUa5jCGe8RiyW4+PuErLJCAnv71EPOas
vxNg/G6kNgTS1e4VqVMVLBYkpEHWKFF3Qmq3qIhxt6WOYJu4FhmTty26bzVsKkq/i+9rWeZLDinW
ThIVaR/hvXCgAGHUB9BDgGk3rW/9hxxYPegWyCGHDH31Pk0mFrVU3gRMfSoAMv7DEhC0fLIUoo7o
CbEoBhYwW84aX6qg8mLETIbmWZ7ejUqmqQ7sE5mj3nOz2RUGpCXJy317wlXD8DL1vjX4ds5UxiGW
5jetNmyQt4eA+sxV3EiLC8k2vUfHlHUfILC7ygQJ73zCvzQHZnR7bVcJc2KCm7Y5TIMU93386TX9
IcD8DJI2XudDLSDHq3S0UJYk2qR8vZL9S3fwji+vngwMGDA8FJ5lAkpVKX5pDHUWFGllnlOtJ6xq
p1XnO7N/olR8Ca3oX1xsp9kiZcgwgn8GRMhywefNnzD38Nh/oKwhYImjl+z5eJjmSMydHFD+wI9O
AoFaYRWSFSTaJY7Wy/WKL+Nb3Ue+pPZWVLkzlJj9roiSPwqMjRedm/wF3tBXjBfdvzpASEMhavrM
yloBkG8ARVBl8fOadrpdwzyLKPZISIpsCA==
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
