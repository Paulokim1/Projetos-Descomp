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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/31/2022 23:18:46"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS IS
    PORT (
	CLOCK_50 : IN std_logic;
	Habilita_WR : IN std_logic;
	ULA_OP : IN std_logic;
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	Instrucao : OUT std_logic_vector(31 DOWNTO 0);
	ULA_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	endRegS_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endRegT_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endRegD_Sim : OUT std_logic_vector(4 DOWNTO 0);
	regS_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	regT_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- PC_OUT[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[8]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[9]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[10]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[12]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[15]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[18]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[20]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[21]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[22]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[23]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[24]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[26]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[27]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[28]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[29]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[30]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao[31]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[5]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[8]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[12]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[17]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[19]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[20]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[23]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[24]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[25]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[26]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[27]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[29]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[30]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[31]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[4]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[4]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[3]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[7]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[8]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[9]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[11]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[13]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[14]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[16]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[17]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[18]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[19]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[20]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[22]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[23]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[24]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[25]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[26]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[27]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[28]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[29]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[30]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[31]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[0]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[7]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[8]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[10]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[11]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[15]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[16]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[17]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[18]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[19]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[20]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[21]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[22]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[23]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[24]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[27]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[28]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[30]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ULA_OP	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Habilita_WR	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_Habilita_WR : std_logic;
SIGNAL ww_ULA_OP : std_logic;
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Instrucao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_endRegS_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endRegT_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endRegD_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_regS_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regT_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~1_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~2\ : std_logic;
SIGNAL \somaConstante|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~6\ : std_logic;
SIGNAL \somaConstante|Add0~9_sumout\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~10\ : std_logic;
SIGNAL \somaConstante|Add0~13_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~14\ : std_logic;
SIGNAL \somaConstante|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~18\ : std_logic;
SIGNAL \somaConstante|Add0~21_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~22\ : std_logic;
SIGNAL \somaConstante|Add0~25_sumout\ : std_logic;
SIGNAL \PC|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~26\ : std_logic;
SIGNAL \somaConstante|Add0~29_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~30\ : std_logic;
SIGNAL \somaConstante|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~34\ : std_logic;
SIGNAL \somaConstante|Add0~37_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~38\ : std_logic;
SIGNAL \somaConstante|Add0~41_sumout\ : std_logic;
SIGNAL \PC|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~42\ : std_logic;
SIGNAL \somaConstante|Add0~45_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~46\ : std_logic;
SIGNAL \somaConstante|Add0~49_sumout\ : std_logic;
SIGNAL \PC|DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~50\ : std_logic;
SIGNAL \somaConstante|Add0~53_sumout\ : std_logic;
SIGNAL \PC|DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~54\ : std_logic;
SIGNAL \somaConstante|Add0~57_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~58\ : std_logic;
SIGNAL \somaConstante|Add0~61_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~62\ : std_logic;
SIGNAL \somaConstante|Add0~65_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~66\ : std_logic;
SIGNAL \somaConstante|Add0~69_sumout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~70\ : std_logic;
SIGNAL \somaConstante|Add0~73_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~74\ : std_logic;
SIGNAL \somaConstante|Add0~77_sumout\ : std_logic;
SIGNAL \PC|DOUT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~78\ : std_logic;
SIGNAL \somaConstante|Add0~81_sumout\ : std_logic;
SIGNAL \PC|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~82\ : std_logic;
SIGNAL \somaConstante|Add0~85_sumout\ : std_logic;
SIGNAL \PC|DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~86\ : std_logic;
SIGNAL \somaConstante|Add0~89_sumout\ : std_logic;
SIGNAL \PC|DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~90\ : std_logic;
SIGNAL \somaConstante|Add0~93_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~94\ : std_logic;
SIGNAL \somaConstante|Add0~97_sumout\ : std_logic;
SIGNAL \PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~98\ : std_logic;
SIGNAL \somaConstante|Add0~101_sumout\ : std_logic;
SIGNAL \PC|DOUT[29]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~102\ : std_logic;
SIGNAL \somaConstante|Add0~105_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~106\ : std_logic;
SIGNAL \somaConstante|Add0~109_sumout\ : std_logic;
SIGNAL \PC|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~110\ : std_logic;
SIGNAL \somaConstante|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \BANCOREG|Equal1~0_combout\ : std_logic;
SIGNAL \ULA_OP~input_o\ : std_logic;
SIGNAL \Habilita_WR~input_o\ : std_logic;
SIGNAL \BANCOREG|registrador~1097_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~38_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1062_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1098_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~39_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1095_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1063_combout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~40_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1096_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1064_combout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1099_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~41_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1065_combout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~42_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1100_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~43_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1067_combout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~44_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1068_combout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1101_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~45_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1069_combout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~46_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1102_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~47_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1071_combout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~48_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1072_combout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1103_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~49_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1073_combout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~50_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1104_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~51_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1075_combout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~52_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1076_combout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1105_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~53_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1077_combout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~54_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1106_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~55_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1079_combout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~56_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1080_combout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1107_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~57_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1081_combout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~58_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1108_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~59_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1083_combout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~60_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1084_combout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1109_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~61_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1085_combout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~62_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1110_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~63_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1087_combout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~64_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1088_combout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1111_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~65_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1089_combout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~66_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1112_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~67_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1091_combout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~68_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1092_combout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \BANCOREG|registrador~1113_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~69_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1093_combout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \BANCOREG|saidaA[0]~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[1]~1_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[2]~2_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[3]~3_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[4]~4_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[5]~5_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[6]~6_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[7]~7_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[8]~8_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[9]~9_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[10]~10_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[11]~11_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[12]~12_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[13]~13_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[14]~14_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[15]~15_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[16]~16_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[17]~17_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[18]~18_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[19]~19_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[20]~20_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[21]~21_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[22]~22_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[23]~23_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[24]~24_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[25]~25_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[26]~26_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[27]~27_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[28]~28_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[29]~29_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[30]~30_combout\ : std_logic;
SIGNAL \BANCOREG|saidaA[31]~31_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[29]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[26]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[25]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[17]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[16]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Habilita_WR~input_o\ : std_logic;
SIGNAL \ALT_INV_ULA_OP~input_o\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1096_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1095_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1093_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1092_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1091_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1089_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1088_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1087_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1085_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1084_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1083_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1081_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1080_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1079_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1077_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1076_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1075_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1073_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1072_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1071_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1069_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1068_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1067_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1065_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1064_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1063_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(30 DOWNTO 2);
SIGNAL \ULA|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Habilita_WR <= Habilita_WR;
ww_ULA_OP <= ULA_OP;
PC_OUT <= ww_PC_OUT;
Instrucao <= ww_Instrucao;
ULA_OUT_Sim <= ww_ULA_OUT_Sim;
endRegS_Sim <= ww_endRegS_Sim;
endRegT_Sim <= ww_endRegT_Sim;
endRegD_Sim <= ww_endRegD_Sim;
regS_OUT_Sim <= ww_regS_OUT_Sim;
regT_OUT_Sim <= ww_regT_OUT_Sim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \PC|DOUT[31]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[29]~DUPLICATE_q\ <= NOT \PC|DOUT[29]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC|DOUT[28]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[26]~DUPLICATE_q\ <= NOT \PC|DOUT[26]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[25]~DUPLICATE_q\ <= NOT \PC|DOUT[25]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \PC|DOUT[24]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[23]~DUPLICATE_q\ <= NOT \PC|DOUT[23]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[17]~DUPLICATE_q\ <= NOT \PC|DOUT[17]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[16]~DUPLICATE_q\ <= NOT \PC|DOUT[16]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \PC|DOUT[14]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[12]~DUPLICATE_q\ <= NOT \PC|DOUT[12]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[10]~DUPLICATE_q\ <= NOT \PC|DOUT[10]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \PC|DOUT[8]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\ALT_INV_Habilita_WR~input_o\ <= NOT \Habilita_WR~input_o\;
\ALT_INV_ULA_OP~input_o\ <= NOT \ULA_OP~input_o\;
\BANCOREG|ALT_INV_registrador~1096_combout\ <= NOT \BANCOREG|registrador~1096_combout\;
\BANCOREG|ALT_INV_registrador~1095_combout\ <= NOT \BANCOREG|registrador~1095_combout\;
\BANCOREG|ALT_INV_registrador~1094_combout\ <= NOT \BANCOREG|registrador~1094_combout\;
\BANCOREG|ALT_INV_registrador~1093_combout\ <= NOT \BANCOREG|registrador~1093_combout\;
\BANCOREG|ALT_INV_registrador~69_q\ <= NOT \BANCOREG|registrador~69_q\;
\BANCOREG|ALT_INV_registrador~1092_combout\ <= NOT \BANCOREG|registrador~1092_combout\;
\BANCOREG|ALT_INV_registrador~68_q\ <= NOT \BANCOREG|registrador~68_q\;
\BANCOREG|ALT_INV_registrador~1091_combout\ <= NOT \BANCOREG|registrador~1091_combout\;
\BANCOREG|ALT_INV_registrador~67_q\ <= NOT \BANCOREG|registrador~67_q\;
\BANCOREG|ALT_INV_registrador~1090_combout\ <= NOT \BANCOREG|registrador~1090_combout\;
\BANCOREG|ALT_INV_registrador~66_q\ <= NOT \BANCOREG|registrador~66_q\;
\BANCOREG|ALT_INV_registrador~1089_combout\ <= NOT \BANCOREG|registrador~1089_combout\;
\BANCOREG|ALT_INV_registrador~65_q\ <= NOT \BANCOREG|registrador~65_q\;
\BANCOREG|ALT_INV_registrador~1088_combout\ <= NOT \BANCOREG|registrador~1088_combout\;
\BANCOREG|ALT_INV_registrador~64_q\ <= NOT \BANCOREG|registrador~64_q\;
\BANCOREG|ALT_INV_registrador~1087_combout\ <= NOT \BANCOREG|registrador~1087_combout\;
\BANCOREG|ALT_INV_registrador~63_q\ <= NOT \BANCOREG|registrador~63_q\;
\BANCOREG|ALT_INV_registrador~1086_combout\ <= NOT \BANCOREG|registrador~1086_combout\;
\BANCOREG|ALT_INV_registrador~62_q\ <= NOT \BANCOREG|registrador~62_q\;
\BANCOREG|ALT_INV_registrador~1085_combout\ <= NOT \BANCOREG|registrador~1085_combout\;
\BANCOREG|ALT_INV_registrador~61_q\ <= NOT \BANCOREG|registrador~61_q\;
\BANCOREG|ALT_INV_registrador~1084_combout\ <= NOT \BANCOREG|registrador~1084_combout\;
\BANCOREG|ALT_INV_registrador~60_q\ <= NOT \BANCOREG|registrador~60_q\;
\BANCOREG|ALT_INV_registrador~1083_combout\ <= NOT \BANCOREG|registrador~1083_combout\;
\BANCOREG|ALT_INV_registrador~59_q\ <= NOT \BANCOREG|registrador~59_q\;
\BANCOREG|ALT_INV_registrador~1082_combout\ <= NOT \BANCOREG|registrador~1082_combout\;
\BANCOREG|ALT_INV_registrador~58_q\ <= NOT \BANCOREG|registrador~58_q\;
\BANCOREG|ALT_INV_registrador~1081_combout\ <= NOT \BANCOREG|registrador~1081_combout\;
\BANCOREG|ALT_INV_registrador~57_q\ <= NOT \BANCOREG|registrador~57_q\;
\BANCOREG|ALT_INV_registrador~1080_combout\ <= NOT \BANCOREG|registrador~1080_combout\;
\BANCOREG|ALT_INV_registrador~56_q\ <= NOT \BANCOREG|registrador~56_q\;
\BANCOREG|ALT_INV_registrador~1079_combout\ <= NOT \BANCOREG|registrador~1079_combout\;
\BANCOREG|ALT_INV_registrador~55_q\ <= NOT \BANCOREG|registrador~55_q\;
\BANCOREG|ALT_INV_registrador~1078_combout\ <= NOT \BANCOREG|registrador~1078_combout\;
\BANCOREG|ALT_INV_registrador~54_q\ <= NOT \BANCOREG|registrador~54_q\;
\BANCOREG|ALT_INV_registrador~1077_combout\ <= NOT \BANCOREG|registrador~1077_combout\;
\BANCOREG|ALT_INV_registrador~53_q\ <= NOT \BANCOREG|registrador~53_q\;
\BANCOREG|ALT_INV_registrador~1076_combout\ <= NOT \BANCOREG|registrador~1076_combout\;
\BANCOREG|ALT_INV_registrador~52_q\ <= NOT \BANCOREG|registrador~52_q\;
\BANCOREG|ALT_INV_registrador~1075_combout\ <= NOT \BANCOREG|registrador~1075_combout\;
\BANCOREG|ALT_INV_registrador~51_q\ <= NOT \BANCOREG|registrador~51_q\;
\BANCOREG|ALT_INV_registrador~1074_combout\ <= NOT \BANCOREG|registrador~1074_combout\;
\BANCOREG|ALT_INV_registrador~50_q\ <= NOT \BANCOREG|registrador~50_q\;
\BANCOREG|ALT_INV_registrador~1073_combout\ <= NOT \BANCOREG|registrador~1073_combout\;
\BANCOREG|ALT_INV_registrador~49_q\ <= NOT \BANCOREG|registrador~49_q\;
\BANCOREG|ALT_INV_registrador~1072_combout\ <= NOT \BANCOREG|registrador~1072_combout\;
\BANCOREG|ALT_INV_registrador~48_q\ <= NOT \BANCOREG|registrador~48_q\;
\BANCOREG|ALT_INV_registrador~1071_combout\ <= NOT \BANCOREG|registrador~1071_combout\;
\BANCOREG|ALT_INV_registrador~47_q\ <= NOT \BANCOREG|registrador~47_q\;
\BANCOREG|ALT_INV_registrador~1070_combout\ <= NOT \BANCOREG|registrador~1070_combout\;
\BANCOREG|ALT_INV_registrador~46_q\ <= NOT \BANCOREG|registrador~46_q\;
\BANCOREG|ALT_INV_registrador~1069_combout\ <= NOT \BANCOREG|registrador~1069_combout\;
\BANCOREG|ALT_INV_registrador~45_q\ <= NOT \BANCOREG|registrador~45_q\;
\BANCOREG|ALT_INV_registrador~1068_combout\ <= NOT \BANCOREG|registrador~1068_combout\;
\BANCOREG|ALT_INV_registrador~44_q\ <= NOT \BANCOREG|registrador~44_q\;
\BANCOREG|ALT_INV_registrador~1067_combout\ <= NOT \BANCOREG|registrador~1067_combout\;
\BANCOREG|ALT_INV_registrador~43_q\ <= NOT \BANCOREG|registrador~43_q\;
\BANCOREG|ALT_INV_registrador~1066_combout\ <= NOT \BANCOREG|registrador~1066_combout\;
\BANCOREG|ALT_INV_registrador~42_q\ <= NOT \BANCOREG|registrador~42_q\;
\BANCOREG|ALT_INV_registrador~1065_combout\ <= NOT \BANCOREG|registrador~1065_combout\;
\BANCOREG|ALT_INV_registrador~41_q\ <= NOT \BANCOREG|registrador~41_q\;
\BANCOREG|ALT_INV_registrador~1064_combout\ <= NOT \BANCOREG|registrador~1064_combout\;
\BANCOREG|ALT_INV_registrador~40_q\ <= NOT \BANCOREG|registrador~40_q\;
\BANCOREG|ALT_INV_registrador~1063_combout\ <= NOT \BANCOREG|registrador~1063_combout\;
\BANCOREG|ALT_INV_registrador~39_q\ <= NOT \BANCOREG|registrador~39_q\;
\BANCOREG|ALT_INV_registrador~1062_combout\ <= NOT \BANCOREG|registrador~1062_combout\;
\BANCOREG|ALT_INV_registrador~38_q\ <= NOT \BANCOREG|registrador~38_q\;
\BANCOREG|ALT_INV_Equal1~0_combout\ <= NOT \BANCOREG|Equal1~0_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(15) <= NOT \PC|DOUT\(15);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\ULA|ALT_INV_Add0~125_sumout\ <= NOT \ULA|Add0~125_sumout\;
\ULA|ALT_INV_Add0~117_sumout\ <= NOT \ULA|Add0~117_sumout\;
\ULA|ALT_INV_Add0~109_sumout\ <= NOT \ULA|Add0~109_sumout\;
\ULA|ALT_INV_Add0~101_sumout\ <= NOT \ULA|Add0~101_sumout\;
\ULA|ALT_INV_Add0~93_sumout\ <= NOT \ULA|Add0~93_sumout\;
\ULA|ALT_INV_Add0~85_sumout\ <= NOT \ULA|Add0~85_sumout\;
\ULA|ALT_INV_Add0~77_sumout\ <= NOT \ULA|Add0~77_sumout\;
\ULA|ALT_INV_Add0~69_sumout\ <= NOT \ULA|Add0~69_sumout\;
\ULA|ALT_INV_Add0~61_sumout\ <= NOT \ULA|Add0~61_sumout\;
\ULA|ALT_INV_Add0~53_sumout\ <= NOT \ULA|Add0~53_sumout\;
\ULA|ALT_INV_Add0~45_sumout\ <= NOT \ULA|Add0~45_sumout\;
\ULA|ALT_INV_Add0~37_sumout\ <= NOT \ULA|Add0~37_sumout\;
\ULA|ALT_INV_Add0~29_sumout\ <= NOT \ULA|Add0~29_sumout\;
\ULA|ALT_INV_Add0~21_sumout\ <= NOT \ULA|Add0~21_sumout\;
\ULA|ALT_INV_Add0~13_sumout\ <= NOT \ULA|Add0~13_sumout\;
\ULA|ALT_INV_Add0~5_sumout\ <= NOT \ULA|Add0~5_sumout\;

-- Location: IOOBUF_X80_Y81_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X4_Y0_N53
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X60_Y0_N19
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X54_Y0_N36
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X54_Y0_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X54_Y0_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X54_Y0_N2
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X89_Y6_N39
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X89_Y9_N56
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X52_Y81_N53
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X89_Y9_N22
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X50_Y81_N93
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X52_Y81_N2
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X58_Y0_N93
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X60_Y0_N53
\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_OUT(14));

-- Location: IOOBUF_X64_Y0_N2
\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_OUT(15));

