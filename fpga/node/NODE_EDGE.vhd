----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 13:11:01 11/04/2012 
-- Design Name			: FPGA NODE EDGE
-- Module Name			: node - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			:
--
-- Dependencies		: WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01:  				File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity NODE_EDGE is
	Port (
		clk 							: in  STD_LOGIC;
		reset 						: in  STD_LOGIC;
		
		instr 						: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
		-- node_state 				: out STD_LOGIC;
		
		n_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_in							: in STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);

		n_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_out							: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		
		-- SDATA
		step 							: in  STD_LOGIC;
		sr_in							: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
		sr_out						: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
	);
end NODE_EDGE;

architecture Behavioral of NODE_EDGE is
----------------------------------------------------------------------------------
--	NODE COMMINICATION
----------------------------------------------------------------------------------
	signal tmp_n_out				: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)	:= (others => '0');
	signal tmp_s_out				: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)	:= (others => '0');
	signal tmp_e_out				: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)	:= (others => '0');
	signal tmp_w_out				: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)	:= (others => '0');

----------------------------------------------------------------------------------
--	INSTRUCTION DECODER
----------------------------------------------------------------------------------
	signal ctrl_s_swap			: STD_LOGIC													:= '0';

----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	component S_REG is
		Port (
			clk 						: in  STD_LOGIC;
			reset						: in  STD_LOGIC;
			s_swap 					: in  STD_LOGIC;
			s_step 					: in  STD_LOGIC;
			s_res 					: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_in 						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_new 					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
			s_out 					: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
		);
	end component;
		
	signal sr_new					: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0) := (others => '0');
	signal sr_data					: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0) := (others => '0');

begin

----------------------------------------------------------------------------------
--	SOURCE DATA REGISTER
----------------------------------------------------------------------------------
	NODE_S_REG : S_REG port map (
		clk 							=> clk,
		reset							=> reset,
		s_swap						=> ctrl_s_swap,
		s_res							=> sr_data,
		s_new							=> sr_new,

		s_step						=> step,
		s_in							=> sr_in,
		s_out							=> sr_out
	);

	process (clk, reset, instr, tmp_n_out, tmp_s_out, tmp_e_out, tmp_w_out) begin
		if (reset = '1') then
			tmp_n_out				<= (others => '0');
			tmp_s_out				<= (others => '0');
			tmp_e_out				<= (others => '0');
			tmp_w_out				<= (others => '0');
			ctrl_s_swap				<= '0';
		elsif (instr(23) = '1') then
			ctrl_s_swap				<= '0';
		else
			CASE instr(21 downto 19) IS
				-- S-data swap
				WHEN  NODE_INSTR_OP_S  =>
					ctrl_s_swap 	<= '1';
					sr_data			<= sr_new; -- check this
				
				-- Send source data
				WHEN  NODE_INSTR_OP_M_SEND  =>
					ctrl_s_swap 	<= '0';
					
					tmp_n_out		<= sr_data;
					tmp_s_out		<= sr_data;
					tmp_e_out		<= sr_data;
					tmp_w_out		<= sr_data;
				
				-- Forward data
				WHEN  NODE_INSTR_OP_M_FWRD  =>
					ctrl_s_swap 	<= '0';
					
					tmp_n_out		<= e_in;
					tmp_s_out		<= w_in;
					tmp_e_out		<= n_in;
					tmp_w_out		<= s_in;
				
				-- Do nothing
				WHEN OTHERS =>
					ctrl_s_swap		<= '0';
			END CASE;
		end if;
		
		n_out							<= tmp_n_out;
		s_out							<= tmp_s_out;
		e_out							<= tmp_e_out;
		w_out							<= tmp_w_out;
	end process;
	
end Behavioral;

