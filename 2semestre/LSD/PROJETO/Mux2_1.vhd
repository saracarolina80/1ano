library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
    generic (N : positive := 8);
	port(sel : in std_logic;
		  dataIn : in std_logic_vector((N-1) downto 0);
		  dataIn1 : in std_logic_vector((N-1) downto 0);
        y : out std_logic_vector((N-1) downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is
 
begin
	process(sel, dataIn , dataIn1)
		begin
			if (sel = '0') then
				 y <= dataIn;
			else
				 y <= dataIn1;
			end if;
	end process;
end Behavioral;