-- Location: IOOBUF_X62_Y0_N53
\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_OUT(16));

-- Location: IOOBUF_X58_Y0_N59
\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_OUT(17));

-- Location: IOOBUF_X56_Y0_N36
\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_OUT(18));

-- Location: IOOBUF_X52_Y0_N53
\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_OUT(19));

-- Location: IOOBUF_X64_Y0_N53
\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_OUT(20));

-- Location: IOOBUF_X30_Y0_N19
\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_OUT(21));

-- Location: IOOBUF_X58_Y0_N42
\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_OUT(22));

-- Location: IOOBUF_X60_Y0_N36
\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_OUT(23));

-- Location: IOOBUF_X56_Y0_N53
\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_OUT(24));

-- Location: IOOBUF_X62_Y0_N2
\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_OUT(25));

-- Location: IOOBUF_X64_Y0_N19
\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_OUT(26));

-- Location: IOOBUF_X62_Y0_N19
\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_OUT(27));

-- Location: IOOBUF_X70_Y0_N53
\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_OUT(28));

-- Location: IOOBUF_X58_Y0_N76
\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_OUT(29));

-- Location: IOOBUF_X62_Y0_N36
\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_OUT(30));

-- Location: IOOBUF_X70_Y0_N36
\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_OUT(31));

