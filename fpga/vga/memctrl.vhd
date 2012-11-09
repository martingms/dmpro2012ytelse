library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity memctrl is
	port (
		clk         : in std_logic;
		
		-- From control core.
		pixel_in    : in std_logic_vector(7 downto 0);
		mem_addr_in : in std_logic_vector(18 downto 0);
		frame_flag  : in std_logic;
		
		-- To and from physical vga-memory.
		mem_addr    : out std_logic_vector(19 downto 0);
		mem_we      : out std_logic;
		mem_data    : inout std_logic_vector(7 downto 0);
		
		-- To and from pixel-pusher.
		x_coord     : in std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
		y_coord     : in std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
		pixel_out   : out std_logic_vector(7 downto 0);
		vSync       : in std_logic
	);
end memctrl;

architecture Behavioral of memctrl is

	signal rw_switch       : natural range 0 to 1 := 0;
	signal pixel_addr      : std_logic_vector(18 downto 0);
	signal mem_addr_prefix : std_logic;

begin

	process(vSync)
	begin
		if vSync then -- Only change frame-buffer between frames.
			mem_addr_prefix <= frame_flag;
		end if;
	end process;

	process(x_coord, y_coord)
	begin
		pixel_addr <= conv_std_logic_vector(320 * (conv_integer(unsigned(y_coord))/2) + conv_integer(unsigned(x_coord))/2, 19);
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			rw_switch <= (rw_switch + 1) mod 2;
			if rw_switch = 0 then -- Write cycle.
				pixel_out <= mem_data;
				mem_we <= '0';
				mem_addr <= mem_addr_prefix & mem_addr_in;
				mem_data <= pixel_in;
			else -- Read cycle.
				mem_we <= '1';
				mem_addr <= mem_addr_prefix & pixel_addr;
				mem_data <= (others => 'Z');
			end if;
		end if;
	end process;

end Behavioral;
