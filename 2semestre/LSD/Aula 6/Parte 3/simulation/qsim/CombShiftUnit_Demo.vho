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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/19/2020 19:47:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CombShiftUnit IS
    PORT (
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	shAmount : IN std_logic_vector(2 DOWNTO 0);
	rotate : IN std_logic;
	dirLeft : IN std_logic;
	shArith : IN std_logic;
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END CombShiftUnit;

ARCHITECTURE structure OF CombShiftUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_shAmount : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rotate : std_logic;
SIGNAL ww_dirLeft : std_logic;
SIGNAL ww_shArith : std_logic;
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \rotate~input_o\ : std_logic;
SIGNAL \shAmount[0]~input_o\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \shAmount[1]~input_o\ : std_logic;
SIGNAL \RotateLeft0~0_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \RotateLeft0~1_combout\ : std_logic;
SIGNAL \RotateLeft0~2_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \RotateRight0~0_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \dirLeft~input_o\ : std_logic;
SIGNAL \shArith~input_o\ : std_logic;
SIGNAL \dataOut~2_combout\ : std_logic;
SIGNAL \dataOut~3_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \RotateRight0~1_combout\ : std_logic;
SIGNAL \dataOut~4_combout\ : std_logic;
SIGNAL \RotateLeft0~3_combout\ : std_logic;
SIGNAL \RotateLeft0~4_combout\ : std_logic;
SIGNAL \RotateLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \dataOut~5_combout\ : std_logic;
SIGNAL \shAmount[2]~input_o\ : std_logic;
SIGNAL \dataOut~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \RotateRight0~2_combout\ : std_logic;
SIGNAL \RotateRight0~3_combout\ : std_logic;
SIGNAL \dataOut~7_combout\ : std_logic;
SIGNAL \RotateLeft0~6_combout\ : std_logic;
SIGNAL \RotateLeft0~7_combout\ : std_logic;
SIGNAL \dataOut~8_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \dataOut~9_combout\ : std_logic;
SIGNAL \RotateLeft0~8_combout\ : std_logic;
SIGNAL \RotateLeft0~9_combout\ : std_logic;
SIGNAL \dataOut~10_combout\ : std_logic;
SIGNAL \dataOut~11_combout\ : std_logic;
SIGNAL \dataOut~12_combout\ : std_logic;
SIGNAL \dataOut~13_combout\ : std_logic;
SIGNAL \dataOut~14_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \dataOut~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \RotateLeft0~10_combout\ : std_logic;
SIGNAL \RotateLeft0~11_combout\ : std_logic;
SIGNAL \RotateRight0~4_combout\ : std_logic;
SIGNAL \RotateRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \dataOut~16_combout\ : std_logic;
SIGNAL \RotateLeft0~12_combout\ : std_logic;
SIGNAL \RotateLeft0~13_combout\ : std_logic;
SIGNAL \dataOut~17_combout\ : std_logic;
SIGNAL \RotateRight0~6_combout\ : std_logic;
SIGNAL \RotateRight0~7_combout\ : std_logic;
SIGNAL \dataOut~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \dataOut~19_combout\ : std_logic;
SIGNAL \RotateLeft0~14_combout\ : std_logic;
SIGNAL \RotateLeft0~15_combout\ : std_logic;
SIGNAL \RotateLeft0~16_combout\ : std_logic;
SIGNAL \RotateRight0~8_combout\ : std_logic;
SIGNAL \RotateRight0~9_combout\ : std_logic;
SIGNAL \dataOut~20_combout\ : std_logic;
SIGNAL \RotateLeft0~17_combout\ : std_logic;
SIGNAL \dataOut~21_combout\ : std_logic;
SIGNAL \dataOut~22_combout\ : std_logic;
SIGNAL \dataOut~23_combout\ : std_logic;
SIGNAL \dataOut~24_combout\ : std_logic;
SIGNAL \dataOut~25_combout\ : std_logic;
SIGNAL \dataOut~26_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \dataOut~27_combout\ : std_logic;
SIGNAL \dataOut~28_combout\ : std_logic;
SIGNAL \dataOut~29_combout\ : std_logic;
SIGNAL \dataOut~30_combout\ : std_logic;
SIGNAL \dataOut~31_combout\ : std_logic;
SIGNAL \dataOut~32_combout\ : std_logic;
SIGNAL \dataOut~33_combout\ : std_logic;
SIGNAL \dataOut~34_combout\ : std_logic;
SIGNAL \dataOut~35_combout\ : std_logic;
SIGNAL \dataOut~36_combout\ : std_logic;
SIGNAL \dataOut~37_combout\ : std_logic;
SIGNAL \dataOut~38_combout\ : std_logic;
SIGNAL \dataOut~39_combout\ : std_logic;
SIGNAL \dataOut~40_combout\ : std_logic;
SIGNAL \dataOut~41_combout\ : std_logic;
SIGNAL \dataOut~42_combout\ : std_logic;
SIGNAL \dataOut~43_combout\ : std_logic;
SIGNAL \dataOut~45_combout\ : std_logic;
SIGNAL \dataOut~44_combout\ : std_logic;

BEGIN

ww_dataIn <= dataIn;
ww_shAmount <= shAmount;
ww_rotate <= rotate;
ww_dirLeft <= dirLeft;
ww_shArith <= shArith;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~6_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~15_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~19_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~25_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~29_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~37_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~41_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut~44_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\rotate~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rotate,
	o => \rotate~input_o\);

