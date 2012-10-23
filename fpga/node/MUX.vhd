----------------------------------------------------------------------------------
-- Company				: TDT4295, NTNU
-- Engineer				: HANS KRISTIAN FLAATTEN
-- 
-- Create Date			: 13:03:17 10/12/2012 
-- Design Name			: FPGA NODE
-- Module Name			: MUX - Behavioral 
-- Project Name		: FPGA YTELSE
-- Target Devices		: XILINX SPARTAN 3
-- Tool versions		: ISE V11
-- Description			: 
--
-- Dependencies		: None
--
-- Revisions
-- 0.02:  				Component modified for Dm.Pro
-- 0.01:  				File created in Data.kon
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
	generic (N : NATURAL := 8);
	Port ( 
		selector						: in  STD_LOGIC;
		bus_in0 						: in  STD_LOGIC_VECTOR (N-1 downto 0);
		bus_in1 						: in  STD_LOGIC_VECTOR (N-1 downto 0);
		bus_out 						: out STD_LOGIC_VECTOR (N-1 downto 0)
	);
end MUX;

architecture Behavioral of MUX is

begin

MUX : process(selector, bus_in0, bus_in1)
	begin
		if (selector = '0') then
			bus_out <= bus_in0;
		else
			bus_out <= bus_in1;
		end if;
	end process;
end Behavioral;