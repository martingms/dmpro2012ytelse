----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:14:27 11/05/2012 
-- Design Name: 
-- Module Name:    instruction_register - Behavioral 
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

entity instruction_register is
	port (
		clk : in std_logic;
		enable : in std_logic;
		
		mem_addr : out std_logic_vector(RAM_PROGRAM_ADDRESS_WIDTH - 1 downto 0);
		mem_write : out std_logic;
		mem_data : inout std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0);
		
		instruction : out std_logic_vector(RAM_PROGRAM_WORD_WIDTH - 1 downto 0)
	);
end instruction_register;

architecture Behavioral of instruction_register is

begin

	mem_addr <= (others => '0');
	mem_data <= (others => '0');
	mem_write <= '0';
	
	instruction <= (others => '0');

end Behavioral;