\shAmount[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(0),
	o => \shAmount[0]~input_o\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\shAmount[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(1),
	o => \shAmount[1]~input_o\);

\RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~0_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \dataIn[3]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~0_combout\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~1_combout\ = (\shAmount[1]~input_o\ & (\dataIn[2]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[4]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~1_combout\);

\RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~2_combout\ = (\RotateLeft0~0_combout\) # ((\RotateLeft0~1_combout\ & !\shAmount[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~0_combout\,
	datab => \RotateLeft0~1_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~2_combout\);

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[5]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~0_combout\);

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~0_combout\ = (\shAmount[1]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[4]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~0_combout\);

\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~0_combout\,
	datab => \RotateRight0~0_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight0~1_combout\);

\dirLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dirLeft,
	o => \dirLeft~input_o\);

\shArith~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shArith,
	o => \shArith~input_o\);

\dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~2_combout\ = (\dirLeft~input_o\) # ((!\rotate~input_o\ & !\shArith~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datac => \rotate~input_o\,
	datad => \shArith~input_o\,
	combout => \dataOut~2_combout\);

\dataOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~3_combout\ = (\dataOut~2_combout\ & (\rotate~input_o\ & (\RotateLeft0~2_combout\))) # (!\dataOut~2_combout\ & (((\ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \RotateLeft0~2_combout\,
	datac => \ShiftRight0~1_combout\,
	datad => \dataOut~2_combout\,
	combout => \dataOut~3_combout\);

