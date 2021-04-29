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
-- Generated on "05/19/2020 19:26:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SeqShiftUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SeqShiftUnit_vhd_vec_tst IS
END SeqShiftUnit_vhd_vec_tst;
ARCHITECTURE SeqShiftUnit_arch OF SeqShiftUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dirLeft : STD_LOGIC;
SIGNAL loadEn : STD_LOGIC;
SIGNAL rotate : STD_LOGIC;
SIGNAL shArith : STD_LOGIC;
SIGNAL siLeft : STD_LOGIC;
SIGNAL siRight : STD_LOGIC;
COMPONENT SeqShiftUnit
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dirLeft : IN STD_LOGIC;
	loadEn : IN STD_LOGIC;
	rotate : IN STD_LOGIC;
	shArith : IN STD_LOGIC;
	siLeft : IN STD_LOGIC;
	siRight : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SeqShiftUnit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	dirLeft => dirLeft,
	loadEn => loadEn,
	rotate => rotate,
	shArith => shArith,
	siLeft => siLeft,
	siRight => siRight
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 50000 ps;
	clk <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
LOOP
	dataIn(7) <= '0';
	WAIT FOR 50000 ps;
	dataIn(7) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
LOOP
	dataIn(6) <= '0';
	WAIT FOR 50000 ps;
	dataIn(6) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
LOOP
	dataIn(5) <= '0';
	WAIT FOR 50000 ps;
	dataIn(5) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
LOOP
	dataIn(4) <= '0';
	WAIT FOR 50000 ps;
	dataIn(4) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
LOOP
	dataIn(3) <= '0';
	WAIT FOR 50000 ps;
	dataIn(3) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
LOOP
	dataIn(2) <= '0';
	WAIT FOR 50000 ps;
	dataIn(2) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
LOOP
	dataIn(1) <= '0';
	WAIT FOR 50000 ps;
	dataIn(1) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
LOOP
	dataIn(0) <= '0';
	WAIT FOR 50000 ps;
	dataIn(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_0;

-- dirLeft
t_prcs_dirLeft: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		dirLeft <= '0';
		WAIT FOR 95000 ps;
		dirLeft <= '1';
		WAIT FOR 95000 ps;
	END LOOP;
	dirLeft <= '0';
WAIT;
END PROCESS t_prcs_dirLeft;

-- loadEn
t_prcs_loadEn: PROCESS
BEGIN
	loadEn <= '0';
	WAIT FOR 500000 ps;
	loadEn <= '1';
WAIT;
END PROCESS t_prcs_loadEn;

-- rotate
t_prcs_rotate: PROCESS
BEGIN
LOOP
	rotate <= '0';
	WAIT FOR 100000 ps;
	rotate <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_rotate;

-- shArith
t_prcs_shArith: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		shArith <= '0';
		WAIT FOR 135000 ps;
		shArith <= '1';
		WAIT FOR 135000 ps;
	END LOOP;
	shArith <= '0';
	WAIT FOR 135000 ps;
	shArith <= '1';
WAIT;
END PROCESS t_prcs_shArith;

-- siLeft
t_prcs_siLeft: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		siLeft <= '0';
		WAIT FOR 150000 ps;
		siLeft <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	siLeft <= '0';
WAIT;
END PROCESS t_prcs_siLeft;

-- siRight
t_prcs_siRight: PROCESS
BEGIN
	siRight <= '0';
WAIT;
END PROCESS t_prcs_siRight;
END SeqShiftUnit_arch;
