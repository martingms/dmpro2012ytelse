library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity dma is
	generic (
		word_width : natural := 8;
		mem_addr_width : natural := 21;
		simd_rows : natural := 5;
		simd_cols : natural := 5;
		simd_addr_width : natural := 5);
		
	port (
		clk : in std_logic;
		enable : in std_logic;
		
		command : in std_logic_vector(3 downto 0);
		parameter : in std_logic_vector(mem_addr_width - 1 downto 0);
		
		mem_addr : out std_logic_vector(mem_addr_width - 1 downto 0);
		mem_data : inout std_logic_vector(word_width - 1 downto 0);
		mem_write : out std_logic;
		
		simd_addr : out std_logic_vector(simd_addr_width - 1 downto 0);
		simd_data : inout std_logic_vector(word_width - 1 downto 0);
		simd_write : out std_logic;
		
		step_s : out std_logic);
end dma;

architecture behavioral of dma is

	-- Configurable settings
	
	signal read_active : std_logic := '0';
	signal read_base_addr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	signal read_horizontal_incr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	signal read_vertical_incr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	
	signal write_active : std_logic := '0';
	signal write_base_addr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	signal write_horizontal_incr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	signal write_vertical_incr : std_logic_vector(mem_addr_width - 1 downto 0) := (others => '0');
	
	-- Internal state
	
	type state_record is record
		active : std_logic;
		row : natural range 0 to simd_rows;
		col : natural range 0 to simd_cols;
		read_addr : std_logic_vector(mem_addr_width - 1 downto 0);
		write_addr : std_logic_vector(mem_addr_width - 1 downto 0);
		secondary_action_phase : std_logic;
		memory_assert_phase : std_logic;
	end record;
	
	signal state : state_record := ('0', 0, 0, (mem_addr_width - 1 downto 0 => '0'), (mem_addr_width - 1 downto 0 => '0'), '0', '0');
	signal next_state : state_record := ('0', 0, 0, (mem_addr_width - 1 downto 0 => '0'), (mem_addr_width - 1 downto 0 => '0'), '0', '0');
	
begin

	update_signals: process (clk, enable)
	begin
		if rising_edge(clk) and enable = '1' then
			case command is
				when "0100" => read_active <= parameter(0);
				when "0101" => read_base_addr <= parameter(mem_addr_width - 1 downto 0);
				when "0110" => read_horizontal_incr <= parameter(mem_addr_width - 1 downto 0);
				when "0111" => read_vertical_incr <= parameter(mem_addr_width - 1 downto 0);
				when "1000" => write_active <= parameter(0);
				when "1001" => write_base_addr <= parameter(mem_addr_width - 1 downto 0);
				when "1010" => write_horizontal_incr <= parameter(mem_addr_width - 1 downto 0);
				when "1011" => write_vertical_incr <= parameter(mem_addr_width - 1 downto 0);
				when "0001" =>
					state.secondary_action_phase <= '0';
					state.memory_assert_phase <= '0';
					state.read_addr <= read_base_addr;
					state.write_addr <= write_base_addr;
					state.row <= 0;
					state.col <= simd_cols - 1;
					state.active <= '1';
				when others =>
					state <= next_state;
			end case;
		end if;
	end process update_signals;
	
	run_dma: process (state, enable)
		variable in_padding : std_logic;
		variable should_read : std_logic;
		variable should_write : std_logic;
		variable action : std_logic_vector(1 downto 0); -- "00" for noop, "01" for read, "10" for write
		variable cell_done : std_logic := '0';
	begin
		if enable = '1' and state.active = '1' then
			-- Clear external signals
			step_s <= '0';
			
			-- Update internal state
			next_state <= state;
			
			if state.row = 0 or state.row = simd_rows - 1 or state.col = 0 or state.col = simd_cols - 1 then
				in_padding := '1';
			else
				in_padding := '0';
			end if;
			
			should_read := read_active;
			should_write := write_active and not in_padding;
			
			if should_read = '1' and should_write = '1' then
				-- Use internal state to determine whether to read or to write
				if state.secondary_action_phase = '0' then
					action := "01"; -- Read first
					cell_done := '0'; -- Not done
				else
					action := "10"; -- Write second
					cell_done := '1'; -- Done after this
				end if;
			elsif should_read = '1' then
				action := "01";
				cell_done := '1';
			elsif should_write = '1' then
				action := "10";
				cell_done := '1';
			else
				action := "00";
				cell_done := '1';
			end if;
			
			-- Perform read action
			if action(0) = '1' then
				if state.memory_assert_phase = '0' then
					mem_addr <= state.read_addr;
					mem_data <= (others => 'Z');
					mem_write <= '0';
					
					next_state.memory_assert_phase <= '1';
				else
					simd_addr <= conv_std_logic_vector(state.row, simd_addr_width);
					simd_data <= mem_data;
					simd_write <= '1';
					
					next_state.memory_assert_phase <= '0';
					next_state.secondary_action_phase <= '1';
				end if;
			end if;
			
			-- Perform write action
			if action(1) = '1' then
				if state.memory_assert_phase = '0' then
					simd_addr <= conv_std_logic_vector(state.row, simd_addr_width);
					simd_data <= (others => 'Z');
					simd_write <= '0';
					
					mem_addr <= state.write_addr;
					mem_data <= simd_data;
					mem_write <= '1';
					
					next_state.memory_assert_phase <= '1';
				else
					mem_addr <= (others => 'Z');
					mem_write <= '0';
					
					next_state.memory_assert_phase <= '0';
				end if;
			end if;
			
			-- If done with the current cell, step counters and update addresses
			if cell_done = '1' and state.memory_assert_phase = '1' then
				if state.row = simd_rows - 1 then
					if state.col = 0 then
						next_state.active <= '0';
					else
						next_state.row <= 0;
						next_state.col <= state.col - 1;
						next_state.read_addr <= state.read_addr - read_horizontal_incr;
						next_state.write_addr <= state.write_addr - write_horizontal_incr;
					end if;
					
					step_s <= '1';
				else
					next_state.row <= state.row + 1;
					next_state.read_addr <= state.read_addr + read_vertical_incr;
					next_state.write_addr <= state.write_addr + write_vertical_incr;
				end if;
				
				next_state.secondary_action_phase <= '0';
			end if;
		end if;
	end process run_dma;

end behavioral;