\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (\shAmount[1]~input_o\ & (\dataIn[3]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => \dataIn[1]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~2_combout\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~1_combout\ = (\shAmount[1]~input_o\ & (\dataIn[2]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~1_combout\);

\dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~4_combout\ = (!\dataOut~2_combout\ & ((\shAmount[0]~input_o\ & (\ShiftRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \RotateRight0~1_combout\,
	datac => \shAmount[0]~input_o\,
	datad => \dataOut~2_combout\,
	combout => \dataOut~4_combout\);

\RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~3_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~3_combout\);

\RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~4_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[7]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~4_combout\);

\RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~5_combout\ = (\RotateLeft0~3_combout\) # ((\shAmount[0]~input_o\ & \RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~3_combout\,
	datab => \shAmount[0]~input_o\,
	datac => \RotateLeft0~4_combout\,
	combout => \RotateLeft0~5_combout\);

\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\dataIn[0]~input_o\ & (!\shAmount[0]~input_o\ & !\shAmount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

\dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~5_combout\ = (\dataOut~2_combout\ & ((\rotate~input_o\ & (\RotateLeft0~5_combout\)) # (!\rotate~input_o\ & ((\ShiftLeft0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~2_combout\,
	datab => \RotateLeft0~5_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \rotate~input_o\,
	combout => \dataOut~5_combout\);

\shAmount[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shAmount(2),
	o => \shAmount[2]~input_o\);

\dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~6_combout\ = (\shAmount[2]~input_o\ & (\dataOut~3_combout\)) # (!\shAmount[2]~input_o\ & (((\dataOut~4_combout\) # (\dataOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~3_combout\,
	datab => \dataOut~4_combout\,
	datac => \dataOut~5_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~6_combout\);

\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[1]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~1_combout\);

\RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~2_combout\ = (\shAmount[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[6]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~2_combout\);

\RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~3_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~2_combout\,
	datab => \ShiftRight0~0_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~3_combout\);

\dataOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~7_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\) # (!\dirLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~7_combout\);

\RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~6_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[1]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \dataIn[7]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~6_combout\);

\RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~7_combout\ = (\ShiftLeft0~1_combout\) # (\RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \RotateLeft0~6_combout\,
	combout => \RotateLeft0~7_combout\);

\dataOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~8_combout\ = (\dirLeft~input_o\ & \rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \rotate~input_o\,
	combout => \dataOut~8_combout\);

\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[6]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[6]~input_o\,
	datab => \dataIn[5]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\ShiftRight0~3_combout\) # ((\dataIn[7]~input_o\ & \shAmount[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~3_combout\,
	datab => \dataIn[7]~input_o\,
	datac => \shAmount[1]~input_o\,
	combout => \ShiftRight0~4_combout\);

\dataOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~9_combout\ = (\dataOut~7_combout\ & (((\dataOut~8_combout\)))) # (!\dataOut~7_combout\ & ((\dataOut~8_combout\ & (\RotateLeft0~7_combout\)) # (!\dataOut~8_combout\ & ((\ShiftRight0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~7_combout\,
	datab => \RotateLeft0~7_combout\,
	datac => \dataOut~8_combout\,
	datad => \ShiftRight0~4_combout\,
	combout => \dataOut~9_combout\);

\RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~8_combout\ = (\shAmount[1]~input_o\ & (\dataIn[3]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datab => \dataIn[5]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~8_combout\);

\RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~9_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~1_combout\,
	datab => \RotateLeft0~8_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~9_combout\);

\dataOut~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~10_combout\ = (\dataOut~7_combout\ & ((\dataOut~9_combout\ & ((\RotateLeft0~9_combout\))) # (!\dataOut~9_combout\ & (\RotateRight0~3_combout\)))) # (!\dataOut~7_combout\ & (((\dataOut~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~3_combout\,
	datab => \dataOut~7_combout\,
	datac => \dataOut~9_combout\,
	datad => \RotateLeft0~9_combout\,
	combout => \dataOut~10_combout\);

\dataOut~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~11_combout\ = (\dirLeft~input_o\ & (\rotate~input_o\)) # (!\dirLeft~input_o\ & (\shAmount[2]~input_o\ & ((\rotate~input_o\) # (\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shAmount[2]~input_o\,
	datac => \shArith~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~11_combout\);

