library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity toplevel is
	port (
		-- 50 MHz oscillator
		oscillator : in std_logic;
		
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

begin

end behavioral;