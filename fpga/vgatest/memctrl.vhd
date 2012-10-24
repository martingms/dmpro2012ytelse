library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity memctrl is
	Port (
			clk : in std_logic;
			x_coord : in std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
			y_coord : in std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
			pixel : out std_logic_vector(7 downto 0)
			);
end memctrl;

architecture Behavioral of memctrl is

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

	signal mem_write : std_logic := '0';
	signal mem_addr : std_logic_vector(14 downto 0);

begin

	memory_data: memory_from_file
		generic map (
			word_width => 8,
			address_width => 15,
			file_name => "lenna.dat")
		port map (
			clk => clk,
			write_enable => mem_write,
			addr => mem_addr,
			data => pixel);

	process(x_coord, y_coord)
	begin
		mem_addr <= conv_std_logic_vector(160 * (conv_integer(unsigned(y_coord))/4) + conv_integer(unsigned(x_coord))/4, 15);
	end process;

end Behavioral;
