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
-- Generated on "06/04/2020 15:51:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ROM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_vhd_vec_tst IS
END ROM_vhd_vec_tst;
ARCHITECTURE ROM_arch OF ROM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL En : STD_LOGIC;
SIGNAL RA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RD : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT ROM
	PORT (
	En : IN STD_LOGIC;
	RA : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	RD : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ROM
	PORT MAP (
-- list connections between master ports and signals
	En => En,
	RA => RA,
	RD => RD
	);

-- En
t_prcs_En: PROCESS
BEGIN
LOOP
	En <= '0';
	WAIT FOR 100000 ps;
	En <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_En;
-- RA[3]
t_prcs_RA_3: PROCESS
BEGIN
	RA(3) <= '0';
WAIT;
END PROCESS t_prcs_RA_3;
-- RA[2]
t_prcs_RA_2: PROCESS
BEGIN
	RA(2) <= '0';
WAIT;
END PROCESS t_prcs_RA_2;
-- RA[1]
t_prcs_RA_1: PROCESS
BEGIN
	RA(1) <= '0';
WAIT;
END PROCESS t_prcs_RA_1;
-- RA[0]
t_prcs_RA_0: PROCESS
BEGIN
	RA(0) <= '0';
WAIT;
END PROCESS t_prcs_RA_0;
END ROM_arch;
