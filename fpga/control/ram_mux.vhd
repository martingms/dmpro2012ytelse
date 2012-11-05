----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:57:07 11/05/2012 
-- Design Name: 
-- Module Name:    ram_mux - Behavioral 
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

entity ram_mux is
	generic (
		word_width : natural;
		address_width : natural);
	port (
		selector : in std_logic;
		
		in0_write_enable : in std_logic;
		in0_addr : in std_logic_vector(address_width - 1 downto 0);
		in0_data : inout std_logic_vector(word_width - 1 downto 0);
		
		in1_write_enable : in std_logic;
		in1_addr : in std_logic_vector(address_width - 1 downto 0);
		in1_data : inout std_logic_vector(word_width - 1 downto 0);
		
		out_write_enable : out std_logic;
		out_addr : out std_logic_vector(address_width - 1 downto 0);
		out_data : inout std_logic_vector(word_width - 1 downto 0));
end ram_mux;

architecture Behavioral of ram_mux is

begin

	MUX : process(selector, in0_write_enable, in0_addr, in0_data, in1_write_enable, in1_addr, in1_data, out_data)
	begin
		if (selector = '0') then
			out_write_enable <= in0_write_enable;
			out_addr <= in0_addr;
			out_data <= in0_data; -- Does this work?
		else
			out_write_enable <= in1_write_enable;
			out_addr <= in1_addr;
			out_data <= in1_data;
		end if;
	end process;

end Behavioral;