\dataOut~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~12_combout\ = (!\shAmount[2]~input_o\ & (!\rotate~input_o\ & ((\dirLeft~input_o\) # (!\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \shArith~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~12_combout\);

\dataOut~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~13_combout\ = (\ShiftLeft0~1_combout\ & ((\dataOut~12_combout\) # ((\dataOut~10_combout\ & \dataOut~11_combout\)))) # (!\ShiftLeft0~1_combout\ & (\dataOut~10_combout\ & (\dataOut~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~1_combout\,
	datab => \dataOut~10_combout\,
	datac => \dataOut~11_combout\,
	datad => \dataOut~12_combout\,
	combout => \dataOut~13_combout\);

\dataOut~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~14_combout\ = (!\shAmount[2]~input_o\ & (!\dirLeft~input_o\ & ((\rotate~input_o\) # (\shArith~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shArith~input_o\,
	datac => \shAmount[2]~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~14_combout\);

\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[2]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~5_combout\);

\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight0~5_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~2_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight0~6_combout\);

\dataOut~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~15_combout\ = (\dataOut~13_combout\) # ((\dataOut~14_combout\ & \ShiftRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~13_combout\,
	datab => \dataOut~14_combout\,
	datac => \ShiftRight0~6_combout\,
	combout => \dataOut~15_combout\);

\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datab => \dataIn[2]~input_o\,
	datac => \shAmount[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftLeft0~2_combout\);

\RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~10_combout\ = (\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[0]~input_o\,
	datab => \dataIn[7]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~10_combout\);

\RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~11_combout\ = (\ShiftLeft0~2_combout\) # (\RotateLeft0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \RotateLeft0~10_combout\,
	combout => \RotateLeft0~11_combout\);

\RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~4_combout\ = (\shAmount[1]~input_o\ & (\dataIn[1]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datab => \dataIn[7]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~4_combout\);

\RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~5_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~4_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~4_combout\,
	datab => \RotateRight0~2_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~5_combout\);

\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\shAmount[0]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[0]~input_o\ & ((\shAmount[1]~input_o\ & (\dataIn[7]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataIn[6]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

\dataOut~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~16_combout\ = (\dataOut~8_combout\ & (((\dataOut~7_combout\)))) # (!\dataOut~8_combout\ & ((\dataOut~7_combout\ & (\RotateRight0~5_combout\)) # (!\dataOut~7_combout\ & ((\ShiftRight0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~8_combout\,
	datab => \RotateRight0~5_combout\,
	datac => \dataOut~7_combout\,
	datad => \ShiftRight0~7_combout\,
	combout => \dataOut~16_combout\);

\RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~12_combout\ = (\shAmount[1]~input_o\ & (\dataIn[4]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datab => \dataIn[6]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~12_combout\);

\RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~13_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~8_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~8_combout\,
	datab => \RotateLeft0~12_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~13_combout\);

\dataOut~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~17_combout\ = (\dataOut~8_combout\ & ((\dataOut~16_combout\ & ((\RotateLeft0~13_combout\))) # (!\dataOut~16_combout\ & (\RotateLeft0~11_combout\)))) # (!\dataOut~8_combout\ & (((\dataOut~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~11_combout\,
	datab => \dataOut~8_combout\,
	datac => \dataOut~16_combout\,
	datad => \RotateLeft0~13_combout\,
	combout => \dataOut~17_combout\);

\RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~6_combout\ = (\shAmount[1]~input_o\ & (\dataIn[5]~input_o\)) # (!\shAmount[1]~input_o\ & ((\dataIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datab => \dataIn[3]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateRight0~6_combout\);

\RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~7_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~6_combout\)) # (!\shAmount[0]~input_o\ & ((\ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~6_combout\,
	datab => \ShiftRight0~5_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~7_combout\);

\dataOut~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~18_combout\ = (\dataOut~14_combout\ & ((\RotateRight0~7_combout\) # ((\dataOut~11_combout\ & \dataOut~17_combout\)))) # (!\dataOut~14_combout\ & (\dataOut~11_combout\ & (\dataOut~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~14_combout\,
	datab => \dataOut~11_combout\,
	datac => \dataOut~17_combout\,
	datad => \RotateRight0~7_combout\,
	combout => \dataOut~18_combout\);

\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\ShiftLeft0~2_combout\) # ((\shAmount[0]~input_o\ & (\dataIn[1]~input_o\ & !\shAmount[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~2_combout\,
	datab => \shAmount[0]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \ShiftLeft0~3_combout\);

\dataOut~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~19_combout\ = (\dataOut~18_combout\) # ((\dataOut~12_combout\ & \ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~18_combout\,
	datab => \dataOut~12_combout\,
	datac => \ShiftLeft0~3_combout\,
	combout => \dataOut~19_combout\);

\RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~14_combout\ = (\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[0]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[1]~input_o\,
	datab => \dataIn[0]~input_o\,
	datac => \dataIn[1]~input_o\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~14_combout\);

\RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~15_combout\ = (!\shAmount[1]~input_o\ & ((\shAmount[0]~input_o\ & (\dataIn[2]~input_o\)) # (!\shAmount[0]~input_o\ & ((\dataIn[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datab => \dataIn[3]~input_o\,
	datac => \shAmount[0]~input_o\,
	datad => \shAmount[1]~input_o\,
	combout => \RotateLeft0~15_combout\);

\RotateLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~16_combout\ = (\RotateLeft0~14_combout\) # (\RotateLeft0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~14_combout\,
	datab => \RotateLeft0~15_combout\,
	combout => \RotateLeft0~16_combout\);

\RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~8_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~1_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~1_combout\,
	datab => \RotateRight0~4_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~8_combout\);

\RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateRight0~9_combout\ = (\shAmount[0]~input_o\ & (\RotateRight0~0_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~0_combout\,
	datab => \RotateRight0~6_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateRight0~9_combout\);

\dataOut~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~20_combout\ = (\dirLeft~input_o\ & (((\shAmount[2]~input_o\)))) # (!\dirLeft~input_o\ & ((\shAmount[2]~input_o\ & (\RotateRight0~8_combout\)) # (!\shAmount[2]~input_o\ & ((\RotateRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \RotateRight0~8_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \RotateRight0~9_combout\,
	combout => \dataOut~20_combout\);

\RotateLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RotateLeft0~17_combout\ = (\shAmount[0]~input_o\ & (\RotateLeft0~12_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~12_combout\,
	datab => \RotateLeft0~4_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \RotateLeft0~17_combout\);

\dataOut~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~21_combout\ = (\dirLeft~input_o\ & ((\dataOut~20_combout\ & ((\RotateLeft0~17_combout\))) # (!\dataOut~20_combout\ & (\RotateLeft0~16_combout\)))) # (!\dirLeft~input_o\ & (((\dataOut~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~16_combout\,
	datab => \dirLeft~input_o\,
	datac => \dataOut~20_combout\,
	datad => \RotateLeft0~17_combout\,
	combout => \dataOut~21_combout\);

\dataOut~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~22_combout\ = (\shArith~input_o\ & !\dirLeft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datad => \dirLeft~input_o\,
	combout => \dataOut~22_combout\);

\dataOut~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~23_combout\ = (\dataOut~22_combout\ & (\RotateRight0~9_combout\)) # (!\dataOut~22_combout\ & (((\RotateLeft0~14_combout\) # (\RotateLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateRight0~9_combout\,
	datab => \RotateLeft0~14_combout\,
	datac => \RotateLeft0~15_combout\,
	datad => \dataOut~22_combout\,
	combout => \dataOut~23_combout\);

\dataOut~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~24_combout\ = (\shAmount[2]~input_o\ & (\dataIn[7]~input_o\ & (\dataOut~22_combout\))) # (!\shAmount[2]~input_o\ & (((\dataOut~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[7]~input_o\,
	datab => \dataOut~22_combout\,
	datac => \dataOut~23_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~24_combout\);

\dataOut~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~25_combout\ = (\rotate~input_o\ & (\dataOut~21_combout\)) # (!\rotate~input_o\ & ((\dataOut~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~21_combout\,
	datab => \dataOut~24_combout\,
	datad => \rotate~input_o\,
	combout => \dataOut~25_combout\);

