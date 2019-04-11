-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jan 12 19:21:35 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/PracaInz/image_in_ROI/image_in_ROI.srcs/sources_1/ip/Add1_A11/Add1_A11_stub.vhdl
-- Design      : Add1_A11
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Add1_A11 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 10 downto 0 );
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end Add1_A11;

architecture stub of Add1_A11 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[10:0],CE,S[10:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.2";
begin
end;
