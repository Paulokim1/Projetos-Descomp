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
-- Generated on "11/07/2022 20:47:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MIPS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MIPS_vhd_vec_tst IS
END MIPS_vhd_vec_tst;
ARCHITECTURE MIPS_arch OF MIPS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL Dado_Lido_RAM_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL endRegD_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL endRegS_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL endRegT_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Habilita_WR : STD_LOGIC;
SIGNAL PC_OUT : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regS_OUT_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL regT_OUT_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ULA_OUT_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	Dado_Lido_RAM_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	endRegD_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	endRegS_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	endRegT_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	Habilita_WR : IN STD_LOGIC;
	PC_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regS_OUT_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	regT_OUT_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ULA_OUT_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	Dado_Lido_RAM_Sim => Dado_Lido_RAM_Sim,
	endRegD_Sim => endRegD_Sim,
	endRegS_Sim => endRegS_Sim,
	endRegT_Sim => endRegT_Sim,
	Habilita_WR => Habilita_WR,
	PC_OUT => PC_OUT,
	regS_OUT_Sim => regS_OUT_Sim,
	regT_OUT_Sim => regT_OUT_Sim,
	ULA_OUT_Sim => ULA_OUT_Sim
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;

-- Habilita_WR
t_prcs_Habilita_WR: PROCESS
BEGIN
LOOP
	Habilita_WR <= '0';
	WAIT FOR 10000 ps;
	Habilita_WR <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Habilita_WR;
END MIPS_arch;