\dataOut~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~26_combout\ = (\shAmount[2]~input_o\ & ((\dataOut~22_combout\ & ((\dataIn[7]~input_o\))) # (!\dataOut~22_combout\ & (\ShiftLeft0~0_combout\)))) # (!\shAmount[2]~input_o\ & (\dataOut~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shAmount[2]~input_o\,
	datab => \dataOut~22_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \dataIn[7]~input_o\,
	combout => \dataOut~26_combout\);

\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\shAmount[0]~input_o\ & (\ShiftRight0~2_combout\)) # (!\shAmount[0]~input_o\ & ((\RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \RotateRight0~1_combout\,
	datad => \shAmount[0]~input_o\,
	combout => \ShiftRight0~8_combout\);

\dataOut~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~27_combout\ = (\dirLeft~input_o\ & (((\RotateLeft0~5_combout\) # (!\shAmount[2]~input_o\)))) # (!\dirLeft~input_o\ & (\ShiftRight0~8_combout\ & ((\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datab => \ShiftRight0~8_combout\,
	datac => \RotateLeft0~5_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~27_combout\);

\dataOut~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~28_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\ $ (!\dataOut~27_combout\)))) # (!\rotate~input_o\ & (\dataOut~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \dataOut~26_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \dataOut~27_combout\,
	combout => \dataOut~28_combout\);

\dataOut~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~29_combout\ = (\shAmount[2]~input_o\ & (((\dataOut~28_combout\)))) # (!\shAmount[2]~input_o\ & ((\dataOut~28_combout\ & (\ShiftRight0~1_combout\)) # (!\dataOut~28_combout\ & ((\RotateLeft0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~1_combout\,
	datab => \RotateLeft0~2_combout\,
	datac => \shAmount[2]~input_o\,
	datad => \dataOut~28_combout\,
	combout => \dataOut~29_combout\);

\dataOut~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~30_combout\ = (\dirLeft~input_o\ & (((!\shAmount[2]~input_o\)))) # (!\dirLeft~input_o\ & (!\rotate~input_o\ & (\shArith~input_o\ $ (!\shAmount[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datab => \dirLeft~input_o\,
	datac => \rotate~input_o\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~30_combout\);

\dataOut~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~31_combout\ = (\shArith~input_o\ & (!\dirLeft~input_o\ & !\rotate~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shArith~input_o\,
	datac => \dirLeft~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~31_combout\);

\dataOut~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~32_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\) # (\dirLeft~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \shAmount[2]~input_o\,
	datac => \dirLeft~input_o\,
	combout => \dataOut~32_combout\);

\dataOut~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~33_combout\ = (\dirLeft~input_o\) # (!\rotate~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dirLeft~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~33_combout\);

\dataOut~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~34_combout\ = (\dataOut~32_combout\ & (((\dataOut~33_combout\)))) # (!\dataOut~32_combout\ & ((\dataOut~33_combout\ & (\ShiftLeft0~1_combout\)) # (!\dataOut~33_combout\ & ((\RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~32_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \dataOut~33_combout\,
	datad => \RotateRight0~3_combout\,
	combout => \dataOut~34_combout\);

\dataOut~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~35_combout\ = (\dataOut~32_combout\ & ((\dataOut~34_combout\ & ((\RotateLeft0~7_combout\))) # (!\dataOut~34_combout\ & (\ShiftRight0~6_combout\)))) # (!\dataOut~32_combout\ & (((\dataOut~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~6_combout\,
	datab => \dataOut~32_combout\,
	datac => \dataOut~34_combout\,
	datad => \RotateLeft0~7_combout\,
	combout => \dataOut~35_combout\);

\dataOut~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~36_combout\ = (\dataOut~30_combout\ & (((\dataOut~31_combout\)))) # (!\dataOut~30_combout\ & ((\dataOut~31_combout\ & (\ShiftRight0~4_combout\)) # (!\dataOut~31_combout\ & ((\dataOut~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~30_combout\,
	datab => \ShiftRight0~4_combout\,
	datac => \dataOut~31_combout\,
	datad => \dataOut~35_combout\,
	combout => \dataOut~36_combout\);

