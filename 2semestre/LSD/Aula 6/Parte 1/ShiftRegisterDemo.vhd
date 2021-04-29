library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterDemo is
	generic (size: positive := 8);
	port(clk: in std_logic;
	     sin: in std_logic_vector(size-1 downto 0);
		  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterDemo;

architecture Behavioral of ShiftRegisterDemo is 
	signal s_shiftReg : std_logic_vector((size-1) downto 0);
	begin
	process(clk)
	begin
		if (rising_edge(clk)) then
		   s_shiftReg <= sin;
			s_shiftReg (size -1 downto 0) <= s_shiftReg((size-2) downto 0) & '0';
		end if;
	dataOut <= s_shiftReg;
	end process;
end Behavioral;