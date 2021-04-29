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

-- DATE "03/02/2020 15:42:59"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux4_1 IS
    PORT (
	sel : IN std_logic_vector(1 DOWNTO 0);
	dataIn0 : IN std_logic;
	dataIn1 : IN std_logic;
	dataIn2 : IN std_logic;
	dataIn3 : IN std_logic;
	dataOut0 : BUFFER std_logic
	);
END Mux4_1;

-- Design Ports Information
-- dataOut0	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn2	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn1	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn0	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataIn3	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Mux4_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dataIn0 : std_logic;
SIGNAL ww_dataIn1 : std_logic;
SIGNAL ww_dataIn2 : std_logic;
SIGNAL ww_dataIn3 : std_logic;
SIGNAL ww_dataOut0 : std_logic;
SIGNAL \dataOut0~output_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \dataIn1~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \dataIn0~input_o\ : std_logic;
SIGNAL \dataOut0~0_combout\ : std_logic;
SIGNAL \dataIn3~input_o\ : std_logic;
SIGNAL \dataIn2~input_o\ : std_logic;
SIGNAL \dataOut0~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sel <= sel;
ww_dataIn0 <= dataIn0;
ww_dataIn1 <= dataIn1;
ww_dataIn2 <= dataIn2;
ww_dataIn3 <= dataIn3;
dataOut0 <= ww_dataOut0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y73_N9
\dataOut0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut0~1_combout\,
	devoe => ww_devoe,
	o => \dataOut0~output_o\);

-- Location: IOIBUF_X3_Y73_N22
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X5_Y73_N1
\dataIn1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1,
	o => \dataIn1~input_o\);

-- Location: IOIBUF_X1_Y73_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X3_Y73_N1
\dataIn0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0,
	o => \dataIn0~input_o\);

-- Location: LCCOMB_X4_Y72_N24
\dataOut0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut0~0_combout\ = (\sel[0]~input_o\ & ((\dataIn1~input_o\) # ((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (((\dataIn0~input_o\ & !\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1~input_o\,
	datab => \sel[0]~input_o\,
	datac => \dataIn0~input_o\,
	datad => \sel[1]~input_o\,
	combout => \dataOut0~0_combout\);

-- Location: IOIBUF_X5_Y73_N8
\dataIn3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3,
	o => \dataIn3~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\dataIn2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2,
	o => \dataIn2~input_o\);

-- Location: LCCOMB_X4_Y72_N2
\dataOut0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut0~1_combout\ = (\sel[1]~input_o\ & ((\dataOut0~0_combout\ & (\dataIn3~input_o\)) # (!\dataOut0~0_combout\ & ((\dataIn2~input_o\))))) # (!\sel[1]~input_o\ & (\dataOut0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \dataOut0~0_combout\,
	datac => \dataIn3~input_o\,
	datad => \dataIn2~input_o\,
	combout => \dataOut0~1_combout\);

ww_dataOut0 <= \dataOut0~output_o\;
END structure;


