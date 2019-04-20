// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 23:09:10 2019
// Host        : Dell running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/subtract_unsigned_8u_8u_9s/subtract_unsigned_8u_8u_9s_sim_netlist.v
// Design      : subtract_unsigned_8u_8u_9s
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtract_unsigned_8u_8u_9s,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module subtract_unsigned_8u_8u_9s
   (A,
    B,
    CLK,
    CE,
    SCLR,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [8:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "9" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [8:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CE;
  wire CLK;
  wire [8:0]S;
  wire SCLR;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "8" *) 
  (* c_add_mode = "1" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "00000000" *) 
  (* c_b_width = "8" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "9" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtract_unsigned_8u_8u_9s_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hJWmzMiRPK+FC/iBR1HqodEFLfhtbiRiXLD3VRdYZLWECX2evNvt8dEuObSLE5JIMMf+Udb0iy8c
Yye9DVT1oWqSwXwvx/QRzHn2dsEbSOV6SdBNQtSBOdZug128HsBVTZlf59sQcAtZhAXDK7LnkpG6
CCKDAShstI9ICV6mK6FbF6pCfnZ5F6+2E7I4EyiDiXgqh41BOfcjbvmr0xEpKwql8cpSdSIP2uQc
hmQxvZ6G7EBBnpfquSpJHV1Ro5ZlDJ0+ImG7TNhRuLFRb6O7iNCN3T45VyLaxfVubXyWxQa3jusq
PdOaCPf0GMxinAbVo0Y+XJkof84blpADLdujPw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oJt7gN3QrEnAbsairBsndrMbMmKX18OAlpujZiN2QyVWXvmAVJpM98UjBnyk/w9y2rXV7XEmjuoZ
xNZ0pwu+AIA2/O35itzY2dB2vibU/e/++XoqkQnFt7K1lWe1uraSCxZV2M2WNftKoEcXA4S9/g4T
Ln0eysaob1Ywd9r3uZAlaNUMj9Jej/hAuYss2SgwTQpmdAbT29GXtVUxiJJE+gYstuH1X1zo4tKq
EOvGzpLiQg33DNbVWp4ooqB6wcawh6FE54NOJsSx6XxzAPD2uUjQNDY5Sq/oCYy2oia3FjBOMvCE
t6Z94krDruNH9jnFJluVHKKhuMFZjf1LCf9RcA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9360)
`pragma protect data_block
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
oNTVBR0Kw/Ap+HpL
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
