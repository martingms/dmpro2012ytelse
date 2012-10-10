library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity toplevel is
	port (
		clk : in std_logic;
		data : out std_logic);
end toplevel;

architecture behavioral of toplevel is
	
	component memory_from_file is
		generic (
			word_width : natural;
			address_width : natural;
			file_name : string);
		port (
			clk : in std_logic;
			write_enable : in std_logic;
			addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(word_width - 1 downto 0));
	end component memory_from_file;
	
	signal memory_data_write_enable : std_logic := '0';
	signal memory_data_addr : std_logic_vector(1 downto 0) := (others => '0');
	signal memory_data_data : std_logic_vector(7 downto 0);
	
begin

	memory_data: memory_from_file
		generic map (
			word_width => 8,
			address_width => 2,
			file_name => "memory_data.dat")
		port map (
			clk => clk,
			write_enable => memory_data_write_enable,
			addr => memory_data_addr,
			data => memory_data_data);
	
	data <= memory_data_data(0);
	
	increment_memory_data_addr: process (clk)
	begin
		if rising_edge(clk) then
			memory_data_addr <= conv_std_logic_vector(unsigned(memory_data_addr) + 1, 2);
		end if;
	end process increment_memory_data_addr;

end behavioral;