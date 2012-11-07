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
			mem_data : inout std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
		
			avr_data_in : in std_logic_vector(23 downto 0);
			avr_data_in_ready : in std_logic;
			avr_interrupt : out std_logic
		);
	end component;
	
	component data_loader is
		port (
			clk : in std_logic;
			enable : in std_logic;
			
			mem_addr : out std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
			mem_write : out std_logic;
			mem_data : inout std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
		
			avr_data_in : in std_logic_vector(23 downto 0);
			avr_data_in_ready : in std_logic;
			avr_interrupt : out std_logic
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
	
	component test_image_loader is
		port (
			clk : in  std_logic;
			pixel_out : out std_logic_vector(7 downto 0);
			mem_addr_out : out std_logic_vector(18 downto 0)
		);
	end component;
	
	component avr_mux is
		port (
			selector : in std_logic;
			
			a_interrupt : in std_logic;
			b_interrupt : in std_logic;
			
			avr_interrupt : out std_logic);
	end component;
	
	signal clk_vga : std_logic;
	signal clk_cpu : std_logic;
	
	signal load_program : std_logic;
	signal load_data : std_logic;
	signal execute : std_logic;
	
	signal vga_mem_addr_in : std_logic_vector(18 downto 0);
	signal vga_pixel_in : std_logic_vector(7 downto 0);
	
	signal program_loader_mem_addr : std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal program_loader_mem_write : std_logic;
	signal program_loader_mem_data : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	signal program_loader_done : std_logic;
	
	signal data_loader_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal data_loader_mem_write : std_logic;
	signal data_loader_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	signal data_loader_done : std_logic;
	
	signal instruction_register_mem_addr : std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal instruction_register_mem_write : std_logic;
	signal instruction_register_mem_data : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	
	signal vga_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal vga_mem_write : std_logic;
	signal vga_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);

begin

	vga_mem_addr(20 downto 19) <= (others => '0');
	
--	vga_ram_addr <= (others => '0');
--	vga_ram_data <= (others => 'Z');
--	vga_ram_write <= '0';
	vga_value(1 downto 0) <= (others => '0');
	avr_data_out <= (others => '0');
	
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
			mem_addr_in => vga_mem_addr_in,
			
			mem_addr => vga_ram_addr(18 downto 0),
			mem_we => vga_ram_write,
			mem_data => vga_ram_data
		);
	
	program_ram_mux: ram_mux
		generic map (
			word_width => RAM_PROGRAM_WORD_WIDTH,
			address_width => RAM_PROGRAM_ADDRESS_WIDTH)
		port map (
			selector => load_program,
			
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
	
	data_ram_mux: ram_mux
		generic map (
			word_width => RAM_DATA_WORD_WIDTH,
			address_width => RAM_DATA_ADDRESS_WIDTH)
		port map (
			selector => load_data,
			
			in0_write_enable => vga_mem_write,
			in0_addr => vga_mem_addr,
			in0_data => vga_mem_data,
			
			in1_write_enable => data_loader_mem_write,
			in1_addr => data_loader_mem_addr,
			in1_data => data_loader_mem_data,
			
			out_write_enable => data_ram_write,
			out_addr => data_ram_addr,
			out_data => data_ram_data
		);
	
	inst_program_loader: program_loader
		port map (
			clk => clk_cpu,
			enable => load_program,
			
			mem_addr => program_loader_mem_addr,
			mem_write => program_loader_mem_write,
			mem_data => program_loader_mem_data,
			
			avr_data_in => avr_data_in,
			avr_data_in_ready => avr_data_in_ready,
			avr_interrupt => program_loader_done
		);
	
	inst_data_loader: data_loader
		port map (
			clk => clk_cpu,
			enable => load_data,
			
			mem_addr => data_loader_mem_addr,
			mem_write => data_loader_mem_write,
			mem_data => data_loader_mem_data,
			
			avr_data_in => avr_data_in,
			avr_data_in_ready => avr_data_in_ready,
			avr_interrupt => data_loader_done
		);
	
	inst_instruction_register: instruction_register
		port map (
			clk => clk_cpu,
			enable => execute,
			
			mem_addr => instruction_register_mem_addr,
			mem_write => instruction_register_mem_write,
			mem_data => instruction_register_mem_data
		);
		
	inst_test_image_loader: test_image_loader
		port map (
			clk => clk_cpu,
			pixel_out => vga_pixel_in,
			mem_addr_out => vga_mem_addr_in
		);
		
	inst_avr_mux: avr_mux
		port map (
			selector => load_data,
			
			a_interrupt => program_loader_done,
			b_interrupt => data_loader_done,
			
			avr_interrupt => avr_interrupt);

end behavioral;