-- Location: IOOBUF_X89_Y38_N22
\Instrucao[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(0));

-- Location: IOOBUF_X68_Y81_N36
\Instrucao[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(1));

-- Location: IOOBUF_X64_Y81_N36
\Instrucao[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(2));

-- Location: IOOBUF_X88_Y81_N37
\Instrucao[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(3));

-- Location: IOOBUF_X89_Y36_N22
\Instrucao[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(4));

-- Location: IOOBUF_X62_Y81_N19
\Instrucao[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(5));

-- Location: IOOBUF_X84_Y81_N53
\Instrucao[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(6));

-- Location: IOOBUF_X2_Y0_N42
\Instrucao[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(7));

-- Location: IOOBUF_X76_Y81_N53
\Instrucao[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(8));

-- Location: IOOBUF_X89_Y35_N96
\Instrucao[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(9));

-- Location: IOOBUF_X68_Y81_N19
\Instrucao[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(10));

-- Location: IOOBUF_X32_Y81_N53
\Instrucao[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(11));

-- Location: IOOBUF_X88_Y81_N20
\Instrucao[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(12));

-- Location: IOOBUF_X78_Y81_N19
\Instrucao[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(13));

-- Location: IOOBUF_X66_Y81_N59
\Instrucao[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(14));

-- Location: IOOBUF_X26_Y81_N59
\Instrucao[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(15));

-- Location: IOOBUF_X66_Y81_N93
\Instrucao[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(16));

-- Location: IOOBUF_X62_Y81_N53
\Instrucao[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(17));

-- Location: IOOBUF_X26_Y81_N93
\Instrucao[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(18));

-- Location: IOOBUF_X70_Y81_N2
\Instrucao[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(19));

-- Location: IOOBUF_X38_Y81_N2
\Instrucao[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(20));

-- Location: IOOBUF_X62_Y81_N2
\Instrucao[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(21));

-- Location: IOOBUF_X34_Y81_N76
\Instrucao[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(22));

-- Location: IOOBUF_X60_Y81_N19
\Instrucao[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(23));

-- Location: IOOBUF_X64_Y81_N2
\Instrucao[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao(24));

-- Location: IOOBUF_X30_Y81_N2
\Instrucao[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(25));

-- Location: IOOBUF_X30_Y81_N19
\Instrucao[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(26));

-- Location: IOOBUF_X36_Y81_N19
\Instrucao[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(27));

-- Location: IOOBUF_X86_Y81_N19
\Instrucao[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(28));

-- Location: IOOBUF_X80_Y81_N19
\Instrucao[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(29));

-- Location: IOOBUF_X76_Y81_N19
\Instrucao[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(30));

-- Location: IOOBUF_X2_Y0_N59
\Instrucao[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao(31));

-- Location: IOOBUF_X52_Y0_N2
\ULA_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(0));

-- Location: IOOBUF_X89_Y4_N79
\ULA_OUT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(1));

-- Location: IOOBUF_X52_Y0_N36
\ULA_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(2));

-- Location: IOOBUF_X89_Y4_N45
\ULA_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(3));

-- Location: IOOBUF_X89_Y8_N22
\ULA_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(4));

-- Location: IOOBUF_X38_Y0_N36
\ULA_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(5));

-- Location: IOOBUF_X38_Y0_N2
\ULA_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(6));

-- Location: IOOBUF_X38_Y0_N19
\ULA_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(7));

-- Location: IOOBUF_X89_Y4_N62
\ULA_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(8));

-- Location: IOOBUF_X38_Y0_N53
\ULA_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(9));

-- Location: IOOBUF_X52_Y0_N19
\ULA_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(10));

-- Location: IOOBUF_X50_Y0_N93
\ULA_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(11));

-- Location: IOOBUF_X50_Y0_N76
\ULA_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(12));

-- Location: IOOBUF_X56_Y0_N19
\ULA_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(13));

-- Location: IOOBUF_X89_Y6_N56
\ULA_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(14));

-- Location: IOOBUF_X50_Y0_N59
\ULA_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(15));

-- Location: IOOBUF_X89_Y8_N56
\ULA_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(16));

-- Location: IOOBUF_X8_Y0_N36
\ULA_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(17));

-- Location: IOOBUF_X50_Y0_N42
\ULA_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(18));

-- Location: IOOBUF_X40_Y0_N36
\ULA_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(19));

-- Location: IOOBUF_X40_Y0_N2
\ULA_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(20));

-- Location: IOOBUF_X36_Y0_N53
\ULA_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(21));

-- Location: IOOBUF_X34_Y0_N93
\ULA_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(22));

-- Location: IOOBUF_X36_Y0_N2
\ULA_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(23));

-- Location: IOOBUF_X34_Y0_N76
\ULA_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(24));

-- Location: IOOBUF_X4_Y0_N19
\ULA_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(25));

-- Location: IOOBUF_X40_Y0_N53
\ULA_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(26));

-- Location: IOOBUF_X28_Y0_N36
\ULA_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(27));

-- Location: IOOBUF_X30_Y0_N53
\ULA_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(28));

-- Location: IOOBUF_X89_Y4_N96
\ULA_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(29));

-- Location: IOOBUF_X56_Y0_N2
\ULA_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(30));

-- Location: IOOBUF_X40_Y0_N19
\ULA_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(31));

-- Location: IOOBUF_X62_Y81_N36
\endRegS_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(0));

-- Location: IOOBUF_X74_Y81_N59
\endRegS_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(1));

-- Location: IOOBUF_X66_Y81_N42
\endRegS_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(2));

-- Location: IOOBUF_X70_Y81_N19
\endRegS_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(3));

-- Location: IOOBUF_X72_Y81_N19
\endRegS_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(4));

-- Location: IOOBUF_X68_Y81_N53
\endRegT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(0));

-- Location: IOOBUF_X60_Y81_N53
\endRegT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(1));

-- Location: IOOBUF_X2_Y0_N76
\endRegT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(2));

-- Location: IOOBUF_X70_Y81_N53
\endRegT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(3));

-- Location: IOOBUF_X74_Y81_N42
\endRegT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(4));

-- Location: IOOBUF_X72_Y81_N53
\endRegD_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(0));

-- Location: IOOBUF_X36_Y81_N53
\endRegD_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(1));

-- Location: IOOBUF_X86_Y81_N36
\endRegD_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(2));

-- Location: IOOBUF_X68_Y81_N2
\endRegD_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(3));

-- Location: IOOBUF_X32_Y81_N36
\endRegD_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(4));

-- Location: IOOBUF_X60_Y0_N2
\regS_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(0));

-- Location: IOOBUF_X64_Y0_N36
\regS_OUT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(1));

-- Location: IOOBUF_X66_Y0_N42
\regS_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(2));

-- Location: IOOBUF_X66_Y0_N59
\regS_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(3));

-- Location: IOOBUF_X6_Y0_N53
\regS_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(4));

-- Location: IOOBUF_X26_Y0_N42
\regS_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(5));

-- Location: IOOBUF_X56_Y81_N19
\regS_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(6));

-- Location: IOOBUF_X89_Y35_N62
\regS_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(7));

-- Location: IOOBUF_X89_Y6_N5
\regS_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(8));

-- Location: IOOBUF_X89_Y8_N5
\regS_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(9));

-- Location: IOOBUF_X32_Y0_N19
\regS_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(10));

-- Location: IOOBUF_X72_Y0_N2
\regS_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(11));

-- Location: IOOBUF_X8_Y0_N19
\regS_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(12));

-- Location: IOOBUF_X30_Y0_N36
\regS_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(13));

-- Location: IOOBUF_X38_Y81_N36
\regS_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(14));

-- Location: IOOBUF_X28_Y0_N19
\regS_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(15));

-- Location: IOOBUF_X40_Y81_N19
\regS_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(16));

-- Location: IOOBUF_X8_Y0_N53
\regS_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(17));

-- Location: IOOBUF_X50_Y81_N76
\regS_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(18));

-- Location: IOOBUF_X54_Y81_N19
\regS_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(19));

