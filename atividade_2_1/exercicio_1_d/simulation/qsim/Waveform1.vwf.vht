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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/24/2022 14:07:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          exercicio_1_d
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY exercicio_1_d_vhd_vec_tst IS
END exercicio_1_d_vhd_vec_tst;
ARCHITECTURE exercicio_1_d_arch OF exercicio_1_d_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL b : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL c : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL d : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL i : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT exercicio_1_d
	PORT (
	a : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	b : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	c : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	d : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	i : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : exercicio_1_d
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	d => d,
	i => i,
	s => s
	);
-- i[1]
t_prcs_i_1: PROCESS
BEGIN
	i(1) <= '1';
WAIT;
END PROCESS t_prcs_i_1;
-- i[0]
t_prcs_i_0: PROCESS
BEGIN
	i(0) <= '1';
WAIT;
END PROCESS t_prcs_i_0;
-- s[1]
t_prcs_s_1: PROCESS
BEGIN
LOOP
	s(1) <= '0';
	WAIT FOR 20000 ps;
	s(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_1;
-- s[0]
t_prcs_s_0: PROCESS
BEGIN
LOOP
	s(0) <= '0';
	WAIT FOR 10000 ps;
	s(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_s_0;
END exercicio_1_d_arch;
