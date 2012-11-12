----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:16 11/09/2012 
-- Design Name: 
-- Module Name:    test_screen_copy - Behavioral 
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

entity test_screen_copy is
	port (
		clk : in  std_logic;
		disable : in  std_logic;
		pixel_in : in std_logic_vector(7 downto 0);
		pixel_out : out std_logic_vector(7 downto 0);
		mem_addr : out std_logic_vector(18 downto 0)
	);
end test_screen_copy;

architecture Behavioral of test_screen_copy is

begin

	pixel_out <= pixel_in;

	process (clk)
		variable counter : natural range 0 to 1 := 0;
		variable address : natural range 0 to 2**18-1 := 0;
	begin
		if rising_edge(clk) and disable = '0' then
			counter := counter + 1;
			if counter = 0 then
				address := address + 1;
				mem_addr <= conv_std_logic_vector(address, 19);
			end if;
		end if;
	end process;

end Behavioral;

