----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:11 05/03/2012 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
	port(
		X	: in	std_logic;
		Y	: in	std_logic;
		CIN	: in	std_logic;
		COUT	: out	std_logic;
		R	: out	std_logic
	);
end full_adder;

architecture Behavioral of full_adder is

signal G,P : std_logic;

begin
	G <= X and Y;
	P <= X xor Y;
	COUT <= G or ( P and CIN );
	R <= P xor CIN;    
end Behavioral;

