--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: node_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 16 12:20:14 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm node -w -dir netgen/synthesis -ofmt vhdl -sim node.ngc node_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: node.ngc
-- Output file	: C:\Users\hanskrfl\Desktop\dmpro\fpga\netgen\synthesis\node_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: node
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity node is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    step : in STD_LOGIC := 'X'; 
    instr : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    n_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    e_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    w_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sr_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    state : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    n_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    e_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    w_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sr_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end node;

architecture Structure of node is
  signal n_in_7_IBUF_0 : STD_LOGIC; 
  signal n_in_6_IBUF_1 : STD_LOGIC; 
  signal n_in_5_IBUF_2 : STD_LOGIC; 
  signal n_in_4_IBUF_3 : STD_LOGIC; 
  signal n_in_3_IBUF_4 : STD_LOGIC; 
  signal n_in_2_IBUF_5 : STD_LOGIC; 
  signal n_in_1_IBUF_6 : STD_LOGIC; 
  signal n_in_0_IBUF_7 : STD_LOGIC; 
  signal s_in_7_IBUF_8 : STD_LOGIC; 
  signal s_in_6_IBUF_9 : STD_LOGIC; 
  signal s_in_5_IBUF_10 : STD_LOGIC; 
  signal s_in_4_IBUF_11 : STD_LOGIC; 
  signal s_in_3_IBUF_12 : STD_LOGIC; 
  signal s_in_2_IBUF_13 : STD_LOGIC; 
  signal s_in_1_IBUF_14 : STD_LOGIC; 
  signal s_in_0_IBUF_15 : STD_LOGIC; 
  signal e_in_7_IBUF_16 : STD_LOGIC; 
  signal e_in_6_IBUF_17 : STD_LOGIC; 
  signal e_in_5_IBUF_18 : STD_LOGIC; 
  signal e_in_4_IBUF_19 : STD_LOGIC; 
  signal e_in_3_IBUF_20 : STD_LOGIC; 
  signal e_in_2_IBUF_21 : STD_LOGIC; 
  signal e_in_1_IBUF_22 : STD_LOGIC; 
  signal e_in_0_IBUF_23 : STD_LOGIC; 
  signal w_in_7_IBUF_24 : STD_LOGIC; 
  signal w_in_6_IBUF_25 : STD_LOGIC; 
  signal w_in_5_IBUF_26 : STD_LOGIC; 
  signal w_in_4_IBUF_27 : STD_LOGIC; 
  signal w_in_3_IBUF_28 : STD_LOGIC; 
  signal w_in_2_IBUF_29 : STD_LOGIC; 
  signal w_in_1_IBUF_30 : STD_LOGIC; 
  signal w_in_0_IBUF_31 : STD_LOGIC; 
  signal clk_BUFGP_32 : STD_LOGIC; 
  signal reset_IBUF_33 : STD_LOGIC; 
  signal IO_tmp_data3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal IO_tmp_s : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal IO_tmp_e : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal IO_tmp_w : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal sr_alu_res : STD_LOGIC_VECTOR ( 1 downto 1 ); 