\dataOut~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~37_combout\ = (\dataOut~30_combout\ & ((\dataOut~36_combout\ & ((\dataIn[7]~input_o\))) # (!\dataOut~36_combout\ & (\RotateLeft0~9_combout\)))) # (!\dataOut~30_combout\ & (((\dataOut~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~9_combout\,
	datab => \dataOut~30_combout\,
	datac => \dataOut~36_combout\,
	datad => \dataIn[7]~input_o\,
	combout => \dataOut~37_combout\);

\dataOut~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~38_combout\ = (\dataOut~33_combout\ & (((\dataOut~32_combout\)))) # (!\dataOut~33_combout\ & ((\dataOut~32_combout\ & (\RotateRight0~7_combout\)) # (!\dataOut~32_combout\ & ((\RotateRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~33_combout\,
	datab => \RotateRight0~7_combout\,
	datac => \dataOut~32_combout\,
	datad => \RotateRight0~5_combout\,
	combout => \dataOut~38_combout\);

\dataOut~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~39_combout\ = (\dataOut~33_combout\ & ((\dataOut~38_combout\ & ((\RotateLeft0~11_combout\))) # (!\dataOut~38_combout\ & (\ShiftLeft0~3_combout\)))) # (!\dataOut~33_combout\ & (((\dataOut~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \dataOut~33_combout\,
	datac => \dataOut~38_combout\,
	datad => \RotateLeft0~11_combout\,
	combout => \dataOut~39_combout\);

\dataOut~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~40_combout\ = (\dataOut~31_combout\ & (((\dataOut~30_combout\)))) # (!\dataOut~31_combout\ & ((\dataOut~30_combout\ & (\RotateLeft0~13_combout\)) # (!\dataOut~30_combout\ & ((\dataOut~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~31_combout\,
	datab => \RotateLeft0~13_combout\,
	datac => \dataOut~30_combout\,
	datad => \dataOut~39_combout\,
	combout => \dataOut~40_combout\);

\dataOut~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~41_combout\ = (\dataOut~31_combout\ & ((\dataOut~40_combout\ & ((\dataIn[7]~input_o\))) # (!\dataOut~40_combout\ & (\ShiftRight0~7_combout\)))) # (!\dataOut~31_combout\ & (((\dataOut~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~7_combout\,
	datab => \dataOut~31_combout\,
	datac => \dataOut~40_combout\,
	datad => \dataIn[7]~input_o\,
	combout => \dataOut~41_combout\);

\dataOut~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~42_combout\ = (\rotate~input_o\ & ((\shAmount[2]~input_o\ & (\RotateRight0~9_combout\)) # (!\shAmount[2]~input_o\ & ((\RotateRight0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rotate~input_o\,
	datab => \RotateRight0~9_combout\,
	datac => \RotateRight0~8_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~42_combout\);

\dataOut~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~43_combout\ = (\dataOut~42_combout\) # ((\dataIn[7]~input_o\ & !\rotate~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~42_combout\,
	datab => \dataIn[7]~input_o\,
	datad => \rotate~input_o\,
	combout => \dataOut~43_combout\);

\dataOut~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~45_combout\ = (\shAmount[2]~input_o\ & ((\RotateLeft0~14_combout\) # ((\RotateLeft0~15_combout\)))) # (!\shAmount[2]~input_o\ & (((\RotateLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RotateLeft0~14_combout\,
	datab => \RotateLeft0~15_combout\,
	datac => \RotateLeft0~17_combout\,
	datad => \shAmount[2]~input_o\,
	combout => \dataOut~45_combout\);

\dataOut~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~44_combout\ = (\dataOut~33_combout\ & ((\dataOut~31_combout\ & (\dataOut~43_combout\)) # (!\dataOut~31_combout\ & ((\dataOut~45_combout\))))) # (!\dataOut~33_combout\ & (\dataOut~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataOut~43_combout\,
	datab => \dataOut~45_combout\,
	datac => \dataOut~33_combout\,
	datad => \dataOut~31_combout\,
	combout => \dataOut~44_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


