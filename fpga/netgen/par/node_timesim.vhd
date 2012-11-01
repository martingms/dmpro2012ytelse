--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: node_timesim.vhd
-- /___/   /\     Timestamp: Wed Oct 31 10:36:24 2012
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf node.pcf -rpw 100 -tpw 0 -ar Structure -tm node -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim node.ncd node_timesim.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.15 2010-12-02)
-- Input file	: node.ncd
-- Output file	: C:\Users\hanskrfl\Desktop\dmpro\fpga\netgen\par\node_timesim.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal N192 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_7_Q : STD_LOGIC; 
  signal s_in_6_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_7_Q : STD_LOGIC; 
  signal e_in_6_IBUF_0 : STD_LOGIC; 
  signal N193_0 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal s_in_3_IBUF_0 : STD_LOGIC; 
  signal e_in_3_IBUF_0 : STD_LOGIC; 
  signal N337_0 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_11_Q : STD_LOGIC; 
  signal s_in_0_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_11_0 : STD_LOGIC; 
  signal e_in_0_IBUF_0 : STD_LOGIC; 
  signal N94_0 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_6_Q : STD_LOGIC; 
  signal N82_0 : STD_LOGIC; 
  signal instr_12_IBUF_0 : STD_LOGIC; 
  signal instr_13_IBUF_0 : STD_LOGIC; 
  signal instr_14_IBUF_0 : STD_LOGIC; 
  signal instr_11_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_14_0 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202_0 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal instr_17_IBUF_0 : STD_LOGIC; 
  signal instr_18_IBUF_0 : STD_LOGIC; 
  signal instr_15_IBUF_0 : STD_LOGIC; 
  signal instr_16_IBUF_0 : STD_LOGIC; 
  signal N52_0 : STD_LOGIC; 
  signal N387 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_8_0 : STD_LOGIC; 
  signal s_in_2_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_8_0 : STD_LOGIC; 
  signal e_in_2_IBUF_0 : STD_LOGIC; 
  signal N388_0 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56_0 : STD_LOGIC; 
  signal NODE_S_REG_n0027_inv_0 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal alu_res_3_0 : STD_LOGIC; 
  signal sr_in_3_IBUF_0 : STD_LOGIC; 
  signal step_IBUF_0 : STD_LOGIC; 
  signal alu_res_2_0 : STD_LOGIC; 
  signal sr_in_2_IBUF_0 : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_3_0 : STD_LOGIC; 
  signal reset_IBUF_0 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_2_Q : STD_LOGIC; 
  signal N181_0 : STD_LOGIC; 
  signal NODE_REG_n0426_inv_4836 : STD_LOGIC; 
  signal N44_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_9_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_9_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_9_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_1_Q : STD_LOGIC; 
  signal instr_10_IBUF_0 : STD_LOGIC; 
  signal instr_8_IBUF_0 : STD_LOGIC; 
  signal instr_7_IBUF_0 : STD_LOGIC; 
  signal instr_9_IBUF_0 : STD_LOGIC; 
  signal alu_res_5_0 : STD_LOGIC; 
  signal sr_in_5_IBUF_0 : STD_LOGIC; 
  signal alu_res_4_0 : STD_LOGIC; 
  signal sr_in_4_IBUF_0 : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_5_0 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_12_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_12_0 : STD_LOGIC; 
  signal N352_0 : STD_LOGIC; 
  signal N291 : STD_LOGIC; 
  signal s_in_4_IBUF_0 : STD_LOGIC; 
  signal e_in_4_IBUF_0 : STD_LOGIC; 
  signal N292_0 : STD_LOGIC; 
  signal NODE_REG_n0360_inv_4862 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_12_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_4_Q : STD_LOGIC; 
  signal N405 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_13_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_13_0 : STD_LOGIC; 
  signal N406_0 : STD_LOGIC; 
  signal N327 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_4_Q : STD_LOGIC; 
  signal N328_0 : STD_LOGIC; 
  signal N303 : STD_LOGIC; 
  signal N304_0 : STD_LOGIC; 
  signal NODE_COM_n0051_inv : STD_LOGIC; 
  signal n_in_1_IBUF_0 : STD_LOGIC; 
  signal n_in_0_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_e_out_1_0 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_3_Q : STD_LOGIC; 
  signal N274_0 : STD_LOGIC; 
  signal n_in_3_IBUF_0 : STD_LOGIC; 
  signal n_in_2_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_e_out_3_0 : STD_LOGIC; 
  signal N258 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_15_Q : STD_LOGIC; 
  signal s_in_5_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_15_0 : STD_LOGIC; 
  signal e_in_5_IBUF_0 : STD_LOGIC; 
  signal N259_0 : STD_LOGIC; 
  signal n_in_5_IBUF_0 : STD_LOGIC; 
  signal n_in_4_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_e_out_5_0 : STD_LOGIC; 
  signal N237 : STD_LOGIC; 
  signal N238_0 : STD_LOGIC; 
  signal N378 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_5_Q : STD_LOGIC; 
  signal N379_0 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85_0 : STD_LOGIC; 
  signal n_in_7_IBUF_0 : STD_LOGIC; 
  signal n_in_6_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_e_out_7_0 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_0_Q : STD_LOGIC; 
  signal N112_0 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N103_0 : STD_LOGIC; 
  signal N252 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_10_Q : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_10_0 : STD_LOGIC; 
  signal N253_0 : STD_LOGIC; 
  signal N246 : STD_LOGIC; 
  signal N247_0 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_1_Q : STD_LOGIC; 
  signal N223_0 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N214_0 : STD_LOGIC; 
  signal NODE_REG_n0338_inv_4935 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_13_Q : STD_LOGIC; 
  signal N396 : STD_LOGIC; 
  signal N397_0 : STD_LOGIC; 
  signal N342 : STD_LOGIC; 
  signal N343_0 : STD_LOGIC; 
  signal NODE_REG_n0470_inv_4941 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_7_Q : STD_LOGIC; 
  signal N48_0 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184_0 : STD_LOGIC; 
  signal N318 : STD_LOGIC; 
  signal N319_0 : STD_LOGIC; 
  signal N372 : STD_LOGIC; 
  signal N373_0 : STD_LOGIC; 
  signal N312 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_14_Q : STD_LOGIC; 
  signal N313_0 : STD_LOGIC; 
  signal NODE_REG_n0448_inv_4953 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_Decoder_70_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_0 : STD_LOGIC; 
  signal w_in_0_IBUF_0 : STD_LOGIC; 
  signal N339 : STD_LOGIC; 
  signal N340_0 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal N100_0 : STD_LOGIC; 
  signal N282 : STD_LOGIC; 
  signal N283_0 : STD_LOGIC; 
  signal N243 : STD_LOGIC; 
  signal N244_0 : STD_LOGIC; 
  signal NODE_REG_n0316_inv_4967 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_14_Q : STD_LOGIC; 
  signal N315 : STD_LOGIC; 
  signal N316_0 : STD_LOGIC; 
  signal N357 : STD_LOGIC; 
  signal N358_0 : STD_LOGIC; 
  signal N255 : STD_LOGIC; 
  signal N256_0 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226_0 : STD_LOGIC; 
  signal N210 : STD_LOGIC; 
  signal N211_0 : STD_LOGIC; 
  signal N408 : STD_LOGIC; 
  signal N409_0 : STD_LOGIC; 
  signal N189 : STD_LOGIC; 
  signal N190_0 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N331_0 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205_0 : STD_LOGIC; 
  signal N381 : STD_LOGIC; 
  signal N382_0 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N199_0 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91_0 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N175_0 : STD_LOGIC; 
  signal NODE_REG_n0646_inv_4995 : STD_LOGIC; 
  signal N32_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_15_Q : STD_LOGIC; 
  signal N348 : STD_LOGIC; 
  signal N349_0 : STD_LOGIC; 
  signal N288 : STD_LOGIC; 
  signal N289_0 : STD_LOGIC; 
  signal N393 : STD_LOGIC; 
  signal N394_0 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73_0 : STD_LOGIC; 
  signal N324 : STD_LOGIC; 
  signal N325_0 : STD_LOGIC; 
  signal N297 : STD_LOGIC; 
  signal N298_0 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88_0 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277_0 : STD_LOGIC; 
  signal N264 : STD_LOGIC; 
  signal N265_0 : STD_LOGIC; 
  signal N234 : STD_LOGIC; 
  signal N235_0 : STD_LOGIC; 
  signal N369 : STD_LOGIC; 
  signal N370_0 : STD_LOGIC; 
  signal N195 : STD_LOGIC; 
  signal N196_0 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N106_0 : STD_LOGIC; 
  signal e_in_1_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_s_out_1_0 : STD_LOGIC; 
  signal N267 : STD_LOGIC; 
  signal N268_0 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N208_0 : STD_LOGIC; 
  signal NODE_COM_s_out_3_0 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178_0 : STD_LOGIC; 
  signal NODE_COM_s_out_5_0 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70_0 : STD_LOGIC; 
  signal NODE_REG_n0536_inv_5045 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_4_Q : STD_LOGIC; 
  signal N360 : STD_LOGIC; 
  signal N361_0 : STD_LOGIC; 
  signal e_in_7_IBUF_0 : STD_LOGIC; 
  signal NODE_COM_s_out_7_0 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal CONTROL_disable_mask_OR_1_o : STD_LOGIC; 
  signal instr_21_IBUF_0 : STD_LOGIC; 
  signal instr_20_IBUF_0 : STD_LOGIC; 
  signal instr_19_IBUF_0 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N412_0 : STD_LOGIC; 
  signal N402 : STD_LOGIC; 
  signal N403_0 : STD_LOGIC; 
  signal N309 : STD_LOGIC; 
  signal N310_0 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N334_0 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N97_0 : STD_LOGIC; 
  signal N279 : STD_LOGIC; 
  signal N280_0 : STD_LOGIC; 
  signal N240 : STD_LOGIC; 
  signal N241_0 : STD_LOGIC; 
  signal N384 : STD_LOGIC; 
  signal N385_0 : STD_LOGIC; 
  signal N345 : STD_LOGIC; 
  signal N346_0 : STD_LOGIC; 
  signal NODE_S_REG_n0028_inv : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal instr_2_IBUF_0 : STD_LOGIC; 
  signal instr_1_IBUF_0 : STD_LOGIC; 
  signal instr_0_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76_0 : STD_LOGIC; 
  signal N249 : STD_LOGIC; 
  signal N250_0 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229_0 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217_0 : STD_LOGIC; 
  signal N399 : STD_LOGIC; 
  signal N400_0 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N187_0 : STD_LOGIC; 
  signal N321 : STD_LOGIC; 
  signal N322_0 : STD_LOGIC; 
  signal NODE_REG_n0404_inv_5098 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_10_Q : STD_LOGIC; 
  signal NODE_REG_n0492_inv_5100 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_n0514_inv_5102 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_5_Q : STD_LOGIC; 
  signal N375 : STD_LOGIC; 
  signal N376_0 : STD_LOGIC; 
  signal NODE_REG_n0602_inv_5106 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_1_Q : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N220_0 : STD_LOGIC; 
  signal NODE_REG_n0558_inv_5110 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_n0580_inv_5112 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_2_Q : STD_LOGIC; 
  signal N306 : STD_LOGIC; 
  signal N307_0 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109_0 : STD_LOGIC; 
  signal N285 : STD_LOGIC; 
  signal N286_0 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67_0 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79_0 : STD_LOGIC; 
  signal N300 : STD_LOGIC; 
  signal N301_0 : STD_LOGIC; 
  signal N363 : STD_LOGIC; 
  signal N364_0 : STD_LOGIC; 
  signal N294 : STD_LOGIC; 
  signal N295_0 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271_0 : STD_LOGIC; 
  signal N354 : STD_LOGIC; 
  signal N355_0 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N262_0 : STD_LOGIC; 
  signal NODE_REG_n0382_inv_5136 : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_11_Q : STD_LOGIC; 
  signal N390 : STD_LOGIC; 
  signal N391_0 : STD_LOGIC; 
  signal N366 : STD_LOGIC; 
  signal N367_0 : STD_LOGIC; 
  signal N231 : STD_LOGIC; 
  signal N232_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_0_0 : STD_LOGIC; 
  signal instr_4_IBUF_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_1_0 : STD_LOGIC; 
  signal instr_5_IBUF_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_2_0 : STD_LOGIC; 
  signal N414 : STD_LOGIC; 
  signal instr_6_IBUF_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_3_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_4_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_5_0 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_6_0 : STD_LOGIC; 
  signal instr_22_IBUF_0 : STD_LOGIC; 
  signal STATE_state_out_5159 : STD_LOGIC; 
  signal N487 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_split_7_0 : STD_LOGIC; 
  signal instr_3_IBUF_0 : STD_LOGIC; 
  signal instr_23_IBUF_0 : STD_LOGIC; 
  signal s_in_1_IBUF_0 : STD_LOGIC; 
  signal s_in_7_IBUF_0 : STD_LOGIC; 
  signal w_in_1_IBUF_0 : STD_LOGIC; 
  signal w_in_2_IBUF_0 : STD_LOGIC; 
  signal w_in_3_IBUF_0 : STD_LOGIC; 
  signal w_in_4_IBUF_0 : STD_LOGIC; 
  signal w_in_5_IBUF_0 : STD_LOGIC; 
  signal w_in_6_IBUF_0 : STD_LOGIC; 
  signal w_in_7_IBUF_0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal sr_in_0_IBUF_0 : STD_LOGIC; 
  signal sr_in_1_IBUF_0 : STD_LOGIC; 
  signal sr_in_6_IBUF_0 : STD_LOGIC; 
  signal sr_in_7_IBUF_0 : STD_LOGIC; 
  signal N481 : STD_LOGIC; 
  signal N480_0 : STD_LOGIC; 
  signal N479 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res72 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res721_5216 : STD_LOGIC; 
  signal ctrl_s_swap : STD_LOGIC; 
  signal NODE_REG_n0624_inv : STD_LOGIC; 
  signal NODE_REG_adr3_3_Decoder_52_OUT_0_Q : STD_LOGIC; 
  signal N421 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_0 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_0 : STD_LOGIC; 
  signal alu_res_6_0 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0_5292 : STD_LOGIC; 
  signal N117_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_0 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_0 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_0 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res717_5377 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res718_5378 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_5380 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_5381 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_5382 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_5383 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_5384 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_5385 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_5386 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_5387 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_5388 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_5389 : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_0 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_5392 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_5393 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_5394 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_5400 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal ctrl_set_state : STD_LOGIC; 
  signal NODE_ALU_op1_7_op2_7_LessThan_4_o2_5407 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal CONTROL_disable_mask_OR_1_o1_5410 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res714 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res712 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res716_5414 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_5417 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_5418 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_5419 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_5420 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_5423 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5424 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_5428 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_N67 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res715_5435 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal NODE_ALU_op1_7_op2_7_LessThan_4_o1_5437 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_5438 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_5442 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75 : STD_LOGIC; 
  signal N420 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal reg_data1_out_0_rt_31 : STD_LOGIC; 
  signal NODE_ALU_Mmux_res1_rs_lut_0_rt_30 : STD_LOGIC; 
  signal instr_0_IBUF_72 : STD_LOGIC; 
  signal instr_1_IBUF_75 : STD_LOGIC; 
  signal instr_2_IBUF_78 : STD_LOGIC; 
  signal instr_3_IBUF_81 : STD_LOGIC; 
  signal instr_4_IBUF_84 : STD_LOGIC; 
  signal instr_5_IBUF_87 : STD_LOGIC; 
  signal instr_6_IBUF_90 : STD_LOGIC; 
  signal instr_7_IBUF_93 : STD_LOGIC; 
  signal instr_8_IBUF_96 : STD_LOGIC; 
  signal instr_9_IBUF_99 : STD_LOGIC; 
  signal instr_10_IBUF_102 : STD_LOGIC; 
  signal instr_11_IBUF_105 : STD_LOGIC; 
  signal instr_12_IBUF_108 : STD_LOGIC; 
  signal instr_20_IBUF_111 : STD_LOGIC; 
  signal instr_13_IBUF_114 : STD_LOGIC; 
  signal instr_21_IBUF_117 : STD_LOGIC; 
  signal instr_14_IBUF_120 : STD_LOGIC; 
  signal instr_22_IBUF_123 : STD_LOGIC; 
  signal instr_15_IBUF_126 : STD_LOGIC; 
  signal instr_23_IBUF_129 : STD_LOGIC; 
  signal instr_16_IBUF_132 : STD_LOGIC; 
  signal instr_17_IBUF_135 : STD_LOGIC; 
  signal instr_18_IBUF_138 : STD_LOGIC; 
  signal instr_19_IBUF_141 : STD_LOGIC; 
  signal s_in_0_IBUF_144 : STD_LOGIC; 
  signal s_in_1_IBUF_147 : STD_LOGIC; 
  signal s_in_2_IBUF_150 : STD_LOGIC; 
  signal s_in_3_IBUF_153 : STD_LOGIC; 
  signal s_in_4_IBUF_156 : STD_LOGIC; 
  signal s_in_5_IBUF_159 : STD_LOGIC; 
  signal s_in_6_IBUF_162 : STD_LOGIC; 
  signal s_in_7_IBUF_165 : STD_LOGIC; 
  signal e_in_0_IBUF_184 : STD_LOGIC; 
  signal e_in_1_IBUF_187 : STD_LOGIC; 
  signal e_in_2_IBUF_192 : STD_LOGIC; 
  signal e_in_3_IBUF_197 : STD_LOGIC; 
  signal e_in_4_IBUF_202 : STD_LOGIC; 
  signal e_in_5_IBUF_207 : STD_LOGIC; 
  signal e_in_6_IBUF_212 : STD_LOGIC; 
  signal e_in_7_IBUF_217 : STD_LOGIC; 
  signal reset_IBUF_224 : STD_LOGIC; 
  signal w_in_0_IBUF_227 : STD_LOGIC; 
  signal w_in_1_IBUF_230 : STD_LOGIC; 
  signal w_in_2_IBUF_233 : STD_LOGIC; 
  signal w_in_3_IBUF_236 : STD_LOGIC; 
  signal w_in_4_IBUF_239 : STD_LOGIC; 
  signal w_in_5_IBUF_242 : STD_LOGIC; 
  signal w_in_6_IBUF_245 : STD_LOGIC; 
  signal w_in_7_IBUF_248 : STD_LOGIC; 
  signal step_IBUF_283 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_288 : STD_LOGIC; 
  signal sr_in_0_IBUF_291 : STD_LOGIC; 
  signal sr_in_1_IBUF_294 : STD_LOGIC; 
  signal sr_in_2_IBUF_297 : STD_LOGIC; 
  signal sr_in_3_IBUF_300 : STD_LOGIC; 
  signal sr_in_4_IBUF_303 : STD_LOGIC; 
  signal sr_in_5_IBUF_306 : STD_LOGIC; 
  signal sr_in_6_IBUF_309 : STD_LOGIC; 
  signal sr_in_7_IBUF_312 : STD_LOGIC; 
  signal n_in_0_IBUF_331 : STD_LOGIC; 
  signal n_in_1_IBUF_334 : STD_LOGIC; 
  signal n_in_2_IBUF_337 : STD_LOGIC; 
  signal n_in_3_IBUF_340 : STD_LOGIC; 
  signal n_in_4_IBUF_343 : STD_LOGIC; 
  signal n_in_5_IBUF_346 : STD_LOGIC; 
  signal n_in_6_IBUF_349 : STD_LOGIC; 
  signal n_in_7_IBUF_352 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_390 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_382 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_374 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_366 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_365 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_364 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q : STD_LOGIC; 
  signal N515 : STD_LOGIC; 
  signal N516 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_13_pack_8 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_462 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_454 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_446 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_438 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_437 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_436 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q : STD_LOGIC; 
  signal N409 : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q : STD_LOGIC; 
  signal N400 : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q : STD_LOGIC; 
  signal N28_pack_3 : STD_LOGIC; 
  signal N388 : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q : STD_LOGIC; 
  signal N535 : STD_LOGIC; 
  signal N536 : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q : STD_LOGIC; 
  signal N517 : STD_LOGIC; 
  signal N518 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_14_pack_8 : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q : STD_LOGIC; 
  signal N547 : STD_LOGIC; 
  signal N548 : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q : STD_LOGIC; 
  signal N537 : STD_LOGIC; 
  signal N538 : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N542 : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q : STD_LOGIC; 
  signal N543 : STD_LOGIC; 
  signal N544 : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_769 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_761 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_753 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_745 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q : STD_LOGIC; 
  signal N406 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N397 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N403 : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q : STD_LOGIC; 
  signal N549 : STD_LOGIC; 
  signal N550 : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q : STD_LOGIC; 
  signal N539 : STD_LOGIC; 
  signal N540 : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72_pack_5 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_989 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_981 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_1018 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_1010 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_1002 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_994 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_1052 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_1044 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_1036 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_1028 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q : STD_LOGIC; 
  signal N394 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N262 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_1178 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_1170 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_1162 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_1154 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q : STD_LOGIC; 
  signal N512 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_12_pack_8 : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N373 : STD_LOGIC; 
  signal N514 : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q : STD_LOGIC; 
  signal N513 : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q : STD_LOGIC; 
  signal N545 : STD_LOGIC; 
  signal N546 : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q : STD_LOGIC; 
  signal N525 : STD_LOGIC; 
  signal N526 : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q : STD_LOGIC; 
  signal N527 : STD_LOGIC; 
  signal N528 : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_1359 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_pack_7 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_1349 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_1403 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_1395 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_1387 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_1379 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q : STD_LOGIC; 
  signal N325 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_1423 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1412 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_1411 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_12_Q : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q : STD_LOGIC; 
  signal N286 : STD_LOGIC; 
  signal N187 : STD_LOGIC; 
  signal N295 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N250 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73_pack_5 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_1584 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_1576 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_1613 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_1605 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_1597 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_1589 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_1647 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_1639 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_1631 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_1623 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q : STD_LOGIC; 
  signal N346 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N503 : STD_LOGIC; 
  signal N504 : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N301 : STD_LOGIC; 
  signal N496 : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q : STD_LOGIC; 
  signal N495 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q : STD_LOGIC; 
  signal N551 : STD_LOGIC; 
  signal N552 : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_1784 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_1782 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71_pack_5 : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q : STD_LOGIC; 
  signal N531 : STD_LOGIC; 
  signal N532 : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_1839 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72_pack_7 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_1829 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71_pack_5 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_1884 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_1876 : STD_LOGIC; 
  signal N292 : STD_LOGIC; 
  signal N313 : STD_LOGIC; 
  signal N244 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q : STD_LOGIC; 
  signal N349 : STD_LOGIC; 
  signal N310 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_14_Q : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N412 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N382 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_11_Q : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_n0051_inv_pack_6 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q : STD_LOGIC; 
  signal N355 : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q : STD_LOGIC; 
  signal N508 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_11_pack_8 : STD_LOGIC; 
  signal N507 : STD_LOGIC; 
  signal NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N283 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N298 : STD_LOGIC; 
  signal NODE_S_REG_n0027_inv : STD_LOGIC; 
  signal N235 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N265 : STD_LOGIC; 
  signal N361 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_2375 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_2367 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_2359 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_2351 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_2409 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_2401 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_2393 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_2385 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76_pack_6 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_2444 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_2436 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77_pack_6 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_2474 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_2466 : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q : STD_LOGIC; 
  signal sr_in_1_IBUF_rt_2495 : STD_LOGIC; 
  signal NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_2485 : STD_LOGIC; 
  signal NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21 : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q : STD_LOGIC; 
  signal N533 : STD_LOGIC; 
  signal N534 : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q : STD_LOGIC; 
  signal N522 : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N553 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N554 : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q : STD_LOGIC; 
  signal N523 : STD_LOGIC; 
  signal N524 : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q : STD_LOGIC; 
  signal N562 : STD_LOGIC; 
  signal N561 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N259 : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q : STD_LOGIC; 
  signal N238 : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q : STD_LOGIC; 
  signal N343 : STD_LOGIC; 
  signal N340 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N247 : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_10_Q : STD_LOGIC; 
  signal N385 : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q : STD_LOGIC; 
  signal N40_pack_3 : STD_LOGIC; 
  signal N500 : STD_LOGIC; 
  signal NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q : STD_LOGIC; 
  signal N499 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q : STD_LOGIC; 
  signal N501 : STD_LOGIC; 
  signal N502 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_3115 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_3107 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_3099 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_3091 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_3131 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_3123 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_3165 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_3157 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_3149 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_3141 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_3199 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_3191 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_3183 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_3175 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_3233 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_3225 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_3217 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_3209 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q : STD_LOGIC; 
  signal N519 : STD_LOGIC; 
  signal N520 : STD_LOGIC; 
  signal N319 : STD_LOGIC; 
  signal N506 : STD_LOGIC; 
  signal N505 : STD_LOGIC; 
  signal NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_3329 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_3321 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_3313 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_3305 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_3363 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_3355 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_3347 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_3339 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_9_Q : STD_LOGIC; 
  signal N486 : STD_LOGIC; 
  signal N485 : STD_LOGIC; 
  signal N480 : STD_LOGIC; 
  signal N557 : STD_LOGIC; 
  signal N379 : STD_LOGIC; 
  signal N558 : STD_LOGIC; 
  signal N555 : STD_LOGIC; 
  signal N376 : STD_LOGIC; 
  signal N556 : STD_LOGIC; 
  signal N510 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_10_pack_8 : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q : STD_LOGIC; 
  signal N509 : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q : STD_LOGIC; 
  signal N529 : STD_LOGIC; 
  signal N530 : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q : STD_LOGIC; 
  signal N358 : STD_LOGIC; 
  signal N253 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q : STD_LOGIC; 
  signal N322 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_15_Q : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_13_Q : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_9_pack_1 : STD_LOGIC; 
  signal NODE_REG_adr1_3_Decoder_18_OUT_8_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q : STD_LOGIC; 
  signal N370 : STD_LOGIC; 
  signal N367 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q : STD_LOGIC; 
  signal N498 : STD_LOGIC; 
  signal N497 : STD_LOGIC; 
  signal NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q : STD_LOGIC; 
  signal N352 : STD_LOGIC; 
  signal N289 : STD_LOGIC; 
  signal N307 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_4003 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_3995 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_3987 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_3979 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q : STD_LOGIC; 
  signal N304 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N491 : STD_LOGIC; 
  signal N492 : STD_LOGIC; 
  signal NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q : STD_LOGIC; 
  signal N280 : STD_LOGIC; 
  signal N208 : STD_LOGIC; 
  signal N493 : STD_LOGIC; 
  signal N494 : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75_pack_6 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_4100 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_4092 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_4129 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_4121 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_4113 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_4105 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_4163 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_4155 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_4147 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_4139 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76 : STD_LOGIC; 
  signal NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_4197 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_4189 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_4181 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_4173 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77 : STD_LOGIC; 
  signal NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77 : STD_LOGIC; 
  signal NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q : STD_LOGIC; 
  signal N484 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N483 : STD_LOGIC; 
  signal N560 : STD_LOGIC; 
  signal N559 : STD_LOGIC; 
  signal N490 : STD_LOGIC; 
  signal N489 : STD_LOGIC; 
  signal NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q : STD_LOGIC; 
  signal N232 : STD_LOGIC; 
  signal N256 : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q : STD_LOGIC; 
  signal NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q : STD_LOGIC; 
  signal N268 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N316 : STD_LOGIC; 
  signal NODE_REG_adr2_3_Decoder_35_OUT_15_pack_3 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N364 : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q : STD_LOGIC; 
  signal NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q : STD_LOGIC; 
  signal N36_pack_3 : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q : STD_LOGIC; 
  signal NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_3_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_0_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_1_Q : STD_LOGIC; 
  signal NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_2_Q : STD_LOGIC; 
  signal NlwBufferSignal_s_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_s_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_sr_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_e_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_node_state_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_n_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_0_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_1_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_2_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_3_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_4_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_5_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_6_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_w_out_7_OBUF_I : STD_LOGIC; 
  signal NlwBufferSignal_clk_BUFGP_BUFG_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_n_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_8_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_13_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_w_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_15_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_11_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_14_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_STATE_state_out_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_6_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_9_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_7_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_4_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_10_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_3_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_2_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_1_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_0_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_s_out_1_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_5_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_out_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_3_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_0_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_1_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_12_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_REG_REGS_2_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_7_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_6_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_5_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_S_REG_tmp_s_new_4_IN : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_6_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_7_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_4_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_5_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_2_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_3_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_0_CLK : STD_LOGIC; 
  signal NlwBufferSignal_NODE_COM_e_out_1_CLK : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_NODE_ALU_Mmux_res1_rs_xor_7_DI_3_UNCONNECTED : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal NODE_S_REG_tmp_s : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ctrl_reg_write : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal reg_data2_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ctrl_com : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal NODE_COM_e_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_n_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data1_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_s_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_ALU_Mmux_res1_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_ALU_Mmux_res1_rs_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal NODE_S_REG_tmp_s_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_COM_w_out : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_data0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_0 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_9 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_8 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_S_REG_tmp_s_new : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_15 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_13 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_11 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_op2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_14 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_12 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal NODE_REG_REGS_10 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal alu_res : STD_LOGIC_VECTOR ( 7 downto 2 ); 
  signal NODE_ALU_Mmux_res1_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  NODE_ALU_Mmux_res1_rs_cy_3_NODE_ALU_Mmux_res1_rs_cy_3_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(3),
      O => NODE_ALU_Mmux_res1_split_3_0
    );
  NODE_ALU_Mmux_res1_rs_cy_3_NODE_ALU_Mmux_res1_rs_cy_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(2),
      O => NODE_ALU_Mmux_res1_split_2_0
    );
  NODE_ALU_Mmux_res1_rs_cy_3_NODE_ALU_Mmux_res1_rs_cy_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(1),
      O => NODE_ALU_Mmux_res1_split_1_0
    );
  NODE_ALU_Mmux_res1_rs_cy_3_NODE_ALU_Mmux_res1_rs_cy_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(0),
      O => NODE_ALU_Mmux_res1_split_0_0
    );
  NODE_ALU_Mmux_res1_rs_lut_3_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"66699969333CCC3C"
    )
    port map (
      ADR1 => instr_0_IBUF_0,
      ADR3 => N414,
      ADR4 => instr_6_IBUF_0,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => reg_data2_out(3),
      O => NODE_ALU_Mmux_res1_rs_lut(3)
    );
  NODE_ALU_Mmux_res1_rs_cy_3_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y30"
    )
    port map (
      CI => '0',
      CYINIT => instr_0_IBUF_0,
      CO(3) => NODE_ALU_Mmux_res1_rs_cy(3),
      CO(2) => NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_2_UNCONNECTED,
      CO(1) => NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_1_UNCONNECTED,
      CO(0) => NLW_NODE_ALU_Mmux_res1_rs_cy_3_CO_0_UNCONNECTED,
      DI(3) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_3_Q,
      DI(2) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_2_Q,
      DI(1) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_1_Q,
      DI(0) => reg_data1_out_0_rt_31,
      O(3) => NODE_ALU_Mmux_res1_split(3),
      O(2) => NODE_ALU_Mmux_res1_split(2),
      O(1) => NODE_ALU_Mmux_res1_split(1),
      O(0) => NODE_ALU_Mmux_res1_split(0),
      S(3) => NODE_ALU_Mmux_res1_rs_lut(3),
      S(2) => NODE_ALU_Mmux_res1_rs_lut(2),
      S(1) => NODE_ALU_Mmux_res1_rs_lut(1),
      S(0) => NODE_ALU_Mmux_res1_rs_lut_0_rt_30
    );
  NODE_ALU_Mmux_res1_rs_lut_2_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"C396C3C33C963C3C"
    )
    port map (
      ADR4 => N114,
      ADR0 => instr_5_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(2),
      ADR1 => reg_data1_out(2),
      O => NODE_ALU_Mmux_res1_rs_lut(2)
    );
  NODE_ALU_Mmux_res1_rs_lut_1_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"CC9C33633393CC6C"
    )
    port map (
      ADR2 => N114,
      ADR0 => instr_4_IBUF_0,
      ADR1 => instr_0_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(1),
      ADR4 => reg_data1_out(1),
      O => NODE_ALU_Mmux_res1_rs_lut(1)
    );
  NODE_ALU_Mmux_res1_rs_lut_0_rt : X_LUT6
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"FF00FF00FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => NODE_ALU_Mmux_res1_rs_lut(0),
      ADR4 => '1',
      ADR5 => '1',
      O => NODE_ALU_Mmux_res1_rs_lut_0_rt_30
    );
  reg_data1_out_0_rt : X_LUT5
    generic map(
      LOC => "SLICE_X16Y30",
      INIT => X"FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => reg_data1_out(0),
      O => reg_data1_out_0_rt_31
    );
  NODE_ALU_Mmux_res1_split_7_NODE_ALU_Mmux_res1_split_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(7),
      O => NODE_ALU_Mmux_res1_split_7_0
    );
  NODE_ALU_Mmux_res1_split_7_NODE_ALU_Mmux_res1_split_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(6),
      O => NODE_ALU_Mmux_res1_split_6_0
    );
  NODE_ALU_Mmux_res1_split_7_NODE_ALU_Mmux_res1_split_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(5),
      O => NODE_ALU_Mmux_res1_split_5_0
    );
  NODE_ALU_Mmux_res1_split_7_NODE_ALU_Mmux_res1_split_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_ALU_Mmux_res1_split(4),
      O => NODE_ALU_Mmux_res1_split_4_0
    );
  NODE_ALU_Mmux_res1_rs_lut_7_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"0FF0F00F8B74748B"
    )
    port map (
      ADR1 => instr_22_IBUF_0,
      ADR4 => instr_0_IBUF_0,
      ADR5 => STATE_state_out_5159,
      ADR0 => reg_data2_out(7),
      ADR3 => reg_data1_out(7),
      ADR2 => N487,
      O => NODE_ALU_Mmux_res1_rs_lut(7)
    );
  NODE_ALU_Mmux_res1_rs_xor_7_Q : X_CARRY4
    generic map(
      LOC => "SLICE_X16Y31"
    )
    port map (
      CI => NODE_ALU_Mmux_res1_rs_cy(3),
      CYINIT => '0',
      CO(3) => NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_3_UNCONNECTED,
      CO(2) => NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_2_UNCONNECTED,
      CO(1) => NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_1_UNCONNECTED,
      CO(0) => NLW_NODE_ALU_Mmux_res1_rs_xor_7_CO_0_UNCONNECTED,
      DI(3) => NLW_NODE_ALU_Mmux_res1_rs_xor_7_DI_3_UNCONNECTED,
      DI(2) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_2_Q,
      DI(1) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_1_Q,
      DI(0) => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_0_Q,
      O(3) => NODE_ALU_Mmux_res1_split(7),
      O(2) => NODE_ALU_Mmux_res1_split(6),
      O(1) => NODE_ALU_Mmux_res1_split(5),
      O(0) => NODE_ALU_Mmux_res1_split(4),
      S(3) => NODE_ALU_Mmux_res1_rs_lut(7),
      S(2) => NODE_ALU_Mmux_res1_rs_lut(6),
      S(1) => NODE_ALU_Mmux_res1_rs_lut(5),
      S(0) => NODE_ALU_Mmux_res1_rs_lut(4)
    );
  NODE_ALU_Mmux_res1_rs_lut_6_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"96969696C3963C96"
    )
    port map (
      ADR3 => N114,
      ADR4 => instr_9_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR5 => CONTROL_disable_mask_OR_1_o,
      ADR0 => reg_data2_out(6),
      ADR1 => reg_data1_out(6),
      O => NODE_ALU_Mmux_res1_rs_lut(6)
    );
  NODE_ALU_Mmux_res1_rs_lut_5_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"EF1010EF40BFBF40"
    )
    port map (
      ADR2 => N114,
      ADR1 => instr_8_IBUF_0,
      ADR3 => instr_0_IBUF_0,
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(5),
      ADR4 => reg_data1_out(5),
      O => NODE_ALU_Mmux_res1_rs_lut(5)
    );
  NODE_ALU_Mmux_res1_rs_lut_4_Q : X_LUT6
    generic map(
      LOC => "SLICE_X16Y31",
      INIT => X"CCC633393933C6CC"
    )
    port map (
      ADR0 => N114,
      ADR3 => instr_7_IBUF_0,
      ADR1 => instr_0_IBUF_0,
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(4),
      ADR4 => reg_data1_out(4),
      O => NODE_ALU_Mmux_res1_rs_lut(4)
    );
  instr_0_IBUF : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_0_IBUF_72,
      I => instr(0)
    );
  ProtoComp28_IMUX : X_BUF
    generic map(
      LOC => "PAD27",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_0_IBUF_72,
      O => instr_0_IBUF_0
    );
  instr_1_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_1_IBUF_75,
      I => instr(1)
    );
  ProtoComp28_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_1_IBUF_75,
      O => instr_1_IBUF_0
    );
  instr_2_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_2_IBUF_78,
      I => instr(2)
    );
  ProtoComp28_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_2_IBUF_78,
      O => instr_2_IBUF_0
    );
  instr_3_IBUF : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_3_IBUF_81,
      I => instr(3)
    );
  ProtoComp28_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_3_IBUF_81,
      O => instr_3_IBUF_0
    );
  instr_4_IBUF : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_4_IBUF_84,
      I => instr(4)
    );
  ProtoComp28_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_4_IBUF_84,
      O => instr_4_IBUF_0
    );
  instr_5_IBUF : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_5_IBUF_87,
      I => instr(5)
    );
  ProtoComp28_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD32",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_5_IBUF_87,
      O => instr_5_IBUF_0
    );
  instr_6_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_6_IBUF_90,
      I => instr(6)
    );
  ProtoComp28_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_6_IBUF_90,
      O => instr_6_IBUF_0
    );
  instr_7_IBUF : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_7_IBUF_93,
      I => instr(7)
    );
  ProtoComp28_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_7_IBUF_93,
      O => instr_7_IBUF_0
    );
  instr_8_IBUF : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_8_IBUF_96,
      I => instr(8)
    );
  ProtoComp28_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_8_IBUF_96,
      O => instr_8_IBUF_0
    );
  instr_9_IBUF : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_9_IBUF_99,
      I => instr(9)
    );
  ProtoComp28_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD36",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_9_IBUF_99,
      O => instr_9_IBUF_0
    );
  instr_10_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_10_IBUF_102,
      I => instr(10)
    );
  ProtoComp28_IMUX_10 : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_10_IBUF_102,
      O => instr_10_IBUF_0
    );
  instr_11_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_11_IBUF_105,
      I => instr(11)
    );
  ProtoComp28_IMUX_11 : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_11_IBUF_105,
      O => instr_11_IBUF_0
    );
  instr_12_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_12_IBUF_108,
      I => instr(12)
    );
  ProtoComp28_IMUX_12 : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_12_IBUF_108,
      O => instr_12_IBUF_0
    );
  instr_20_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_20_IBUF_111,
      I => instr(20)
    );
  ProtoComp28_IMUX_13 : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_20_IBUF_111,
      O => instr_20_IBUF_0
    );
  instr_13_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_13_IBUF_114,
      I => instr(13)
    );
  ProtoComp28_IMUX_14 : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_13_IBUF_114,
      O => instr_13_IBUF_0
    );
  instr_21_IBUF : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_21_IBUF_117,
      I => instr(21)
    );
  ProtoComp28_IMUX_15 : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_21_IBUF_117,
      O => instr_21_IBUF_0
    );
  instr_14_IBUF : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_14_IBUF_120,
      I => instr(14)
    );
  ProtoComp28_IMUX_16 : X_BUF
    generic map(
      LOC => "PAD41",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_14_IBUF_120,
      O => instr_14_IBUF_0
    );
  instr_22_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_22_IBUF_123,
      I => instr(22)
    );
  ProtoComp28_IMUX_17 : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_22_IBUF_123,
      O => instr_22_IBUF_0
    );
  instr_15_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_15_IBUF_126,
      I => instr(15)
    );
  ProtoComp28_IMUX_18 : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_15_IBUF_126,
      O => instr_15_IBUF_0
    );
  instr_23_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_23_IBUF_129,
      I => instr(23)
    );
  ProtoComp28_IMUX_19 : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_23_IBUF_129,
      O => instr_23_IBUF_0
    );
  instr_16_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_16_IBUF_132,
      I => instr(16)
    );
  ProtoComp28_IMUX_20 : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_16_IBUF_132,
      O => instr_16_IBUF_0
    );
  instr_17_IBUF : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_17_IBUF_135,
      I => instr(17)
    );
  ProtoComp28_IMUX_21 : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_17_IBUF_135,
      O => instr_17_IBUF_0
    );
  instr_18_IBUF : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_18_IBUF_138,
      I => instr(18)
    );
  ProtoComp28_IMUX_22 : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_18_IBUF_138,
      O => instr_18_IBUF_0
    );
  instr_19_IBUF : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      O => instr_19_IBUF_141,
      I => instr(19)
    );
  ProtoComp28_IMUX_23 : X_BUF
    generic map(
      LOC => "PAD46",
      PATHPULSE => 202 ps
    )
    port map (
      I => instr_19_IBUF_141,
      O => instr_19_IBUF_0
    );
  s_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_0_IBUF_144,
      I => s_in(0)
    );
  ProtoComp28_IMUX_24 : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_0_IBUF_144,
      O => s_in_0_IBUF_0
    );
  s_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_1_IBUF_147,
      I => s_in(1)
    );
  ProtoComp28_IMUX_25 : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_1_IBUF_147,
      O => s_in_1_IBUF_0
    );
  s_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_2_IBUF_150,
      I => s_in(2)
    );
  ProtoComp28_IMUX_26 : X_BUF
    generic map(
      LOC => "PAD19",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_2_IBUF_150,
      O => s_in_2_IBUF_0
    );
  s_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_3_IBUF_153,
      I => s_in(3)
    );
  ProtoComp28_IMUX_27 : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_3_IBUF_153,
      O => s_in_3_IBUF_0
    );
  s_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_4_IBUF_156,
      I => s_in(4)
    );
  ProtoComp28_IMUX_28 : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_4_IBUF_156,
      O => s_in_4_IBUF_0
    );
  s_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_5_IBUF_159,
      I => s_in(5)
    );
  ProtoComp28_IMUX_29 : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_5_IBUF_159,
      O => s_in_5_IBUF_0
    );
  s_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_6_IBUF_162,
      I => s_in(6)
    );
  ProtoComp28_IMUX_30 : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_6_IBUF_162,
      O => s_in_6_IBUF_0
    );
  s_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      O => s_in_7_IBUF_165,
      I => s_in(7)
    );
  ProtoComp28_IMUX_31 : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      I => s_in_7_IBUF_165,
      O => s_in_7_IBUF_0
    );
  s_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD81"
    )
    port map (
      I => NlwBufferSignal_s_out_0_OBUF_I,
      O => s_out(0)
    );
  s_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD82"
    )
    port map (
      I => NlwBufferSignal_s_out_1_OBUF_I,
      O => s_out(1)
    );
  s_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => NlwBufferSignal_s_out_2_OBUF_I,
      O => s_out(2)
    );
  s_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => NlwBufferSignal_s_out_3_OBUF_I,
      O => s_out(3)
    );
  s_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => NlwBufferSignal_s_out_4_OBUF_I,
      O => s_out(4)
    );
  s_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => NlwBufferSignal_s_out_5_OBUF_I,
      O => s_out(5)
    );
  s_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => NlwBufferSignal_s_out_6_OBUF_I,
      O => s_out(6)
    );
  s_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => NlwBufferSignal_s_out_7_OBUF_I,
      O => s_out(7)
    );
  e_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_0_IBUF_184,
      I => e_in(0)
    );
  ProtoComp28_IMUX_32 : X_BUF
    generic map(
      LOC => "PAD68",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_0_IBUF_184,
      O => e_in_0_IBUF_0
    );
  e_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_1_IBUF_187,
      I => e_in(1)
    );
  ProtoComp28_IMUX_33 : X_BUF
    generic map(
      LOC => "PAD74",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_1_IBUF_187,
      O => e_in_1_IBUF_0
    );
  sr_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD105"
    )
    port map (
      I => NlwBufferSignal_sr_out_0_OBUF_I,
      O => sr_out(0)
    );
  e_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_2_IBUF_192,
      I => e_in(2)
    );
  ProtoComp28_IMUX_34 : X_BUF
    generic map(
      LOC => "PAD70",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_2_IBUF_192,
      O => e_in_2_IBUF_0
    );
  sr_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD106"
    )
    port map (
      I => NlwBufferSignal_sr_out_1_OBUF_I,
      O => sr_out(1)
    );
  e_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_3_IBUF_197,
      I => e_in(3)
    );
  ProtoComp28_IMUX_35 : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_3_IBUF_197,
      O => e_in_3_IBUF_0
    );
  sr_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD107"
    )
    port map (
      I => NlwBufferSignal_sr_out_2_OBUF_I,
      O => sr_out(2)
    );
  e_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_4_IBUF_202,
      I => e_in(4)
    );
  ProtoComp28_IMUX_36 : X_BUF
    generic map(
      LOC => "PAD75",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_4_IBUF_202,
      O => e_in_4_IBUF_0
    );
  sr_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD108"
    )
    port map (
      I => NlwBufferSignal_sr_out_3_OBUF_I,
      O => sr_out(3)
    );
  e_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_5_IBUF_207,
      I => e_in(5)
    );
  ProtoComp28_IMUX_37 : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_5_IBUF_207,
      O => e_in_5_IBUF_0
    );
  sr_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => NlwBufferSignal_sr_out_4_OBUF_I,
      O => sr_out(4)
    );
  e_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_6_IBUF_212,
      I => e_in(6)
    );
  ProtoComp28_IMUX_38 : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_6_IBUF_212,
      O => e_in_6_IBUF_0
    );
  sr_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => NlwBufferSignal_sr_out_5_OBUF_I,
      O => sr_out(5)
    );
  e_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 202 ps
    )
    port map (
      O => e_in_7_IBUF_217,
      I => e_in(7)
    );
  ProtoComp28_IMUX_39 : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 202 ps
    )
    port map (
      I => e_in_7_IBUF_217,
      O => e_in_7_IBUF_0
    );
  sr_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD111"
    )
    port map (
      I => NlwBufferSignal_sr_out_6_OBUF_I,
      O => sr_out(6)
    );
  sr_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD112"
    )
    port map (
      I => NlwBufferSignal_sr_out_7_OBUF_I,
      O => sr_out(7)
    );
  reset_IBUF : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 202 ps
    )
    port map (
      O => reset_IBUF_224,
      I => reset
    );
  ProtoComp28_IMUX_40 : X_BUF
    generic map(
      LOC => "PAD67",
      PATHPULSE => 202 ps
    )
    port map (
      I => reset_IBUF_224,
      O => reset_IBUF_0
    );
  w_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_0_IBUF_227,
      I => w_in(0)
    );
  ProtoComp28_IMUX_41 : X_BUF
    generic map(
      LOC => "PAD55",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_0_IBUF_227,
      O => w_in_0_IBUF_0
    );
  w_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_1_IBUF_230,
      I => w_in(1)
    );
  ProtoComp28_IMUX_42 : X_BUF
    generic map(
      LOC => "PAD56",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_1_IBUF_230,
      O => w_in_1_IBUF_0
    );
  w_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_2_IBUF_233,
      I => w_in(2)
    );
  ProtoComp28_IMUX_43 : X_BUF
    generic map(
      LOC => "PAD57",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_2_IBUF_233,
      O => w_in_2_IBUF_0
    );
  w_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_3_IBUF_236,
      I => w_in(3)
    );
  ProtoComp28_IMUX_44 : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_3_IBUF_236,
      O => w_in_3_IBUF_0
    );
  w_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_4_IBUF_239,
      I => w_in(4)
    );
  ProtoComp28_IMUX_45 : X_BUF
    generic map(
      LOC => "PAD63",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_4_IBUF_239,
      O => w_in_4_IBUF_0
    );
  w_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_5_IBUF_242,
      I => w_in(5)
    );
  ProtoComp28_IMUX_46 : X_BUF
    generic map(
      LOC => "PAD60",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_5_IBUF_242,
      O => w_in_5_IBUF_0
    );
  w_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_6_IBUF_245,
      I => w_in(6)
    );
  ProtoComp28_IMUX_47 : X_BUF
    generic map(
      LOC => "PAD65",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_6_IBUF_245,
      O => w_in_6_IBUF_0
    );
  w_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      O => w_in_7_IBUF_248,
      I => w_in(7)
    );
  ProtoComp28_IMUX_48 : X_BUF
    generic map(
      LOC => "PAD64",
      PATHPULSE => 202 ps
    )
    port map (
      I => w_in_7_IBUF_248,
      O => w_in_7_IBUF_0
    );
  e_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => NlwBufferSignal_e_out_0_OBUF_I,
      O => e_out(0)
    );
  e_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => NlwBufferSignal_e_out_1_OBUF_I,
      O => e_out(1)
    );
  e_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => NlwBufferSignal_e_out_2_OBUF_I,
      O => e_out(2)
    );
  e_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => NlwBufferSignal_e_out_3_OBUF_I,
      O => e_out(3)
    );
  e_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD93"
    )
    port map (
      I => NlwBufferSignal_e_out_4_OBUF_I,
      O => e_out(4)
    );
  e_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD94"
    )
    port map (
      I => NlwBufferSignal_e_out_5_OBUF_I,
      O => e_out(5)
    );
  e_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD95"
    )
    port map (
      I => NlwBufferSignal_e_out_6_OBUF_I,
      O => e_out(6)
    );
  e_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => NlwBufferSignal_e_out_7_OBUF_I,
      O => e_out(7)
    );
  node_state_OBUF : X_OBUF
    generic map(
      LOC => "PAD79"
    )
    port map (
      I => NlwBufferSignal_node_state_OBUF_I,
      O => node_state
    );
  n_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => NlwBufferSignal_n_out_0_OBUF_I,
      O => n_out(0)
    );
  n_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => NlwBufferSignal_n_out_1_OBUF_I,
      O => n_out(1)
    );
  n_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => NlwBufferSignal_n_out_2_OBUF_I,
      O => n_out(2)
    );
  n_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => NlwBufferSignal_n_out_3_OBUF_I,
      O => n_out(3)
    );
  n_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => NlwBufferSignal_n_out_4_OBUF_I,
      O => n_out(4)
    );
  n_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => NlwBufferSignal_n_out_5_OBUF_I,
      O => n_out(5)
    );
  n_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => NlwBufferSignal_n_out_6_OBUF_I,
      O => n_out(6)
    );
  step_IBUF : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      O => step_IBUF_283,
      I => step
    );
  ProtoComp28_IMUX_49 : X_BUF
    generic map(
      LOC => "PAD113",
      PATHPULSE => 202 ps
    )
    port map (
      I => step_IBUF_283,
      O => step_IBUF_0
    );
  n_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => NlwBufferSignal_n_out_7_OBUF_I,
      O => n_out(7)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_288,
      I => clk
    );
  ProtoComp28_IMUX_50 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_288,
      O => clk_BUFGP_IBUFG_0
    );
  sr_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_0_IBUF_291,
      I => sr_in(0)
    );
  ProtoComp28_IMUX_51 : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_0_IBUF_291,
      O => sr_in_0_IBUF_0
    );
  sr_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_1_IBUF_294,
      I => sr_in(1)
    );
  ProtoComp28_IMUX_52 : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_1_IBUF_294,
      O => sr_in_1_IBUF_0
    );
  sr_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_2_IBUF_297,
      I => sr_in(2)
    );
  ProtoComp28_IMUX_53 : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_2_IBUF_297,
      O => sr_in_2_IBUF_0
    );
  sr_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_3_IBUF_300,
      I => sr_in(3)
    );
  ProtoComp28_IMUX_54 : X_BUF
    generic map(
      LOC => "PAD100",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_3_IBUF_300,
      O => sr_in_3_IBUF_0
    );
  sr_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_4_IBUF_303,
      I => sr_in(4)
    );
  ProtoComp28_IMUX_55 : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_4_IBUF_303,
      O => sr_in_4_IBUF_0
    );
  sr_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_5_IBUF_306,
      I => sr_in(5)
    );
  ProtoComp28_IMUX_56 : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_5_IBUF_306,
      O => sr_in_5_IBUF_0
    );
  sr_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_6_IBUF_309,
      I => sr_in(6)
    );
  ProtoComp28_IMUX_57 : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_6_IBUF_309,
      O => sr_in_6_IBUF_0
    );
  sr_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 202 ps
    )
    port map (
      O => sr_in_7_IBUF_312,
      I => sr_in(7)
    );
  ProtoComp28_IMUX_58 : X_BUF
    generic map(
      LOC => "PAD104",
      PATHPULSE => 202 ps
    )
    port map (
      I => sr_in_7_IBUF_312,
      O => sr_in_7_IBUF_0
    );
  w_out_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => NlwBufferSignal_w_out_0_OBUF_I,
      O => w_out(0)
    );
  w_out_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => NlwBufferSignal_w_out_1_OBUF_I,
      O => w_out(1)
    );
  w_out_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => NlwBufferSignal_w_out_2_OBUF_I,
      O => w_out(2)
    );
  w_out_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => NlwBufferSignal_w_out_3_OBUF_I,
      O => w_out(3)
    );
  w_out_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => NlwBufferSignal_w_out_4_OBUF_I,
      O => w_out(4)
    );
  w_out_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => NlwBufferSignal_w_out_5_OBUF_I,
      O => w_out(5)
    );
  w_out_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => NlwBufferSignal_w_out_6_OBUF_I,
      O => w_out(6)
    );
  w_out_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => NlwBufferSignal_w_out_7_OBUF_I,
      O => w_out(7)
    );
  n_in_0_IBUF : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_0_IBUF_331,
      I => n_in(0)
    );
  ProtoComp28_IMUX_59 : X_BUF
    generic map(
      LOC => "PAD59",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_0_IBUF_331,
      O => n_in_0_IBUF_0
    );
  n_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_1_IBUF_334,
      I => n_in(1)
    );
  ProtoComp28_IMUX_60 : X_BUF
    generic map(
      LOC => "PAD66",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_1_IBUF_334,
      O => n_in_1_IBUF_0
    );
  n_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_2_IBUF_337,
      I => n_in(2)
    );
  ProtoComp28_IMUX_61 : X_BUF
    generic map(
      LOC => "PAD61",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_2_IBUF_337,
      O => n_in_2_IBUF_0
    );
  n_in_3_IBUF : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_3_IBUF_340,
      I => n_in(3)
    );
  ProtoComp28_IMUX_62 : X_BUF
    generic map(
      LOC => "PAD62",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_3_IBUF_340,
      O => n_in_3_IBUF_0
    );
  n_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_4_IBUF_343,
      I => n_in(4)
    );
  ProtoComp28_IMUX_63 : X_BUF
    generic map(
      LOC => "PAD69",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_4_IBUF_343,
      O => n_in_4_IBUF_0
    );
  n_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_5_IBUF_346,
      I => n_in(5)
    );
  ProtoComp28_IMUX_64 : X_BUF
    generic map(
      LOC => "PAD71",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_5_IBUF_346,
      O => n_in_5_IBUF_0
    );
  n_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_6_IBUF_349,
      I => n_in(6)
    );
  ProtoComp28_IMUX_65 : X_BUF
    generic map(
      LOC => "PAD72",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_6_IBUF_349,
      O => n_in_6_IBUF_0
    );
  n_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 202 ps
    )
    port map (
      O => n_in_7_IBUF_352,
      I => n_in(7)
    );
  ProtoComp28_IMUX_66 : X_BUF
    generic map(
      LOC => "PAD73",
      PATHPULSE => 202 ps
    )
    port map (
      I => n_in_7_IBUF_352,
      O => n_in_7_IBUF_0
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => NlwBufferSignal_clk_BUFGP_BUFG_IN,
      O => clk_BUFGP
    );
  N54_N54_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N56,
      O => N56_0
    );
  NODE_REG_n0338_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => X"3000000030000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR2 => instr_17_IBUF_0,
      ADR4 => instr_18_IBUF_0,
      ADR5 => '1',
      O => N54
    );
  NODE_REG_n0316_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X0Y28",
      INIT => X"00C00000"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR2 => instr_17_IBUF_0,
      ADR4 => instr_18_IBUF_0,
      O => N56
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_364,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_365,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_366,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_374,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_364,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X0Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_382,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_390,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_365,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_2(0),
      ADR4 => NODE_REG_REGS_3(0),
      ADR3 => NODE_REG_REGS_1(0),
      ADR5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_6_366
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"F0FFCCAAF000CCAA"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_6(0),
      ADR2 => NODE_REG_REGS_7(0),
      ADR1 => NODE_REG_REGS_5(0),
      ADR0 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_51_374
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"EEF5EEA044F544A0"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_10(0),
      ADR5 => NODE_REG_REGS_11(0),
      ADR2 => NODE_REG_REGS_9(0),
      ADR4 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_5_382
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => X"FAFADD885050DD88"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_14(0),
      ADR5 => NODE_REG_REGS_15(0),
      ADR1 => NODE_REG_REGS_13(0),
      ADR3 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_390
    );
  NODE_REG_REGS_13_7_NODE_REG_REGS_13_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_13_pack_8,
      O => NODE_REG_adr2_3_Decoder_35_OUT_13_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y26"
    )
    port map (
      IA => N515,
      IB => N516,
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_13_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"FD31EC20FFFF0000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR5 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_7_IBUF_0,
      ADR2 => s_in_7_IBUF_0,
      O => N515
    );
  NODE_REG_REGS_13_7 : X_FF
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_7_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_7_Q,
      O => NODE_REG_REGS_13(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N516
    );
  NODE_REG_adr2_3_Decoder_35_OUT_5_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"0022000000220000"
    )
    port map (
      ADR2 => '1',
      ADR0 => instr_7_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      ADR1 => instr_10_IBUF_0,
      ADR3 => instr_8_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_5_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_13_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"00880000"
    )
    port map (
      ADR2 => '1',
      ADR0 => instr_7_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      ADR1 => instr_10_IBUF_0,
      ADR3 => instr_8_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_13_pack_8
    );
  NODE_REG_n0338_inv : X_LUT6
    generic map(
      LOC => "SLICE_X2Y26",
      INIT => X"00FFFF000000FE00"
    )
    port map (
      ADR4 => ctrl_reg_write(0),
      ADR3 => ctrl_reg_write(1),
      ADR5 => N54,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      O => NODE_REG_n0338_inv_4935
    );
  N99_N99_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N100,
      O => N100_0
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"55550FFF55550FFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR0 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N99
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X2Y30",
      INIT => X"555500F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR0 => e_in_0_IBUF_0,
      O => N100
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_436,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_437,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_438,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_446,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_436,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X2Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_454,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_462,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_437,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"BB88FCFCBB883030"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_2(0),
      ADR0 => NODE_REG_REGS_3(0),
      ADR3 => NODE_REG_REGS_1(0),
      ADR2 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_6_438
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"FF00AAAAF0F0CCCC"
    )
    port map (
      ADR5 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR0 => NODE_REG_REGS_6(0),
      ADR3 => NODE_REG_REGS_7(0),
      ADR2 => NODE_REG_REGS_5(0),
      ADR1 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_51_446
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"BBBB8888FC30FC30"
    )
    port map (
      ADR5 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR4 => NODE_REG_REGS_10(0),
      ADR0 => NODE_REG_REGS_11(0),
      ADR3 => NODE_REG_REGS_9(0),
      ADR2 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_5_454
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X2Y31",
      INIT => X"FFCCAAF000CCAAF0"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR0 => NODE_REG_REGS_14(0),
      ADR5 => NODE_REG_REGS_15(0),
      ADR1 => NODE_REG_REGS_13(0),
      ADR2 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_462
    );
  N408_N408_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N409,
      O => N409_0
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y25",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N408
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y25",
      INIT => X"00FF3030"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR3 => e_in_2_IBUF_0,
      O => N409
    );
  NODE_COM_n_out_7 : X_FF
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_7_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q,
      O => NODE_COM_n_out(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => X"CCCCCCCC00AA00AA"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR5 => ctrl_com(1),
      ADR3 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR0 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_0,
      ADR1 => w_in_7_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_7_Q
    );
  NODE_COM_n_out_6 : X_FF
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_6_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q,
      O => NODE_COM_n_out(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y26",
      INIT => X"F0F0F0F000CC00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => ctrl_com(1),
      ADR3 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR1 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_0,
      ADR2 => w_in_6_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_6_Q
    );
  N399_N399_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N400,
      O => N400_0
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => X"0F770F770F770F77"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N399
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y30",
      INIT => X"0F220F22"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_2_IBUF_0,
      O => N400
    );
  NODE_COM_n_out_1_NODE_COM_n_out_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N28_pack_3,
      O => N28
    );
  NODE_COM_n_out_1 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_1_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q,
      O => NODE_COM_n_out(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"C0C0E2E2C0C0E2E2"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR1 => ctrl_com(1),
      ADR4 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR0 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_0,
      ADR2 => w_in_1_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_1_Q
    );
  NODE_REG_adr0_3_Decoder_70_OUT_0_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"0001000100010001"
    )
    port map (
      ADR4 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr0_3_Decoder_70_OUT_0_Q
    );
  NODE_REG_n0448_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"FEFFFEFF"
    )
    port map (
      ADR4 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      O => N28_pack_3
    );
  NODE_COM_n_out_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_0_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q,
      O => NODE_COM_n_out(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"A0F5A0F5A0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ctrl_com(1),
      ADR3 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR5 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_0_0,
      ADR2 => w_in_0_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_0_Q
    );
  NODE_REG_n0448_inv : X_LUT6
    generic map(
      LOC => "SLICE_X3Y31",
      INIT => X"05050505F0F0F0D0"
    )
    port map (
      ADR2 => ctrl_reg_write(1),
      ADR5 => ctrl_reg_write(0),
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR0 => N28,
      O => NODE_REG_n0448_inv_4953
    );
  N387_N387_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N388,
      O => N388_0
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"335F335F335F335F"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR1 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N387
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y23",
      INIT => X"330A330A"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR1 => e_in_2_IBUF_0,
      O => N388
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y24"
    )
    port map (
      IA => N535,
      IB => N536,
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_8_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => X"FACC50CCEECC44CC"
    )
    port map (
      ADR1 => reg_data0(1),
      ADR3 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR4 => e_in_1_IBUF_0,
      ADR2 => s_in_1_IBUF_0,
      O => N535
    );
  NODE_REG_REGS_8_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_1_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_1_Q,
      O => NODE_REG_REGS_8(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => X"AFAFAFAFA0A0A0A0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR5 => reg_data0(1),
      ADR0 => w_in_1_IBUF_0,
      O => N536
    );
  NODE_REG_REGS_8_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_2_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q,
      O => NODE_REG_REGS_8(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => X"FF53F0F00053F0F0"
    )
    port map (
      ADR1 => N387,
      ADR5 => w_in_2_IBUF_0,
      ADR0 => N388_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(2),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_2_Q
    );
  NODE_REG_REGS_8_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_0_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q,
      O => NODE_REG_REGS_8(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y24",
      INIT => X"B3F7B3F78080C4C4"
    )
    port map (
      ADR4 => N87,
      ADR2 => w_in_0_IBUF_0,
      ADR3 => N88_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_0_Q
    );
  NODE_REG_REGS_14_7_NODE_REG_REGS_14_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_14_pack_8,
      O => NODE_REG_adr2_3_Decoder_35_OUT_14_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y25"
    )
    port map (
      IA => N517,
      IB => N518,
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_14_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => X"BB88F0F0B8B8F0F0"
    )
    port map (
      ADR2 => reg_data0(7),
      ADR4 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR0 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N517
    );
  NODE_REG_REGS_14_7 : X_FF
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_7_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_7_Q,
      O => NODE_REG_REGS_14(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => X"CCCCCCCCFFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR1 => w_in_7_IBUF_0,
      O => N518
    );
  NODE_REG_adr2_3_Decoder_35_OUT_6_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => X"0300000003000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => instr_8_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      ADR1 => instr_10_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_6_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_14_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => X"0C000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => instr_8_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      ADR1 => instr_10_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_14_pack_8
    );
  NODE_REG_n0316_inv : X_LUT6
    generic map(
      LOC => "SLICE_X4Y25",
      INIT => X"0AF00AF00AF00AE0"
    )
    port map (
      ADR3 => ctrl_reg_write(0),
      ADR2 => ctrl_reg_write(1),
      ADR0 => N56_0,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      O => NODE_REG_n0316_inv_4967
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y26"
    )
    port map (
      IA => N547,
      IB => N548,
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_13_Q
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"FF0FF000DFDF8080"
    )
    port map (
      ADR4 => reg_data0(1),
      ADR2 => ctrl_reg_write(1),
      ADR5 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_1_IBUF_0,
      ADR1 => s_in_1_IBUF_0,
      O => N547
    );
  NODE_REG_REGS_13_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_1_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_1_Q,
      O => NODE_REG_REGS_13(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"FFF0FFF00F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(1),
      ADR5 => w_in_1_IBUF_0,
      O => N548
    );
  NODE_REG_REGS_13_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_2_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q,
      O => NODE_REG_REGS_13(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"CD01F0F0FD31F0F0"
    )
    port map (
      ADR0 => N405,
      ADR3 => w_in_2_IBUF_0,
      ADR5 => N406_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(2),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_2_Q
    );
  NODE_REG_REGS_13_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_0_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q,
      O => NODE_REG_REGS_13(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y26",
      INIT => X"F0F03355FF00FF00"
    )
    port map (
      ADR0 => N105,
      ADR2 => w_in_0_IBUF_0,
      ADR1 => N106_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(0),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y27"
    )
    port map (
      IA => N537,
      IB => N538,
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_9_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"F3C0BB88F3C0FF00"
    )
    port map (
      ADR3 => reg_data0(1),
      ADR1 => ctrl_reg_write(1),
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR2 => e_in_1_IBUF_0,
      ADR0 => s_in_1_IBUF_0,
      O => N537
    );
  NODE_REG_REGS_9_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_1_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_1_Q,
      O => NODE_REG_REGS_9(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"FFFF0000F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N538
    );
  NODE_REG_REGS_9_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_2_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q,
      O => NODE_REG_REGS_9(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"AFA03F00AFA03FF0"
    )
    port map (
      ADR5 => N390,
      ADR0 => w_in_2_IBUF_0,
      ADR1 => N391_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(2),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_2_Q
    );
  NODE_REG_REGS_9_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_0_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q,
      O => NODE_REG_REGS_9(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y27",
      INIT => X"F0FFF00033FF5500"
    )
    port map (
      ADR0 => N90,
      ADR2 => w_in_0_IBUF_0,
      ADR1 => N91_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(0),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y28"
    )
    port map (
      IA => N541,
      IB => N542,
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_10_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"EF2FE020FF3FC000"
    )
    port map (
      ADR4 => reg_data0(1),
      ADR2 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_1_IBUF_0,
      ADR0 => s_in_1_IBUF_0,
      O => N541
    );
  NODE_REG_REGS_10_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_1_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_1_Q,
      O => NODE_REG_REGS_10(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"FF55AA00FF55AA00"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(1),
      ADR3 => w_in_1_IBUF_0,
      O => N542
    );
  NODE_REG_REGS_10_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_2_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q,
      O => NODE_REG_REGS_10(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"DC10DF13F0F0F0F0"
    )
    port map (
      ADR4 => N396,
      ADR3 => w_in_2_IBUF_0,
      ADR0 => N397_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(2),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_2_Q
    );
  NODE_REG_REGS_10_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_0_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q,
      O => NODE_REG_REGS_10(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y28",
      INIT => X"88FFBBFF8B008B00"
    )
    port map (
      ADR2 => N96,
      ADR0 => w_in_0_IBUF_0,
      ADR4 => N97_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_0_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_10_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"0300030000000000"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => instr_6_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR1 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_10_Q
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y29",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_10(0),
      ADR3 => NODE_REG_REGS_11(0),
      ADR4 => NODE_REG_REGS_9(0),
      ADR5 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_5400
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y30"
    )
    port map (
      IA => N543,
      IB => N544,
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_12_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"EE44FA50F0F0F0F0"
    )
    port map (
      ADR2 => reg_data0(1),
      ADR5 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR3 => e_in_1_IBUF_0,
      ADR1 => s_in_1_IBUF_0,
      O => N543
    );
  NODE_REG_REGS_12_1 : X_FF
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_1_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_1_Q,
      O => NODE_REG_REGS_12(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"FFFFAAAA0000AAAA"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR4 => ctrl_reg_write(1),
      ADR0 => reg_data0(1),
      ADR5 => w_in_1_IBUF_0,
      O => N544
    );
  NODE_REG_REGS_12_2 : X_FF
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_2_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q,
      O => NODE_REG_REGS_12(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"FF77CC0C3377000C"
    )
    port map (
      ADR2 => N399,
      ADR5 => w_in_2_IBUF_0,
      ADR0 => N400_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_2_Q
    );
  NODE_REG_REGS_12_0 : X_FF
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_0_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q,
      O => NODE_REG_REGS_12(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y30",
      INIT => X"8D888DDDFF00FF00"
    )
    port map (
      ADR4 => N99,
      ADR1 => w_in_0_IBUF_0,
      ADR2 => N100_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(0),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_0_Q
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_0 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_1_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_745,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_753,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f71,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X4Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_761,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_769,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f71,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"F3EEC0EEF322C022"
    )
    port map (
      ADR1 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_2(1),
      ADR2 => NODE_REG_REGS_3(1),
      ADR4 => NODE_REG_REGS_1(1),
      ADR0 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_61_745
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_6(1),
      ADR2 => NODE_REG_REGS_7(1),
      ADR3 => NODE_REG_REGS_5(1),
      ADR0 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_53_753
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"F0AAFFCCF0AA00CC"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR4 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_10(1),
      ADR2 => NODE_REG_REGS_11(1),
      ADR0 => NODE_REG_REGS_9(1),
      ADR1 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_52_761
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X4Y31",
      INIT => X"FB3BCB0BF838C808"
    )
    port map (
      ADR2 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR4 => NODE_REG_REGS_14(1),
      ADR3 => NODE_REG_REGS_15(1),
      ADR0 => NODE_REG_REGS_13(1),
      ADR5 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_41_769
    );
  N405_N405_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N406,
      O => N406_0
    );
  N405_N405_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N88,
      O => N88_0
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y24",
      INIT => X"550F55FF550F55FF"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR0 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N405
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y24",
      INIT => X"550F5500"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR0 => e_in_2_IBUF_0,
      O => N406
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y24",
      INIT => X"553355FF553355FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N87
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y24",
      INIT => X"55335500"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_0_IBUF_0,
      O => N88
    );
  N90_N90_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N91,
      O => N91_0
    );
  N90_N90_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N391,
      O => N391_0
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"03CF33FF03CF33FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N90
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"03CF00CC"
    )
    port map (
      ADR0 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_0_IBUF_0,
      O => N91
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N390
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y27",
      INIT => X"00FF0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_2_IBUF_0,
      O => N391
    );
  N396_N396_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N397,
      O => N397_0
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y28",
      INIT => X"05AF55FF05AF55FF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N396
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y28",
      INIT => X"05AF00AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_2_IBUF_0,
      O => N397
    );
  N96_N96_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N97,
      O => N97_0
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"005FFF5F005FFF5F"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR4 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N96
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X5Y29",
      INIT => X"0050FF50"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR4 => e_in_0_IBUF_0,
      O => N97
    );
  NODE_COM_w_out_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_6_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q,
      O => NODE_COM_w_out(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"FF50FF5000500050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_0,
      ADR5 => s_in_6_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_6_Q
    );
  NODE_COM_w_out_5 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_5_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q,
      O => NODE_COM_w_out(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"F0F02222F0F02222"
    )
    port map (
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => ctrl_com(1),
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR0 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_0,
      ADR2 => s_in_5_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_5_Q
    );
  NODE_COM_w_out_4 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_4_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q,
      O => NODE_COM_w_out(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"F0F05500F0F05500"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => ctrl_com(1),
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR3 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_0,
      ADR2 => s_in_4_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_4_Q
    );
  NODE_COM_w_out_3 : X_FF
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_3_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q,
      O => NODE_COM_w_out(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y30",
      INIT => X"FF50FF5000500050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_0,
      ADR5 => s_in_3_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_3_Q
    );
  NODE_COM_w_out_2 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_2_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q,
      O => NODE_COM_w_out(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"AA0FAA0FAA00AA00"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR5 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_0,
      ADR0 => s_in_2_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_2_Q
    );
  NODE_COM_w_out_1 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_1_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q,
      O => NODE_COM_w_out(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT21 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"F3F30303F0F00000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => ctrl_com(1),
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR5 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_0,
      ADR4 => s_in_1_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_1_Q
    );
  NODE_COM_w_out_0 : X_FF
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_0_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q,
      O => NODE_COM_w_out(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"AAAA0000FAFA5050"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR0 => ctrl_com(1),
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_0_0,
      ADR4 => s_in_0_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_0_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_0_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X5Y31",
      INIT => X"0000000300000003"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR3 => instr_6_IBUF_0,
      ADR4 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR2 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_0_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_11_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"0C0000000C000000"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR2 => instr_5_IBUF_0,
      ADR1 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR3 => instr_6_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_11_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_8_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y22",
      INIT => X"0000000000440044"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR3 => instr_4_IBUF_0,
      ADR0 => instr_3_IBUF_0,
      ADR1 => instr_6_IBUF_0,
      ADR5 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_8_Q
    );
  N93_N93_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N94,
      O => N94_0
    );
  N93_N93_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N403,
      O => N403_0
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y25",
      INIT => X"05AF55FF05AF55FF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N93
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y25",
      INIT => X"05AF00AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_0_IBUF_0,
      O => N94
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y25",
      INIT => X"050FF5FF050FF5FF"
    )
    port map (
      ADR1 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR0 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR4 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N402
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X6Y25",
      INIT => X"0500F5F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR0 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR4 => e_in_2_IBUF_0,
      O => N403
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y26"
    )
    port map (
      IA => N549,
      IB => N550,
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_14_Q
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"F0BBFFFFF0880000"
    )
    port map (
      ADR5 => reg_data0(1),
      ADR4 => ctrl_reg_write(1),
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR2 => e_in_1_IBUF_0,
      ADR0 => s_in_1_IBUF_0,
      O => N549
    );
  NODE_REG_REGS_14_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_1_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_1_Q,
      O => NODE_REG_REGS_14(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"F0FFF000F0FFF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(1),
      ADR2 => w_in_1_IBUF_0,
      O => N550
    );
  NODE_REG_REGS_14_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_2_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q,
      O => NODE_REG_REGS_14(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"C5FFC000C5FFCF00"
    )
    port map (
      ADR5 => N408,
      ADR1 => w_in_2_IBUF_0,
      ADR0 => N409_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_2_Q
    );
  NODE_REG_REGS_14_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_0_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q,
      O => NODE_REG_REGS_14(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y26",
      INIT => X"F055F033FFFF0000"
    )
    port map (
      ADR1 => N108,
      ADR2 => w_in_0_IBUF_0,
      ADR0 => N109_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(0),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y27"
    )
    port map (
      IA => N539,
      IB => N540,
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_11_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"DDFFD8008DFF8800"
    )
    port map (
      ADR4 => reg_data0(1),
      ADR3 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR1 => e_in_1_IBUF_0,
      ADR5 => s_in_1_IBUF_0,
      O => N539
    );
  NODE_REG_REGS_11_1 : X_FF
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_1_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_1_Q,
      O => NODE_REG_REGS_11(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"FFF0FFF00F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(1),
      ADR5 => w_in_1_IBUF_0,
      O => N540
    );
  NODE_REG_REGS_11_2 : X_FF
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_2_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q,
      O => NODE_REG_REGS_11(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"BB33FF778C048C04"
    )
    port map (
      ADR2 => N393,
      ADR3 => w_in_2_IBUF_0,
      ADR4 => N394_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(2),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_2_Q
    );
  NODE_REG_REGS_11_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_0_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q,
      O => NODE_REG_REGS_11(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y27",
      INIT => X"F3F37777C0C000CC"
    )
    port map (
      ADR3 => N93,
      ADR2 => w_in_0_IBUF_0,
      ADR0 => N94_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_0_Q
    );
  alu_op2_2_alu_op2_2_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72_pack_5,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y29"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_989,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_981,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72_pack_5,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"EFE3ECE02F232C20"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_2(2),
      ADR5 => NODE_REG_REGS_3(2),
      ADR3 => NODE_REG_REGS_1(2),
      ADR4 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_62_989
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"F5A0DDDDF5A08888"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR4 => instr_7_IBUF_0,
      ADR1 => NODE_REG_REGS_6(2),
      ADR2 => NODE_REG_REGS_7(2),
      ADR3 => NODE_REG_REGS_5(2),
      ADR5 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_55_981
    );
  MUX_ALU_Mmux_bus_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"FFFFFFEF00000020"
    )
    port map (
      ADR0 => instr_5_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR4 => instr_20_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o1_5410,
      ADR5 => reg_data2_out(2),
      O => alu_op2(2)
    );
  NODE_REG_Mmux_data2_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y29",
      INIT => X"0F0A0C0C000A0C0C"
    )
    port map (
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR4 => instr_10_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_5381,
      ADR0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_5387,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f72,
      O => reg_data2_out(2)
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_994,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_1002,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f72,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_1010,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_1018,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f72,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"AAAACCCCF0F0FF00"
    )
    port map (
      ADR5 => instr_16_IBUF_0,
      ADR4 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_2(2),
      ADR0 => NODE_REG_REGS_3(2),
      ADR2 => NODE_REG_REGS_1(2),
      ADR3 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_62_994
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"AAAAF0F0FF00CCCC"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR3 => NODE_REG_REGS_6(2),
      ADR0 => NODE_REG_REGS_7(2),
      ADR2 => NODE_REG_REGS_5(2),
      ADR1 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_55_1002
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"FA50DDDDFA508888"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_10(2),
      ADR3 => NODE_REG_REGS_11(2),
      ADR1 => NODE_REG_REGS_9(2),
      ADR5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_54_1010
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y30",
      INIT => X"EFEA4F4AE5E04540"
    )
    port map (
      ADR0 => instr_16_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_14(2),
      ADR4 => NODE_REG_REGS_15(2),
      ADR1 => NODE_REG_REGS_13(2),
      ADR3 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_42_1018
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_0 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_1_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_1028,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_1036,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f71,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_1044,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_1052,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f71,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"EEF544F5EEA044A0"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_2(1),
      ADR4 => NODE_REG_REGS_3(1),
      ADR1 => NODE_REG_REGS_1(1),
      ADR5 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_61_1028
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FC30FC30BBBB8888"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      ADR0 => NODE_REG_REGS_6(1),
      ADR3 => NODE_REG_REGS_7(1),
      ADR2 => NODE_REG_REGS_5(1),
      ADR4 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_53_1036
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FD75B931EC64A820"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_10(1),
      ADR3 => NODE_REG_REGS_11(1),
      ADR4 => NODE_REG_REGS_9(1),
      ADR5 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_52_1044
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X6Y31",
      INIT => X"FFE233E2CCE200E2"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_14(1),
      ADR4 => NODE_REG_REGS_15(1),
      ADR2 => NODE_REG_REGS_13(1),
      ADR0 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_41_1052
    );
  N393_N393_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N394,
      O => N394_0
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"003FFF3F003FFF3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR4 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N393
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y25",
      INIT => X"000CFF0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR4 => e_in_2_IBUF_0,
      O => N394
    );
  N111_N111_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N112,
      O => N112_0
    );
  N111_N111_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N106,
      O => N106_0
    );
  N111_N111_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N109,
      O => N109_0
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"2777277727772777"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR1 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N111
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"27222722"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR1 => e_in_0_IBUF_0,
      O => N112
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N105
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"00FF0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_0_IBUF_0,
      O => N106
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"0077FF770077FF77"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR4 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N108
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X7Y26",
      INIT => X"0044FF44"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR4 => e_in_0_IBUF_0,
      O => N109
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y27",
      INIT => X"FA0AFA0AFCFC0C0C"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_14(1),
      ADR3 => NODE_REG_REGS_15(1),
      ADR4 => NODE_REG_REGS_13(1),
      ADR1 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_5380
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y28",
      INIT => X"DD88DD88F5F5A0A0"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR5 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_10(1),
      ADR1 => NODE_REG_REGS_11(1),
      ADR3 => NODE_REG_REGS_9(1),
      ADR4 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_5420
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"CAFFCA0FCAF0CA00"
    )
    port map (
      ADR3 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_10(2),
      ADR1 => NODE_REG_REGS_11(2),
      ADR4 => NODE_REG_REGS_9(2),
      ADR5 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_54_5387
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y29",
      INIT => X"FADDFA8850DD5088"
    )
    port map (
      ADR3 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_10(1),
      ADR5 => NODE_REG_REGS_11(1),
      ADR1 => NODE_REG_REGS_9(1),
      ADR4 => NODE_REG_REGS_8(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_5384
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X7Y30",
      INIT => X"CACACACAFFF00F00"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_14(2),
      ADR1 => NODE_REG_REGS_15(2),
      ADR4 => NODE_REG_REGS_13(2),
      ADR3 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_42_5381
    );
  NODE_REG_adr3_3_Decoder_52_OUT_12_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y19",
      INIT => X"0000000022220000"
    )
    port map (
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => instr_6_IBUF_0,
      ADR0 => instr_5_IBUF_0,
      ADR5 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_12_Q
    );
  N261_N261_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N262,
      O => N262_0
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => X"0F0F33FF0F0F33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR2 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N261
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y21",
      INIT => X"0F0F3300"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR2 => e_in_5_IBUF_0,
      O => N262
    );
  NODE_REG_adr3_3_Decoder_52_OUT_13_NODE_REG_adr3_3_Decoder_52_OUT_13_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_8_Q,
      O => NODE_REG_adr2_3_Decoder_35_OUT_8_0
    );
  NODE_REG_adr3_3_Decoder_52_OUT_13_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"0000A0000000A000"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => instr_4_IBUF_0,
      ADR2 => instr_6_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR0 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_13_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_0_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"0001000100010001"
    )
    port map (
      ADR4 => '1',
      ADR1 => instr_10_IBUF_0,
      ADR2 => instr_8_IBUF_0,
      ADR3 => instr_7_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_0_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_8_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"00040004"
    )
    port map (
      ADR4 => '1',
      ADR1 => instr_10_IBUF_0,
      ADR2 => instr_8_IBUF_0,
      ADR3 => instr_7_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_8_Q
    );
  NODE_REG_adr3_3_Decoder_52_OUT_14_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y22",
      INIT => X"4400440000000000"
    )
    port map (
      ADR2 => '1',
      ADR4 => '1',
      ADR0 => instr_3_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR5 => instr_6_IBUF_0,
      ADR1 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_14_Q
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_3_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_1154,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_1162,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f73,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_1170,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_1178,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f73,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"F3EEC0EEF322C022"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_2(3),
      ADR2 => NODE_REG_REGS_3(3),
      ADR4 => NODE_REG_REGS_1(3),
      ADR0 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_63_1154
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FA0AFCFCFA0A0C0C"
    )
    port map (
      ADR4 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR0 => NODE_REG_REGS_6(3),
      ADR3 => NODE_REG_REGS_7(3),
      ADR5 => NODE_REG_REGS_5(3),
      ADR1 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_57_1162
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FFAAF0CC00AAF0CC"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_10(3),
      ADR5 => NODE_REG_REGS_11(3),
      ADR0 => NODE_REG_REGS_9(3),
      ADR1 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_56_1170
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y23",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_14(3),
      ADR4 => NODE_REG_REGS_15(3),
      ADR3 => NODE_REG_REGS_13(3),
      ADR5 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_43_1178
    );
  NODE_REG_REGS_12_7_NODE_REG_REGS_12_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_12_pack_8,
      O => NODE_REG_adr2_3_Decoder_35_OUT_12_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y24"
    )
    port map (
      IA => N511,
      IB => N512,
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_12_Q
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"FFBF5F1FE0A04000"
    )
    port map (
      ADR5 => reg_data0(7),
      ADR2 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR4 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N511
    );
  NODE_REG_REGS_12_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_7_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_7_Q,
      O => NODE_REG_REGS_12(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"FF00FF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR3 => w_in_7_IBUF_0,
      O => N512
    );
  NODE_REG_adr2_3_Decoder_35_OUT_4_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"0002000200020002"
    )
    port map (
      ADR4 => '1',
      ADR1 => instr_10_IBUF_0,
      ADR3 => instr_8_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_4_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_12_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"00080008"
    )
    port map (
      ADR4 => '1',
      ADR1 => instr_10_IBUF_0,
      ADR3 => instr_8_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_12_pack_8
    );
  NODE_REG_n0360_inv : X_LUT6
    generic map(
      LOC => "SLICE_X8Y24",
      INIT => X"3838383838383828"
    )
    port map (
      ADR1 => ctrl_reg_write(0),
      ADR2 => ctrl_reg_write(1),
      ADR0 => N50,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      O => NODE_REG_n0360_inv_4862
    );
  NODE_REG_REGS_15_7_NODE_REG_REGS_15_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N373,
      O => N373_0
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y25"
    )
    port map (
      IA => N513,
      IB => N514,
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_15_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"EFFFE0C02F3F2000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR2 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR5 => e_in_7_IBUF_0,
      ADR0 => s_in_7_IBUF_0,
      O => N513
    );
  NODE_REG_REGS_15_7 : X_FF
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_7_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_7_Q,
      O => NODE_REG_REGS_15(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"FFAAFFAA55005500"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR0 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR5 => w_in_7_IBUF_0,
      O => N514
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"00FF777700FF7777"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N372
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"00FF2222"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR3 => e_in_2_IBUF_0,
      O => N373
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y25",
      INIT => X"FFCCE2E23300E2E2"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR4 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_14(7),
      ADR5 => NODE_REG_REGS_15(7),
      ADR3 => NODE_REG_REGS_13(7),
      ADR0 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_5388
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y26"
    )
    port map (
      IA => N545,
      IB => N546,
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_15_Q
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"AAF0CCCCAACCCCCC"
    )
    port map (
      ADR1 => reg_data0(1),
      ADR4 => ctrl_reg_write(1),
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR0 => e_in_1_IBUF_0,
      ADR2 => s_in_1_IBUF_0,
      O => N545
    );
  NODE_REG_REGS_15_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_1_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_1_Q,
      O => NODE_REG_REGS_15(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N546
    );
  NODE_REG_REGS_15_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_2_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q,
      O => NODE_REG_REGS_15(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"B3B3808CBFBF808C"
    )
    port map (
      ADR3 => N402,
      ADR0 => w_in_2_IBUF_0,
      ADR5 => N403_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_2_Q
    );
  NODE_REG_REGS_15_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_0_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q,
      O => NODE_REG_REGS_15(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y26",
      INIT => X"F333C044F3FFC044"
    )
    port map (
      ADR0 => N102,
      ADR2 => w_in_0_IBUF_0,
      ADR5 => N103_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(0),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y27"
    )
    port map (
      IA => N525,
      IB => N526,
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => X"D8FFDDFFD8008800"
    )
    port map (
      ADR5 => reg_data0(1),
      ADR3 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR1 => e_in_1_IBUF_0,
      ADR2 => s_in_1_IBUF_0,
      O => N525
    );
  NODE_REG_REGS_2_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_1_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_1_Q,
      O => NODE_REG_REGS_2(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => X"FF0FF000FF0FF000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(1),
      ADR3 => w_in_1_IBUF_0,
      O => N526
    );
  NODE_REG_REGS_2_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_2_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q,
      O => NODE_REG_REGS_2(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => X"DCDFF0F01013F0F0"
    )
    port map (
      ADR3 => N372,
      ADR5 => w_in_2_IBUF_0,
      ADR0 => N373_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(2),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_2_Q
    );
  NODE_REG_REGS_2_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_0_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q,
      O => NODE_REG_REGS_2(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y27",
      INIT => X"F3F333FFC0C04444"
    )
    port map (
      ADR0 => N72,
      ADR2 => w_in_0_IBUF_0,
      ADR3 => N73_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y28"
    )
    port map (
      IA => N527,
      IB => N528,
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"BFBFB0808FBF8080"
    )
    port map (
      ADR4 => reg_data0(1),
      ADR2 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR0 => e_in_1_IBUF_0,
      ADR5 => s_in_1_IBUF_0,
      O => N527
    );
  NODE_REG_REGS_4_1 : X_FF
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_1_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_1_Q,
      O => NODE_REG_REGS_4(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"CCCCCCCCFF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(1),
      ADR1 => w_in_1_IBUF_0,
      O => N528
    );
  NODE_REG_REGS_4_2 : X_FF
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_2_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q,
      O => NODE_REG_REGS_4(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"F5FFA2A2555F0202"
    )
    port map (
      ADR1 => N375,
      ADR5 => w_in_2_IBUF_0,
      ADR3 => N376_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_2_Q
    );
  NODE_REG_REGS_4_0 : X_FF
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_0_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q,
      O => NODE_REG_REGS_4(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y28",
      INIT => X"8FDF80808FDFD0D0"
    )
    port map (
      ADR5 => N75,
      ADR1 => w_in_0_IBUF_0,
      ADR3 => N76_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(0),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_0_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_pack_7,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5424
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y29"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_1349,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_1359,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_pack_7,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"FDB97531ECA86420"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_2(0),
      ADR4 => NODE_REG_REGS_3(0),
      ADR3 => NODE_REG_REGS_1(0),
      ADR5 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_6_1349
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"FEDC7654BA983210"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR3 => NODE_REG_REGS_6(0),
      ADR4 => NODE_REG_REGS_7(0),
      ADR5 => NODE_REG_REGS_5(0),
      ADR2 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_51_1359
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"EEF5EEA044F544A0"
    )
    port map (
      ADR3 => instr_12_IBUF_0,
      ADR0 => instr_11_IBUF_0,
      ADR1 => NODE_REG_REGS_10(0),
      ADR5 => NODE_REG_REGS_11(0),
      ADR2 => NODE_REG_REGS_9(0),
      ADR4 => NODE_REG_REGS_8(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_5423
    );
  NODE_REG_Mmux_data1_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y29",
      INIT => X"5044504455440044"
    )
    port map (
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR3 => instr_14_IBUF_0,
      ADR5 => instr_13_IBUF_0,
      ADR2 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_5417,
      ADR4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_5_5423,
      ADR1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5424,
      O => reg_data1_out(0)
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_2_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_1379,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_1387,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f72,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_1395,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_1403,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f72,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"BBBB8888F3C0F3C0"
    )
    port map (
      ADR5 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR4 => NODE_REG_REGS_2(2),
      ADR0 => NODE_REG_REGS_3(2),
      ADR2 => NODE_REG_REGS_1(2),
      ADR3 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_62_1379
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"DDDD8888F5A0F5A0"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_6(2),
      ADR1 => NODE_REG_REGS_7(2),
      ADR4 => NODE_REG_REGS_5(2),
      ADR3 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_55_1387
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"DFDAD5D08F8A8580"
    )
    port map (
      ADR2 => instr_4_IBUF_0,
      ADR0 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_10(2),
      ADR1 => NODE_REG_REGS_11(2),
      ADR4 => NODE_REG_REGS_9(2),
      ADR3 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_54_1395
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y30",
      INIT => X"FFCA0FCAF0CA00CA"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_14(2),
      ADR4 => NODE_REG_REGS_15(2),
      ADR1 => NODE_REG_REGS_13(2),
      ADR0 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_42_1403
    );
  N324_N324_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1412,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0_5292
    );
  N324_N324_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N325,
      O => N325_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X8Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_1411,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_1423,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_1412,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_2(0),
      ADR2 => NODE_REG_REGS_3(0),
      ADR5 => NODE_REG_REGS_1(0),
      ADR3 => NODE_REG_REGS_0(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_6_1411
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR3 => NODE_REG_REGS_6(0),
      ADR2 => NODE_REG_REGS_7(0),
      ADR4 => NODE_REG_REGS_5(0),
      ADR5 => NODE_REG_REGS_4(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_51_1423
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"4477777744777777"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR0 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N324
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X8Y31",
      INIT => X"44774444"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR0 => e_in_3_IBUF_0,
      O => N325
    );
  NODE_REG_adr3_3_Decoder_52_OUT_9_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y24",
      INIT => X"000000A0000000A0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR2 => instr_3_IBUF_0,
      ADR0 => instr_6_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_9_Q
    );
  N50_N50_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N52,
      O => N52_0
    );
  NODE_REG_n0360_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => X"0000404000004040"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_17_IBUF_0,
      ADR2 => instr_18_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      ADR5 => '1',
      O => N50
    );
  NODE_REG_n0404_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y26",
      INIT => X"10100000"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_17_IBUF_0,
      ADR2 => instr_18_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      O => N52
    );
  NODE_ALU_Mmux_res714_NODE_ALU_Mmux_res714_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_12_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_12_0
    );
  NODE_ALU_Mmux_res714_NODE_ALU_Mmux_res714_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N76,
      O => N76_0
    );
  NODE_ALU_Mmux_res715 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => X"8000008020000020"
    )
    port map (
      ADR0 => instr_2_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR3 => reg_data1_out(1),
      ADR1 => reg_data1_out(2),
      ADR4 => alu_op2(1),
      ADR5 => alu_op2(2),
      O => NODE_ALU_Mmux_res714
    );
  NODE_REG_adr1_3_Decoder_18_OUT_4_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => X"0101000001010000"
    )
    port map (
      ADR3 => '1',
      ADR0 => instr_14_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      ADR2 => instr_11_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_4_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_12_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => X"02020000"
    )
    port map (
      ADR3 => '1',
      ADR0 => instr_14_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      ADR2 => instr_11_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_12_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => X"03F30FFF03F30FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N75
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y28",
      INIT => X"03F300F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR3 => e_in_0_IBUF_0,
      O => N76
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"FDB9ECA875316420"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_14(2),
      ADR5 => NODE_REG_REGS_15(2),
      ADR3 => NODE_REG_REGS_13(2),
      ADR4 => NODE_REG_REGS_12(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_5419
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"FC30BBBBFC308888"
    )
    port map (
      ADR4 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_14(0),
      ADR3 => NODE_REG_REGS_15(0),
      ADR0 => NODE_REG_REGS_13(0),
      ADR5 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_5417
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y29",
      INIT => X"FF0FF000ACACACAC"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR2 => instr_11_IBUF_0,
      ADR4 => NODE_REG_REGS_14(1),
      ADR3 => NODE_REG_REGS_15(1),
      ADR0 => NODE_REG_REGS_13(1),
      ADR1 => NODE_REG_REGS_12(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_5418
    );
  NODE_ALU_Mmux_res1_rs_lut_3_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y30",
      INIT => X"0010000000100010"
    )
    port map (
      ADR1 => instr_23_IBUF_0,
      ADR0 => instr_21_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR3 => instr_20_IBUF_0,
      ADR4 => STATE_state_out_5159,
      ADR5 => instr_22_IBUF_0,
      O => N414
    );
  NODE_COM_n_out_5 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_5_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q,
      O => NODE_COM_n_out(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT61 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => X"CCFCCCFC00300030"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrl_com(1),
      ADR3 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_0,
      ADR5 => w_in_5_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_5_Q
    );
  NODE_COM_n_out_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_4_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q,
      O => NODE_COM_n_out(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => X"FF50FF5000500050"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR0 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR2 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_0,
      ADR5 => w_in_4_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_4_Q
    );
  NODE_COM_n_out_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_3_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q,
      O => NODE_COM_n_out(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT41 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => X"CCCCCCCC0F000F00"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR5 => ctrl_com(1),
      ADR2 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR3 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_0,
      ADR1 => w_in_3_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_3_Q
    );
  NODE_COM_n_out_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_n_out_2_CLK,
      I => NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q,
      O => NODE_COM_n_out(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_n_out_7_data0_7_mux_3_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y31",
      INIT => X"FFFF0F0000000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrl_com(1),
      ADR2 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR3 => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_2_0,
      ADR5 => w_in_2_IBUF_0,
      O => NODE_COM_n_out_7_data0_7_mux_3_OUT_2_Q
    );
  N216_N216_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N217,
      O => N217_0
    );
  N216_N216_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N295,
      O => N295_0
    );
  N216_N216_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N187,
      O => N187_0
    );
  N216_N216_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N286,
      O => N286_0
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"1B1B5F5F1B1B5F5F"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR2 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N216
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"0A0A4E4E"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR2 => e_in_6_IBUF_0,
      O => N217
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"1155BBFF1155BBFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR4 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N294
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"1100BBAA"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR4 => e_in_4_IBUF_0,
      O => N295
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"33330FFF33330FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N186
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"333300F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR1 => e_in_6_IBUF_0,
      O => N187
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"55550FFF55550FFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N285
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y19",
      INIT => X"55550F00"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR0 => e_in_4_IBUF_0,
      O => N286
    );
  N249_N249_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N250,
      O => N250_0
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y20",
      INIT => X"05F50FFF05F50FFF"
    )
    port map (
      ADR1 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N249
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y20",
      INIT => X"05F500F0"
    )
    port map (
      ADR1 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_5_IBUF_0,
      O => N250
    );
  alu_op2_3_alu_op2_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73_pack_5,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_1584,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_1576,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73_pack_5,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"FDEC7564B9A83120"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_2(3),
      ADR4 => NODE_REG_REGS_3(3),
      ADR5 => NODE_REG_REGS_1(3),
      ADR3 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_63_1584
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"F5F5A0A0EE44EE44"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_6(3),
      ADR2 => NODE_REG_REGS_7(3),
      ADR3 => NODE_REG_REGS_5(3),
      ADR1 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_57_1576
    );
  MUX_ALU_Mmux_bus_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"FF00FF00FF04FB00"
    )
    port map (
      ADR4 => instr_6_IBUF_0,
      ADR1 => instr_19_IBUF_0,
      ADR0 => instr_20_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR3 => reg_data2_out(3),
      O => alu_op2(3)
    );
  NODE_REG_Mmux_data2_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y21",
      INIT => X"0F050A000C0C0C0C"
    )
    port map (
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR5 => instr_10_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_5382,
      ADR4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_5389,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f73,
      O => reg_data2_out(3)
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_3_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_1589,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_1597,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f73,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_1605,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_1613,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f73,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y22",
      INIT => X"FE76BA32DC549810"
    )
    port map (
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_2(3),
      ADR3 => NODE_REG_REGS_3(3),
      ADR4 => NODE_REG_REGS_1(3),
      ADR2 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_63_1589
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y22",
      INIT => X"FFAAF0CC00AAF0CC"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR4 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_6(3),
      ADR5 => NODE_REG_REGS_7(3),
      ADR0 => NODE_REG_REGS_5(3),
      ADR1 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_57_1597
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y22",
      INIT => X"FADDFA8850DD5088"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_10(3),
      ADR5 => NODE_REG_REGS_11(3),
      ADR1 => NODE_REG_REGS_9(3),
      ADR4 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_56_1605
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y22",
      INIT => X"AAF0FFCCAAF000CC"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_14(3),
      ADR0 => NODE_REG_REGS_15(3),
      ADR5 => NODE_REG_REGS_13(3),
      ADR1 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_43_1613
    );
  NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_Q,
      SEL => instr_14_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_1623,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_1631,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f73,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_2 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_1639,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_1647,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f73,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y23",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR0 => instr_11_IBUF_0,
      ADR4 => NODE_REG_REGS_2(3),
      ADR2 => NODE_REG_REGS_3(3),
      ADR5 => NODE_REG_REGS_1(3),
      ADR3 => NODE_REG_REGS_0(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_63_1623
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y23",
      INIT => X"F0AAF0AACCFFCC00"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR0 => NODE_REG_REGS_6(3),
      ADR2 => NODE_REG_REGS_7(3),
      ADR1 => NODE_REG_REGS_5(3),
      ADR4 => NODE_REG_REGS_4(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_57_1631
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y23",
      INIT => X"E2E2FF33E2E2CC00"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR3 => NODE_REG_REGS_10(3),
      ADR2 => NODE_REG_REGS_11(3),
      ADR0 => NODE_REG_REGS_9(3),
      ADR5 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_56_1639
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y23",
      INIT => X"FACFFAC00ACF0AC0"
    )
    port map (
      ADR2 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR1 => NODE_REG_REGS_14(3),
      ADR5 => NODE_REG_REGS_15(3),
      ADR0 => NODE_REG_REGS_13(3),
      ADR4 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_43_1647
    );
  NODE_REG_REGS_8_7_NODE_REG_REGS_8_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N346,
      O => N346_0
    );
  NODE_REG_REGS_8_7_NODE_REG_REGS_8_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N199,
      O => N199_0
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y24"
    )
    port map (
      IA => N503,
      IB => N504,
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_8_Q
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"F0FFF000BBFF8800"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR3 => ctrl_reg_write(1),
      ADR5 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR2 => e_in_7_IBUF_0,
      ADR0 => s_in_7_IBUF_0,
      O => N503
    );
  NODE_REG_REGS_8_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_7_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_7_Q,
      O => NODE_REG_REGS_8(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"F0F0FF00F0F0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR4 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N504
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"1D1D3F3F1D1D3F3F"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR4 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR2 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N345
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"0C0C2E2E"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR4 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR2 => e_in_3_IBUF_0,
      O => N346
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"030FF3FF030FF3FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR4 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N198
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y24",
      INIT => X"000CF0FC"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR4 => e_in_6_IBUF_0,
      O => N199
    );
  N102_N102_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N103,
      O => N103_0
    );
  N102_N102_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N301,
      O => N301_0
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y25",
      INIT => X"1D3F1D3F1D3F1D3F"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR2 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N102
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y25",
      INIT => X"1D0C1D0C"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR2 => e_in_0_IBUF_0,
      O => N103
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y25",
      INIT => X"535F535F535F535F"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N300
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y25",
      INIT => X"53505350"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR0 => e_in_4_IBUF_0,
      O => N301
    );
  NODE_REG_REGS_4_7_NODE_REG_REGS_4_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N44,
      O => N44_0
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y26"
    )
    port map (
      IA => N495,
      IB => N496,
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_4_Q
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"D8FFD800DDFF8800"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR3 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR1 => e_in_7_IBUF_0,
      ADR2 => s_in_7_IBUF_0,
      O => N495
    );
  NODE_REG_REGS_4_7 : X_FF
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_7_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_7_Q,
      O => NODE_REG_REGS_4(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"FFF0FFF00F000F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR5 => w_in_7_IBUF_0,
      O => N496
    );
  NODE_REG_n0536_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"FFFFFFAFFFFFFFAF"
    )
    port map (
      ADR1 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      ADR2 => instr_17_IBUF_0,
      ADR5 => '1',
      O => N42
    );
  NODE_REG_n0426_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"00000A00"
    )
    port map (
      ADR1 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      ADR2 => instr_17_IBUF_0,
      O => N44
    );
  NODE_REG_n0536_inv : X_LUT6
    generic map(
      LOC => "SLICE_X10Y26",
      INIT => X"0C0C3C3C0C083C3C"
    )
    port map (
      ADR1 => ctrl_reg_write(1),
      ADR2 => ctrl_reg_write(0),
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR4 => N42,
      O => NODE_REG_n0536_inv_5045
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y27"
    )
    port map (
      IA => N551,
      IB => N552,
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => X"BF8CB380BF80BF80"
    )
    port map (
      ADR3 => reg_data0(1),
      ADR1 => ctrl_reg_write(1),
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR0 => e_in_1_IBUF_0,
      ADR4 => s_in_1_IBUF_0,
      O => N551
    );
  NODE_REG_REGS_0_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_1_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_1_Q,
      O => NODE_REG_REGS_0(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => X"FFFF3333CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N552
    );
  NODE_REG_REGS_0_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_2_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q,
      O => NODE_REG_REGS_0(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => X"F3F3C0C0777700CC"
    )
    port map (
      ADR3 => N411,
      ADR2 => w_in_2_IBUF_0,
      ADR0 => N412_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_2_Q
    );
  NODE_REG_REGS_0_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_0_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q,
      O => NODE_REG_REGS_0(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y27",
      INIT => X"C0D1AAAAE2F3AAAA"
    )
    port map (
      ADR3 => N111,
      ADR2 => w_in_0_IBUF_0,
      ADR5 => N112_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR4 => ctrl_reg_write(1),
      ADR0 => reg_data0(0),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_0_Q
    );
  NODE_ALU_Mmux_res712_NODE_ALU_Mmux_res712_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71_pack_5,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y28"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_1782,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_1784,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71_pack_5,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"DDF5DDA088F588A0"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_2(1),
      ADR1 => NODE_REG_REGS_3(1),
      ADR5 => NODE_REG_REGS_1(1),
      ADR4 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_61_1782
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"FE5EF454AE0EA404"
    )
    port map (
      ADR2 => instr_12_IBUF_0,
      ADR0 => instr_11_IBUF_0,
      ADR5 => NODE_REG_REGS_6(1),
      ADR3 => NODE_REG_REGS_7(1),
      ADR4 => NODE_REG_REGS_5(1),
      ADR1 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_53_1784
    );
  NODE_ALU_Mmux_res713 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"F0000E0E80800000"
    )
    port map (
      ADR0 => reg_data1_out(0),
      ADR1 => alu_op2(0),
      ADR5 => instr_2_IBUF_0,
      ADR4 => instr_0_IBUF_0,
      ADR2 => instr_1_IBUF_0,
      ADR3 => reg_data1_out(1),
      O => NODE_ALU_Mmux_res712
    );
  NODE_REG_Mmux_data1_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y28",
      INIT => X"5454540404540404"
    )
    port map (
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => instr_14_IBUF_0,
      ADR3 => instr_13_IBUF_0,
      ADR5 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_41_5418,
      ADR4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_52_5420,
      ADR1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f71,
      O => reg_data1_out(1)
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y29"
    )
    port map (
      IA => N531,
      IB => N532,
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"FDF8FF000D08FF00"
    )
    port map (
      ADR3 => reg_data0(1),
      ADR4 => ctrl_reg_write(1),
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR5 => e_in_1_IBUF_0,
      ADR1 => s_in_1_IBUF_0,
      O => N531
    );
  NODE_REG_REGS_6_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_1_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_1_Q,
      O => NODE_REG_REGS_6(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR3 => ctrl_reg_write(1),
      ADR2 => reg_data0(1),
      ADR0 => w_in_1_IBUF_0,
      O => N532
    );
  NODE_REG_REGS_6_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_2_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q,
      O => NODE_REG_REGS_6(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"DD88DD88550AFF0A"
    )
    port map (
      ADR2 => N381,
      ADR1 => w_in_2_IBUF_0,
      ADR4 => N382_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR0 => ctrl_reg_write(1),
      ADR3 => reg_data0(2),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_2_Q
    );
  NODE_REG_REGS_6_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_0_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q,
      O => NODE_REG_REGS_6(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y29",
      INIT => X"F577F577A000A0AA"
    )
    port map (
      ADR4 => N81,
      ADR2 => w_in_0_IBUF_0,
      ADR1 => N82_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR0 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_0_Q
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72_pack_7,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_1 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y30"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_1829,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_1839,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72_pack_7,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"BB88BB88F3F3C0C0"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR3 => NODE_REG_REGS_2(2),
      ADR0 => NODE_REG_REGS_3(2),
      ADR2 => NODE_REG_REGS_1(2),
      ADR4 => NODE_REG_REGS_0(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_62_1829
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"F3C0F3C0EEEE2222"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR3 => NODE_REG_REGS_6(2),
      ADR2 => NODE_REG_REGS_7(2),
      ADR4 => NODE_REG_REGS_5(2),
      ADR0 => NODE_REG_REGS_4(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_55_1839
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"FFE2CCE233E200E2"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_10(2),
      ADR5 => NODE_REG_REGS_11(2),
      ADR4 => NODE_REG_REGS_9(2),
      ADR0 => NODE_REG_REGS_8(2),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_5428
    );
  NODE_REG_Mmux_data1_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y30",
      INIT => X"00AC00AC00FC000C"
    )
    port map (
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => instr_14_IBUF_0,
      ADR5 => instr_13_IBUF_0,
      ADR0 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_42_5419,
      ADR4 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_54_5428,
      ADR1 => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f72,
      O => reg_data1_out(2)
    );
  alu_op2_1_alu_op2_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71_pack_5,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y31"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_1884,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_1876,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71_pack_5,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"BFB3BCB08F838C80"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR3 => NODE_REG_REGS_2(1),
      ADR0 => NODE_REG_REGS_3(1),
      ADR5 => NODE_REG_REGS_1(1),
      ADR4 => NODE_REG_REGS_0(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_61_1884
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"CACACACAFF0FF000"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_6(1),
      ADR1 => NODE_REG_REGS_7(1),
      ADR3 => NODE_REG_REGS_5(1),
      ADR4 => NODE_REG_REGS_4(1),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_53_1876
    );
  MUX_ALU_Mmux_bus_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"FFFFFFFD00000008"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR0 => instr_19_IBUF_0,
      ADR2 => instr_20_IBUF_0,
      ADR3 => instr_21_IBUF_0,
      ADR4 => CONTROL_disable_mask_OR_1_o1_5410,
      ADR5 => reg_data2_out(1),
      O => alu_op2(1)
    );
  NODE_REG_Mmux_data2_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X10Y31",
      INIT => X"00000000EEE44E44"
    )
    port map (
      ADR5 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR0 => instr_10_IBUF_0,
      ADR2 => instr_9_IBUF_0,
      ADR4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_41_5380,
      ADR3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_52_5384,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f71,
      O => reg_data2_out(1)
    );
  N291_N291_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N292,
      O => N292_0
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"1313DFDF1313DFDF"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_4_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR4 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N291
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y17",
      INIT => X"0202CECE"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_4_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR4 => e_in_4_IBUF_0,
      O => N292
    );
  N195_N195_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N196,
      O => N196_0
    );
  N195_N195_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N202,
      O => N202_0
    );
  N195_N195_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N244,
      O => N244_0
    );
  N195_N195_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N313,
      O => N313_0
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"0F0F33FF0F0F33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR3 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR2 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N195
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"0F0F00CC"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR3 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR2 => e_in_6_IBUF_0,
      O => N196
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"07F707F707F707F7"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N201
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"02F202F2"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => e_in_6_IBUF_0,
      O => N202
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"553355FF553355FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N243
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"550055CC"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_5_IBUF_0,
      O => N244
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"05AF55FF05AF55FF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR4 => s_in_4_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR3 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N312
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y18",
      INIT => X"00AA50FA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR4 => s_in_4_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR3 => e_in_4_IBUF_0,
      O => N313
    );
  NODE_REG_REGS_8_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_6_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q,
      O => NODE_REG_REGS_8(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"F0F03355FF00FF00"
    )
    port map (
      ADR0 => N195,
      ADR2 => w_in_6_IBUF_0,
      ADR1 => N196_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(6),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_6_Q
    );
  NODE_REG_REGS_8_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_5_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q,
      O => NODE_REG_REGS_8(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"DD8AFF8A55027702"
    )
    port map (
      ADR2 => N243,
      ADR5 => w_in_5_IBUF_0,
      ADR4 => N244_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR0 => ctrl_reg_write(1),
      ADR3 => reg_data0(5),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_5_Q
    );
  NODE_REG_REGS_8_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_4_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q,
      O => NODE_REG_REGS_8(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"AFA00F30AFA0FF30"
    )
    port map (
      ADR1 => N291,
      ADR0 => w_in_4_IBUF_0,
      ADR5 => N292_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(4),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_4_Q
    );
  NODE_REG_REGS_8_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0448_inv_4953,
      CLK => NlwBufferSignal_NODE_REG_REGS_8_3_CLK,
      I => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q,
      O => NODE_REG_REGS_8(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y19",
      INIT => X"AAAAF0F0303FF0F0"
    )
    port map (
      ADR3 => N339,
      ADR0 => w_in_3_IBUF_0,
      ADR1 => N340_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_8_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_8_7_REGS_8_7_mux_110_OUT_3_Q
    );
  NODE_REG_REGS_11_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_6_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q,
      O => NODE_REG_REGS_11(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => X"BB11AF05FFFF0000"
    )
    port map (
      ADR2 => N201,
      ADR3 => w_in_6_IBUF_0,
      ADR1 => N202_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_6_Q
    );
  NODE_REG_REGS_11_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_5_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q,
      O => NODE_REG_REGS_11(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => X"FF001B1BAAAAAAAA"
    )
    port map (
      ADR1 => N249,
      ADR3 => w_in_5_IBUF_0,
      ADR2 => N250_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR5 => ctrl_reg_write(1),
      ADR0 => reg_data0(5),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_5_Q
    );
  NODE_REG_REGS_11_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_4_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q,
      O => NODE_REG_REGS_11(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => X"AFAFA0A00FFF3030"
    )
    port map (
      ADR1 => N297,
      ADR0 => w_in_4_IBUF_0,
      ADR3 => N298_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_4_Q
    );
  NODE_REG_REGS_11_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_3_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q,
      O => NODE_REG_REGS_11(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y20",
      INIT => X"FF3FF0500F3F0050"
    )
    port map (
      ADR0 => N345,
      ADR5 => w_in_3_IBUF_0,
      ADR1 => N346_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(3),
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_3_Q
    );
  NODE_REG_REGS_13_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_6_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q,
      O => NODE_REG_REGS_13(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => X"FFCC3F4433003F44"
    )
    port map (
      ADR0 => N213,
      ADR5 => w_in_6_IBUF_0,
      ADR2 => N214_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR1 => ctrl_reg_write(1),
      ADR3 => reg_data0(6),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_6_Q
    );
  NODE_REG_REGS_13_5 : X_FF
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_5_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q,
      O => NODE_REG_REGS_13(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => X"DD5FDD5F880088AA"
    )
    port map (
      ADR4 => N261,
      ADR1 => w_in_5_IBUF_0,
      ADR2 => N262_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR0 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_5_Q
    );
  NODE_REG_REGS_13_4 : X_FF
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_4_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q,
      O => NODE_REG_REGS_13(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => X"BB33BBFF880C880C"
    )
    port map (
      ADR2 => N309,
      ADR0 => w_in_4_IBUF_0,
      ADR4 => N310_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(4),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_4_Q
    );
  NODE_REG_REGS_13_3 : X_FF
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0338_inv_4935,
      CLK => NlwBufferSignal_NODE_REG_REGS_13_3_CLK,
      I => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q,
      O => NODE_REG_REGS_13(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y21",
      INIT => X"88F08BF0B8F0BBF0"
    )
    port map (
      ADR4 => N357,
      ADR0 => w_in_3_IBUF_0,
      ADR5 => N358_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_13_Q,
      ADR3 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_13_7_REGS_13_7_mux_105_OUT_3_Q
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y22",
      INIT => X"AFA0FCFCAFA00C0C"
    )
    port map (
      ADR4 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR3 => NODE_REG_REGS_10(3),
      ADR0 => NODE_REG_REGS_11(3),
      ADR5 => NODE_REG_REGS_9(3),
      ADR1 => NODE_REG_REGS_8(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_56_5389
    );
  NODE_REG_adr3_3_Decoder_52_OUT_4_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y22",
      INIT => X"0000000000550000"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => instr_6_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_5_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_4_Q
    );
  N348_N348_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N349,
      O => N349_0
    );
  N348_N348_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N310,
      O => N310_0
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y23",
      INIT => X"15BF15BF15BF15BF"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N348
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y23",
      INIT => X"04AE04AE"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_3_IBUF_0,
      O => N349
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y23",
      INIT => X"555533FF555533FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N309
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y23",
      INIT => X"55553300"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR0 => e_in_4_IBUF_0,
      O => N310
    );
  NODE_REG_N67_NODE_REG_N67_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_14_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_14_0
    );
  NODE_REG_N67_NODE_REG_N67_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N82,
      O => N82_0
    );
  NODE_REG_adr0_3_Decoder_70_OUT_15_3_11 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"FF00000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => instr_15_IBUF_0,
      ADR3 => instr_16_IBUF_0,
      ADR4 => instr_17_IBUF_0,
      O => NODE_REG_N67
    );
  CONTROL_Mmux_set_state1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"5500510000000000"
    )
    port map (
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR3 => instr_18_IBUF_0,
      ADR5 => NODE_REG_N67,
      ADR4 => instr_19_IBUF_0,
      ADR2 => instr_20_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      O => ctrl_set_state
    );
  NODE_REG_adr1_3_Decoder_18_OUT_6_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"0000220000002200"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_12_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      ADR4 => instr_14_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_6_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_14_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"22000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_12_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      ADR4 => instr_14_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_14_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"2277777722777777"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR1 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N81
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y26",
      INIT => X"22772222"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR1 => e_in_0_IBUF_0,
      O => N82
    );
  N411_N411_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N412,
      O => N412_0
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y27",
      INIT => X"03F30FFF03F30FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N411
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y27",
      INIT => X"03F300F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR3 => e_in_2_IBUF_0,
      O => N412
    );
  NODE_ALU_Mmux_res722 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"0C0C0C08000C0008"
    )
    port map (
      ADR3 => instr_1_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR1 => instr_2_IBUF_0,
      ADR5 => reg_data1_out(0),
      ADR0 => reg_data1_out(1),
      ADR4 => alu_op2(1),
      O => NODE_ALU_Mmux_res721_5216
    );
  NODE_REG_adr3_3_Decoder_52_OUT_5_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"0505000000000000"
    )
    port map (
      ADR3 => '1',
      ADR1 => '1',
      ADR5 => instr_3_IBUF_0,
      ADR4 => instr_5_IBUF_0,
      ADR2 => instr_6_IBUF_0,
      ADR0 => instr_4_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_5_Q
    );
  NODE_ALU_Mmux_res78_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y28",
      INIT => X"EFFFBB33EFFFFF33"
    )
    port map (
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR3 => instr_1_IBUF_0,
      ADR4 => instr_0_IBUF_0,
      ADR1 => instr_2_IBUF_0,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      O => N59
    );
  N381_N381_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N382,
      O => N382_0
    );
  N381_N381_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N223,
      O => N223_0
    );
  N381_N381_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_11_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_11_0
    );
  N381_N381_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N70,
      O => N70_0
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"0555AFFF0555AFFF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR4 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N381
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"0500AFAA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR4 => e_in_2_IBUF_0,
      O => N382
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR3 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N222
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"00FF3030"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR3 => e_in_5_IBUF_0,
      O => N223
    );
  NODE_REG_adr1_3_Decoder_18_OUT_3_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"0000404000004040"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_11_IBUF_0,
      ADR2 => instr_12_IBUF_0,
      ADR0 => instr_14_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_3_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_11_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"00008080"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_11_IBUF_0,
      ADR2 => instr_12_IBUF_0,
      ADR0 => instr_14_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_11_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"11BB55FF11BB55FF"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N69
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y29",
      INIT => X"11BB00AA"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR1 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR3 => e_in_0_IBUF_0,
      O => N70
    );
  NODE_COM_w_out_7_NODE_COM_w_out_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n0051_inv_pack_6,
      O => NODE_COM_n0051_inv
    );
  NODE_REG_adr3_3_Decoder_52_OUT_1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => X"0010001000100010"
    )
    port map (
      ADR5 => '1',
      ADR4 => '1',
      ADR3 => instr_6_IBUF_0,
      ADR1 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR0 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_1_Q
    );
  MUX_ALU_Mmux_bus_out11_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => X"1111000011110000"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => instr_21_IBUF_0,
      ADR0 => instr_20_IBUF_0,
      ADR4 => instr_19_IBUF_0,
      ADR5 => '1',
      O => N114
    );
  NODE_COM_n0051_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => X"FF00FB04"
    )
    port map (
      ADR3 => ctrl_com(1),
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR1 => instr_21_IBUF_0,
      ADR0 => instr_20_IBUF_0,
      ADR4 => instr_19_IBUF_0,
      O => NODE_COM_n0051_inv_pack_6
    );
  CONTROL_Mmux_com21 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => X"0023000000000000"
    )
    port map (
      ADR4 => instr_20_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR1 => instr_23_IBUF_0,
      ADR3 => instr_19_IBUF_0,
      ADR0 => STATE_state_out_5159,
      ADR2 => instr_22_IBUF_0,
      O => ctrl_com(1)
    );
  NODE_COM_w_out_7 : X_FF
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_w_out_7_CLK,
      I => NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q,
      O => NODE_COM_w_out(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_w_out_7_data3_7_mux_9_OUT81 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y30",
      INIT => X"FF000000FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => ctrl_com(1),
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR2 => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_0,
      ADR3 => s_in_7_IBUF_0,
      O => NODE_COM_w_out_7_data3_7_mux_9_OUT_7_Q
    );
  NODE_REG_REGS_1_6_NODE_REG_REGS_1_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N32,
      O => N32_0
    );
  NODE_REG_n0602_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"FFFFFFAFFFFFFFAF"
    )
    port map (
      ADR1 => '1',
      ADR0 => instr_18_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      ADR3 => instr_17_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR5 => '1',
      O => N30
    );
  NODE_REG_n0646_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"A0000000"
    )
    port map (
      ADR1 => '1',
      ADR0 => instr_18_IBUF_0,
      ADR4 => instr_16_IBUF_0,
      ADR3 => instr_17_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      O => N32
    );
  NODE_REG_n0602_inv : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"0A0A0A085A5A5A5A"
    )
    port map (
      ADR0 => ctrl_reg_write(1),
      ADR2 => ctrl_reg_write(0),
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR5 => N30,
      O => NODE_REG_n0602_inv_5106
    );
  MUX_N_Mmux_bus_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"FF55CFC5AA00CAC0"
    )
    port map (
      ADR1 => n_in_6_IBUF_0,
      ADR2 => instr_21_IBUF_0,
      ADR3 => NODE_S_REG_tmp_s_new(6),
      ADR0 => ctrl_s_swap,
      ADR4 => CONTROL_disable_mask_OR_1_o,
      ADR5 => alu_res_6_0,
      O => reg_data0(6)
    );
  NODE_REG_REGS_1_6 : X_FF
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_6_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q,
      O => NODE_REG_REGS_1(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X11Y31",
      INIT => X"FF33CC0077770C0C"
    )
    port map (
      ADR2 => N174,
      ADR3 => w_in_6_IBUF_0,
      ADR0 => N175_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_6_Q
    );
  N354_N354_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N355,
      O => N355_0
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"0F0F55FF0F0F55FF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR2 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N354
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y14",
      INIT => X"0F0F00AA"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR2 => e_in_3_IBUF_0,
      O => N355
    );
  NODE_REG_REGS_15_6 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_6_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q,
      O => NODE_REG_REGS_15(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"F055FFFFF0330000"
    )
    port map (
      ADR1 => N210,
      ADR2 => w_in_6_IBUF_0,
      ADR0 => N211_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR4 => ctrl_reg_write(1),
      ADR5 => reg_data0(6),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_6_Q
    );
  NODE_REG_REGS_15_5 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_5_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q,
      O => NODE_REG_REGS_15(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"AFAF0FFFA0A03030"
    )
    port map (
      ADR1 => N258,
      ADR0 => w_in_5_IBUF_0,
      ADR3 => N259_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR2 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_5_Q
    );
  NODE_REG_REGS_15_4 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_4_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q,
      O => NODE_REG_REGS_15(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"DFDFC0F01F1F0030"
    )
    port map (
      ADR3 => N306,
      ADR5 => w_in_4_IBUF_0,
      ADR0 => N307_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_4_Q
    );
  NODE_REG_REGS_15_3 : X_FF
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0646_inv_4995,
      CLK => NlwBufferSignal_NODE_REG_REGS_15_3_CLK,
      I => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q,
      O => NODE_REG_REGS_15(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y15",
      INIT => X"BB88330CBB88FF0C"
    )
    port map (
      ADR2 => N354,
      ADR0 => w_in_3_IBUF_0,
      ADR5 => N355_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR1 => ctrl_reg_write(1),
      ADR3 => reg_data0(3),
      O => NODE_REG_REGS_15_7_REGS_15_7_mux_103_OUT_3_Q
    );
  NODE_REG_REGS_11_7_NODE_REG_REGS_11_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_11_pack_8,
      O => NODE_REG_adr2_3_Decoder_35_OUT_11_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y16"
    )
    port map (
      IA => N507,
      IB => N508,
      O => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_11_Q
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FFDF3F1FE0C02000"
    )
    port map (
      ADR5 => reg_data0(7),
      ADR2 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR4 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N507
    );
  NODE_REG_REGS_11_7 : X_FF
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0382_inv_5136,
      CLK => NlwBufferSignal_NODE_REG_REGS_11_7_CLK,
      I => NODE_REG_REGS_11_7_REGS_11_7_mux_107_OUT_7_Q,
      O => NODE_REG_REGS_11(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"FF00FF00F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(7),
      ADR3 => w_in_7_IBUF_0,
      O => N508
    );
  NODE_REG_adr2_3_Decoder_35_OUT_3_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"0000404000004040"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_7_IBUF_0,
      ADR2 => instr_8_IBUF_0,
      ADR4 => instr_10_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_3_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_11_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"40400000"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_7_IBUF_0,
      ADR2 => instr_8_IBUF_0,
      ADR4 => instr_10_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_11_pack_8
    );
  NODE_REG_n0382_inv : X_LUT6
    generic map(
      LOC => "SLICE_X12Y16",
      INIT => X"0A0A0A0AF0F0F0E0"
    )
    port map (
      ADR5 => ctrl_reg_write(0),
      ADR2 => ctrl_reg_write(1),
      ADR0 => N48_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_11_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      O => NODE_REG_n0382_inv_5136
    );
  N297_N297_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N298,
      O => N298_0
    );
  N297_N297_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N331,
      O => N331_0
    );
  N297_N297_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N283,
      O => N283_0
    );
  N297_N297_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N334,
      O => N334_0
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"2277777722777777"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR1 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N297
    );
  NODE_REG_Mmux_REGS_11_7_REGS_11_7_mux_107_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"22772222"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_11_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_11_0,
      ADR1 => e_in_4_IBUF_0,
      O => N298
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"333355FF333355FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR1 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N330
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"33335500"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR1 => e_in_3_IBUF_0,
      O => N331
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"550F55FF550F55FF"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N282
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"550F5500"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR0 => e_in_4_IBUF_0,
      O => N283
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"0F0F33FF0F0F33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR2 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N333
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y17",
      INIT => X"0F0F3300"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR2 => e_in_3_IBUF_0,
      O => N334
    );
  NODE_REG_adr3_3_Decoder_52_OUT_7_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"00000000F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => instr_6_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR2 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_7_Q
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y18",
      INIT => X"FF55D8D8AA00D8D8"
    )
    port map (
      ADR4 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_14(6),
      ADR3 => NODE_REG_REGS_15(6),
      ADR1 => NODE_REG_REGS_13(6),
      ADR2 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_5386
    );
  N276_N276_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N277,
      O => N277_0
    );
  N276_N276_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N235,
      O => N235_0
    );
  N276_N276_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_n0027_inv,
      O => NODE_S_REG_n0027_inv_0
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"0F0F33FF0F0F33FF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N276
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"0F0F3300"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_4_IBUF_0,
      O => N277
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"55550FFF55550FFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR0 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N234
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"555500F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR0 => e_in_5_IBUF_0,
      O => N235
    );
  NODE_S_REG_n0028_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"0000000400000004"
    )
    port map (
      ADR0 => step_IBUF_0,
      ADR4 => CONTROL_disable_mask_OR_1_o,
      ADR3 => instr_21_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR5 => '1',
      O => NODE_S_REG_n0028_inv
    );
  NODE_S_REG_n0027_inv1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y19",
      INIT => X"AAAAAAAE"
    )
    port map (
      ADR0 => step_IBUF_0,
      ADR4 => CONTROL_disable_mask_OR_1_o,
      ADR3 => instr_21_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      O => NODE_S_REG_n0027_inv
    );
  N213_N213_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N214,
      O => N214_0
    );
  N213_N213_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N361,
      O => N361_0
    );
  N213_N213_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N265,
      O => N265_0
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"00FF777700FF7777"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N213
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"00FF4444"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR3 => e_in_6_IBUF_0,
      O => N214
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"55550FFF55550FFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR0 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N360
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"55550F00"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR0 => e_in_3_IBUF_0,
      O => N361
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"1D3F1D3F1D3F1D3F"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR2 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N264
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y20",
      INIT => X"1D0C1D0C"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_14_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_14_0,
      ADR2 => e_in_5_IBUF_0,
      O => N265
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_6_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_2351,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_2359,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f76,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_2367,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_2375,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f76,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => X"EFE5EAE04F454A40"
    )
    port map (
      ADR0 => instr_16_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR3 => NODE_REG_REGS_2(6),
      ADR5 => NODE_REG_REGS_3(6),
      ADR1 => NODE_REG_REGS_1(6),
      ADR4 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_66_2351
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => X"F5DDF588A0DDA088"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR5 => NODE_REG_REGS_6(6),
      ADR2 => NODE_REG_REGS_7(6),
      ADR1 => NODE_REG_REGS_5(6),
      ADR4 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_513_2359
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => X"F0F0CCCCAAAAFF00"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR0 => NODE_REG_REGS_10(6),
      ADR2 => NODE_REG_REGS_11(6),
      ADR1 => NODE_REG_REGS_9(6),
      ADR3 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_512_2367
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y21",
      INIT => X"FE76DC54BA329810"
    )
    port map (
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR4 => NODE_REG_REGS_14(6),
      ADR3 => NODE_REG_REGS_15(6),
      ADR5 => NODE_REG_REGS_13(6),
      ADR2 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_46_2375
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_6_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_2385,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_2393,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f76,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_2401,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_2409,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f76,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"DDDDF5A08888F5A0"
    )
    port map (
      ADR4 => instr_4_IBUF_0,
      ADR0 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_2(6),
      ADR1 => NODE_REG_REGS_3(6),
      ADR2 => NODE_REG_REGS_1(6),
      ADR3 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_66_2385
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"EFE32F23ECE02C20"
    )
    port map (
      ADR2 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR0 => NODE_REG_REGS_6(6),
      ADR4 => NODE_REG_REGS_7(6),
      ADR3 => NODE_REG_REGS_5(6),
      ADR5 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_513_2393
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"AAAACCCCFF00F0F0"
    )
    port map (
      ADR5 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR1 => NODE_REG_REGS_10(6),
      ADR0 => NODE_REG_REGS_11(6),
      ADR3 => NODE_REG_REGS_9(6),
      ADR2 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_512_2401
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y22",
      INIT => X"FC30EEEEFC302222"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_14(6),
      ADR3 => NODE_REG_REGS_15(6),
      ADR2 => NODE_REG_REGS_13(6),
      ADR0 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_46_2409
    );
  alu_op2_6_alu_op2_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76_pack_6,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y23"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_2444,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_2436,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76_pack_6,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"B8FFB833B8CCB800"
    )
    port map (
      ADR3 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_2(6),
      ADR0 => NODE_REG_REGS_3(6),
      ADR4 => NODE_REG_REGS_1(6),
      ADR5 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_66_2444
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"FE5EAE0EF454A404"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_6(6),
      ADR3 => NODE_REG_REGS_7(6),
      ADR4 => NODE_REG_REGS_5(6),
      ADR1 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_513_2436
    );
  MUX_ALU_Mmux_bus_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"FFFFFFEF00000020"
    )
    port map (
      ADR0 => instr_9_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR4 => instr_21_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(6),
      O => alu_op2(6)
    );
  NODE_REG_Mmux_data2_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y23",
      INIT => X"0F0C0A0C050C000C"
    )
    port map (
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR3 => instr_10_IBUF_0,
      ADR0 => instr_9_IBUF_0,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_46_5386,
      ADR4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_5393,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f76,
      O => reg_data2_out(6)
    );
  alu_op2_7_alu_op2_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77_pack_6,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_2474,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_2466,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77_pack_6,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"FB73EA62D951C840"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_2(7),
      ADR3 => NODE_REG_REGS_3(7),
      ADR5 => NODE_REG_REGS_1(7),
      ADR4 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_67_2474
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"F7D5E6C4B391A280"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_6(7),
      ADR2 => NODE_REG_REGS_7(7),
      ADR3 => NODE_REG_REGS_5(7),
      ADR4 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_515_2466
    );
  MUX_ALU_Mmux_bus_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"FFFFFFEF00100000"
    )
    port map (
      ADR4 => instr_10_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR0 => instr_20_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o,
      ADR5 => reg_data2_out(7),
      O => alu_op2(7)
    );
  NODE_REG_Mmux_data2_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y25",
      INIT => X"5550444405004444"
    )
    port map (
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR4 => instr_10_IBUF_0,
      ADR2 => instr_9_IBUF_0,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_47_5388,
      ADR3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_5394,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f77,
      O => reg_data2_out(7)
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y26"
    )
    port map (
      IA => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21,
      IB => sr_in_1_IBUF_rt_2495,
      O => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_2485,
      SEL => step_IBUF_0
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT211 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"FFAAFFBBFFAAFFAA"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_ALU_Mmux_res721_5216,
      ADR5 => NODE_ALU_Mmux_res1_split_1_0,
      ADR1 => instr_1_IBUF_0,
      ADR4 => instr_2_IBUF_0,
      ADR0 => NODE_ALU_Mmux_res72,
      O => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21
    );
  NODE_S_REG_tmp_s_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_1_CLK,
      I => NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT21_f7_2485,
      O => NODE_S_REG_tmp_s(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  sr_in_1_IBUF_rt : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"F0F0F0F0F0F0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR5 => '1',
      ADR3 => '1',
      ADR4 => '1',
      ADR2 => sr_in_1_IBUF_0,
      O => sr_in_1_IBUF_rt_2495
    );
  NODE_ALU_Mmux_res721 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"8888800000008000"
    )
    port map (
      ADR4 => instr_2_IBUF_0,
      ADR0 => instr_1_IBUF_0,
      ADR1 => instr_0_IBUF_0,
      ADR5 => reg_data1_out(2),
      ADR2 => reg_data1_out(1),
      ADR3 => alu_op2(1),
      O => NODE_ALU_Mmux_res72
    );
  NODE_S_REG_tmp_s_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_0_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q,
      O => NODE_S_REG_tmp_s(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y26",
      INIT => X"CCCCFF05CCCCFF00"
    )
    port map (
      ADR1 => sr_in_0_IBUF_0,
      ADR2 => N122,
      ADR0 => instr_2_IBUF_0,
      ADR4 => step_IBUF_0,
      ADR3 => NODE_ALU_Mmux_res717_5377,
      ADR5 => NODE_ALU_Mmux_res718_5378,
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y27"
    )
    port map (
      IA => N533,
      IB => N534,
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"FBC87340FF887700"
    )
    port map (
      ADR3 => reg_data0(1),
      ADR1 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR4 => e_in_1_IBUF_0,
      ADR2 => s_in_1_IBUF_0,
      O => N533
    );
  NODE_REG_REGS_7_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_1_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_1_Q,
      O => NODE_REG_REGS_7(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"CFC0CFC0CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR5 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(1),
      ADR1 => w_in_1_IBUF_0,
      O => N534
    );
  NODE_REG_REGS_7_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_2_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q,
      O => NODE_REG_REGS_7(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"B8BCF8FC30347074"
    )
    port map (
      ADR3 => N384,
      ADR5 => w_in_2_IBUF_0,
      ADR4 => N385_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR1 => ctrl_reg_write(1),
      ADR2 => reg_data0(2),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_2_Q
    );
  NODE_REG_REGS_7_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_0_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q,
      O => NODE_REG_REGS_7(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y27",
      INIT => X"F033F055FFFF0000"
    )
    port map (
      ADR0 => N84,
      ADR2 => w_in_0_IBUF_0,
      ADR1 => N85_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(0),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y28"
    )
    port map (
      IA => N521,
      IB => N522,
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"EE22EAEAEE222A2A"
    )
    port map (
      ADR0 => reg_data0(1),
      ADR1 => ctrl_reg_write(1),
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR3 => e_in_1_IBUF_0,
      ADR5 => s_in_1_IBUF_0,
      O => N521
    );
  NODE_REG_REGS_1_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_1_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_1_Q,
      O => NODE_REG_REGS_1(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N522
    );
  MUX_N_Mmux_bus_out21 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"CCCCCCCCDDD88D88"
    )
    port map (
      ADR1 => N481,
      ADR4 => N480_0,
      ADR3 => N479,
      ADR2 => NODE_ALU_Mmux_res1_split_1_0,
      ADR0 => NODE_ALU_Mmux_res72,
      ADR5 => NODE_ALU_Mmux_res721_5216,
      O => reg_data0(1)
    );
  NODE_REG_REGS_1_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_0_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q,
      O => NODE_REG_REGS_1(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y28",
      INIT => X"A0FFAFFFA300A300"
    )
    port map (
      ADR1 => N66,
      ADR0 => w_in_0_IBUF_0,
      ADR4 => N67_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_0_Q
    );
  reg_data1_out_3_reg_data1_out_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_res(2),
      O => alu_res_2_0
    );
  reg_data1_out_3_reg_data1_out_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N271,
      O => N271_0
    );
  NODE_ALU_Mmux_res733 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y29"
    )
    port map (
      IA => N553,
      IB => N554,
      O => alu_res(2),
      SEL => instr_2_IBUF_0
    );
  NODE_ALU_Mmux_res733_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"B3B3808033330000"
    )
    port map (
      ADR3 => '1',
      ADR1 => instr_1_IBUF_0,
      ADR0 => instr_0_IBUF_0,
      ADR5 => alu_op2(2),
      ADR2 => reg_data1_out(2),
      ADR4 => NODE_ALU_Mmux_res1_split_2_0,
      O => N553
    );
  NODE_ALU_Mmux_res733_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"FF555454AA005454"
    )
    port map (
      ADR0 => instr_0_IBUF_0,
      ADR4 => instr_1_IBUF_0,
      ADR1 => alu_op2(2),
      ADR2 => reg_data1_out(2),
      ADR5 => reg_data1_out(1),
      ADR3 => reg_data1_out(3),
      O => N554
    );
  NODE_REG_Mmux_data1_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"FFFF0000FFFC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => instr_13_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR5 => instr_12_IBUF_0,
      ADR2 => instr_14_IBUF_0,
      ADR4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_0,
      O => reg_data1_out(3)
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"1D3F1D3F1D3F1D3F"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N270
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X12Y29",
      INIT => X"1D0C1D0C"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_4_IBUF_0,
      O => N271
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y30"
    )
    port map (
      IA => N523,
      IB => N524,
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"E4F5FFFFE4A00000"
    )
    port map (
      ADR5 => reg_data0(1),
      ADR4 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR2 => e_in_1_IBUF_0,
      ADR1 => s_in_1_IBUF_0,
      O => N523
    );
  NODE_REG_REGS_3_1 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_1_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_1_Q,
      O => NODE_REG_REGS_3(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"FFFF00FFFF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N524
    );
  NODE_REG_REGS_3_2 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_2_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q,
      O => NODE_REG_REGS_3(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"D5F78080D5F7A2A2"
    )
    port map (
      ADR5 => N369,
      ADR2 => w_in_2_IBUF_0,
      ADR3 => N370_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_2_Q
    );
  NODE_REG_REGS_3_0 : X_FF
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_0_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q,
      O => NODE_REG_REGS_3(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y30",
      INIT => X"DF1FDF1FC000F030"
    )
    port map (
      ADR4 => N69,
      ADR3 => w_in_0_IBUF_0,
      ADR0 => N70_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR2 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_0_Q
    );
  reg_data1_out_7_reg_data1_out_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_res(6),
      O => alu_res_6_0
    );
  NODE_ALU_Mmux_res773 : X_MUX2
    generic map(
      LOC => "SLICE_X12Y31"
    )
    port map (
      IA => N561,
      IB => N562,
      O => alu_res(6),
      SEL => instr_2_IBUF_0
    );
  NODE_ALU_Mmux_res773_F : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"F3C0330033003300"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_1_IBUF_0,
      ADR4 => instr_0_IBUF_0,
      ADR5 => alu_op2(6),
      ADR2 => reg_data1_out(6),
      ADR3 => NODE_ALU_Mmux_res1_split_6_0,
      O => N561
    );
  NODE_ALU_Mmux_res773_G : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FCFC332230303322"
    )
    port map (
      ADR1 => instr_0_IBUF_0,
      ADR4 => instr_1_IBUF_0,
      ADR3 => alu_op2(6),
      ADR0 => reg_data1_out(6),
      ADR2 => reg_data1_out(5),
      ADR5 => reg_data1_out(7),
      O => N562
    );
  NODE_REG_Mmux_data1_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"FFFFFFEE00000000"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_13_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR0 => instr_12_IBUF_0,
      ADR1 => instr_14_IBUF_0,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      O => reg_data1_out(7)
    );
  NODE_ALU_Mmux_res717 : X_LUT6
    generic map(
      LOC => "SLICE_X12Y31",
      INIT => X"9000009009000009"
    )
    port map (
      ADR0 => reg_data1_out(0),
      ADR4 => reg_data1_out(4),
      ADR2 => reg_data1_out(7),
      ADR1 => alu_op2(0),
      ADR3 => alu_op2(4),
      ADR5 => alu_op2(7),
      O => NODE_ALU_Mmux_res716_5414
    );
  N258_N258_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N259,
      O => N259_0
    );
  N258_N258_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N211,
      O => N211_0
    );
  N258_N258_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N337,
      O => N337_0
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"33330FFF33330FFF"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N258
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"333300F0"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_5_IBUF_0,
      O => N259
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"303F3F3F303F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N210
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"30303F30"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_6_IBUF_0,
      O => N211
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"005FFF5F005FFF5F"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR4 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N336
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y15",
      INIT => X"0050FF50"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR4 => e_in_3_IBUF_0,
      O => N337
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y16",
      INIT => X"FCFC3030BB88BB88"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_14(3),
      ADR4 => NODE_REG_REGS_15(3),
      ADR0 => NODE_REG_REGS_13(3),
      ADR3 => NODE_REG_REGS_12(3),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_43_5382
    );
  NODE_REG_REGS_5_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_6_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q,
      O => NODE_REG_REGS_5(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"BFBF88CC37370044"
    )
    port map (
      ADR3 => N186,
      ADR5 => w_in_6_IBUF_0,
      ADR2 => N187_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_6_Q
    );
  NODE_REG_REGS_5_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_5_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q,
      O => NODE_REG_REGS_5(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"F0AA22AAF0AA77AA"
    )
    port map (
      ADR5 => N234,
      ADR2 => w_in_5_IBUF_0,
      ADR1 => N235_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR3 => ctrl_reg_write(1),
      ADR0 => reg_data0(5),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_5_Q
    );
  NODE_REG_REGS_5_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_4_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q,
      O => NODE_REG_REGS_5(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"8B8B88BBFFFF0000"
    )
    port map (
      ADR3 => N282,
      ADR0 => w_in_4_IBUF_0,
      ADR2 => N283_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_4_Q
    );
  NODE_REG_REGS_5_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_3_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q,
      O => NODE_REG_REGS_5(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y17",
      INIT => X"B380B3C4F780F7C4"
    )
    port map (
      ADR4 => N330,
      ADR2 => w_in_3_IBUF_0,
      ADR5 => N331_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR1 => ctrl_reg_write(1),
      ADR3 => reg_data0(3),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_3_Q
    );
  N237_N237_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N238,
      O => N238_0
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"333355FF333355FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR1 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N237
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y18",
      INIT => X"33335500"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR1 => e_in_5_IBUF_0,
      O => N238
    );
  NODE_REG_REGS_6_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_6_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q,
      O => NODE_REG_REGS_6(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"CFFFD0D00F3F1010"
    )
    port map (
      ADR0 => N189,
      ADR5 => w_in_6_IBUF_0,
      ADR3 => N190_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_6_Q
    );
  NODE_REG_REGS_6_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_5_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q,
      O => NODE_REG_REGS_6(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"FAFA2A7A0A0A2A7A"
    )
    port map (
      ADR3 => N237,
      ADR5 => w_in_5_IBUF_0,
      ADR1 => N238_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR2 => ctrl_reg_write(1),
      ADR0 => reg_data0(5),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_5_Q
    );
  NODE_REG_REGS_6_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_4_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q,
      O => NODE_REG_REGS_6(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"AF0FA030AFFFA030"
    )
    port map (
      ADR1 => N285,
      ADR0 => w_in_4_IBUF_0,
      ADR5 => N286_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_4_Q
    );
  NODE_REG_REGS_6_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_3_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q,
      O => NODE_REG_REGS_6(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y19",
      INIT => X"CCCC05F5F0F0F0F0"
    )
    port map (
      ADR0 => N333,
      ADR1 => w_in_3_IBUF_0,
      ADR3 => N334_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_3_Q
    );
  NODE_REG_REGS_14_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_6_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q,
      O => NODE_REG_REGS_14(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"8B88FF008BBBFF00"
    )
    port map (
      ADR5 => N216,
      ADR0 => w_in_6_IBUF_0,
      ADR2 => N217_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR4 => ctrl_reg_write(1),
      ADR3 => reg_data0(6),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_6_Q
    );
  NODE_REG_REGS_14_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_5_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q,
      O => NODE_REG_REGS_14(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"888DDD8DFF00FF00"
    )
    port map (
      ADR2 => N264,
      ADR1 => w_in_5_IBUF_0,
      ADR4 => N265_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(5),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_5_Q
    );
  NODE_REG_REGS_14_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_4_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q,
      O => NODE_REG_REGS_14(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"FFAA5500770A770A"
    )
    port map (
      ADR2 => N312,
      ADR4 => w_in_4_IBUF_0,
      ADR1 => N313_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR0 => ctrl_reg_write(1),
      ADR3 => reg_data0(4),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_4_Q
    );
  NODE_REG_REGS_14_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0316_inv_4967,
      CLK => NlwBufferSignal_NODE_REG_REGS_14_3_CLK,
      I => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q,
      O => NODE_REG_REGS_14(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_14_7_REGS_14_7_mux_104_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y20",
      INIT => X"FF003535F0F0F0F0"
    )
    port map (
      ADR0 => N360,
      ADR3 => w_in_3_IBUF_0,
      ADR1 => N361_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_14_Q,
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_14_7_REGS_14_7_mux_104_OUT_3_Q
    );
  N246_N246_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N247,
      O => N247_0
    );
  N246_N246_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N190,
      O => N190_0
    );
  N246_N246_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N340,
      O => N340_0
    );
  N246_N246_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N343,
      O => N343_0
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"1B1B5F5F1B1B5F5F"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR2 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N246
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"0A0A4E4E"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR2 => e_in_5_IBUF_0,
      O => N247
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"0F0F55FF0F0F55FF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR2 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N189
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"0F0F5500"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR2 => e_in_6_IBUF_0,
      O => N190
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"4777477747774777"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N339
    );
  NODE_REG_Mmux_REGS_8_7_REGS_8_7_mux_110_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"47444744"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_8_0,
      ADR2 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_8_0,
      ADR0 => e_in_3_IBUF_0,
      O => N340
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"00FF5F5F00FF5F5F"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N342
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y21",
      INIT => X"00FF0A0A"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR3 => e_in_3_IBUF_0,
      O => N343
    );
  NODE_REG_REGS_9_6 : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_6_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q,
      O => NODE_REG_REGS_9(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => X"DD55880ADDFF880A"
    )
    port map (
      ADR2 => N198,
      ADR1 => w_in_6_IBUF_0,
      ADR5 => N199_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_6_Q
    );
  NODE_REG_REGS_9_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_5_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q,
      O => NODE_REG_REGS_9(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => X"88BB8B8BFFFF0000"
    )
    port map (
      ADR2 => N246,
      ADR0 => w_in_5_IBUF_0,
      ADR3 => N247_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(5),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_5_Q
    );
  NODE_REG_REGS_9_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_4_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q,
      O => NODE_REG_REGS_9(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => X"A3FFA000A3FFAF00"
    )
    port map (
      ADR5 => N294,
      ADR0 => w_in_4_IBUF_0,
      ADR1 => N295_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_4_Q
    );
  NODE_REG_REGS_9_3 : X_FF
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_3_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q,
      O => NODE_REG_REGS_9(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y23",
      INIT => X"BBFFAF0011FF0500"
    )
    port map (
      ADR2 => N342,
      ADR5 => w_in_3_IBUF_0,
      ADR1 => N343_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(3),
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_3_Q
    );
  NODE_ALU_Mmux_res716 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"8040080420100201"
    )
    port map (
      ADR3 => reg_data1_out(3),
      ADR4 => reg_data1_out(5),
      ADR1 => reg_data1_out(6),
      ADR5 => alu_op2(6),
      ADR0 => alu_op2(3),
      ADR2 => alu_op2(5),
      O => NODE_ALU_Mmux_res715_5435
    );
  NODE_ALU_Mmux_res718 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"DCDDCCDDCCDDCCDD"
    )
    port map (
      ADR0 => instr_1_IBUF_0,
      ADR1 => NODE_ALU_Mmux_res712,
      ADR2 => NODE_ALU_Mmux_res714,
      ADR3 => N124,
      ADR4 => NODE_ALU_Mmux_res716_5414,
      ADR5 => NODE_ALU_Mmux_res715_5435,
      O => NODE_ALU_Mmux_res717_5377
    );
  STATE_state_out : X_FF
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => '0'
    )
    port map (
      CE => ctrl_set_state,
      CLK => NlwBufferSignal_STATE_state_out_CLK,
      I => reg_data0(0),
      O => STATE_state_out_5159,
      RST => reset_IBUF_0,
      SET => GND
    );
  MUX_N_Mmux_bus_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"FFB800B8FFAA00AA"
    )
    port map (
      ADR1 => instr_2_IBUF_0,
      ADR4 => N118,
      ADR2 => N117_0,
      ADR0 => N116,
      ADR3 => NODE_ALU_Mmux_res717_5377,
      ADR5 => NODE_ALU_Mmux_res718_5378,
      O => reg_data0(0)
    );
  NODE_ALU_Mmux_res719 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y26",
      INIT => X"EFFFCEFFCCEF888A"
    )
    port map (
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      ADR3 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      ADR0 => alu_op2(6),
      ADR5 => alu_op2(7),
      ADR4 => NODE_ALU_op1_7_op2_7_LessThan_4_o2_5407,
      O => NODE_ALU_Mmux_res718_5378
    );
  N384_N384_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N385,
      O => N385_0
    );
  N384_N384_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_10_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_10_0
    );
  N384_N384_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N73,
      O => N73_0
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"05AF55FF05AF55FF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR3 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N384
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"05AF00AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR2 => s_in_2_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR3 => e_in_2_IBUF_0,
      O => N385
    );
  CONTROL_disable_mask_OR_1_o1_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"FFFFFFFF0F0F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => instr_23_IBUF_0,
      ADR4 => instr_22_IBUF_0,
      ADR2 => STATE_state_out_5159,
      O => CONTROL_disable_mask_OR_1_o1_5410
    );
  NODE_REG_adr1_3_Decoder_18_OUT_2_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"0000040400000404"
    )
    port map (
      ADR3 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_2_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_10_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"00004040"
    )
    port map (
      ADR3 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_10_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"0A5F5F5F0A5F5F5F"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N72
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y27",
      INIT => X"0A5F0A0A"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR3 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_0_IBUF_0,
      O => N73
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => X"0050005050550050"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_0,
      ADR4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_0,
      ADR5 => alu_op2(4),
      ADR3 => alu_op2(5),
      O => N64
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o2 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => X"2B0A0A0AAF2BAF0A"
    )
    port map (
      ADR1 => reg_data1_out(0),
      ADR5 => reg_data1_out(1),
      ADR2 => reg_data1_out(2),
      ADR4 => alu_op2(0),
      ADR3 => alu_op2(1),
      ADR0 => alu_op2(2),
      O => NODE_ALU_op1_7_op2_7_LessThan_4_o1_5437
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => X"3220377F3330333F"
    )
    port map (
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_3_0,
      ADR2 => alu_op2(3),
      ADR4 => N63,
      ADR1 => N64,
      ADR3 => NODE_ALU_op1_7_op2_7_LessThan_4_o1_5437,
      O => NODE_ALU_op1_7_op2_7_LessThan_4_o2_5407
    );
  NODE_REG_adr3_3_Decoder_52_OUT_2_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y28",
      INIT => X"0000000F00000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => instr_6_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR5 => instr_4_IBUF_0,
      ADR3 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_2_Q
    );
  MUX_N_Mmux_bus_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"BBBBF0BB8888F088"
    )
    port map (
      ADR2 => n_in_5_IBUF_0,
      ADR3 => instr_21_IBUF_0,
      ADR0 => NODE_S_REG_tmp_s_new(5),
      ADR1 => ctrl_s_swap,
      ADR4 => CONTROL_disable_mask_OR_1_o,
      ADR5 => alu_res_5_0,
      O => reg_data0(5)
    );
  NODE_REG_REGS_1_5 : X_FF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_5_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q,
      O => NODE_REG_REGS_1(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"A0FFAFFFA300A300"
    )
    port map (
      ADR1 => N222,
      ADR0 => w_in_5_IBUF_0,
      ADR4 => N223_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_5_Q
    );
  MUX_N_Mmux_bus_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"DFCF8ACFD5C080C0"
    )
    port map (
      ADR4 => n_in_4_IBUF_0,
      ADR3 => instr_21_IBUF_0,
      ADR1 => NODE_S_REG_tmp_s_new(4),
      ADR2 => ctrl_s_swap,
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR5 => alu_res_4_0,
      O => reg_data0(4)
    );
  NODE_REG_REGS_1_4 : X_FF
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_4_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q,
      O => NODE_REG_REGS_1(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y29",
      INIT => X"B3F78080B3F7C4C4"
    )
    port map (
      ADR5 => N270,
      ADR2 => w_in_4_IBUF_0,
      ADR3 => N271_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR1 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_4_Q
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"F7D5E6C4B391A280"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_14(0),
      ADR2 => NODE_REG_REGS_15(0),
      ADR3 => NODE_REG_REGS_13(0),
      ADR4 => NODE_REG_REGS_12(0),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_5438
    );
  NODE_ALU_Mmux_res1_rs_lut_0_Q : X_LUT6
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"CEC4313B313BCEC4"
    )
    port map (
      ADR0 => N114,
      ADR3 => instr_3_IBUF_0,
      ADR4 => instr_0_IBUF_0,
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR1 => reg_data2_out(0),
      ADR5 => reg_data1_out(0),
      O => NODE_ALU_Mmux_res1_rs_lut(0)
    );
  MUX_ALU_Mmux_bus_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"FFFFFFEF00000020"
    )
    port map (
      ADR0 => instr_3_IBUF_0,
      ADR2 => instr_19_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR4 => instr_21_IBUF_0,
      ADR3 => CONTROL_disable_mask_OR_1_o1_5410,
      ADR5 => reg_data2_out(0),
      O => alu_op2(0)
    );
  NODE_REG_Mmux_data2_out11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y30",
      INIT => X"5155510040554000"
    )
    port map (
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR3 => instr_10_IBUF_0,
      ADR1 => instr_9_IBUF_0,
      ADR2 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_5438,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_5_5400,
      ADR4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_0_5292,
      O => reg_data2_out(0)
    );
  ctrl_reg_write_0_ctrl_reg_write_0_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N40_pack_3,
      O => N40
    );
  CONTROL_Mmux_reg_write11 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"00000000B0BB3033"
    )
    port map (
      ADR3 => instr_22_IBUF_0,
      ADR2 => STATE_state_out_5159,
      ADR5 => instr_23_IBUF_0,
      ADR4 => instr_20_IBUF_0,
      ADR0 => instr_19_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      O => ctrl_reg_write(0)
    );
  NODE_REG_n0514_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"FFBBFFFFFFBBFFFF"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR4 => instr_15_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      ADR5 => '1',
      O => N38
    );
  NODE_REG_n0492_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"FFFFFF77"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_18_IBUF_0,
      ADR4 => instr_15_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      O => N40_pack_3
    );
  NODE_REG_n0514_inv : X_LUT6
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"2266226622662066"
    )
    port map (
      ADR0 => ctrl_reg_write(1),
      ADR1 => ctrl_reg_write(0),
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR5 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => N38,
      O => NODE_REG_n0514_inv_5102
    );
  NODE_REG_n0492_inv : X_LUT6
    generic map(
      LOC => "SLICE_X13Y31",
      INIT => X"0F0F0F0D50505050"
    )
    port map (
      ADR5 => ctrl_reg_write(1),
      ADR2 => ctrl_reg_write(0),
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_6_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR0 => N40,
      O => NODE_REG_n0492_inv_5100
    );
  NODE_REG_REGS_6_7_NODE_REG_REGS_6_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N328,
      O => N328_0
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y15"
    )
    port map (
      IA => N499,
      IB => N500,
      O => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_6_Q
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"F7B3F7F7C4808080"
    )
    port map (
      ADR5 => reg_data0(7),
      ADR1 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_6_Q,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_6_Q,
      ADR2 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N499
    );
  NODE_REG_REGS_6_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0492_inv_5100,
      CLK => NlwBufferSignal_NODE_REG_REGS_6_7_CLK,
      I => NODE_REG_REGS_6_7_REGS_6_7_mux_112_OUT_7_Q,
      O => NODE_REG_REGS_6(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_6_7_REGS_6_7_mux_112_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"FF00FF00FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR3 => w_in_7_IBUF_0,
      O => N500
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"1B1B5F5F1B1B5F5F"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR2 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N327
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y15",
      INIT => X"1B1B0A0A"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR2 => e_in_3_IBUF_0,
      O => N328
    );
  NODE_REG_REGS_7_7_NODE_REG_REGS_7_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N48,
      O => N48_0
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y16"
    )
    port map (
      IA => N501,
      IB => N502,
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_7_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"E2FFE200F3FFC000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR3 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR2 => e_in_7_IBUF_0,
      ADR0 => s_in_7_IBUF_0,
      O => N501
    );
  NODE_REG_REGS_7_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_7_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_7_Q,
      O => NODE_REG_REGS_7(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR0 => w_in_7_IBUF_0,
      O => N502
    );
  NODE_REG_n0470_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"F7F7FFFFF7F7FFFF"
    )
    port map (
      ADR3 => '1',
      ADR4 => instr_15_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      ADR2 => instr_18_IBUF_0,
      ADR5 => '1',
      O => N46
    );
  NODE_REG_n0382_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"20200000"
    )
    port map (
      ADR3 => '1',
      ADR4 => instr_15_IBUF_0,
      ADR0 => instr_16_IBUF_0,
      ADR1 => instr_17_IBUF_0,
      ADR2 => instr_18_IBUF_0,
      O => N48
    );
  NODE_REG_n0470_inv : X_LUT6
    generic map(
      LOC => "SLICE_X14Y16",
      INIT => X"333233330000CCCC"
    )
    port map (
      ADR5 => ctrl_reg_write(1),
      ADR1 => ctrl_reg_write(0),
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR4 => N46,
      O => NODE_REG_n0470_inv_4941
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_4_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_3091,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_3099,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f74,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_3107,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_3115,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f74,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FF0FF000ACACACAC"
    )
    port map (
      ADR5 => instr_16_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR4 => NODE_REG_REGS_2(4),
      ADR3 => NODE_REG_REGS_3(4),
      ADR0 => NODE_REG_REGS_1(4),
      ADR1 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_64_3091
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FF0FF000ACACACAC"
    )
    port map (
      ADR5 => instr_16_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR4 => NODE_REG_REGS_6(4),
      ADR3 => NODE_REG_REGS_7(4),
      ADR0 => NODE_REG_REGS_5(4),
      ADR1 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_59_3099
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"FCFCEE223030EE22"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_10(4),
      ADR5 => NODE_REG_REGS_11(4),
      ADR3 => NODE_REG_REGS_9(4),
      ADR0 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_58_3107
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y17",
      INIT => X"EEF544F5EEA044A0"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_14(4),
      ADR4 => NODE_REG_REGS_15(4),
      ADR2 => NODE_REG_REGS_13(4),
      ADR5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_44_3115
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74_NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y18"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_3123,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_3131,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"FDEC7564B9A83120"
    )
    port map (
      ADR0 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR2 => NODE_REG_REGS_2(4),
      ADR4 => NODE_REG_REGS_3(4),
      ADR5 => NODE_REG_REGS_1(4),
      ADR3 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_64_3123
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y18",
      INIT => X"BFB38F83BCB08C80"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_6(4),
      ADR0 => NODE_REG_REGS_7(4),
      ADR3 => NODE_REG_REGS_5(4),
      ADR5 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_59_3131
    );
  NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_Q,
      SEL => instr_14_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_3141,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_3149,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f74,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y19"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_3157,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_3165,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f74,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"FC30FC30BBBB8888"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_2(4),
      ADR3 => NODE_REG_REGS_3(4),
      ADR0 => NODE_REG_REGS_1(4),
      ADR4 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_64_3141
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"EE22EE22F3F3C0C0"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR5 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_6(4),
      ADR3 => NODE_REG_REGS_7(4),
      ADR0 => NODE_REG_REGS_5(4),
      ADR4 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_59_3149
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"FBD9EAC873516240"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR0 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_10(4),
      ADR5 => NODE_REG_REGS_11(4),
      ADR3 => NODE_REG_REGS_9(4),
      ADR4 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_58_3157
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y19",
      INIT => X"DDF588F5DDA088A0"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_14(4),
      ADR1 => NODE_REG_REGS_15(4),
      ADR4 => NODE_REG_REGS_13(4),
      ADR5 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_44_3165
    );
  NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_Q,
      SEL => instr_14_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_3175,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_3183,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f75,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y20"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_3191,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_3199,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f75,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"B8FFB8CCB833B800"
    )
    port map (
      ADR3 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_2(5),
      ADR0 => NODE_REG_REGS_3(5),
      ADR5 => NODE_REG_REGS_1(5),
      ADR4 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_65_3175
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"E2E2E2E2FFCC3300"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR0 => NODE_REG_REGS_6(5),
      ADR2 => NODE_REG_REGS_7(5),
      ADR4 => NODE_REG_REGS_5(5),
      ADR3 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_511_3183
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"FFCCE2E23300E2E2"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_10(5),
      ADR5 => NODE_REG_REGS_11(5),
      ADR3 => NODE_REG_REGS_9(5),
      ADR0 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_510_3191
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y20",
      INIT => X"FCFC3030EE22EE22"
    )
    port map (
      ADR5 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_14(5),
      ADR4 => NODE_REG_REGS_15(5),
      ADR3 => NODE_REG_REGS_13(5),
      ADR0 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_45_3199
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_5_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_3209,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_3217,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f75,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_3225,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_3233,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f75,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"CFAFC0AFCFA0C0A0"
    )
    port map (
      ADR2 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR0 => NODE_REG_REGS_2(5),
      ADR1 => NODE_REG_REGS_3(5),
      ADR4 => NODE_REG_REGS_1(5),
      ADR5 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_65_3209
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"EE44FAFAEE445050"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR0 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_6(5),
      ADR3 => NODE_REG_REGS_7(5),
      ADR5 => NODE_REG_REGS_5(5),
      ADR2 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_511_3217
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"FCFC3030BB88BB88"
    )
    port map (
      ADR1 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR0 => NODE_REG_REGS_10(5),
      ADR4 => NODE_REG_REGS_11(5),
      ADR2 => NODE_REG_REGS_9(5),
      ADR3 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_510_3225
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y21",
      INIT => X"EEEE2222F3C0F3C0"
    )
    port map (
      ADR1 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR2 => NODE_REG_REGS_14(5),
      ADR4 => NODE_REG_REGS_15(5),
      ADR0 => NODE_REG_REGS_13(5),
      ADR3 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_45_3233
    );
  NODE_REG_REGS_0_7_NODE_REG_REGS_0_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N319,
      O => N319_0
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y22"
    )
    port map (
      IA => N519,
      IB => N520,
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_0_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => X"F5B1E4A0FFFF0000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR5 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR2 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N519
    );
  NODE_REG_REGS_0_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_7_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_7_Q,
      O => NODE_REG_REGS_0(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => X"F0F0F0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N520
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => X"55550FFF55550FFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR0 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N318
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => X"555500F0"
    )
    port map (
      ADR1 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR3 => s_in_3_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR0 => e_in_3_IBUF_0,
      O => N319
    );
  NODE_REG_n0624_inv1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y22",
      INIT => X"0F0FF0F00000F0E0"
    )
    port map (
      ADR4 => ctrl_reg_write(0),
      ADR2 => ctrl_reg_write(1),
      ADR5 => NODE_REG_adr0_3_Decoder_70_OUT_0_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      O => NODE_REG_n0624_inv
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y23"
    )
    port map (
      IA => N505,
      IB => N506,
      O => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_9_Q
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y23",
      INIT => X"DDDDF5FF8888A000"
    )
    port map (
      ADR5 => reg_data0(7),
      ADR0 => ctrl_reg_write(1),
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR1 => e_in_7_IBUF_0,
      ADR2 => s_in_7_IBUF_0,
      O => N505
    );
  NODE_REG_REGS_9_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y23",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0426_inv_4836,
      CLK => NlwBufferSignal_NODE_REG_REGS_9_7_CLK,
      I => NODE_REG_REGS_9_7_REGS_9_7_mux_109_OUT_7_Q,
      O => NODE_REG_REGS_9(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_9_7_REGS_9_7_mux_109_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y23",
      INIT => X"F0F0F0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N506
    );
  NODE_ALU_Mmux_res723_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y23",
      INIT => X"FFFFFFFFFE54FF55"
    )
    port map (
      ADR0 => instr_21_IBUF_0,
      ADR4 => instr_20_IBUF_0,
      ADR1 => instr_19_IBUF_0,
      ADR2 => NODE_S_REG_tmp_s_new(1),
      ADR3 => n_in_1_IBUF_0,
      ADR5 => CONTROL_disable_mask_OR_1_o,
      O => N481
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y23",
      INIT => X"BFBCB3B08F8C8380"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_10(7),
      ADR0 => NODE_REG_REGS_11(7),
      ADR4 => NODE_REG_REGS_9(7),
      ADR3 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_514_5394
    );
  NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y24"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_Q,
      SEL => instr_14_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y24"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_3305,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_3313,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f77,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y24"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_3321,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_3329,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f77,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"FFCAF0CA0FCA00CA"
    )
    port map (
      ADR3 => instr_12_IBUF_0,
      ADR2 => instr_11_IBUF_0,
      ADR4 => NODE_REG_REGS_2(7),
      ADR5 => NODE_REG_REGS_3(7),
      ADR1 => NODE_REG_REGS_1(7),
      ADR0 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_67_3305
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"DDDD8888F5A0F5A0"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR5 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_6(7),
      ADR1 => NODE_REG_REGS_7(7),
      ADR4 => NODE_REG_REGS_5(7),
      ADR3 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_515_3313
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"EE22EE22F3F3C0C0"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR5 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_10(7),
      ADR3 => NODE_REG_REGS_11(7),
      ADR0 => NODE_REG_REGS_9(7),
      ADR4 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_514_3321
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y24",
      INIT => X"FF33CC00B8B8B8B8"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR5 => instr_11_IBUF_0,
      ADR0 => NODE_REG_REGS_14(7),
      ADR3 => NODE_REG_REGS_15(7),
      ADR4 => NODE_REG_REGS_13(7),
      ADR2 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_47_3329
    );
  NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_2_f8_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77,
      O => NODE_REG_adr0_3_REGS_15_7_wide_mux_136_OUT_7_Q,
      SEL => instr_18_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_3339,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_3347,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_4_f77,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_3355,
      IB => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_3363,
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_3_f77,
      SEL => instr_17_IBUF_0
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => X"FFCC00CCAAF0AAF0"
    )
    port map (
      ADR5 => instr_16_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR1 => NODE_REG_REGS_2(7),
      ADR4 => NODE_REG_REGS_3(7),
      ADR0 => NODE_REG_REGS_1(7),
      ADR2 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_67_3339
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => X"FFACF0AC0FAC00AC"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR2 => instr_15_IBUF_0,
      ADR4 => NODE_REG_REGS_6(7),
      ADR5 => NODE_REG_REGS_7(7),
      ADR0 => NODE_REG_REGS_5(7),
      ADR1 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_515_3347
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => X"EEFCEE3022FC2230"
    )
    port map (
      ADR3 => instr_16_IBUF_0,
      ADR1 => instr_15_IBUF_0,
      ADR0 => NODE_REG_REGS_10(7),
      ADR5 => NODE_REG_REGS_11(7),
      ADR4 => NODE_REG_REGS_9(7),
      ADR2 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_514_3355
    );
  NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y25",
      INIT => X"CCCCFF00AAAAF0F0"
    )
    port map (
      ADR4 => instr_16_IBUF_0,
      ADR5 => instr_15_IBUF_0,
      ADR0 => NODE_REG_REGS_14(7),
      ADR1 => NODE_REG_REGS_15(7),
      ADR3 => NODE_REG_REGS_13(7),
      ADR2 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr0_3_REGS_15_7_wide_mux_136_OUT_47_3363
    );
  MUX_ALU_Mmux_bus_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"F0F0F0F0F0F0F0B8"
    )
    port map (
      ADR0 => instr_7_IBUF_0,
      ADR1 => instr_19_IBUF_0,
      ADR3 => instr_20_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR4 => CONTROL_disable_mask_OR_1_o1_5410,
      ADR2 => reg_data2_out(4),
      O => alu_op2(4)
    );
  NODE_ALU_op1_7_op2_7_LessThan_4_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"0000DD445555DDDD"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR3 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_0,
      ADR1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_0,
      ADR0 => alu_op2(5),
      ADR5 => alu_op2(4),
      O => N63
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"FFAC0FACF0AC00AC"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR3 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_10(4),
      ADR4 => NODE_REG_REGS_11(4),
      ADR5 => NODE_REG_REGS_9(4),
      ADR1 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_5442
    );
  NODE_REG_Mmux_data2_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y26",
      INIT => X"0F070D050A020800"
    )
    port map (
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR0 => instr_10_IBUF_0,
      ADR1 => instr_9_IBUF_0,
      ADR3 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_5383,
      ADR4 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_58_5442,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f74_0,
      O => reg_data2_out(4)
    );
  NODE_REG_adr1_3_Decoder_18_OUT_1_NODE_REG_adr1_3_Decoder_18_OUT_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N480,
      O => N480_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_1_NODE_REG_adr1_3_Decoder_18_OUT_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_9_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_9_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_1_NODE_REG_adr1_3_Decoder_18_OUT_1_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N67,
      O => N67_0
    );
  NODE_ALU_Mmux_res723_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y27"
    )
    port map (
      IA => N485,
      IB => N486,
      O => N480,
      SEL => ctrl_s_swap
    );
  NODE_ALU_Mmux_res723_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"5500772200003333"
    )
    port map (
      ADR2 => '1',
      ADR1 => instr_2_IBUF_0,
      ADR4 => instr_1_IBUF_0,
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR5 => instr_21_IBUF_0,
      ADR3 => n_in_1_IBUF_0,
      O => N485
    );
  NODE_ALU_Mmux_res723_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"CACCCACACCCCCCCC"
    )
    port map (
      ADR1 => NODE_S_REG_tmp_s_new(1),
      ADR4 => instr_22_IBUF_0,
      ADR3 => STATE_state_out_5159,
      ADR2 => instr_23_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR0 => n_in_1_IBUF_0,
      O => N486
    );
  NODE_REG_adr1_3_Decoder_18_OUT_1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"0101000001010000"
    )
    port map (
      ADR3 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_1_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_9_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"10100000"
    )
    port map (
      ADR3 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR0 => instr_13_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_9_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"550F55FF550F55FF"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR0 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N66
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y27",
      INIT => X"550F5500"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR0 => e_in_0_IBUF_0,
      O => N67
    );
  reg_data1_out_5_reg_data1_out_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_res(4),
      O => alu_res_4_0
    );
  reg_data1_out_5_reg_data1_out_5_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N379,
      O => N379_0
    );
  NODE_ALU_Mmux_res753 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y28"
    )
    port map (
      IA => N557,
      IB => N558,
      O => alu_res(4),
      SEL => instr_2_IBUF_0
    );
  NODE_ALU_Mmux_res753_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"80FF80FF80008000"
    )
    port map (
      ADR4 => '1',
      ADR3 => instr_1_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR1 => alu_op2(4),
      ADR0 => reg_data1_out(4),
      ADR5 => NODE_ALU_Mmux_res1_split_4_0,
      O => N557
    );
  NODE_ALU_Mmux_res753_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"F5A5F4A455055404"
    )
    port map (
      ADR0 => instr_0_IBUF_0,
      ADR2 => instr_1_IBUF_0,
      ADR1 => alu_op2(4),
      ADR4 => reg_data1_out(4),
      ADR3 => reg_data1_out(3),
      ADR5 => reg_data1_out(5),
      O => N558
    );
  NODE_REG_Mmux_data1_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"F0F0F0F0F0F0E0E0"
    )
    port map (
      ADR3 => '1',
      ADR5 => instr_13_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR4 => instr_12_IBUF_0,
      ADR0 => instr_14_IBUF_0,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_5_0,
      O => reg_data1_out(5)
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"1155BBFF1155BBFF"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR4 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N378
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y28",
      INIT => X"0044AAEE"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => s_in_2_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR4 => e_in_2_IBUF_0,
      O => N379
    );
  reg_data1_out_4_reg_data1_out_4_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_res(3),
      O => alu_res_3_0
    );
  reg_data1_out_4_reg_data1_out_4_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N376,
      O => N376_0
    );
  NODE_ALU_Mmux_res743 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y29"
    )
    port map (
      IA => N555,
      IB => N556,
      O => alu_res(3),
      SEL => instr_2_IBUF_0
    );
  NODE_ALU_Mmux_res743_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"F333C00033330000"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_1_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR3 => alu_op2(3),
      ADR5 => reg_data1_out(3),
      ADR4 => NODE_ALU_Mmux_res1_split_3_0,
      O => N555
    );
  NODE_ALU_Mmux_res743_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"FCFC0F0A0C0C0F0A"
    )
    port map (
      ADR2 => instr_0_IBUF_0,
      ADR4 => instr_1_IBUF_0,
      ADR3 => alu_op2(3),
      ADR0 => reg_data1_out(3),
      ADR1 => reg_data1_out(2),
      ADR5 => reg_data1_out(4),
      O => N556
    );
  NODE_REG_Mmux_data1_out51 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"FFFF0000FFEE0000"
    )
    port map (
      ADR2 => '1',
      ADR3 => instr_13_IBUF_0,
      ADR0 => instr_11_IBUF_0,
      ADR1 => instr_12_IBUF_0,
      ADR5 => instr_14_IBUF_0,
      ADR4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_4_0,
      O => reg_data1_out(4)
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"4477777744777777"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR4 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR0 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N375
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y29",
      INIT => X"44447744"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR4 => s_in_2_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR0 => e_in_2_IBUF_0,
      O => N376
    );
  NODE_REG_REGS_10_7_NODE_REG_REGS_10_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_10_pack_8,
      O => NODE_REG_adr2_3_Decoder_35_OUT_10_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y30"
    )
    port map (
      IA => N509,
      IB => N510,
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_10_Q
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"F5E4B1A0FF00FF00"
    )
    port map (
      ADR3 => reg_data0(7),
      ADR5 => ctrl_reg_write(1),
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR2 => e_in_7_IBUF_0,
      ADR4 => s_in_7_IBUF_0,
      O => N509
    );
  NODE_REG_REGS_10_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_7_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_7_Q,
      O => NODE_REG_REGS_10(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"AAAAF0F0AAAAF0F0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(7),
      ADR0 => w_in_7_IBUF_0,
      O => N510
    );
  NODE_REG_adr2_3_Decoder_35_OUT_2_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"0000000C0000000C"
    )
    port map (
      ADR0 => '1',
      ADR3 => instr_10_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR1 => instr_8_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_2_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_10_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"00000C00"
    )
    port map (
      ADR0 => '1',
      ADR3 => instr_10_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR1 => instr_8_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_10_pack_8
    );
  NODE_REG_n0404_inv : X_LUT6
    generic map(
      LOC => "SLICE_X14Y30",
      INIT => X"0FA00FA00FA00EA0"
    )
    port map (
      ADR2 => ctrl_reg_write(0),
      ADR3 => ctrl_reg_write(1),
      ADR0 => N52_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      O => NODE_REG_n0404_inv_5098
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y31"
    )
    port map (
      IA => N529,
      IB => N530,
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42_F : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"FF3FF737C808C000"
    )
    port map (
      ADR5 => reg_data0(1),
      ADR1 => ctrl_reg_write(1),
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR3 => e_in_1_IBUF_0,
      ADR4 => s_in_1_IBUF_0,
      O => N529
    );
  NODE_REG_REGS_5_1 : X_FF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_1_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_1_Q,
      O => NODE_REG_REGS_5(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT42_G : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"FFFF3333CCCC0000"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(1),
      ADR4 => w_in_1_IBUF_0,
      O => N530
    );
  NODE_REG_REGS_5_2 : X_FF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_2_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q,
      O => NODE_REG_REGS_5(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"BFA01F00BFF01F50"
    )
    port map (
      ADR5 => N378,
      ADR4 => w_in_2_IBUF_0,
      ADR1 => N379_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(2),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_2_Q
    );
  NODE_REG_REGS_5_0 : X_FF
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_0_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q,
      O => NODE_REG_REGS_5(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT22 : X_LUT6
    generic map(
      LOC => "SLICE_X14Y31",
      INIT => X"C0FFF3FFD100D100"
    )
    port map (
      ADR0 => N78,
      ADR2 => w_in_0_IBUF_0,
      ADR4 => N79_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_5_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(0),
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_0_Q
    );
  N192_N192_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N193,
      O => N193_0
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => X"335F335F335F335F"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N192
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y16",
      INIT => X"33503350"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR1 => e_in_6_IBUF_0,
      O => N193
    );
  NODE_REG_REGS_7_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_6_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q,
      O => NODE_REG_REGS_7(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"F0F03355FF00FF00"
    )
    port map (
      ADR0 => N192,
      ADR2 => w_in_6_IBUF_0,
      ADR1 => N193_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(6),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_6_Q
    );
  NODE_REG_REGS_7_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_5_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q,
      O => NODE_REG_REGS_7(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"AFBBFF000511FF00"
    )
    port map (
      ADR1 => N240,
      ADR5 => w_in_5_IBUF_0,
      ADR2 => N241_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR4 => ctrl_reg_write(1),
      ADR3 => reg_data0(5),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_5_Q
    );
  NODE_REG_REGS_7_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_4_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q,
      O => NODE_REG_REGS_7(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"8F8F80B0BFBF80B0"
    )
    port map (
      ADR3 => N288,
      ADR0 => w_in_4_IBUF_0,
      ADR5 => N289_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_4_Q
    );
  NODE_REG_REGS_7_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0470_inv_4941,
      CLK => NlwBufferSignal_NODE_REG_REGS_7_3_CLK,
      I => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q,
      O => NODE_REG_REGS_7(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y17",
      INIT => X"BA10F0F0BF15F0F0"
    )
    port map (
      ADR5 => N336,
      ADR3 => w_in_3_IBUF_0,
      ADR1 => N337_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_7_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_7_7_REGS_7_7_mux_111_OUT_3_Q
    );
  NODE_REG_REGS_4_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_6_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q,
      O => NODE_REG_REGS_4(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"D5D580A2F7F780A2"
    )
    port map (
      ADR3 => N183,
      ADR2 => w_in_6_IBUF_0,
      ADR5 => N184_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_6_Q
    );
  NODE_REG_REGS_4_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_5_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q,
      O => NODE_REG_REGS_4(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"BB33BBFF880C880C"
    )
    port map (
      ADR2 => N231,
      ADR0 => w_in_5_IBUF_0,
      ADR4 => N232_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR1 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_5_Q
    );
  NODE_REG_REGS_4_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_4_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q,
      O => NODE_REG_REGS_4(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"CCFFCC000FFF5500"
    )
    port map (
      ADR0 => N279,
      ADR1 => w_in_4_IBUF_0,
      ADR2 => N280_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_4_Q
    );
  NODE_REG_REGS_4_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0536_inv_5045,
      CLK => NlwBufferSignal_NODE_REG_REGS_4_3_CLK,
      I => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q,
      O => NODE_REG_REGS_4(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y18",
      INIT => X"B1FFA000B1FFF500"
    )
    port map (
      ADR5 => N327,
      ADR2 => w_in_3_IBUF_0,
      ADR1 => N328_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_4_Q,
      ADR3 => ctrl_reg_write(1),
      ADR4 => reg_data0(3),
      O => NODE_REG_REGS_4_7_REGS_4_7_mux_114_OUT_3_Q
    );
  NODE_S_REG_tmp_s_out_3_NODE_S_REG_tmp_s_out_3_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N241,
      O => N241_0
    );
  NODE_S_REG_tmp_s_out_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_3_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_3_IN,
      O => NODE_S_REG_tmp_s_out(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_out_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_2_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_2_IN,
      O => NODE_S_REG_tmp_s_out(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_out_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_1_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_1_IN,
      O => NODE_S_REG_tmp_s_out(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_out_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_0_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_0_IN,
      O => NODE_S_REG_tmp_s_out(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"1D1D3F3F1D1D3F3F"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR2 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N240
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y20",
      INIT => X"1D1D0C0C"
    )
    port map (
      ADR3 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR2 => e_in_5_IBUF_0,
      O => N241
    );
  N228_N228_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N229,
      O => N229_0
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"11BB55FF11BB55FF"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR3 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N228
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y21",
      INIT => X"11BB00AA"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR3 => e_in_5_IBUF_0,
      O => N229
    );
  NODE_REG_REGS_3_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_6_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q,
      O => NODE_REG_REGS_3(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"F011AAAAF0BBAAAA"
    )
    port map (
      ADR1 => N177,
      ADR2 => w_in_6_IBUF_0,
      ADR5 => N178_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR4 => ctrl_reg_write(1),
      ADR0 => reg_data0(6),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_6_Q
    );
  NODE_REG_REGS_3_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_5_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q,
      O => NODE_REG_REGS_3(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"FF555F5FAA002222"
    )
    port map (
      ADR1 => N225,
      ADR3 => w_in_5_IBUF_0,
      ADR2 => N226_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR0 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_5_Q
    );
  NODE_REG_REGS_3_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_4_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q,
      O => NODE_REG_REGS_3(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"FF3FF0500F3F0050"
    )
    port map (
      ADR0 => N273,
      ADR5 => w_in_4_IBUF_0,
      ADR1 => N274_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_4_Q
    );
  NODE_REG_REGS_3_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_3_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q,
      O => NODE_REG_REGS_3(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y22",
      INIT => X"FF5FF0300F5F0030"
    )
    port map (
      ADR1 => N321,
      ADR5 => w_in_3_IBUF_0,
      ADR0 => N322_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(3),
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_3_Q
    );
  N204_N204_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N205,
      O => N205_0
    );
  N204_N204_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N253,
      O => N253_0
    );
  N204_N204_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N358,
      O => N358_0
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N204
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"00FF3030"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR3 => e_in_6_IBUF_0,
      O => N205
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"030FF3FF030FF3FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR4 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N252
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"000CF0FC"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_10_Q,
      ADR3 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_10_0,
      ADR4 => e_in_5_IBUF_0,
      O => N253
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"0F550FFF0F550FFF"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR2 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N357
    );
  NODE_REG_Mmux_REGS_13_7_REGS_13_7_mux_105_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y23",
      INIT => X"0F550F00"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_13_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_13_0,
      ADR2 => e_in_3_IBUF_0,
      O => N358
    );
  NODE_REG_REGS_10_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_6_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q,
      O => NODE_REG_REGS_10(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => X"FF0FF0003F3F5050"
    )
    port map (
      ADR0 => N204,
      ADR3 => w_in_6_IBUF_0,
      ADR1 => N205_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_6_Q
    );
  NODE_REG_REGS_10_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_5_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q,
      O => NODE_REG_REGS_10(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => X"AAFF33FFAA000F00"
    )
    port map (
      ADR2 => N252,
      ADR0 => w_in_5_IBUF_0,
      ADR1 => N253_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_5_Q
    );
  NODE_REG_REGS_10_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_4_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q,
      O => NODE_REG_REGS_10(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => X"8B8B88BBFFFF0000"
    )
    port map (
      ADR3 => N300,
      ADR0 => w_in_4_IBUF_0,
      ADR2 => N301_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_4_Q
    );
  NODE_REG_REGS_10_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0404_inv_5098,
      CLK => NlwBufferSignal_NODE_REG_REGS_10_3_CLK,
      I => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q,
      O => NODE_REG_REGS_10(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_10_7_REGS_10_7_mux_108_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y24",
      INIT => X"A0AFA3A3FFFF0000"
    )
    port map (
      ADR1 => N348,
      ADR0 => w_in_3_IBUF_0,
      ADR3 => N349_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_10_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(3),
      O => NODE_REG_REGS_10_7_REGS_10_7_mux_108_OUT_3_Q
    );
  NODE_S_REG_tmp_s_new_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_3_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_3_IN,
      O => NODE_S_REG_tmp_s_new(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_new_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_2_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_2_IN,
      O => NODE_S_REG_tmp_s_new(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_new_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_1_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_1_IN,
      O => NODE_S_REG_tmp_s_new(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_new_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y25",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_0_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_0_IN,
      O => NODE_S_REG_tmp_s_new(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  N321_N321_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N322,
      O => N322_0
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => X"030FF3FF030FF3FF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR4 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N321
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => X"0300F3F0"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR1 => s_in_3_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR4 => e_in_3_IBUF_0,
      O => N322
    );
  NODE_ALU_Mmux_res714_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y26",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR5 => '1',
      ADR3 => instr_2_IBUF_0,
      ADR4 => NODE_ALU_Mmux_res1_split_0_0,
      O => N124
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_NODE_REG_adr1_3_Decoder_18_OUT_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_15_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_15_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_NODE_REG_adr1_3_Decoder_18_OUT_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N85,
      O => N85_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_NODE_REG_adr1_3_Decoder_18_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_13_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_13_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_NODE_REG_adr1_3_Decoder_18_OUT_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N79,
      O => N79_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_7_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"0C0000000C000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR3 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_7_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_15_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"C0000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instr_14_IBUF_0,
      ADR3 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR4 => instr_13_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_15_Q
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"1133DDFF1133DDFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR4 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N84
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"1100DDCC"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR0 => s_in_0_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR4 => e_in_0_IBUF_0,
      O => N85
    );
  NODE_REG_adr1_3_Decoder_18_OUT_5_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"000C0000000C0000"
    )
    port map (
      ADR0 => '1',
      ADR4 => instr_11_IBUF_0,
      ADR1 => instr_13_IBUF_0,
      ADR2 => instr_14_IBUF_0,
      ADR3 => instr_12_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_5_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_13_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"00C00000"
    )
    port map (
      ADR0 => '1',
      ADR4 => instr_11_IBUF_0,
      ADR1 => instr_13_IBUF_0,
      ADR2 => instr_14_IBUF_0,
      ADR3 => instr_12_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_13_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"05AF55FF05AF55FF"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR3 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => N78
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT21_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y27",
      INIT => X"05AF00AA"
    )
    port map (
      ADR1 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR2 => s_in_0_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR3 => e_in_0_IBUF_0,
      O => N79
    );
  NODE_REG_adr1_3_Decoder_18_OUT_0_NODE_REG_adr1_3_Decoder_18_OUT_0_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_Decoder_18_OUT_8_Q,
      O => NODE_REG_adr1_3_Decoder_18_OUT_8_0
    );
  NODE_REG_adr1_3_Decoder_18_OUT_0_NODE_REG_adr1_3_Decoder_18_OUT_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_9_pack_1,
      O => NODE_REG_adr2_3_Decoder_35_OUT_9_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_0_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"0000000300000003"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_14_IBUF_0,
      ADR4 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => instr_13_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr1_3_Decoder_18_OUT_0_Q
    );
  NODE_REG_adr1_3_Decoder_18_OUT_8_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"0000000C"
    )
    port map (
      ADR0 => '1',
      ADR1 => instr_14_IBUF_0,
      ADR4 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => instr_13_IBUF_0,
      O => NODE_REG_adr1_3_Decoder_18_OUT_8_Q
    );
  NODE_ALU_Mmux_res78_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"FFFFFFFFF3F7FBFF"
    )
    port map (
      ADR1 => instr_2_IBUF_0,
      ADR0 => instr_1_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR5 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      ADR3 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      O => N58
    );
  NODE_REG_adr2_3_Decoder_35_OUT_1_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"0000005000000050"
    )
    port map (
      ADR1 => '1',
      ADR4 => instr_10_IBUF_0,
      ADR0 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_1_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_9_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"00500000"
    )
    port map (
      ADR1 => '1',
      ADR4 => instr_10_IBUF_0,
      ADR0 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_9_pack_1
    );
  NODE_REG_n0426_inv : X_LUT6
    generic map(
      LOC => "SLICE_X15Y28",
      INIT => X"0000CCCCFFFE0000"
    )
    port map (
      ADR5 => ctrl_reg_write(0),
      ADR4 => ctrl_reg_write(1),
      ADR1 => N44_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_9_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_9_Q,
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_9_Q,
      O => NODE_REG_n0426_inv_4836
    );
  MUX_N_Mmux_bus_out41 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"AFAACFCCA0AAC0CC"
    )
    port map (
      ADR5 => n_in_3_IBUF_0,
      ADR3 => instr_21_IBUF_0,
      ADR0 => NODE_S_REG_tmp_s_new(3),
      ADR4 => ctrl_s_swap,
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR1 => alu_res_3_0,
      O => reg_data0(3)
    );
  NODE_REG_REGS_1_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_3_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q,
      O => NODE_REG_REGS_1(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"D5D5F7F780A280A2"
    )
    port map (
      ADR3 => N318,
      ADR2 => w_in_3_IBUF_0,
      ADR4 => N319_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR0 => ctrl_reg_write(1),
      ADR5 => reg_data0(3),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_3_Q
    );
  MUX_N_Mmux_bus_out31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"D8FAD850CCFFCC00"
    )
    port map (
      ADR2 => n_in_2_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR1 => NODE_S_REG_tmp_s_new(2),
      ADR3 => ctrl_s_swap,
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR4 => alu_res_2_0,
      O => reg_data0(2)
    );
  NODE_REG_REGS_1_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_2_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q,
      O => NODE_REG_REGS_1(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT62 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y29",
      INIT => X"AF0FB010FF5FB010"
    )
    port map (
      ADR1 => N366,
      ADR3 => w_in_2_IBUF_0,
      ADR5 => N367_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_1_Q,
      ADR2 => ctrl_reg_write(1),
      ADR4 => reg_data0(2),
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_2_Q
    );
  N174_N174_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N175,
      O => N175_0
    );
  N174_N174_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N367,
      O => N367_0
    );
  N174_N174_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N370,
      O => N370_0
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"0F330FFF0F330FFF"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N174
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"0F330F00"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_6_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_6_IBUF_0,
      O => N175
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"0F770F770F770F77"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N366
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"0F220F22"
    )
    port map (
      ADR4 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR2 => e_in_2_IBUF_0,
      O => N367
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"335533FF335533FF"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR4 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR1 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => N369
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT61_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"330033AA"
    )
    port map (
      ADR2 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR4 => s_in_2_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR1 => e_in_2_IBUF_0,
      O => N370
    );
  NODE_ALU_Mmux_res1_rs_lut_7_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y30",
      INIT => X"00FF00FF01FD00FF"
    )
    port map (
      ADR0 => instr_10_IBUF_0,
      ADR4 => instr_19_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR2 => instr_23_IBUF_0,
      ADR5 => instr_21_IBUF_0,
      ADR3 => reg_data2_out(7),
      O => N487
    );
  NODE_COM_s_out_6_NODE_COM_s_out_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(7),
      O => NODE_COM_s_out_7_0
    );
  NODE_COM_s_out_6_NODE_COM_s_out_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(5),
      O => NODE_COM_s_out_5_0
    );
  NODE_COM_s_out_6_NODE_COM_s_out_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(3),
      O => NODE_COM_s_out_3_0
    );
  NODE_COM_s_out_6_NODE_COM_s_out_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(1),
      O => NODE_COM_s_out_1_0
    );
  NODE_COM_s_out_6 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_6_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q,
      O => NODE_COM_s_out(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"FFF000F0FFF000F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR2 => reg_data1_out(6),
      ADR4 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_6_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT81 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"CCAACCAA"
    )
    port map (
      ADR0 => reg_data1_out(7),
      ADR1 => e_in_7_IBUF_0,
      ADR3 => ctrl_com(1),
      ADR2 => '1',
      ADR4 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q
    );
  NODE_COM_s_out_7 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_7_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_7_Q,
      O => NODE_COM_s_out(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_s_out_4 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_4_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q,
      O => NODE_COM_s_out(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"AAAACCCCAAAACCCC"
    )
    port map (
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => ctrl_com(1),
      ADR1 => reg_data1_out(4),
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_4_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT61 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"F0F0FF00"
    )
    port map (
      ADR3 => reg_data1_out(5),
      ADR2 => e_in_5_IBUF_0,
      ADR4 => ctrl_com(1),
      ADR0 => '1',
      ADR1 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q
    );
  NODE_COM_s_out_5 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_5_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_5_Q,
      O => NODE_COM_s_out(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_s_out_2 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_2_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q,
      O => NODE_COM_s_out(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"CCCCF0F0CCCCF0F0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR4 => ctrl_com(1),
      ADR2 => reg_data1_out(2),
      ADR1 => e_in_2_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_2_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"FF00AAAA"
    )
    port map (
      ADR0 => reg_data1_out(3),
      ADR3 => e_in_3_IBUF_0,
      ADR4 => ctrl_com(1),
      ADR1 => '1',
      ADR2 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q
    );
  NODE_COM_s_out_3 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_3_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_3_Q,
      O => NODE_COM_s_out(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_s_out_0 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_0_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q,
      O => NODE_COM_s_out(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR2 => ctrl_com(1),
      ADR3 => reg_data1_out(0),
      ADR0 => e_in_0_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_0_Q
    );
  NODE_COM_Mmux_s_out_7_data1_7_mux_5_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => X"FCFC0C0C"
    )
    port map (
      ADR1 => reg_data1_out(1),
      ADR4 => e_in_1_IBUF_0,
      ADR2 => ctrl_com(1),
      ADR3 => '1',
      ADR0 => '1',
      O => NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q
    );
  NODE_COM_s_out_1 : X_FF
    generic map(
      LOC => "SLICE_X15Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_s_out_1_CLK,
      I => NODE_COM_s_out_7_data1_7_mux_5_OUT_1_Q,
      O => NODE_COM_s_out(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y13"
    )
    port map (
      IA => N497,
      IB => N498,
      O => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_5_Q
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"B8BBB888FFFF0000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR5 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_5_Q,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_5_Q,
      ADR0 => e_in_7_IBUF_0,
      ADR2 => s_in_7_IBUF_0,
      O => N497
    );
  NODE_REG_REGS_5_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0514_inv_5102,
      CLK => NlwBufferSignal_NODE_REG_REGS_5_7_CLK,
      I => NODE_REG_REGS_5_7_REGS_5_7_mux_113_OUT_7_Q,
      O => NODE_REG_REGS_5(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_5_7_REGS_5_7_mux_113_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y13",
      INIT => X"F0F0F0F0FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N498
    );
  NODE_S_REG_tmp_s_out_7_NODE_S_REG_tmp_s_out_7_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N352,
      O => N352_0
    );
  NODE_S_REG_tmp_s_out_7_NODE_S_REG_tmp_s_out_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N307,
      O => N307_0
    );
  NODE_S_REG_tmp_s_out_7_NODE_S_REG_tmp_s_out_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N289,
      O => N289_0
    );
  NODE_S_REG_tmp_s_out_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_7_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_7_IN,
      O => NODE_S_REG_tmp_s_out(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"0707F7F70707F7F7"
    )
    port map (
      ADR3 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR4 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N351
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"0404F4F4"
    )
    port map (
      ADR3 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR0 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR4 => e_in_3_IBUF_0,
      O => N352
    );
  NODE_S_REG_tmp_s_out_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_6_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_6_IN,
      O => NODE_S_REG_tmp_s_out(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_out_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_5_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_5_IN,
      O => NODE_S_REG_tmp_s_out(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"2277777722777777"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR4 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N306
    );
  NODE_REG_Mmux_REGS_15_7_REGS_15_7_mux_103_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"22227722"
    )
    port map (
      ADR2 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      ADR4 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => e_in_4_IBUF_0,
      O => N307
    );
  NODE_S_REG_tmp_s_out_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => '0'
    )
    port map (
      CE => step_IBUF_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_out_4_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_out_4_IN,
      O => NODE_S_REG_tmp_s_out(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"15BF15BF15BF15BF"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR3 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N288
    );
  NODE_REG_Mmux_REGS_7_7_REGS_7_7_mux_111_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y15",
      INIT => X"04AE04AE"
    )
    port map (
      ADR4 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_7_Q,
      ADR2 => s_in_4_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_7_Q,
      ADR3 => e_in_4_IBUF_0,
      O => N289
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y16",
      INIT => X"EFEC2F2CE3E02320"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR0 => NODE_REG_REGS_14(4),
      ADR4 => NODE_REG_REGS_15(4),
      ADR5 => NODE_REG_REGS_13(4),
      ADR3 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_44_5383
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_3 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_4_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_3979,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_3987,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f74,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_3 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y17"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_3995,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_4003,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f74,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"BF8FB383BC8CB080"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR4 => NODE_REG_REGS_2(4),
      ADR0 => NODE_REG_REGS_3(4),
      ADR3 => NODE_REG_REGS_1(4),
      ADR5 => NODE_REG_REGS_0(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_64_3979
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"BF8FBC8CB383B080"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_6(4),
      ADR0 => NODE_REG_REGS_7(4),
      ADR3 => NODE_REG_REGS_5(4),
      ADR4 => NODE_REG_REGS_4(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_59_3987
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"FAEE50EEFA445044"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_10(4),
      ADR4 => NODE_REG_REGS_11(4),
      ADR2 => NODE_REG_REGS_9(4),
      ADR1 => NODE_REG_REGS_8(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_58_3995
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y17",
      INIT => X"FCFA0CFAFC0A0C0A"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR2 => instr_3_IBUF_0,
      ADR1 => NODE_REG_REGS_14(4),
      ADR4 => NODE_REG_REGS_15(4),
      ADR5 => NODE_REG_REGS_13(4),
      ADR0 => NODE_REG_REGS_12(4),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_44_4003
    );
  NODE_REG_REGS_3_7_NODE_REG_REGS_3_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N304,
      O => N304_0
    );
  NODE_REG_REGS_3_7_NODE_REG_REGS_3_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N184,
      O => N184_0
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y18"
    )
    port map (
      IA => N491,
      IB => N492,
      O => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_3_Q
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"BB8BFFFFB8880000"
    )
    port map (
      ADR5 => reg_data0(7),
      ADR4 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR0 => e_in_7_IBUF_0,
      ADR3 => s_in_7_IBUF_0,
      O => N491
    );
  NODE_REG_REGS_3_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0558_inv_5110,
      CLK => NlwBufferSignal_NODE_REG_REGS_3_7_CLK,
      I => NODE_REG_REGS_3_7_REGS_3_7_mux_115_OUT_7_Q,
      O => NODE_REG_REGS_3(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"F0F0F0F0FFFF0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR3 => '1',
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(7),
      ADR2 => w_in_7_IBUF_0,
      O => N492
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"1D3F1D3F1D3F1D3F"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N303
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"0C2E0C2E"
    )
    port map (
      ADR4 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_4_IBUF_0,
      O => N304
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"00FF3F3F00FF3F3F"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR2 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR3 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N183
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y18",
      INIT => X"00FF0C0C"
    )
    port map (
      ADR0 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR2 => s_in_6_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR3 => e_in_6_IBUF_0,
      O => N184
    );
  NODE_REG_REGS_2_7_NODE_REG_REGS_2_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N280,
      O => N280_0
    );
  NODE_REG_REGS_2_7_NODE_REG_REGS_2_7_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N208,
      O => N208_0
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y19"
    )
    port map (
      IA => N493,
      IB => N494,
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_2_Q
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"F3FFE200D1FFC000"
    )
    port map (
      ADR4 => reg_data0(7),
      ADR3 => ctrl_reg_write(1),
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_7_IBUF_0,
      ADR5 => s_in_7_IBUF_0,
      O => N493
    );
  NODE_REG_REGS_2_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_7_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_7_Q,
      O => NODE_REG_REGS_2(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR0 => w_in_7_IBUF_0,
      O => N494
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"1133DDFF1133DDFF"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR4 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N279
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"1100DDCC"
    )
    port map (
      ADR2 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR4 => e_in_4_IBUF_0,
      O => N280
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"353F353F353F353F"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N207
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X16Y19",
      INIT => X"303A303A"
    )
    port map (
      ADR4 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR3 => s_in_6_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR1 => e_in_6_IBUF_0,
      O => N208
    );
  alu_op2_5_alu_op2_5_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75_pack_6,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y20"
    )
    port map (
      IA => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_4100,
      IB => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_4092,
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75_pack_6,
      SEL => instr_9_IBUF_0
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_2(5),
      ADR2 => NODE_REG_REGS_3(5),
      ADR5 => NODE_REG_REGS_1(5),
      ADR3 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_65_4100
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"FDEC7564B9A83120"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR0 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_6(5),
      ADR4 => NODE_REG_REGS_7(5),
      ADR2 => NODE_REG_REGS_5(5),
      ADR3 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_511_4092
    );
  MUX_ALU_Mmux_bus_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"FFFFFEFF00001000"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR3 => instr_19_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      ADR4 => instr_21_IBUF_0,
      ADR0 => CONTROL_disable_mask_OR_1_o1_5410,
      ADR5 => reg_data2_out(5),
      O => alu_op2(5)
    );
  NODE_REG_Mmux_data2_out61 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y20",
      INIT => X"0000FCAC00000CAC"
    )
    port map (
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR2 => instr_10_IBUF_0,
      ADR3 => instr_9_IBUF_0,
      ADR5 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_5385,
      ADR0 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_5392,
      ADR1 => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_4_f75,
      O => reg_data2_out(5)
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_5_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_4105,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_4113,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f75,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_4 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y21"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_4121,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_4129,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f75,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FADDFA8850DD5088"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR1 => NODE_REG_REGS_2(5),
      ADR5 => NODE_REG_REGS_3(5),
      ADR2 => NODE_REG_REGS_1(5),
      ADR4 => NODE_REG_REGS_0(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_65_4105
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"F7E6D5C4B3A29180"
    )
    port map (
      ADR1 => instr_4_IBUF_0,
      ADR0 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_6(5),
      ADR2 => NODE_REG_REGS_7(5),
      ADR4 => NODE_REG_REGS_5(5),
      ADR3 => NODE_REG_REGS_4(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_511_4113
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FEBA7632DC985410"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_10(5),
      ADR4 => NODE_REG_REGS_11(5),
      ADR3 => NODE_REG_REGS_9(5),
      ADR2 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_510_4121
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y21",
      INIT => X"FF0FF000CACACACA"
    )
    port map (
      ADR2 => instr_4_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      ADR1 => NODE_REG_REGS_14(5),
      ADR3 => NODE_REG_REGS_15(5),
      ADR4 => NODE_REG_REGS_13(5),
      ADR0 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_45_4129
    );
  NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_2_f8_5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76,
      O => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_Q,
      SEL => instr_14_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_4139,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_4147,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_4_f76,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f7_5 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y22"
    )
    port map (
      IA => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_4155,
      IB => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_4163,
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_3_f76,
      SEL => instr_13_IBUF_0
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FFE233E2CCE200E2"
    )
    port map (
      ADR3 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR5 => NODE_REG_REGS_2(6),
      ADR4 => NODE_REG_REGS_3(6),
      ADR2 => NODE_REG_REGS_1(6),
      ADR0 => NODE_REG_REGS_0(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_66_4139
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FFE2CCE233E200E2"
    )
    port map (
      ADR1 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR2 => NODE_REG_REGS_6(6),
      ADR5 => NODE_REG_REGS_7(6),
      ADR4 => NODE_REG_REGS_5(6),
      ADR0 => NODE_REG_REGS_4(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_513_4147
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"FF33B8B8CC00B8B8"
    )
    port map (
      ADR4 => instr_12_IBUF_0,
      ADR1 => instr_11_IBUF_0,
      ADR5 => NODE_REG_REGS_10(6),
      ADR3 => NODE_REG_REGS_11(6),
      ADR0 => NODE_REG_REGS_9(6),
      ADR2 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_512_4155
    );
  NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y22",
      INIT => X"E4FFE4AAE455E400"
    )
    port map (
      ADR0 => instr_12_IBUF_0,
      ADR3 => instr_11_IBUF_0,
      ADR5 => NODE_REG_REGS_14(6),
      ADR2 => NODE_REG_REGS_15(6),
      ADR1 => NODE_REG_REGS_13(6),
      ADR4 => NODE_REG_REGS_12(6),
      O => NODE_REG_Mmux_adr1_3_REGS_15_7_wide_mux_139_OUT_46_4163
    );
  NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_2_f8_6 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77,
      O => NODE_REG_adr3_3_REGS_15_7_wide_mux_145_OUT_7_Q,
      SEL => instr_6_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_4173,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_4181,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_4_f77,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f7_6 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y25"
    )
    port map (
      IA => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_4189,
      IB => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_4197,
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_3_f77,
      SEL => instr_5_IBUF_0
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"CFFACF0AC0FAC00A"
    )
    port map (
      ADR2 => instr_4_IBUF_0,
      ADR3 => instr_3_IBUF_0,
      ADR4 => NODE_REG_REGS_2(7),
      ADR1 => NODE_REG_REGS_3(7),
      ADR5 => NODE_REG_REGS_1(7),
      ADR0 => NODE_REG_REGS_0(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_67_4173
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"F7D5E6C4B391A280"
    )
    port map (
      ADR0 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR3 => NODE_REG_REGS_6(7),
      ADR2 => NODE_REG_REGS_7(7),
      ADR5 => NODE_REG_REGS_5(7),
      ADR4 => NODE_REG_REGS_4(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_515_4181
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"AACCFFF0AACC00F0"
    )
    port map (
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_3_IBUF_0,
      ADR5 => NODE_REG_REGS_10(7),
      ADR0 => NODE_REG_REGS_11(7),
      ADR1 => NODE_REG_REGS_9(7),
      ADR2 => NODE_REG_REGS_8(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_514_4189
    );
  NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y25",
      INIT => X"B8B8B8B8FF33CC00"
    )
    port map (
      ADR5 => instr_4_IBUF_0,
      ADR1 => instr_3_IBUF_0,
      ADR2 => NODE_REG_REGS_14(7),
      ADR0 => NODE_REG_REGS_15(7),
      ADR3 => NODE_REG_REGS_13(7),
      ADR4 => NODE_REG_REGS_12(7),
      O => NODE_REG_Mmux_adr3_3_REGS_15_7_wide_mux_145_OUT_47_4197
    );
  NODE_REG_REGS_0_6 : X_FF
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_6_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q,
      O => NODE_REG_REGS_0(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"F555A022F5FFA022"
    )
    port map (
      ADR1 => N219,
      ADR2 => w_in_6_IBUF_0,
      ADR5 => N220_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_6_Q
    );
  NODE_REG_REGS_0_5 : X_FF
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_5_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q,
      O => NODE_REG_REGS_0(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"F5FF05FFF3000300"
    )
    port map (
      ADR1 => N267,
      ADR4 => w_in_5_IBUF_0,
      ADR0 => N268_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_5_Q
    );
  NODE_REG_REGS_0_4 : X_FF
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_4_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q,
      O => NODE_REG_REGS_0(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"DDDD888855FF0A0A"
    )
    port map (
      ADR2 => N315,
      ADR1 => w_in_4_IBUF_0,
      ADR3 => N316_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR0 => ctrl_reg_write(1),
      ADR4 => reg_data0(4),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_4_Q
    );
  NODE_REG_REGS_0_3 : X_FF
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0624_inv,
      CLK => NlwBufferSignal_NODE_REG_REGS_0_3_CLK,
      I => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q,
      O => NODE_REG_REGS_0(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y26",
      INIT => X"AAAAF0F003F3F0F0"
    )
    port map (
      ADR1 => N363,
      ADR0 => w_in_3_IBUF_0,
      ADR3 => N364_0,
      ADR5 => NODE_REG_adr3_3_Decoder_52_OUT_0_Q,
      ADR4 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_0_7_REGS_0_7_mux_118_OUT_3_Q
    );
  CONTROL_disable_mask_OR_1_o_CONTROL_disable_mask_OR_1_o_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N117,
      O => N117_0
    );
  NODE_ALU_Mmux_res7110_SW1 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y27"
    )
    port map (
      IA => N483,
      IB => N484,
      O => N117,
      SEL => ctrl_s_swap
    );
  NODE_ALU_Mmux_res7110_SW1_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => X"5F550A000F000F00"
    )
    port map (
      ADR1 => '1',
      ADR3 => instr_1_IBUF_0,
      ADR2 => instr_0_IBUF_0,
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR5 => instr_21_IBUF_0,
      ADR4 => n_in_0_IBUF_0,
      O => N483
    );
  NODE_ALU_Mmux_res7110_SW1_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => X"FFFFCEFF31000000"
    )
    port map (
      ADR5 => NODE_S_REG_tmp_s_new(0),
      ADR0 => instr_22_IBUF_0,
      ADR2 => STATE_state_out_5159,
      ADR1 => instr_23_IBUF_0,
      ADR3 => instr_21_IBUF_0,
      ADR4 => n_in_0_IBUF_0,
      O => N484
    );
  CONTROL_disable_mask_OR_1_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => X"FFFF0000FFFFCCCC"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => '1',
      ADR4 => instr_23_IBUF_0,
      ADR1 => instr_22_IBUF_0,
      ADR5 => STATE_state_out_5159,
      O => CONTROL_disable_mask_OR_1_o
    );
  NODE_ALU_Mmux_res7110_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y27",
      INIT => X"FFFFBBBBFFFFBB8B"
    )
    port map (
      ADR1 => instr_21_IBUF_0,
      ADR2 => instr_20_IBUF_0,
      ADR5 => instr_19_IBUF_0,
      ADR3 => NODE_S_REG_tmp_s_new(0),
      ADR0 => n_in_0_IBUF_0,
      ADR4 => CONTROL_disable_mask_OR_1_o,
      O => N118
    );
  reg_data1_out_6_reg_data1_out_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => alu_res(5),
      O => alu_res_5_0
    );
  NODE_ALU_Mmux_res763 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y28"
    )
    port map (
      IA => N559,
      IB => N560,
      O => alu_res(5),
      SEL => instr_2_IBUF_0
    );
  NODE_ALU_Mmux_res763_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"8080FFFF80800000"
    )
    port map (
      ADR3 => '1',
      ADR4 => instr_1_IBUF_0,
      ADR1 => instr_0_IBUF_0,
      ADR0 => alu_op2(5),
      ADR2 => reg_data1_out(5),
      ADR5 => NODE_ALU_Mmux_res1_split_5_0,
      O => N559
    );
  NODE_ALU_Mmux_res763_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"CFC3CEC20F030E02"
    )
    port map (
      ADR2 => instr_0_IBUF_0,
      ADR1 => instr_1_IBUF_0,
      ADR4 => alu_op2(5),
      ADR0 => reg_data1_out(5),
      ADR3 => reg_data1_out(4),
      ADR5 => reg_data1_out(6),
      O => N560
    );
  NODE_REG_Mmux_data1_out71 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"F0F0F0F0F0F0E0E0"
    )
    port map (
      ADR3 => '1',
      ADR5 => instr_13_IBUF_0,
      ADR4 => instr_11_IBUF_0,
      ADR0 => instr_12_IBUF_0,
      ADR1 => instr_14_IBUF_0,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      O => reg_data1_out(6)
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y28",
      INIT => X"F3F3C0C0BB88BB88"
    )
    port map (
      ADR5 => instr_8_IBUF_0,
      ADR1 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_10(6),
      ADR2 => NODE_REG_REGS_11(6),
      ADR0 => NODE_REG_REGS_9(6),
      ADR3 => NODE_REG_REGS_8(6),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_512_5393
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162 : X_MUX2
    generic map(
      LOC => "SLICE_X16Y29"
    )
    port map (
      IA => N489,
      IB => N490,
      O => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q,
      SEL => NODE_REG_adr3_3_Decoder_52_OUT_1_Q
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162_F : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"FAEAFA2A0AEA0A2A"
    )
    port map (
      ADR0 => reg_data0(7),
      ADR2 => ctrl_reg_write(1),
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_1_Q,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_1_Q,
      ADR5 => e_in_7_IBUF_0,
      ADR4 => s_in_7_IBUF_0,
      O => N489
    );
  NODE_REG_REGS_1_7 : X_FF
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0602_inv_5106,
      CLK => NlwBufferSignal_NODE_REG_REGS_1_7_CLK,
      I => NODE_REG_REGS_1_7_REGS_1_7_mux_117_OUT_7_Q,
      O => NODE_REG_REGS_1(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_1_7_REGS_1_7_mux_117_OUT162_G : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"AFA0AFA0AFA0AFA0"
    )
    port map (
      ADR5 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR2 => ctrl_reg_write(1),
      ADR3 => reg_data0(7),
      ADR0 => w_in_7_IBUF_0,
      O => N490
    );
  MUX_N_Mmux_bus_out81 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"08FB080808FBFBFB"
    )
    port map (
      ADR0 => n_in_7_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      ADR2 => CONTROL_disable_mask_OR_1_o,
      ADR5 => N420,
      ADR3 => N421,
      ADR4 => NODE_ALU_Mmux_res1_split_7_0,
      O => reg_data0(7)
    );
  NODE_ALU_Mmux_res78_SW4 : X_LUT6
    generic map(
      LOC => "SLICE_X16Y29",
      INIT => X"5F5F4E4E1B1B0A0A"
    )
    port map (
      ADR3 => '1',
      ADR2 => NODE_S_REG_tmp_s_new(7),
      ADR0 => ctrl_s_swap,
      ADR5 => N59,
      ADR4 => N58,
      ADR1 => alu_op2(7),
      O => N420
    );
  N231_N231_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N232,
      O => N232_0
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"35353F3F35353F3F"
    )
    port map (
      ADR3 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR1 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N231
    );
  NODE_REG_Mmux_REGS_4_7_REGS_4_7_mux_114_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y13",
      INIT => X"35353030"
    )
    port map (
      ADR3 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_4_Q,
      ADR0 => s_in_5_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_4_Q,
      ADR1 => e_in_5_IBUF_0,
      O => N232
    );
  NODE_REG_adr3_3_Decoder_52_OUT_15_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y15",
      INIT => X"F000000000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => instr_6_IBUF_0,
      ADR2 => instr_4_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      ADR3 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_15_Q
    );
  N255_N255_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N256,
      O => N256_0
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => X"1B1B5F5F1B1B5F5F"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N255
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y17",
      INIT => X"0A0A4E4E"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_12_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_12_0,
      ADR2 => e_in_5_IBUF_0,
      O => N256
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y18",
      INIT => X"CFC0CFC0FAFA0A0A"
    )
    port map (
      ADR2 => instr_8_IBUF_0,
      ADR5 => instr_7_IBUF_0,
      ADR4 => NODE_REG_REGS_14(5),
      ADR1 => NODE_REG_REGS_15(5),
      ADR3 => NODE_REG_REGS_13(5),
      ADR0 => NODE_REG_REGS_12(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_45_5385
    );
  NODE_REG_REGS_12_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_6_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q,
      O => NODE_REG_REGS_12(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => X"F505F303FFFF0000"
    )
    port map (
      ADR1 => N207,
      ADR3 => w_in_6_IBUF_0,
      ADR0 => N208_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_6_Q
    );
  NODE_REG_REGS_12_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_5_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q,
      O => NODE_REG_REGS_12(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => X"A3FFA3FFA000AF00"
    )
    port map (
      ADR4 => N255,
      ADR0 => w_in_5_IBUF_0,
      ADR1 => N256_0,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR3 => ctrl_reg_write(1),
      ADR5 => reg_data0(5),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_5_Q
    );
  NODE_REG_REGS_12_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_4_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q,
      O => NODE_REG_REGS_12(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => X"AA30AA3FF0F0F0F0"
    )
    port map (
      ADR4 => N303,
      ADR0 => w_in_4_IBUF_0,
      ADR1 => N304_0,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR5 => ctrl_reg_write(1),
      ADR2 => reg_data0(4),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_4_Q
    );
  NODE_REG_REGS_12_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0360_inv_4862,
      CLK => NlwBufferSignal_NODE_REG_REGS_12_3_CLK,
      I => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q,
      O => NODE_REG_REGS_12(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_12_7_REGS_12_7_mux_106_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y19",
      INIT => X"CF03FFFFDD110000"
    )
    port map (
      ADR0 => N351,
      ADR3 => w_in_3_IBUF_0,
      ADR2 => N352_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_12_Q,
      ADR4 => ctrl_reg_write(1),
      ADR5 => reg_data0(3),
      O => NODE_REG_REGS_12_7_REGS_12_7_mux_106_OUT_3_Q
    );
  NODE_REG_REGS_2_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_6_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q,
      O => NODE_REG_REGS_2(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT142 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"CF03DD11FFFF0000"
    )
    port map (
      ADR0 => N180,
      ADR3 => w_in_6_IBUF_0,
      ADR2 => N181_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR5 => ctrl_reg_write(1),
      ADR4 => reg_data0(6),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_6_Q
    );
  NODE_REG_REGS_2_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_5_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q,
      O => NODE_REG_REGS_2(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT122 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"D1C0FF00D1F3FF00"
    )
    port map (
      ADR5 => N228,
      ADR2 => w_in_5_IBUF_0,
      ADR0 => N229_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR4 => ctrl_reg_write(1),
      ADR3 => reg_data0(5),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_5_Q
    );
  NODE_REG_REGS_2_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_4_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q,
      O => NODE_REG_REGS_2(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT102 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"F5A05522F5A0FF22"
    )
    port map (
      ADR1 => N276,
      ADR2 => w_in_4_IBUF_0,
      ADR5 => N277_0,
      ADR4 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR0 => ctrl_reg_write(1),
      ADR3 => reg_data0(4),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_4_Q
    );
  NODE_REG_REGS_2_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => '0'
    )
    port map (
      CE => NODE_REG_n0580_inv_5112,
      CLK => NlwBufferSignal_NODE_REG_REGS_2_3_CLK,
      I => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q,
      O => NODE_REG_REGS_2(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT82 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y20",
      INIT => X"B830BC34F870FC74"
    )
    port map (
      ADR4 => N324,
      ADR3 => w_in_3_IBUF_0,
      ADR5 => N325_0,
      ADR0 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR1 => ctrl_reg_write(1),
      ADR2 => reg_data0(3),
      O => NODE_REG_REGS_2_7_REGS_2_7_mux_116_OUT_3_Q
    );
  N267_N267_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N268,
      O => N268_0
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"1515BFBF1515BFBF"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N267
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"1010BABA"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR1 => s_in_5_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_5_IBUF_0,
      O => N268
    );
  NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"BFBC8F8CB3B08380"
    )
    port map (
      ADR1 => instr_8_IBUF_0,
      ADR2 => instr_7_IBUF_0,
      ADR5 => NODE_REG_REGS_10(5),
      ADR0 => NODE_REG_REGS_11(5),
      ADR4 => NODE_REG_REGS_9(5),
      ADR3 => NODE_REG_REGS_8(5),
      O => NODE_REG_Mmux_adr2_3_REGS_15_7_wide_mux_142_OUT_510_5392
    );
  NODE_REG_adr3_3_Decoder_52_OUT_6_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y21",
      INIT => X"000000000000C0C0"
    )
    port map (
      ADR0 => '1',
      ADR3 => '1',
      ADR2 => instr_4_IBUF_0,
      ADR1 => instr_5_IBUF_0,
      ADR4 => instr_6_IBUF_0,
      ADR5 => instr_3_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_6_Q
    );
  N273_N273_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N274,
      O => N274_0
    );
  N273_N273_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N178,
      O => N178_0
    );
  N273_N273_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N226,
      O => N226_0
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"555533FF555533FF"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR0 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N273
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"555500CC"
    )
    port map (
      ADR2 => '1',
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR3 => s_in_4_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR0 => e_in_4_IBUF_0,
      O => N274
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"2727777727277777"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR2 => s_in_6_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N177
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"27272222"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR2 => s_in_6_IBUF_0,
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR1 => e_in_6_IBUF_0,
      O => N178
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"03F30FFF03F30FFF"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR3 => e_in_5_IBUF_0,
      ADR5 => '1',
      O => N225
    );
  NODE_REG_Mmux_REGS_3_7_REGS_3_7_mux_115_OUT121_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y22",
      INIT => X"00F00CFC"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR4 => s_in_5_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR3 => e_in_5_IBUF_0,
      O => N226
    );
  N180_N180_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N181,
      O => N181_0
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y25",
      INIT => X"0C3F3F3F0C3F3F3F"
    )
    port map (
      ADR0 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N180
    );
  NODE_REG_Mmux_REGS_2_7_REGS_2_7_mux_116_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y25",
      INIT => X"0C0C3F0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR3 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => e_in_6_IBUF_0,
      O => N181
    );
  NODE_ALU_Mmux_res7110_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y25",
      INIT => X"F0FFF0FFF0FFF0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => '1',
      ADR5 => '1',
      ADR2 => instr_0_IBUF_0,
      ADR3 => instr_1_IBUF_0,
      O => N122
    );
  N315_N315_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N316,
      O => N316_0
    );
  N315_N315_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N220,
      O => N220_0
    );
  N315_N315_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_REG_adr2_3_Decoder_35_OUT_15_pack_3,
      O => NODE_REG_adr2_3_Decoder_35_OUT_15_Q
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"005FFF5F005FFF5F"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_4_IBUF_0,
      ADR5 => '1',
      O => N315
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT101_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"0050FF50"
    )
    port map (
      ADR1 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR0 => s_in_4_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_4_IBUF_0,
      O => N316
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"2727777727277777"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR1 => e_in_6_IBUF_0,
      ADR5 => '1',
      O => N219
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT141_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"22227272"
    )
    port map (
      ADR3 => '1',
      ADR0 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR4 => s_in_6_IBUF_0,
      ADR2 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR1 => e_in_6_IBUF_0,
      O => N220
    );
  NODE_REG_adr2_3_Decoder_35_OUT_7_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"0C0000000C000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instr_10_IBUF_0,
      ADR1 => instr_8_IBUF_0,
      ADR3 => instr_7_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      ADR5 => '1',
      O => NODE_REG_adr2_3_Decoder_35_OUT_7_Q
    );
  NODE_REG_adr2_3_Decoder_35_OUT_15_3_1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"C0000000"
    )
    port map (
      ADR0 => '1',
      ADR2 => instr_10_IBUF_0,
      ADR1 => instr_8_IBUF_0,
      ADR3 => instr_7_IBUF_0,
      ADR4 => instr_9_IBUF_0,
      O => NODE_REG_adr2_3_Decoder_35_OUT_15_pack_3
    );
  NODE_REG_n0646_inv : X_LUT6
    generic map(
      LOC => "SLICE_X17Y26",
      INIT => X"0F0F0000F0F0F0E0"
    )
    port map (
      ADR5 => ctrl_reg_write(0),
      ADR2 => ctrl_reg_write(1),
      ADR4 => N32_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_15_0,
      ADR1 => NODE_REG_adr3_3_Decoder_52_OUT_15_Q,
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_15_Q,
      O => NODE_REG_n0646_inv_4995
    );
  N363_N363_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N364,
      O => N364_0
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => X"003FFF3F003FFF3F"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_3_IBUF_0,
      ADR5 => '1',
      O => N363
    );
  NODE_REG_Mmux_REGS_0_7_REGS_0_7_mux_118_OUT81_SW1 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => X"000CFF0C"
    )
    port map (
      ADR0 => '1',
      ADR3 => NODE_REG_adr2_3_Decoder_35_OUT_0_Q,
      ADR2 => s_in_3_IBUF_0,
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => e_in_3_IBUF_0,
      O => N364
    );
  NODE_ALU_Mmux_res723_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => X"5011500050005000"
    )
    port map (
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR3 => instr_21_IBUF_0,
      ADR2 => n_in_1_IBUF_0,
      ADR4 => NODE_S_REG_tmp_s_new(1),
      ADR5 => instr_20_IBUF_0,
      ADR1 => instr_19_IBUF_0,
      O => N479
    );
  NODE_REG_adr3_3_Decoder_52_OUT_3_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => X"000000000000AA00"
    )
    port map (
      ADR2 => '1',
      ADR1 => '1',
      ADR0 => instr_3_IBUF_0,
      ADR3 => instr_4_IBUF_0,
      ADR4 => instr_6_IBUF_0,
      ADR5 => instr_5_IBUF_0,
      O => NODE_REG_adr3_3_Decoder_52_OUT_3_Q
    );
  NODE_ALU_Mmux_res7110_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y27",
      INIT => X"4444005044440000"
    )
    port map (
      ADR0 => CONTROL_disable_mask_OR_1_o,
      ADR4 => instr_21_IBUF_0,
      ADR1 => n_in_0_IBUF_0,
      ADR2 => NODE_S_REG_tmp_s_new(0),
      ADR5 => instr_20_IBUF_0,
      ADR3 => instr_19_IBUF_0,
      O => N116
    );
  NODE_S_REG_tmp_s_6_NODE_S_REG_tmp_s_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(7),
      O => NODE_S_REG_tmp_s_7_0
    );
  NODE_S_REG_tmp_s_6_NODE_S_REG_tmp_s_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(5),
      O => NODE_S_REG_tmp_s_5_0
    );
  NODE_S_REG_tmp_s_6_NODE_S_REG_tmp_s_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(3),
      O => NODE_S_REG_tmp_s_3_0
    );
  NODE_S_REG_tmp_s_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_6_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q,
      O => NODE_S_REG_tmp_s(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => step_IBUF_0,
      ADR2 => alu_res_6_0,
      ADR3 => sr_in_6_IBUF_0,
      ADR5 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_6_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT81 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"BBBB8888"
    )
    port map (
      ADR4 => alu_res(7),
      ADR0 => sr_in_7_IBUF_0,
      ADR1 => step_IBUF_0,
      ADR3 => '1',
      ADR2 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q
    );
  NODE_S_REG_tmp_s_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_7_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_7_Q,
      O => NODE_S_REG_tmp_s(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_ALU_Mmux_res78 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"0303F3F3505F505F"
    )
    port map (
      ADR5 => NODE_ALU_Mmux_res1_split_7_0,
      ADR2 => alu_op2(7),
      ADR1 => N60,
      ADR4 => N61,
      ADR3 => N58,
      ADR0 => N59,
      O => alu_res(7)
    );
  NODE_S_REG_tmp_s_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_4_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q,
      O => NODE_S_REG_tmp_s(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"CCFFCC00CCFFCC00"
    )
    port map (
      ADR0 => '1',
      ADR2 => '1',
      ADR3 => step_IBUF_0,
      ADR4 => alu_res_4_0,
      ADR1 => sr_in_4_IBUF_0,
      ADR5 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_4_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT61 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"F0AAF0AA"
    )
    port map (
      ADR0 => alu_res_5_0,
      ADR2 => sr_in_5_IBUF_0,
      ADR3 => step_IBUF_0,
      ADR1 => '1',
      ADR4 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q
    );
  NODE_S_REG_tmp_s_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_5_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_5_Q,
      O => NODE_S_REG_tmp_s(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_2_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q,
      O => NODE_S_REG_tmp_s(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"FF00F0F0FF00F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR4 => step_IBUF_0,
      ADR2 => alu_res_2_0,
      ADR3 => sr_in_2_IBUF_0,
      ADR5 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_2_Q
    );
  NODE_S_REG_Mmux_tmp_s_7_s_in_7_mux_2_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => X"AAAACCCC"
    )
    port map (
      ADR1 => alu_res_3_0,
      ADR0 => sr_in_3_IBUF_0,
      ADR4 => step_IBUF_0,
      ADR3 => '1',
      ADR2 => '1',
      O => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q
    );
  NODE_S_REG_tmp_s_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y28",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0027_inv_0,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_3_CLK,
      I => NODE_S_REG_tmp_s_7_s_in_7_mux_2_OUT_3_Q,
      O => NODE_S_REG_tmp_s(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_S_REG_tmp_s_new_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_7_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_7_IN,
      O => NODE_S_REG_tmp_s_new(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  CONTROL_Mmux_s_swap11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"0000000000002022"
    )
    port map (
      ADR4 => instr_23_IBUF_0,
      ADR1 => instr_21_IBUF_0,
      ADR0 => instr_20_IBUF_0,
      ADR5 => instr_19_IBUF_0,
      ADR2 => STATE_state_out_5159,
      ADR3 => instr_22_IBUF_0,
      O => ctrl_s_swap
    );
  NODE_S_REG_tmp_s_new_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_6_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_6_IN,
      O => NODE_S_REG_tmp_s_new(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_ALU_Mmux_res78_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"EFDDAA00EFFFAA00"
    )
    port map (
      ADR1 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR0 => instr_0_IBUF_0,
      ADR3 => instr_2_IBUF_0,
      ADR4 => instr_1_IBUF_0,
      ADR2 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      O => N61
    );
  NODE_S_REG_tmp_s_new_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_5_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_5_IN,
      O => NODE_S_REG_tmp_s_new(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_ALU_Mmux_res78_SW5 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"3F0C3F0C3F3F0C0C"
    )
    port map (
      ADR0 => '1',
      ADR2 => NODE_S_REG_tmp_s_new(7),
      ADR1 => ctrl_s_swap,
      ADR3 => N61,
      ADR4 => N60,
      ADR5 => alu_op2(7),
      O => N421
    );
  NODE_S_REG_tmp_s_new_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => '0'
    )
    port map (
      CE => NODE_S_REG_n0028_inv,
      CLK => NlwBufferSignal_NODE_S_REG_tmp_s_new_4_CLK,
      I => NlwBufferSignal_NODE_S_REG_tmp_s_new_4_IN,
      O => NODE_S_REG_tmp_s_new(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_ALU_Mmux_res78_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y29",
      INIT => X"FAFBFF00FFFBFF00"
    )
    port map (
      ADR2 => instr_0_IBUF_0,
      ADR3 => instr_1_IBUF_0,
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_0_Q,
      ADR4 => instr_2_IBUF_0,
      ADR5 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_6_0,
      ADR1 => NODE_REG_adr1_3_REGS_15_7_wide_mux_139_OUT_7_0,
      O => N60
    );
  ctrl_reg_write_1_ctrl_reg_write_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N36_pack_3,
      O => N36
    );
  CONTROL_Mmux_reg_write21 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => X"0000220200008808"
    )
    port map (
      ADR2 => instr_22_IBUF_0,
      ADR3 => STATE_state_out_5159,
      ADR4 => instr_23_IBUF_0,
      ADR0 => instr_21_IBUF_0,
      ADR5 => instr_19_IBUF_0,
      ADR1 => instr_20_IBUF_0,
      O => ctrl_reg_write(1)
    );
  NODE_REG_n0580_inv_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => X"FFFFFFAFFFFFFFAF"
    )
    port map (
      ADR1 => '1',
      ADR4 => instr_18_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR0 => instr_17_IBUF_0,
      ADR2 => instr_16_IBUF_0,
      ADR5 => '1',
      O => N34
    );
  NODE_REG_n0558_inv_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => X"FFFFAFFF"
    )
    port map (
      ADR1 => '1',
      ADR4 => instr_18_IBUF_0,
      ADR3 => instr_15_IBUF_0,
      ADR0 => instr_17_IBUF_0,
      ADR2 => instr_16_IBUF_0,
      O => N36_pack_3
    );
  NODE_REG_n0580_inv : X_LUT6
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => X"00330033CCCCC8CC"
    )
    port map (
      ADR1 => ctrl_reg_write(1),
      ADR5 => ctrl_reg_write(0),
      ADR0 => NODE_REG_adr1_3_Decoder_18_OUT_2_Q,
      ADR2 => NODE_REG_adr3_3_Decoder_52_OUT_2_Q,
      ADR4 => NODE_REG_adr2_3_Decoder_35_OUT_2_Q,
      ADR3 => N34,
      O => NODE_REG_n0580_inv_5112
    );
  NODE_REG_n0558_inv : X_LUT6
    generic map(
      LOC => "SLICE_X17Y30",
      INIT => X"05050505F0F0F0D0"
    )
    port map (
      ADR2 => ctrl_reg_write(1),
      ADR5 => ctrl_reg_write(0),
      ADR4 => NODE_REG_adr1_3_Decoder_18_OUT_3_Q,
      ADR3 => NODE_REG_adr3_3_Decoder_52_OUT_3_Q,
      ADR1 => NODE_REG_adr2_3_Decoder_35_OUT_3_Q,
      ADR0 => N36,
      O => NODE_REG_n0558_inv_5110
    );
  NODE_COM_e_out_6_NODE_COM_e_out_6_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(7),
      O => NODE_COM_e_out_7_0
    );
  NODE_COM_e_out_6_NODE_COM_e_out_6_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(5),
      O => NODE_COM_e_out_5_0
    );
  NODE_COM_e_out_6_NODE_COM_e_out_6_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(3),
      O => NODE_COM_e_out_3_0
    );
  NODE_COM_e_out_6_NODE_COM_e_out_6_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(1),
      O => NODE_COM_e_out_1_0
    );
  NODE_COM_e_out_6 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_6_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q,
      O => NODE_COM_e_out(6),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT71 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"AAF0AAF0AAF0AAF0"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR3 => ctrl_com(1),
      ADR2 => reg_data2_out(6),
      ADR0 => n_in_6_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_6_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT81 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"CCFFCC00"
    )
    port map (
      ADR4 => reg_data2_out(7),
      ADR1 => n_in_7_IBUF_0,
      ADR3 => ctrl_com(1),
      ADR2 => '1',
      ADR0 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q
    );
  NODE_COM_e_out_7 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_7_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_7_Q,
      O => NODE_COM_e_out(7),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_e_out_4 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_4_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q,
      O => NODE_COM_e_out(4),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT51 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"FA50FA50FA50FA50"
    )
    port map (
      ADR4 => '1',
      ADR1 => '1',
      ADR0 => ctrl_com(1),
      ADR2 => reg_data2_out(4),
      ADR3 => n_in_4_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_4_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT61 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"EEEE4444"
    )
    port map (
      ADR1 => reg_data2_out(5),
      ADR4 => n_in_5_IBUF_0,
      ADR0 => ctrl_com(1),
      ADR3 => '1',
      ADR2 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q
    );
  NODE_COM_e_out_5 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_5_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_5_Q,
      O => NODE_COM_e_out(5),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_e_out_2 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_2_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q,
      O => NODE_COM_e_out(2),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT31 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"E2E2E2E2E2E2E2E2"
    )
    port map (
      ADR4 => '1',
      ADR3 => '1',
      ADR1 => ctrl_com(1),
      ADR0 => reg_data2_out(2),
      ADR2 => n_in_2_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_2_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT41 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"FFCC3300"
    )
    port map (
      ADR3 => reg_data2_out(3),
      ADR4 => n_in_3_IBUF_0,
      ADR1 => ctrl_com(1),
      ADR0 => '1',
      ADR2 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q
    );
  NODE_COM_e_out_3 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_3_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_3_Q,
      O => NODE_COM_e_out(3),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_e_out_0 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_0_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q,
      O => NODE_COM_e_out(0),
      RST => reset_IBUF_0,
      SET => GND
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT11 : X_LUT6
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"FC30FC30FC30FC30"
    )
    port map (
      ADR0 => '1',
      ADR4 => '1',
      ADR1 => ctrl_com(1),
      ADR2 => reg_data2_out(0),
      ADR3 => n_in_0_IBUF_0,
      ADR5 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_0_Q
    );
  NODE_COM_Mmux_e_out_7_data2_7_mux_7_OUT21 : X_LUT5
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => X"BBBB8888"
    )
    port map (
      ADR4 => reg_data2_out(1),
      ADR0 => n_in_1_IBUF_0,
      ADR1 => ctrl_com(1),
      ADR3 => '1',
      ADR2 => '1',
      O => NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q
    );
  NODE_COM_e_out_1 : X_FF
    generic map(
      LOC => "SLICE_X17Y31",
      INIT => '0'
    )
    port map (
      CE => NODE_COM_n0051_inv,
      CLK => NlwBufferSignal_NODE_COM_e_out_1_CLK,
      I => NODE_COM_e_out_7_data2_7_mux_7_OUT_1_Q,
      O => NODE_COM_e_out(1),
      RST => reset_IBUF_0,
      SET => GND
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_cy_3_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(1),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_1_Q
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_cy_3_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(2),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_2_Q
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_cy_3_DI_3_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(3),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_cy_3_DI_3_Q
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_xor_7_DI_0_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(4),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_0_Q
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_xor_7_DI_1_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(5),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_1_Q
    );
  NlwBufferBlock_NODE_ALU_Mmux_res1_rs_xor_7_DI_2_Q : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => reg_data1_out(6),
      O => NlwBufferSignal_NODE_ALU_Mmux_res1_rs_xor_7_DI_2_Q
    );
  NlwBufferBlock_s_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(0),
      O => NlwBufferSignal_s_out_0_OBUF_I
    );
  NlwBufferBlock_s_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out_1_0,
      O => NlwBufferSignal_s_out_1_OBUF_I
    );
  NlwBufferBlock_s_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(2),
      O => NlwBufferSignal_s_out_2_OBUF_I
    );
  NlwBufferBlock_s_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out_3_0,
      O => NlwBufferSignal_s_out_3_OBUF_I
    );
  NlwBufferBlock_s_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(4),
      O => NlwBufferSignal_s_out_4_OBUF_I
    );
  NlwBufferBlock_s_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out_5_0,
      O => NlwBufferSignal_s_out_5_OBUF_I
    );
  NlwBufferBlock_s_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out(6),
      O => NlwBufferSignal_s_out_6_OBUF_I
    );
  NlwBufferBlock_s_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_s_out_7_0,
      O => NlwBufferSignal_s_out_7_OBUF_I
    );
  NlwBufferBlock_sr_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(0),
      O => NlwBufferSignal_sr_out_0_OBUF_I
    );
  NlwBufferBlock_sr_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(1),
      O => NlwBufferSignal_sr_out_1_OBUF_I
    );
  NlwBufferBlock_sr_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(2),
      O => NlwBufferSignal_sr_out_2_OBUF_I
    );
  NlwBufferBlock_sr_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(3),
      O => NlwBufferSignal_sr_out_3_OBUF_I
    );
  NlwBufferBlock_sr_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(4),
      O => NlwBufferSignal_sr_out_4_OBUF_I
    );
  NlwBufferBlock_sr_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(5),
      O => NlwBufferSignal_sr_out_5_OBUF_I
    );
  NlwBufferBlock_sr_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(6),
      O => NlwBufferSignal_sr_out_6_OBUF_I
    );
  NlwBufferBlock_sr_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_out(7),
      O => NlwBufferSignal_sr_out_7_OBUF_I
    );
  NlwBufferBlock_e_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(0),
      O => NlwBufferSignal_e_out_0_OBUF_I
    );
  NlwBufferBlock_e_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out_1_0,
      O => NlwBufferSignal_e_out_1_OBUF_I
    );
  NlwBufferBlock_e_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(2),
      O => NlwBufferSignal_e_out_2_OBUF_I
    );
  NlwBufferBlock_e_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out_3_0,
      O => NlwBufferSignal_e_out_3_OBUF_I
    );
  NlwBufferBlock_e_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(4),
      O => NlwBufferSignal_e_out_4_OBUF_I
    );
  NlwBufferBlock_e_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out_5_0,
      O => NlwBufferSignal_e_out_5_OBUF_I
    );
  NlwBufferBlock_e_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out(6),
      O => NlwBufferSignal_e_out_6_OBUF_I
    );
  NlwBufferBlock_e_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_e_out_7_0,
      O => NlwBufferSignal_e_out_7_OBUF_I
    );
  NlwBufferBlock_node_state_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => STATE_state_out_5159,
      O => NlwBufferSignal_node_state_OBUF_I
    );
  NlwBufferBlock_n_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(0),
      O => NlwBufferSignal_n_out_0_OBUF_I
    );
  NlwBufferBlock_n_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(1),
      O => NlwBufferSignal_n_out_1_OBUF_I
    );
  NlwBufferBlock_n_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(2),
      O => NlwBufferSignal_n_out_2_OBUF_I
    );
  NlwBufferBlock_n_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(3),
      O => NlwBufferSignal_n_out_3_OBUF_I
    );
  NlwBufferBlock_n_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(4),
      O => NlwBufferSignal_n_out_4_OBUF_I
    );
  NlwBufferBlock_n_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(5),
      O => NlwBufferSignal_n_out_5_OBUF_I
    );
  NlwBufferBlock_n_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(6),
      O => NlwBufferSignal_n_out_6_OBUF_I
    );
  NlwBufferBlock_n_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_n_out(7),
      O => NlwBufferSignal_n_out_7_OBUF_I
    );
  NlwBufferBlock_w_out_0_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(0),
      O => NlwBufferSignal_w_out_0_OBUF_I
    );
  NlwBufferBlock_w_out_1_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(1),
      O => NlwBufferSignal_w_out_1_OBUF_I
    );
  NlwBufferBlock_w_out_2_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(2),
      O => NlwBufferSignal_w_out_2_OBUF_I
    );
  NlwBufferBlock_w_out_3_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(3),
      O => NlwBufferSignal_w_out_3_OBUF_I
    );
  NlwBufferBlock_w_out_4_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(4),
      O => NlwBufferSignal_w_out_4_OBUF_I
    );
  NlwBufferBlock_w_out_5_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(5),
      O => NlwBufferSignal_w_out_5_OBUF_I
    );
  NlwBufferBlock_w_out_6_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(6),
      O => NlwBufferSignal_w_out_6_OBUF_I
    );
  NlwBufferBlock_w_out_7_OBUF_I : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_COM_w_out(7),
      O => NlwBufferSignal_w_out_7_OBUF_I
    );
  NlwBufferBlock_clk_BUFGP_BUFG_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => NlwBufferSignal_clk_BUFGP_BUFG_IN
    );
  NlwBufferBlock_NODE_REG_REGS_13_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_7_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_7_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_6_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_1_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_0_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_6_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_5_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_4_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_3_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_2_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_1_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_0_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_5_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_4_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_3_CLK
    );
  NlwBufferBlock_NODE_COM_n_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_n_out_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_8_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_8_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_13_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_13_3_CLK
    );
  NlwBufferBlock_NODE_COM_w_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_w_out_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_15_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_15_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_11_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_11_7_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_1_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_14_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_14_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_3_CLK
    );
  NlwBufferBlock_STATE_state_out_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_STATE_state_out_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_6_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_6_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_9_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_9_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_2_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_0_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_7_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_7_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_4_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_4_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_3_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_3_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_2_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(2),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_2_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_1_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(1),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_1_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_0_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(0),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_0_IN
    );
  NlwBufferBlock_NODE_REG_REGS_3_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_3_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_10_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_10_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_3_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_3_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_3_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_2_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_2_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(2),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_2_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_1_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_1_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(1),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_1_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_0_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_0_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(0),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_0_IN
    );
  NlwBufferBlock_NODE_REG_REGS_1_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_2_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_6_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_7_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_4_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_5_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_2_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_3_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_0_CLK
    );
  NlwBufferBlock_NODE_COM_s_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_s_out_1_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_5_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_5_7_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_7_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_7_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_7_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_6_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(6),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_6_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_5_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_5_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_5_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_4_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_out_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(4),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_out_4_IN
    );
  NlwBufferBlock_NODE_REG_REGS_3_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_3_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_0_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_0_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_1_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_1_7_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_12_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_12_3_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_6_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_5_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_4_CLK
    );
  NlwBufferBlock_NODE_REG_REGS_2_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_REG_REGS_2_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_6_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_7_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_4_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_5_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_2_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_3_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_7_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_7_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_7_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_7_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_6_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_6_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(6),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_6_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_5_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_5_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s_5_0,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_5_IN
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_4_CLK
    );
  NlwBufferBlock_NODE_S_REG_tmp_s_new_4_IN : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => NODE_S_REG_tmp_s(4),
      O => NlwBufferSignal_NODE_S_REG_tmp_s_new_4_IN
    );
  NlwBufferBlock_NODE_COM_e_out_6_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_6_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_7_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_7_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_4_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_4_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_5_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_5_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_2_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_2_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_3_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_3_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_0_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_0_CLK
    );
  NlwBufferBlock_NODE_COM_e_out_1_CLK : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP,
      O => NlwBufferSignal_NODE_COM_e_out_1_CLK
    );
  NlwBlock_node_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

