library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec3_8 is
	port(enable : in std_logic;
		  inputs : in std_logic_vector(2 downto 0);
		  outputs : out std_logic_vector(7 downto 0));
end Dec3_8;

architecture Behavioral of Dec3_8 is
begin
  process ( inputs , enable ) 
   begin 
	  if ( enable = '0') then 
	       outputs <= "00000000";
	  else	 
	    case inputs is 
		     when "000" => 
			    outputs <= "00000001";
			  when "001" => 
			    outputs <= "00000010";
			  when "010" =>
			    outputs <= "00000011";
			  when "011" => 
			    outputs <= "00000100";
			  when "100" => 
			    outputs <= "00000101";
			  when "101" => 
			    outputs <= "00000110";
			  when "110" => 
			    outputs <= "00000111"; 
			  when others =>
			    outputs <= "00001000";
		 end case;
		end if;
	end process;
end behavioral;