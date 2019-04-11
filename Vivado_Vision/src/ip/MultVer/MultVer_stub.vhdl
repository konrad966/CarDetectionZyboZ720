-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jan 12 21:02:25 2019
-- Host        : Dell running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/PracaInz/DetectionSystem/DetectionSystem.srcs/sources_1/ip/MultVer/MultVer_stub.vhdl
-- Design      : MultVer
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MultVer is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 8 downto 0 );
    B : in STD_LOGIC_VECTOR ( 6 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end MultVer;

architecture stub of MultVer is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[8:0],B[6:0],P[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_14,Vivado 2018.2";
begin
end;
