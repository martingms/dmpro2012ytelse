----------------------------------------------------------------------------------
-- Company: TDT4295, NTNU
-- Engineer: HANS KRISTIAN FLAATTEN
-- 
-- Create Date:		11:06:10 10/16/2012 
-- Design Name:		FPGA NODE
-- Module Name:		S REG - Behavioral 
-- Project Name:		FPGA YTELSE
-- Target Devices: 	XILINX SPARTAN 3
-- Tool versions:		ISE V11
-- Description: 
--
-- Dependencies:		WORK.FPGA_CONSTANT_PKG
--
-- Revisions
-- 0.01:					Initial version of the S REG
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- "WORK" is the current library
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

entity S_REG is
	Port (
		clk 							: in  STD_LOGIC;
		reset							: in  STD_LOGIC;
		s_swap 						: in  STD_LOGIC;
		s_step 						: in  STD_LOGIC;
		s_res 						: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
		s_in 							: in  STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
		s_new 						: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0);
		s_out 						: out STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0)
	);
end S_REG;

architecture Behavioral of S_REG is

	signal tmp_s_in				: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0) := (others => '0');
	signal tmp_s_out				: STD_LOGIC_VECTOR (NODE_SDATA_BUS-1 downto 0) := (others => '0');

begin

	S: process(clk, reset) begin	
		if reset = '1' then
			tmp_s_in					<= (others => '0');		-- input buffer
			tmp_s_out				<= (others => '0');		-- output buffer
		elsif rising_edge(clk) then

			if s_step = '1' then
				tmp_s_out			<= tmp_s_in;
				tmp_s_in				<= s_in;
			elsif s_swap = '1' then
				tmp_s_out			<= tmp_s_in;
				tmp_s_in				<= s_res;
			end if;
			
		end if;
		
		s_new							<= tmp_s_out;
		s_out							<= tmp_s_out;
	
	end process S;

end Behavioral;

