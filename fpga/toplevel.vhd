library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

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
	
	component state_register is
		port ( 
           clk : in STD_LOGIC;
           state_in : in  STD_LOGIC_VECTOR (2 downto 0);
           state_ready : in  STD_LOGIC;
           load_program : out  STD_LOGIC;
           load_data : out  STD_LOGIC;
           execute : out  STD_LOGIC);
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
	
	component ram_mux is
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
	end component;
	
	component program_loader is
		port (
			clk : in std_logic;
			enable : in std_logic;
			
			mem_addr : out std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
			mem_write : out std_logic;
			mem_data : inout std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0)
		);
	end component;
	
	component instruction_register is
		port (
			clk : in std_logic;
			enable : in std_logic;
			
			mem_addr : out std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
			mem_write : out std_logic;
			mem_data : inout std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
			
			instruction : out std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0)
		);
	end component;
	
	signal clk_vga : std_logic;
	signal clk_cpu : std_logic;
	
	signal load_program : std_logic;
	signal load_data : std_logic;
	signal execute : std_logic;
	
	signal block_ram_addr_in : std_logic_vector(14 downto 0) := "000000000000000";
	signal vga_addr_in : std_logic_vector(18 downto 0) := "0000000000000000000";
	signal vga_pixel_in    : std_logic_vector(7 downto 0) := "00000000";
	
	signal program_loader_mem_addr :  std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal program_loader_mem_write :  std_logic;
	signal program_loader_mem_data :  std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	
	signal instruction_register_mem_addr :  std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal instruction_register_mem_write :  std_logic;
	signal instruction_register_mem_data :  std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);

begin

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
		
	inst_state_register: state_register 
		port map ( 
           clk => clk_cpu,
           state_in => state,
           state_ready => state_ready,
           load_program => load_program,
           load_data => load_data,
           execute => execute);

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
	
	program_ram_mux: ram_mux
		generic map (
			word_width => RAM_PROGRAM_WORD_WIDTH,
			address_width => RAM_PROGRAM_ADDRESS_WIDTH)
		port map (
			selector => load_data,
			
			in0_write_enable => instruction_register_mem_write,
			in0_addr => instruction_register_mem_addr,
			in0_data => instruction_register_mem_data,
			
			in1_write_enable => program_loader_mem_write,
			in1_addr => program_loader_mem_addr,
			in1_data => program_loader_mem_data,
			
			out_write_enable => prog_ram_write,
			out_addr => prog_ram_addr,
			out_data => prog_ram_data
		);
	
	inst_program_loader: program_loader
		port map (
			clk => clk_cpu,
			enable => load_data,
			
			mem_addr => instruction_register_mem_addr,
			mem_write => instruction_register_mem_write,
			mem_data => instruction_register_mem_data
		);
	
	inst_instruction_register: instruction_register
		port map (
			clk => clk_cpu,
			enable => execute,
			
			mem_addr => program_loader_mem_addr,
			mem_write => program_loader_mem_write,
			mem_data => program_loader_mem_data
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