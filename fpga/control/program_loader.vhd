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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library WORK;
use WORK.FPGA_CONSTANT_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity program_loader is
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
end program_loader;

architecture Behavioral of program_loader is

begin

	mem_addr <= (others => '0');
	mem_data <= (others => 'Z');
	mem_write <= '1';
	
	avr_interrupt <= '0';

end Behavioral;

