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
-- Generated on "11/15/2022 18:56:10"
                                                             
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
SIGNAL dado_lido_ram_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dado_lido_reg_1_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dado_lido_reg_2_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL endReg1_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL endReg2_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL endReg3_Sim : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL flag_Sim : STD_LOGIC;
SIGNAL Instrucao_sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC_Out_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Pontos_Controle_Sim : STD_LOGIC_VECTOR(10 DOWNTO 0);
SIGNAL ULA_OP_Sim : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ULA_OUT_Sim : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MIPS
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	dado_lido_ram_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dado_lido_reg_1_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dado_lido_reg_2_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	endReg1_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	endReg2_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	endReg3_Sim : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	flag_Sim : OUT STD_LOGIC;
	Instrucao_sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_Out_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Pontos_Controle_Sim : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
	ULA_OP_Sim : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	ULA_OUT_Sim : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MIPS
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	dado_lido_ram_Sim => dado_lido_ram_Sim,
	dado_lido_reg_1_Sim => dado_lido_reg_1_Sim,
	dado_lido_reg_2_Sim => dado_lido_reg_2_Sim,
	endReg1_Sim => endReg1_Sim,
	endReg2_Sim => endReg2_Sim,
	endReg3_Sim => endReg3_Sim,
	flag_Sim => flag_Sim,
	Instrucao_sim => Instrucao_sim,
	PC_Out_Sim => PC_Out_Sim,
	Pontos_Controle_Sim => Pontos_Controle_Sim,
	ULA_OP_Sim => ULA_OP_Sim,
	ULA_OUT_Sim => ULA_OUT_Sim
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 20000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END MIPS_arch;
