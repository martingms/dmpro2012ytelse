----------------------------------------------------------------------------------
-- Company: TDT4295, NTNU
-- Engineer: HANS KRISTIAN FLAATTEN
-- 
-- Create Date:		07:25:00 10/15/2012
-- Design Name:		FPGA NODE
-- Module Name:		I/O CONTROLLER - Behavioral 
-- Project Name:		FPGA YTELSE
-- Target Devices: 	XILINX SPARTAN 3
-- Tool versions:		ISE V11
-- Description: 
--
-- Dependencies:		WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01:					Initial version of the I/O Controller
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity IO_CONTROLLER is
	Port (
		clk 							: in  STD_LOGIC;
		reset							: in  STD_LOGIC;
		
		set_state					: in  STD_LOGIC;
		reg_src						: in  STD_LOGIC;
		com_out						: in  STD_LOGIC;
		
		reg_data						: in  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		
		n_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_in							: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		
		n_out							: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		s_out							: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		e_out							: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
		w_out							: out  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);

		state							: out  STD_LOGIC_VECTOR (1 downto 0);

		data0							: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data1							: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data2							: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data3							: out  STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
	);
end IO_CONTROLLER;

architecture Behavioral of IO_CONTROLLER is

	signal tmp_n					: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_s					: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_e					: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_w					: STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0)		:= (others => '0');

	signal tmp_state				: STD_LOGIC_VECTOR (1 downto 0)							:= "00";

	signal tmp_data0				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_data1				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_data2				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)		:= (others => '0');
	signal tmp_data3				: STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)		:= (others => '0');	
begin	CONTROLLER: process (clk, reset)
	begin
		if (reset = '1') then
			tmp_n						<= (others => '0');
			tmp_s						<= (others => '0');
			tmp_e						<= (others => '0');
			tmp_w						<= (others => '0');
			
			tmp_state				<= "00";

			tmp_data0				<= (others => '0');
			tmp_data1				<= (others => '0');
			tmp_data2				<= (others => '0');
			tmp_data3				<= (others => '0');			
		elsif rising_edge(clk) then
			-- write alu res to register
			-- NB: alu res is written to data2!
			if (reg_src = '1') then
				tmp_data2			<= reg_data;			-- alu res
			else
				tmp_data2			<= e_in;					-- east node data in
			end if;
			
			tmp_data0				<= n_in;
			tmp_data1				<= s_in;
			tmp_data3				<= w_in;
			
			if (com_out = '1') then
				-- send reg_data to all nodes
				tmp_n					<= reg_data;
				tmp_s					<= reg_data;
				tmp_e					<= reg_data;
				tmp_w					<= reg_data;
			else
				-- 4 way data transfer
				tmp_n					<= w_in;
				tmp_s					<= e_in;
				tmp_e					<= n_in;
				tmp_w					<= s_in;
			end if;	
			
			-- set new state 
			-- based on lower two bits of reg_data in
			if (set_state = '1') then
				tmp_state 			<= reg_data(1 downto 0);
			end if;
			
		end if;
		
		n_out							<= tmp_n;
		s_out							<= tmp_s;
		e_out							<= tmp_e;
		w_out							<= tmp_w;

		state							<= tmp_state;
		
		data0							<= tmp_data0;
		data0							<= tmp_data1;
		data0							<= tmp_data2;
		data0							<= tmp_data3;
	
	end process CONTROLLER;

end Behavioral;

