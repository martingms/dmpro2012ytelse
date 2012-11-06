----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:41:25 11/05/2012 
-- Design Name: 
-- Module Name:    state_register - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity state_register is
    Port ( 
           clk : in STD_LOGIC;
           state_in : in  STD_LOGIC_VECTOR (2 downto 0);
           state_ready : in  STD_LOGIC;
           load_program : out  STD_LOGIC;
           load_data : out  STD_LOGIC;
           execute : out  STD_LOGIC);
end state_register;

architecture Behavioral of state_register is

	signal incoming_state : std_logic_vector(2 downto 0);
	signal state : std_logic_vector(2 downto 0);

begin

	update_incoming_state: process(clk)
	begin
		if rising_edge(clk) then
			incoming_state <= state_in;
		end if;
	end process update_incoming_state;

	update_state: process(clk)
	begin
		if rising_edge(clk) then
			state <= incoming_state;
		end if;
	end process update_state;
	
	update_flags: process(clk)
	begin
		if rising_edge(clk) then
			case state is
				when "001" => -- FPGA_STATE_RUN  
					load_program <= '0';
					load_data <= '0';
					execute <= '1';
					
				when "010" => -- FPGA_STATE_LOAD_DATA   
					load_program <= '0';
					load_data <= '1';
					execute <= '0';
					
				when "100" => -- FPGA_STATE_LOAD_INSTRUCTION   
					load_program <= '1';
					load_data <= '0';
					execute <= '0';
					
				when others => -- "000" is FPGA_STATE_STOP 
					load_program <= '0';
					load_data <= '0';
					execute <= '0';
			end case;
		end if;
	end process;

end Behavioral;

