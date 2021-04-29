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
-- Generated on "03/09/2020 15:53:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FullAdder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FullAdder_vhd_vec_tst IS
END FullAdder_vhd_vec_tst;
ARCHITECTURE FullAdder_arch OF FullAdder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL cin : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT FullAdder
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	cin : IN STD_LOGIC;
	cout : BUFFER STD_LOGIC;
	s : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FullAdder
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	cin => cin,
	cout => cout,
	s => s
	);

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 120000 ps;
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 80000 ps;
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 80000 ps;
	a <= '1';
	WAIT FOR 120000 ps;
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 40000 ps;
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 160000 ps;
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '0';
	WAIT FOR 60000 ps;
	b <= '1';
	WAIT FOR 60000 ps;
	b <= '0';
	WAIT FOR 60000 ps;
	b <= '1';
	WAIT FOR 60000 ps;
	b <= '0';
	WAIT FOR 240000 ps;
	b <= '1';
	WAIT FOR 60000 ps;
	b <= '0';
	WAIT FOR 60000 ps;
	b <= '1';
	WAIT FOR 180000 ps;
	b <= '0';
	WAIT FOR 60000 ps;
	b <= '1';
	WAIT FOR 140000 ps;
	b <= '0';
WAIT;
END PROCESS t_prcs_b;

-- cin
t_prcs_cin: PROCESS
BEGIN
	cin <= '1';
	WAIT FOR 50000 ps;
	cin <= '0';
	WAIT FOR 50000 ps;
	cin <= '1';
	WAIT FOR 50000 ps;
	cin <= '0';
	WAIT FOR 350000 ps;
	cin <= '1';
	WAIT FOR 50000 ps;
	cin <= '0';
	WAIT FOR 50000 ps;
	cin <= '1';
	WAIT FOR 200000 ps;
	cin <= '0';
	WAIT FOR 50000 ps;
	cin <= '1';
WAIT;
END PROCESS t_prcs_cin;
END FullAdder_arch;
