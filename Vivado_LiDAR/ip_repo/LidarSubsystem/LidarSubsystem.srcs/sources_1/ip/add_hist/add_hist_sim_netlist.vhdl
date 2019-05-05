-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed May  1 23:58:33 2019
-- Host        : LAPTOP-TNDE04NQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top add_hist -prefix
--               add_hist_ add_num_points_sim_netlist.vhdl
-- Design      : add_num_points
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
V/pFqCIrJ3fHlh1keiEjCBOORW4hRBh7TSvRXOCX9nJtLzQaTWqIm4oj1yOrolVRfF8Lp2PaR8xR
jzaJXaPolU781cBNj3zOF3zBAcKsA7qYpyd/vvi0SmdpNrQKgy0vgDX2mpFi0mBU76JnnN3G8MWo
NJb09glyL0BH9vw7GY9i2ZTxGMg2PXXoJhYI39zKK2TbuMOX87/eIN/g/NJZ9RHN1mzTg+7U0Oiu
BtzdFFUjrXMRrwGmMH9DQ0N9TSpUpEvjSil1OHiHC6FWzR7dy0CEZJVaYyLauW8empnrtpfmwxWb
iEZL6Ha/+1QnlfjTJO0d8paEc/RJqc25arD/oA==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
0LM4z96baYc8W8fs37iQ5V9Og60vl2uG/jmCVGNmehmgZnDv058GlXkeIeOMBcvpPuY3RqCBJdFG
sb3imjIUOmKuDS0cSQey9TZCn1o+HEs/3KLosa8jk+wT7KmjZ+GSQaR1bjZUJ6Eim92D34eLInd1
ZVLbwHSxkqZOUjIce0MwfFqHJPCJjvfsfuJE+Je5Het6YiP+QKc2yba/MvoGIJjAZfahjJ5U4aCy
106KN5V40fLRUwt/emIy09E5ptWiGz5EklJIlkVhsm2wBRgl0LB1JcklSOvYYExmNVxJsnwbl0YX
7by1rP+MUgDHc5QOis0/PqWzoQE+T3idYYkrcA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14192)
`protect data_block
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
jo1dmQuf2cDY0GG6xl3kHKYw0iI9nS/xxQ==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_hist_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of add_hist_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of add_hist_c_addsub_v12_0_12 : entity is 11;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of add_hist_c_addsub_v12_0_12 : entity is "000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of add_hist_c_addsub_v12_0_12 : entity is 12;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of add_hist_c_addsub_v12_0_12 : entity is 12;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of add_hist_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of add_hist_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of add_hist_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of add_hist_c_addsub_v12_0_12 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_hist_c_addsub_v12_0_12 : entity is "yes";
end add_hist_c_addsub_v12_0_12;

architecture STRUCTURE of add_hist_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_ADD_MODE of xst_addsub : label is 0;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_A_TYPE of xst_addsub : label is 1;
  attribute C_A_WIDTH of xst_addsub : label is 11;
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_BYPASS_LOW of xst_addsub : label is 0;
  attribute C_B_CONSTANT of xst_addsub : label is 0;
  attribute C_B_TYPE of xst_addsub : label is 1;
  attribute C_B_VALUE of xst_addsub : label is "000000000000";
  attribute C_B_WIDTH of xst_addsub : label is 12;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_BYPASS of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 1;
  attribute C_HAS_C_IN of xst_addsub : label is 0;
  attribute C_HAS_C_OUT of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 0;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 0;
  attribute C_IMPLEMENTATION of xst_addsub : label is 0;
  attribute C_LATENCY of xst_addsub : label is 0;
  attribute C_OUT_WIDTH of xst_addsub : label is 12;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_SINIT_VAL of xst_addsub : label is "0";
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "zynq";
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.add_hist_c_addsub_v12_0_12_viv
     port map (
      A(10 downto 0) => A(10 downto 0),
      ADD => '0',
      B(11 downto 0) => B(11 downto 0),
      BYPASS => '0',
      CE => '0',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(11 downto 0) => S(11 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity add_hist is
  port (
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    B : in STD_LOGIC_VECTOR ( 11 downto 0 );
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of add_hist : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of add_hist : entity is "add_num_points,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of add_hist : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of add_hist : entity is "c_addsub_v12_0_12,Vivado 2018.2";
end add_hist;

architecture STRUCTURE of add_hist is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of U0 : label is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 11;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of U0 : label is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of U0 : label is 0;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "000000000000";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 12;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 1;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of U0 : label is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 0;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of U0 : label is 12;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CE : signal is "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CE : signal is "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of B : signal is "xilinx.com:signal:data:1.0 b_intf DATA";
  attribute x_interface_parameter of B : signal is "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef";
begin
U0: entity work.add_hist_c_addsub_v12_0_12
     port map (
      A(10 downto 0) => A(10 downto 0),
      ADD => '1',
      B(11 downto 0) => B(11 downto 0),
      BYPASS => '0',
      CE => '0',
      CLK => '0',
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(11 downto 0) => S(11 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
