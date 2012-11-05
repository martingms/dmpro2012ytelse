----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:52:53 11/05/2012 
-- Design Name: 
-- Module Name:    avr_mux - Behavioral 
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

entity avr_mux is
	port (
		selector : in std_logic;
		
		a_interrupt : in std_logic;
		b_interrupt : in std_logic;
		
		avr_interrupt : out std_logic);
end avr_mux;

architecture Behavioral of avr_mux is

begin

	MUX : process(selector, a_interrupt, b_interrupt)
	begin
		if (selector = '0') then
			avr_interrupt <= a_interrupt;
		else
			avr_interrupt <= b_interrupt;
		end if;
	end process;

end Behavioral;

