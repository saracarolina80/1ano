library IEEE;
use IEEE.STD_LOGIC_1164.all;
    -- Entidade sem portos
    entity SeqDetFSM_Tb is
    end SeqDetFSM_Tb;
architecture Stimulus of SeqDetFSM_Tb is
    -- Sinais para ligar às entradas da uut
    signal s_reset : std_logic;
    signal s_clk : std_logic;
    signal s_zout : std_logic;
    signal s_xIn : std_logic;
begin
    -- Instanciação da Unit Under Test (UUT)
    uut: entity work.SeqDetFSM(MealyArch)
    port map(reset => s_reset,
                clk => s_clk,
                xIn => s_xIn,
                zOut => s_zout);
    --Processo Clock
    clock_proc : process
        begin
            s_clk <= '0'; wait for 50ns;
            s_clk <= '1'; wait for 50ns;
        end process;

    --Process stim
stim_proc : process
        begin
        s_reset <= '1';
        s_xIn <= '1';
        wait for 100 ns;
        s_xIn <= '0';
        wait for 25 ns;
        s_xIN <= '0';
        wait for 100 ns;
        s_xIn <= '1';
        wait for 100 ns;
        s_xIn <= '0';
        wait for 100 ns;
        s_xIn <= '0';
        wait for 100 ns;
        s_reset <= '0';
        s_xIn <= '1';
        wait for 100 ns;
        s_xIn <= '0';
        wait for 25 ns;
        s_XIN <= '0';
        wait for 100 ns;
        s_xIn <= '1';
        wait for 100 ns;
        s_xIn <= '0';
        s_reset <= '0';
        wait for 100 ns;
        s_reset <= '0';
        wait for 100 ns;
    end process;
end Stimulus;