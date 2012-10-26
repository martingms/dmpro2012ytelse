--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: node_synthesis.vhd
-- /___/   /\     Timestamp: Fri Oct 26 11:00:23 2012
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
    state : out STD_LOGIC; 
    instr : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    n_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    e_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    w_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sr_in : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    n_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    s_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    e_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    w_out : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sr_out : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end node;

architecture Structure of node is
  signal instr_21_IBUF_0 : STD_LOGIC; 
  signal instr_20_IBUF_1 : STD_LOGIC; 
  signal instr_19_IBUF_2 : STD_LOGIC; 
  signal instr_18_IBUF_3 : STD_LOGIC; 
  signal instr_17_IBUF_4 : STD_LOGIC; 
  signal instr_16_IBUF_5 : STD_LOGIC; 
  signal instr_15_IBUF_6 : STD_LOGIC; 
  signal instr_23_IBUF_7 : STD_LOGIC; 
  signal instr_22_IBUF_8 : STD_LOGIC; 
  signal instr_14_IBUF_9 : STD_LOGIC; 
  signal instr_13_IBUF_10 : STD_LOGIC; 
  signal instr_12_IBUF_11 : STD_LOGIC; 
  signal instr_11_IBUF_12 : STD_LOGIC; 
  signal instr_10_IBUF_13 : STD_LOGIC; 
  signal instr_9_IBUF_14 : STD_LOGIC; 
  signal instr_8_IBUF_15 : STD_LOGIC; 
  signal instr_7_IBUF_16 : STD_LOGIC; 
  signal instr_6_IBUF_17 : STD_LOGIC; 
  signal instr_5_IBUF_18 : STD_LOGIC; 
  signal instr_4_IBUF_19 : STD_LOGIC; 
  signal instr_3_IBUF_20 : STD_LOGIC; 
  signal instr_2_IBUF_21 : STD_LOGIC; 
  signal instr_1_IBUF_22 : STD_LOGIC; 
  signal instr_0_IBUF_23 : STD_LOGIC; 
  signal n_in_7_IBUF_24 : STD_LOGIC; 
  signal n_in_6_IBUF_25 : STD_LOGIC; 
  signal n_in_5_IBUF_26 : STD_LOGIC; 
  signal n_in_4_IBUF_27 : STD_LOGIC; 
  signal n_in_3_IBUF_28 : STD_LOGIC; 
  signal n_in_2_IBUF_29 : STD_LOGIC; 
  signal n_in_1_IBUF_30 : STD_LOGIC; 
  signal n_in_0_IBUF_31 : STD_LOGIC; 
  signal s_in_7_IBUF_32 : STD_LOGIC; 
  signal s_in_6_IBUF_33 : STD_LOGIC; 
  signal s_in_5_IBUF_34 : STD_LOGIC; 
  signal s_in_4_IBUF_35 : STD_LOGIC; 
  signal s_in_3_IBUF_36 : STD_LOGIC; 
  signal s_in_2_IBUF_37 : STD_LOGIC; 
  signal s_in_1_IBUF_38 : STD_LOGIC; 
  signal s_in_0_IBUF_39 : STD_LOGIC; 
  signal e_in_7_IBUF_40 : STD_LOGIC; 
  signal e_in_6_IBUF_41 : STD_LOGIC; 
  signal e_in_5_IBUF_42 : STD_LOGIC; 
  signal e_in_4_IBUF_43 : STD_LOGIC; 
  signal e_in_3_IBUF_44 : STD_LOGIC; 
  signal e_in_2_IBUF_45 : STD_LOGIC; 
  signal e_in_1_IBUF_46 : STD_LOGIC; 
  signal e_in_0_IBUF_47 : STD_LOGIC; 
  signal w_in_7_IBUF_48 : STD_LOGIC; 
  signal w_in_6_IBUF_49 : STD_LOGIC; 
  signal w_in_5_IBUF_50 : STD_LOGIC; 
  signal w_in_4_IBUF_51 : STD_LOGIC; 
  signal w_in_3_IBUF_52 : STD_LOGIC; 
  signal w_in_2_IBUF_53 : STD_LOGIC; 
  signal w_in_1_IBUF_54 : STD_LOGIC; 
  signal w_in_0_IBUF_55 : STD_LOGIC; 
  signal sr_in_7_IBUF_56 : STD_LOGIC; 
  signal sr_in_6_IBUF_57 : STD_LOGIC; 
  signal sr_in_5_IBUF_58 : STD_LOGIC; 
  signal sr_in_4_IBUF_59 : STD_LOGIC; 
  signal sr_in_3_IBUF_60 : STD_LOGIC; 
  signal sr_in_2_IBUF_61 : STD_LOGIC; 
  signal sr_in_1_IBUF_62 : STD_LOGIC; 
  signal sr_in_0_IBUF_63 : STD_LOGIC; 
  signal clk_BUFGP_64 : STD_LOGIC; 
  signal reset_IBUF_65 : STD_LOGIC; 
  signal step_IBUF_66 : STD_LOGIC; 
  signal s_out_0_OBUF_67 : STD_LOGIC; 
  signal ST_R_state_out_92 : STD_LOGIC; 
  signal ctrl_set_state : STD_LOGIC; 
  signal ctrl_s_swap : STD_LOGIC; 
  signal CTRL_enable_mask_OR_1_o : STD_LOGIC; 
  signal REGS_N67 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_113 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_114 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_115 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_116 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_117 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_118 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_119 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_120 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f71 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_122 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_123 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_125 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_126 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f72 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_128 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_129 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_131 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_132 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f73 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_134 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_135 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_137 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_138 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f74 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_140 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_141 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_143 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_144 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f75 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_146 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_147 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_149 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_150 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f76 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_152 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_153 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_155 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_156 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f77 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_158 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_159 : STD_LOGIC; 
  signal REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_161 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_162 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_163 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_164 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_165 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_166 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_167 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_168 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_169 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_171 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_172 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_173 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_174 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_176 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_177 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_178 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_179 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_181 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_182 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_183 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_184 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_186 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_187 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_188 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_189 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_191 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_192 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_193 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_194 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_196 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_197 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_198 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_199 : STD_LOGIC; 
  signal REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77 : STD_LOGIC; 
  signal REGS_n0624_inv : STD_LOGIC; 
  signal REGS_n0602_inv_202 : STD_LOGIC; 
  signal REGS_n0646_inv_203 : STD_LOGIC; 
  signal REGS_n0580_inv_204 : STD_LOGIC; 
  signal REGS_n0558_inv_205 : STD_LOGIC; 
  signal REGS_n0514_inv_206 : STD_LOGIC; 
  signal REGS_n0492_inv_207 : STD_LOGIC; 
  signal REGS_n0536_inv_208 : STD_LOGIC; 
  signal REGS_n0448_inv_209 : STD_LOGIC; 
  signal REGS_n0426_inv_210 : STD_LOGIC; 
  signal REGS_n0470_inv_211 : STD_LOGIC; 
  signal REGS_n0382_inv_212 : STD_LOGIC; 
  signal REGS_n0360_inv_213 : STD_LOGIC; 
  signal REGS_n0404_inv_214 : STD_LOGIC; 
  signal REGS_n0338_inv_215 : STD_LOGIC; 
  signal REGS_n0316_inv_216 : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_0_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_0_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_0_Q : STD_LOGIC; 
  signal REGS_adr0_3_Decoder_70_OUT_0_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_1_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_2_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_3_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_4_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_5_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_6_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_7_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_8_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_9_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_10_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_11_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_12_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_13_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_14_Q : STD_LOGIC; 
  signal REGS_adr3_3_Decoder_52_OUT_15_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_1_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_2_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_3_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_4_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_5_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_6_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_7_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_0_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_1_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_2_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_3_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_4_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_5_Q : STD_LOGIC; 
  signal REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_6_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_8_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_9_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_10_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_11_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_12_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_13_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_14_Q : STD_LOGIC; 
  signal REGS_adr2_3_Decoder_35_OUT_15_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_1_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_2_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_3_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_4_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_5_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_6_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_7_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_8_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_9_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_10_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_11_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_12_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_13_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_14_Q : STD_LOGIC; 
  signal REGS_adr1_3_Decoder_18_OUT_15_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q : STD_LOGIC; 
  signal REGS_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q : STD_LOGIC; 
  signal S_R_n0020_inv : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_0_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_1_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_2_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_3_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_4_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_5_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_6_Q : STD_LOGIC; 
  signal S_R_tmp_s_in_7_s_in_7_mux_3_OUT_7_Q : STD_LOGIC; 
  signal AUL_N8 : STD_LOGIC; 
  signal AUL_op1_7_op2_7_LessThan_4_o1 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal AUL_Mmux_res71 : STD_LOGIC; 
  signal AUL_Mmux_res711_592 : STD_LOGIC; 
  signal AUL_Mmux_res712_593 : STD_LOGIC; 
  signal AUL_Mmux_res714 : STD_LOGIC; 
  signal AUL_Mmux_res715_595 : STD_LOGIC; 
  signal AUL_Mmux_res716_596 : STD_LOGIC; 
  signal AUL_Mmux_res717_597 : STD_LOGIC; 
  signal AUL_Mmux_res718_598 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N143 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N149 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N163 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N194 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N212 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N230 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N233 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N236 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N239 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N242 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N245 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N248 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N251 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N254 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N257 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N260 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N263 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N266 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N269 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N278 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N281 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N284 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N287 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N290 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N293 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N296 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N299 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N302 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N305 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N308 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N311 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N314 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N317 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N320 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N323 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N329 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N332 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N341 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N344 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N347 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N350 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N353 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N356 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N359 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N362 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N365 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N368 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N374 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N377 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N380 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N383 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N386 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N389 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N392 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N395 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N398 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N401 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N404 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N407 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N410 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N413 : STD_LOGIC; 
  signal N415 : STD_LOGIC; 
  signal N416 : STD_LOGIC; 
  signal N418 : STD_LOGIC; 
  signal N419 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N422 : STD_LOGIC; 
  signal N424 : STD_LOGIC; 
  signal N425 : STD_LOGIC; 
  signal N427 : STD_LOGIC; 
  signal N428 : STD_LOGIC; 
  signal N430 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal N433 : STD_LOGIC; 
  signal N434 : STD_LOGIC; 
  signal N436 : STD_LOGIC; 
  signal N437 : STD_LOGIC; 
  signal N439 : STD_LOGIC; 
  signal N440 : STD_LOGIC; 
  signal N442 : STD_LOGIC; 
  signal N443 : STD_LOGIC; 
  signal N445 : STD_LOGIC; 
  signal N446 : STD_LOGIC; 
  signal N448 : STD_LOGIC; 
  signal N449 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N452 : STD_LOGIC; 
  signal N454 : STD_LOGIC; 
  signal N455 : STD_LOGIC; 
  signal N457 : STD_LOGIC; 
  signal N458 : STD_LOGIC; 
  signal N460 : STD_LOGIC; 
  signal N461 : STD_LOGIC; 
  signal N463 : STD_LOGIC; 
  signal N464 : STD_LOGIC; 
  signal N466 : STD_LOGIC; 
  signal N467 : STD_LOGIC; 
  signal N469 : STD_LOGIC; 
  signal N470 : STD_LOGIC; 
  signal N472 : STD_LOGIC; 
  signal N473 : STD_LOGIC; 
  signal N475 : STD_LOGIC; 
  signal N477 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal CTRL_enable_mask_OR_1_o1_980 : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal reg_data0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data1_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal S_R_tmp_s_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ctrl_reg_write : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal alu_res : STD_LOGIC_VECTOR ( 6 downto 1 ); 
  signal alu_op2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_15 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_9 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_11 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal REGS_REGS_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal S_R_tmp_s_in : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal AUL_Mmux_res1_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal AUL_Mmux_res1_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal AUL_Mmux_res1_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => s_out_0_OBUF_67
    );
  ST_R_state_out : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => ctrl_set_state,
      CLR => reset_IBUF_65,
      D => reg_data0(0),
      Q => ST_R_state_out_92
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(0),
      I3 => REGS_REGS_15(0),
      I4 => REGS_REGS_13(0),
      I5 => REGS_REGS_12(0),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_113
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(0),
      I3 => REGS_REGS_11(0),
      I4 => REGS_REGS_9(0),
      I5 => REGS_REGS_8(0),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_114
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_114,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_113,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_115
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(0),
      I3 => REGS_REGS_7(0),
      I4 => REGS_REGS_5(0),
      I5 => REGS_REGS_4(0),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_116
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(0),
      I3 => REGS_REGS_3(0),
      I4 => REGS_REGS_1(0),
      I5 => REGS_REGS_0(0),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_117
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_117,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_116,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_118
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_118,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_115,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_0_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(1),
      I3 => REGS_REGS_15(1),
      I4 => REGS_REGS_13(1),
      I5 => REGS_REGS_12(1),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_119
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(1),
      I3 => REGS_REGS_11(1),
      I4 => REGS_REGS_9(1),
      I5 => REGS_REGS_8(1),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_120
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_0 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_120,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_119,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f71
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(1),
      I3 => REGS_REGS_7(1),
      I4 => REGS_REGS_5(1),
      I5 => REGS_REGS_4(1),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_122
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(1),
      I3 => REGS_REGS_3(1),
      I4 => REGS_REGS_1(1),
      I5 => REGS_REGS_0(1),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_123
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_123,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_122,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_0 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f71,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_1_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(2),
      I3 => REGS_REGS_15(2),
      I4 => REGS_REGS_13(2),
      I5 => REGS_REGS_12(2),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_125
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(2),
      I3 => REGS_REGS_11(2),
      I4 => REGS_REGS_9(2),
      I5 => REGS_REGS_8(2),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_126
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_1 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_126,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_125,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f72
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(2),
      I3 => REGS_REGS_7(2),
      I4 => REGS_REGS_5(2),
      I5 => REGS_REGS_4(2),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_128
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(2),
      I3 => REGS_REGS_3(2),
      I4 => REGS_REGS_1(2),
      I5 => REGS_REGS_0(2),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_129
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_129,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_128,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_1 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f72,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_2_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(3),
      I3 => REGS_REGS_15(3),
      I4 => REGS_REGS_13(3),
      I5 => REGS_REGS_12(3),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_131
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(3),
      I3 => REGS_REGS_11(3),
      I4 => REGS_REGS_9(3),
      I5 => REGS_REGS_8(3),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_132
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_2 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_132,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_131,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f73
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(3),
      I3 => REGS_REGS_7(3),
      I4 => REGS_REGS_5(3),
      I5 => REGS_REGS_4(3),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_134
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(3),
      I3 => REGS_REGS_3(3),
      I4 => REGS_REGS_1(3),
      I5 => REGS_REGS_0(3),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_135
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_2 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_135,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_134,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_2 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f73,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_3_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(4),
      I3 => REGS_REGS_15(4),
      I4 => REGS_REGS_13(4),
      I5 => REGS_REGS_12(4),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_137
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(4),
      I3 => REGS_REGS_11(4),
      I4 => REGS_REGS_9(4),
      I5 => REGS_REGS_8(4),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_138
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_3 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_138,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_137,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f74
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(4),
      I3 => REGS_REGS_7(4),
      I4 => REGS_REGS_5(4),
      I5 => REGS_REGS_4(4),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_140
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(4),
      I3 => REGS_REGS_3(4),
      I4 => REGS_REGS_1(4),
      I5 => REGS_REGS_0(4),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_141
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_3 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_141,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_140,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_3 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f74,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_4_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(5),
      I3 => REGS_REGS_15(5),
      I4 => REGS_REGS_13(5),
      I5 => REGS_REGS_12(5),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_143
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(5),
      I3 => REGS_REGS_11(5),
      I4 => REGS_REGS_9(5),
      I5 => REGS_REGS_8(5),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_144
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_4 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_144,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_143,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f75
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(5),
      I3 => REGS_REGS_7(5),
      I4 => REGS_REGS_5(5),
      I5 => REGS_REGS_4(5),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_146
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(5),
      I3 => REGS_REGS_3(5),
      I4 => REGS_REGS_1(5),
      I5 => REGS_REGS_0(5),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_147
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_4 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_147,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_146,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_4 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f75,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_5_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(6),
      I3 => REGS_REGS_15(6),
      I4 => REGS_REGS_13(6),
      I5 => REGS_REGS_12(6),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_149
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(6),
      I3 => REGS_REGS_11(6),
      I4 => REGS_REGS_9(6),
      I5 => REGS_REGS_8(6),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_150
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_5 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_150,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_149,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f76
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(6),
      I3 => REGS_REGS_7(6),
      I4 => REGS_REGS_5(6),
      I5 => REGS_REGS_4(6),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_152
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(6),
      I3 => REGS_REGS_3(6),
      I4 => REGS_REGS_1(6),
      I5 => REGS_REGS_0(6),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_153
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_5 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_153,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_152,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_5 : MUXF8
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f76,
      S => instr_10_IBUF_13,
      O => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_6_Q
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_14(7),
      I3 => REGS_REGS_15(7),
      I4 => REGS_REGS_13(7),
      I5 => REGS_REGS_12(7),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_155
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_10(7),
      I3 => REGS_REGS_11(7),
      I4 => REGS_REGS_9(7),
      I5 => REGS_REGS_8(7),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_156
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f7_6 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_156,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_155,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f77
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_6(7),
      I3 => REGS_REGS_7(7),
      I4 => REGS_REGS_5(7),
      I5 => REGS_REGS_4(7),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_158
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => REGS_REGS_2(7),
      I3 => REGS_REGS_3(7),
      I4 => REGS_REGS_1(7),
      I5 => REGS_REGS_0(7),
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_159
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_6 : MUXF7
    port map (
      I0 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_159,
      I1 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_158,
      S => instr_9_IBUF_14,
      O => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(0),
      I3 => REGS_REGS_15(0),
      I4 => REGS_REGS_13(0),
      I5 => REGS_REGS_12(0),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_161
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(0),
      I3 => REGS_REGS_11(0),
      I4 => REGS_REGS_9(0),
      I5 => REGS_REGS_8(0),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_162
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(0),
      I3 => REGS_REGS_7(0),
      I4 => REGS_REGS_5(0),
      I5 => REGS_REGS_4(0),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_163
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(0),
      I3 => REGS_REGS_3(0),
      I4 => REGS_REGS_1(0),
      I5 => REGS_REGS_0(0),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_164
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_164,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_163,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_165
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(1),
      I3 => REGS_REGS_15(1),
      I4 => REGS_REGS_13(1),
      I5 => REGS_REGS_12(1),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_166
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(1),
      I3 => REGS_REGS_11(1),
      I4 => REGS_REGS_9(1),
      I5 => REGS_REGS_8(1),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_167
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(1),
      I3 => REGS_REGS_7(1),
      I4 => REGS_REGS_5(1),
      I5 => REGS_REGS_4(1),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_168
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(1),
      I3 => REGS_REGS_3(1),
      I4 => REGS_REGS_1(1),
      I5 => REGS_REGS_0(1),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_169
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_0 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_169,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_168,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(2),
      I3 => REGS_REGS_15(2),
      I4 => REGS_REGS_13(2),
      I5 => REGS_REGS_12(2),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_171
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(2),
      I3 => REGS_REGS_11(2),
      I4 => REGS_REGS_9(2),
      I5 => REGS_REGS_8(2),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_172
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(2),
      I3 => REGS_REGS_7(2),
      I4 => REGS_REGS_5(2),
      I5 => REGS_REGS_4(2),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_173
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(2),
      I3 => REGS_REGS_3(2),
      I4 => REGS_REGS_1(2),
      I5 => REGS_REGS_0(2),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_174
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_1 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_174,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_173,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(3),
      I3 => REGS_REGS_15(3),
      I4 => REGS_REGS_13(3),
      I5 => REGS_REGS_12(3),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_176
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(3),
      I3 => REGS_REGS_11(3),
      I4 => REGS_REGS_9(3),
      I5 => REGS_REGS_8(3),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_177
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(3),
      I3 => REGS_REGS_7(3),
      I4 => REGS_REGS_5(3),
      I5 => REGS_REGS_4(3),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_178
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(3),
      I3 => REGS_REGS_3(3),
      I4 => REGS_REGS_1(3),
      I5 => REGS_REGS_0(3),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_179
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_2 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_179,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_178,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(4),
      I3 => REGS_REGS_15(4),
      I4 => REGS_REGS_13(4),
      I5 => REGS_REGS_12(4),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_181
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(4),
      I3 => REGS_REGS_11(4),
      I4 => REGS_REGS_9(4),
      I5 => REGS_REGS_8(4),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_182
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(4),
      I3 => REGS_REGS_7(4),
      I4 => REGS_REGS_5(4),
      I5 => REGS_REGS_4(4),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_183
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(4),
      I3 => REGS_REGS_3(4),
      I4 => REGS_REGS_1(4),
      I5 => REGS_REGS_0(4),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_184
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_3 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_184,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_183,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(5),
      I3 => REGS_REGS_15(5),
      I4 => REGS_REGS_13(5),
      I5 => REGS_REGS_12(5),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_186
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(5),
      I3 => REGS_REGS_11(5),
      I4 => REGS_REGS_9(5),
      I5 => REGS_REGS_8(5),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_187
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(5),
      I3 => REGS_REGS_7(5),
      I4 => REGS_REGS_5(5),
      I5 => REGS_REGS_4(5),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_188
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(5),
      I3 => REGS_REGS_3(5),
      I4 => REGS_REGS_1(5),
      I5 => REGS_REGS_0(5),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_189
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_4 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_189,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_188,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(6),
      I3 => REGS_REGS_15(6),
      I4 => REGS_REGS_13(6),
      I5 => REGS_REGS_12(6),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_191
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(6),
      I3 => REGS_REGS_11(6),
      I4 => REGS_REGS_9(6),
      I5 => REGS_REGS_8(6),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_192
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(6),
      I3 => REGS_REGS_7(6),
      I4 => REGS_REGS_5(6),
      I5 => REGS_REGS_4(6),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_193
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(6),
      I3 => REGS_REGS_3(6),
      I4 => REGS_REGS_1(6),
      I5 => REGS_REGS_0(6),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_194
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_194,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_193,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_14(7),
      I3 => REGS_REGS_15(7),
      I4 => REGS_REGS_13(7),
      I5 => REGS_REGS_12(7),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_196
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_10(7),
      I3 => REGS_REGS_11(7),
      I4 => REGS_REGS_9(7),
      I5 => REGS_REGS_8(7),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_197
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_6(7),
      I3 => REGS_REGS_7(7),
      I4 => REGS_REGS_5(7),
      I5 => REGS_REGS_4(7),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_198
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => REGS_REGS_2(7),
      I3 => REGS_REGS_3(7),
      I4 => REGS_REGS_1(7),
      I5 => REGS_REGS_0(7),
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_199
    );
  REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_6 : MUXF7
    port map (
      I0 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_199,
      I1 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_198,
      S => instr_13_IBUF_10,
      O => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77
    );
  REGS_REGS_0_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q,
      Q => REGS_REGS_0(7)
    );
  REGS_REGS_0_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q,
      Q => REGS_REGS_0(6)
    );
  REGS_REGS_0_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q,
      Q => REGS_REGS_0(5)
    );
  REGS_REGS_0_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q,
      Q => REGS_REGS_0(4)
    );
  REGS_REGS_0_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q,
      Q => REGS_REGS_0(3)
    );
  REGS_REGS_0_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q,
      Q => REGS_REGS_0(2)
    );
  REGS_REGS_0_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q,
      Q => REGS_REGS_0(1)
    );
  REGS_REGS_0_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0624_inv,
      CLR => reset_IBUF_65,
      D => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q,
      Q => REGS_REGS_0(0)
    );
  REGS_REGS_1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q,
      Q => REGS_REGS_1(7)
    );
  REGS_REGS_1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q,
      Q => REGS_REGS_1(6)
    );
  REGS_REGS_1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q,
      Q => REGS_REGS_1(5)
    );
  REGS_REGS_1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q,
      Q => REGS_REGS_1(4)
    );
  REGS_REGS_1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q,
      Q => REGS_REGS_1(3)
    );
  REGS_REGS_1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q,
      Q => REGS_REGS_1(2)
    );
  REGS_REGS_1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q,
      Q => REGS_REGS_1(1)
    );
  REGS_REGS_1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0602_inv_202,
      CLR => reset_IBUF_65,
      D => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q,
      Q => REGS_REGS_1(0)
    );
  REGS_REGS_15_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q,
      Q => REGS_REGS_15(7)
    );
  REGS_REGS_15_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q,
      Q => REGS_REGS_15(6)
    );
  REGS_REGS_15_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q,
      Q => REGS_REGS_15(5)
    );
  REGS_REGS_15_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q,
      Q => REGS_REGS_15(4)
    );
  REGS_REGS_15_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q,
      Q => REGS_REGS_15(3)
    );
  REGS_REGS_15_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q,
      Q => REGS_REGS_15(2)
    );
  REGS_REGS_15_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q,
      Q => REGS_REGS_15(1)
    );
  REGS_REGS_15_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0646_inv_203,
      CLR => reset_IBUF_65,
      D => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q,
      Q => REGS_REGS_15(0)
    );
  REGS_REGS_2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q,
      Q => REGS_REGS_2(7)
    );
  REGS_REGS_2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q,
      Q => REGS_REGS_2(6)
    );
  REGS_REGS_2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q,
      Q => REGS_REGS_2(5)
    );
  REGS_REGS_2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q,
      Q => REGS_REGS_2(4)
    );
  REGS_REGS_2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q,
      Q => REGS_REGS_2(3)
    );
  REGS_REGS_2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q,
      Q => REGS_REGS_2(2)
    );
  REGS_REGS_2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q,
      Q => REGS_REGS_2(1)
    );
  REGS_REGS_2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0580_inv_204,
      CLR => reset_IBUF_65,
      D => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q,
      Q => REGS_REGS_2(0)
    );
  REGS_REGS_3_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q,
      Q => REGS_REGS_3(7)
    );
  REGS_REGS_3_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q,
      Q => REGS_REGS_3(6)
    );
  REGS_REGS_3_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q,
      Q => REGS_REGS_3(5)
    );
  REGS_REGS_3_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q,
      Q => REGS_REGS_3(4)
    );
  REGS_REGS_3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q,
      Q => REGS_REGS_3(3)
    );
  REGS_REGS_3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q,
      Q => REGS_REGS_3(2)
    );
  REGS_REGS_3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q,
      Q => REGS_REGS_3(1)
    );
  REGS_REGS_3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0558_inv_205,
      CLR => reset_IBUF_65,
      D => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q,
      Q => REGS_REGS_3(0)
    );
  REGS_REGS_5_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q,
      Q => REGS_REGS_5(7)
    );
  REGS_REGS_5_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q,
      Q => REGS_REGS_5(6)
    );
  REGS_REGS_5_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q,
      Q => REGS_REGS_5(5)
    );
  REGS_REGS_5_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q,
      Q => REGS_REGS_5(4)
    );
  REGS_REGS_5_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q,
      Q => REGS_REGS_5(3)
    );
  REGS_REGS_5_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q,
      Q => REGS_REGS_5(2)
    );
  REGS_REGS_5_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q,
      Q => REGS_REGS_5(1)
    );
  REGS_REGS_5_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0514_inv_206,
      CLR => reset_IBUF_65,
      D => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q,
      Q => REGS_REGS_5(0)
    );
  REGS_REGS_6_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q,
      Q => REGS_REGS_6(7)
    );
  REGS_REGS_6_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q,
      Q => REGS_REGS_6(6)
    );
  REGS_REGS_6_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q,
      Q => REGS_REGS_6(5)
    );
  REGS_REGS_6_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q,
      Q => REGS_REGS_6(4)
    );
  REGS_REGS_6_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q,
      Q => REGS_REGS_6(3)
    );
  REGS_REGS_6_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q,
      Q => REGS_REGS_6(2)
    );
  REGS_REGS_6_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q,
      Q => REGS_REGS_6(1)
    );
  REGS_REGS_6_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0492_inv_207,
      CLR => reset_IBUF_65,
      D => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q,
      Q => REGS_REGS_6(0)
    );
  REGS_REGS_4_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q,
      Q => REGS_REGS_4(7)
    );
  REGS_REGS_4_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q,
      Q => REGS_REGS_4(6)
    );
  REGS_REGS_4_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q,
      Q => REGS_REGS_4(5)
    );
  REGS_REGS_4_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q,
      Q => REGS_REGS_4(4)
    );
  REGS_REGS_4_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q,
      Q => REGS_REGS_4(3)
    );
  REGS_REGS_4_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q,
      Q => REGS_REGS_4(2)
    );
  REGS_REGS_4_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q,
      Q => REGS_REGS_4(1)
    );
  REGS_REGS_4_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0536_inv_208,
      CLR => reset_IBUF_65,
      D => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q,
      Q => REGS_REGS_4(0)
    );
  REGS_REGS_8_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q,
      Q => REGS_REGS_8(7)
    );
  REGS_REGS_8_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q,
      Q => REGS_REGS_8(6)
    );
  REGS_REGS_8_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q,
      Q => REGS_REGS_8(5)
    );
  REGS_REGS_8_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q,
      Q => REGS_REGS_8(4)
    );
  REGS_REGS_8_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q,
      Q => REGS_REGS_8(3)
    );
  REGS_REGS_8_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q,
      Q => REGS_REGS_8(2)
    );
  REGS_REGS_8_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q,
      Q => REGS_REGS_8(1)
    );
  REGS_REGS_8_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0448_inv_209,
      CLR => reset_IBUF_65,
      D => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q,
      Q => REGS_REGS_8(0)
    );
  REGS_REGS_9_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q,
      Q => REGS_REGS_9(7)
    );
  REGS_REGS_9_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q,
      Q => REGS_REGS_9(6)
    );
  REGS_REGS_9_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q,
      Q => REGS_REGS_9(5)
    );
  REGS_REGS_9_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q,
      Q => REGS_REGS_9(4)
    );
  REGS_REGS_9_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q,
      Q => REGS_REGS_9(3)
    );
  REGS_REGS_9_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q,
      Q => REGS_REGS_9(2)
    );
  REGS_REGS_9_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q,
      Q => REGS_REGS_9(1)
    );
  REGS_REGS_9_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0426_inv_210,
      CLR => reset_IBUF_65,
      D => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q,
      Q => REGS_REGS_9(0)
    );
  REGS_REGS_7_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q,
      Q => REGS_REGS_7(7)
    );
  REGS_REGS_7_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q,
      Q => REGS_REGS_7(6)
    );
  REGS_REGS_7_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q,
      Q => REGS_REGS_7(5)
    );
  REGS_REGS_7_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q,
      Q => REGS_REGS_7(4)
    );
  REGS_REGS_7_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q,
      Q => REGS_REGS_7(3)
    );
  REGS_REGS_7_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q,
      Q => REGS_REGS_7(2)
    );
  REGS_REGS_7_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q,
      Q => REGS_REGS_7(1)
    );
  REGS_REGS_7_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0470_inv_211,
      CLR => reset_IBUF_65,
      D => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q,
      Q => REGS_REGS_7(0)
    );
  REGS_REGS_11_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q,
      Q => REGS_REGS_11(7)
    );
  REGS_REGS_11_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q,
      Q => REGS_REGS_11(6)
    );
  REGS_REGS_11_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q,
      Q => REGS_REGS_11(5)
    );
  REGS_REGS_11_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q,
      Q => REGS_REGS_11(4)
    );
  REGS_REGS_11_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q,
      Q => REGS_REGS_11(3)
    );
  REGS_REGS_11_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q,
      Q => REGS_REGS_11(2)
    );
  REGS_REGS_11_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q,
      Q => REGS_REGS_11(1)
    );
  REGS_REGS_11_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0382_inv_212,
      CLR => reset_IBUF_65,
      D => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q,
      Q => REGS_REGS_11(0)
    );
  REGS_REGS_12_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q,
      Q => REGS_REGS_12(7)
    );
  REGS_REGS_12_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q,
      Q => REGS_REGS_12(6)
    );
  REGS_REGS_12_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q,
      Q => REGS_REGS_12(5)
    );
  REGS_REGS_12_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q,
      Q => REGS_REGS_12(4)
    );
  REGS_REGS_12_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q,
      Q => REGS_REGS_12(3)
    );
  REGS_REGS_12_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q,
      Q => REGS_REGS_12(2)
    );
  REGS_REGS_12_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q,
      Q => REGS_REGS_12(1)
    );
  REGS_REGS_12_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0360_inv_213,
      CLR => reset_IBUF_65,
      D => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q,
      Q => REGS_REGS_12(0)
    );
  REGS_REGS_10_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q,
      Q => REGS_REGS_10(7)
    );
  REGS_REGS_10_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q,
      Q => REGS_REGS_10(6)
    );
  REGS_REGS_10_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q,
      Q => REGS_REGS_10(5)
    );
  REGS_REGS_10_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q,
      Q => REGS_REGS_10(4)
    );
  REGS_REGS_10_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q,
      Q => REGS_REGS_10(3)
    );
  REGS_REGS_10_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q,
      Q => REGS_REGS_10(2)
    );
  REGS_REGS_10_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q,
      Q => REGS_REGS_10(1)
    );
  REGS_REGS_10_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0404_inv_214,
      CLR => reset_IBUF_65,
      D => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q,
      Q => REGS_REGS_10(0)
    );
  REGS_REGS_13_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q,
      Q => REGS_REGS_13(7)
    );
  REGS_REGS_13_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q,
      Q => REGS_REGS_13(6)
    );
  REGS_REGS_13_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q,
      Q => REGS_REGS_13(5)
    );
  REGS_REGS_13_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q,
      Q => REGS_REGS_13(4)
    );
  REGS_REGS_13_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q,
      Q => REGS_REGS_13(3)
    );
  REGS_REGS_13_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q,
      Q => REGS_REGS_13(2)
    );
  REGS_REGS_13_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q,
      Q => REGS_REGS_13(1)
    );
  REGS_REGS_13_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0338_inv_215,
      CLR => reset_IBUF_65,
      D => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q,
      Q => REGS_REGS_13(0)
    );
  REGS_REGS_14_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q,
      Q => REGS_REGS_14(7)
    );
  REGS_REGS_14_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q,
      Q => REGS_REGS_14(6)
    );
  REGS_REGS_14_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q,
      Q => REGS_REGS_14(5)
    );
  REGS_REGS_14_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q,
      Q => REGS_REGS_14(4)
    );
  REGS_REGS_14_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q,
      Q => REGS_REGS_14(3)
    );
  REGS_REGS_14_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q,
      Q => REGS_REGS_14(2)
    );
  REGS_REGS_14_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q,
      Q => REGS_REGS_14(1)
    );
  REGS_REGS_14_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => REGS_n0316_inv_216,
      CLR => reset_IBUF_65,
      D => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q,
      Q => REGS_REGS_14(0)
    );
  S_R_tmp_s_out_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(7),
      Q => S_R_tmp_s_out(7)
    );
  S_R_tmp_s_out_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(6),
      Q => S_R_tmp_s_out(6)
    );
  S_R_tmp_s_out_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(5),
      Q => S_R_tmp_s_out(5)
    );
  S_R_tmp_s_out_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(4),
      Q => S_R_tmp_s_out(4)
    );
  S_R_tmp_s_out_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(3),
      Q => S_R_tmp_s_out(3)
    );
  S_R_tmp_s_out_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(2),
      Q => S_R_tmp_s_out(2)
    );
  S_R_tmp_s_out_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(1),
      Q => S_R_tmp_s_out(1)
    );
  S_R_tmp_s_out_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in(0),
      Q => S_R_tmp_s_out(0)
    );
  S_R_tmp_s_in_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_7_Q,
      Q => S_R_tmp_s_in(7)
    );
  S_R_tmp_s_in_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_6_Q,
      Q => S_R_tmp_s_in(6)
    );
  S_R_tmp_s_in_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_5_Q,
      Q => S_R_tmp_s_in(5)
    );
  S_R_tmp_s_in_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_4_Q,
      Q => S_R_tmp_s_in(4)
    );
  S_R_tmp_s_in_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_3_Q,
      Q => S_R_tmp_s_in(3)
    );
  S_R_tmp_s_in_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_2_Q,
      Q => S_R_tmp_s_in(2)
    );
  S_R_tmp_s_in_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_1_Q,
      Q => S_R_tmp_s_in(1)
    );
  S_R_tmp_s_in_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => S_R_n0020_inv,
      CLR => reset_IBUF_65,
      D => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_0_Q,
      Q => S_R_tmp_s_in(0)
    );
  AUL_Mmux_res1_rs_xor_7_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(6),
      LI => AUL_Mmux_res1_rs_lut(7),
      O => AUL_Mmux_res1_split(7)
    );
  AUL_Mmux_res1_rs_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => reg_data1_out(7),
      I2 => alu_op2(7),
      O => AUL_Mmux_res1_rs_lut(7)
    );
  AUL_Mmux_res1_rs_xor_6_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(5),
      LI => AUL_Mmux_res1_rs_lut(6),
      O => AUL_Mmux_res1_split(6)
    );
  AUL_Mmux_res1_rs_cy_6_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(5),
      DI => reg_data1_out(6),
      S => AUL_Mmux_res1_rs_lut(6),
      O => AUL_Mmux_res1_rs_cy(6)
    );
  AUL_Mmux_res1_rs_lut_6_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => alu_op2(6),
      I2 => reg_data1_out(6),
      O => AUL_Mmux_res1_rs_lut(6)
    );
  AUL_Mmux_res1_rs_xor_5_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(4),
      LI => AUL_Mmux_res1_rs_lut(5),
      O => AUL_Mmux_res1_split(5)
    );
  AUL_Mmux_res1_rs_cy_5_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(4),
      DI => reg_data1_out(5),
      S => AUL_Mmux_res1_rs_lut(5),
      O => AUL_Mmux_res1_rs_cy(5)
    );
  AUL_Mmux_res1_rs_xor_4_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(3),
      LI => AUL_Mmux_res1_rs_lut(4),
      O => AUL_Mmux_res1_split(4)
    );
  AUL_Mmux_res1_rs_cy_4_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(3),
      DI => reg_data1_out(4),
      S => AUL_Mmux_res1_rs_lut(4),
      O => AUL_Mmux_res1_rs_cy(4)
    );
  AUL_Mmux_res1_rs_xor_3_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(2),
      LI => AUL_Mmux_res1_rs_lut(3),
      O => AUL_Mmux_res1_split(3)
    );
  AUL_Mmux_res1_rs_cy_3_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(2),
      DI => reg_data1_out(3),
      S => AUL_Mmux_res1_rs_lut(3),
      O => AUL_Mmux_res1_rs_cy(3)
    );
  AUL_Mmux_res1_rs_xor_2_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(1),
      LI => AUL_Mmux_res1_rs_lut(2),
      O => AUL_Mmux_res1_split(2)
    );
  AUL_Mmux_res1_rs_cy_2_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(1),
      DI => reg_data1_out(2),
      S => AUL_Mmux_res1_rs_lut(2),
      O => AUL_Mmux_res1_rs_cy(2)
    );
  AUL_Mmux_res1_rs_xor_1_Q : XORCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(0),
      LI => AUL_Mmux_res1_rs_lut(1),
      O => AUL_Mmux_res1_split(1)
    );
  AUL_Mmux_res1_rs_cy_1_Q : MUXCY
    port map (
      CI => AUL_Mmux_res1_rs_cy(0),
      DI => reg_data1_out(1),
      S => AUL_Mmux_res1_rs_lut(1),
      O => AUL_Mmux_res1_rs_cy(1)
    );
  AUL_Mmux_res1_rs_xor_0_Q : XORCY
    port map (
      CI => instr_0_IBUF_23,
      LI => AUL_Mmux_res1_rs_lut(0),
      O => AUL_Mmux_res1_split(0)
    );
  AUL_Mmux_res1_rs_cy_0_Q : MUXCY
    port map (
      CI => instr_0_IBUF_23,
      DI => reg_data1_out(0),
      S => AUL_Mmux_res1_rs_lut(0),
      O => AUL_Mmux_res1_rs_cy(0)
    );
  CTRL_enable_mask_OR_1_o1 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_22_IBUF_8,
      I2 => ST_R_state_out_92,
      O => CTRL_enable_mask_OR_1_o
    );
  MUX_N_Mmux_bus_out21 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_1_IBUF_30,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(1),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(1),
      O => reg_data0(1)
    );
  MUX_N_Mmux_bus_out31 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_2_IBUF_29,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(2),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(2),
      O => reg_data0(2)
    );
  MUX_N_Mmux_bus_out41 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_3_IBUF_28,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(3),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(3),
      O => reg_data0(3)
    );
  MUX_N_Mmux_bus_out51 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_4_IBUF_27,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(4),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(4),
      O => reg_data0(4)
    );
  MUX_N_Mmux_bus_out61 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_5_IBUF_26,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(5),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(5),
      O => reg_data0(5)
    );
  MUX_N_Mmux_bus_out71 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_6_IBUF_25,
      I1 => instr_21_IBUF_0,
      I2 => S_R_tmp_s_out(6),
      I3 => ctrl_s_swap,
      I4 => CTRL_enable_mask_OR_1_o,
      I5 => alu_res(6),
      O => reg_data0(6)
    );
  REGS_adr0_3_Decoder_70_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_16_IBUF_5,
      I3 => instr_17_IBUF_4,
      O => REGS_adr0_3_Decoder_70_OUT_0_Q
    );
  REGS_adr3_3_Decoder_52_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_1_Q
    );
  REGS_adr3_3_Decoder_52_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_9_Q
    );
  REGS_adr3_3_Decoder_52_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_7_Q
    );
  REGS_adr3_3_Decoder_52_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_15_Q
    );
  REGS_adr3_3_Decoder_52_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_6_IBUF_17,
      I2 => instr_4_IBUF_19,
      I3 => instr_3_IBUF_20,
      O => REGS_adr3_3_Decoder_52_OUT_6_Q
    );
  REGS_adr3_3_Decoder_52_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_4_IBUF_19,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_14_Q
    );
  REGS_adr3_3_Decoder_52_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_6_IBUF_17,
      I2 => instr_3_IBUF_20,
      I3 => instr_4_IBUF_19,
      O => REGS_adr3_3_Decoder_52_OUT_5_Q
    );
  REGS_adr3_3_Decoder_52_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_6_IBUF_17,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_13_Q
    );
  REGS_adr3_3_Decoder_52_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_5_IBUF_18,
      I3 => instr_3_IBUF_20,
      O => REGS_adr3_3_Decoder_52_OUT_4_Q
    );
  REGS_adr3_3_Decoder_52_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_4_IBUF_19,
      I2 => instr_6_IBUF_17,
      I3 => instr_3_IBUF_20,
      O => REGS_adr3_3_Decoder_52_OUT_12_Q
    );
  REGS_adr3_3_Decoder_52_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_6_IBUF_17,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_3_Q
    );
  REGS_adr3_3_Decoder_52_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_6_IBUF_17,
      O => REGS_adr3_3_Decoder_52_OUT_11_Q
    );
  REGS_adr3_3_Decoder_52_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_3_IBUF_20,
      I2 => instr_4_IBUF_19,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_2_Q
    );
  REGS_adr3_3_Decoder_52_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_10_Q
    );
  REGS_adr3_3_Decoder_52_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_0_Q
    );
  REGS_adr3_3_Decoder_52_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => REGS_adr3_3_Decoder_52_OUT_8_Q
    );
  REGS_adr2_3_Decoder_35_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_1_Q
    );
  REGS_adr2_3_Decoder_35_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_9_Q
    );
  REGS_adr2_3_Decoder_35_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_7_Q
    );
  REGS_adr2_3_Decoder_35_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_15_Q
    );
  REGS_adr2_3_Decoder_35_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_10_IBUF_13,
      I2 => instr_8_IBUF_15,
      I3 => instr_7_IBUF_16,
      O => REGS_adr2_3_Decoder_35_OUT_6_Q
    );
  REGS_adr2_3_Decoder_35_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_8_IBUF_15,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_14_Q
    );
  REGS_adr2_3_Decoder_35_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_10_IBUF_13,
      I2 => instr_7_IBUF_16,
      I3 => instr_8_IBUF_15,
      O => REGS_adr2_3_Decoder_35_OUT_5_Q
    );
  REGS_adr2_3_Decoder_35_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_10_IBUF_13,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_13_Q
    );
  REGS_adr2_3_Decoder_35_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_9_IBUF_14,
      I3 => instr_7_IBUF_16,
      O => REGS_adr2_3_Decoder_35_OUT_4_Q
    );
  REGS_adr2_3_Decoder_35_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_8_IBUF_15,
      I2 => instr_10_IBUF_13,
      I3 => instr_7_IBUF_16,
      O => REGS_adr2_3_Decoder_35_OUT_12_Q
    );
  REGS_adr2_3_Decoder_35_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_10_IBUF_13,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_3_Q
    );
  REGS_adr2_3_Decoder_35_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_10_IBUF_13,
      O => REGS_adr2_3_Decoder_35_OUT_11_Q
    );
  REGS_adr2_3_Decoder_35_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_7_IBUF_16,
      I2 => instr_8_IBUF_15,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_2_Q
    );
  REGS_adr2_3_Decoder_35_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_10_Q
    );
  REGS_adr2_3_Decoder_35_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_0_Q
    );
  REGS_adr2_3_Decoder_35_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => REGS_adr2_3_Decoder_35_OUT_8_Q
    );
  REGS_adr1_3_Decoder_18_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_1_Q
    );
  REGS_adr1_3_Decoder_18_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_9_Q
    );
  REGS_adr1_3_Decoder_18_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_7_Q
    );
  REGS_adr1_3_Decoder_18_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_15_Q
    );
  REGS_adr1_3_Decoder_18_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_14_IBUF_9,
      I2 => instr_12_IBUF_11,
      I3 => instr_11_IBUF_12,
      O => REGS_adr1_3_Decoder_18_OUT_6_Q
    );
  REGS_adr1_3_Decoder_18_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_11_IBUF_12,
      I1 => instr_12_IBUF_11,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_14_Q
    );
  REGS_adr1_3_Decoder_18_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_14_IBUF_9,
      I2 => instr_11_IBUF_12,
      I3 => instr_12_IBUF_11,
      O => REGS_adr1_3_Decoder_18_OUT_5_Q
    );
  REGS_adr1_3_Decoder_18_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_14_IBUF_9,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_13_Q
    );
  REGS_adr1_3_Decoder_18_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_13_IBUF_10,
      I3 => instr_11_IBUF_12,
      O => REGS_adr1_3_Decoder_18_OUT_4_Q
    );
  REGS_adr1_3_Decoder_18_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_12_IBUF_11,
      I2 => instr_14_IBUF_9,
      I3 => instr_11_IBUF_12,
      O => REGS_adr1_3_Decoder_18_OUT_12_Q
    );
  REGS_adr1_3_Decoder_18_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_14_IBUF_9,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_3_Q
    );
  REGS_adr1_3_Decoder_18_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_14_IBUF_9,
      O => REGS_adr1_3_Decoder_18_OUT_11_Q
    );
  REGS_adr1_3_Decoder_18_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_2_Q
    );
  REGS_adr1_3_Decoder_18_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_10_Q
    );
  REGS_adr1_3_Decoder_18_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_0_Q
    );
  REGS_adr1_3_Decoder_18_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => REGS_adr1_3_Decoder_18_OUT_8_Q
    );
  REGS_n0624_inv1 : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => REGS_adr0_3_Decoder_70_OUT_0_Q,
      I3 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I5 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      O => REGS_n0624_inv
    );
  REGS_adr0_3_Decoder_70_OUT_15_3_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      O => REGS_N67
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(1),
      I2 => sr_in_1_IBUF_62,
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_1_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT31 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sr_in_2_IBUF_61,
      I1 => step_IBUF_66,
      I2 => alu_res(2),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_2_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT41 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sr_in_3_IBUF_60,
      I1 => step_IBUF_66,
      I2 => alu_res(3),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_3_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT51 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sr_in_4_IBUF_59,
      I1 => step_IBUF_66,
      I2 => alu_res(4),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_4_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT61 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sr_in_5_IBUF_58,
      I1 => step_IBUF_66,
      I2 => alu_res(5),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_5_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT71 : LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => sr_in_6_IBUF_57,
      I1 => step_IBUF_66,
      I2 => alu_res(6),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_6_Q
    );
  AUL_op1_7_op2_7_LessThan_4_o2 : LUT6
    generic map(
      INIT => X"4FFF04FF004F0004"
    )
    port map (
      I0 => reg_data1_out(0),
      I1 => alu_op2(0),
      I2 => reg_data1_out(1),
      I3 => reg_data1_out(2),
      I4 => alu_op2(1),
      I5 => alu_op2(2),
      O => AUL_op1_7_op2_7_LessThan_4_o1
    );
  AUL_Mmux_res7121 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      O => AUL_N8
    );
  CTRL_Mmux_set_state1 : LUT6
    generic map(
      INIT => X"4040400040404040"
    )
    port map (
      I0 => CTRL_enable_mask_OR_1_o,
      I1 => instr_18_IBUF_3,
      I2 => REGS_N67,
      I3 => instr_19_IBUF_2,
      I4 => instr_20_IBUF_1,
      I5 => instr_21_IBUF_0,
      O => ctrl_set_state
    );
  MUX_ALU_Mmux_bus_out8_SW0 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => instr_19_IBUF_2,
      I1 => instr_20_IBUF_1,
      O => N23
    );
  MUX_ALU_Mmux_bus_out7 : LUT6
    generic map(
      INIT => X"00FF02FE00000202"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => CTRL_enable_mask_OR_1_o1_980,
      I5 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_6_Q,
      O => alu_op2(6)
    );
  MUX_ALU_Mmux_bus_out6 : LUT6
    generic map(
      INIT => X"00FF02FE00000202"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => CTRL_enable_mask_OR_1_o1_980,
      I5 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_5_Q,
      O => alu_op2(5)
    );
  MUX_ALU_Mmux_bus_out5 : LUT6
    generic map(
      INIT => X"00FF02FE00000202"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => CTRL_enable_mask_OR_1_o1_980,
      I5 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_4_Q,
      O => alu_op2(4)
    );
  MUX_ALU_Mmux_bus_out4 : LUT6
    generic map(
      INIT => X"00FF02FE00000202"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => CTRL_enable_mask_OR_1_o1_980,
      I5 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_3_Q,
      O => alu_op2(3)
    );
  MUX_ALU_Mmux_bus_out3 : LUT6
    generic map(
      INIT => X"00FF000002FE0202"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_2_Q,
      I5 => CTRL_enable_mask_OR_1_o,
      O => alu_op2(2)
    );
  MUX_ALU_Mmux_bus_out2 : LUT6
    generic map(
      INIT => X"00FF000002FE0202"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_1_Q,
      I5 => CTRL_enable_mask_OR_1_o,
      O => alu_op2(1)
    );
  MUX_ALU_Mmux_bus_out1 : LUT6
    generic map(
      INIT => X"00FF02FE00000202"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => N23,
      I2 => instr_21_IBUF_0,
      I3 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I4 => CTRL_enable_mask_OR_1_o1_980,
      I5 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_0_Q,
      O => alu_op2(0)
    );
  REGS_n0448_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_17_IBUF_4,
      I2 => instr_16_IBUF_5,
      I3 => instr_18_IBUF_3,
      O => N39
    );
  REGS_n0448_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I5 => N39,
      O => REGS_n0448_inv_209
    );
  REGS_n0602_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I5 => N41,
      O => REGS_n0602_inv_202
    );
  REGS_n0646_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N43,
      I3 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      O => REGS_n0646_inv_203
    );
  REGS_n0580_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I5 => N45,
      O => REGS_n0580_inv_204
    );
  REGS_n0558_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I5 => N47,
      O => REGS_n0558_inv_205
    );
  REGS_n0514_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I5 => N49,
      O => REGS_n0514_inv_206
    );
  REGS_n0492_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I5 => N51,
      O => REGS_n0492_inv_207
    );
  REGS_n0536_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I5 => N53,
      O => REGS_n0536_inv_208
    );
  REGS_n0426_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N55,
      I3 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      O => REGS_n0426_inv_210
    );
  REGS_n0470_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I5 => N57,
      O => REGS_n0470_inv_211
    );
  REGS_n0382_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N59,
      I3 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      O => REGS_n0382_inv_212
    );
  REGS_n0360_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N61,
      I3 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      O => REGS_n0360_inv_213
    );
  REGS_n0404_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N63,
      I3 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      O => REGS_n0404_inv_214
    );
  REGS_n0338_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N65,
      I3 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      O => REGS_n0338_inv_215
    );
  REGS_n0316_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N67,
      I3 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I4 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I5 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      O => REGS_n0316_inv_216
    );
  AUL_Mmux_res78_SW0 : LUT5
    generic map(
      INIT => X"F5FDF7FF"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      I3 => reg_data1_out(6),
      I4 => alu_op2(7),
      O => N69
    );
  AUL_Mmux_res78_SW1 : LUT5
    generic map(
      INIT => X"C7E7CFEF"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      I3 => reg_data1_out(6),
      I4 => alu_op2(7),
      O => N70
    );
  AUL_Mmux_res78_SW2 : LUT5
    generic map(
      INIT => X"CAEADAFA"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      I3 => reg_data1_out(6),
      I4 => alu_op2(7),
      O => N71
    );
  AUL_Mmux_res78_SW3 : LUT5
    generic map(
      INIT => X"C2E2CAEA"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      I3 => reg_data1_out(6),
      I4 => alu_op2(7),
      O => N72
    );
  AUL_Mmux_res711 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      O => AUL_Mmux_res71
    );
  AUL_Mmux_res712 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      O => AUL_Mmux_res711_592
    );
  AUL_Mmux_res713 : LUT6
    generic map(
      INIT => X"FEFCFAF0FCCCF000"
    )
    port map (
      I0 => AUL_Mmux_res71,
      I1 => AUL_Mmux_res711_592,
      I2 => AUL_N8,
      I3 => reg_data1_out(0),
      I4 => reg_data1_out(1),
      I5 => alu_op2(0),
      O => AUL_Mmux_res712_593
    );
  AUL_Mmux_res715 : LUT6
    generic map(
      INIT => X"8000080000800008"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_0_IBUF_23,
      I2 => reg_data1_out(1),
      I3 => reg_data1_out(2),
      I4 => alu_op2(1),
      I5 => alu_op2(2),
      O => AUL_Mmux_res714
    );
  AUL_Mmux_res716 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => reg_data1_out(5),
      I1 => reg_data1_out(3),
      I2 => reg_data1_out(6),
      I3 => alu_op2(5),
      I4 => alu_op2(3),
      I5 => alu_op2(6),
      O => AUL_Mmux_res715_595
    );
  AUL_Mmux_res717 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => reg_data1_out(0),
      I1 => alu_op2(0),
      I2 => reg_data1_out(4),
      I3 => alu_op2(4),
      I4 => reg_data1_out(7),
      I5 => alu_op2(7),
      O => AUL_Mmux_res716_596
    );
  AUL_op1_7_op2_7_LessThan_4_o1_SW0 : LUT4
    generic map(
      INIT => X"7510"
    )
    port map (
      I0 => reg_data1_out(4),
      I1 => reg_data1_out(3),
      I2 => alu_op2(3),
      I3 => alu_op2(4),
      O => N74
    );
  AUL_op1_7_op2_7_LessThan_4_o1_SW1 : LUT4
    generic map(
      INIT => X"F571"
    )
    port map (
      I0 => reg_data1_out(4),
      I1 => reg_data1_out(3),
      I2 => alu_op2(4),
      I3 => alu_op2(3),
      O => N75
    );
  instr_23_IBUF : IBUF
    port map (
      I => instr(23),
      O => instr_23_IBUF_7
    );
  instr_22_IBUF : IBUF
    port map (
      I => instr(22),
      O => instr_22_IBUF_8
    );
  instr_21_IBUF : IBUF
    port map (
      I => instr(21),
      O => instr_21_IBUF_0
    );
  instr_20_IBUF : IBUF
    port map (
      I => instr(20),
      O => instr_20_IBUF_1
    );
  instr_19_IBUF : IBUF
    port map (
      I => instr(19),
      O => instr_19_IBUF_2
    );
  instr_18_IBUF : IBUF
    port map (
      I => instr(18),
      O => instr_18_IBUF_3
    );
  instr_17_IBUF : IBUF
    port map (
      I => instr(17),
      O => instr_17_IBUF_4
    );
  instr_16_IBUF : IBUF
    port map (
      I => instr(16),
      O => instr_16_IBUF_5
    );
  instr_15_IBUF : IBUF
    port map (
      I => instr(15),
      O => instr_15_IBUF_6
    );
  instr_14_IBUF : IBUF
    port map (
      I => instr(14),
      O => instr_14_IBUF_9
    );
  instr_13_IBUF : IBUF
    port map (
      I => instr(13),
      O => instr_13_IBUF_10
    );
  instr_12_IBUF : IBUF
    port map (
      I => instr(12),
      O => instr_12_IBUF_11
    );
  instr_11_IBUF : IBUF
    port map (
      I => instr(11),
      O => instr_11_IBUF_12
    );
  instr_10_IBUF : IBUF
    port map (
      I => instr(10),
      O => instr_10_IBUF_13
    );
  instr_9_IBUF : IBUF
    port map (
      I => instr(9),
      O => instr_9_IBUF_14
    );
  instr_8_IBUF : IBUF
    port map (
      I => instr(8),
      O => instr_8_IBUF_15
    );
  instr_7_IBUF : IBUF
    port map (
      I => instr(7),
      O => instr_7_IBUF_16
    );
  instr_6_IBUF : IBUF
    port map (
      I => instr(6),
      O => instr_6_IBUF_17
    );
  instr_5_IBUF : IBUF
    port map (
      I => instr(5),
      O => instr_5_IBUF_18
    );
  instr_4_IBUF : IBUF
    port map (
      I => instr(4),
      O => instr_4_IBUF_19
    );
  instr_3_IBUF : IBUF
    port map (
      I => instr(3),
      O => instr_3_IBUF_20
    );
  instr_2_IBUF : IBUF
    port map (
      I => instr(2),
      O => instr_2_IBUF_21
    );
  instr_1_IBUF : IBUF
    port map (
      I => instr(1),
      O => instr_1_IBUF_22
    );
  instr_0_IBUF : IBUF
    port map (
      I => instr(0),
      O => instr_0_IBUF_23
    );
  n_in_7_IBUF : IBUF
    port map (
      I => n_in(7),
      O => n_in_7_IBUF_24
    );
  n_in_6_IBUF : IBUF
    port map (
      I => n_in(6),
      O => n_in_6_IBUF_25
    );
  n_in_5_IBUF : IBUF
    port map (
      I => n_in(5),
      O => n_in_5_IBUF_26
    );
  n_in_4_IBUF : IBUF
    port map (
      I => n_in(4),
      O => n_in_4_IBUF_27
    );
  n_in_3_IBUF : IBUF
    port map (
      I => n_in(3),
      O => n_in_3_IBUF_28
    );
  n_in_2_IBUF : IBUF
    port map (
      I => n_in(2),
      O => n_in_2_IBUF_29
    );
  n_in_1_IBUF : IBUF
    port map (
      I => n_in(1),
      O => n_in_1_IBUF_30
    );
  n_in_0_IBUF : IBUF
    port map (
      I => n_in(0),
      O => n_in_0_IBUF_31
    );
  s_in_7_IBUF : IBUF
    port map (
      I => s_in(7),
      O => s_in_7_IBUF_32
    );
  s_in_6_IBUF : IBUF
    port map (
      I => s_in(6),
      O => s_in_6_IBUF_33
    );
  s_in_5_IBUF : IBUF
    port map (
      I => s_in(5),
      O => s_in_5_IBUF_34
    );
  s_in_4_IBUF : IBUF
    port map (
      I => s_in(4),
      O => s_in_4_IBUF_35
    );
  s_in_3_IBUF : IBUF
    port map (
      I => s_in(3),
      O => s_in_3_IBUF_36
    );
  s_in_2_IBUF : IBUF
    port map (
      I => s_in(2),
      O => s_in_2_IBUF_37
    );
  s_in_1_IBUF : IBUF
    port map (
      I => s_in(1),
      O => s_in_1_IBUF_38
    );
  s_in_0_IBUF : IBUF
    port map (
      I => s_in(0),
      O => s_in_0_IBUF_39
    );
  e_in_7_IBUF : IBUF
    port map (
      I => e_in(7),
      O => e_in_7_IBUF_40
    );
  e_in_6_IBUF : IBUF
    port map (
      I => e_in(6),
      O => e_in_6_IBUF_41
    );
  e_in_5_IBUF : IBUF
    port map (
      I => e_in(5),
      O => e_in_5_IBUF_42
    );
  e_in_4_IBUF : IBUF
    port map (
      I => e_in(4),
      O => e_in_4_IBUF_43
    );
  e_in_3_IBUF : IBUF
    port map (
      I => e_in(3),
      O => e_in_3_IBUF_44
    );
  e_in_2_IBUF : IBUF
    port map (
      I => e_in(2),
      O => e_in_2_IBUF_45
    );
  e_in_1_IBUF : IBUF
    port map (
      I => e_in(1),
      O => e_in_1_IBUF_46
    );
  e_in_0_IBUF : IBUF
    port map (
      I => e_in(0),
      O => e_in_0_IBUF_47
    );
  w_in_7_IBUF : IBUF
    port map (
      I => w_in(7),
      O => w_in_7_IBUF_48
    );
  w_in_6_IBUF : IBUF
    port map (
      I => w_in(6),
      O => w_in_6_IBUF_49
    );
  w_in_5_IBUF : IBUF
    port map (
      I => w_in(5),
      O => w_in_5_IBUF_50
    );
  w_in_4_IBUF : IBUF
    port map (
      I => w_in(4),
      O => w_in_4_IBUF_51
    );
  w_in_3_IBUF : IBUF
    port map (
      I => w_in(3),
      O => w_in_3_IBUF_52
    );
  w_in_2_IBUF : IBUF
    port map (
      I => w_in(2),
      O => w_in_2_IBUF_53
    );
  w_in_1_IBUF : IBUF
    port map (
      I => w_in(1),
      O => w_in_1_IBUF_54
    );
  w_in_0_IBUF : IBUF
    port map (
      I => w_in(0),
      O => w_in_0_IBUF_55
    );
  sr_in_7_IBUF : IBUF
    port map (
      I => sr_in(7),
      O => sr_in_7_IBUF_56
    );
  sr_in_6_IBUF : IBUF
    port map (
      I => sr_in(6),
      O => sr_in_6_IBUF_57
    );
  sr_in_5_IBUF : IBUF
    port map (
      I => sr_in(5),
      O => sr_in_5_IBUF_58
    );
  sr_in_4_IBUF : IBUF
    port map (
      I => sr_in(4),
      O => sr_in_4_IBUF_59
    );
  sr_in_3_IBUF : IBUF
    port map (
      I => sr_in(3),
      O => sr_in_3_IBUF_60
    );
  sr_in_2_IBUF : IBUF
    port map (
      I => sr_in(2),
      O => sr_in_2_IBUF_61
    );
  sr_in_1_IBUF : IBUF
    port map (
      I => sr_in(1),
      O => sr_in_1_IBUF_62
    );
  sr_in_0_IBUF : IBUF
    port map (
      I => sr_in(0),
      O => sr_in_0_IBUF_63
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_65
    );
  step_IBUF : IBUF
    port map (
      I => step,
      O => step_IBUF_66
    );
  n_out_7_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(7)
    );
  n_out_6_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(6)
    );
  n_out_5_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(5)
    );
  n_out_4_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(4)
    );
  n_out_3_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(3)
    );
  n_out_2_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(2)
    );
  n_out_1_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(1)
    );
  n_out_0_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => n_out(0)
    );
  s_out_7_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(7)
    );
  s_out_6_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(6)
    );
  s_out_5_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(5)
    );
  s_out_4_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(4)
    );
  s_out_3_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(3)
    );
  s_out_2_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(2)
    );
  s_out_1_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(1)
    );
  s_out_0_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => s_out(0)
    );
  e_out_7_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(7)
    );
  e_out_6_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(6)
    );
  e_out_5_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(5)
    );
  e_out_4_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(4)
    );
  e_out_3_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(3)
    );
  e_out_2_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(2)
    );
  e_out_1_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(1)
    );
  e_out_0_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => e_out(0)
    );
  w_out_7_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(7)
    );
  w_out_6_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(6)
    );
  w_out_5_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(5)
    );
  w_out_4_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(4)
    );
  w_out_3_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(3)
    );
  w_out_2_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(2)
    );
  w_out_1_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(1)
    );
  w_out_0_OBUF : OBUF
    port map (
      I => s_out_0_OBUF_67,
      O => w_out(0)
    );
  sr_out_7_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(7),
      O => sr_out(7)
    );
  sr_out_6_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(6),
      O => sr_out(6)
    );
  sr_out_5_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(5),
      O => sr_out(5)
    );
  sr_out_4_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(4),
      O => sr_out(4)
    );
  sr_out_3_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(3),
      O => sr_out(3)
    );
  sr_out_2_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(2),
      O => sr_out(2)
    );
  sr_out_1_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(1),
      O => sr_out(1)
    );
  sr_out_0_OBUF : OBUF
    port map (
      I => S_R_tmp_s_out(0),
      O => sr_out(0)
    );
  state_OBUF : OBUF
    port map (
      I => ST_R_state_out_92,
      O => state
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_0_IBUF_47,
      O => N77
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_0_IBUF_47,
      O => N78
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N77,
      I1 => w_in_0_IBUF_55,
      I2 => N78,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_0_IBUF_47,
      O => N80
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_0_IBUF_47,
      O => N81
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N80,
      I1 => w_in_0_IBUF_55,
      I2 => N81,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_0_IBUF_47,
      O => N83
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_0_IBUF_47,
      O => N84
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N83,
      I1 => w_in_0_IBUF_55,
      I2 => N84,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_0_IBUF_47,
      O => N86
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_0_IBUF_47,
      O => N87
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N86,
      I1 => w_in_0_IBUF_55,
      I2 => N87,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_0_IBUF_47,
      O => N89
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_0_IBUF_47,
      O => N90
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N89,
      I1 => w_in_0_IBUF_55,
      I2 => N90,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_0_IBUF_47,
      O => N92
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_0_IBUF_47,
      O => N93
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N92,
      I1 => w_in_0_IBUF_55,
      I2 => N93,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_0_IBUF_47,
      O => N95
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_0_IBUF_47,
      O => N96
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N95,
      I1 => w_in_0_IBUF_55,
      I2 => N96,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_0_IBUF_47,
      O => N98
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_0_IBUF_47,
      O => N99
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N98,
      I1 => w_in_0_IBUF_55,
      I2 => N99,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_0_IBUF_47,
      O => N101
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_0_IBUF_47,
      O => N102
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N101,
      I1 => w_in_0_IBUF_55,
      I2 => N102,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_0_IBUF_47,
      O => N104
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_0_IBUF_47,
      O => N105
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N104,
      I1 => w_in_0_IBUF_55,
      I2 => N105,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_0_IBUF_47,
      O => N107
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_0_IBUF_47,
      O => N108
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N107,
      I1 => w_in_0_IBUF_55,
      I2 => N108,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_0_IBUF_47,
      O => N110
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_0_IBUF_47,
      O => N111
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N110,
      I1 => w_in_0_IBUF_55,
      I2 => N111,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_0_IBUF_47,
      O => N113
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_0_IBUF_47,
      O => N114
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N113,
      I1 => w_in_0_IBUF_55,
      I2 => N114,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_0_IBUF_47,
      O => N116
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_0_IBUF_47,
      O => N117
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N116,
      I1 => w_in_0_IBUF_55,
      I2 => N117,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_0_IBUF_47,
      O => N119
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_0_IBUF_47,
      O => N120
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N119,
      I1 => w_in_0_IBUF_55,
      I2 => N120,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_0_IBUF_39,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_0_IBUF_47,
      O => N122
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_0_IBUF_47,
      O => N123
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N122,
      I1 => w_in_0_IBUF_55,
      I2 => N123,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q
    );
  AUL_op1_7_op2_7_LessThan_4_o1_SW2 : LUT6
    generic map(
      INIT => X"80C0C8CCECFCFEFF"
    )
    port map (
      I0 => reg_data1_out(5),
      I1 => reg_data1_out(7),
      I2 => reg_data1_out(6),
      I3 => alu_op2(5),
      I4 => alu_op2(6),
      I5 => alu_op2(7),
      O => N125
    );
  AUL_op1_7_op2_7_LessThan_4_o1_SW3 : LUT6
    generic map(
      INIT => X"0080C0C8CCECFCFE"
    )
    port map (
      I0 => reg_data1_out(5),
      I1 => reg_data1_out(7),
      I2 => reg_data1_out(6),
      I3 => alu_op2(5),
      I4 => alu_op2(6),
      I5 => alu_op2(7),
      O => N126
    );
  AUL_Mmux_res719 : LUT5
    generic map(
      INIT => X"0305CFAF"
    )
    port map (
      I0 => N74,
      I1 => N75,
      I2 => N125,
      I3 => AUL_op1_7_op2_7_LessThan_4_o1,
      I4 => N126,
      O => AUL_Mmux_res718_598
    );
  MUX_N_Mmux_bus_out11 : LUT6
    generic map(
      INIT => X"CCCCCCCCFA50FF00"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => N130,
      I2 => N129,
      I3 => N128,
      I4 => AUL_Mmux_res718_598,
      I5 => AUL_Mmux_res717_597,
      O => reg_data0(0)
    );
  AUL_Mmux_res7110_SW3 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      O => N134
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT11 : LUT6
    generic map(
      INIT => X"AAFFAAFFAA03AA00"
    )
    port map (
      I0 => sr_in_0_IBUF_63,
      I1 => N134,
      I2 => instr_2_IBUF_21,
      I3 => step_IBUF_66,
      I4 => AUL_Mmux_res718_598,
      I5 => AUL_Mmux_res717_597,
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_0_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_7_IBUF_40,
      O => N136
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_7_IBUF_40,
      O => N137
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N136,
      I1 => w_in_7_IBUF_48,
      I2 => N137,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_7_IBUF_40,
      O => N139
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_7_IBUF_40,
      O => N140
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N139,
      I1 => w_in_7_IBUF_48,
      I2 => N140,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_7_IBUF_40,
      O => N142
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_7_IBUF_40,
      O => N143
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N142,
      I1 => w_in_7_IBUF_48,
      I2 => N143,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_7_IBUF_40,
      O => N145
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_7_IBUF_40,
      O => N146
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N145,
      I1 => w_in_7_IBUF_48,
      I2 => N146,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_7_IBUF_40,
      O => N148
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_7_IBUF_40,
      O => N149
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N148,
      I1 => w_in_7_IBUF_48,
      I2 => N149,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_7_IBUF_40,
      O => N151
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_7_IBUF_40,
      O => N152
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N151,
      I1 => w_in_7_IBUF_48,
      I2 => N152,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_7_IBUF_40,
      O => N154
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_7_IBUF_40,
      O => N155
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N154,
      I1 => w_in_7_IBUF_48,
      I2 => N155,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_7_IBUF_40,
      O => N157
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_7_IBUF_40,
      O => N158
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N157,
      I1 => w_in_7_IBUF_48,
      I2 => N158,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_7_IBUF_40,
      O => N160
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_7_IBUF_40,
      O => N161
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N160,
      I1 => w_in_7_IBUF_48,
      I2 => N161,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_7_IBUF_40,
      O => N163
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_7_IBUF_40,
      O => N164
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N163,
      I1 => w_in_7_IBUF_48,
      I2 => N164,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_7_IBUF_40,
      O => N166
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_7_IBUF_40,
      O => N167
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N166,
      I1 => w_in_7_IBUF_48,
      I2 => N167,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_7_IBUF_40,
      O => N169
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_7_IBUF_40,
      O => N170
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N169,
      I1 => w_in_7_IBUF_48,
      I2 => N170,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_7_IBUF_40,
      O => N172
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_7_IBUF_40,
      O => N173
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N172,
      I1 => w_in_7_IBUF_48,
      I2 => N173,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_7_IBUF_40,
      O => N175
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_7_IBUF_40,
      O => N176
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N175,
      I1 => w_in_7_IBUF_48,
      I2 => N176,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_7_IBUF_40,
      O => N178
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_7_IBUF_40,
      O => N179
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N178,
      I1 => w_in_7_IBUF_48,
      I2 => N179,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT161_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_7_IBUF_32,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_7_IBUF_40,
      O => N181
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT161_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_7_IBUF_32,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_7_IBUF_40,
      O => N182
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N181,
      I1 => w_in_7_IBUF_48,
      I2 => N182,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(7),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_6_IBUF_41,
      O => N184
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_6_IBUF_41,
      O => N185
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N184,
      I1 => w_in_6_IBUF_49,
      I2 => N185,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_6_IBUF_41,
      O => N187
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_6_IBUF_41,
      O => N188
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N187,
      I1 => w_in_6_IBUF_49,
      I2 => N188,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_6_IBUF_41,
      O => N190
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_6_IBUF_41,
      O => N191
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N190,
      I1 => w_in_6_IBUF_49,
      I2 => N191,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_6_IBUF_41,
      O => N193
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_6_IBUF_41,
      O => N194
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N193,
      I1 => w_in_6_IBUF_49,
      I2 => N194,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_6_IBUF_41,
      O => N196
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_6_IBUF_41,
      O => N197
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N196,
      I1 => w_in_6_IBUF_49,
      I2 => N197,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_6_IBUF_41,
      O => N199
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_6_IBUF_41,
      O => N200
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N199,
      I1 => w_in_6_IBUF_49,
      I2 => N200,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_6_IBUF_41,
      O => N202
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_6_IBUF_41,
      O => N203
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N202,
      I1 => w_in_6_IBUF_49,
      I2 => N203,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_6_IBUF_41,
      O => N205
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_6_IBUF_41,
      O => N206
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N205,
      I1 => w_in_6_IBUF_49,
      I2 => N206,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_6_IBUF_41,
      O => N208
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_6_IBUF_41,
      O => N209
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N208,
      I1 => w_in_6_IBUF_49,
      I2 => N209,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_6_IBUF_41,
      O => N211
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_6_IBUF_41,
      O => N212
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N211,
      I1 => w_in_6_IBUF_49,
      I2 => N212,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_6_IBUF_41,
      O => N214
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_6_IBUF_41,
      O => N215
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N214,
      I1 => w_in_6_IBUF_49,
      I2 => N215,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_6_IBUF_41,
      O => N217
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_6_IBUF_41,
      O => N218
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N217,
      I1 => w_in_6_IBUF_49,
      I2 => N218,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_6_IBUF_41,
      O => N220
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_6_IBUF_41,
      O => N221
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N220,
      I1 => w_in_6_IBUF_49,
      I2 => N221,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_6_IBUF_41,
      O => N223
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_6_IBUF_41,
      O => N224
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N223,
      I1 => w_in_6_IBUF_49,
      I2 => N224,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_6_IBUF_41,
      O => N226
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_6_IBUF_41,
      O => N227
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N226,
      I1 => w_in_6_IBUF_49,
      I2 => N227,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_6_IBUF_33,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_6_IBUF_41,
      O => N229
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_6_IBUF_41,
      O => N230
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N229,
      I1 => w_in_6_IBUF_49,
      I2 => N230,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_5_IBUF_42,
      O => N232
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_5_IBUF_42,
      O => N233
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N232,
      I1 => w_in_5_IBUF_50,
      I2 => N233,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_5_IBUF_42,
      O => N235
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_5_IBUF_42,
      O => N236
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N235,
      I1 => w_in_5_IBUF_50,
      I2 => N236,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_5_IBUF_42,
      O => N238
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_5_IBUF_42,
      O => N239
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N238,
      I1 => w_in_5_IBUF_50,
      I2 => N239,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_5_IBUF_42,
      O => N241
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_5_IBUF_42,
      O => N242
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N241,
      I1 => w_in_5_IBUF_50,
      I2 => N242,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_5_IBUF_42,
      O => N244
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_5_IBUF_42,
      O => N245
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N244,
      I1 => w_in_5_IBUF_50,
      I2 => N245,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_5_IBUF_42,
      O => N247
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_5_IBUF_42,
      O => N248
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N247,
      I1 => w_in_5_IBUF_50,
      I2 => N248,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_5_IBUF_42,
      O => N250
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_5_IBUF_42,
      O => N251
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N250,
      I1 => w_in_5_IBUF_50,
      I2 => N251,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_5_IBUF_42,
      O => N253
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_5_IBUF_42,
      O => N254
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N253,
      I1 => w_in_5_IBUF_50,
      I2 => N254,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_5_IBUF_42,
      O => N256
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_5_IBUF_42,
      O => N257
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N256,
      I1 => w_in_5_IBUF_50,
      I2 => N257,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_5_IBUF_42,
      O => N259
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_5_IBUF_42,
      O => N260
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N259,
      I1 => w_in_5_IBUF_50,
      I2 => N260,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_5_IBUF_42,
      O => N262
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_5_IBUF_42,
      O => N263
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N262,
      I1 => w_in_5_IBUF_50,
      I2 => N263,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_5_IBUF_42,
      O => N265
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_5_IBUF_42,
      O => N266
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N265,
      I1 => w_in_5_IBUF_50,
      I2 => N266,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_5_IBUF_42,
      O => N268
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_5_IBUF_42,
      O => N269
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N268,
      I1 => w_in_5_IBUF_50,
      I2 => N269,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_5_IBUF_42,
      O => N271
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_5_IBUF_42,
      O => N272
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N271,
      I1 => w_in_5_IBUF_50,
      I2 => N272,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_5_IBUF_42,
      O => N274
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_5_IBUF_42,
      O => N275
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N274,
      I1 => w_in_5_IBUF_50,
      I2 => N275,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_5_IBUF_34,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_5_IBUF_42,
      O => N277
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_5_IBUF_42,
      O => N278
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N277,
      I1 => w_in_5_IBUF_50,
      I2 => N278,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_4_IBUF_43,
      O => N280
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_4_IBUF_43,
      O => N281
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N280,
      I1 => w_in_4_IBUF_51,
      I2 => N281,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_4_IBUF_43,
      O => N283
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_4_IBUF_43,
      O => N284
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N283,
      I1 => w_in_4_IBUF_51,
      I2 => N284,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_4_IBUF_43,
      O => N286
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_4_IBUF_43,
      O => N287
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N286,
      I1 => w_in_4_IBUF_51,
      I2 => N287,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_4_IBUF_43,
      O => N289
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_4_IBUF_43,
      O => N290
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N289,
      I1 => w_in_4_IBUF_51,
      I2 => N290,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_4_IBUF_43,
      O => N292
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_4_IBUF_43,
      O => N293
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N292,
      I1 => w_in_4_IBUF_51,
      I2 => N293,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_4_IBUF_43,
      O => N295
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_4_IBUF_43,
      O => N296
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N295,
      I1 => w_in_4_IBUF_51,
      I2 => N296,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_4_IBUF_43,
      O => N298
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_4_IBUF_43,
      O => N299
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N298,
      I1 => w_in_4_IBUF_51,
      I2 => N299,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_4_IBUF_43,
      O => N301
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_4_IBUF_43,
      O => N302
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N301,
      I1 => w_in_4_IBUF_51,
      I2 => N302,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_4_IBUF_43,
      O => N304
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_4_IBUF_43,
      O => N305
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N304,
      I1 => w_in_4_IBUF_51,
      I2 => N305,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_4_IBUF_43,
      O => N307
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_4_IBUF_43,
      O => N308
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N307,
      I1 => w_in_4_IBUF_51,
      I2 => N308,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_4_IBUF_43,
      O => N310
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_4_IBUF_43,
      O => N311
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N310,
      I1 => w_in_4_IBUF_51,
      I2 => N311,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_4_IBUF_43,
      O => N313
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_4_IBUF_43,
      O => N314
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N313,
      I1 => w_in_4_IBUF_51,
      I2 => N314,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_4_IBUF_43,
      O => N316
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_4_IBUF_43,
      O => N317
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N316,
      I1 => w_in_4_IBUF_51,
      I2 => N317,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_4_IBUF_43,
      O => N319
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_4_IBUF_43,
      O => N320
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N319,
      I1 => w_in_4_IBUF_51,
      I2 => N320,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_4_IBUF_43,
      O => N322
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_4_IBUF_43,
      O => N323
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N322,
      I1 => w_in_4_IBUF_51,
      I2 => N323,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_4_IBUF_35,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_4_IBUF_43,
      O => N325
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_4_IBUF_43,
      O => N326
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N325,
      I1 => w_in_4_IBUF_51,
      I2 => N326,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_3_IBUF_44,
      O => N328
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_3_IBUF_44,
      O => N329
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N328,
      I1 => w_in_3_IBUF_52,
      I2 => N329,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_3_IBUF_44,
      O => N331
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_3_IBUF_44,
      O => N332
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N331,
      I1 => w_in_3_IBUF_52,
      I2 => N332,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_3_IBUF_44,
      O => N334
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_3_IBUF_44,
      O => N335
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N334,
      I1 => w_in_3_IBUF_52,
      I2 => N335,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_3_IBUF_44,
      O => N337
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_3_IBUF_44,
      O => N338
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N337,
      I1 => w_in_3_IBUF_52,
      I2 => N338,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_3_IBUF_44,
      O => N340
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_3_IBUF_44,
      O => N341
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N340,
      I1 => w_in_3_IBUF_52,
      I2 => N341,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_3_IBUF_44,
      O => N343
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_3_IBUF_44,
      O => N344
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N343,
      I1 => w_in_3_IBUF_52,
      I2 => N344,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_3_IBUF_44,
      O => N346
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_3_IBUF_44,
      O => N347
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N346,
      I1 => w_in_3_IBUF_52,
      I2 => N347,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_3_IBUF_44,
      O => N349
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_3_IBUF_44,
      O => N350
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N349,
      I1 => w_in_3_IBUF_52,
      I2 => N350,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_3_IBUF_44,
      O => N352
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_3_IBUF_44,
      O => N353
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N352,
      I1 => w_in_3_IBUF_52,
      I2 => N353,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_3_IBUF_44,
      O => N355
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_3_IBUF_44,
      O => N356
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N355,
      I1 => w_in_3_IBUF_52,
      I2 => N356,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_3_IBUF_44,
      O => N358
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_3_IBUF_44,
      O => N359
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N358,
      I1 => w_in_3_IBUF_52,
      I2 => N359,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_3_IBUF_44,
      O => N361
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_3_IBUF_44,
      O => N362
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N361,
      I1 => w_in_3_IBUF_52,
      I2 => N362,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_3_IBUF_44,
      O => N364
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_3_IBUF_44,
      O => N365
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N364,
      I1 => w_in_3_IBUF_52,
      I2 => N365,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_3_IBUF_44,
      O => N367
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_3_IBUF_44,
      O => N368
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N367,
      I1 => w_in_3_IBUF_52,
      I2 => N368,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_3_IBUF_44,
      O => N370
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_3_IBUF_44,
      O => N371
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N370,
      I1 => w_in_3_IBUF_52,
      I2 => N371,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_3_IBUF_36,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_3_IBUF_44,
      O => N373
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_3_IBUF_44,
      O => N374
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N373,
      I1 => w_in_3_IBUF_52,
      I2 => N374,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_2_IBUF_45,
      O => N376
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_2_IBUF_45,
      O => N377
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N376,
      I1 => w_in_2_IBUF_53,
      I2 => N377,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_2_IBUF_45,
      O => N379
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_2_IBUF_45,
      O => N380
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N379,
      I1 => w_in_2_IBUF_53,
      I2 => N380,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_2_IBUF_45,
      O => N382
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_2_IBUF_45,
      O => N383
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N382,
      I1 => w_in_2_IBUF_53,
      I2 => N383,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_2_IBUF_45,
      O => N385
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_2_IBUF_45,
      O => N386
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N385,
      I1 => w_in_2_IBUF_53,
      I2 => N386,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_2_IBUF_45,
      O => N388
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_2_IBUF_45,
      O => N389
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N388,
      I1 => w_in_2_IBUF_53,
      I2 => N389,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_2_IBUF_45,
      O => N391
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_2_IBUF_45,
      O => N392
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N391,
      I1 => w_in_2_IBUF_53,
      I2 => N392,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_2_IBUF_45,
      O => N394
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_2_IBUF_45,
      O => N395
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N394,
      I1 => w_in_2_IBUF_53,
      I2 => N395,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_2_IBUF_45,
      O => N397
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_2_IBUF_45,
      O => N398
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N397,
      I1 => w_in_2_IBUF_53,
      I2 => N398,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_2_IBUF_45,
      O => N400
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_2_IBUF_45,
      O => N401
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N400,
      I1 => w_in_2_IBUF_53,
      I2 => N401,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_2_IBUF_45,
      O => N403
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_2_IBUF_45,
      O => N404
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N403,
      I1 => w_in_2_IBUF_53,
      I2 => N404,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_2_IBUF_45,
      O => N406
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_2_IBUF_45,
      O => N407
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N406,
      I1 => w_in_2_IBUF_53,
      I2 => N407,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_2_IBUF_45,
      O => N409
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_2_IBUF_45,
      O => N410
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N409,
      I1 => w_in_2_IBUF_53,
      I2 => N410,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_2_IBUF_45,
      O => N412
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_2_IBUF_45,
      O => N413
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N412,
      I1 => w_in_2_IBUF_53,
      I2 => N413,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_2_IBUF_45,
      O => N415
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_2_IBUF_45,
      O => N416
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N415,
      I1 => w_in_2_IBUF_53,
      I2 => N416,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_2_IBUF_45,
      O => N418
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_2_IBUF_45,
      O => N419
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N418,
      I1 => w_in_2_IBUF_53,
      I2 => N419,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_2_IBUF_37,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_2_IBUF_45,
      O => N421
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_2_IBUF_45,
      O => N422
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N421,
      I1 => w_in_2_IBUF_53,
      I2 => N422,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_1_IBUF_46,
      O => N424
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_1_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_1_IBUF_46,
      O => N425
    );
  REGS_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N424,
      I1 => w_in_1_IBUF_54,
      I2 => N425,
      I3 => REGS_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_1_IBUF_46,
      O => N427
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_3_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_1_IBUF_46,
      O => N428
    );
  REGS_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N427,
      I1 => w_in_1_IBUF_54,
      I2 => N428,
      I3 => REGS_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_1_IBUF_46,
      O => N430
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_2_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_1_IBUF_46,
      O => N431
    );
  REGS_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N430,
      I1 => w_in_1_IBUF_54,
      I2 => N431,
      I3 => REGS_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_1_IBUF_46,
      O => N433
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_4_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_1_IBUF_46,
      O => N434
    );
  REGS_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N433,
      I1 => w_in_1_IBUF_54,
      I2 => N434,
      I3 => REGS_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_1_IBUF_46,
      O => N436
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_5_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_1_IBUF_46,
      O => N437
    );
  REGS_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N436,
      I1 => w_in_1_IBUF_54,
      I2 => N437,
      I3 => REGS_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_1_IBUF_46,
      O => N439
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_6_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_1_IBUF_46,
      O => N440
    );
  REGS_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N439,
      I1 => w_in_1_IBUF_54,
      I2 => N440,
      I3 => REGS_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_1_IBUF_46,
      O => N442
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_7_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_1_IBUF_46,
      O => N443
    );
  REGS_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N442,
      I1 => w_in_1_IBUF_54,
      I2 => N443,
      I3 => REGS_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_1_IBUF_46,
      O => N445
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_8_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_1_IBUF_46,
      O => N446
    );
  REGS_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N445,
      I1 => w_in_1_IBUF_54,
      I2 => N446,
      I3 => REGS_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_1_IBUF_46,
      O => N448
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_9_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_1_IBUF_46,
      O => N449
    );
  REGS_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N448,
      I1 => w_in_1_IBUF_54,
      I2 => N449,
      I3 => REGS_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_1_IBUF_46,
      O => N451
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_11_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_1_IBUF_46,
      O => N452
    );
  REGS_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N451,
      I1 => w_in_1_IBUF_54,
      I2 => N452,
      I3 => REGS_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_1_IBUF_46,
      O => N454
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_10_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_1_IBUF_46,
      O => N455
    );
  REGS_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N454,
      I1 => w_in_1_IBUF_54,
      I2 => N455,
      I3 => REGS_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_1_IBUF_46,
      O => N457
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_12_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_1_IBUF_46,
      O => N458
    );
  REGS_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N457,
      I1 => w_in_1_IBUF_54,
      I2 => N458,
      I3 => REGS_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_1_IBUF_46,
      O => N460
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_15_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_1_IBUF_46,
      O => N461
    );
  REGS_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N460,
      I1 => w_in_1_IBUF_54,
      I2 => N461,
      I3 => REGS_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_1_IBUF_46,
      O => N463
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_13_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_1_IBUF_46,
      O => N464
    );
  REGS_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N463,
      I1 => w_in_1_IBUF_54,
      I2 => N464,
      I3 => REGS_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_1_IBUF_46,
      O => N466
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_14_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_1_IBUF_46,
      O => N467
    );
  REGS_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N466,
      I1 => w_in_1_IBUF_54,
      I2 => N467,
      I3 => REGS_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT41_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_1_IBUF_38,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_1_IBUF_46,
      O => N469
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT41_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_1_IBUF_38,
      I1 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I2 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_1_IBUF_46,
      O => N470
    );
  REGS_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N469,
      I1 => w_in_1_IBUF_54,
      I2 => N470,
      I3 => REGS_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(1),
      O => REGS_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q
    );
  AUL_Mmux_res78_SW4 : LUT5
    generic map(
      INIT => X"77477444"
    )
    port map (
      I0 => S_R_tmp_s_out(7),
      I1 => ctrl_s_swap,
      I2 => reg_data1_out(7),
      I3 => N70,
      I4 => N69,
      O => N472
    );
  AUL_Mmux_res78_SW5 : LUT5
    generic map(
      INIT => X"77477444"
    )
    port map (
      I0 => S_R_tmp_s_out(7),
      I1 => ctrl_s_swap,
      I2 => reg_data1_out(7),
      I3 => N72,
      I4 => N71,
      O => N473
    );
  MUX_N_Mmux_bus_out81 : LUT6
    generic map(
      INIT => X"0808FB0808FBFBFB"
    )
    port map (
      I0 => n_in_7_IBUF_24,
      I1 => instr_21_IBUF_0,
      I2 => CTRL_enable_mask_OR_1_o,
      I3 => AUL_Mmux_res1_split(7),
      I4 => N473,
      I5 => N472,
      O => reg_data0(7)
    );
  REGS_Mmux_data1_out11 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_161,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_162,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_165,
      O => reg_data1_out(0)
    );
  REGS_Mmux_data1_out21 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_166,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_167,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71,
      O => reg_data1_out(1)
    );
  REGS_Mmux_data1_out31 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_171,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_172,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72,
      O => reg_data1_out(2)
    );
  REGS_Mmux_data1_out41 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_176,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_177,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73,
      O => reg_data1_out(3)
    );
  REGS_Mmux_data1_out51 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_181,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_182,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74,
      O => reg_data1_out(4)
    );
  MUX_ALU_Mmux_bus_out8 : LUT6
    generic map(
      INIT => X"0F4E03460C4C0044"
    )
    port map (
      I0 => N475,
      I1 => instr_10_IBUF_13,
      I2 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I3 => CTRL_enable_mask_OR_1_o1_980,
      I4 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_3_f77,
      I5 => REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77,
      O => alu_op2(7)
    );
  AUL_Mmux_res1_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_3_IBUF_20,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_0_Q,
      I5 => reg_data1_out(0),
      O => AUL_Mmux_res1_rs_lut(0)
    );
  AUL_Mmux_res1_rs_lut_1_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_4_IBUF_19,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_1_Q,
      I5 => reg_data1_out(1),
      O => AUL_Mmux_res1_rs_lut(1)
    );
  AUL_Mmux_res1_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_5_IBUF_18,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_2_Q,
      I5 => reg_data1_out(2),
      O => AUL_Mmux_res1_rs_lut(2)
    );
  AUL_Mmux_res1_rs_lut_3_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_6_IBUF_17,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_3_Q,
      I5 => reg_data1_out(3),
      O => AUL_Mmux_res1_rs_lut(3)
    );
  AUL_Mmux_res1_rs_lut_4_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_7_IBUF_16,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_4_Q,
      I5 => reg_data1_out(4),
      O => AUL_Mmux_res1_rs_lut(4)
    );
  REGS_Mmux_data1_out61 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_186,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_187,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75,
      O => reg_data1_out(5)
    );
  REGS_Mmux_data1_out71 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_191,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_192,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76,
      O => reg_data1_out(6)
    );
  AUL_Mmux_res1_rs_lut_5_Q : LUT6
    generic map(
      INIT => X"C366C3333C993CCC"
    )
    port map (
      I0 => REGS_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_8_IBUF_15,
      I3 => N477,
      I4 => REGS_adr2_3_REGS_15_7_wide_mux_142_OUT_5_Q,
      I5 => reg_data1_out(5),
      O => AUL_Mmux_res1_rs_lut(5)
    );
  AUL_Mmux_res714_SW0_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => AUL_Mmux_res1_split(0),
      O => N489
    );
  AUL_Mmux_res718 : LUT6
    generic map(
      INIT => X"DCCCCCCCDDDDDDDD"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => AUL_Mmux_res712_593,
      I2 => AUL_Mmux_res716_596,
      I3 => AUL_Mmux_res714,
      I4 => AUL_Mmux_res715_595,
      I5 => N489,
      O => AUL_Mmux_res717_597
    );
  MUX_ALU_Mmux_bus_out1_SW0 : LUT6
    generic map(
      INIT => X"0020002000000020"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_21_IBUF_0,
      I2 => instr_19_IBUF_2,
      I3 => instr_20_IBUF_1,
      I4 => instr_22_IBUF_8,
      I5 => ST_R_state_out_92,
      O => N477
    );
  REGS_Mmux_data1_out81 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => REGS_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_196,
      I4 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_197,
      I5 => REGS_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77,
      O => reg_data1_out(7)
    );
  AUL_Mmux_res7110_SW1 : MUXF7
    port map (
      I0 => N491,
      I1 => N492,
      S => ctrl_s_swap,
      O => N129
    );
  AUL_Mmux_res7110_SW1_F : LUT5
    generic map(
      INIT => X"2F222022"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => CTRL_enable_mask_OR_1_o,
      I3 => instr_21_IBUF_0,
      I4 => n_in_0_IBUF_31,
      O => N491
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT81 : MUXF7
    port map (
      I0 => N493,
      I1 => N494,
      S => AUL_Mmux_res1_split(7),
      O => S_R_tmp_s_in_7_s_in_7_mux_3_OUT_7_Q
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT81_F : LUT5
    generic map(
      INIT => X"AEBF0415"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => reg_data1_out(7),
      I2 => N70,
      I3 => N69,
      I4 => sr_in_7_IBUF_56,
      O => N493
    );
  S_R_Mmux_tmp_s_in_7_s_in_7_mux_3_OUT81_G : LUT5
    generic map(
      INIT => X"AEBF0415"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => reg_data1_out(7),
      I2 => N72,
      I3 => N71,
      I4 => sr_in_7_IBUF_56,
      O => N494
    );
  AUL_Mmux_res7110_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFB5551"
    )
    port map (
      I0 => instr_21_IBUF_0,
      I1 => instr_20_IBUF_1,
      I2 => instr_19_IBUF_2,
      I3 => S_R_tmp_s_out(0),
      I4 => n_in_0_IBUF_31,
      I5 => CTRL_enable_mask_OR_1_o,
      O => N130
    );
  CTRL_Mmux_reg_write21 : LUT6
    generic map(
      INIT => X"0000D000D0000000"
    )
    port map (
      I0 => instr_22_IBUF_8,
      I1 => ST_R_state_out_92,
      I2 => instr_23_IBUF_7,
      I3 => instr_21_IBUF_0,
      I4 => instr_19_IBUF_2,
      I5 => instr_20_IBUF_1,
      O => ctrl_reg_write(1)
    );
  CTRL_Mmux_reg_write11 : LUT6
    generic map(
      INIT => X"D0D0D0D0D000D0D0"
    )
    port map (
      I0 => instr_22_IBUF_8,
      I1 => ST_R_state_out_92,
      I2 => instr_23_IBUF_7,
      I3 => instr_20_IBUF_1,
      I4 => instr_21_IBUF_0,
      I5 => instr_19_IBUF_2,
      O => ctrl_reg_write(0)
    );
  S_R_n0020_inv1 : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => CTRL_enable_mask_OR_1_o,
      I1 => instr_21_IBUF_0,
      I2 => instr_20_IBUF_1,
      I3 => instr_19_IBUF_2,
      I4 => step_IBUF_66,
      O => S_R_n0020_inv
    );
  AUL_Mmux_res7110_SW0 : LUT6
    generic map(
      INIT => X"4040404051404040"
    )
    port map (
      I0 => CTRL_enable_mask_OR_1_o,
      I1 => instr_21_IBUF_0,
      I2 => n_in_0_IBUF_31,
      I3 => S_R_tmp_s_out(0),
      I4 => instr_20_IBUF_1,
      I5 => instr_19_IBUF_2,
      O => N128
    );
  REGS_n0602_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_17_IBUF_4,
      I2 => instr_16_IBUF_5,
      I3 => instr_15_IBUF_6,
      O => N41
    );
  REGS_n0646_inv_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N43
    );
  REGS_n0580_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_17_IBUF_4,
      I2 => instr_15_IBUF_6,
      I3 => instr_16_IBUF_5,
      O => N45
    );
  REGS_n0558_inv_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N47
    );
  REGS_n0514_inv_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_17_IBUF_4,
      I2 => instr_16_IBUF_5,
      I3 => instr_18_IBUF_3,
      O => N49
    );
  REGS_n0492_inv_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_17_IBUF_4,
      I2 => instr_15_IBUF_6,
      I3 => instr_18_IBUF_3,
      O => N51
    );
  REGS_n0536_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_16_IBUF_5,
      I2 => instr_15_IBUF_6,
      I3 => instr_17_IBUF_4,
      O => N53
    );
  REGS_n0426_inv_SW0 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_16_IBUF_5,
      I2 => instr_15_IBUF_6,
      I3 => instr_17_IBUF_4,
      O => N55
    );
  REGS_n0470_inv_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_18_IBUF_3,
      I3 => instr_17_IBUF_4,
      O => N57
    );
  REGS_n0382_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_17_IBUF_4,
      I1 => instr_16_IBUF_5,
      I2 => instr_15_IBUF_6,
      I3 => instr_18_IBUF_3,
      O => N59
    );
  REGS_n0360_inv_SW0 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_16_IBUF_5,
      O => N61
    );
  REGS_n0404_inv_SW0 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_16_IBUF_5,
      I3 => instr_17_IBUF_4,
      O => N63
    );
  REGS_n0338_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N65
    );
  REGS_n0316_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N67
    );
  REGS_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_2_f8_6_SW0 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => instr_19_IBUF_2,
      I1 => instr_21_IBUF_0,
      I2 => instr_20_IBUF_1,
      O => N475
    );
  AUL_Mmux_res7110_SW1_G : LUT6
    generic map(
      INIT => X"FBAAAAAA08AAAAAA"
    )
    port map (
      I0 => S_R_tmp_s_out(0),
      I1 => instr_22_IBUF_8,
      I2 => ST_R_state_out_92,
      I3 => instr_23_IBUF_7,
      I4 => instr_21_IBUF_0,
      I5 => n_in_0_IBUF_31,
      O => N492
    );
  CTRL_Mmux_s_swap11 : LUT6
    generic map(
      INIT => X"0020002000000020"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_21_IBUF_0,
      I2 => instr_20_IBUF_1,
      I3 => instr_19_IBUF_2,
      I4 => instr_22_IBUF_8,
      I5 => ST_R_state_out_92,
      O => ctrl_s_swap
    );
  CTRL_enable_mask_OR_1_o1_1 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_22_IBUF_8,
      I2 => ST_R_state_out_92,
      O => CTRL_enable_mask_OR_1_o1_980
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_64
    );
  AUL_Mmux_res723 : MUXF7
    port map (
      I0 => N495,
      I1 => N496,
      S => instr_2_IBUF_21,
      O => alu_res(1)
    );
  AUL_Mmux_res723_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(1),
      I3 => reg_data1_out(1),
      I4 => AUL_Mmux_res1_split(1),
      O => N495
    );
  AUL_Mmux_res723_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(1),
      I3 => reg_data1_out(1),
      I4 => reg_data1_out(0),
      I5 => reg_data1_out(2),
      O => N496
    );
  AUL_Mmux_res743 : MUXF7
    port map (
      I0 => N497,
      I1 => N498,
      S => instr_2_IBUF_21,
      O => alu_res(3)
    );
  AUL_Mmux_res743_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(3),
      I3 => reg_data1_out(3),
      I4 => AUL_Mmux_res1_split(3),
      O => N497
    );
  AUL_Mmux_res743_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(3),
      I3 => reg_data1_out(3),
      I4 => reg_data1_out(2),
      I5 => reg_data1_out(4),
      O => N498
    );
  AUL_Mmux_res733 : MUXF7
    port map (
      I0 => N499,
      I1 => N500,
      S => instr_2_IBUF_21,
      O => alu_res(2)
    );
  AUL_Mmux_res733_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(2),
      I3 => reg_data1_out(2),
      I4 => AUL_Mmux_res1_split(2),
      O => N499
    );
  AUL_Mmux_res733_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(2),
      I3 => reg_data1_out(2),
      I4 => reg_data1_out(1),
      I5 => reg_data1_out(3),
      O => N500
    );
  AUL_Mmux_res753 : MUXF7
    port map (
      I0 => N501,
      I1 => N502,
      S => instr_2_IBUF_21,
      O => alu_res(4)
    );
  AUL_Mmux_res753_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(4),
      I3 => reg_data1_out(4),
      I4 => AUL_Mmux_res1_split(4),
      O => N501
    );
  AUL_Mmux_res753_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(4),
      I3 => reg_data1_out(4),
      I4 => reg_data1_out(3),
      I5 => reg_data1_out(5),
      O => N502
    );
  AUL_Mmux_res773 : MUXF7
    port map (
      I0 => N503,
      I1 => N504,
      S => instr_2_IBUF_21,
      O => alu_res(6)
    );
  AUL_Mmux_res773_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(6),
      I3 => reg_data1_out(6),
      I4 => AUL_Mmux_res1_split(6),
      O => N503
    );
  AUL_Mmux_res773_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(6),
      I3 => reg_data1_out(6),
      I4 => reg_data1_out(5),
      I5 => reg_data1_out(7),
      O => N504
    );
  AUL_Mmux_res763 : MUXF7
    port map (
      I0 => N505,
      I1 => N506,
      S => instr_2_IBUF_21,
      O => alu_res(5)
    );
  AUL_Mmux_res763_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(5),
      I3 => reg_data1_out(5),
      I4 => AUL_Mmux_res1_split(5),
      O => N505
    );
  AUL_Mmux_res763_G : LUT6
    generic map(
      INIT => X"DDDC999855541110"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => alu_op2(5),
      I3 => reg_data1_out(5),
      I4 => reg_data1_out(4),
      I5 => reg_data1_out(6),
      O => N506
    );

end Structure;

