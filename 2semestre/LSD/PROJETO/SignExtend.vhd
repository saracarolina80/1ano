library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SignExtend is 
		generic( N : positive := 7);
		port ( wI : in std_logic_vector((N-1) downto 0); --word com 7 bits 
		       wE : out std_logic_vector(N downto 0));   -- extended word com 8 bits
end SignExtend;

architecture Behavioral of SignExtend is 
begin 
		wE <= wI(n-1) & wI(N-1 downto 0);    -- concatenate

end Behavioral;
				 
		         

