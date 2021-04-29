library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister4 is
	generic (size: positive := 4);
	port(clk, sin: in std_logic;
		  dataOut : out std_logic_vector(3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is 
	signal s_shiftReg : std_logic_vector(3 downto 0) := "0000";
	begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			s_shiftReg <= s_shiftReg(2 downto 0) & sin;
		end if;
	
	dataOut <= s_shiftReg;
	end process;
end Behavioral;