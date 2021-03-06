library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
port(sel : in std_logic_vector(1 downto 0);
dataIn0 : in std_logic;
dataIn1 : in std_logic;
dataIn2 : in std_logic;
dataIn3 : in std_logic;
dataOut0 : out std_logic);
end Mux4_1;

architecture Behavioral of Mux4_1 is
begin
process(sel, dataIn0, dataIn1)
begin
if (sel = "00") then
dataOut0 <= dataIn0;
elsif(sel = "01") then
dataOut0 <= dataIn1;
elsif (sel = "10") then
dataOut0 <= dataIn2;
else
dataOut0 <= dataIn3;
end if;
end process;
end Behavioral;