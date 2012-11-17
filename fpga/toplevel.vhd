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
		avr_interrupt : out std_logic;							-- FPGA_IO_CTRL
		
		-- AVR state control
		state : in std_logic_vector(2 downto 0));				-- FPGA_IN_[28-26]
		
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
           load_program : out  STD_LOGIC;
           load_data : out  STD_LOGIC;
           execute : out  STD_LOGIC;
           reset : out  STD_LOGIC);
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
			reset : in std_logic;
			
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
			reset : in std_logic;
			
			mem_addr : out std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
			mem_write : out std_logic;
			mem_data : inout std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
		
			avr_data_in : in std_logic_vector(7 downto 0);
			avr_data_in_ready : in std_logic;
			avr_interrupt : out std_logic
		);
	end component;
	
	component instruction_register is
		port (
			clk : in std_logic;
			enable : in std_logic;
			reset : in std_logic;
			
			mem_addr : out std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
			mem_write : out std_logic;
			mem_data : inout std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
			
			instruction : out std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0)
		);
	end component;
	
	component avr_mux is
		port (
			selector : in std_logic;
			
			a_interrupt : in std_logic;
			b_interrupt : in std_logic;
			
			avr_interrupt : out std_logic);
	end component;
	
	component dma is
		generic (
			word_width : natural := 8;
			mem_addr_width : natural := 21;
			simd_rows : natural := 5;
			simd_cols : natural := 5;
			simd_addr_width : natural := 5);
			
		port (
			clk : in std_logic;
			enable : in std_logic;
			reset : in std_logic;
			
			command : in std_logic_vector(3 downto 0);
			parameter : in std_logic_vector(mem_addr_width - 1 downto 0);
			
			mem_addr : out std_logic_vector(mem_addr_width - 1 downto 0);
			mem_data : inout std_logic_vector(word_width - 1 downto 0);
			mem_write : out std_logic;
			
			simd_addr : out std_logic_vector(simd_addr_width - 1 downto 0);
			simd_data_in : in std_logic_vector(word_width - 1 downto 0);
			simd_data_out : out std_logic_vector(word_width - 1 downto 0);
			simd_write : out std_logic;
			
			active : out std_logic;
			step_s : out std_logic);
	end component;
	
	component SIMD_ARRAY is
		 Port (
			clk 							: in  STD_LOGIC;
			reset 						: in  STD_LOGIC;
			instr 						: in  STD_LOGIC_VECTOR (NODE_IDATA_BUS-1 downto 0);
			node_step 					: in  STD_LOGIC;
			
			data_write					: in  STD_LOGIC;
			row_sel 						: in  STD_LOGIC_VECTOR (1 downto 0);
			data_in 						: in  STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0);
			data_out 					: out STD_LOGIC_VECTOR (NODE_DDATA_BUS-1 downto 0) := (others => '0');
			state_out					: out STD_LOGIC
		);
	end component;
	
	component CONTROL is
		Port (
			clk 							: in  STD_LOGIC;
			reset 						: in  STD_LOGIC;
			
			state							: in STD_LOGIC; -- simd array state
			
			idata							: in  STD_LOGIC_VECTOR(CTRL_IDATA_BUS-1 downto 0);
			iaddr							: out STD_LOGIC_VECTOR(CTRL_IADDR_BUS-1 downto 0);

			ddata							: in  STD_LOGIC_VECTOR(CTRL_DDATA_BUS-1 downto 0);
			daddr							: out STD_LOGIC_VECTOR(CTRL_DADDR_BUS-1 downto 0);
			--daddr_write				: out STD_LOGIC;
			
			vdata							: out STD_LOGIC_VECTOR(CTRL_VDATA_BUS-1 downto 0);
			vaddr							: out STD_LOGIC_VECTOR(CTRL_VADDR_BUS-1 downto 0);
			--vaddr_write				: out STD_LOGIC;
			
			dma_cmd						: out STD_LOGIC_VECTOR(CTRL_DMA_CMD_BUS-1 downto 0);
			dma_params					: out STD_LOGIC_VECTOR(CTRL_DMA_DAT_BUS-1 downto 0)
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
	
	component memory_empty is
		generic (
			word_width : natural;
			address_width : natural
		);
		port (
			clk : in std_logic;
			write_enable : in std_logic;
			addr : in std_logic_vector(address_width - 1 downto 0);
			data : inout std_logic_vector(word_width - 1 downto 0)
		);
	end component;
	
	signal clk_vga : std_logic;
	signal clk_mem : std_logic;
	signal clk_cpu : std_logic;
	
	signal load_program : std_logic;
	signal load_data : std_logic;
	signal execute : std_logic;
	signal reset : std_logic;
	
	signal block_prog_ram_write : std_logic;
	signal block_prog_ram_addr : std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal block_prog_ram_data : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	
	signal program_loader_mem_addr : std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal program_loader_mem_write : std_logic;
	signal program_loader_mem_data : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	signal program_loader_done : std_logic;
	
	signal data_loader_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal data_loader_mem_write : std_logic;
	signal data_loader_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	signal data_loader_done : std_logic;
	
	signal instruction_register_mem_addr : std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
	signal instruction_register_mem_data : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	signal instruction_register_mem_data_filtered : std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
	
	signal control_core_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal control_core_mem_write : std_logic;
	signal control_core_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	
	signal control_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal control_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	
	signal dma_active : std_logic;
	signal dma_command : std_logic_vector(3 downto 0);
	signal dma_parameter : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	
	signal dma_mem_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0);
	signal dma_mem_write : std_logic;
	signal dma_mem_data : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	
	signal dma_step_s : std_logic;
	signal dma_simd_addr : std_logic_vector(1 downto 0);
	signal dma_simd_write : std_logic;
	signal dma_simd_data_in : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	signal dma_simd_data_out : std_logic_vector(RAM_DATA_WORD_WIDTH - 1 downto 0);
	
	signal vga_addr_in : std_logic_vector(RAM_VGA_ADDRESS_WIDTH - 1 downto 0);
	signal vga_pixel_in : std_logic_vector(RAM_VGA_WORD_WIDTH - 1 downto 0);
	signal vga_pixel_out : std_logic_vector(7 downto 0);
	
	signal simd_array_state : std_logic;
