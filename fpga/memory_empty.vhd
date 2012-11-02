library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;

entity memory_empty is
	generic (
		word_width : natural;
		address_width : natural);
	port (
		clk : in std_logic;
		write_enable : in std_logic;
		addr : in std_logic_vector(address_width - 1 downto 0);
		data : inout std_logic_vector(word_width - 1 downto 0));
end memory_empty;

architecture syn of memory_empty is

	constant word_count : natural := 2 ** address_width;
	type ram_type is array(0 to word_count - 1) of bit_vector(word_width - 1 downto 0);
	signal ram : ram_type;
	
begin

	process (write_enable, addr, data)
	begin
		if write_enable = '1' then
			data <= (others => 'Z') after 10 ns;
			ram(conv_integer(addr)) <= to_bitvector(data) after 10 ns;
		else
			data <= to_stdlogicvector(ram(conv_integer(addr))) after 10 ns;
		end if;
	end process;
	
end syn;