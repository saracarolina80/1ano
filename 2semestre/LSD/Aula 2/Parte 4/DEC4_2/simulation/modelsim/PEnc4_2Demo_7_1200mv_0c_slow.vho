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

-- DATE "03/10/2020 19:38:31"

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

ENTITY 	PEnc4_2 IS
    PORT (
	decodeIn : IN std_logic_vector(3 DOWNTO 0);
	encodedOut : OUT std_logic_vector(1 DOWNTO 0);
	validOut : OUT std_logic
	);
END PEnc4_2;

-- Design Ports Information
-- encodedOut[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encodedOut[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOut	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeIn[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeIn[1]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeIn[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decodeIn[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PEnc4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_decodeIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_encodedOut : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_validOut : std_logic;
SIGNAL \encodedOut[0]~output_o\ : std_logic;
SIGNAL \encodedOut[1]~output_o\ : std_logic;
SIGNAL \validOut~output_o\ : std_logic;
SIGNAL \decodeIn[1]~input_o\ : std_logic;
SIGNAL \decodeIn[3]~input_o\ : std_logic;
SIGNAL \decodeIn[2]~input_o\ : std_logic;
SIGNAL \encodedOut~0_combout\ : std_logic;
SIGNAL \encodedOut~1_combout\ : std_logic;
SIGNAL \decodeIn[0]~input_o\ : std_logic;
SIGNAL \validOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_encodedOut~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_decodeIn <= decodeIn;
encodedOut <= ww_encodedOut;
validOut <= ww_validOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_encodedOut~1_combout\ <= NOT \encodedOut~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y29_N16
\encodedOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \encodedOut~0_combout\,
	devoe => ww_devoe,
	o => \encodedOut[0]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\encodedOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_encodedOut~1_combout\,
	devoe => ww_devoe,
	o => \encodedOut[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\validOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \validOut~0_combout\,
	devoe => ww_devoe,
	o => \validOut~output_o\);

-- Location: IOIBUF_X0_Y30_N1
\decodeIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(1),
	o => \decodeIn[1]~input_o\);

-- Location: IOIBUF_X0_Y31_N15
\decodeIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(3),
	o => \decodeIn[3]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\decodeIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(2),
	o => \decodeIn[2]~input_o\);

-- Location: LCCOMB_X1_Y30_N16
\encodedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~0_combout\ = (\decodeIn[3]~input_o\) # ((\decodeIn[1]~input_o\ & !\decodeIn[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[1]~input_o\,
	datab => \decodeIn[3]~input_o\,
	datad => \decodeIn[2]~input_o\,
	combout => \encodedOut~0_combout\);

-- Location: LCCOMB_X1_Y30_N18
\encodedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \encodedOut~1_combout\ = (!\decodeIn[3]~input_o\ & !\decodeIn[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decodeIn[3]~input_o\,
	datad => \decodeIn[2]~input_o\,
	combout => \encodedOut~1_combout\);

-- Location: IOIBUF_X0_Y34_N8
\decodeIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_decodeIn(0),
	o => \decodeIn[0]~input_o\);

-- Location: LCCOMB_X1_Y30_N20
\validOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \validOut~0_combout\ = (\decodeIn[1]~input_o\) # ((\decodeIn[3]~input_o\) # ((\decodeIn[0]~input_o\) # (\decodeIn[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decodeIn[1]~input_o\,
	datab => \decodeIn[3]~input_o\,
	datac => \decodeIn[0]~input_o\,
	datad => \decodeIn[2]~input_o\,
	combout => \validOut~0_combout\);

ww_encodedOut(0) <= \encodedOut[0]~output_o\;

ww_encodedOut(1) <= \encodedOut[1]~output_o\;

ww_validOut <= \validOut~output_o\;
END structure;


