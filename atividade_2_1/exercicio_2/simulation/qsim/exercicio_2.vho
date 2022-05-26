-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/24/2022 14:38:12"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio_2 IS
    PORT (
	b1 : IN std_logic;
	b2 : IN std_logic;
	b3 : IN std_logic;
	b4 : IN std_logic;
	b5 : IN std_logic;
	b6 : IN std_logic;
	b7 : IN std_logic;
	b8 : IN std_logic;
	c : OUT std_logic_vector(7 DOWNTO 0)
	);
END exercicio_2;

-- Design Ports Information
-- c[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[1]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b8	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b3	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b4	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b5	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b6	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b7	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_b3 : std_logic;
SIGNAL ww_b4 : std_logic;
SIGNAL ww_b5 : std_logic;
SIGNAL ww_b6 : std_logic;
SIGNAL ww_b7 : std_logic;
SIGNAL ww_b8 : std_logic;
SIGNAL ww_c : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \b2~input_o\ : std_logic;
SIGNAL \b6~input_o\ : std_logic;
SIGNAL \b4~input_o\ : std_logic;
SIGNAL \b7~input_o\ : std_logic;
SIGNAL \b5~input_o\ : std_logic;
SIGNAL \o[0]~0_combout\ : std_logic;
SIGNAL \b8~input_o\ : std_logic;
SIGNAL \b3~input_o\ : std_logic;
SIGNAL \o[0]~1_combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \o[1]~2_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL o : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_b1~input_o\ : std_logic;
SIGNAL \ALT_INV_b3~input_o\ : std_logic;
SIGNAL \ALT_INV_b2~input_o\ : std_logic;
SIGNAL \ALT_INV_b4~input_o\ : std_logic;
SIGNAL \ALT_INV_b5~input_o\ : std_logic;
SIGNAL \ALT_INV_b6~input_o\ : std_logic;
SIGNAL \ALT_INV_b7~input_o\ : std_logic;
SIGNAL \ALT_INV_b8~input_o\ : std_logic;
SIGNAL ALT_INV_o : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_o[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_o[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_o[0]~0_combout\ : std_logic;

BEGIN

ww_b1 <= b1;
ww_b2 <= b2;
ww_b3 <= b3;
ww_b4 <= b4;
ww_b5 <= b5;
ww_b6 <= b6;
ww_b7 <= b7;
ww_b8 <= b8;
c <= ww_c;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b1~input_o\ <= NOT \b1~input_o\;
\ALT_INV_b3~input_o\ <= NOT \b3~input_o\;
\ALT_INV_b2~input_o\ <= NOT \b2~input_o\;
\ALT_INV_b4~input_o\ <= NOT \b4~input_o\;
\ALT_INV_b5~input_o\ <= NOT \b5~input_o\;
\ALT_INV_b6~input_o\ <= NOT \b6~input_o\;
\ALT_INV_b7~input_o\ <= NOT \b7~input_o\;
\ALT_INV_b8~input_o\ <= NOT \b8~input_o\;
ALT_INV_o(2) <= NOT o(2);
ALT_INV_o(1) <= NOT o(1);
ALT_INV_o(0) <= NOT o(0);
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_o[1]~2_combout\ <= NOT \o[1]~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_o[0]~1_combout\ <= NOT \o[0]~1_combout\;
\ALT_INV_o[0]~0_combout\ <= NOT \o[0]~0_combout\;

-- Location: IOOBUF_X89_Y38_N22
\c[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => o(0),
	devoe => ww_devoe,
	o => ww_c(0));

-- Location: IOOBUF_X89_Y36_N22
\c[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => o(1),
	devoe => ww_devoe,
	o => ww_c(1));

-- Location: IOOBUF_X89_Y38_N39
\c[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => o(2),
	devoe => ww_devoe,
	o => ww_c(2));

-- Location: IOOBUF_X89_Y35_N45
\c[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_c(3));

-- Location: IOOBUF_X30_Y81_N2
\c[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c(4));

-- Location: IOOBUF_X66_Y81_N42
\c[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c(5));

-- Location: IOOBUF_X64_Y0_N36
\c[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_c(6));

-- Location: IOOBUF_X28_Y0_N53
\c[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c(7));

-- Location: IOIBUF_X89_Y37_N21
\b2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b2,
	o => \b2~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\b6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b6,
	o => \b6~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\b4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b4,
	o => \b4~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\b7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b7,
	o => \b7~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\b5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b5,
	o => \b5~input_o\);

-- Location: LABCELL_X88_Y36_N39
\o[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \o[0]~0_combout\ = ( !\b5~input_o\ & ( (!\b6~input_o\ & (!\b4~input_o\ & !\b7~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b6~input_o\,
	datab => \ALT_INV_b4~input_o\,
	datad => \ALT_INV_b7~input_o\,
	dataf => \ALT_INV_b5~input_o\,
	combout => \o[0]~0_combout\);

-- Location: IOIBUF_X89_Y35_N61
\b8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b8,
	o => \b8~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\b3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b3,
	o => \b3~input_o\);

-- Location: LABCELL_X88_Y36_N36
\o[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \o[0]~1_combout\ = ( !\b2~input_o\ & ( (!\b4~input_o\ & (((!\b6~input_o\ & \b7~input_o\)) # (\b5~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011001100000010001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b6~input_o\,
	datab => \ALT_INV_b4~input_o\,
	datac => \ALT_INV_b7~input_o\,
	datad => \ALT_INV_b5~input_o\,
	dataf => \ALT_INV_b2~input_o\,
	combout => \o[0]~1_combout\);

-- Location: IOIBUF_X89_Y38_N55
\b1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LABCELL_X88_Y36_N18
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \o[0]~1_combout\ & ( \b1~input_o\ ) ) # ( !\o[0]~1_combout\ & ( \b1~input_o\ ) ) # ( \o[0]~1_combout\ & ( !\b1~input_o\ & ( ((!\o[0]~0_combout\) # ((\b3~input_o\) # (\b8~input_o\))) # (\b2~input_o\) ) ) ) # ( !\o[0]~1_combout\ & ( 
-- !\b1~input_o\ & ( (!\b2~input_o\ & \b3~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010110111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b2~input_o\,
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b8~input_o\,
	datad => \ALT_INV_b3~input_o\,
	datae => \ALT_INV_o[0]~1_combout\,
	dataf => \ALT_INV_b1~input_o\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X88_Y36_N42
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\o[0]~1_combout\ & ( !\b1~input_o\ & ( ((!\b3~input_o\ & ((!\o[0]~0_combout\) # (\b8~input_o\)))) # (\b2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b2~input_o\,
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b8~input_o\,
	datad => \ALT_INV_b3~input_o\,
	datae => \ALT_INV_o[0]~1_combout\,
	dataf => \ALT_INV_b1~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X88_Y36_N12
\o[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- o(0) = ( o(0) & ( !\comb~0_combout\ ) ) # ( !o(0) & ( (\comb~1_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~1_combout\,
	datad => \ALT_INV_comb~0_combout\,
	dataf => ALT_INV_o(0),
	combout => o(0));

-- Location: LABCELL_X88_Y36_N54
\o[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \o[1]~2_combout\ = ( \b7~input_o\ & ( \b6~input_o\ & ( (!\b4~input_o\ & !\b5~input_o\) ) ) ) # ( !\b7~input_o\ & ( \b6~input_o\ & ( (!\b4~input_o\ & !\b5~input_o\) ) ) ) # ( \b7~input_o\ & ( !\b6~input_o\ & ( (!\b4~input_o\ & !\b5~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_b4~input_o\,
	datac => \ALT_INV_b5~input_o\,
	datae => \ALT_INV_b7~input_o\,
	dataf => \ALT_INV_b6~input_o\,
	combout => \o[1]~2_combout\);

-- Location: LABCELL_X88_Y36_N30
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \o[1]~2_combout\ & ( \b1~input_o\ ) ) # ( !\o[1]~2_combout\ & ( \b1~input_o\ ) ) # ( !\o[1]~2_combout\ & ( !\b1~input_o\ & ( (!\b2~input_o\ & (!\b3~input_o\ & ((!\o[0]~0_combout\) # (\b8~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b2~input_o\,
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b8~input_o\,
	datad => \ALT_INV_b3~input_o\,
	datae => \ALT_INV_o[1]~2_combout\,
	dataf => \ALT_INV_b1~input_o\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X88_Y36_N6
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \o[1]~2_combout\ & ( !\b1~input_o\ & ( ((!\o[0]~0_combout\) # ((\b3~input_o\) # (\b8~input_o\))) # (\b2~input_o\) ) ) ) # ( !\o[1]~2_combout\ & ( !\b1~input_o\ & ( (\b3~input_o\) # (\b2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b2~input_o\,
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b8~input_o\,
	datad => \ALT_INV_b3~input_o\,
	datae => \ALT_INV_o[1]~2_combout\,
	dataf => \ALT_INV_b1~input_o\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X88_Y36_N24
\o[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- o(1) = ( o(1) & ( !\comb~2_combout\ ) ) # ( !o(1) & ( (!\comb~2_combout\ & \comb~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_comb~3_combout\,
	dataf => ALT_INV_o(1),
	combout => o(1));

-- Location: LABCELL_X88_Y36_N48
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( !\b1~input_o\ & ( (!\o[0]~0_combout\ & (!\b2~input_o\ & !\b3~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b2~input_o\,
	datad => \ALT_INV_b3~input_o\,
	dataf => \ALT_INV_b1~input_o\,
	combout => \comb~5_combout\);

-- Location: LABCELL_X88_Y36_N15
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \b2~input_o\ ) # ( !\b2~input_o\ & ( (((\b8~input_o\ & \o[0]~0_combout\)) # (\b3~input_o\)) # (\b1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111111111111000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_b8~input_o\,
	datab => \ALT_INV_o[0]~0_combout\,
	datac => \ALT_INV_b1~input_o\,
	datad => \ALT_INV_b3~input_o\,
	dataf => \ALT_INV_b2~input_o\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X88_Y36_N51
\o[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- o(2) = ( o(2) & ( !\comb~4_combout\ ) ) # ( !o(2) & ( (\comb~5_combout\ & !\comb~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~5_combout\,
	datac => \ALT_INV_comb~4_combout\,
	dataf => ALT_INV_o(2),
	combout => o(2));

-- Location: LABCELL_X88_Y36_N3
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !o(1) & ( (!o(2) & !o(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_o(2),
	datac => ALT_INV_o(0),
	dataf => ALT_INV_o(1),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X66_Y1_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