-- Location: IOOBUF_X72_Y0_N19
\regS_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(20));

-- Location: IOOBUF_X6_Y0_N19
\regS_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(21));

-- Location: IOOBUF_X34_Y0_N59
\regS_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(22));

-- Location: IOOBUF_X52_Y81_N36
\regS_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(23));

-- Location: IOOBUF_X64_Y81_N53
\regS_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(24));

-- Location: IOOBUF_X68_Y0_N2
\regS_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(25));

-- Location: IOOBUF_X68_Y0_N36
\regS_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(26));

-- Location: IOOBUF_X70_Y0_N19
\regS_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(27));

-- Location: IOOBUF_X56_Y81_N53
\regS_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(28));

-- Location: IOOBUF_X58_Y81_N59
\regS_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(29));

-- Location: IOOBUF_X36_Y0_N36
\regS_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(30));

-- Location: IOOBUF_X50_Y81_N59
\regS_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(31));

-- Location: IOOBUF_X66_Y0_N93
\regT_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(0));

-- Location: IOOBUF_X89_Y9_N39
\regT_OUT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(1));

-- Location: IOOBUF_X58_Y81_N42
\regT_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(2));

-- Location: IOOBUF_X66_Y0_N76
\regT_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(3));

-- Location: IOOBUF_X26_Y0_N93
\regT_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(4));

-- Location: IOOBUF_X26_Y0_N76
\regT_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(5));

-- Location: IOOBUF_X56_Y81_N2
\regT_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(6));

-- Location: IOOBUF_X89_Y35_N79
\regT_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(7));

-- Location: IOOBUF_X89_Y6_N22
\regT_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(8));

-- Location: IOOBUF_X89_Y8_N39
\regT_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(9));

-- Location: IOOBUF_X32_Y0_N53
\regT_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(10));

-- Location: IOOBUF_X72_Y0_N53
\regT_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(11));

-- Location: IOOBUF_X8_Y0_N2
\regT_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(12));

-- Location: IOOBUF_X30_Y0_N2
\regT_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(13));

-- Location: IOOBUF_X38_Y81_N53
\regT_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(14));

-- Location: IOOBUF_X28_Y0_N53
\regT_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(15));

-- Location: IOOBUF_X40_Y81_N53
\regT_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(16));

-- Location: IOOBUF_X28_Y0_N2
\regT_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(17));

-- Location: IOOBUF_X52_Y81_N19
\regT_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(18));

-- Location: IOOBUF_X54_Y81_N2
\regT_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(19));

-- Location: IOOBUF_X72_Y0_N36
\regT_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(20));

-- Location: IOOBUF_X6_Y0_N36
\regT_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(21));

-- Location: IOOBUF_X34_Y0_N42
\regT_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(22));

-- Location: IOOBUF_X54_Y81_N53
\regT_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(23));

-- Location: IOOBUF_X64_Y81_N19
\regT_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(24));

-- Location: IOOBUF_X68_Y0_N19
\regT_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(25));

-- Location: IOOBUF_X68_Y0_N53
\regT_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(26));

-- Location: IOOBUF_X70_Y0_N2
\regT_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(27));

-- Location: IOOBUF_X56_Y81_N36
\regT_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(28));

-- Location: IOOBUF_X58_Y81_N93
\regT_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(29));

-- Location: IOOBUF_X36_Y0_N19
\regT_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(30));

-- Location: IOOBUF_X50_Y81_N42
\regT_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(31));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X53_Y5_N54
\PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~0_combout\ = ( !\PC|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~0_combout\);

-- Location: FF_X53_Y5_N56
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X52_Y5_N0
\somaConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))
-- \somaConstante|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( \PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somaConstante|Add0~1_sumout\,
	cout => \somaConstante|Add0~2\);

-- Location: FF_X52_Y5_N1
\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

-- Location: MLABCELL_X52_Y5_N3
\somaConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~5_sumout\ = SUM(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))
-- \somaConstante|Add0~6\ = CARRY(( \PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \somaConstante|Add0~2\,
	sumout => \somaConstante|Add0~5_sumout\,
	cout => \somaConstante|Add0~6\);

-- Location: FF_X52_Y5_N4
\PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X52_Y5_N8
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X52_Y5_N6
\somaConstante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~9_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~6\ ))
-- \somaConstante|Add0~10\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(5),
	cin => \somaConstante|Add0~6\,
	sumout => \somaConstante|Add0~9_sumout\,
	cout => \somaConstante|Add0~10\);

-- Location: FF_X52_Y5_N7
\PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N9
\somaConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~13_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~10\ ))
-- \somaConstante|Add0~14\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \somaConstante|Add0~10\,
	sumout => \somaConstante|Add0~13_sumout\,
	cout => \somaConstante|Add0~14\);

-- Location: FF_X52_Y5_N11
\PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N12
\somaConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~14\ ))
-- \somaConstante|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \somaConstante|Add0~14\,
	sumout => \somaConstante|Add0~17_sumout\,
	cout => \somaConstante|Add0~18\);

-- Location: FF_X52_Y5_N14
\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

-- Location: FF_X52_Y5_N17
\PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N15
\somaConstante|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~21_sumout\ = SUM(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~18\ ))
-- \somaConstante|Add0~22\ = CARRY(( \PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \somaConstante|Add0~18\,
	sumout => \somaConstante|Add0~21_sumout\,
	cout => \somaConstante|Add0~22\);

-- Location: FF_X52_Y5_N16
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X52_Y5_N18
\somaConstante|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~25_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~22\ ))
-- \somaConstante|Add0~26\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(9),
	cin => \somaConstante|Add0~22\,
	sumout => \somaConstante|Add0~25_sumout\,
	cout => \somaConstante|Add0~26\);

-- Location: FF_X52_Y5_N20
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: FF_X52_Y5_N23
\PC|DOUT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[10]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N21
\somaConstante|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~29_sumout\ = SUM(( \PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~26\ ))
-- \somaConstante|Add0~30\ = CARRY(( \PC|DOUT[10]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[10]~DUPLICATE_q\,
	cin => \somaConstante|Add0~26\,
	sumout => \somaConstante|Add0~29_sumout\,
	cout => \somaConstante|Add0~30\);

-- Location: FF_X52_Y5_N22
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: MLABCELL_X52_Y5_N24
\somaConstante|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~33_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~30\ ))
-- \somaConstante|Add0~34\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(11),
	cin => \somaConstante|Add0~30\,
	sumout => \somaConstante|Add0~33_sumout\,
	cout => \somaConstante|Add0~34\);

-- Location: FF_X52_Y5_N26
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: FF_X52_Y5_N29
\PC|DOUT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[12]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y5_N27
\somaConstante|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~37_sumout\ = SUM(( \PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~34\ ))
-- \somaConstante|Add0~38\ = CARRY(( \PC|DOUT[12]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[12]~DUPLICATE_q\,
	cin => \somaConstante|Add0~34\,
	sumout => \somaConstante|Add0~37_sumout\,
	cout => \somaConstante|Add0~38\);

-- Location: FF_X52_Y5_N28
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: MLABCELL_X52_Y4_N0
\somaConstante|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~41_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~38\ ))
-- \somaConstante|Add0~42\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(13),
	cin => \somaConstante|Add0~38\,
	sumout => \somaConstante|Add0~41_sumout\,
	cout => \somaConstante|Add0~42\);

-- Location: FF_X52_Y4_N2
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: FF_X52_Y4_N5
\PC|DOUT[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[14]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N3
\somaConstante|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~45_sumout\ = SUM(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~42\ ))
-- \somaConstante|Add0~46\ = CARRY(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \somaConstante|Add0~42\,
	sumout => \somaConstante|Add0~45_sumout\,
	cout => \somaConstante|Add0~46\);

-- Location: FF_X52_Y4_N4
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: MLABCELL_X52_Y4_N6
\somaConstante|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~49_sumout\ = SUM(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~46\ ))
-- \somaConstante|Add0~50\ = CARRY(( \PC|DOUT\(15) ) + ( GND ) + ( \somaConstante|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(15),
	cin => \somaConstante|Add0~46\,
	sumout => \somaConstante|Add0~49_sumout\,
	cout => \somaConstante|Add0~50\);

-- Location: FF_X52_Y4_N7
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: FF_X52_Y4_N11
\PC|DOUT[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[16]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N9
\somaConstante|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~53_sumout\ = SUM(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))
-- \somaConstante|Add0~54\ = CARRY(( \PC|DOUT[16]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[16]~DUPLICATE_q\,
	cin => \somaConstante|Add0~50\,
	sumout => \somaConstante|Add0~53_sumout\,
	cout => \somaConstante|Add0~54\);

-- Location: FF_X52_Y4_N10
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: FF_X52_Y4_N14
\PC|DOUT[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[17]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N12
\somaConstante|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~57_sumout\ = SUM(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~54\ ))
-- \somaConstante|Add0~58\ = CARRY(( \PC|DOUT[17]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[17]~DUPLICATE_q\,
	cin => \somaConstante|Add0~54\,
	sumout => \somaConstante|Add0~57_sumout\,
	cout => \somaConstante|Add0~58\);

-- Location: FF_X52_Y4_N13
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: MLABCELL_X52_Y4_N15
\somaConstante|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~61_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~58\ ))
-- \somaConstante|Add0~62\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(18),
	cin => \somaConstante|Add0~58\,
	sumout => \somaConstante|Add0~61_sumout\,
	cout => \somaConstante|Add0~62\);

