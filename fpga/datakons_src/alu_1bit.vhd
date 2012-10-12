----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:02 05/03/2012 
-- Design Name: 
-- Module Name:    alu_1bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu_1bit is

	port(
			X	: in STD_LOGIC;
			Y	: in STD_LOGIC;
			LESS	: in STD_LOGIC;
			BINVERT : in STD_LOGIC;
			CIN	: in STD_LOGIC;
			OP1	: in STD_LOGIC;
			OP0	: in STD_LOGIC;
			RES	: out STD_LOGIC;
			COUT	: out STD_LOGIC;
			SET	: out STD_LOGIC
	);
	
end alu_1bit;

architecture Behavioral of alu_1bit is

	component FULL_ADDER is   
		port(
			X	: in	STD_LOGIC;
			Y	: in	STD_LOGIC;
			CIN	: in	STD_LOGIC;
			COUT	: out	STD_LOGIC;
			R	: out	STD_LOGIC
		);
	end component FULL_ADDER;

	signal NEW_Y			: STD_LOGIC;
	signal R0,R1,R2,R3	: STD_LOGIC;
	signal RES_AUX			: STD_LOGIC;
	
begin

	MUX_BINV:
		process(BINVERT,Y) is
		begin
			if BINVERT='0' then
				NEW_Y <= Y;
			else
				NEW_Y <= not Y;
			end if;
		end process MUX_BINV;

	R0 <= X and NEW_Y;
	R1 <= X or NEW_Y;

	FULLADDER_ALU:
		FULL_ADDER port map(
			X	=> X,
			Y	=> NEW_Y,
			CIN	=> CIN,
			COUT	=> COUT,
			R	=> R2
		);

	R3 <= LESS;

	MUX_RES_ALU:
		process(OP1,OP0,R0,R1,R2,R3) is
		begin
			if (OP1 = '0' and OP0 = '0') then
				RES_AUX <= R0;
			elsif (OP1 = '0' and OP0 = '1') then
				RES_AUX <= R1;
			elsif (OP1 = '1' and OP0 = '0') then
				RES_AUX <= R2;
			elsif (OP1 = '1' and OP0 = '1') then
				RES_AUX <= R3;
			else 
				RES_AUX <= '0';
			end if;
		end process MUX_RES_ALU;

	RES <= RES_AUX;
	SET <= R2;
	
end Behavioral;

