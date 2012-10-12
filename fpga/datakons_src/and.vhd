----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:50 09/28/2012 
-- Design Name: 
-- Module Name:    and - Behavioral 
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
entity ANDER is
    Port ( X : in  STD_LOGIC; -- branch
           Y : in  STD_LOGIC; -- alu_zero
           R : out  STD_LOGIC); -- mux_pc_src_selector
end ANDER;

architecture Behavioral of ANDER is

begin

ANDER : process(X, Y)
	begin
		R <= X and Y;
	end process;
end Behavioral;