begin
	
	inst_clock: clock
		port map (
			CLKIN_IN => clk,
			CLKDV_OUT => clk_vga,
			CLKFX_OUT => clk_cpu,
			CLK0_OUT => clk_mem
		);
		
	inst_state_register: state_register 
		port map ( 
           clk => clk_cpu,
           state_in => state,
           load_program => load_program,
           load_data => load_data,
           execute => execute,
			  reset => reset);

	inst_vgacontroller : vgacontroller
		port map (
			clk => clk_mem,
			clk_vga => clk_vga,
			
			greytone => vga_pixel_out,
			hSync => vga_h_sync,
			vSync => vga_v_sync,
			
			pixel_in => vga_pixel_in,
			mem_addr_in => vga_addr_in,
			
			mem_addr => vga_ram_addr,
			mem_we => vga_ram_write,
			mem_data => vga_ram_data
		);
	
	vga_value(9 downto 5) <= vga_pixel_out(7 downto 3);
	vga_value(4 downto 3) <= dma_simd_addr;
	vga_value(2) <= dma_step_s;
--	vga_value(9 downto 3) <= control_core_mem_addr(6 downto 0);
--	vga_value(2) <= control_core_mem_write;
	vga_value(1 downto 0) <= (others => '0');
	
	program_ram_mux: ram_mux
		generic map (
			word_width => RAM_PROGRAM_WORD_WIDTH,
			address_width => RAM_PROGRAM_ADDRESS_WIDTH)
		port map (
			selector => load_program,
			
			in0_write_enable => '1',
			in0_addr => instruction_register_mem_addr,
			in0_data => instruction_register_mem_data,
			
			in1_write_enable => program_loader_mem_write,
			in1_addr => program_loader_mem_addr,
			in1_data => program_loader_mem_data,
			
			out_write_enable => prog_ram_write,
			out_addr => prog_ram_addr,
			out_data => prog_ram_data
--			out_write_enable => block_prog_ram_write,
--			out_addr => block_prog_ram_addr,
--			out_data => block_prog_ram_data
		);

