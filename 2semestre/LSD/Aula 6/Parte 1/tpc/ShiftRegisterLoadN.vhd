library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegisterLoadN is
	generic (size: positive := 4);
	port(clk, sin: in std_logic;
	     en: in std_logic;
		  load: in std_logic;
		  reset: in std_logic;
		  dataIn : in std_logic_vector(size-1 downto 0);
		  dataOut : out std_logic_vector(size-1 downto 0));
end ShiftRegisterLoadN;

architecture Behavioral of ShiftRegisterLoadN is
 
	signal s_shiftReg : std_logic_vector((size-1) downto 0);
	
	begin
	process(clk, en)
	begin
	  if(en = '1') then 
		if (rising_edge(clk)) then
		  if (reset = '1') then
			s_shiftReg <= (others => '0');
			else
			 if(load = '1')then
							s_shiftReg <= dataIn;
						else
							s_shiftReg <= s_ShiftReg((size-2) downto 0) & sin;
						end if;
					end if;
				end if;
		end if;
	
	dataOut <= s_shiftReg;
	end process;
end Behavioral;