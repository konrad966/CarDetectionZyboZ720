-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jan 12 21:08:59 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/Mult_A6_B6/Mult_A6_B6_stub.vhdl
-- Design      : Mult_A6_B6
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mult_A6_B6 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 5 downto 0 );
    B : in STD_LOGIC_VECTOR ( 5 downto 0 );
    P : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end Mult_A6_B6;

architecture stub of Mult_A6_B6 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[5:0],B[5:0],P[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_14,Vivado 2018.2";
begin
end;
