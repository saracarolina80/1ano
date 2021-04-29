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
-- Generated on "06/04/2020 15:31:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RAM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RAM_vhd_vec_tst IS
END RAM_vhd_vec_tst;
ARCHITECTURE RAM_arch OF RAM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wE : STD_LOGIC;
SIGNAL writeClk : STD_LOGIC;
COMPONENT RAM
	PORT (
	Addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	RD : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	wD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	wE : IN STD_LOGIC;
	writeClk : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RAM
	PORT MAP (
-- list connections between master ports and signals
	Addr => Addr,
	RD => RD,
	wD => wD,
	wE => wE,
	writeClk => writeClk
	);
-- Addr[7]
t_prcs_Addr_7: PROCESS
BEGIN
	Addr(7) <= '0';
WAIT;
END PROCESS t_prcs_Addr_7;
-- Addr[6]
t_prcs_Addr_6: PROCESS
BEGIN
	Addr(6) <= '0';
WAIT;
END PROCESS t_prcs_Addr_6;
-- Addr[5]
t_prcs_Addr_5: PROCESS
BEGIN
	Addr(5) <= '0';
WAIT;
END PROCESS t_prcs_Addr_5;
-- Addr[4]
t_prcs_Addr_4: PROCESS
BEGIN
	Addr(4) <= '0';
WAIT;
END PROCESS t_prcs_Addr_4;
-- Addr[3]
t_prcs_Addr_3: PROCESS
BEGIN
	Addr(3) <= '0';
WAIT;
END PROCESS t_prcs_Addr_3;
-- Addr[2]
t_prcs_Addr_2: PROCESS
BEGIN
	Addr(2) <= '0';
WAIT;
END PROCESS t_prcs_Addr_2;
-- Addr[1]
t_prcs_Addr_1: PROCESS
BEGIN
	Addr(1) <= '1';
WAIT;
END PROCESS t_prcs_Addr_1;
-- Addr[0]
t_prcs_Addr_0: PROCESS
BEGIN
	Addr(0) <= '1';
WAIT;
END PROCESS t_prcs_Addr_0;
-- wD[7]
t_prcs_wD_7: PROCESS
BEGIN
	wD(7) <= '0';
WAIT;
END PROCESS t_prcs_wD_7;
-- wD[6]
t_prcs_wD_6: PROCESS
BEGIN
	wD(6) <= '0';
WAIT;
END PROCESS t_prcs_wD_6;
-- wD[5]
t_prcs_wD_5: PROCESS
BEGIN
	wD(5) <= '0';
WAIT;
END PROCESS t_prcs_wD_5;
-- wD[4]
t_prcs_wD_4: PROCESS
BEGIN
	wD(4) <= '0';
WAIT;
END PROCESS t_prcs_wD_4;
-- wD[3]
t_prcs_wD_3: PROCESS
BEGIN
	wD(3) <= '0';
WAIT;
END PROCESS t_prcs_wD_3;
-- wD[2]
t_prcs_wD_2: PROCESS
BEGIN
	wD(2) <= '0';
WAIT;
END PROCESS t_prcs_wD_2;
-- wD[1]
t_prcs_wD_1: PROCESS
BEGIN
	wD(1) <= '0';
WAIT;
END PROCESS t_prcs_wD_1;
-- wD[0]
t_prcs_wD_0: PROCESS
BEGIN
	wD(0) <= '1';
WAIT;
END PROCESS t_prcs_wD_0;

-- wE
t_prcs_wE: PROCESS
BEGIN
LOOP
	wE <= '0';
	WAIT FOR 50000 ps;
	wE <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_wE;

-- writeClk
t_prcs_writeClk: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		writeClk <= '0';
		WAIT FOR 75000 ps;
		writeClk <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	writeClk <= '0';
	WAIT FOR 75000 ps;
	writeClk <= '1';
WAIT;
END PROCESS t_prcs_writeClk;
END RAM_arch;