-- Location: FF_X52_Y4_N17
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: MLABCELL_X52_Y4_N18
\somaConstante|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~65_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~62\ ))
-- \somaConstante|Add0~66\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(19),
	cin => \somaConstante|Add0~62\,
	sumout => \somaConstante|Add0~65_sumout\,
	cout => \somaConstante|Add0~66\);

-- Location: FF_X52_Y4_N20
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: MLABCELL_X52_Y4_N21
\somaConstante|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~69_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~66\ ))
-- \somaConstante|Add0~70\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \somaConstante|Add0~66\,
	sumout => \somaConstante|Add0~69_sumout\,
	cout => \somaConstante|Add0~70\);

-- Location: FF_X52_Y4_N23
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: FF_X52_Y4_N26
\PC|DOUT[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N24
\somaConstante|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~73_sumout\ = SUM(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~70\ ))
-- \somaConstante|Add0~74\ = CARRY(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \somaConstante|Add0~70\,
	sumout => \somaConstante|Add0~73_sumout\,
	cout => \somaConstante|Add0~74\);

-- Location: FF_X52_Y4_N25
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: MLABCELL_X52_Y4_N27
\somaConstante|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~77_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~74\ ))
-- \somaConstante|Add0~78\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \somaConstante|Add0~74\,
	sumout => \somaConstante|Add0~77_sumout\,
	cout => \somaConstante|Add0~78\);

-- Location: FF_X52_Y4_N29
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: FF_X52_Y4_N32
\PC|DOUT[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[23]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N30
\somaConstante|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~81_sumout\ = SUM(( \PC|DOUT[23]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~78\ ))
-- \somaConstante|Add0~82\ = CARRY(( \PC|DOUT[23]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[23]~DUPLICATE_q\,
	cin => \somaConstante|Add0~78\,
	sumout => \somaConstante|Add0~81_sumout\,
	cout => \somaConstante|Add0~82\);

-- Location: FF_X52_Y4_N31
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: FF_X52_Y4_N35
\PC|DOUT[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[24]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N33
\somaConstante|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~85_sumout\ = SUM(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~82\ ))
-- \somaConstante|Add0~86\ = CARRY(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \somaConstante|Add0~82\,
	sumout => \somaConstante|Add0~85_sumout\,
	cout => \somaConstante|Add0~86\);

-- Location: FF_X52_Y4_N34
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: FF_X52_Y4_N38
\PC|DOUT[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[25]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N36
\somaConstante|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~89_sumout\ = SUM(( \PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~86\ ))
-- \somaConstante|Add0~90\ = CARRY(( \PC|DOUT[25]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[25]~DUPLICATE_q\,
	cin => \somaConstante|Add0~86\,
	sumout => \somaConstante|Add0~89_sumout\,
	cout => \somaConstante|Add0~90\);

-- Location: FF_X52_Y4_N37
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: FF_X52_Y4_N41
\PC|DOUT[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[26]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N39
\somaConstante|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~93_sumout\ = SUM(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~90\ ))
-- \somaConstante|Add0~94\ = CARRY(( \PC|DOUT[26]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[26]~DUPLICATE_q\,
	cin => \somaConstante|Add0~90\,
	sumout => \somaConstante|Add0~93_sumout\,
	cout => \somaConstante|Add0~94\);

-- Location: FF_X52_Y4_N40
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: MLABCELL_X52_Y4_N42
\somaConstante|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~97_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~94\ ))
-- \somaConstante|Add0~98\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(27),
	cin => \somaConstante|Add0~94\,
	sumout => \somaConstante|Add0~97_sumout\,
	cout => \somaConstante|Add0~98\);

-- Location: FF_X52_Y4_N44
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: FF_X52_Y4_N47
\PC|DOUT[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[28]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N45
\somaConstante|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~101_sumout\ = SUM(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~98\ ))
-- \somaConstante|Add0~102\ = CARRY(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \somaConstante|Add0~98\,
	sumout => \somaConstante|Add0~101_sumout\,
	cout => \somaConstante|Add0~102\);

-- Location: FF_X52_Y4_N46
\PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(28));

-- Location: FF_X52_Y4_N50
\PC|DOUT[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[29]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N48
\somaConstante|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~105_sumout\ = SUM(( \PC|DOUT[29]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~102\ ))
-- \somaConstante|Add0~106\ = CARRY(( \PC|DOUT[29]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[29]~DUPLICATE_q\,
	cin => \somaConstante|Add0~102\,
	sumout => \somaConstante|Add0~105_sumout\,
	cout => \somaConstante|Add0~106\);

-- Location: FF_X52_Y4_N49
\PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(29));

-- Location: MLABCELL_X52_Y4_N51
\somaConstante|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~109_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~106\ ))
-- \somaConstante|Add0~110\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(30),
	cin => \somaConstante|Add0~106\,
	sumout => \somaConstante|Add0~109_sumout\,
	cout => \somaConstante|Add0~110\);

-- Location: FF_X52_Y4_N52
\PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(30));

-- Location: FF_X52_Y4_N56
\PC|DOUT[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[31]~DUPLICATE_q\);

-- Location: MLABCELL_X52_Y4_N54
\somaConstante|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~113_sumout\ = SUM(( \PC|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \somaConstante|Add0~110\,
	sumout => \somaConstante|Add0~113_sumout\);

-- Location: FF_X52_Y4_N55
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: FF_X52_Y5_N13
\PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X52_Y5_N10
\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

-- Location: LABCELL_X53_Y5_N48
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(3) & (\PC|DOUT\(2) & !\PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

-- Location: FF_X52_Y5_N2
\PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X52_Y5_N5
\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

-- Location: MLABCELL_X52_Y5_N30
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(7) & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(4),
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~1_combout\);

-- Location: LABCELL_X53_Y5_N36
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & !\PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~2_combout\);

-- Location: LABCELL_X53_Y5_N33
\BANCOREG|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|Equal1~0_combout\ = ( \PC|DOUT\(3) ) # ( !\PC|DOUT\(3) & ( (((\PC|DOUT[7]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT\(6))) # (\PC|DOUT[5]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(3),
	combout => \BANCOREG|Equal1~0_combout\);

-- Location: IOIBUF_X32_Y0_N35
\ULA_OP~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULA_OP,
	o => \ULA_OP~input_o\);

-- Location: IOIBUF_X54_Y81_N35
\Habilita_WR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Habilita_WR,
	o => \Habilita_WR~input_o\);

-- Location: LABCELL_X53_Y5_N0
\BANCOREG|registrador~1097\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1097_combout\ = ( \PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(6) & ( \Habilita_WR~input_o\ ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT\(6) & ( \Habilita_WR~input_o\ ) ) ) # ( \PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( 
-- \Habilita_WR~input_o\ ) ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT\(6) & ( (\Habilita_WR~input_o\ & (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT\(3))) # (\PC|DOUT[7]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \ALT_INV_Habilita_WR~input_o\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(6),
	combout => \BANCOREG|registrador~1097_combout\);

-- Location: FF_X52_Y5_N38
\BANCOREG|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~1_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~38_q\);

-- Location: MLABCELL_X52_Y5_N36
\BANCOREG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1062_combout\ = ( \ROM|memROM~1_combout\ & ( \PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	datad => \BANCOREG|ALT_INV_registrador~38_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1062_combout\);

-- Location: MLABCELL_X52_Y5_N39
\BANCOREG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1094_combout\ = ( \ROM|memROM~1_combout\ & ( !\PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~38_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \BANCOREG|ALT_INV_registrador~38_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1094_combout\);

-- Location: LABCELL_X51_Y5_N0
\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\ULA_OP~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ULA_OP~input_o\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

-- Location: LABCELL_X51_Y5_N3
\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1094_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1062_combout\) ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1094_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1062_combout\) ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1062_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1094_combout\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

-- Location: LABCELL_X53_Y5_N12
\BANCOREG|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1098_combout\ = ( !\ULA|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ULA|ALT_INV_Add0~5_sumout\,
	combout => \BANCOREG|registrador~1098_combout\);

-- Location: FF_X53_Y5_N14
\BANCOREG|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1098_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~39_q\);

-- Location: MLABCELL_X52_Y5_N42
\BANCOREG|registrador~1095\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1095_combout\ = ( !\PC|DOUT\(7) & ( \BANCOREG|registrador~39_q\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT[3]~DUPLICATE_q\ & !\PC|DOUT[6]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT\(7) & ( !\BANCOREG|registrador~39_q\ ) ) # ( 
-- !\PC|DOUT\(7) & ( !\BANCOREG|registrador~39_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~39_q\,
	combout => \BANCOREG|registrador~1095_combout\);

-- Location: LABCELL_X53_Y5_N9
\BANCOREG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1063_combout\ = ( !\PC|DOUT\(2) & ( \ROM|memROM~1_combout\ ) ) # ( \PC|DOUT\(2) & ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~39_q\ ) ) ) # ( !\PC|DOUT\(2) & ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~39_q\,
	datae => \PC|ALT_INV_DOUT\(2),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1063_combout\);

-- Location: LABCELL_X51_Y5_N6
\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1063_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1095_combout\))) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1063_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1095_combout\))) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1095_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1063_combout\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

