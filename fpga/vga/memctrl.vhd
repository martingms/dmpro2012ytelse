library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity memctrl is
	port (
		clk         : in std_logic;
		
		pixel_in    : in std_logic_vector(7 downto 0);
		mem_addr_in : in std_logic_vector(18 downto 0);
		
		mem_addr    : out std_logic_vector(18 downto 0);
		mem_we      : out std_logic;
		mem_data    : inout std_logic_vector(7 downto 0);
		
		x_coord     : in std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
		y_coord     : in std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
		pixel_out   : out std_logic_vector(7 downto 0)
	);
end memctrl;

architecture Behavioral of memctrl is

	signal rw_switch : natural range 0 to 1 := 0;
	signal pixel_addr : std_logic_vector(18 downto 0);

begin

	process(x_coord, y_coord)
	begin
		pixel_addr <= conv_std_logic_vector(160 * (conv_integer(unsigned(y_coord))/2) + conv_integer(unsigned(x_coord))/2, 19);
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rw_switch = 0 then
				pixel_out <= mem_data;
			end if;
			rw_switch <= (rw_switch + 1) mod 2;
			if rw_switch = 0 then
				mem_we <= '0';
				mem_addr <= mem_addr_in;
				mem_data <= pixel_in;
			else
				mem_we <= '1';
				mem_addr <= pixel_addr;
				mem_data <= (others => 'Z');
			end if;
		end if;
	end process;

--	process(rw_switch, mem_addr_in, pixel_in, pixel_addr)
--	begin
--
--	end process;

end Behavioral;
