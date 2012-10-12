----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:19 09/11/2012 
-- Design Name: 
-- Module Name:    SIGN_EXTEND - Behavioral 
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

entity SIGN_EXTEND is
    Port ( bus_in : in  STD_LOGIC_VECTOR (15 downto 0);
           bus_out : out  STD_LOGIC_VECTOR (31 downto 0));
end SIGN_EXTEND;

architecture Behavioral of SIGN_EXTEND is

begin

SIGN_EXTEND : process (bus_in)
	begin
		bus_out (31 downto 16) <= (others => bus_in(15));
		bus_out (15 downto 0) <= bus_in; 
	end process;
end Behavioral;