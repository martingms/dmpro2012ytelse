library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;

entity memory_from_file is
	generic (
		word_width : natural;
		address_width : natural;
		file_name : string);
	port (
		clk : in std_logic;
		write_enable : in std_logic;
		addr : in std_logic_vector(address_width - 1 downto 0);
		data : inout std_logic_vector(word_width - 1 downto 0));
end memory_from_file;

architecture syn of memory_from_file is

	constant word_count : natural := 2 ** address_width;
	type ram_type is array(0 to word_count - 1) of bit_vector(word_width - 1 downto 0);

	impure function init_ram_from_file (file_name : in string) return ram_type is
		file ram_file : text is in file_name;
		variable ram_file_line : line;
		variable ram : ram_type;
	begin
		for i in ram_type'range loop
			readline (ram_file, ram_file_line);
			read (ram_file_line, ram(i));
		end loop;
		return ram;
	end function;

	signal ram : ram_type := init_ram_from_file(file_name);

begin

	process (clk)
	begin
		if rising_edge(clk) then
			if write_enable = '1' then
				data <= (others => 'Z');
				ram(conv_integer(addr)) <= to_bitvector(data);
			else
				data <= to_stdlogicvector(ram(conv_integer(addr)));
			end if;
		end if;
	end process;

end syn;
