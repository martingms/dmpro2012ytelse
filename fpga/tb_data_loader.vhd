LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_data_loader IS
END tb_data_loader;
 
ARCHITECTURE behavior OF tb_data_loader IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT toplevel
    PORT(
         clk : IN  std_logic;
         prog_ram_addr : OUT  std_logic_vector(15 downto 0);
         prog_ram_data : INOUT  std_logic_vector(23 downto 0);
         prog_ram_write : OUT  std_logic;
         data_ram_addr : OUT  std_logic_vector(20 downto 0);
         data_ram_data : INOUT  std_logic_vector(7 downto 0);
         data_ram_write : OUT  std_logic;
         vga_ram_addr : OUT  std_logic_vector(18 downto 0);
         vga_ram_data : INOUT  std_logic_vector(7 downto 0);
         vga_ram_write : OUT  std_logic;
         vga_h_sync : OUT  std_logic;
         vga_v_sync : OUT  std_logic;
         vga_value : OUT  std_logic_vector(9 downto 0);
         avr_data_in : IN  std_logic_vector(23 downto 0);
         avr_data_in_ready : IN  std_logic;
         avr_data_out : OUT  std_logic_vector(7 downto 0);
         avr_interrupt : OUT  std_logic;
         state : IN  std_logic_vector(2 downto 0);
         state_ready : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal avr_data_in : std_logic_vector(23 downto 0) := (others => '0');
   signal avr_data_in_ready : std_logic := '0';
   signal state : std_logic_vector(2 downto 0) := (others => '0');
   signal state_ready : std_logic := '0';

	--BiDirs
   signal prog_ram_data : std_logic_vector(23 downto 0);
   signal data_ram_data : std_logic_vector(7 downto 0);
   signal vga_ram_data : std_logic_vector(7 downto 0);

 	--Outputs
   signal prog_ram_addr : std_logic_vector(15 downto 0);
   signal prog_ram_write : std_logic;
   signal data_ram_addr : std_logic_vector(20 downto 0);
   signal data_ram_write : std_logic;
   signal vga_ram_addr : std_logic_vector(18 downto 0);
   signal vga_ram_write : std_logic;
   signal vga_h_sync : std_logic;
   signal vga_v_sync : std_logic;
   signal vga_value : std_logic_vector(9 downto 0);
   signal avr_data_out : std_logic_vector(7 downto 0);
   signal avr_interrupt : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: toplevel PORT MAP (
          clk => clk,
          prog_ram_addr => prog_ram_addr,
          prog_ram_data => prog_ram_data,
          prog_ram_write => prog_ram_write,
          data_ram_addr => data_ram_addr,
          data_ram_data => data_ram_data,
          data_ram_write => data_ram_write,
          vga_ram_addr => vga_ram_addr,
          vga_ram_data => vga_ram_data,
          vga_ram_write => vga_ram_write,
          vga_h_sync => vga_h_sync,
          vga_v_sync => vga_v_sync,
          vga_value => vga_value,
          avr_data_in => avr_data_in,
          avr_data_in_ready => avr_data_in_ready,
          avr_data_out => avr_data_out,
          avr_interrupt => avr_interrupt,
          state => state,
          state_ready => state_ready
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 300 ns;
		
		state <= "010";
		state_ready <= '1';
      wait for 20 ns;
		state_ready <= '0';
		wait for 100 ns;
		
		avr_data_in <= "010101010101010111111111";
		avr_data_in_ready <= '1';
		wait until avr_interrupt = '1';
		
		avr_data_in <= "010101010101010100001111";
		avr_data_in_ready <= '0';
		wait until avr_interrupt = '1';
		
		avr_data_in <= "010101010101010111110000";
		avr_data_in_ready <= '1';
		wait until avr_interrupt = '1';

      wait;
   end process;

END;