-- Location: FF_X52_Y5_N34
\BANCOREG|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~9_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~40_q\);

-- Location: MLABCELL_X52_Y5_N54
\BANCOREG|registrador~1096\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1096_combout\ = ( \BANCOREG|registrador~40_q\ & ( \PC|DOUT\(7) ) ) # ( \BANCOREG|registrador~40_q\ & ( !\PC|DOUT\(7) & ( (((\PC|DOUT\(5)) # (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \BANCOREG|ALT_INV_registrador~40_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCOREG|registrador~1096_combout\);

-- Location: MLABCELL_X52_Y5_N33
\BANCOREG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1064_combout\ = ( \ROM|memROM~1_combout\ & ( \PC|DOUT\(2) ) ) # ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~40_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \BANCOREG|ALT_INV_registrador~40_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1064_combout\);

-- Location: LABCELL_X51_Y5_N9
\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1064_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1096_combout\))) ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1064_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1096_combout\))) ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1096_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1064_combout\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

-- Location: LABCELL_X53_Y5_N24
\BANCOREG|registrador~1099\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1099_combout\ = ( !\ULA|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~13_sumout\,
	combout => \BANCOREG|registrador~1099_combout\);

-- Location: FF_X53_Y5_N26
\BANCOREG|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1099_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~41_q\);

-- Location: MLABCELL_X52_Y5_N45
\BANCOREG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1065_combout\ = ( !\PC|DOUT\(7) & ( \BANCOREG|registrador~41_q\ & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) ) ) # ( \PC|DOUT\(7) & ( !\BANCOREG|registrador~41_q\ ) ) # ( 
-- !\PC|DOUT\(7) & ( !\BANCOREG|registrador~41_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~41_q\,
	combout => \BANCOREG|registrador~1065_combout\);

-- Location: LABCELL_X51_Y5_N12
\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1065_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1065_combout\) ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1065_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1065_combout\) ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1065_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1065_combout\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

-- Location: FF_X50_Y5_N56
\BANCOREG|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~17_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~42_q\);

-- Location: LABCELL_X50_Y5_N18
\BANCOREG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1066_combout\ = ( \BANCOREG|registrador~42_q\ & ( \PC|DOUT\(7) ) ) # ( \BANCOREG|registrador~42_q\ & ( !\PC|DOUT\(7) & ( (((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT[5]~DUPLICATE_q\)) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \BANCOREG|ALT_INV_registrador~42_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCOREG|registrador~1066_combout\);

-- Location: LABCELL_X51_Y5_N15
\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1066_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1066_combout\) ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1066_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1066_combout\) ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1066_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1066_combout\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

-- Location: LABCELL_X50_Y5_N57
\BANCOREG|registrador~1100\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1100_combout\ = ( !\ULA|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~21_sumout\,
	combout => \BANCOREG|registrador~1100_combout\);

-- Location: FF_X50_Y5_N59
\BANCOREG|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1100_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~43_q\);

-- Location: LABCELL_X50_Y5_N36
\BANCOREG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1067_combout\ = ( \PC|DOUT\(7) & ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\BANCOREG|registrador~43_q\ ) ) ) # ( !\PC|DOUT\(7) & ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\BANCOREG|registrador~43_q\ ) ) ) # ( \PC|DOUT\(7) & ( !\PC|DOUT[3]~DUPLICATE_q\ & 
-- ( !\BANCOREG|registrador~43_q\ ) ) ) # ( !\PC|DOUT\(7) & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\BANCOREG|registrador~43_q\ & (((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \BANCOREG|ALT_INV_registrador~43_q\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1067_combout\);

-- Location: LABCELL_X51_Y5_N18
\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1067_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1067_combout\) ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1067_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1067_combout\) ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1067_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1067_combout\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

-- Location: FF_X50_Y5_N26
\BANCOREG|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~25_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~44_q\);

-- Location: LABCELL_X50_Y5_N48
\BANCOREG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1068_combout\ = ( \PC|DOUT\(7) & ( \BANCOREG|registrador~44_q\ ) ) # ( !\PC|DOUT\(7) & ( \BANCOREG|registrador~44_q\ & ( (((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\)) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~44_q\,
	combout => \BANCOREG|registrador~1068_combout\);

-- Location: LABCELL_X51_Y5_N21
\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1068_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1068_combout\))) ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1068_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1068_combout\))) ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1068_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1068_combout\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

-- Location: LABCELL_X50_Y5_N27
\BANCOREG|registrador~1101\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1101_combout\ = ( !\ULA|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~29_sumout\,
	combout => \BANCOREG|registrador~1101_combout\);

-- Location: FF_X50_Y5_N29
\BANCOREG|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1101_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~45_q\);

-- Location: LABCELL_X50_Y5_N12
\BANCOREG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1069_combout\ = ( \PC|DOUT\(7) & ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\BANCOREG|registrador~45_q\ ) ) ) # ( !\PC|DOUT\(7) & ( \PC|DOUT[3]~DUPLICATE_q\ & ( !\BANCOREG|registrador~45_q\ ) ) ) # ( \PC|DOUT\(7) & ( !\PC|DOUT[3]~DUPLICATE_q\ & 
-- ( !\BANCOREG|registrador~45_q\ ) ) ) # ( !\PC|DOUT\(7) & ( !\PC|DOUT[3]~DUPLICATE_q\ & ( (!\BANCOREG|registrador~45_q\ & (((\PC|DOUT[5]~DUPLICATE_q\) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~45_q\,
	datab => \PC|ALT_INV_DOUT\(4),
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1069_combout\);

-- Location: LABCELL_X51_Y5_N24
\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1069_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1069_combout\) ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1069_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1069_combout\) ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1069_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1069_combout\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

-- Location: FF_X50_Y5_N44
\BANCOREG|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~33_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~46_q\);

-- Location: LABCELL_X50_Y5_N51
\BANCOREG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1070_combout\ = ( \PC|DOUT\(7) & ( \BANCOREG|registrador~46_q\ ) ) # ( !\PC|DOUT\(7) & ( \BANCOREG|registrador~46_q\ & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\)) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~46_q\,
	combout => \BANCOREG|registrador~1070_combout\);

-- Location: LABCELL_X51_Y5_N27
\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1070_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1070_combout\))) ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1070_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1070_combout\))) ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1070_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1070_combout\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

-- Location: LABCELL_X50_Y5_N30
\BANCOREG|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1102_combout\ = ( !\ULA|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~37_sumout\,
	combout => \BANCOREG|registrador~1102_combout\);

-- Location: FF_X50_Y5_N31
\BANCOREG|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1102_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~47_q\);

-- Location: MLABCELL_X52_Y5_N48
\BANCOREG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1071_combout\ = ( \PC|DOUT\(7) & ( !\BANCOREG|registrador~47_q\ ) ) # ( !\PC|DOUT\(7) & ( !\BANCOREG|registrador~47_q\ & ( (((\PC|DOUT\(5)) # (\PC|DOUT\(4))) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(4),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~47_q\,
	combout => \BANCOREG|registrador~1071_combout\);

-- Location: LABCELL_X51_Y5_N30
\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1071_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1071_combout\))) ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1071_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1071_combout\))) ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1071_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1071_combout\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

-- Location: FF_X52_Y5_N59
\BANCOREG|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~41_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~48_q\);

-- Location: MLABCELL_X52_Y5_N57
\BANCOREG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1072_combout\ = ( \BANCOREG|registrador~48_q\ & ( \PC|DOUT\(7) ) ) # ( \BANCOREG|registrador~48_q\ & ( !\PC|DOUT\(7) & ( (((\PC|DOUT[3]~DUPLICATE_q\) # (\PC|DOUT\(5))) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \BANCOREG|ALT_INV_registrador~48_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCOREG|registrador~1072_combout\);

-- Location: LABCELL_X51_Y5_N33
\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1072_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1072_combout\))) ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1072_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1072_combout\))) ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1072_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1072_combout\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

-- Location: LABCELL_X50_Y5_N45
\BANCOREG|registrador~1103\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1103_combout\ = !\ULA|Add0~45_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA|ALT_INV_Add0~45_sumout\,
	combout => \BANCOREG|registrador~1103_combout\);

-- Location: FF_X50_Y5_N46
\BANCOREG|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1103_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~49_q\);

-- Location: MLABCELL_X52_Y5_N51
\BANCOREG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1073_combout\ = ( \PC|DOUT\(7) & ( !\BANCOREG|registrador~49_q\ ) ) # ( !\PC|DOUT\(7) & ( !\BANCOREG|registrador~49_q\ & ( (((\PC|DOUT\(4)) # (\PC|DOUT\(5))) # (\PC|DOUT[6]~DUPLICATE_q\)) # (\PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	datae => \PC|ALT_INV_DOUT\(7),
	dataf => \BANCOREG|ALT_INV_registrador~49_q\,
	combout => \BANCOREG|registrador~1073_combout\);

-- Location: LABCELL_X51_Y5_N36
\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1073_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1073_combout\))) ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1073_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1073_combout\))) ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001100100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1073_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1073_combout\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

-- Location: FF_X50_Y5_N23
\BANCOREG|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~49_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~50_q\);

