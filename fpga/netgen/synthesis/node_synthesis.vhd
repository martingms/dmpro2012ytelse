--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: node_synthesis.vhd
-- /___/   /\     Timestamp: Wed Oct 31 08:22:33 2012
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
    node_state : out STD_LOGIC; 
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
  signal STATE_state_out_139 : STD_LOGIC; 
  signal ctrl_set_state : STD_LOGIC; 
  signal ctrl_s_swap : STD_LOGIC; 
  signal CONTROL_disable_mask_OR_1_o : STD_LOGIC; 
  signal NODE_COM_n0051_inv : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_N67 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_194 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_195 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_196 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_197 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_198 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_199 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_200 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_201 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_203 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_204 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_206 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_207 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_209 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_210 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_212 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_213 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_215 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_216 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_218 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_219 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_221 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_222 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_224 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_225 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_227 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_228 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_230 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_231 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_233 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_234 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_236 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_237 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_239 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_240 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_242 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_243 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_244 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_245 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_246 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_247 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_248 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_249 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_250 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_252 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_253 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_254 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_255 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_257 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_258 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_259 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_260 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_262 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_263 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_264 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_265 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_267 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_268 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_269 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_270 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_272 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_273 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_274 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_275 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_277 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_278 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_279 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_280 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_282 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_283 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_284 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_285 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_286 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_287 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_288 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_289 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_291 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_292 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_294 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_295 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_297 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_298 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_300 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_301 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_303 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_304 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_306 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_307 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_309 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_310 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_312 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_313 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_315 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_316 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_318 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_319 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_321 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_322 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_324 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_325 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_327 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_328 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_330 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_331 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_332 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_333 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_334 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_335 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_336 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_337 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_338 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_340 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_341 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_342 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_343 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_345 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_346 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_348 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_349 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_351 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_352 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_354 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_355 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_357 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_358 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_360 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_361 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_363 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_364 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_366 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_367 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_369 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_370 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_372 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_373 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_n0624_inv : STD_LOGIC; 
  signal NODE_REG_n0602_inv_376 : STD_LOGIC; 
  signal NODE_REG_n0646_inv_377 : STD_LOGIC; 
  signal NODE_REG_n0580_inv_378 : STD_LOGIC; 
  signal NODE_REG_n0558_inv_379 : STD_LOGIC; 
  signal NODE_REG_n0514_inv_380 : STD_LOGIC; 
  signal NODE_REG_n0492_inv_381 : STD_LOGIC; 
  signal NODE_REG_n0536_inv_382 : STD_LOGIC; 
  signal NODE_REG_n0448_inv_383 : STD_LOGIC; 
  signal NODE_REG_n0426_inv_384 : STD_LOGIC; 
  signal NODE_REG_n0470_inv_385 : STD_LOGIC; 
  signal NODE_REG_n0382_inv_386 : STD_LOGIC; 
  signal NODE_REG_n0360_inv_387 : STD_LOGIC; 
  signal NODE_REG_n0404_inv_388 : STD_LOGIC; 
  signal NODE_REG_n0338_inv_389 : STD_LOGIC; 
  signal NODE_REG_n0316_inv_390 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_Decoder_70_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_9_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_10_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_11_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_12_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_13_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_14_Q : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_15_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_9_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_10_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_11_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_12_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_13_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_14_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_15_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_9_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_10_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_11_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_12_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_13_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_14_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_15_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q : STD_LOGIC; 
  signal NODE_S_REG_n0028_inv : STD_LOGIC; 
  signal NODE_S_REG_n0027_inv : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q : STD_LOGIC; 
  signal NODE_ALU_N8 : STD_LOGIC; 
  signal NODE_ALU_op1_7_op2_7_LessThan_4_o2_735 : STD_LOGIC; 
  signal NODE_ALU_op1_7_op2_7_LessThan_4_o1_736 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res72 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res721_776 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res71 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res711_782 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res712_783 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res714 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res715_785 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res716_786 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res717_787 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res718_788 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N192 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N345 : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal CONTROL_disable_mask_OR_1_o1_1108 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
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
  signal N507 : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21 : STD_LOGIC; 
  signal NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_1184 : STD_LOGIC; 
  signal NODE_COM_n_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_s_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_e_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_w_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data1_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data2_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_S_REG_tmp_s_new : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_S_REG_tmp_s_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ctrl_reg_write : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal ctrl_com : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal alu_res : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal alu_op2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_15 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_9 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_11 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_S_REG_tmp_s : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_ALU_Mmux_res1_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_ALU_Mmux_res1_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal NODE_ALU_Mmux_res1_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  STATE_state_out : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => ctrl_set_state,
      CLR => reset_IBUF_65,
      D => reg_data0(0),
      Q => STATE_state_out_139
    );
  NODE_COM_n_out_7 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q,
      Q => NODE_COM_n_out(7)
    );
  NODE_COM_n_out_6 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q,
      Q => NODE_COM_n_out(6)
    );
  NODE_COM_n_out_5 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q,
      Q => NODE_COM_n_out(5)
    );
  NODE_COM_n_out_4 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q,
      Q => NODE_COM_n_out(4)
    );
  NODE_COM_n_out_3 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q,
      Q => NODE_COM_n_out(3)
    );
  NODE_COM_n_out_2 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q,
      Q => NODE_COM_n_out(2)
    );
  NODE_COM_n_out_1 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q,
      Q => NODE_COM_n_out(1)
    );
  NODE_COM_n_out_0 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q,
      Q => NODE_COM_n_out(0)
    );
  NODE_COM_w_out_7 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q,
      Q => NODE_COM_w_out(7)
    );
  NODE_COM_w_out_6 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q,
      Q => NODE_COM_w_out(6)
    );
  NODE_COM_w_out_5 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q,
      Q => NODE_COM_w_out(5)
    );
  NODE_COM_w_out_4 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q,
      Q => NODE_COM_w_out(4)
    );
  NODE_COM_w_out_3 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q,
      Q => NODE_COM_w_out(3)
    );
  NODE_COM_w_out_2 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q,
      Q => NODE_COM_w_out(2)
    );
  NODE_COM_w_out_1 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q,
      Q => NODE_COM_w_out(1)
    );
  NODE_COM_w_out_0 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q,
      Q => NODE_COM_w_out(0)
    );
  NODE_COM_e_out_7 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q,
      Q => NODE_COM_e_out(7)
    );
  NODE_COM_e_out_6 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q,
      Q => NODE_COM_e_out(6)
    );
  NODE_COM_e_out_5 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q,
      Q => NODE_COM_e_out(5)
    );
  NODE_COM_e_out_4 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q,
      Q => NODE_COM_e_out(4)
    );
  NODE_COM_e_out_3 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q,
      Q => NODE_COM_e_out(3)
    );
  NODE_COM_e_out_2 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q,
      Q => NODE_COM_e_out(2)
    );
  NODE_COM_e_out_1 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q,
      Q => NODE_COM_e_out(1)
    );
  NODE_COM_e_out_0 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q,
      Q => NODE_COM_e_out(0)
    );
  NODE_COM_s_out_7 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q,
      Q => NODE_COM_s_out(7)
    );
  NODE_COM_s_out_6 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q,
      Q => NODE_COM_s_out(6)
    );
  NODE_COM_s_out_5 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q,
      Q => NODE_COM_s_out(5)
    );
  NODE_COM_s_out_4 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q,
      Q => NODE_COM_s_out(4)
    );
  NODE_COM_s_out_3 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q,
      Q => NODE_COM_s_out(3)
    );
  NODE_COM_s_out_2 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q,
      Q => NODE_COM_s_out(2)
    );
  NODE_COM_s_out_1 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q,
      Q => NODE_COM_s_out(1)
    );
  NODE_COM_s_out_0 : FDCE
    port map (
      C => clk_BUFGP_64,
      CE => NODE_COM_n0051_inv,
      CLR => reset_IBUF_65,
      D => NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q,
      Q => NODE_COM_s_out(0)
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(0),
      I3 => NODE_REG_REGS_15(0),
      I4 => NODE_REG_REGS_13(0),
      I5 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_194
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(0),
      I3 => NODE_REG_REGS_11(0),
      I4 => NODE_REG_REGS_9(0),
      I5 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_195
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_195,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_194,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_196
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(0),
      I3 => NODE_REG_REGS_7(0),
      I4 => NODE_REG_REGS_5(0),
      I5 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_197
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(0),
      I3 => NODE_REG_REGS_3(0),
      I4 => NODE_REG_REGS_1(0),
      I5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_198
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_198,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_197,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_199
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_199,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_196,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(1),
      I3 => NODE_REG_REGS_15(1),
      I4 => NODE_REG_REGS_13(1),
      I5 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_200
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(1),
      I3 => NODE_REG_REGS_11(1),
      I4 => NODE_REG_REGS_9(1),
      I5 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_201
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_201,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_200,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(1),
      I3 => NODE_REG_REGS_7(1),
      I4 => NODE_REG_REGS_5(1),
      I5 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_203
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(1),
      I3 => NODE_REG_REGS_3(1),
      I4 => NODE_REG_REGS_1(1),
      I5 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_204
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_204,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_203,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_0 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(2),
      I3 => NODE_REG_REGS_15(2),
      I4 => NODE_REG_REGS_13(2),
      I5 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_206
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(2),
      I3 => NODE_REG_REGS_11(2),
      I4 => NODE_REG_REGS_9(2),
      I5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_207
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_207,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_206,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(2),
      I3 => NODE_REG_REGS_7(2),
      I4 => NODE_REG_REGS_5(2),
      I5 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_209
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(2),
      I3 => NODE_REG_REGS_3(2),
      I4 => NODE_REG_REGS_1(2),
      I5 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_210
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_210,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_209,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_1 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(3),
      I3 => NODE_REG_REGS_15(3),
      I4 => NODE_REG_REGS_13(3),
      I5 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_212
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(3),
      I3 => NODE_REG_REGS_11(3),
      I4 => NODE_REG_REGS_9(3),
      I5 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_213
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_213,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_212,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(3),
      I3 => NODE_REG_REGS_7(3),
      I4 => NODE_REG_REGS_5(3),
      I5 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_215
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(3),
      I3 => NODE_REG_REGS_3(3),
      I4 => NODE_REG_REGS_1(3),
      I5 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_216
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_216,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_215,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_2 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(4),
      I3 => NODE_REG_REGS_15(4),
      I4 => NODE_REG_REGS_13(4),
      I5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_218
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(4),
      I3 => NODE_REG_REGS_11(4),
      I4 => NODE_REG_REGS_9(4),
      I5 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_219
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_219,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_218,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(4),
      I3 => NODE_REG_REGS_7(4),
      I4 => NODE_REG_REGS_5(4),
      I5 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_221
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(4),
      I3 => NODE_REG_REGS_3(4),
      I4 => NODE_REG_REGS_1(4),
      I5 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_222
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_222,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_221,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_3 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(5),
      I3 => NODE_REG_REGS_15(5),
      I4 => NODE_REG_REGS_13(5),
      I5 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_224
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(5),
      I3 => NODE_REG_REGS_11(5),
      I4 => NODE_REG_REGS_9(5),
      I5 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_225
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_225,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_224,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(5),
      I3 => NODE_REG_REGS_7(5),
      I4 => NODE_REG_REGS_5(5),
      I5 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_227
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(5),
      I3 => NODE_REG_REGS_3(5),
      I4 => NODE_REG_REGS_1(5),
      I5 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_228
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_228,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_227,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_4 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(6),
      I3 => NODE_REG_REGS_15(6),
      I4 => NODE_REG_REGS_13(6),
      I5 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_230
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(6),
      I3 => NODE_REG_REGS_11(6),
      I4 => NODE_REG_REGS_9(6),
      I5 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_231
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_231,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_230,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(6),
      I3 => NODE_REG_REGS_7(6),
      I4 => NODE_REG_REGS_5(6),
      I5 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_233
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(6),
      I3 => NODE_REG_REGS_3(6),
      I4 => NODE_REG_REGS_1(6),
      I5 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_234
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_234,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_233,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_5 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_14(7),
      I3 => NODE_REG_REGS_15(7),
      I4 => NODE_REG_REGS_13(7),
      I5 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_236
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_10(7),
      I3 => NODE_REG_REGS_11(7),
      I4 => NODE_REG_REGS_9(7),
      I5 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_237
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_237,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_236,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_6(7),
      I3 => NODE_REG_REGS_7(7),
      I4 => NODE_REG_REGS_5(7),
      I5 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_239
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => NODE_REG_REGS_2(7),
      I3 => NODE_REG_REGS_3(7),
      I4 => NODE_REG_REGS_1(7),
      I5 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_240
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_240,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_239,
      S => instr_5_IBUF_18,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_6 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77,
      I1 => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77,
      S => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(0),
      I3 => NODE_REG_REGS_15(0),
      I4 => NODE_REG_REGS_13(0),
      I5 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_242
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(0),
      I3 => NODE_REG_REGS_11(0),
      I4 => NODE_REG_REGS_9(0),
      I5 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_243
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(0),
      I3 => NODE_REG_REGS_7(0),
      I4 => NODE_REG_REGS_5(0),
      I5 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_244
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(0),
      I3 => NODE_REG_REGS_3(0),
      I4 => NODE_REG_REGS_1(0),
      I5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_245
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_245,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_244,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_246
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(1),
      I3 => NODE_REG_REGS_15(1),
      I4 => NODE_REG_REGS_13(1),
      I5 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_247
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(1),
      I3 => NODE_REG_REGS_11(1),
      I4 => NODE_REG_REGS_9(1),
      I5 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_248
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(1),
      I3 => NODE_REG_REGS_7(1),
      I4 => NODE_REG_REGS_5(1),
      I5 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_249
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(1),
      I3 => NODE_REG_REGS_3(1),
      I4 => NODE_REG_REGS_1(1),
      I5 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_250
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_250,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_249,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(2),
      I3 => NODE_REG_REGS_15(2),
      I4 => NODE_REG_REGS_13(2),
      I5 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_252
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(2),
      I3 => NODE_REG_REGS_11(2),
      I4 => NODE_REG_REGS_9(2),
      I5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_253
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(2),
      I3 => NODE_REG_REGS_7(2),
      I4 => NODE_REG_REGS_5(2),
      I5 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_254
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(2),
      I3 => NODE_REG_REGS_3(2),
      I4 => NODE_REG_REGS_1(2),
      I5 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_255
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_255,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_254,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(3),
      I3 => NODE_REG_REGS_15(3),
      I4 => NODE_REG_REGS_13(3),
      I5 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_257
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(3),
      I3 => NODE_REG_REGS_11(3),
      I4 => NODE_REG_REGS_9(3),
      I5 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_258
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(3),
      I3 => NODE_REG_REGS_7(3),
      I4 => NODE_REG_REGS_5(3),
      I5 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_259
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(3),
      I3 => NODE_REG_REGS_3(3),
      I4 => NODE_REG_REGS_1(3),
      I5 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_260
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_260,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_259,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(4),
      I3 => NODE_REG_REGS_15(4),
      I4 => NODE_REG_REGS_13(4),
      I5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_262
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(4),
      I3 => NODE_REG_REGS_11(4),
      I4 => NODE_REG_REGS_9(4),
      I5 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_263
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(4),
      I3 => NODE_REG_REGS_7(4),
      I4 => NODE_REG_REGS_5(4),
      I5 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_264
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(4),
      I3 => NODE_REG_REGS_3(4),
      I4 => NODE_REG_REGS_1(4),
      I5 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_265
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_265,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_264,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(5),
      I3 => NODE_REG_REGS_15(5),
      I4 => NODE_REG_REGS_13(5),
      I5 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_267
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(5),
      I3 => NODE_REG_REGS_11(5),
      I4 => NODE_REG_REGS_9(5),
      I5 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_268
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(5),
      I3 => NODE_REG_REGS_7(5),
      I4 => NODE_REG_REGS_5(5),
      I5 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_269
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(5),
      I3 => NODE_REG_REGS_3(5),
      I4 => NODE_REG_REGS_1(5),
      I5 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_270
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_270,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_269,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(6),
      I3 => NODE_REG_REGS_15(6),
      I4 => NODE_REG_REGS_13(6),
      I5 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_272
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(6),
      I3 => NODE_REG_REGS_11(6),
      I4 => NODE_REG_REGS_9(6),
      I5 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_273
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(6),
      I3 => NODE_REG_REGS_7(6),
      I4 => NODE_REG_REGS_5(6),
      I5 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_274
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(6),
      I3 => NODE_REG_REGS_3(6),
      I4 => NODE_REG_REGS_1(6),
      I5 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_275
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_275,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_274,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_14(7),
      I3 => NODE_REG_REGS_15(7),
      I4 => NODE_REG_REGS_13(7),
      I5 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_277
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_10(7),
      I3 => NODE_REG_REGS_11(7),
      I4 => NODE_REG_REGS_9(7),
      I5 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_278
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_6(7),
      I3 => NODE_REG_REGS_7(7),
      I4 => NODE_REG_REGS_5(7),
      I5 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_279
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => NODE_REG_REGS_2(7),
      I3 => NODE_REG_REGS_3(7),
      I4 => NODE_REG_REGS_1(7),
      I5 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_280
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_280,
      I1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_279,
      S => instr_9_IBUF_14,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(0),
      I3 => NODE_REG_REGS_15(0),
      I4 => NODE_REG_REGS_13(0),
      I5 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_282
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(0),
      I3 => NODE_REG_REGS_11(0),
      I4 => NODE_REG_REGS_9(0),
      I5 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_283
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_283,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_282,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_284
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(0),
      I3 => NODE_REG_REGS_7(0),
      I4 => NODE_REG_REGS_5(0),
      I5 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_285
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(0),
      I3 => NODE_REG_REGS_3(0),
      I4 => NODE_REG_REGS_1(0),
      I5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_286
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_286,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_285,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_287
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_287,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_284,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(1),
      I3 => NODE_REG_REGS_15(1),
      I4 => NODE_REG_REGS_13(1),
      I5 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_288
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(1),
      I3 => NODE_REG_REGS_11(1),
      I4 => NODE_REG_REGS_9(1),
      I5 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_289
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_289,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_288,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(1),
      I3 => NODE_REG_REGS_7(1),
      I4 => NODE_REG_REGS_5(1),
      I5 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_291
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(1),
      I3 => NODE_REG_REGS_3(1),
      I4 => NODE_REG_REGS_1(1),
      I5 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_292
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_292,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_291,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_0 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(2),
      I3 => NODE_REG_REGS_15(2),
      I4 => NODE_REG_REGS_13(2),
      I5 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_294
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(2),
      I3 => NODE_REG_REGS_11(2),
      I4 => NODE_REG_REGS_9(2),
      I5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_295
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_295,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_294,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(2),
      I3 => NODE_REG_REGS_7(2),
      I4 => NODE_REG_REGS_5(2),
      I5 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_297
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(2),
      I3 => NODE_REG_REGS_3(2),
      I4 => NODE_REG_REGS_1(2),
      I5 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_298
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_298,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_297,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_1 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(3),
      I3 => NODE_REG_REGS_15(3),
      I4 => NODE_REG_REGS_13(3),
      I5 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_300
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(3),
      I3 => NODE_REG_REGS_11(3),
      I4 => NODE_REG_REGS_9(3),
      I5 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_301
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_301,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_300,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(3),
      I3 => NODE_REG_REGS_7(3),
      I4 => NODE_REG_REGS_5(3),
      I5 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_303
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(3),
      I3 => NODE_REG_REGS_3(3),
      I4 => NODE_REG_REGS_1(3),
      I5 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_304
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_304,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_303,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_2 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(4),
      I3 => NODE_REG_REGS_15(4),
      I4 => NODE_REG_REGS_13(4),
      I5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_306
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(4),
      I3 => NODE_REG_REGS_11(4),
      I4 => NODE_REG_REGS_9(4),
      I5 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_307
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_307,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_306,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(4),
      I3 => NODE_REG_REGS_7(4),
      I4 => NODE_REG_REGS_5(4),
      I5 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_309
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(4),
      I3 => NODE_REG_REGS_3(4),
      I4 => NODE_REG_REGS_1(4),
      I5 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_310
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_310,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_309,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_3 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(5),
      I3 => NODE_REG_REGS_15(5),
      I4 => NODE_REG_REGS_13(5),
      I5 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_312
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(5),
      I3 => NODE_REG_REGS_11(5),
      I4 => NODE_REG_REGS_9(5),
      I5 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_313
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_313,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_312,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(5),
      I3 => NODE_REG_REGS_7(5),
      I4 => NODE_REG_REGS_5(5),
      I5 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_315
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(5),
      I3 => NODE_REG_REGS_3(5),
      I4 => NODE_REG_REGS_1(5),
      I5 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_316
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_316,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_315,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_4 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(6),
      I3 => NODE_REG_REGS_15(6),
      I4 => NODE_REG_REGS_13(6),
      I5 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_318
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(6),
      I3 => NODE_REG_REGS_11(6),
      I4 => NODE_REG_REGS_9(6),
      I5 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_319
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_319,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_318,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(6),
      I3 => NODE_REG_REGS_7(6),
      I4 => NODE_REG_REGS_5(6),
      I5 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_321
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(6),
      I3 => NODE_REG_REGS_3(6),
      I4 => NODE_REG_REGS_1(6),
      I5 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_322
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_322,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_321,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_5 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_14(7),
      I3 => NODE_REG_REGS_15(7),
      I4 => NODE_REG_REGS_13(7),
      I5 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_324
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_10(7),
      I3 => NODE_REG_REGS_11(7),
      I4 => NODE_REG_REGS_9(7),
      I5 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_325
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_325,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_324,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_6(7),
      I3 => NODE_REG_REGS_7(7),
      I4 => NODE_REG_REGS_5(7),
      I5 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_327
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => NODE_REG_REGS_2(7),
      I3 => NODE_REG_REGS_3(7),
      I4 => NODE_REG_REGS_1(7),
      I5 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_328
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_328,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_327,
      S => instr_17_IBUF_4,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_6 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77,
      I1 => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77,
      S => instr_18_IBUF_3,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(0),
      I3 => NODE_REG_REGS_15(0),
      I4 => NODE_REG_REGS_13(0),
      I5 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_330
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(0),
      I3 => NODE_REG_REGS_11(0),
      I4 => NODE_REG_REGS_9(0),
      I5 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_331
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(0),
      I3 => NODE_REG_REGS_7(0),
      I4 => NODE_REG_REGS_5(0),
      I5 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_332
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(0),
      I3 => NODE_REG_REGS_3(0),
      I4 => NODE_REG_REGS_1(0),
      I5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_333
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_333,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_332,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_334
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(1),
      I3 => NODE_REG_REGS_15(1),
      I4 => NODE_REG_REGS_13(1),
      I5 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_335
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(1),
      I3 => NODE_REG_REGS_11(1),
      I4 => NODE_REG_REGS_9(1),
      I5 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_336
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(1),
      I3 => NODE_REG_REGS_7(1),
      I4 => NODE_REG_REGS_5(1),
      I5 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_337
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(1),
      I3 => NODE_REG_REGS_3(1),
      I4 => NODE_REG_REGS_1(1),
      I5 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_338
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_0 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_338,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_337,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(2),
      I3 => NODE_REG_REGS_15(2),
      I4 => NODE_REG_REGS_13(2),
      I5 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_340
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(2),
      I3 => NODE_REG_REGS_11(2),
      I4 => NODE_REG_REGS_9(2),
      I5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_341
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(2),
      I3 => NODE_REG_REGS_7(2),
      I4 => NODE_REG_REGS_5(2),
      I5 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_342
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(2),
      I3 => NODE_REG_REGS_3(2),
      I4 => NODE_REG_REGS_1(2),
      I5 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_343
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_1 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_343,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_342,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(3),
      I3 => NODE_REG_REGS_15(3),
      I4 => NODE_REG_REGS_13(3),
      I5 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_345
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(3),
      I3 => NODE_REG_REGS_11(3),
      I4 => NODE_REG_REGS_9(3),
      I5 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_346
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_346,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_345,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(3),
      I3 => NODE_REG_REGS_7(3),
      I4 => NODE_REG_REGS_5(3),
      I5 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_348
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(3),
      I3 => NODE_REG_REGS_3(3),
      I4 => NODE_REG_REGS_1(3),
      I5 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_349
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_2 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_349,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_348,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_2 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73,
      S => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(4),
      I3 => NODE_REG_REGS_15(4),
      I4 => NODE_REG_REGS_13(4),
      I5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_351
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(4),
      I3 => NODE_REG_REGS_11(4),
      I4 => NODE_REG_REGS_9(4),
      I5 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_352
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_352,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_351,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(4),
      I3 => NODE_REG_REGS_7(4),
      I4 => NODE_REG_REGS_5(4),
      I5 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_354
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(4),
      I3 => NODE_REG_REGS_3(4),
      I4 => NODE_REG_REGS_1(4),
      I5 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_355
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_3 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_355,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_354,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_3 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74,
      S => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(5),
      I3 => NODE_REG_REGS_15(5),
      I4 => NODE_REG_REGS_13(5),
      I5 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_357
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(5),
      I3 => NODE_REG_REGS_11(5),
      I4 => NODE_REG_REGS_9(5),
      I5 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_358
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_358,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_357,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(5),
      I3 => NODE_REG_REGS_7(5),
      I4 => NODE_REG_REGS_5(5),
      I5 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_360
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(5),
      I3 => NODE_REG_REGS_3(5),
      I4 => NODE_REG_REGS_1(5),
      I5 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_361
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_4 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_361,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_360,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_4 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75,
      S => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(6),
      I3 => NODE_REG_REGS_15(6),
      I4 => NODE_REG_REGS_13(6),
      I5 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_363
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(6),
      I3 => NODE_REG_REGS_11(6),
      I4 => NODE_REG_REGS_9(6),
      I5 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_364
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_364,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_363,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(6),
      I3 => NODE_REG_REGS_7(6),
      I4 => NODE_REG_REGS_5(6),
      I5 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_366
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(6),
      I3 => NODE_REG_REGS_3(6),
      I4 => NODE_REG_REGS_1(6),
      I5 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_367
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_367,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_366,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_5 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76,
      S => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_14(7),
      I3 => NODE_REG_REGS_15(7),
      I4 => NODE_REG_REGS_13(7),
      I5 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_369
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_10(7),
      I3 => NODE_REG_REGS_11(7),
      I4 => NODE_REG_REGS_9(7),
      I5 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_370
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_370,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_369,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_6(7),
      I3 => NODE_REG_REGS_7(7),
      I4 => NODE_REG_REGS_5(7),
      I5 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_372
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => NODE_REG_REGS_2(7),
      I3 => NODE_REG_REGS_3(7),
      I4 => NODE_REG_REGS_1(7),
      I5 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_373
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_6 : MUXF7
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_373,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_372,
      S => instr_13_IBUF_10,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_6 : MUXF8
    port map (
      I0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77,
      I1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77,
      S => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q
    );
  NODE_REG_REGS_0_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q,
      Q => NODE_REG_REGS_0(7)
    );
  NODE_REG_REGS_0_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q,
      Q => NODE_REG_REGS_0(6)
    );
  NODE_REG_REGS_0_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q,
      Q => NODE_REG_REGS_0(5)
    );
  NODE_REG_REGS_0_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q,
      Q => NODE_REG_REGS_0(4)
    );
  NODE_REG_REGS_0_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q,
      Q => NODE_REG_REGS_0(3)
    );
  NODE_REG_REGS_0_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q,
      Q => NODE_REG_REGS_0(2)
    );
  NODE_REG_REGS_0_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q,
      Q => NODE_REG_REGS_0(1)
    );
  NODE_REG_REGS_0_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0624_inv,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q,
      Q => NODE_REG_REGS_0(0)
    );
  NODE_REG_REGS_1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q,
      Q => NODE_REG_REGS_1(7)
    );
  NODE_REG_REGS_1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q,
      Q => NODE_REG_REGS_1(6)
    );
  NODE_REG_REGS_1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q,
      Q => NODE_REG_REGS_1(5)
    );
  NODE_REG_REGS_1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q,
      Q => NODE_REG_REGS_1(4)
    );
  NODE_REG_REGS_1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q,
      Q => NODE_REG_REGS_1(3)
    );
  NODE_REG_REGS_1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q,
      Q => NODE_REG_REGS_1(2)
    );
  NODE_REG_REGS_1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q,
      Q => NODE_REG_REGS_1(1)
    );
  NODE_REG_REGS_1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0602_inv_376,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q,
      Q => NODE_REG_REGS_1(0)
    );
  NODE_REG_REGS_15_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q,
      Q => NODE_REG_REGS_15(7)
    );
  NODE_REG_REGS_15_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q,
      Q => NODE_REG_REGS_15(6)
    );
  NODE_REG_REGS_15_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q,
      Q => NODE_REG_REGS_15(5)
    );
  NODE_REG_REGS_15_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q,
      Q => NODE_REG_REGS_15(4)
    );
  NODE_REG_REGS_15_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q,
      Q => NODE_REG_REGS_15(3)
    );
  NODE_REG_REGS_15_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q,
      Q => NODE_REG_REGS_15(2)
    );
  NODE_REG_REGS_15_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q,
      Q => NODE_REG_REGS_15(1)
    );
  NODE_REG_REGS_15_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0646_inv_377,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q,
      Q => NODE_REG_REGS_15(0)
    );
  NODE_REG_REGS_2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q,
      Q => NODE_REG_REGS_2(7)
    );
  NODE_REG_REGS_2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q,
      Q => NODE_REG_REGS_2(6)
    );
  NODE_REG_REGS_2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q,
      Q => NODE_REG_REGS_2(5)
    );
  NODE_REG_REGS_2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q,
      Q => NODE_REG_REGS_2(4)
    );
  NODE_REG_REGS_2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q,
      Q => NODE_REG_REGS_2(3)
    );
  NODE_REG_REGS_2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q,
      Q => NODE_REG_REGS_2(2)
    );
  NODE_REG_REGS_2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q,
      Q => NODE_REG_REGS_2(1)
    );
  NODE_REG_REGS_2_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0580_inv_378,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q,
      Q => NODE_REG_REGS_2(0)
    );
  NODE_REG_REGS_3_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q,
      Q => NODE_REG_REGS_3(7)
    );
  NODE_REG_REGS_3_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q,
      Q => NODE_REG_REGS_3(6)
    );
  NODE_REG_REGS_3_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q,
      Q => NODE_REG_REGS_3(5)
    );
  NODE_REG_REGS_3_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q,
      Q => NODE_REG_REGS_3(4)
    );
  NODE_REG_REGS_3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q,
      Q => NODE_REG_REGS_3(3)
    );
  NODE_REG_REGS_3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q,
      Q => NODE_REG_REGS_3(2)
    );
  NODE_REG_REGS_3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q,
      Q => NODE_REG_REGS_3(1)
    );
  NODE_REG_REGS_3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0558_inv_379,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q,
      Q => NODE_REG_REGS_3(0)
    );
  NODE_REG_REGS_5_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q,
      Q => NODE_REG_REGS_5(7)
    );
  NODE_REG_REGS_5_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q,
      Q => NODE_REG_REGS_5(6)
    );
  NODE_REG_REGS_5_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q,
      Q => NODE_REG_REGS_5(5)
    );
  NODE_REG_REGS_5_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q,
      Q => NODE_REG_REGS_5(4)
    );
  NODE_REG_REGS_5_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q,
      Q => NODE_REG_REGS_5(3)
    );
  NODE_REG_REGS_5_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q,
      Q => NODE_REG_REGS_5(2)
    );
  NODE_REG_REGS_5_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q,
      Q => NODE_REG_REGS_5(1)
    );
  NODE_REG_REGS_5_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0514_inv_380,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q,
      Q => NODE_REG_REGS_5(0)
    );
  NODE_REG_REGS_6_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q,
      Q => NODE_REG_REGS_6(7)
    );
  NODE_REG_REGS_6_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q,
      Q => NODE_REG_REGS_6(6)
    );
  NODE_REG_REGS_6_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q,
      Q => NODE_REG_REGS_6(5)
    );
  NODE_REG_REGS_6_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q,
      Q => NODE_REG_REGS_6(4)
    );
  NODE_REG_REGS_6_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q,
      Q => NODE_REG_REGS_6(3)
    );
  NODE_REG_REGS_6_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q,
      Q => NODE_REG_REGS_6(2)
    );
  NODE_REG_REGS_6_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q,
      Q => NODE_REG_REGS_6(1)
    );
  NODE_REG_REGS_6_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0492_inv_381,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q,
      Q => NODE_REG_REGS_6(0)
    );
  NODE_REG_REGS_4_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q,
      Q => NODE_REG_REGS_4(7)
    );
  NODE_REG_REGS_4_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q,
      Q => NODE_REG_REGS_4(6)
    );
  NODE_REG_REGS_4_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q,
      Q => NODE_REG_REGS_4(5)
    );
  NODE_REG_REGS_4_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q,
      Q => NODE_REG_REGS_4(4)
    );
  NODE_REG_REGS_4_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q,
      Q => NODE_REG_REGS_4(3)
    );
  NODE_REG_REGS_4_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q,
      Q => NODE_REG_REGS_4(2)
    );
  NODE_REG_REGS_4_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q,
      Q => NODE_REG_REGS_4(1)
    );
  NODE_REG_REGS_4_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0536_inv_382,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q,
      Q => NODE_REG_REGS_4(0)
    );
  NODE_REG_REGS_8_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q,
      Q => NODE_REG_REGS_8(7)
    );
  NODE_REG_REGS_8_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q,
      Q => NODE_REG_REGS_8(6)
    );
  NODE_REG_REGS_8_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q,
      Q => NODE_REG_REGS_8(5)
    );
  NODE_REG_REGS_8_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q,
      Q => NODE_REG_REGS_8(4)
    );
  NODE_REG_REGS_8_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q,
      Q => NODE_REG_REGS_8(3)
    );
  NODE_REG_REGS_8_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q,
      Q => NODE_REG_REGS_8(2)
    );
  NODE_REG_REGS_8_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q,
      Q => NODE_REG_REGS_8(1)
    );
  NODE_REG_REGS_8_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0448_inv_383,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q,
      Q => NODE_REG_REGS_8(0)
    );
  NODE_REG_REGS_9_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q,
      Q => NODE_REG_REGS_9(7)
    );
  NODE_REG_REGS_9_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q,
      Q => NODE_REG_REGS_9(6)
    );
  NODE_REG_REGS_9_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q,
      Q => NODE_REG_REGS_9(5)
    );
  NODE_REG_REGS_9_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q,
      Q => NODE_REG_REGS_9(4)
    );
  NODE_REG_REGS_9_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q,
      Q => NODE_REG_REGS_9(3)
    );
  NODE_REG_REGS_9_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q,
      Q => NODE_REG_REGS_9(2)
    );
  NODE_REG_REGS_9_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q,
      Q => NODE_REG_REGS_9(1)
    );
  NODE_REG_REGS_9_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0426_inv_384,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q,
      Q => NODE_REG_REGS_9(0)
    );
  NODE_REG_REGS_7_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q,
      Q => NODE_REG_REGS_7(7)
    );
  NODE_REG_REGS_7_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q,
      Q => NODE_REG_REGS_7(6)
    );
  NODE_REG_REGS_7_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q,
      Q => NODE_REG_REGS_7(5)
    );
  NODE_REG_REGS_7_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q,
      Q => NODE_REG_REGS_7(4)
    );
  NODE_REG_REGS_7_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q,
      Q => NODE_REG_REGS_7(3)
    );
  NODE_REG_REGS_7_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q,
      Q => NODE_REG_REGS_7(2)
    );
  NODE_REG_REGS_7_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q,
      Q => NODE_REG_REGS_7(1)
    );
  NODE_REG_REGS_7_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0470_inv_385,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q,
      Q => NODE_REG_REGS_7(0)
    );
  NODE_REG_REGS_11_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q,
      Q => NODE_REG_REGS_11(7)
    );
  NODE_REG_REGS_11_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q,
      Q => NODE_REG_REGS_11(6)
    );
  NODE_REG_REGS_11_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q,
      Q => NODE_REG_REGS_11(5)
    );
  NODE_REG_REGS_11_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q,
      Q => NODE_REG_REGS_11(4)
    );
  NODE_REG_REGS_11_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q,
      Q => NODE_REG_REGS_11(3)
    );
  NODE_REG_REGS_11_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q,
      Q => NODE_REG_REGS_11(2)
    );
  NODE_REG_REGS_11_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q,
      Q => NODE_REG_REGS_11(1)
    );
  NODE_REG_REGS_11_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0382_inv_386,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q,
      Q => NODE_REG_REGS_11(0)
    );
  NODE_REG_REGS_12_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q,
      Q => NODE_REG_REGS_12(7)
    );
  NODE_REG_REGS_12_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q,
      Q => NODE_REG_REGS_12(6)
    );
  NODE_REG_REGS_12_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q,
      Q => NODE_REG_REGS_12(5)
    );
  NODE_REG_REGS_12_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q,
      Q => NODE_REG_REGS_12(4)
    );
  NODE_REG_REGS_12_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q,
      Q => NODE_REG_REGS_12(3)
    );
  NODE_REG_REGS_12_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q,
      Q => NODE_REG_REGS_12(2)
    );
  NODE_REG_REGS_12_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q,
      Q => NODE_REG_REGS_12(1)
    );
  NODE_REG_REGS_12_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0360_inv_387,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q,
      Q => NODE_REG_REGS_12(0)
    );
  NODE_REG_REGS_10_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q,
      Q => NODE_REG_REGS_10(7)
    );
  NODE_REG_REGS_10_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q,
      Q => NODE_REG_REGS_10(6)
    );
  NODE_REG_REGS_10_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q,
      Q => NODE_REG_REGS_10(5)
    );
  NODE_REG_REGS_10_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q,
      Q => NODE_REG_REGS_10(4)
    );
  NODE_REG_REGS_10_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q,
      Q => NODE_REG_REGS_10(3)
    );
  NODE_REG_REGS_10_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q,
      Q => NODE_REG_REGS_10(2)
    );
  NODE_REG_REGS_10_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q,
      Q => NODE_REG_REGS_10(1)
    );
  NODE_REG_REGS_10_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0404_inv_388,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q,
      Q => NODE_REG_REGS_10(0)
    );
  NODE_REG_REGS_13_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q,
      Q => NODE_REG_REGS_13(7)
    );
  NODE_REG_REGS_13_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q,
      Q => NODE_REG_REGS_13(6)
    );
  NODE_REG_REGS_13_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q,
      Q => NODE_REG_REGS_13(5)
    );
  NODE_REG_REGS_13_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q,
      Q => NODE_REG_REGS_13(4)
    );
  NODE_REG_REGS_13_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q,
      Q => NODE_REG_REGS_13(3)
    );
  NODE_REG_REGS_13_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q,
      Q => NODE_REG_REGS_13(2)
    );
  NODE_REG_REGS_13_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q,
      Q => NODE_REG_REGS_13(1)
    );
  NODE_REG_REGS_13_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0338_inv_389,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q,
      Q => NODE_REG_REGS_13(0)
    );
  NODE_REG_REGS_14_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q,
      Q => NODE_REG_REGS_14(7)
    );
  NODE_REG_REGS_14_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q,
      Q => NODE_REG_REGS_14(6)
    );
  NODE_REG_REGS_14_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q,
      Q => NODE_REG_REGS_14(5)
    );
  NODE_REG_REGS_14_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q,
      Q => NODE_REG_REGS_14(4)
    );
  NODE_REG_REGS_14_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q,
      Q => NODE_REG_REGS_14(3)
    );
  NODE_REG_REGS_14_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q,
      Q => NODE_REG_REGS_14(2)
    );
  NODE_REG_REGS_14_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q,
      Q => NODE_REG_REGS_14(1)
    );
  NODE_REG_REGS_14_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_REG_n0316_inv_390,
      CLR => reset_IBUF_65,
      D => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q,
      Q => NODE_REG_REGS_14(0)
    );
  NODE_S_REG_tmp_s_out_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(7),
      Q => NODE_S_REG_tmp_s_out(7)
    );
  NODE_S_REG_tmp_s_out_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(6),
      Q => NODE_S_REG_tmp_s_out(6)
    );
  NODE_S_REG_tmp_s_out_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(5),
      Q => NODE_S_REG_tmp_s_out(5)
    );
  NODE_S_REG_tmp_s_out_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(4),
      Q => NODE_S_REG_tmp_s_out(4)
    );
  NODE_S_REG_tmp_s_out_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(3),
      Q => NODE_S_REG_tmp_s_out(3)
    );
  NODE_S_REG_tmp_s_out_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(2),
      Q => NODE_S_REG_tmp_s_out(2)
    );
  NODE_S_REG_tmp_s_out_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(1),
      Q => NODE_S_REG_tmp_s_out(1)
    );
  NODE_S_REG_tmp_s_out_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => step_IBUF_66,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(0),
      Q => NODE_S_REG_tmp_s_out(0)
    );
  NODE_S_REG_tmp_s_new_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(7),
      Q => NODE_S_REG_tmp_s_new(7)
    );
  NODE_S_REG_tmp_s_new_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(6),
      Q => NODE_S_REG_tmp_s_new(6)
    );
  NODE_S_REG_tmp_s_new_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(5),
      Q => NODE_S_REG_tmp_s_new(5)
    );
  NODE_S_REG_tmp_s_new_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(4),
      Q => NODE_S_REG_tmp_s_new(4)
    );
  NODE_S_REG_tmp_s_new_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(3),
      Q => NODE_S_REG_tmp_s_new(3)
    );
  NODE_S_REG_tmp_s_new_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(2),
      Q => NODE_S_REG_tmp_s_new(2)
    );
  NODE_S_REG_tmp_s_new_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(1),
      Q => NODE_S_REG_tmp_s_new(1)
    );
  NODE_S_REG_tmp_s_new_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0028_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s(0),
      Q => NODE_S_REG_tmp_s_new(0)
    );
  NODE_S_REG_tmp_s_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q,
      Q => NODE_S_REG_tmp_s(7)
    );
  NODE_S_REG_tmp_s_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q,
      Q => NODE_S_REG_tmp_s(6)
    );
  NODE_S_REG_tmp_s_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q,
      Q => NODE_S_REG_tmp_s(5)
    );
  NODE_S_REG_tmp_s_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q,
      Q => NODE_S_REG_tmp_s(4)
    );
  NODE_S_REG_tmp_s_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q,
      Q => NODE_S_REG_tmp_s(3)
    );
  NODE_S_REG_tmp_s_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q,
      Q => NODE_S_REG_tmp_s(2)
    );
  NODE_S_REG_tmp_s_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_1184,
      Q => NODE_S_REG_tmp_s(1)
    );
  NODE_S_REG_tmp_s_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_64,
      CE => NODE_S_REG_n0027_inv,
      CLR => reset_IBUF_65,
      D => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q,
      Q => NODE_S_REG_tmp_s(0)
    );
  NODE_ALU_Mmux_res1_rs_xor_7_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(6),
      LI => NODE_ALU_Mmux_res1_rs_lut(7),
      O => NODE_ALU_Mmux_res1_split(7)
    );
  NODE_ALU_Mmux_res1_rs_xor_6_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(5),
      LI => NODE_ALU_Mmux_res1_rs_lut(6),
      O => NODE_ALU_Mmux_res1_split(6)
    );
  NODE_ALU_Mmux_res1_rs_cy_6_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(5),
      DI => reg_data1_out(6),
      S => NODE_ALU_Mmux_res1_rs_lut(6),
      O => NODE_ALU_Mmux_res1_rs_cy(6)
    );
  NODE_ALU_Mmux_res1_rs_xor_5_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(4),
      LI => NODE_ALU_Mmux_res1_rs_lut(5),
      O => NODE_ALU_Mmux_res1_split(5)
    );
  NODE_ALU_Mmux_res1_rs_cy_5_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(4),
      DI => reg_data1_out(5),
      S => NODE_ALU_Mmux_res1_rs_lut(5),
      O => NODE_ALU_Mmux_res1_rs_cy(5)
    );
  NODE_ALU_Mmux_res1_rs_xor_4_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(3),
      LI => NODE_ALU_Mmux_res1_rs_lut(4),
      O => NODE_ALU_Mmux_res1_split(4)
    );
  NODE_ALU_Mmux_res1_rs_cy_4_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(3),
      DI => reg_data1_out(4),
      S => NODE_ALU_Mmux_res1_rs_lut(4),
      O => NODE_ALU_Mmux_res1_rs_cy(4)
    );
  NODE_ALU_Mmux_res1_rs_xor_3_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(2),
      LI => NODE_ALU_Mmux_res1_rs_lut(3),
      O => NODE_ALU_Mmux_res1_split(3)
    );
  NODE_ALU_Mmux_res1_rs_cy_3_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(2),
      DI => reg_data1_out(3),
      S => NODE_ALU_Mmux_res1_rs_lut(3),
      O => NODE_ALU_Mmux_res1_rs_cy(3)
    );
  NODE_ALU_Mmux_res1_rs_xor_2_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(1),
      LI => NODE_ALU_Mmux_res1_rs_lut(2),
      O => NODE_ALU_Mmux_res1_split(2)
    );
  NODE_ALU_Mmux_res1_rs_cy_2_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(1),
      DI => reg_data1_out(2),
      S => NODE_ALU_Mmux_res1_rs_lut(2),
      O => NODE_ALU_Mmux_res1_rs_cy(2)
    );
  NODE_ALU_Mmux_res1_rs_xor_1_Q : XORCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(0),
      LI => NODE_ALU_Mmux_res1_rs_lut(1),
      O => NODE_ALU_Mmux_res1_split(1)
    );
  NODE_ALU_Mmux_res1_rs_cy_1_Q : MUXCY
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(0),
      DI => reg_data1_out(1),
      S => NODE_ALU_Mmux_res1_rs_lut(1),
      O => NODE_ALU_Mmux_res1_rs_cy(1)
    );
  NODE_ALU_Mmux_res1_rs_xor_0_Q : XORCY
    port map (
      CI => instr_0_IBUF_23,
      LI => NODE_ALU_Mmux_res1_rs_lut(0),
      O => NODE_ALU_Mmux_res1_split(0)
    );
  NODE_ALU_Mmux_res1_rs_cy_0_Q : MUXCY
    port map (
      CI => instr_0_IBUF_23,
      DI => reg_data1_out(0),
      S => NODE_ALU_Mmux_res1_rs_lut(0),
      O => NODE_ALU_Mmux_res1_rs_cy(0)
    );
  CONTROL_disable_mask_OR_1_o1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_22_IBUF_8,
      I2 => STATE_state_out_139,
      O => CONTROL_disable_mask_OR_1_o
    );
  MUX_N_Mmux_bus_out31 : LUT6
    generic map(
      INIT => X"F0FFB8BBF000B888"
    )
    port map (
      I0 => n_in_2_IBUF_29,
      I1 => instr_21_IBUF_0,
      I2 => NODE_S_REG_tmp_s_new(2),
      I3 => ctrl_s_swap,
      I4 => CONTROL_disable_mask_OR_1_o,
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
      I2 => NODE_S_REG_tmp_s_new(3),
      I3 => ctrl_s_swap,
      I4 => CONTROL_disable_mask_OR_1_o,
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
      I2 => NODE_S_REG_tmp_s_new(4),
      I3 => ctrl_s_swap,
      I4 => CONTROL_disable_mask_OR_1_o,
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
      I2 => NODE_S_REG_tmp_s_new(5),
      I3 => ctrl_s_swap,
      I4 => CONTROL_disable_mask_OR_1_o,
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
      I2 => NODE_S_REG_tmp_s_new(6),
      I3 => ctrl_s_swap,
      I4 => CONTROL_disable_mask_OR_1_o,
      I5 => alu_res(6),
      O => reg_data0(6)
    );
  MUX_ALU_Mmux_bus_out81 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o,
      I5 => reg_data2_out(7),
      O => alu_op2(7)
    );
  MUX_ALU_Mmux_bus_out71 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o,
      I5 => reg_data2_out(6),
      O => alu_op2(6)
    );
  MUX_ALU_Mmux_bus_out61 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o1_1108,
      I5 => reg_data2_out(5),
      O => alu_op2(5)
    );
  MUX_ALU_Mmux_bus_out51 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o1_1108,
      I5 => reg_data2_out(4),
      O => alu_op2(4)
    );
  MUX_ALU_Mmux_bus_out41 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o,
      I5 => reg_data2_out(3),
      O => alu_op2(3)
    );
  MUX_ALU_Mmux_bus_out31 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o1_1108,
      I5 => reg_data2_out(2),
      O => alu_op2(2)
    );
  MUX_ALU_Mmux_bus_out21 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o1_1108,
      I5 => reg_data2_out(1),
      O => alu_op2(1)
    );
  MUX_ALU_Mmux_bus_out11 : LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_21_IBUF_0,
      I4 => CONTROL_disable_mask_OR_1_o1_1108,
      I5 => reg_data2_out(0),
      O => alu_op2(0)
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT11 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q,
      I3 => w_in_0_IBUF_55,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT21 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q,
      I3 => w_in_1_IBUF_54,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT31 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q,
      I3 => w_in_2_IBUF_53,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT41 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q,
      I3 => w_in_3_IBUF_52,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT51 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q,
      I3 => w_in_4_IBUF_51,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT61 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q,
      I3 => w_in_5_IBUF_50,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT71 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q,
      I3 => w_in_6_IBUF_49,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT81 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q,
      I3 => w_in_7_IBUF_48,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(0),
      I2 => e_in_0_IBUF_47,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(1),
      I2 => e_in_1_IBUF_46,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(2),
      I2 => e_in_2_IBUF_45,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(3),
      I2 => e_in_3_IBUF_44,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(4),
      I2 => e_in_4_IBUF_43,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(5),
      I2 => e_in_5_IBUF_42,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(6),
      I2 => e_in_6_IBUF_41,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data1_out(7),
      I2 => e_in_7_IBUF_40,
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT11 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q,
      I3 => s_in_0_IBUF_39,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT21 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q,
      I3 => s_in_1_IBUF_38,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT31 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q,
      I3 => s_in_2_IBUF_37,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT41 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q,
      I3 => s_in_3_IBUF_36,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT51 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q,
      I3 => s_in_4_IBUF_35,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT61 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q,
      I3 => s_in_5_IBUF_34,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT71 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q,
      I3 => s_in_6_IBUF_33,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT81 : LUT4
    generic map(
      INIT => X"BA10"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q,
      I3 => s_in_7_IBUF_32,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(0),
      I2 => n_in_0_IBUF_31,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(1),
      I2 => n_in_1_IBUF_30,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(2),
      I2 => n_in_2_IBUF_29,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(3),
      I2 => n_in_3_IBUF_28,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(4),
      I2 => n_in_4_IBUF_27,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(5),
      I2 => n_in_5_IBUF_26,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(6),
      I2 => n_in_6_IBUF_25,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => reg_data2_out(7),
      I2 => n_in_7_IBUF_24,
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q
    );
  NODE_REG_adr0_3_Decoder_70_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_16_IBUF_5,
      I3 => instr_17_IBUF_4,
      O => NODE_REG_adr0_3_Decoder_70_OUT_0_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_1_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_6_IBUF_17,
      I2 => instr_4_IBUF_19,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_9_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_7_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_15_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_5_IBUF_18,
      I2 => instr_6_IBUF_17,
      I3 => instr_3_IBUF_20,
      O => NODE_REG_adr3_3_Decoder_52_OUT_6_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_4_IBUF_19,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_14_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_5_IBUF_18,
      I2 => instr_6_IBUF_17,
      I3 => instr_4_IBUF_19,
      O => NODE_REG_adr3_3_Decoder_52_OUT_5_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_6_IBUF_17,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_13_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_5_IBUF_18,
      I3 => instr_3_IBUF_20,
      O => NODE_REG_adr3_3_Decoder_52_OUT_4_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_5_IBUF_18,
      I2 => instr_4_IBUF_19,
      I3 => instr_3_IBUF_20,
      O => NODE_REG_adr3_3_Decoder_52_OUT_12_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_3_IBUF_20,
      I1 => instr_4_IBUF_19,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_3_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_5_IBUF_18,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_6_IBUF_17,
      O => NODE_REG_adr3_3_Decoder_52_OUT_11_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_3_IBUF_20,
      I2 => instr_4_IBUF_19,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_2_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_10_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_6_IBUF_17,
      I1 => instr_4_IBUF_19,
      I2 => instr_3_IBUF_20,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_0_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_4_IBUF_19,
      I1 => instr_3_IBUF_20,
      I2 => instr_6_IBUF_17,
      I3 => instr_5_IBUF_18,
      O => NODE_REG_adr3_3_Decoder_52_OUT_8_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_1_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_10_IBUF_13,
      I2 => instr_8_IBUF_15,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_9_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_7_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_15_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_9_IBUF_14,
      I2 => instr_10_IBUF_13,
      I3 => instr_7_IBUF_16,
      O => NODE_REG_adr2_3_Decoder_35_OUT_6_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_8_IBUF_15,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_14_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_9_IBUF_14,
      I2 => instr_10_IBUF_13,
      I3 => instr_8_IBUF_15,
      O => NODE_REG_adr2_3_Decoder_35_OUT_5_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_10_IBUF_13,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_13_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_9_IBUF_14,
      I3 => instr_7_IBUF_16,
      O => NODE_REG_adr2_3_Decoder_35_OUT_4_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_9_IBUF_14,
      I2 => instr_8_IBUF_15,
      I3 => instr_7_IBUF_16,
      O => NODE_REG_adr2_3_Decoder_35_OUT_12_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_7_IBUF_16,
      I1 => instr_8_IBUF_15,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_3_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_9_IBUF_14,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_10_IBUF_13,
      O => NODE_REG_adr2_3_Decoder_35_OUT_11_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_7_IBUF_16,
      I2 => instr_8_IBUF_15,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_2_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_10_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_8_IBUF_15,
      I2 => instr_7_IBUF_16,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_0_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_8_IBUF_15,
      I1 => instr_7_IBUF_16,
      I2 => instr_10_IBUF_13,
      I3 => instr_9_IBUF_14,
      O => NODE_REG_adr2_3_Decoder_35_OUT_8_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_1_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_1_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_9_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_11_IBUF_12,
      I1 => instr_14_IBUF_9,
      I2 => instr_12_IBUF_11,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_9_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_7_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_15_3_1 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_15_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_6_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_13_IBUF_10,
      I2 => instr_14_IBUF_9,
      I3 => instr_11_IBUF_12,
      O => NODE_REG_adr1_3_Decoder_18_OUT_6_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_14_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_11_IBUF_12,
      I1 => instr_12_IBUF_11,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_14_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_5_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_11_IBUF_12,
      I1 => instr_13_IBUF_10,
      I2 => instr_14_IBUF_9,
      I3 => instr_12_IBUF_11,
      O => NODE_REG_adr1_3_Decoder_18_OUT_5_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_13_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_14_IBUF_9,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_13_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_4_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_13_IBUF_10,
      I3 => instr_11_IBUF_12,
      O => NODE_REG_adr1_3_Decoder_18_OUT_4_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_12_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_13_IBUF_10,
      I2 => instr_12_IBUF_11,
      I3 => instr_11_IBUF_12,
      O => NODE_REG_adr1_3_Decoder_18_OUT_12_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_3_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_11_IBUF_12,
      I1 => instr_12_IBUF_11,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_3_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_11_3_1 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_14_IBUF_9,
      O => NODE_REG_adr1_3_Decoder_18_OUT_11_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_2_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_2_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_10_3_1 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_10_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_0_3_1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => instr_14_IBUF_9,
      I1 => instr_12_IBUF_11,
      I2 => instr_11_IBUF_12,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_0_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_8_3_1 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => instr_12_IBUF_11,
      I1 => instr_11_IBUF_12,
      I2 => instr_14_IBUF_9,
      I3 => instr_13_IBUF_10,
      O => NODE_REG_adr1_3_Decoder_18_OUT_8_Q
    );
  NODE_REG_n0624_inv1 : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      O => NODE_REG_n0624_inv
    );
  NODE_REG_adr0_3_Decoder_70_OUT_15_3_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      O => NODE_REG_N67
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(2),
      I2 => sr_in_2_IBUF_61,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(3),
      I2 => sr_in_3_IBUF_60,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(4),
      I2 => sr_in_4_IBUF_59,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(5),
      I2 => sr_in_5_IBUF_58,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(6),
      I2 => sr_in_6_IBUF_57,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => alu_res(7),
      I2 => sr_in_7_IBUF_56,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o2 : LUT6
    generic map(
      INIT => X"7F3F1F0F07030100"
    )
    port map (
      I0 => reg_data1_out(0),
      I1 => reg_data1_out(1),
      I2 => reg_data1_out(2),
      I3 => alu_op2(0),
      I4 => alu_op2(1),
      I5 => alu_op2(2),
      O => NODE_ALU_op1_7_op2_7_LessThan_4_o1_736
    );
  NODE_ALU_Mmux_res7121 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      O => NODE_ALU_N8
    );
  CONTROL_Mmux_set_state1 : LUT6
    generic map(
      INIT => X"4040400040404040"
    )
    port map (
      I0 => CONTROL_disable_mask_OR_1_o,
      I1 => instr_18_IBUF_3,
      I2 => NODE_REG_N67,
      I3 => instr_19_IBUF_2,
      I4 => instr_20_IBUF_1,
      I5 => instr_21_IBUF_0,
      O => ctrl_set_state
    );
  NODE_REG_n0448_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_17_IBUF_4,
      I2 => instr_16_IBUF_5,
      I3 => instr_18_IBUF_3,
      O => N28
    );
  NODE_REG_n0448_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I5 => N28,
      O => NODE_REG_n0448_inv_383
    );
  NODE_REG_n0602_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I5 => N30,
      O => NODE_REG_n0602_inv_376
    );
  NODE_REG_n0646_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N32,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      O => NODE_REG_n0646_inv_377
    );
  NODE_REG_n0580_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I5 => N34,
      O => NODE_REG_n0580_inv_378
    );
  NODE_REG_n0558_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I5 => N36,
      O => NODE_REG_n0558_inv_379
    );
  NODE_REG_n0514_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I5 => N38,
      O => NODE_REG_n0514_inv_380
    );
  NODE_REG_n0492_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I5 => N40,
      O => NODE_REG_n0492_inv_381
    );
  NODE_REG_n0536_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I5 => N42,
      O => NODE_REG_n0536_inv_382
    );
  NODE_REG_n0426_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N44,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      O => NODE_REG_n0426_inv_384
    );
  NODE_REG_n0470_inv : LUT6
    generic map(
      INIT => X"2222222066666666"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => ctrl_reg_write(0),
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I5 => N46,
      O => NODE_REG_n0470_inv_385
    );
  NODE_REG_n0382_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N48,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      O => NODE_REG_n0382_inv_386
    );
  NODE_REG_n0360_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N50,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      O => NODE_REG_n0360_inv_387
    );
  NODE_REG_n0404_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N52,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      O => NODE_REG_n0404_inv_388
    );
  NODE_REG_n0338_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N54,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      O => NODE_REG_n0338_inv_389
    );
  NODE_REG_n0316_inv : LUT6
    generic map(
      INIT => X"6464646464646460"
    )
    port map (
      I0 => ctrl_reg_write(0),
      I1 => ctrl_reg_write(1),
      I2 => N56,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I4 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I5 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      O => NODE_REG_n0316_inv_390
    );
  NODE_ALU_Mmux_res721 : LUT6
    generic map(
      INIT => X"C040800080008000"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      I3 => reg_data1_out(2),
      I4 => reg_data1_out(1),
      I5 => alu_op2(1),
      O => NODE_ALU_Mmux_res72
    );
  NODE_ALU_Mmux_res722 : LUT6
    generic map(
      INIT => X"3010301030102000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      I3 => reg_data1_out(0),
      I4 => reg_data1_out(1),
      I5 => alu_op2(1),
      O => NODE_ALU_Mmux_res721_776
    );
  NODE_ALU_Mmux_res78 : LUT6
    generic map(
      INIT => X"028A139B46CE57DF"
    )
    port map (
      I0 => NODE_ALU_Mmux_res1_split(7),
      I1 => alu_op2(7),
      I2 => N60,
      I3 => N61,
      I4 => N58,
      I5 => N59,
      O => alu_res(7)
    );
  NODE_ALU_Mmux_res711 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_0_IBUF_23,
      I2 => instr_1_IBUF_22,
      I3 => reg_data1_out(1),
      O => NODE_ALU_Mmux_res71
    );
  NODE_ALU_Mmux_res712 : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      O => NODE_ALU_Mmux_res711_782
    );
  NODE_ALU_Mmux_res713 : LUT5
    generic map(
      INIT => X"FFFFECC0"
    )
    port map (
      I0 => NODE_ALU_Mmux_res711_782,
      I1 => NODE_ALU_N8,
      I2 => reg_data1_out(0),
      I3 => alu_op2(0),
      I4 => NODE_ALU_Mmux_res71,
      O => NODE_ALU_Mmux_res712_783
    );
  NODE_ALU_Mmux_res715 : LUT6
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
      O => NODE_ALU_Mmux_res714
    );
  NODE_ALU_Mmux_res716 : LUT6
    generic map(
      INIT => X"8008400420021001"
    )
    port map (
      I0 => reg_data1_out(3),
      I1 => reg_data1_out(5),
      I2 => reg_data1_out(6),
      I3 => alu_op2(6),
      I4 => alu_op2(3),
      I5 => alu_op2(5),
      O => NODE_ALU_Mmux_res715_785
    );
  NODE_ALU_Mmux_res717 : LUT6
    generic map(
      INIT => X"8040201008040201"
    )
    port map (
      I0 => reg_data1_out(0),
      I1 => reg_data1_out(4),
      I2 => reg_data1_out(7),
      I3 => alu_op2(0),
      I4 => alu_op2(4),
      I5 => alu_op2(7),
      O => NODE_ALU_Mmux_res716_786
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
      I => NODE_COM_n_out(7),
      O => n_out(7)
    );
  n_out_6_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(6),
      O => n_out(6)
    );
  n_out_5_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(5),
      O => n_out(5)
    );
  n_out_4_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(4),
      O => n_out(4)
    );
  n_out_3_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(3),
      O => n_out(3)
    );
  n_out_2_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(2),
      O => n_out(2)
    );
  n_out_1_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(1),
      O => n_out(1)
    );
  n_out_0_OBUF : OBUF
    port map (
      I => NODE_COM_n_out(0),
      O => n_out(0)
    );
  s_out_7_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(7),
      O => s_out(7)
    );
  s_out_6_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(6),
      O => s_out(6)
    );
  s_out_5_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(5),
      O => s_out(5)
    );
  s_out_4_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(4),
      O => s_out(4)
    );
  s_out_3_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(3),
      O => s_out(3)
    );
  s_out_2_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(2),
      O => s_out(2)
    );
  s_out_1_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(1),
      O => s_out(1)
    );
  s_out_0_OBUF : OBUF
    port map (
      I => NODE_COM_s_out(0),
      O => s_out(0)
    );
  e_out_7_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(7),
      O => e_out(7)
    );
  e_out_6_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(6),
      O => e_out(6)
    );
  e_out_5_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(5),
      O => e_out(5)
    );
  e_out_4_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(4),
      O => e_out(4)
    );
  e_out_3_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(3),
      O => e_out(3)
    );
  e_out_2_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(2),
      O => e_out(2)
    );
  e_out_1_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(1),
      O => e_out(1)
    );
  e_out_0_OBUF : OBUF
    port map (
      I => NODE_COM_e_out(0),
      O => e_out(0)
    );
  w_out_7_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(7),
      O => w_out(7)
    );
  w_out_6_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(6),
      O => w_out(6)
    );
  w_out_5_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(5),
      O => w_out(5)
    );
  w_out_4_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(4),
      O => w_out(4)
    );
  w_out_3_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(3),
      O => w_out(3)
    );
  w_out_2_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(2),
      O => w_out(2)
    );
  w_out_1_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(1),
      O => w_out(1)
    );
  w_out_0_OBUF : OBUF
    port map (
      I => NODE_COM_w_out(0),
      O => w_out(0)
    );
  sr_out_7_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(7),
      O => sr_out(7)
    );
  sr_out_6_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(6),
      O => sr_out(6)
    );
  sr_out_5_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(5),
      O => sr_out(5)
    );
  sr_out_4_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(4),
      O => sr_out(4)
    );
  sr_out_3_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(3),
      O => sr_out(3)
    );
  sr_out_2_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(2),
      O => sr_out(2)
    );
  sr_out_1_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(1),
      O => sr_out(1)
    );
  sr_out_0_OBUF : OBUF
    port map (
      I => NODE_S_REG_tmp_s_out(0),
      O => sr_out(0)
    );
  node_state_OBUF : OBUF
    port map (
      I => STATE_state_out_139,
      O => node_state
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_0_IBUF_47,
      O => N66
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_0_IBUF_47,
      O => N67
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N66,
      I1 => w_in_0_IBUF_55,
      I2 => N67,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_0_IBUF_47,
      O => N69
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_0_IBUF_47,
      O => N70
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N69,
      I1 => w_in_0_IBUF_55,
      I2 => N70,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_0_IBUF_47,
      O => N72
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_0_IBUF_47,
      O => N73
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N72,
      I1 => w_in_0_IBUF_55,
      I2 => N73,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_0_IBUF_47,
      O => N75
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_0_IBUF_47,
      O => N76
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N75,
      I1 => w_in_0_IBUF_55,
      I2 => N76,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_0_IBUF_47,
      O => N78
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_0_IBUF_47,
      O => N79
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N78,
      I1 => w_in_0_IBUF_55,
      I2 => N79,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_0_IBUF_47,
      O => N81
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_0_IBUF_47,
      O => N82
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N81,
      I1 => w_in_0_IBUF_55,
      I2 => N82,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_0_IBUF_47,
      O => N84
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_0_IBUF_47,
      O => N85
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N84,
      I1 => w_in_0_IBUF_55,
      I2 => N85,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_0_IBUF_47,
      O => N87
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_0_IBUF_47,
      O => N88
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N87,
      I1 => w_in_0_IBUF_55,
      I2 => N88,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_0_IBUF_47,
      O => N90
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_0_IBUF_47,
      O => N91
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N90,
      I1 => w_in_0_IBUF_55,
      I2 => N91,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_0_IBUF_47,
      O => N93
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_0_IBUF_47,
      O => N94
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N93,
      I1 => w_in_0_IBUF_55,
      I2 => N94,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_0_IBUF_47,
      O => N96
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_0_IBUF_47,
      O => N97
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N96,
      I1 => w_in_0_IBUF_55,
      I2 => N97,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_0_IBUF_47,
      O => N99
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_0_IBUF_47,
      O => N100
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N99,
      I1 => w_in_0_IBUF_55,
      I2 => N100,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_0_IBUF_47,
      O => N102
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_0_IBUF_47,
      O => N103
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N102,
      I1 => w_in_0_IBUF_55,
      I2 => N103,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_0_IBUF_47,
      O => N105
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_0_IBUF_47,
      O => N106
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N105,
      I1 => w_in_0_IBUF_55,
      I2 => N106,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_0_IBUF_47,
      O => N108
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_0_IBUF_47,
      O => N109
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N108,
      I1 => w_in_0_IBUF_55,
      I2 => N109,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_0_IBUF_39,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_0_IBUF_47,
      O => N111
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_0_IBUF_39,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_0_IBUF_47,
      O => N112
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT22 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N111,
      I1 => w_in_0_IBUF_55,
      I2 => N112,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(0),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q
    );
  MUX_ALU_Mmux_bus_out11_SW0 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => instr_21_IBUF_0,
      I1 => instr_20_IBUF_1,
      I2 => instr_19_IBUF_2,
      O => N114
    );
  NODE_ALU_Mmux_res1_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_3_IBUF_20,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(0),
      I5 => reg_data1_out(0),
      O => NODE_ALU_Mmux_res1_rs_lut(0)
    );
  MUX_N_Mmux_bus_out11 : LUT6
    generic map(
      INIT => X"CCCCFA50CCCCFF00"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => N118,
      I2 => N117,
      I3 => N116,
      I4 => NODE_ALU_Mmux_res717_787,
      I5 => NODE_ALU_Mmux_res718_788,
      O => reg_data0(0)
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1 : LUT6
    generic map(
      INIT => X"0004FBFF004FB0FF"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q,
      I2 => alu_op2(3),
      I3 => N63,
      I4 => N64,
      I5 => NODE_ALU_op1_7_op2_7_LessThan_4_o1_736,
      O => NODE_ALU_op1_7_op2_7_LessThan_4_o2_735
    );
  NODE_ALU_Mmux_res7110_SW3 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      O => N122
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT11 : LUT6
    generic map(
      INIT => X"AAFFAA03AAFFAA00"
    )
    port map (
      I0 => sr_in_0_IBUF_63,
      I1 => N122,
      I2 => instr_2_IBUF_21,
      I3 => step_IBUF_66,
      I4 => NODE_ALU_Mmux_res717_787,
      I5 => NODE_ALU_Mmux_res718_788,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q
    );
  NODE_ALU_Mmux_res714_SW0_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => NODE_ALU_Mmux_res1_split(0),
      O => N124
    );
  NODE_ALU_Mmux_res718 : LUT6
    generic map(
      INIT => X"DCDDCCDDCCDDCCDD"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => NODE_ALU_Mmux_res712_783,
      I2 => NODE_ALU_Mmux_res714,
      I3 => N124,
      I4 => NODE_ALU_Mmux_res716_786,
      I5 => NODE_ALU_Mmux_res715_785,
      O => NODE_ALU_Mmux_res717_787
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_6_IBUF_41,
      O => N174
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_6_IBUF_41,
      O => N175
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N174,
      I1 => w_in_6_IBUF_49,
      I2 => N175,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_6_IBUF_41,
      O => N177
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_6_IBUF_41,
      O => N178
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N177,
      I1 => w_in_6_IBUF_49,
      I2 => N178,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_6_IBUF_41,
      O => N180
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_6_IBUF_41,
      O => N181
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N180,
      I1 => w_in_6_IBUF_49,
      I2 => N181,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_6_IBUF_41,
      O => N183
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_6_IBUF_41,
      O => N184
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N183,
      I1 => w_in_6_IBUF_49,
      I2 => N184,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_6_IBUF_41,
      O => N186
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_6_IBUF_41,
      O => N187
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N186,
      I1 => w_in_6_IBUF_49,
      I2 => N187,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_6_IBUF_41,
      O => N189
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_6_IBUF_41,
      O => N190
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N189,
      I1 => w_in_6_IBUF_49,
      I2 => N190,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_6_IBUF_41,
      O => N192
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_6_IBUF_41,
      O => N193
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N192,
      I1 => w_in_6_IBUF_49,
      I2 => N193,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_6_IBUF_41,
      O => N195
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_6_IBUF_41,
      O => N196
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N195,
      I1 => w_in_6_IBUF_49,
      I2 => N196,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_6_IBUF_41,
      O => N198
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_6_IBUF_41,
      O => N199
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N198,
      I1 => w_in_6_IBUF_49,
      I2 => N199,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_6_IBUF_41,
      O => N201
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_6_IBUF_41,
      O => N202
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N201,
      I1 => w_in_6_IBUF_49,
      I2 => N202,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_6_IBUF_41,
      O => N204
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_6_IBUF_41,
      O => N205
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N204,
      I1 => w_in_6_IBUF_49,
      I2 => N205,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_6_IBUF_41,
      O => N207
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_6_IBUF_41,
      O => N208
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N207,
      I1 => w_in_6_IBUF_49,
      I2 => N208,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_6_IBUF_41,
      O => N210
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_6_IBUF_41,
      O => N211
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N210,
      I1 => w_in_6_IBUF_49,
      I2 => N211,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_6_IBUF_41,
      O => N213
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_6_IBUF_41,
      O => N214
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N213,
      I1 => w_in_6_IBUF_49,
      I2 => N214,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_6_IBUF_41,
      O => N216
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_6_IBUF_41,
      O => N217
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N216,
      I1 => w_in_6_IBUF_49,
      I2 => N217,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_6_IBUF_33,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_6_IBUF_41,
      O => N219
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_6_IBUF_33,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_6_IBUF_41,
      O => N220
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT142 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N219,
      I1 => w_in_6_IBUF_49,
      I2 => N220,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(6),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_5_IBUF_42,
      O => N222
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_5_IBUF_42,
      O => N223
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N222,
      I1 => w_in_5_IBUF_50,
      I2 => N223,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_5_IBUF_42,
      O => N225
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_5_IBUF_42,
      O => N226
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N225,
      I1 => w_in_5_IBUF_50,
      I2 => N226,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_5_IBUF_42,
      O => N228
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_5_IBUF_42,
      O => N229
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N228,
      I1 => w_in_5_IBUF_50,
      I2 => N229,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_5_IBUF_42,
      O => N231
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_5_IBUF_42,
      O => N232
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N231,
      I1 => w_in_5_IBUF_50,
      I2 => N232,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_5_IBUF_42,
      O => N234
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_5_IBUF_42,
      O => N235
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N234,
      I1 => w_in_5_IBUF_50,
      I2 => N235,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_5_IBUF_42,
      O => N237
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_5_IBUF_42,
      O => N238
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N237,
      I1 => w_in_5_IBUF_50,
      I2 => N238,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_5_IBUF_42,
      O => N240
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_5_IBUF_42,
      O => N241
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N240,
      I1 => w_in_5_IBUF_50,
      I2 => N241,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_5_IBUF_42,
      O => N243
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_5_IBUF_42,
      O => N244
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N243,
      I1 => w_in_5_IBUF_50,
      I2 => N244,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_5_IBUF_42,
      O => N246
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_5_IBUF_42,
      O => N247
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N246,
      I1 => w_in_5_IBUF_50,
      I2 => N247,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_5_IBUF_42,
      O => N249
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_5_IBUF_42,
      O => N250
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N249,
      I1 => w_in_5_IBUF_50,
      I2 => N250,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_5_IBUF_42,
      O => N252
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_5_IBUF_42,
      O => N253
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N252,
      I1 => w_in_5_IBUF_50,
      I2 => N253,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_5_IBUF_42,
      O => N255
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_5_IBUF_42,
      O => N256
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N255,
      I1 => w_in_5_IBUF_50,
      I2 => N256,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_5_IBUF_42,
      O => N258
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_5_IBUF_42,
      O => N259
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N258,
      I1 => w_in_5_IBUF_50,
      I2 => N259,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_5_IBUF_42,
      O => N261
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_5_IBUF_42,
      O => N262
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N261,
      I1 => w_in_5_IBUF_50,
      I2 => N262,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_5_IBUF_42,
      O => N264
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_5_IBUF_42,
      O => N265
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N264,
      I1 => w_in_5_IBUF_50,
      I2 => N265,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_5_IBUF_34,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_5_IBUF_42,
      O => N267
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_5_IBUF_34,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_5_IBUF_42,
      O => N268
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT122 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N267,
      I1 => w_in_5_IBUF_50,
      I2 => N268,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(5),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_4_IBUF_43,
      O => N270
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_4_IBUF_43,
      O => N271
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N270,
      I1 => w_in_4_IBUF_51,
      I2 => N271,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_4_IBUF_43,
      O => N273
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_4_IBUF_43,
      O => N274
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N273,
      I1 => w_in_4_IBUF_51,
      I2 => N274,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_4_IBUF_43,
      O => N276
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_4_IBUF_43,
      O => N277
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N276,
      I1 => w_in_4_IBUF_51,
      I2 => N277,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_4_IBUF_43,
      O => N279
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_4_IBUF_43,
      O => N280
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N279,
      I1 => w_in_4_IBUF_51,
      I2 => N280,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_4_IBUF_43,
      O => N282
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_4_IBUF_43,
      O => N283
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N282,
      I1 => w_in_4_IBUF_51,
      I2 => N283,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_4_IBUF_43,
      O => N285
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_4_IBUF_43,
      O => N286
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N285,
      I1 => w_in_4_IBUF_51,
      I2 => N286,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_4_IBUF_43,
      O => N288
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_4_IBUF_43,
      O => N289
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N288,
      I1 => w_in_4_IBUF_51,
      I2 => N289,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_4_IBUF_43,
      O => N291
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_4_IBUF_43,
      O => N292
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N291,
      I1 => w_in_4_IBUF_51,
      I2 => N292,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_4_IBUF_43,
      O => N294
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_4_IBUF_43,
      O => N295
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N294,
      I1 => w_in_4_IBUF_51,
      I2 => N295,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_4_IBUF_43,
      O => N297
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_4_IBUF_43,
      O => N298
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N297,
      I1 => w_in_4_IBUF_51,
      I2 => N298,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_4_IBUF_43,
      O => N300
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_4_IBUF_43,
      O => N301
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N300,
      I1 => w_in_4_IBUF_51,
      I2 => N301,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_4_IBUF_43,
      O => N303
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_4_IBUF_43,
      O => N304
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N303,
      I1 => w_in_4_IBUF_51,
      I2 => N304,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_4_IBUF_43,
      O => N306
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_4_IBUF_43,
      O => N307
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N306,
      I1 => w_in_4_IBUF_51,
      I2 => N307,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_4_IBUF_43,
      O => N309
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_4_IBUF_43,
      O => N310
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N309,
      I1 => w_in_4_IBUF_51,
      I2 => N310,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_4_IBUF_43,
      O => N312
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_4_IBUF_43,
      O => N313
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N312,
      I1 => w_in_4_IBUF_51,
      I2 => N313,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_4_IBUF_35,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_4_IBUF_43,
      O => N315
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_4_IBUF_35,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_4_IBUF_43,
      O => N316
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT102 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N315,
      I1 => w_in_4_IBUF_51,
      I2 => N316,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(4),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_3_IBUF_44,
      O => N318
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_3_IBUF_44,
      O => N319
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N318,
      I1 => w_in_3_IBUF_52,
      I2 => N319,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_3_IBUF_44,
      O => N321
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_3_IBUF_44,
      O => N322
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N321,
      I1 => w_in_3_IBUF_52,
      I2 => N322,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_3_IBUF_44,
      O => N324
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_3_IBUF_44,
      O => N325
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N324,
      I1 => w_in_3_IBUF_52,
      I2 => N325,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_3_IBUF_44,
      O => N327
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_3_IBUF_44,
      O => N328
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N327,
      I1 => w_in_3_IBUF_52,
      I2 => N328,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_3_IBUF_44,
      O => N330
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_3_IBUF_44,
      O => N331
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N330,
      I1 => w_in_3_IBUF_52,
      I2 => N331,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_3_IBUF_44,
      O => N333
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_3_IBUF_44,
      O => N334
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N333,
      I1 => w_in_3_IBUF_52,
      I2 => N334,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_3_IBUF_44,
      O => N336
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_3_IBUF_44,
      O => N337
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N336,
      I1 => w_in_3_IBUF_52,
      I2 => N337,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_3_IBUF_44,
      O => N339
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_3_IBUF_44,
      O => N340
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N339,
      I1 => w_in_3_IBUF_52,
      I2 => N340,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_3_IBUF_44,
      O => N342
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_3_IBUF_44,
      O => N343
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N342,
      I1 => w_in_3_IBUF_52,
      I2 => N343,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_3_IBUF_44,
      O => N345
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_3_IBUF_44,
      O => N346
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N345,
      I1 => w_in_3_IBUF_52,
      I2 => N346,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_3_IBUF_44,
      O => N348
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_3_IBUF_44,
      O => N349
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N348,
      I1 => w_in_3_IBUF_52,
      I2 => N349,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_3_IBUF_44,
      O => N351
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_3_IBUF_44,
      O => N352
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N351,
      I1 => w_in_3_IBUF_52,
      I2 => N352,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_3_IBUF_44,
      O => N354
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_3_IBUF_44,
      O => N355
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N354,
      I1 => w_in_3_IBUF_52,
      I2 => N355,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_3_IBUF_44,
      O => N357
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_3_IBUF_44,
      O => N358
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N357,
      I1 => w_in_3_IBUF_52,
      I2 => N358,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_3_IBUF_44,
      O => N360
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_3_IBUF_44,
      O => N361
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N360,
      I1 => w_in_3_IBUF_52,
      I2 => N361,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_3_IBUF_36,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_3_IBUF_44,
      O => N363
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_3_IBUF_36,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_3_IBUF_44,
      O => N364
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT82 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N363,
      I1 => w_in_3_IBUF_52,
      I2 => N364,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(3),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_2_IBUF_45,
      O => N366
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I3 => e_in_2_IBUF_45,
      O => N367
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N366,
      I1 => w_in_2_IBUF_53,
      I2 => N367,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_2_IBUF_45,
      O => N369
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I3 => e_in_2_IBUF_45,
      O => N370
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N369,
      I1 => w_in_2_IBUF_53,
      I2 => N370,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_2_IBUF_45,
      O => N372
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I3 => e_in_2_IBUF_45,
      O => N373
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N372,
      I1 => w_in_2_IBUF_53,
      I2 => N373,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_2_IBUF_45,
      O => N375
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I3 => e_in_2_IBUF_45,
      O => N376
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N375,
      I1 => w_in_2_IBUF_53,
      I2 => N376,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_2_IBUF_45,
      O => N378
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I3 => e_in_2_IBUF_45,
      O => N379
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N378,
      I1 => w_in_2_IBUF_53,
      I2 => N379,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_2_IBUF_45,
      O => N381
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I3 => e_in_2_IBUF_45,
      O => N382
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N381,
      I1 => w_in_2_IBUF_53,
      I2 => N382,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_2_IBUF_45,
      O => N384
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I3 => e_in_2_IBUF_45,
      O => N385
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N384,
      I1 => w_in_2_IBUF_53,
      I2 => N385,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_2_IBUF_45,
      O => N387
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I3 => e_in_2_IBUF_45,
      O => N388
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N387,
      I1 => w_in_2_IBUF_53,
      I2 => N388,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_2_IBUF_45,
      O => N390
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I3 => e_in_2_IBUF_45,
      O => N391
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N390,
      I1 => w_in_2_IBUF_53,
      I2 => N391,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_2_IBUF_45,
      O => N393
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I3 => e_in_2_IBUF_45,
      O => N394
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N393,
      I1 => w_in_2_IBUF_53,
      I2 => N394,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_2_IBUF_45,
      O => N396
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I3 => e_in_2_IBUF_45,
      O => N397
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N396,
      I1 => w_in_2_IBUF_53,
      I2 => N397,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_2_IBUF_45,
      O => N399
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I3 => e_in_2_IBUF_45,
      O => N400
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N399,
      I1 => w_in_2_IBUF_53,
      I2 => N400,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_2_IBUF_45,
      O => N402
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I3 => e_in_2_IBUF_45,
      O => N403
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N402,
      I1 => w_in_2_IBUF_53,
      I2 => N403,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_2_IBUF_45,
      O => N405
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I3 => e_in_2_IBUF_45,
      O => N406
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N405,
      I1 => w_in_2_IBUF_53,
      I2 => N406,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_2_IBUF_45,
      O => N408
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I3 => e_in_2_IBUF_45,
      O => N409
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N408,
      I1 => w_in_2_IBUF_53,
      I2 => N409,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW0 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => s_in_2_IBUF_37,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_2_IBUF_45,
      O => N411
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW1 : LUT4
    generic map(
      INIT => X"10DC"
    )
    port map (
      I0 => s_in_2_IBUF_37,
      I1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => e_in_2_IBUF_45,
      O => N412
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT62 : LUT6
    generic map(
      INIT => X"CC0FFFFFCC550000"
    )
    port map (
      I0 => N411,
      I1 => w_in_2_IBUF_53,
      I2 => N412,
      I3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      I4 => ctrl_reg_write(1),
      I5 => reg_data0(2),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q
    );
  NODE_ALU_Mmux_res1_rs_lut_3_Q : LUT6
    generic map(
      INIT => X"5959A6596A6A956A"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => N414,
      I2 => instr_6_IBUF_17,
      I3 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q,
      I4 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I5 => reg_data2_out(3),
      O => NODE_ALU_Mmux_res1_rs_lut(3)
    );
  NODE_ALU_Mmux_res1_rs_lut_6_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_9_IBUF_14,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(6),
      I5 => reg_data1_out(6),
      O => NODE_ALU_Mmux_res1_rs_lut(6)
    );
  NODE_ALU_Mmux_res78_SW4 : LUT5
    generic map(
      INIT => X"74747744"
    )
    port map (
      I0 => NODE_S_REG_tmp_s_new(7),
      I1 => ctrl_s_swap,
      I2 => N59,
      I3 => N58,
      I4 => alu_op2(7),
      O => N420
    );
  NODE_ALU_Mmux_res78_SW5 : LUT5
    generic map(
      INIT => X"74747744"
    )
    port map (
      I0 => NODE_S_REG_tmp_s_new(7),
      I1 => ctrl_s_swap,
      I2 => N61,
      I3 => N60,
      I4 => alu_op2(7),
      O => N421
    );
  MUX_N_Mmux_bus_out81 : LUT6
    generic map(
      INIT => X"0808FBFB08FB08FB"
    )
    port map (
      I0 => n_in_7_IBUF_24,
      I1 => instr_21_IBUF_0,
      I2 => CONTROL_disable_mask_OR_1_o,
      I3 => N420,
      I4 => N421,
      I5 => NODE_ALU_Mmux_res1_split(7),
      O => reg_data0(7)
    );
  NODE_ALU_Mmux_res1_rs_lut_1_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_4_IBUF_19,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(1),
      I5 => reg_data1_out(1),
      O => NODE_ALU_Mmux_res1_rs_lut(1)
    );
  NODE_ALU_Mmux_res1_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_5_IBUF_18,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(2),
      I5 => reg_data1_out(2),
      O => NODE_ALU_Mmux_res1_rs_lut(2)
    );
  NODE_ALU_Mmux_res1_rs_lut_4_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_7_IBUF_16,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(4),
      I5 => reg_data1_out(4),
      O => NODE_ALU_Mmux_res1_rs_lut(4)
    );
  NODE_ALU_Mmux_res1_rs_lut_5_Q : LUT6
    generic map(
      INIT => X"F0D20F870F2DF078"
    )
    port map (
      I0 => N114,
      I1 => instr_8_IBUF_15,
      I2 => instr_0_IBUF_23,
      I3 => CONTROL_disable_mask_OR_1_o,
      I4 => reg_data2_out(5),
      I5 => reg_data1_out(5),
      O => NODE_ALU_Mmux_res1_rs_lut(5)
    );
  NODE_REG_Mmux_data2_out21 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_247,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_248,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71,
      O => reg_data2_out(1)
    );
  NODE_REG_Mmux_data2_out31 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_252,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_253,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72,
      O => reg_data2_out(2)
    );
  NODE_REG_Mmux_data2_out51 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_262,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_263,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74,
      O => reg_data2_out(4)
    );
  NODE_REG_Mmux_data2_out61 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_267,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_268,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75,
      O => reg_data2_out(5)
    );
  NODE_REG_Mmux_data2_out11 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_242,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_243,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_246,
      O => reg_data2_out(0)
    );
  NODE_ALU_Mmux_res719 : LUT6
    generic map(
      INIT => X"FFBFAFABBFAFAB00"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      I2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      I3 => alu_op2(6),
      I4 => alu_op2(7),
      I5 => NODE_ALU_op1_7_op2_7_LessThan_4_o2_735,
      O => NODE_ALU_Mmux_res718_788
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1_SW0 : LUT5
    generic map(
      INIT => X"405450FF"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q,
      I2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q,
      I3 => alu_op2(5),
      I4 => alu_op2(4),
      O => N63
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1_SW1 : LUT5
    generic map(
      INIT => X"00404454"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q,
      I2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q,
      I3 => alu_op2(4),
      I4 => alu_op2(5),
      O => N64
    );
  MUX_N_Mmux_bus_out21 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAACCF0"
    )
    port map (
      I0 => N481,
      I1 => N480,
      I2 => N479,
      I3 => NODE_ALU_Mmux_res1_split(1),
      I4 => NODE_ALU_Mmux_res72,
      I5 => NODE_ALU_Mmux_res721_776,
      O => reg_data0(1)
    );
  NODE_REG_Mmux_data1_out11 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_330,
      I4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_331,
      I5 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_334,
      O => reg_data1_out(0)
    );
  NODE_REG_Mmux_data1_out21 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_335,
      I4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_336,
      I5 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71,
      O => reg_data1_out(1)
    );
  NODE_ALU_Mmux_res1_rs_lut_3_SW0 : LUT6
    generic map(
      INIT => X"0010000000100010"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_21_IBUF_0,
      I2 => instr_19_IBUF_2,
      I3 => instr_20_IBUF_1,
      I4 => STATE_state_out_139,
      I5 => instr_22_IBUF_8,
      O => N414
    );
  NODE_ALU_Mmux_res78_SW0 : LUT6
    generic map(
      INIT => X"FFF5FFFDFFF7FFFF"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      I5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => N58
    );
  NODE_ALU_Mmux_res78_SW1 : LUT6
    generic map(
      INIT => X"F8BFFCBFF8FFFCFF"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_1_IBUF_22,
      I2 => instr_0_IBUF_23,
      I3 => instr_2_IBUF_21,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      I5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => N59
    );
  NODE_ALU_Mmux_res78_SW2 : LUT6
    generic map(
      INIT => X"FACCFECCFBCCFFCC"
    )
    port map (
      I0 => instr_0_IBUF_23,
      I1 => instr_1_IBUF_22,
      I2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I3 => instr_2_IBUF_21,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      I5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => N60
    );
  NODE_ALU_Mmux_res78_SW3 : LUT6
    generic map(
      INIT => X"EBC0FBC0EFC0FFC0"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_0_IBUF_23,
      I2 => instr_2_IBUF_21,
      I3 => instr_1_IBUF_22,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      I5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => N61
    );
  NODE_REG_Mmux_data2_out41 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_257,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_258,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73,
      O => reg_data2_out(3)
    );
  NODE_REG_Mmux_data2_out71 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_272,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_273,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76,
      O => reg_data2_out(6)
    );
  NODE_REG_Mmux_data2_out81 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I1 => instr_10_IBUF_13,
      I2 => instr_9_IBUF_14,
      I3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_277,
      I4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_278,
      I5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77,
      O => reg_data2_out(7)
    );
  NODE_REG_Mmux_data1_out31 : LUT6
    generic map(
      INIT => X"5515511144044000"
    )
    port map (
      I0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I1 => instr_14_IBUF_9,
      I2 => instr_13_IBUF_10,
      I3 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_340,
      I4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_341,
      I5 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72,
      O => reg_data1_out(2)
    );
  NODE_REG_Mmux_data1_out51 : LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_14_IBUF_9,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q,
      O => reg_data1_out(4)
    );
  NODE_REG_Mmux_data1_out61 : LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_14_IBUF_9,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q,
      O => reg_data1_out(5)
    );
  NODE_REG_Mmux_data1_out41 : LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_14_IBUF_9,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q,
      O => reg_data1_out(3)
    );
  NODE_REG_Mmux_data1_out71 : LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_14_IBUF_9,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      O => reg_data1_out(6)
    );
  NODE_REG_Mmux_data1_out81 : LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => instr_13_IBUF_10,
      I1 => instr_11_IBUF_12,
      I2 => instr_12_IBUF_11,
      I3 => instr_14_IBUF_9,
      I4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => reg_data1_out(7)
    );
  NODE_ALU_Mmux_res7110_SW1 : MUXF7
    port map (
      I0 => N483,
      I1 => N484,
      S => ctrl_s_swap,
      O => N117
    );
  NODE_ALU_Mmux_res7110_SW1_F : LUT5
    generic map(
      INIT => X"2F222022"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => CONTROL_disable_mask_OR_1_o,
      I3 => instr_21_IBUF_0,
      I4 => n_in_0_IBUF_31,
      O => N483
    );
  NODE_ALU_Mmux_res723_SW1 : MUXF7
    port map (
      I0 => N485,
      I1 => N486,
      S => ctrl_s_swap,
      O => N480
    );
  NODE_ALU_Mmux_res723_SW1_F : LUT5
    generic map(
      INIT => X"1F111011"
    )
    port map (
      I0 => instr_2_IBUF_21,
      I1 => instr_1_IBUF_22,
      I2 => CONTROL_disable_mask_OR_1_o,
      I3 => instr_21_IBUF_0,
      I4 => n_in_1_IBUF_30,
      O => N485
    );
  NODE_COM_n0051_inv1 : LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
    port map (
      I0 => ctrl_com(1),
      I1 => instr_20_IBUF_1,
      I2 => CONTROL_disable_mask_OR_1_o,
      I3 => instr_21_IBUF_0,
      I4 => instr_19_IBUF_2,
      O => NODE_COM_n0051_inv
    );
  NODE_ALU_Mmux_res7110_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFB5551"
    )
    port map (
      I0 => instr_21_IBUF_0,
      I1 => instr_20_IBUF_1,
      I2 => instr_19_IBUF_2,
      I3 => NODE_S_REG_tmp_s_new(0),
      I4 => n_in_0_IBUF_31,
      I5 => CONTROL_disable_mask_OR_1_o,
      O => N118
    );
  NODE_ALU_Mmux_res723_SW2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFB5551"
    )
    port map (
      I0 => instr_21_IBUF_0,
      I1 => instr_20_IBUF_1,
      I2 => instr_19_IBUF_2,
      I3 => NODE_S_REG_tmp_s_new(1),
      I4 => n_in_1_IBUF_30,
      I5 => CONTROL_disable_mask_OR_1_o,
      O => N481
    );
  CONTROL_Mmux_com21 : LUT6
    generic map(
      INIT => X"0008000000080008"
    )
    port map (
      I0 => instr_20_IBUF_1,
      I1 => instr_21_IBUF_0,
      I2 => instr_23_IBUF_7,
      I3 => instr_19_IBUF_2,
      I4 => STATE_state_out_139,
      I5 => instr_22_IBUF_8,
      O => ctrl_com(1)
    );
  NODE_S_REG_n0028_inv1 : LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => step_IBUF_66,
      I1 => CONTROL_disable_mask_OR_1_o,
      I2 => instr_21_IBUF_0,
      I3 => instr_20_IBUF_1,
      I4 => instr_19_IBUF_2,
      O => NODE_S_REG_n0028_inv
    );
  CONTROL_Mmux_reg_write21 : LUT6
    generic map(
      INIT => X"00000D000D000000"
    )
    port map (
      I0 => instr_22_IBUF_8,
      I1 => STATE_state_out_139,
      I2 => instr_23_IBUF_7,
      I3 => instr_21_IBUF_0,
      I4 => instr_19_IBUF_2,
      I5 => instr_20_IBUF_1,
      O => ctrl_reg_write(1)
    );
  CONTROL_Mmux_reg_write11 : LUT6
    generic map(
      INIT => X"0D0000000D0D0D0D"
    )
    port map (
      I0 => instr_22_IBUF_8,
      I1 => STATE_state_out_139,
      I2 => instr_23_IBUF_7,
      I3 => instr_20_IBUF_1,
      I4 => instr_19_IBUF_2,
      I5 => instr_21_IBUF_0,
      O => ctrl_reg_write(0)
    );
  NODE_S_REG_n0027_inv1 : LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => CONTROL_disable_mask_OR_1_o,
      I1 => instr_21_IBUF_0,
      I2 => instr_20_IBUF_1,
      I3 => instr_19_IBUF_2,
      I4 => step_IBUF_66,
      O => NODE_S_REG_n0027_inv
    );
  NODE_ALU_Mmux_res7110_SW0 : LUT6
    generic map(
      INIT => X"4040404051404040"
    )
    port map (
      I0 => CONTROL_disable_mask_OR_1_o,
      I1 => instr_21_IBUF_0,
      I2 => n_in_0_IBUF_31,
      I3 => NODE_S_REG_tmp_s_new(0),
      I4 => instr_20_IBUF_1,
      I5 => instr_19_IBUF_2,
      O => N116
    );
  NODE_ALU_Mmux_res723_SW0 : LUT6
    generic map(
      INIT => X"4040404051404040"
    )
    port map (
      I0 => CONTROL_disable_mask_OR_1_o,
      I1 => instr_21_IBUF_0,
      I2 => n_in_1_IBUF_30,
      I3 => NODE_S_REG_tmp_s_new(1),
      I4 => instr_20_IBUF_1,
      I5 => instr_19_IBUF_2,
      O => N479
    );
  NODE_REG_n0602_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_15_IBUF_6,
      O => N30
    );
  NODE_REG_n0646_inv_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N32
    );
  NODE_REG_n0580_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_16_IBUF_5,
      O => N34
    );
  NODE_REG_n0558_inv_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_16_IBUF_5,
      I2 => instr_15_IBUF_6,
      I3 => instr_17_IBUF_4,
      O => N36
    );
  NODE_REG_n0514_inv_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_16_IBUF_5,
      O => N38
    );
  NODE_REG_n0492_inv_SW0 : LUT4
    generic map(
      INIT => X"FFBF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_15_IBUF_6,
      O => N40
    );
  NODE_REG_n0536_inv_SW0 : LUT4
    generic map(
      INIT => X"FEFF"
    )
    port map (
      I0 => instr_18_IBUF_3,
      I1 => instr_15_IBUF_6,
      I2 => instr_16_IBUF_5,
      I3 => instr_17_IBUF_4,
      O => N42
    );
  NODE_REG_n0426_inv_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_18_IBUF_3,
      I2 => instr_16_IBUF_5,
      I3 => instr_17_IBUF_4,
      O => N44
    );
  NODE_REG_n0470_inv_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N46
    );
  NODE_REG_n0382_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_17_IBUF_4,
      I1 => instr_16_IBUF_5,
      I2 => instr_15_IBUF_6,
      I3 => instr_18_IBUF_3,
      O => N48
    );
  NODE_REG_n0360_inv_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_17_IBUF_4,
      I1 => instr_18_IBUF_3,
      I2 => instr_15_IBUF_6,
      I3 => instr_16_IBUF_5,
      O => N50
    );
  NODE_REG_n0404_inv_SW0 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_18_IBUF_3,
      I2 => instr_15_IBUF_6,
      I3 => instr_17_IBUF_4,
      O => N52
    );
  NODE_REG_n0338_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_16_IBUF_5,
      I1 => instr_15_IBUF_6,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N54
    );
  NODE_REG_n0316_inv_SW0 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => instr_15_IBUF_6,
      I1 => instr_16_IBUF_5,
      I2 => instr_17_IBUF_4,
      I3 => instr_18_IBUF_3,
      O => N56
    );
  NODE_ALU_Mmux_res7110_SW1_G : LUT6
    generic map(
      INIT => X"AAFBAAAAAA08AAAA"
    )
    port map (
      I0 => NODE_S_REG_tmp_s_new(0),
      I1 => instr_22_IBUF_8,
      I2 => STATE_state_out_139,
      I3 => instr_23_IBUF_7,
      I4 => instr_21_IBUF_0,
      I5 => n_in_0_IBUF_31,
      O => N484
    );
  NODE_ALU_Mmux_res723_SW1_G : LUT6
    generic map(
      INIT => X"AAFBAAAAAA08AAAA"
    )
    port map (
      I0 => NODE_S_REG_tmp_s_new(1),
      I1 => instr_22_IBUF_8,
      I2 => STATE_state_out_139,
      I3 => instr_23_IBUF_7,
      I4 => instr_21_IBUF_0,
      I5 => n_in_1_IBUF_30,
      O => N486
    );
  NODE_ALU_Mmux_res1_rs_lut_7_SW0 : LUT6
    generic map(
      INIT => X"00000004FFFFFFF7"
    )
    port map (
      I0 => instr_10_IBUF_13,
      I1 => instr_19_IBUF_2,
      I2 => instr_20_IBUF_1,
      I3 => instr_23_IBUF_7,
      I4 => instr_21_IBUF_0,
      I5 => reg_data2_out(7),
      O => N487
    );
  NODE_ALU_Mmux_res1_rs_lut_7_Q : LUT6
    generic map(
      INIT => X"3933C6CCCCC63339"
    )
    port map (
      I0 => instr_22_IBUF_8,
      I1 => instr_0_IBUF_23,
      I2 => STATE_state_out_139,
      I3 => reg_data2_out(7),
      I4 => reg_data1_out(7),
      I5 => N487,
      O => NODE_ALU_Mmux_res1_rs_lut(7)
    );
  CONTROL_Mmux_s_swap11 : LUT6
    generic map(
      INIT => X"0010000000100010"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_21_IBUF_0,
      I2 => instr_20_IBUF_1,
      I3 => instr_19_IBUF_2,
      I4 => STATE_state_out_139,
      I5 => instr_22_IBUF_8,
      O => ctrl_s_swap
    );
  CONTROL_disable_mask_OR_1_o1_1 : LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => instr_23_IBUF_7,
      I1 => instr_22_IBUF_8,
      I2 => STATE_state_out_139,
      O => CONTROL_disable_mask_OR_1_o1_1108
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162 : MUXF7
    port map (
      I0 => N489,
      I1 => N490,
      S => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N489
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N490
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162 : MUXF7
    port map (
      I0 => N491,
      I1 => N492,
      S => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N491
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N492
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162 : MUXF7
    port map (
      I0 => N493,
      I1 => N494,
      S => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N493
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N494
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162 : MUXF7
    port map (
      I0 => N495,
      I1 => N496,
      S => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N495
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N496
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162 : MUXF7
    port map (
      I0 => N497,
      I1 => N498,
      S => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N497
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N498
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162 : MUXF7
    port map (
      I0 => N499,
      I1 => N500,
      S => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N499
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N500
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162 : MUXF7
    port map (
      I0 => N501,
      I1 => N502,
      S => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N501
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N502
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162 : MUXF7
    port map (
      I0 => N503,
      I1 => N504,
      S => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N503
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N504
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162 : MUXF7
    port map (
      I0 => N505,
      I1 => N506,
      S => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N505
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N506
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162 : MUXF7
    port map (
      I0 => N507,
      I1 => N508,
      S => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N507
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N508
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162 : MUXF7
    port map (
      I0 => N509,
      I1 => N510,
      S => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N509
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N510
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162 : MUXF7
    port map (
      I0 => N511,
      I1 => N512,
      S => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N511
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N512
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162 : MUXF7
    port map (
      I0 => N513,
      I1 => N514,
      S => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N513
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N514
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162 : MUXF7
    port map (
      I0 => N515,
      I1 => N516,
      S => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N515
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N516
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162 : MUXF7
    port map (
      I0 => N517,
      I1 => N518,
      S => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N517
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N518
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162 : MUXF7
    port map (
      I0 => N519,
      I1 => N520,
      S => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(7),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I4 => e_in_7_IBUF_40,
      I5 => s_in_7_IBUF_32,
      O => N519
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(7),
      I2 => w_in_7_IBUF_48,
      O => N520
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42 : MUXF7
    port map (
      I0 => N521,
      I1 => N522,
      S => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N521
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N522
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42 : MUXF7
    port map (
      I0 => N523,
      I1 => N524,
      S => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N523
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N524
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42 : MUXF7
    port map (
      I0 => N525,
      I1 => N526,
      S => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N525
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N526
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42 : MUXF7
    port map (
      I0 => N527,
      I1 => N528,
      S => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N527
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N528
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42 : MUXF7
    port map (
      I0 => N529,
      I1 => N530,
      S => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N529
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N530
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42 : MUXF7
    port map (
      I0 => N531,
      I1 => N532,
      S => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N531
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N532
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42 : MUXF7
    port map (
      I0 => N533,
      I1 => N534,
      S => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N533
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N534
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42 : MUXF7
    port map (
      I0 => N535,
      I1 => N536,
      S => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N535
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N536
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42 : MUXF7
    port map (
      I0 => N537,
      I1 => N538,
      S => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N537
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N538
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42 : MUXF7
    port map (
      I0 => N539,
      I1 => N540,
      S => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N539
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N540
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42 : MUXF7
    port map (
      I0 => N541,
      I1 => N542,
      S => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N541
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N542
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42 : MUXF7
    port map (
      I0 => N543,
      I1 => N544,
      S => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N543
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N544
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42 : MUXF7
    port map (
      I0 => N545,
      I1 => N546,
      S => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N545
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N546
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42 : MUXF7
    port map (
      I0 => N547,
      I1 => N548,
      S => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N547
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N548
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42 : MUXF7
    port map (
      I0 => N549,
      I1 => N550,
      S => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N549
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N550
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42 : MUXF7
    port map (
      I0 => N551,
      I1 => N552,
      S => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42_F : LUT6
    generic map(
      INIT => X"EEEA2E2AE2EA222A"
    )
    port map (
      I0 => reg_data0(1),
      I1 => ctrl_reg_write(1),
      I2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      I3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      I4 => e_in_1_IBUF_46,
      I5 => s_in_1_IBUF_38,
      O => N551
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ctrl_reg_write(1),
      I1 => reg_data0(1),
      I2 => w_in_1_IBUF_54,
      O => N552
    );
  NODE_ALU_Mmux_res733 : MUXF7
    port map (
      I0 => N553,
      I1 => N554,
      S => instr_2_IBUF_21,
      O => alu_res(2)
    );
  NODE_ALU_Mmux_res733_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(2),
      I3 => reg_data1_out(2),
      I4 => NODE_ALU_Mmux_res1_split(2),
      O => N553
    );
  NODE_ALU_Mmux_res733_G : LUT6
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
      O => N554
    );
  NODE_ALU_Mmux_res743 : MUXF7
    port map (
      I0 => N555,
      I1 => N556,
      S => instr_2_IBUF_21,
      O => alu_res(3)
    );
  NODE_ALU_Mmux_res743_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(3),
      I3 => reg_data1_out(3),
      I4 => NODE_ALU_Mmux_res1_split(3),
      O => N555
    );
  NODE_ALU_Mmux_res743_G : LUT6
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
      O => N556
    );
  NODE_ALU_Mmux_res753 : MUXF7
    port map (
      I0 => N557,
      I1 => N558,
      S => instr_2_IBUF_21,
      O => alu_res(4)
    );
  NODE_ALU_Mmux_res753_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(4),
      I3 => reg_data1_out(4),
      I4 => NODE_ALU_Mmux_res1_split(4),
      O => N557
    );
  NODE_ALU_Mmux_res753_G : LUT6
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
      O => N558
    );
  NODE_ALU_Mmux_res763 : MUXF7
    port map (
      I0 => N559,
      I1 => N560,
      S => instr_2_IBUF_21,
      O => alu_res(5)
    );
  NODE_ALU_Mmux_res763_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(5),
      I3 => reg_data1_out(5),
      I4 => NODE_ALU_Mmux_res1_split(5),
      O => N559
    );
  NODE_ALU_Mmux_res763_G : LUT6
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
      O => N560
    );
  NODE_ALU_Mmux_res773 : MUXF7
    port map (
      I0 => N561,
      I1 => N562,
      S => instr_2_IBUF_21,
      O => alu_res(6)
    );
  NODE_ALU_Mmux_res773_F : LUT5
    generic map(
      INIT => X"D5558000"
    )
    port map (
      I0 => instr_1_IBUF_22,
      I1 => instr_0_IBUF_23,
      I2 => alu_op2(6),
      I3 => reg_data1_out(6),
      I4 => NODE_ALU_Mmux_res1_split(6),
      O => N561
    );
  NODE_ALU_Mmux_res773_G : LUT6
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
      O => N562
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_64
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT211 : LUT5
    generic map(
      INIT => X"FFFFAAAE"
    )
    port map (
      I0 => NODE_ALU_Mmux_res721_776,
      I1 => NODE_ALU_Mmux_res1_split(1),
      I2 => instr_1_IBUF_22,
      I3 => instr_2_IBUF_21,
      I4 => NODE_ALU_Mmux_res72,
      O => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7 : MUXF7
    port map (
      I0 => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21,
      I1 => sr_in_1_IBUF_62,
      S => step_IBUF_66,
      O => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_1184
    );

end Structure;