--	prog_ram_addr <= (others => '0');
--	prog_ram_data <= (others => 'Z');
--	prog_ram_write <= '1';
	
	data_ram_mux: ram_mux
		generic map (
			word_width => RAM_DATA_WORD_WIDTH,
			address_width => RAM_DATA_ADDRESS_WIDTH)
		port map (
			selector => load_data,
			
			in0_write_enable => control_core_mem_write,
			in0_addr => control_core_mem_addr,
			in0_data => control_core_mem_data,
			
			in1_write_enable => data_loader_mem_write,
			in1_addr => data_loader_mem_addr,
			in1_data => data_loader_mem_data,
			
			out_write_enable => data_ram_write,
			out_addr => data_ram_addr,
			out_data => data_ram_data
		);
	
	control_core_ram_mux: ram_mux
		generic map (
			word_width => RAM_DATA_WORD_WIDTH,
			address_width => RAM_DATA_ADDRESS_WIDTH)
		port map (
			selector => dma_active,
			
			in0_write_enable => '1',
			in0_addr => control_mem_addr,
			in0_data => control_mem_data,
			
			in1_write_enable => dma_mem_write,
			in1_addr => dma_mem_addr,
			in1_data => dma_mem_data,
			
			out_write_enable => control_core_mem_write,
			out_addr => control_core_mem_addr,
			out_data => control_core_mem_data
		);
	
	inst_program_loader: program_loader
		port map (
			clk => clk_mem,
			enable => load_program,
			reset => reset,
			
			mem_addr => program_loader_mem_addr,
			mem_write => program_loader_mem_write,
			mem_data => program_loader_mem_data,
			
			avr_data_in => avr_data_in,
			avr_data_in_ready => avr_data_in_ready,
			avr_interrupt => program_loader_done
		);
	
	inst_data_loader: data_loader
		port map (
			clk => clk_mem,
			enable => load_data,
			reset => reset,
			
			mem_addr => data_loader_mem_addr,
			mem_write => data_loader_mem_write,
			mem_data => data_loader_mem_data,
			
			avr_data_in => avr_data_in(11 downto 4),
			avr_data_in_ready => avr_data_in_ready,
			avr_interrupt => data_loader_done
		);
		
	inst_avr_mux: avr_mux
		port map (
			selector => load_data,
			
			a_interrupt => program_loader_done,
			b_interrupt => data_loader_done,
			
			avr_interrupt => avr_interrupt);
	
	inst_dma: dma
		generic map (
			word_width => RAM_DATA_WORD_WIDTH,
			mem_addr_width => RAM_DATA_ADDRESS_WIDTH,
			simd_rows => 4,
			simd_cols => 4,
			simd_addr_width => 2)
		port map (
			clk => clk_cpu,
			enable => execute,
			reset => reset,
			
			command => dma_command,
--			command => (others => '0'),
			parameter => dma_parameter,
			
			mem_addr => dma_mem_addr,
			mem_data => dma_mem_data,
			mem_write => dma_mem_write,
			
			simd_addr => dma_simd_addr,
			simd_data_in => dma_simd_data_in,
			simd_data_out => dma_simd_data_out,
			simd_write => dma_simd_write,
			
			active => dma_active,
			step_s => dma_step_s);
	
	inst_simd_array: SIMD_ARRAY
		port map (
			clk => clk_cpu,
			reset => reset,
			instr => instruction_register_mem_data,
--			instr => (others => '0'),
			node_step => dma_step_s,

			data_write => dma_simd_write,
			row_sel => dma_simd_addr,
			data_in => dma_simd_data_out,
			data_out => dma_simd_data_in,
			state_out => simd_array_state);
	
	filter_instructions: process (execute, instruction_register_mem_data)
	begin
		if execute = '1' then
			instruction_register_mem_data_filtered <= instruction_register_mem_data;
		else
			instruction_register_mem_data_filtered <= (others => '0');
		end if;
	end process filter_instructions;
	
	inst_control: CONTROL
		port map (
			clk => clk_cpu,
			reset => reset,

			state => simd_array_state,

			idata => instruction_register_mem_data_filtered,
			iaddr => instruction_register_mem_addr,

			ddata => control_mem_data,
			daddr => control_mem_addr,

			vdata => vga_pixel_in,
			vaddr => vga_addr_in,

			dma_cmd => dma_command,
			dma_params => dma_parameter);
	
--	block_prog_ram: memory_empty
--		generic map (
--			word_width => RAM_PROGRAM_WORD_WIDTH,
--			address_width => 13
--		)
--		port map (
--			clk => clk_cpu,
--			write_enable => block_prog_ram_write,
--			addr => block_prog_ram_addr(12 downto 0),
--			data => block_prog_ram_data
--		);
	
--	block_prog_ram: memory_from_file
--		generic map (
--			word_width => RAM_PROGRAM_WORD_WIDTH,
--			address_width => 8,
--			file_name => "control/test_program.dat"
--		)
--		port map (
--			clk => clk_cpu,
--			write_enable => block_prog_ram_write,
--			addr => block_prog_ram_addr(7 downto 0),
--			data => block_prog_ram_data
--		);

end behavioral;