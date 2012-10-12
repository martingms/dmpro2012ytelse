----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:21:04 05/03/2012 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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
use WORK.MIPS_CONSTANT_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alu is
	generic (N: NATURAL);
	port(
		X			: in STD_LOGIC_VECTOR(N-1 downto 0);
		Y			: in STD_LOGIC_VECTOR(N-1 downto 0);
		ALU_IN	: in ALU_INPUT;
		R			: out STD_LOGIC_VECTOR(N-1 downto 0);
		FLAGS		: out ALU_FLAGS
	);
end alu;

architecture Behavioral of alu is

	component ALU_1BIT is 
		port(
			X		: in STD_LOGIC;
			Y		: in STD_LOGIC;
			LESS	: in STD_LOGIC;
			BINVERT : in STD_LOGIC;
			CIN	: in STD_LOGIC;
			OP1	: in STD_LOGIC;
			OP0	: in STD_LOGIC;
			RES	: out STD_LOGIC;
			COUT	: out STD_LOGIC;
			SET	: out STD_LOGIC
		);
	end component ALU_1BIT;

	signal LESS_AUX : STD_LOGIC; 
	signal COUT_AUX : STD_LOGIC_VECTOR(N-1 downto 0);
	signal R_AUX	: STD_LOGIC_VECTOR(N-1 downto 0);
	
begin

	BEGIN_ALU1B:
		ALU_1BIT port map (
				X	=> X(0),
				Y	=> Y(0),
				LESS	=> LESS_AUX,
				BINVERT => ALU_IN.Op2,
				CIN	=> ALU_IN.Op2,
				OP1	=> ALU_IN.Op1,
				OP0	=> ALU_IN.Op0,					
				RES	=> R_AUX(0),
				COUT	=> COUT_AUX(0)
		);
								
	GEN_ALU:
		for i in 1 to N-2 generate
			NEXT_ALU1B:
				ALU_1BIT port map (
					X	=> X(i),
					Y	=> Y(i),
					LESS	=> '0',
					BINVERT => ALU_IN.Op2,
					CIN	=> COUT_AUX(i-1),
					OP1	=> ALU_IN.Op1,
					OP0	=> ALU_IN.Op0,
					RES	=> R_AUX(i),
					COUT	=> COUT_AUX(i)
				);
		end generate;

	LAST_ALU1B:
		ALU_1BIT port map (
			X	=> X(N-1),
			Y	=> Y(N-1),
			LESS	=> '0',
			BINVERT => ALU_IN.Op2,
			CIN	=> COUT_AUX(N-2),
			OP1	=> ALU_IN.Op1,
			OP0	=> ALU_IN.Op0,
			RES	=> R_AUX(N-1),
			COUT	=> COUT_AUX(N-1),
			SET	=> LESS_AUX
		);
			
	FLAGS.Carry <= COUT_AUX(N-1);
	FLAGS.Overflow <= COUT_AUX(N-1) xor COUT_AUX(N-2) ;
	FLAGS.Negative <= '1' when R_AUX(N-1)='1' else '0';
	FLAGS.Zero <= '1' when R_AUX= ZERO32b else '0';

	ALU_RES:
		process(ALU_IN.Op3,R_AUX,Y)
		begin
			if  ALU_IN.Op3='1' then
				R <= Y( ((N/2)-1) downto 0) & ZERO16b;
			else
				R <= R_AUX;
			end if;
		end process;

end Behavioral;

