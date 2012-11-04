library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity toplevel is
	port (
		-- 50 MHz oscillator
		clk : in std_logic;
		
		-- Program RAM
		prog_ram_addr : out std_logic_vector(15 downto 0);
		prog_ram_data : inout std_logic_vector(23 downto 0);
		prog_ram_write : out std_logic;
		
		-- Data RAM
		data_ram_addr : out std_logic_vector(20 downto 0);
		data_ram_data : inout std_logic_vector(7 downto 0);
		data_ram_write : out std_logic;
		
		-- VGA RAM
		vga_ram_addr : out std_logic_vector(18 downto 0);
		vga_ram_data : inout std_logic_vector(7 downto 0);
		vga_ram_write : out std_logic;
		
		-- VGA signals
		vga_h_sync : out std_logic;
		vga_v_sync : out std_logic;
		vga_value : out std_logic_vector(9 downto 0);
		
		-- AVR data transfer
		avr_data_in : in std_logic_vector(23 downto 0);		-- FPGA_IN_[23-0]
		avr_data_in_ready : in std_logic;						-- FPGA_IN_24
		avr_data_out : out std_logic_vector(7 downto 0);	-- FPGA_IO_[7-0]
		avr_interrupt : out std_logic;							-- FPGA_IO_CTRL
		
		-- AVR state control
		state : in std_logic_vector(2 downto 0);				-- FPGA_IN_[28-26]
		state_ready : in std_logic);								-- FPGA_IN_25
		
end toplevel;

architecture behavioral of toplevel is

	component clock is
		port (
			CLKIN_IN : in std_logic;          
			CLKDV_OUT : out std_logic;
			CLKFX_OUT : out std_logic;
			CLKIN_IBUFG_OUT : out std_logic;
			CLK0_OUT : out std_logic
		);
	end component;

	component vgacontroller is
		port (
			clk        : in  std_logic;
			clk_vga    : in  std_logic;
			
			greytone   : out std_logic_vector (7 downto 0);
			hSync      : out std_logic;
			vSync      : out std_logic;
			
			pixel_in    : in std_logic_vector(7 downto 0);
			mem_addr_in : in std_logic_vector(18 downto 0);
			
			mem_addr    : out std_logic_vector(18 downto 0);
			mem_we      : out std_logic;
			mem_data    : inout std_logic_vector(7 downto 0)
		);
	end component;

	component memory_from_file is
		generic (
			word_width : natural;
			address_width : natural;
			file_name : string
		);
		port (
			clk : in std_logic;
			write_enable : in std_logic;
			addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(word_width - 1 downto 0)
		);
	end component;
	
	signal clk_vga : std_logic;
	signal clk_cpu : std_logic;
	
	signal block_ram_addr_in : std_logic_vector(14 downto 0) := "000000000000000";
	signal vga_addr_in : std_logic_vector(18 downto 0) := "0000000000000000000";
	signal vga_pixel_in    : std_logic_vector(7 downto 0) := "00000000";

begin

	prog_ram_addr <= (others => '0');
	prog_ram_data <= (others => 'Z');
	prog_ram_write <= '0';
--	data_ram_addr <= (others => '0');
	data_ram_addr(20 downto 19) <= (others => '0');
--	data_ram_data <= (others => 'Z');
--	data_ram_write <= '0';
	vga_ram_addr <= (others => '0');
	vga_ram_data <= (others => 'Z');
	vga_ram_write <= '0';
	vga_value(1 downto 0) <= (others => '0');
	avr_data_out <= (others => '0');
	avr_interrupt <= '0';
	
	inst_clock: clock
		port map (
			CLKIN_IN => clk,
			CLKDV_OUT => clk_vga,
			CLKFX_OUT => clk_cpu
		);

	inst_vgacontroller : vgacontroller
		port map (
			clk => clk_cpu,
			clk_vga => clk_vga,
			
			greytone => vga_value(9 downto 2),
			hSync => vga_h_sync,
			vSync => vga_v_sync,
			
			pixel_in => vga_pixel_in,
			mem_addr_in => vga_addr_in,
			
			mem_addr => data_ram_addr(18 downto 0),
			mem_we => data_ram_write,
			mem_data => data_ram_data
		);

	memory_data: memory_from_file
		generic map (
			word_width => 8,
			address_width => 15,
			file_name => "vga/lenna.dat"
		)
		port map (
			clk => clk_cpu,
			write_enable => '0',
			addr => block_ram_addr_in,
			data => vga_pixel_in
		);
	
	process (clk_cpu)
		variable counter : natural range 0 to 1 := 0;
		variable col : natural range 0 to 320 := 0;
		variable row : natural range 0 to 240 := 0;
	begin
		if rising_edge(clk_cpu) then
			if row /= 240 then
				if counter = 0 then
					if row < 120 and col < 160 then
						block_ram_addr_in <= conv_std_logic_vector(160 * row + col, 15);
					else
						block_ram_addr_in <= conv_std_logic_vector(0, 15);
					end if;
					
					vga_addr_in <= conv_std_logic_vector(320 * row + col, 19);
					
					col := col + 1;
					if col = 320 then
						col := 0;
						row := row + 1;
					end if;
				end if;
				counter := counter + 1;
			end if;
		end if;
	end process;

end behavioral;