-- Location: LABCELL_X50_Y5_N21
\BANCOREG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1074_combout\ = ( \BANCOREG|registrador~50_q\ & ( \PC|DOUT\(7) ) ) # ( \BANCOREG|registrador~50_q\ & ( !\PC|DOUT\(7) & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[3]~DUPLICATE_q\)) # (\PC|DOUT[5]~DUPLICATE_q\)) # 
-- (\PC|DOUT[6]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \BANCOREG|ALT_INV_registrador~50_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCOREG|registrador~1074_combout\);

-- Location: LABCELL_X51_Y5_N39
\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1074_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1074_combout\))) ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1074_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1074_combout\))) ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1074_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1074_combout\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

-- Location: LABCELL_X53_Y5_N18
\BANCOREG|registrador~1104\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1104_combout\ = ( !\ULA|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~53_sumout\,
	combout => \BANCOREG|registrador~1104_combout\);

-- Location: FF_X53_Y5_N20
\BANCOREG|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1104_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~51_q\);

-- Location: LABCELL_X53_Y5_N45
\BANCOREG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1075_combout\ = ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~51_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~51_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1075_combout\);

-- Location: LABCELL_X51_Y5_N42
\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1075_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1075_combout\) ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1075_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1075_combout\) ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1075_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1075_combout\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

-- Location: FF_X50_Y5_N41
\BANCOREG|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~57_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~52_q\);

-- Location: LABCELL_X50_Y5_N24
\BANCOREG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1076_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~52_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~52_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1076_combout\);

-- Location: LABCELL_X51_Y5_N45
\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1076_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1076_combout\) ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1076_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1076_combout\) ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1076_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1076_combout\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

-- Location: LABCELL_X50_Y5_N6
\BANCOREG|registrador~1105\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1105_combout\ = ( !\ULA|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~61_sumout\,
	combout => \BANCOREG|registrador~1105_combout\);

-- Location: FF_X50_Y5_N8
\BANCOREG|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1105_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~53_q\);

-- Location: LABCELL_X50_Y5_N9
\BANCOREG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1077_combout\ = ( !\BANCOREG|registrador~53_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~53_q\,
	combout => \BANCOREG|registrador~1077_combout\);

-- Location: LABCELL_X51_Y5_N48
\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1077_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1077_combout\))) ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1077_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1077_combout\))) ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1077_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1077_combout\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

-- Location: FF_X50_Y5_N17
\BANCOREG|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~65_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~54_q\);

-- Location: LABCELL_X50_Y5_N3
\BANCOREG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1078_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~54_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~54_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1078_combout\);

-- Location: LABCELL_X51_Y5_N51
\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1078_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1078_combout\) ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1078_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1078_combout\) ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1078_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1078_combout\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

-- Location: LABCELL_X50_Y5_N0
\BANCOREG|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1106_combout\ = ( !\ULA|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~69_sumout\,
	combout => \BANCOREG|registrador~1106_combout\);

-- Location: FF_X50_Y5_N2
\BANCOREG|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1106_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~55_q\);

-- Location: LABCELL_X50_Y5_N33
\BANCOREG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1079_combout\ = ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~55_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BANCOREG|ALT_INV_registrador~55_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1079_combout\);

-- Location: LABCELL_X51_Y5_N54
\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1079_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1079_combout\) ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1079_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1079_combout\) ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1079_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1079_combout\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

-- Location: FF_X50_Y5_N5
\BANCOREG|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \ULA|Add0~73_sumout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~56_q\);

-- Location: LABCELL_X50_Y5_N42
\BANCOREG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1080_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~56_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~56_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1080_combout\);

-- Location: LABCELL_X51_Y5_N57
\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1080_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1080_combout\))) ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1080_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1080_combout\))) ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1080_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1080_combout\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

-- Location: LABCELL_X51_Y4_N54
\BANCOREG|registrador~1107\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1107_combout\ = ( !\ULA|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~77_sumout\,
	combout => \BANCOREG|registrador~1107_combout\);

-- Location: FF_X51_Y4_N55
\BANCOREG|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1107_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~57_q\);

-- Location: LABCELL_X50_Y4_N12
\BANCOREG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1081_combout\ = ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~57_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~57_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1081_combout\);

-- Location: LABCELL_X51_Y4_N0
\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1081_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1081_combout\) ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1081_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1081_combout\) ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1081_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1081_combout\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

-- Location: FF_X51_Y4_N4
\BANCOREG|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~81_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~58_q\);

-- Location: LABCELL_X50_Y4_N21
\BANCOREG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1082_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~58_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~58_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1082_combout\);

-- Location: LABCELL_X51_Y4_N3
\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1082_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1082_combout\) ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1082_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1082_combout\) ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1082_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1082_combout\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

-- Location: LABCELL_X51_Y4_N51
\BANCOREG|registrador~1108\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1108_combout\ = ( !\ULA|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~85_sumout\,
	combout => \BANCOREG|registrador~1108_combout\);

-- Location: FF_X51_Y4_N52
\BANCOREG|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1108_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~59_q\);

-- Location: LABCELL_X50_Y4_N6
\BANCOREG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1083_combout\ = ( !\BANCOREG|registrador~59_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~59_q\,
	combout => \BANCOREG|registrador~1083_combout\);

-- Location: LABCELL_X51_Y4_N6
\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1083_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1083_combout\) ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1083_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1083_combout\) ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1083_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1083_combout\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

-- Location: FF_X51_Y4_N10
\BANCOREG|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~89_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~60_q\);

-- Location: LABCELL_X50_Y4_N48
\BANCOREG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1084_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~60_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~60_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1084_combout\);

-- Location: LABCELL_X51_Y4_N9
\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1084_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1084_combout\) ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1084_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1084_combout\) ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1084_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1084_combout\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

-- Location: LABCELL_X51_Y4_N45
\BANCOREG|registrador~1109\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1109_combout\ = ( !\ULA|Add0~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~93_sumout\,
	combout => \BANCOREG|registrador~1109_combout\);

-- Location: FF_X51_Y4_N46
\BANCOREG|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1109_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~61_q\);

-- Location: LABCELL_X50_Y4_N39
\BANCOREG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1085_combout\ = ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~61_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~61_q\,
	combout => \BANCOREG|registrador~1085_combout\);

-- Location: LABCELL_X51_Y4_N12
\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1085_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1085_combout\))) ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1085_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1085_combout\))) ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001100100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1085_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1085_combout\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

-- Location: FF_X51_Y4_N16
\BANCOREG|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~97_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~62_q\);

-- Location: LABCELL_X50_Y4_N27
\BANCOREG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1086_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~62_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~62_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1086_combout\);

-- Location: LABCELL_X51_Y4_N15
\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1086_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1086_combout\) ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1086_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1086_combout\) ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000001100110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1086_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1086_combout\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

-- Location: LABCELL_X51_Y4_N48
\BANCOREG|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1110_combout\ = ( !\ULA|Add0~101_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~101_sumout\,
	combout => \BANCOREG|registrador~1110_combout\);

-- Location: FF_X51_Y4_N50
\BANCOREG|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1110_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~63_q\);

-- Location: LABCELL_X50_Y4_N45
\BANCOREG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1087_combout\ = ( !\BANCOREG|registrador~63_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_registrador~63_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1087_combout\);

-- Location: LABCELL_X51_Y4_N18
\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1087_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1087_combout\))) ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1087_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1087_combout\))) ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001100100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1087_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1087_combout\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

-- Location: FF_X51_Y4_N22
\BANCOREG|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~105_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~64_q\);

-- Location: LABCELL_X50_Y4_N0
\BANCOREG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1088_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~64_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~64_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1088_combout\);

-- Location: LABCELL_X51_Y4_N21
\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1088_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1088_combout\))) ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1088_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1088_combout\))) ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001100100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1088_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1088_combout\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

-- Location: LABCELL_X51_Y4_N42
\BANCOREG|registrador~1111\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1111_combout\ = ( !\ULA|Add0~109_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~109_sumout\,
	combout => \BANCOREG|registrador~1111_combout\);

-- Location: FF_X51_Y4_N44
\BANCOREG|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1111_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~65_q\);

-- Location: LABCELL_X50_Y4_N54
\BANCOREG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1089_combout\ = ( !\BANCOREG|registrador~65_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~65_q\,
	combout => \BANCOREG|registrador~1089_combout\);

-- Location: LABCELL_X51_Y4_N24
\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1089_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1089_combout\) ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1089_combout\))) ) + ( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1089_combout\) ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000000000001100011011000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1089_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1089_combout\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

-- Location: FF_X51_Y4_N28
\BANCOREG|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~113_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~66_q\);

-- Location: LABCELL_X50_Y4_N33
\BANCOREG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1090_combout\ = ( !\ROM|memROM~1_combout\ & ( \BANCOREG|registrador~66_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~66_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1090_combout\);

-- Location: LABCELL_X51_Y4_N27
\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1090_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1090_combout\))) ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1090_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1090_combout\))) ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1090_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1090_combout\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

-- Location: LABCELL_X50_Y4_N18
\BANCOREG|registrador~1112\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1112_combout\ = ( !\ULA|Add0~117_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~117_sumout\,
	combout => \BANCOREG|registrador~1112_combout\);

-- Location: FF_X50_Y4_N19
\BANCOREG|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1112_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~67_q\);

-- Location: LABCELL_X50_Y4_N3
\BANCOREG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1091_combout\ = ( !\BANCOREG|registrador~67_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~67_q\,
	combout => \BANCOREG|registrador~1091_combout\);

