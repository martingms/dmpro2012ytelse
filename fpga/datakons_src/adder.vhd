----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:00 05/03/2012 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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

entity adder is
generic (N: natural);    
	port(
		X	: in	STD_LOGIC_VECTOR(N-1 downto 0);
		Y	: in	STD_LOGIC_VECTOR(N-1 downto 0);
		CIN	: in	STD_LOGIC;
		COUT	: out	STD_LOGIC;
		R	: out	STD_LOGIC_VECTOR(N-1 downto 0)
	);
end adder;

architecture Behavioral of adder is

	component FULL_ADDER is
	    port(
			X		: in	STD_LOGIC;
			Y		: in	STD_LOGIC;
			CIN	: in	STD_LOGIC;
			COUT	: out	STD_LOGIC;
			R		: out	STD_LOGIC
	    );
	end component FULL_ADDER;

	signal CAUX :	STD_LOGIC_VECTOR (N-1 downto 0);

begin
	BEGIN_FA: FULL_ADDER port map (
			X	=> X(0),
			Y	=> Y(0),
			CIN	=> CIN,
			COUT	=> CAUX(0),
			R	=> R(0)
		);
	
	GEN_ADDER:
		for i in 1 to N-1 
		generate NEXT_FA: FULL_ADDER 
			port map (
					X	=> X(i),
					Y	=> Y(i),	
					CIN	=> CAUX(i-1),
					COUT=> CAUX(i),
					R	=> R(i)
			);
		end generate;
	COUT <= CAUX(N-1);

end Behavioral;

