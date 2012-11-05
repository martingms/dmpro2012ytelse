library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity vgacontroller is
	port (
		clk        : in  STD_LOGIC;
		clk_vga    : in  STD_LOGIC;
		greytone   : out STD_LOGIC_VECTOR (7 downto 0);
		hSync      : out STD_LOGIC;
		vSync      : out STD_LOGIC;
		
		pixel_in    : in std_logic_vector(7 downto 0);
		mem_addr_in : in std_logic_vector(18 downto 0);
		
		mem_addr    : out std_logic_vector(18 downto 0);
		mem_we      : out std_logic;
		mem_data    : inout std_logic_vector(7 downto 0)
	);
end vgacontroller;

architecture Behavioral of vgacontroller is

	component pixelpusher is
		generic (
			hRez        : natural := 640;
			hStartSync  : natural := 656;
			hEndSync    : natural := 752;
			hMaxCount   : natural := 800;
			hsyncActive : std_logic := '0';

			vRez        : natural := 480;
			vStartSync  : natural := 490;
			vEndSync    : natural := 492;
			vMaxCount   : natural := 525;
			vsyncActive : std_logic := '0'
		);

		port (
			pixelClock : in  STD_LOGIC;
			greytone   : out STD_LOGIC_VECTOR (7 downto 0);
			hSync      : out STD_LOGIC;
			vSync      : out STD_LOGIC;
			x_next     : out std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
			y_next     : out std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
			pixel_next : in std_logic_vector(7 downto 0)
		);
	end component;

	component memctrl is
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
	end component;

	signal x_next : std_logic_vector(9 downto 0); -- Enough to represent 640 pixels
	signal y_next : std_logic_vector(8 downto 0); -- Enough to represent 480 pixels
	signal pixel_next : std_logic_vector(7 downto 0);

begin

	inst_pixelpusher : pixelpusher
		port map (
			pixelClock => clk_vga,
			greytone => greytone,
			hSync => hSync,
			vSync => vSync,
			x_next => x_next,
			y_next => y_next,
			pixel_next => pixel_next
		);

	inst_memctrl : memctrl
		port map (
			clk => clk,
			
			pixel_in => pixel_in,
			mem_addr_in => mem_addr_in,
			
			mem_addr => mem_addr,
			mem_we => mem_we,
			mem_data => mem_data,
			
			x_coord => x_next,
			y_coord => y_next,
			pixel_out => pixel_next
		);

end Behavioral;
