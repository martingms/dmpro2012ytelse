----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:40 09/11/2012 
-- Design Name: 
-- Module Name:    SHIFT_L2 - Behavioral 
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

entity SHIFT_L2 is
    Port ( bus_in : in  STD_LOGIC_VECTOR (31 downto 0);
           bus_out : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFT_L2;

architecture Behavioral of SHIFT_L2 is

begin

SHIFT_L2 : process (bus_in)
	begin
		bus_out (31 downto 2) <= (bus_in(29 downto 0));
		bus_out (1 downto 0) <= "00"; 
	end process;
end Behavioral;