begin
  XST_GND : GND
    port map (
      G => sr_alu_res(1)
    );
  IO_tmp_e_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_7_IBUF_0,
      Q => IO_tmp_e(7)
    );
  IO_tmp_e_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_6_IBUF_1,
      Q => IO_tmp_e(6)
    );
  IO_tmp_e_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_5_IBUF_2,
      Q => IO_tmp_e(5)
    );
  IO_tmp_e_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_4_IBUF_3,
      Q => IO_tmp_e(4)
    );
  IO_tmp_e_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_3_IBUF_4,
      Q => IO_tmp_e(3)
    );
  IO_tmp_e_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_2_IBUF_5,
      Q => IO_tmp_e(2)
    );
  IO_tmp_e_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_1_IBUF_6,
      Q => IO_tmp_e(1)
    );
  IO_tmp_e_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => n_in_0_IBUF_7,
      Q => IO_tmp_e(0)
    );
  IO_tmp_s_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_7_IBUF_16,
      Q => IO_tmp_s(7)
    );
  IO_tmp_s_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_6_IBUF_17,
      Q => IO_tmp_s(6)
    );
  IO_tmp_s_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_5_IBUF_18,
      Q => IO_tmp_s(5)
    );
  IO_tmp_s_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_4_IBUF_19,
      Q => IO_tmp_s(4)
    );
  IO_tmp_s_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_3_IBUF_20,
      Q => IO_tmp_s(3)
    );
  IO_tmp_s_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_2_IBUF_21,
      Q => IO_tmp_s(2)
    );
  IO_tmp_s_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_1_IBUF_22,
      Q => IO_tmp_s(1)
    );
  IO_tmp_s_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => e_in_0_IBUF_23,
      Q => IO_tmp_s(0)
    );
  IO_tmp_w_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_7_IBUF_8,
      Q => IO_tmp_w(7)
    );
  IO_tmp_w_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_6_IBUF_9,
      Q => IO_tmp_w(6)
    );
  IO_tmp_w_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_5_IBUF_10,
      Q => IO_tmp_w(5)
    );
  IO_tmp_w_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_4_IBUF_11,
      Q => IO_tmp_w(4)
    );
  IO_tmp_w_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_3_IBUF_12,
      Q => IO_tmp_w(3)
    );
  IO_tmp_w_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_2_IBUF_13,
      Q => IO_tmp_w(2)
    );
  IO_tmp_w_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_1_IBUF_14,
      Q => IO_tmp_w(1)
    );
  IO_tmp_w_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => s_in_0_IBUF_15,
      Q => IO_tmp_w(0)
    );
  IO_tmp_data3_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_7_IBUF_24,
      Q => IO_tmp_data3(7)
    );
  IO_tmp_data3_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_6_IBUF_25,
      Q => IO_tmp_data3(6)
    );
  IO_tmp_data3_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_5_IBUF_26,
      Q => IO_tmp_data3(5)
    );
  IO_tmp_data3_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_4_IBUF_27,
      Q => IO_tmp_data3(4)
    );
  IO_tmp_data3_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_3_IBUF_28,
      Q => IO_tmp_data3(3)
    );
  IO_tmp_data3_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_2_IBUF_29,
      Q => IO_tmp_data3(2)
    );
  IO_tmp_data3_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_1_IBUF_30,
      Q => IO_tmp_data3(1)
    );
  IO_tmp_data3_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_32,
      CLR => reset_IBUF_33,
      D => w_in_0_IBUF_31,
      Q => IO_tmp_data3(0)
    );
  n_in_7_IBUF : IBUF
    port map (
      I => n_in(7),
      O => n_in_7_IBUF_0
    );
  n_in_6_IBUF : IBUF
    port map (
      I => n_in(6),
      O => n_in_6_IBUF_1
    );
  n_in_5_IBUF : IBUF
    port map (
      I => n_in(5),
      O => n_in_5_IBUF_2
    );
  n_in_4_IBUF : IBUF
    port map (
      I => n_in(4),
      O => n_in_4_IBUF_3
    );
  n_in_3_IBUF : IBUF
    port map (
      I => n_in(3),
      O => n_in_3_IBUF_4
    );
  n_in_2_IBUF : IBUF
    port map (
      I => n_in(2),
      O => n_in_2_IBUF_5
    );
  n_in_1_IBUF : IBUF
    port map (
      I => n_in(1),
      O => n_in_1_IBUF_6
    );
  n_in_0_IBUF : IBUF
    port map (
      I => n_in(0),
      O => n_in_0_IBUF_7
    );
  s_in_7_IBUF : IBUF
    port map (
      I => s_in(7),
      O => s_in_7_IBUF_8
    );
  s_in_6_IBUF : IBUF
    port map (
      I => s_in(6),
      O => s_in_6_IBUF_9
    );
  s_in_5_IBUF : IBUF
    port map (
      I => s_in(5),
      O => s_in_5_IBUF_10
    );
  s_in_4_IBUF : IBUF
    port map (
      I => s_in(4),
      O => s_in_4_IBUF_11
    );
  s_in_3_IBUF : IBUF
    port map (
      I => s_in(3),
      O => s_in_3_IBUF_12
    );
  s_in_2_IBUF : IBUF
    port map (
      I => s_in(2),
      O => s_in_2_IBUF_13
    );
  s_in_1_IBUF : IBUF
    port map (
      I => s_in(1),
      O => s_in_1_IBUF_14
    );
  s_in_0_IBUF : IBUF
    port map (
      I => s_in(0),
      O => s_in_0_IBUF_15
    );
  e_in_7_IBUF : IBUF
    port map (
      I => e_in(7),
      O => e_in_7_IBUF_16
    );
  e_in_6_IBUF : IBUF
    port map (
      I => e_in(6),
      O => e_in_6_IBUF_17
    );
  e_in_5_IBUF : IBUF
    port map (
      I => e_in(5),
      O => e_in_5_IBUF_18
    );
  e_in_4_IBUF : IBUF
    port map (
      I => e_in(4),
      O => e_in_4_IBUF_19
    );
  e_in_3_IBUF : IBUF
    port map (
      I => e_in(3),
      O => e_in_3_IBUF_20
    );
  e_in_2_IBUF : IBUF
    port map (
      I => e_in(2),
      O => e_in_2_IBUF_21
    );
  e_in_1_IBUF : IBUF
    port map (
      I => e_in(1),
      O => e_in_1_IBUF_22
    );
  e_in_0_IBUF : IBUF
    port map (
      I => e_in(0),
      O => e_in_0_IBUF_23
    );
  w_in_7_IBUF : IBUF
    port map (
      I => w_in(7),
      O => w_in_7_IBUF_24
    );
  w_in_6_IBUF : IBUF
    port map (
      I => w_in(6),
      O => w_in_6_IBUF_25
    );
  w_in_5_IBUF : IBUF
    port map (
      I => w_in(5),
      O => w_in_5_IBUF_26
    );
  w_in_4_IBUF : IBUF
    port map (
      I => w_in(4),
      O => w_in_4_IBUF_27
    );
  w_in_3_IBUF : IBUF
    port map (
      I => w_in(3),
      O => w_in_3_IBUF_28
    );
  w_in_2_IBUF : IBUF
    port map (
      I => w_in(2),
      O => w_in_2_IBUF_29
    );
  w_in_1_IBUF : IBUF
    port map (
      I => w_in(1),
      O => w_in_1_IBUF_30
    );
  w_in_0_IBUF : IBUF
    port map (
      I => w_in(0),
      O => w_in_0_IBUF_31
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_33
    );
  state_1_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => state(1)
    );
  state_0_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => state(0)
    );
  n_out_7_OBUF : OBUF
    port map (
      I => IO_tmp_data3(7),
      O => n_out(7)
    );
  n_out_6_OBUF : OBUF
    port map (
      I => IO_tmp_data3(6),
      O => n_out(6)
    );
  n_out_5_OBUF : OBUF
    port map (
      I => IO_tmp_data3(5),
      O => n_out(5)
    );
  n_out_4_OBUF : OBUF
    port map (
      I => IO_tmp_data3(4),
      O => n_out(4)
    );
  n_out_3_OBUF : OBUF
    port map (
      I => IO_tmp_data3(3),
      O => n_out(3)
    );
  n_out_2_OBUF : OBUF
    port map (
      I => IO_tmp_data3(2),
      O => n_out(2)
    );
  n_out_1_OBUF : OBUF
    port map (
      I => IO_tmp_data3(1),
      O => n_out(1)
    );
  n_out_0_OBUF : OBUF
    port map (
      I => IO_tmp_data3(0),
      O => n_out(0)
    );
  s_out_7_OBUF : OBUF
    port map (
      I => IO_tmp_s(7),
      O => s_out(7)
    );
  s_out_6_OBUF : OBUF
    port map (
      I => IO_tmp_s(6),
      O => s_out(6)
    );
  s_out_5_OBUF : OBUF
    port map (
      I => IO_tmp_s(5),
      O => s_out(5)
    );
  s_out_4_OBUF : OBUF
    port map (
      I => IO_tmp_s(4),
      O => s_out(4)
    );
  s_out_3_OBUF : OBUF
    port map (
      I => IO_tmp_s(3),
      O => s_out(3)
    );
  s_out_2_OBUF : OBUF
    port map (
      I => IO_tmp_s(2),
      O => s_out(2)
    );
  s_out_1_OBUF : OBUF
    port map (
      I => IO_tmp_s(1),
      O => s_out(1)
    );
  s_out_0_OBUF : OBUF
    port map (
      I => IO_tmp_s(0),
      O => s_out(0)
    );
  e_out_7_OBUF : OBUF
    port map (
      I => IO_tmp_e(7),
      O => e_out(7)
    );
  e_out_6_OBUF : OBUF
    port map (
      I => IO_tmp_e(6),
      O => e_out(6)
    );
  e_out_5_OBUF : OBUF
    port map (
      I => IO_tmp_e(5),
      O => e_out(5)
    );
  e_out_4_OBUF : OBUF
    port map (
      I => IO_tmp_e(4),
      O => e_out(4)
    );
  e_out_3_OBUF : OBUF
    port map (
      I => IO_tmp_e(3),
      O => e_out(3)
    );
  e_out_2_OBUF : OBUF
    port map (
      I => IO_tmp_e(2),
      O => e_out(2)
    );
  e_out_1_OBUF : OBUF
    port map (
      I => IO_tmp_e(1),
      O => e_out(1)
    );
  e_out_0_OBUF : OBUF
    port map (
      I => IO_tmp_e(0),
      O => e_out(0)
    );
  w_out_7_OBUF : OBUF
    port map (
      I => IO_tmp_w(7),
      O => w_out(7)
    );
  w_out_6_OBUF : OBUF
    port map (
      I => IO_tmp_w(6),
      O => w_out(6)
    );
  w_out_5_OBUF : OBUF
    port map (
      I => IO_tmp_w(5),
      O => w_out(5)
    );
  w_out_4_OBUF : OBUF
    port map (
      I => IO_tmp_w(4),
      O => w_out(4)
    );
  w_out_3_OBUF : OBUF
    port map (
      I => IO_tmp_w(3),
      O => w_out(3)
    );
  w_out_2_OBUF : OBUF
    port map (
      I => IO_tmp_w(2),
      O => w_out(2)
    );
  w_out_1_OBUF : OBUF
    port map (
      I => IO_tmp_w(1),
      O => w_out(1)
    );
  w_out_0_OBUF : OBUF
    port map (
      I => IO_tmp_w(0),
      O => w_out(0)
    );
  sr_out_7_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(7)
    );
  sr_out_6_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(6)
    );
  sr_out_5_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(5)
    );
  sr_out_4_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(4)
    );
  sr_out_3_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(3)
    );
  sr_out_2_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(2)
    );
  sr_out_1_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(1)
    );
  sr_out_0_OBUF : OBUF
    port map (
      I => sr_alu_res(1),
      O => sr_out(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_32
    );

end Structure;

