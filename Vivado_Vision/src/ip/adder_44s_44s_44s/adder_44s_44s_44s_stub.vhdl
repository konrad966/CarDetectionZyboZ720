-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Apr 12 22:57:03 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/DDC_Repo/CarDetectionZyboZ720/Vivado_Vision/src/ip/adder_44s_44s_44s/adder_44s_44s_44s_stub.vhdl
-- Design      : adder_44s_44s_44s
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_44s_44s_44s is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 43 downto 0 );
    B : in STD_LOGIC_VECTOR ( 43 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 43 downto 0 )
  );

end adder_44s_44s_44s;

architecture stub of adder_44s_44s_44s is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[43:0],B[43:0],CLK,SCLR,S[43:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.3";
begin
end;
