----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:05:41 11/05/2012 
-- Design Name: 
-- Module Name:    program_loader - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_loader is
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
end data_loader;

architecture Behavioral of data_loader is

	signal running : std_logic := '0';
	signal next_address : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0) := (others => '0');
	signal current_address : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0) := (others => '0');

begin
	
	clock_running: process(clk)
	begin
		if rising_edge(clk) then
			if avr_data_in_ready = '1' and running = '0' then
				running <= '1';
			else
				running <= '0';
			end if;
		end if;
	end process;
	
	clock_current_address: process(clk)
	begin
		if rising_edge(clk) then
			current_address <= next_address;
		end if;
	end process;
	
	update_signals: process(running, current_address, avr_data_in)
	begin
		if running = '1' then
			mem_addr <= current_address;
			mem_data <= avr_data_in(7 downto 0);
			mem_write <= '0';
			avr_interrupt <= '1';
			
			next_address <= conv_std_logic_vector(unsigned(current_address) + 1, RAM_DATA_ADDRESS_WIDTH);
		else
			mem_addr <= (others => '0');
			mem_data <= (others => 'Z');
			mem_write <= '1';
			avr_interrupt <= '0';
		end if;
	end process;

end Behavioral;

