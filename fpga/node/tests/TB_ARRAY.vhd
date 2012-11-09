--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:32:10 11/07/2012
-- Design Name:   
-- Module Name:   C:/Users/hanskrfl/Desktop/dmpro/fpga/node/tests/TB_ARRAY.vhd
-- Project Name:  TSOG
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIMD_ARRAY
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;
 
ENTITY TB_ARRAY IS
END TB_ARRAY;
 
ARCHITECTURE behavior OF TB_ARRAY IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIMD_ARRAY
    PORT(
         clk 						: in  STD_LOGIC;
         reset 					: in  STD_LOGIC;
         instr 					: in  STD_LOGIC_VECTOR(23 downto 0);
         node_step				: in  STD_LOGIC;
			data_write				: in  STD_LOGIC;
			row_sel 					: in  STD_LOGIC_VECTOR (1 downto 0);
			data_in 					: in  STD_LOGIC_VECTOR (7 downto 0);
			data_out 				: out STD_LOGIC_VECTOR (7 downto 0);
			state_out				: out STD_LOGIC
		);
    END COMPONENT;
    

   --Inputs
   signal clk 						: STD_LOGIC 							:= '0';
   signal reset 					: STD_LOGIC 							:= '0';
   signal instr 					: STD_LOGIC_VECTOR(23 downto 0) 	:= (others => '0');
   signal node_step 				: STD_LOGIC 							:= '0';
   signal data_write 			: STD_LOGIC 							:= '0';
   signal row_sel 				: STD_LOGIC_VECTOR(1 downto 0) 	:= (others => '0');
   signal data_in 				: STD_LOGIC_VECTOR(7 downto 0) 	:= (others => '0');

 	--Outputs
   signal data_out				: STD_LOGIC_VECTOR(7 downto 0);
   signal state_out 				: STD_LOGIC;

   -- Clock period definitions
   constant clk_period 			: time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIMD_ARRAY PORT MAP (
          clk 						=> clk,
          reset 					=> reset,
          instr 					=> instr,
          node_step 				=> node_step,
          data_write				=> data_write,
			 row_sel					=> row_sel,
			 data_in 				=> data_in,
          data_out				=> data_out,
          state_out 				=> state_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		

		reset 			<= '1';
      wait for clk_period*5;
		
		data_write		<= '0';
		reset 			<= '0';
      wait for clk_period;

--------------------------------------------------------
-- write col 4
--------------------------------------------------------
		data_write		<= '1';
		node_step		<= '0';
		
		row_sel			<= "00";
		data_in 			<= "00000001";		
		wait for clk_period;
		
		row_sel			<= "01";
		data_in 			<= "00000010";
		wait for clk_period;

		row_sel			<= "10";
		data_in 			<= "00000011";
		wait for clk_period;

		row_sel			<= "11";
		data_in 			<= "00000100";
		wait for clk_period;
		
--------------------------------------------------------
-- step
--------------------------------------------------------
		data_write		<= '0';
		node_step 		<= '1';	
		wait for clk_period;

--------------------------------------------------------
-- write col 3
--------------------------------------------------------
		data_write		<= '1';
		node_step		<= '0';
		
		row_sel			<= "00";
		data_in 			<= (others => '1');		
		wait for clk_period;
		
		row_sel			<= "01";
		data_in 			<= (others => '0');		
		wait for clk_period;

		row_sel			<= "10";
		data_in 			<= (others => '1');		
		wait for clk_period;

		row_sel			<= "11";
		data_in 			<= (others => '0');		
		wait for clk_period;
		
--------------------------------------------------------
-- step
--------------------------------------------------------
		data_write		<= '0';
		node_step 		<= '1';		
		wait for clk_period;

--------------------------------------------------------
-- write col 2
--------------------------------------------------------
		data_write		<= '1';
		node_step		<= '0';
		
		row_sel			<= "00";
		data_in 			<= "00000101";
		wait for clk_period;
		
		row_sel			<= "01";
		data_in 			<= "00000110";
		wait for clk_period;

		row_sel			<= "10";
		data_in 			<= "00000111";
		wait for clk_period;

		row_sel			<= "11";
		data_in 			<= "00001000";
		wait for clk_period;

--------------------------------------------------------
-- step
--------------------------------------------------------
		data_write		<= '0';
		node_step 		<= '1';		
		wait for clk_period;

--------------------------------------------------------
-- write col 1
--------------------------------------------------------
		data_write		<= '1';
		node_step		<= '0';
		
		row_sel			<= "00";
		data_in 			<= (others => '1');		
		wait for clk_period;
		
		row_sel			<= "01";
		data_in 			<= (others => '0');		
		wait for clk_period;

		row_sel			<= "10";
		data_in 			<= (others => '1');		
		wait for clk_period;

		row_sel			<= "11";
		data_in 			<= (others => '0');		
		wait for clk_period;

--------------------------------------------------------
-- step
--------------------------------------------------------
		data_write		<= '0';
		node_step 		<= '1';		
		wait for clk_period;

--------------------------------------------------------
-- do nothing
--------------------------------------------------------
		node_step 		<= '0';		
		wait for clk_period; -- WARNING!!!

--------------------------------------------------------
-- step (now we will get output read)
--------------------------------------------------------
		data_write		<= '0';
		node_step 		<= '1';		
		wait for clk_period;

--------------------------------------------------------
-- print col 1
--------------------------------------------------------
		node_step 		<= '0';
		row_sel			<= "00";
		wait for clk_period;

--------------------------------------------------------
-- print col 2
--------------------------------------------------------
		row_sel			<= "01";
		wait for clk_period;
		
--------------------------------------------------------
-- print col 3
--------------------------------------------------------
		row_sel			<= "10";
		wait for clk_period;
		--------------------------------------------------------
-- print col 4
--------------------------------------------------------
		row_sel			<= "11";
      wait;
   end process;

END;
