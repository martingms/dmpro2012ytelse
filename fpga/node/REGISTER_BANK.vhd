----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:  09:43:23 05/03/2012 
-- Design Name: 
-- Module Name:  REGISTER_BANK - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity REGISTER_BANK is
	port(
		clk 						:	in	 STD_LOGIC;
		reset						:	in	 STD_LOGIC;
		
		write						:	in	 STD_LOGIC_VECTOR (1 downto 0);
		
		adr0 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		adr1 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		adr2 						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		adr3						:	in	 STD_LOGIC_VECTOR (NODE_RADDR_BUS-1 downto 0);
		
		data0_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data1_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data2_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data3_in					:	in	 STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		
		data1_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0);
		data2_out				:	out STD_LOGIC_VECTOR (NODE_RDATA_BUS-1 downto 0)
	);
end REGISTER_BANK;

architecture Behavioral of REGISTER_BANK is

	constant ZERO_ADDR: STD_LOGIC_VECTOR(NODE_RADDR_BUS-1 downto 0) := (others => '0');
	constant NUM_REG : integer := 2 ** NODE_RADDR_BUS;
	type REGS_T is array (NUM_REG-1 downto 0) of STD_LOGIC_VECTOR(NODE_RDATA_BUS-1 downto 0);
	
	signal REGS : REGS_T := (others => (others =>'0'));


begin

	REGISTERS: process(clk, reset, write)
	begin
		if reset='1' then
			for i in 0 to NUM_REG-1 loop
				REGS(i) <= (others => '0');
			end loop;
		elsif rising_edge(CLK) then
			if write="10" then
				REGS(to_integer(unsigned(adr0)))<=data0_in;
				REGS(to_integer(unsigned(adr1)))<=data1_in;
				REGS(to_integer(unsigned(adr2)))<=data2_in;
				REGS(to_integer(unsigned(adr3)))<=data3_in;
			elsif write="01" then
				REGS(to_integer(unsigned(adr0)))<=data0_in;
			end if;
		end if;
	end process REGISTERS;

	data1_out <= (others=>'0') when adr1=ZERO_ADDR else REGS(to_integer(unsigned(adr1)));
	data2_out <= (others=>'0') when adr2=ZERO_ADDR else REGS(to_integer(unsigned(adr2)));

end Behavioral;

