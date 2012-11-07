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

	signal big_word : std_logic_vector(23 downto 0);
	
	signal cur_addr : std_logic_vector(RAM_DATA_ADDRESS_WIDTH - 1 downto 0) := (others => '0');
	signal cur_word : natural range 0 to 2 := 0;

begin
	
	update_big_word: process(clk)
	begin
		if rising_edge(clk) then
			if avr_data_in_ready = '1' then
				big_word <= avr_data_in;
			end if;
		end if;
	end process;
	
	run_loader: process(clk)
	begin
		if rising_edge(clk) then
			if cur_word /= 0 or avr_data_in_ready = '1' then
				mem_addr <= cur_addr;
				case cur_word is
					when 0 =>	mem_data <= big_word(7 downto 0);
									cur_word <= 1;
					when 1 =>	mem_data <= big_word(15 downto 8);
									cur_word <= 2;
					when 2 =>	mem_data <= big_word(23 downto 16);
									cur_word <= 0;
				end case;
				mem_write <= '0';
				
				cur_addr <= conv_std_logic_vector(unsigned(cur_addr) + 1, RAM_DATA_ADDRESS_WIDTH);
				
				if cur_word = 2 then
					avr_interrupt <= '1';
				else
					avr_interrupt <= '0';
	 			end if;
			else
				mem_addr <= (others => '0');
				mem_data <= (others => 'Z');
				mem_write <= '1';
				avr_interrupt <= '0';
			end if;
		end if;
	end process;

end Behavioral;

