----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:37:34 11/05/2012 
-- Design Name: 
-- Module Name:    test_image_loader - Behavioral 
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

entity test_image_loader is
	port (
		clk : in  std_logic;
		pixel_out : out std_logic_vector(7 downto 0);
		mem_addr_out : out std_logic_vector(18 downto 0)
	);
end test_image_loader;

architecture Behavioral of test_image_loader is

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
	
	signal block_ram_addr_in : std_logic_vector(14 downto 0) := "000000000000000";
	signal vga_pixel_out : std_logic_vector(7 downto 0);

begin

	memory_data: memory_from_file
		generic map (
			word_width => 8,
			address_width => 15,
			file_name => "vga/lenna.dat"
		)
		port map (
			clk => clk,
			write_enable => '0',
			addr => block_ram_addr_in,
			data => vga_pixel_out
		);
	
	pixel_out <= vga_pixel_out;
	
	process (clk)
		variable counter : natural range 0 to 1 := 0;
		variable col : natural range 0 to 320 := 0;
		variable row : natural range 0 to 240 := 0;
	begin
		if rising_edge(clk) then
			if row /= 240 then
				if counter = 0 then
					if row < 120 and col < 160 then
						block_ram_addr_in <= conv_std_logic_vector(160 * row + col, 15);
					else
						block_ram_addr_in <= conv_std_logic_vector(0, 15);
					end if;
					
					mem_addr_out <= conv_std_logic_vector(320 * row + col, 19);
					
					col := col + 1;
					if col = 320 then
						col := 0;
						row := row + 1;
						if row = 240 then
							row := 0;
						end if;
					end if;
				end if;
				counter := counter + 1;
			end if;
		end if;
	end process;

end Behavioral;