-- Location: LABCELL_X51_Y4_N30
\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1091_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1091_combout\))) ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1091_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1091_combout\))) ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001110010011100100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1091_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1091_combout\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

-- Location: FF_X51_Y4_N34
\BANCOREG|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \ULA|Add0~121_sumout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~68_q\);

-- Location: LABCELL_X50_Y4_N9
\BANCOREG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1092_combout\ = ( \BANCOREG|registrador~68_q\ & ( !\ROM|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~68_q\,
	combout => \BANCOREG|registrador~1092_combout\);

-- Location: LABCELL_X51_Y4_N33
\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1092_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1092_combout\))) ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1092_combout\) ) + ( !\ULA_OP~input_o\ $ (((!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1092_combout\))) ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111001100100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_ULA_OP~input_o\,
	datac => \BANCOREG|ALT_INV_registrador~1092_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1092_combout\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

-- Location: LABCELL_X51_Y4_N57
\BANCOREG|registrador~1113\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1113_combout\ = ( !\ULA|Add0~125_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ULA|ALT_INV_Add0~125_sumout\,
	combout => \BANCOREG|registrador~1113_combout\);

-- Location: FF_X51_Y4_N59
\BANCOREG|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1113_combout\,
	ena => \BANCOREG|registrador~1097_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~69_q\);

-- Location: LABCELL_X50_Y4_N57
\BANCOREG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1093_combout\ = ( !\ROM|memROM~1_combout\ & ( !\BANCOREG|registrador~69_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~69_q\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \BANCOREG|registrador~1093_combout\);

-- Location: LABCELL_X51_Y4_N36
\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( (!\BANCOREG|Equal1~0_combout\ & \BANCOREG|registrador~1093_combout\) ) + ( !\ULA_OP~input_o\ $ (((\BANCOREG|registrador~1093_combout\ & !\BANCOREG|Equal1~0_combout\))) ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001010110010100000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ULA_OP~input_o\,
	datab => \BANCOREG|ALT_INV_registrador~1093_combout\,
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~1093_combout\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

-- Location: LABCELL_X55_Y5_N24
\BANCOREG|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[0]~0_combout\ = ( \BANCOREG|registrador~1062_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1062_combout\,
	combout => \BANCOREG|saidaA[0]~0_combout\);

-- Location: LABCELL_X53_Y5_N42
\BANCOREG|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[1]~1_combout\ = (\BANCOREG|registrador~1063_combout\ & !\BANCOREG|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1063_combout\,
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[1]~1_combout\);

-- Location: LABCELL_X56_Y5_N51
\BANCOREG|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[2]~2_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1064_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~1064_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[2]~2_combout\);

-- Location: LABCELL_X56_Y5_N42
\BANCOREG|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[3]~3_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1065_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~1065_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[3]~3_combout\);

-- Location: LABCELL_X48_Y5_N0
\BANCOREG|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[4]~4_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1066_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~1066_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[4]~4_combout\);

-- Location: LABCELL_X53_Y4_N3
\BANCOREG|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[5]~5_combout\ = ( \BANCOREG|registrador~1067_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1067_combout\,
	combout => \BANCOREG|saidaA[5]~5_combout\);

-- Location: LABCELL_X55_Y5_N33
\BANCOREG|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[6]~6_combout\ = ( \BANCOREG|registrador~1068_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_registrador~1068_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[6]~6_combout\);

-- Location: LABCELL_X56_Y5_N27
\BANCOREG|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[7]~7_combout\ = ( \BANCOREG|registrador~1069_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1069_combout\,
	combout => \BANCOREG|saidaA[7]~7_combout\);

-- Location: LABCELL_X55_Y5_N0
\BANCOREG|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[8]~8_combout\ = ( \BANCOREG|registrador~1070_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_registrador~1070_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[8]~8_combout\);

-- Location: LABCELL_X55_Y5_N9
\BANCOREG|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[9]~9_combout\ = ( \BANCOREG|registrador~1071_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1071_combout\,
	combout => \BANCOREG|saidaA[9]~9_combout\);

-- Location: LABCELL_X48_Y5_N21
\BANCOREG|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[10]~10_combout\ = ( \BANCOREG|registrador~1072_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1072_combout\,
	combout => \BANCOREG|saidaA[10]~10_combout\);

-- Location: LABCELL_X56_Y5_N24
\BANCOREG|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[11]~11_combout\ = ( \BANCOREG|registrador~1073_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1073_combout\,
	combout => \BANCOREG|saidaA[11]~11_combout\);

-- Location: LABCELL_X53_Y5_N21
\BANCOREG|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[12]~12_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1074_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~1074_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[12]~12_combout\);

-- Location: LABCELL_X53_Y5_N27
\BANCOREG|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[13]~13_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1075_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1075_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[13]~13_combout\);

-- Location: LABCELL_X48_Y5_N12
\BANCOREG|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[14]~14_combout\ = ( \BANCOREG|registrador~1076_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	datae => \BANCOREG|ALT_INV_registrador~1076_combout\,
	combout => \BANCOREG|saidaA[14]~14_combout\);

-- Location: LABCELL_X48_Y5_N42
\BANCOREG|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[15]~15_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1077_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1077_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[15]~15_combout\);

-- Location: LABCELL_X48_Y5_N36
\BANCOREG|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[16]~16_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1078_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1078_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[16]~16_combout\);

-- Location: LABCELL_X48_Y5_N9
\BANCOREG|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[17]~17_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1079_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~1079_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[17]~17_combout\);

-- Location: LABCELL_X50_Y7_N0
\BANCOREG|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[18]~18_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1080_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1080_combout\,
	combout => \BANCOREG|saidaA[18]~18_combout\);

-- Location: LABCELL_X48_Y5_N51
\BANCOREG|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[19]~19_combout\ = ( \BANCOREG|registrador~1081_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1081_combout\,
	combout => \BANCOREG|saidaA[19]~19_combout\);

-- Location: LABCELL_X50_Y4_N24
\BANCOREG|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[20]~20_combout\ = (\BANCOREG|registrador~1082_combout\ & !\BANCOREG|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_registrador~1082_combout\,
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[20]~20_combout\);

-- Location: LABCELL_X50_Y4_N51
\BANCOREG|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[21]~21_combout\ = ( \BANCOREG|registrador~1083_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1083_combout\,
	combout => \BANCOREG|saidaA[21]~21_combout\);

-- Location: LABCELL_X50_Y4_N30
\BANCOREG|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[22]~22_combout\ = ( \BANCOREG|registrador~1084_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1084_combout\,
	combout => \BANCOREG|saidaA[22]~22_combout\);

-- Location: LABCELL_X51_Y7_N12
\BANCOREG|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[23]~23_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1085_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1085_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[23]~23_combout\);

-- Location: LABCELL_X56_Y5_N9
\BANCOREG|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[24]~24_combout\ = ( \BANCOREG|registrador~1086_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1086_combout\,
	combout => \BANCOREG|saidaA[24]~24_combout\);

-- Location: LABCELL_X50_Y4_N15
\BANCOREG|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[25]~25_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1087_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~1087_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[25]~25_combout\);

-- Location: LABCELL_X53_Y4_N30
\BANCOREG|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[26]~26_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1088_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1088_combout\,
	combout => \BANCOREG|saidaA[26]~26_combout\);

-- Location: LABCELL_X53_Y4_N36
\BANCOREG|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[27]~27_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1089_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1089_combout\,
	combout => \BANCOREG|saidaA[27]~27_combout\);

-- Location: LABCELL_X53_Y4_N21
\BANCOREG|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[28]~28_combout\ = ( \BANCOREG|registrador~1090_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1090_combout\,
	combout => \BANCOREG|saidaA[28]~28_combout\);

-- Location: LABCELL_X56_Y7_N12
\BANCOREG|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[29]~29_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1091_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~1091_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[29]~29_combout\);

-- Location: LABCELL_X53_Y4_N48
\BANCOREG|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[30]~30_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1092_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1092_combout\,
	combout => \BANCOREG|saidaA[30]~30_combout\);

-- Location: LABCELL_X53_Y5_N30
\BANCOREG|saidaA[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaA[31]~31_combout\ = ( !\BANCOREG|Equal1~0_combout\ & ( \BANCOREG|registrador~1093_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \BANCOREG|ALT_INV_registrador~1093_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaA[31]~31_combout\);

-- Location: LABCELL_X56_Y5_N36
\BANCOREG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[0]~0_combout\ = ( \BANCOREG|registrador~1094_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \BANCOREG|ALT_INV_registrador~1094_combout\,
	dataf => \BANCOREG|ALT_INV_Equal1~0_combout\,
	combout => \BANCOREG|saidaB[0]~0_combout\);

-- Location: LABCELL_X56_Y5_N33
\BANCOREG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[1]~1_combout\ = ( \BANCOREG|registrador~1095_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1095_combout\,
	combout => \BANCOREG|saidaB[1]~1_combout\);

-- Location: LABCELL_X56_Y5_N12
\BANCOREG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[2]~2_combout\ = ( \BANCOREG|registrador~1096_combout\ & ( !\BANCOREG|Equal1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_Equal1~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~1096_combout\,
	combout => \BANCOREG|saidaB[2]~2_combout\);

-- Location: LABCELL_X35_Y63_N0
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


