-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jan 12 21:13:58 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Add_A21_B21/Add_A21_B21_stub.vhdl
-- Design      : Add_A21_B21
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Add_A21_B21 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 20 downto 0 );
    B : in STD_LOGIC_VECTOR ( 20 downto 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );

end Add_A21_B21;

architecture stub of Add_A21_B21 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[20:0],B[20:0],CLK,S[20:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.2";
begin
end;
