-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/03/2020 16:24:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SignExtend
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SignExtend_vhd_vec_tst IS
END SignExtend_vhd_vec_tst;
ARCHITECTURE SignExtend_arch OF SignExtend_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL wE : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wI : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT SignExtend
	PORT (
	wE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	wI : IN STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SignExtend
	PORT MAP (
-- list connections between master ports and signals
	wE => wE,
	wI => wI
	);
-- wI[6]
t_prcs_wI_6: PROCESS
BEGIN
	wI(6) <= '1';
WAIT;
END PROCESS t_prcs_wI_6;
-- wI[5]
t_prcs_wI_5: PROCESS
BEGIN
	wI(5) <= '0';
WAIT;
END PROCESS t_prcs_wI_5;
-- wI[4]
t_prcs_wI_4: PROCESS
BEGIN
	wI(4) <= '0';
WAIT;
END PROCESS t_prcs_wI_4;
-- wI[3]
t_prcs_wI_3: PROCESS
BEGIN
	wI(3) <= '0';
WAIT;
END PROCESS t_prcs_wI_3;
-- wI[2]
t_prcs_wI_2: PROCESS
BEGIN
	wI(2) <= '0';
WAIT;
END PROCESS t_prcs_wI_2;
-- wI[1]
t_prcs_wI_1: PROCESS
BEGIN
	wI(1) <= '0';
WAIT;
END PROCESS t_prcs_wI_1;
-- wI[0]
t_prcs_wI_0: PROCESS
BEGIN
	wI(0) <= '1';
WAIT;
END PROCESS t_prcs_wI_0;
END SignExtend_arch;
