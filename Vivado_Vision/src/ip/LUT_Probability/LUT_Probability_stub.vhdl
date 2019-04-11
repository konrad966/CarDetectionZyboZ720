-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jan 21 11:15:52 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/LUT_Probability/LUT_Probability_stub.vhdl
-- Design      : LUT_Probability
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LUT_Probability is
  Port ( 
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end LUT_Probability;

architecture stub of LUT_Probability is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a[5:0],spo[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dist_mem_gen_v8_0_12,Vivado 2018.2";
begin
end;
