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

-- DATE "11/07/2022 20:47:20"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0);
	ULA_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	endRegS_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endRegT_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endRegD_Sim : OUT std_logic_vector(4 DOWNTO 0);
	regS_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	regT_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	Dado_Lido_RAM_Sim : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS;

-- Design Ports Information
-- Habilita_WR	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[12]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[13]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[15]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[16]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[17]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[20]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[21]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[25]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[26]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[28]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[29]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[30]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[31]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[8]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[11]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[12]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[14]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[15]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[16]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[17]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[18]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[19]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[20]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[21]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[22]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[23]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[24]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[25]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[26]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[27]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[28]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[29]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[30]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[31]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[2]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[3]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegS_Sim[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegT_Sim[4]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endRegD_Sim[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[0]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[5]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[7]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[8]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[9]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[10]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[11]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[15]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[16]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[17]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[18]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[19]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[20]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[21]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[22]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[23]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[24]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[25]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[26]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[27]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[28]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[29]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regS_OUT_Sim[31]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[6]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[8]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[11]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[12]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[14]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[16]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[18]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[19]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[20]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[21]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[22]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[23]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[24]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[25]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[26]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[27]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[29]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[30]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regT_OUT_Sim[31]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[8]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[9]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[11]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[13]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[14]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[15]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[16]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[19]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[20]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[22]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[23]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[24]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[25]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[26]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[27]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[28]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[29]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[30]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado_Lido_RAM_Sim[31]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_endRegS_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endRegT_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endRegD_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_regS_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_regT_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Dado_Lido_RAM_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL \Habilita_WR~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \somaConstante|Add0~1_sumout\ : std_logic;
SIGNAL \PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~2\ : std_logic;
SIGNAL \somaConstante|Add0~5_sumout\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~6\ : std_logic;
SIGNAL \somaConstante|Add0~9_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~10\ : std_logic;
SIGNAL \somaConstante|Add0~13_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~14\ : std_logic;
SIGNAL \somaConstante|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~18\ : std_logic;
SIGNAL \somaConstante|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \RAM|Dado_out[0]~32_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~1062_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~550_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1063_combout\ : std_logic;
SIGNAL \BANCOREG|Equal0~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \RAM|memRAM~71_q\ : std_logic;
SIGNAL \RAM|memRAM~2087_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~551_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1064_combout\ : std_logic;
SIGNAL \RAM|memRAM~72_q\ : std_logic;
SIGNAL \RAM|memRAM~2088_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~552_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1065_combout\ : std_logic;
SIGNAL \RAM|memRAM~73_q\ : std_logic;
SIGNAL \RAM|memRAM~2089_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~553_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1066_combout\ : std_logic;
SIGNAL \RAM|memRAM~74_q\ : std_logic;
SIGNAL \RAM|memRAM~2090_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~554_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1067_combout\ : std_logic;
SIGNAL \RAM|memRAM~75_q\ : std_logic;
SIGNAL \RAM|memRAM~2091_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~555_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1068_combout\ : std_logic;
SIGNAL \RAM|memRAM~76_q\ : std_logic;
SIGNAL \RAM|memRAM~2092_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~556_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1069_combout\ : std_logic;
SIGNAL \RAM|memRAM~77_q\ : std_logic;
SIGNAL \RAM|memRAM~2093_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~557_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1070_combout\ : std_logic;
SIGNAL \RAM|memRAM~78_q\ : std_logic;
SIGNAL \RAM|memRAM~2094_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~558_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1071_combout\ : std_logic;
SIGNAL \RAM|memRAM~79_q\ : std_logic;
SIGNAL \RAM|memRAM~2095_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~559_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1072_combout\ : std_logic;
SIGNAL \RAM|memRAM~80_q\ : std_logic;
SIGNAL \RAM|memRAM~2096_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~560_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1073_combout\ : std_logic;
SIGNAL \RAM|memRAM~81_q\ : std_logic;
SIGNAL \RAM|memRAM~2097_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~561_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1074_combout\ : std_logic;
SIGNAL \RAM|memRAM~82_q\ : std_logic;
SIGNAL \RAM|memRAM~2098_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~562_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1075_combout\ : std_logic;
SIGNAL \RAM|memRAM~83_q\ : std_logic;
SIGNAL \RAM|memRAM~2099_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~563_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1076_combout\ : std_logic;
SIGNAL \RAM|memRAM~84_q\ : std_logic;
SIGNAL \RAM|memRAM~2100_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~564_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1077_combout\ : std_logic;
SIGNAL \RAM|memRAM~85_q\ : std_logic;
SIGNAL \RAM|memRAM~2101_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~565_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1078_combout\ : std_logic;
SIGNAL \RAM|memRAM~86_q\ : std_logic;
SIGNAL \RAM|memRAM~2102_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~566_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1079_combout\ : std_logic;
SIGNAL \RAM|memRAM~87_q\ : std_logic;
SIGNAL \RAM|memRAM~2103_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~567_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1080_combout\ : std_logic;
SIGNAL \RAM|memRAM~88_q\ : std_logic;
SIGNAL \RAM|memRAM~2104_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~568_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1081_combout\ : std_logic;
SIGNAL \RAM|memRAM~89_q\ : std_logic;
SIGNAL \RAM|memRAM~2105_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~569_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1082_combout\ : std_logic;
SIGNAL \RAM|memRAM~90_q\ : std_logic;
SIGNAL \RAM|memRAM~2106_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~570_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1083_combout\ : std_logic;
SIGNAL \RAM|memRAM~91_q\ : std_logic;
SIGNAL \RAM|memRAM~2107_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~571_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1084_combout\ : std_logic;
SIGNAL \RAM|memRAM~92_q\ : std_logic;
SIGNAL \RAM|memRAM~2108_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~572_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1085_combout\ : std_logic;
SIGNAL \RAM|memRAM~93_q\ : std_logic;
SIGNAL \RAM|memRAM~2109_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~573_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1086_combout\ : std_logic;
SIGNAL \RAM|memRAM~94_q\ : std_logic;
SIGNAL \RAM|memRAM~2110_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~574_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1087_combout\ : std_logic;
SIGNAL \RAM|memRAM~95_q\ : std_logic;
SIGNAL \RAM|memRAM~2111_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~575_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1088_combout\ : std_logic;
SIGNAL \RAM|memRAM~96_q\ : std_logic;
SIGNAL \RAM|memRAM~2112_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~576_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1089_combout\ : std_logic;
SIGNAL \RAM|memRAM~97_q\ : std_logic;
SIGNAL \RAM|memRAM~2113_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~577_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1090_combout\ : std_logic;
SIGNAL \RAM|memRAM~98_q\ : std_logic;
SIGNAL \RAM|memRAM~2114_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~578_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1091_combout\ : std_logic;
SIGNAL \RAM|memRAM~99_q\ : std_logic;
SIGNAL \RAM|memRAM~2115_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~579_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1092_combout\ : std_logic;
SIGNAL \RAM|memRAM~100_q\ : std_logic;
SIGNAL \RAM|memRAM~2116_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~580_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1093_combout\ : std_logic;
SIGNAL \RAM|memRAM~101_q\ : std_logic;
SIGNAL \RAM|memRAM~2117_combout\ : std_logic;
SIGNAL \BANCOREG|registrador~581_q\ : std_logic;
SIGNAL \BANCOREG|registrador~1094_combout\ : std_logic;
SIGNAL \RAM|memRAM~102_q\ : std_logic;
SIGNAL \RAM|memRAM~2118_combout\ : std_logic;
SIGNAL \somaConstante|Add0~22\ : std_logic;
SIGNAL \somaConstante|Add0~25_sumout\ : std_logic;
SIGNAL \PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~26\ : std_logic;
SIGNAL \somaConstante|Add0~29_sumout\ : std_logic;
SIGNAL \PC|DOUT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~30\ : std_logic;
SIGNAL \somaConstante|Add0~33_sumout\ : std_logic;
SIGNAL \PC|DOUT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~34\ : std_logic;
SIGNAL \somaConstante|Add0~37_sumout\ : std_logic;
SIGNAL \PC|DOUT[11]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~38\ : std_logic;
SIGNAL \somaConstante|Add0~41_sumout\ : std_logic;
SIGNAL \PC|DOUT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~42\ : std_logic;
SIGNAL \somaConstante|Add0~45_sumout\ : std_logic;
SIGNAL \PC|DOUT[13]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~46\ : std_logic;
SIGNAL \somaConstante|Add0~49_sumout\ : std_logic;
SIGNAL \PC|DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~50\ : std_logic;
SIGNAL \somaConstante|Add0~53_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~54\ : std_logic;
SIGNAL \somaConstante|Add0~57_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~58\ : std_logic;
SIGNAL \somaConstante|Add0~61_sumout\ : std_logic;
SIGNAL \PC|DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~62\ : std_logic;
SIGNAL \somaConstante|Add0~65_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~66\ : std_logic;
SIGNAL \somaConstante|Add0~69_sumout\ : std_logic;
SIGNAL \PC|DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~70\ : std_logic;
SIGNAL \somaConstante|Add0~73_sumout\ : std_logic;
SIGNAL \PC|DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~74\ : std_logic;
SIGNAL \somaConstante|Add0~77_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~78\ : std_logic;
SIGNAL \somaConstante|Add0~81_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~82\ : std_logic;
SIGNAL \somaConstante|Add0~85_sumout\ : std_logic;
SIGNAL \PC|DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~86\ : std_logic;
SIGNAL \somaConstante|Add0~89_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~90\ : std_logic;
SIGNAL \somaConstante|Add0~93_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~94\ : std_logic;
SIGNAL \somaConstante|Add0~97_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~98\ : std_logic;
SIGNAL \somaConstante|Add0~101_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~102\ : std_logic;
SIGNAL \somaConstante|Add0~105_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~106\ : std_logic;
SIGNAL \somaConstante|Add0~109_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~110\ : std_logic;
SIGNAL \somaConstante|Add0~113_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~114\ : std_logic;
SIGNAL \somaConstante|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|saida~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[1]~1_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[3]~3_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[27]~27_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCOREG|saidaB[31]~31_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \RAM|ALT_INV_memRAM~102_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~101_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~100_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~99_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~98_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~97_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~96_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~95_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~94_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~93_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~92_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~91_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~90_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~89_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~88_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~87_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~86_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~85_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~84_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~83_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~82_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~81_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~80_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~79_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~78_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~77_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~76_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~75_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~74_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~73_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~72_q\ : std_logic;
SIGNAL \RAM|ALT_INV_memRAM~71_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[31]~31_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~581_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[30]~30_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~580_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[29]~29_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~579_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[28]~28_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~578_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[27]~27_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~577_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[26]~26_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~576_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[25]~25_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~575_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[24]~24_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~574_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[23]~23_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~573_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[22]~22_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~572_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[21]~21_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~571_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[20]~20_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~570_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[19]~19_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~569_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[18]~18_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~568_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[17]~17_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~567_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[16]~16_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~566_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[15]~15_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~565_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[14]~14_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~564_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[13]~13_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~563_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[12]~12_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~562_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[11]~11_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~561_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[10]~10_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~560_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[9]~9_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~559_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[8]~8_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~558_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[7]~7_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~557_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[6]~6_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~556_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[5]~5_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~555_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[4]~4_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~554_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~553_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[2]~2_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~552_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~551_q\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_saidaB[0]~0_combout\ : std_logic;
SIGNAL \BANCOREG|ALT_INV_registrador~550_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[24]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[21]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[20]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[18]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[14]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_Habilita_WR <= Habilita_WR;
PC_OUT <= ww_PC_OUT;
ULA_OUT_Sim <= ww_ULA_OUT_Sim;
endRegS_Sim <= ww_endRegS_Sim;
endRegT_Sim <= ww_endRegT_Sim;
endRegD_Sim <= ww_endRegD_Sim;
regS_OUT_Sim <= ww_regS_OUT_Sim;
regT_OUT_Sim <= ww_regT_OUT_Sim;
Dado_Lido_RAM_Sim <= ww_Dado_Lido_RAM_Sim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT\(19) <= NOT \PC|DOUT\(19);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(13) <= NOT \PC|DOUT\(13);
\PC|ALT_INV_DOUT\(12) <= NOT \PC|DOUT\(12);
\PC|ALT_INV_DOUT\(11) <= NOT \PC|DOUT\(11);
\PC|ALT_INV_DOUT\(10) <= NOT \PC|DOUT\(10);
\PC|ALT_INV_DOUT\(9) <= NOT \PC|DOUT\(9);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\RAM|ALT_INV_memRAM~102_q\ <= NOT \RAM|memRAM~102_q\;
\RAM|ALT_INV_memRAM~101_q\ <= NOT \RAM|memRAM~101_q\;
\RAM|ALT_INV_memRAM~100_q\ <= NOT \RAM|memRAM~100_q\;
\RAM|ALT_INV_memRAM~99_q\ <= NOT \RAM|memRAM~99_q\;
\RAM|ALT_INV_memRAM~98_q\ <= NOT \RAM|memRAM~98_q\;
\RAM|ALT_INV_memRAM~97_q\ <= NOT \RAM|memRAM~97_q\;
\RAM|ALT_INV_memRAM~96_q\ <= NOT \RAM|memRAM~96_q\;
\RAM|ALT_INV_memRAM~95_q\ <= NOT \RAM|memRAM~95_q\;
\RAM|ALT_INV_memRAM~94_q\ <= NOT \RAM|memRAM~94_q\;
\RAM|ALT_INV_memRAM~93_q\ <= NOT \RAM|memRAM~93_q\;
\RAM|ALT_INV_memRAM~92_q\ <= NOT \RAM|memRAM~92_q\;
\RAM|ALT_INV_memRAM~91_q\ <= NOT \RAM|memRAM~91_q\;
\RAM|ALT_INV_memRAM~90_q\ <= NOT \RAM|memRAM~90_q\;
\RAM|ALT_INV_memRAM~89_q\ <= NOT \RAM|memRAM~89_q\;
\RAM|ALT_INV_memRAM~88_q\ <= NOT \RAM|memRAM~88_q\;
\RAM|ALT_INV_memRAM~87_q\ <= NOT \RAM|memRAM~87_q\;
\RAM|ALT_INV_memRAM~86_q\ <= NOT \RAM|memRAM~86_q\;
\RAM|ALT_INV_memRAM~85_q\ <= NOT \RAM|memRAM~85_q\;
\RAM|ALT_INV_memRAM~84_q\ <= NOT \RAM|memRAM~84_q\;
\RAM|ALT_INV_memRAM~83_q\ <= NOT \RAM|memRAM~83_q\;
\RAM|ALT_INV_memRAM~82_q\ <= NOT \RAM|memRAM~82_q\;
\RAM|ALT_INV_memRAM~81_q\ <= NOT \RAM|memRAM~81_q\;
\RAM|ALT_INV_memRAM~80_q\ <= NOT \RAM|memRAM~80_q\;
\RAM|ALT_INV_memRAM~79_q\ <= NOT \RAM|memRAM~79_q\;
\RAM|ALT_INV_memRAM~78_q\ <= NOT \RAM|memRAM~78_q\;
\RAM|ALT_INV_memRAM~77_q\ <= NOT \RAM|memRAM~77_q\;
\RAM|ALT_INV_memRAM~76_q\ <= NOT \RAM|memRAM~76_q\;
\RAM|ALT_INV_memRAM~75_q\ <= NOT \RAM|memRAM~75_q\;
\RAM|ALT_INV_memRAM~74_q\ <= NOT \RAM|memRAM~74_q\;
\RAM|ALT_INV_memRAM~73_q\ <= NOT \RAM|memRAM~73_q\;
\RAM|ALT_INV_memRAM~72_q\ <= NOT \RAM|memRAM~72_q\;
\RAM|ALT_INV_memRAM~71_q\ <= NOT \RAM|memRAM~71_q\;
\BANCOREG|ALT_INV_saidaB[31]~31_combout\ <= NOT \BANCOREG|saidaB[31]~31_combout\;
\BANCOREG|ALT_INV_registrador~581_q\ <= NOT \BANCOREG|registrador~581_q\;
\BANCOREG|ALT_INV_saidaB[30]~30_combout\ <= NOT \BANCOREG|saidaB[30]~30_combout\;
\BANCOREG|ALT_INV_registrador~580_q\ <= NOT \BANCOREG|registrador~580_q\;
\BANCOREG|ALT_INV_saidaB[29]~29_combout\ <= NOT \BANCOREG|saidaB[29]~29_combout\;
\BANCOREG|ALT_INV_registrador~579_q\ <= NOT \BANCOREG|registrador~579_q\;
\BANCOREG|ALT_INV_saidaB[28]~28_combout\ <= NOT \BANCOREG|saidaB[28]~28_combout\;
\BANCOREG|ALT_INV_registrador~578_q\ <= NOT \BANCOREG|registrador~578_q\;
\BANCOREG|ALT_INV_saidaB[27]~27_combout\ <= NOT \BANCOREG|saidaB[27]~27_combout\;
\BANCOREG|ALT_INV_registrador~577_q\ <= NOT \BANCOREG|registrador~577_q\;
\BANCOREG|ALT_INV_saidaB[26]~26_combout\ <= NOT \BANCOREG|saidaB[26]~26_combout\;
\BANCOREG|ALT_INV_registrador~576_q\ <= NOT \BANCOREG|registrador~576_q\;
\BANCOREG|ALT_INV_saidaB[25]~25_combout\ <= NOT \BANCOREG|saidaB[25]~25_combout\;
\BANCOREG|ALT_INV_registrador~575_q\ <= NOT \BANCOREG|registrador~575_q\;
\BANCOREG|ALT_INV_saidaB[24]~24_combout\ <= NOT \BANCOREG|saidaB[24]~24_combout\;
\BANCOREG|ALT_INV_registrador~574_q\ <= NOT \BANCOREG|registrador~574_q\;
\BANCOREG|ALT_INV_saidaB[23]~23_combout\ <= NOT \BANCOREG|saidaB[23]~23_combout\;
\BANCOREG|ALT_INV_registrador~573_q\ <= NOT \BANCOREG|registrador~573_q\;
\BANCOREG|ALT_INV_saidaB[22]~22_combout\ <= NOT \BANCOREG|saidaB[22]~22_combout\;
\BANCOREG|ALT_INV_registrador~572_q\ <= NOT \BANCOREG|registrador~572_q\;
\BANCOREG|ALT_INV_saidaB[21]~21_combout\ <= NOT \BANCOREG|saidaB[21]~21_combout\;
\BANCOREG|ALT_INV_registrador~571_q\ <= NOT \BANCOREG|registrador~571_q\;
\BANCOREG|ALT_INV_saidaB[20]~20_combout\ <= NOT \BANCOREG|saidaB[20]~20_combout\;
\BANCOREG|ALT_INV_registrador~570_q\ <= NOT \BANCOREG|registrador~570_q\;
\BANCOREG|ALT_INV_saidaB[19]~19_combout\ <= NOT \BANCOREG|saidaB[19]~19_combout\;
\BANCOREG|ALT_INV_registrador~569_q\ <= NOT \BANCOREG|registrador~569_q\;
\BANCOREG|ALT_INV_saidaB[18]~18_combout\ <= NOT \BANCOREG|saidaB[18]~18_combout\;
\BANCOREG|ALT_INV_registrador~568_q\ <= NOT \BANCOREG|registrador~568_q\;
\BANCOREG|ALT_INV_saidaB[17]~17_combout\ <= NOT \BANCOREG|saidaB[17]~17_combout\;
\BANCOREG|ALT_INV_registrador~567_q\ <= NOT \BANCOREG|registrador~567_q\;
\BANCOREG|ALT_INV_saidaB[16]~16_combout\ <= NOT \BANCOREG|saidaB[16]~16_combout\;
\BANCOREG|ALT_INV_registrador~566_q\ <= NOT \BANCOREG|registrador~566_q\;
\BANCOREG|ALT_INV_saidaB[15]~15_combout\ <= NOT \BANCOREG|saidaB[15]~15_combout\;
\BANCOREG|ALT_INV_registrador~565_q\ <= NOT \BANCOREG|registrador~565_q\;
\BANCOREG|ALT_INV_saidaB[14]~14_combout\ <= NOT \BANCOREG|saidaB[14]~14_combout\;
\BANCOREG|ALT_INV_registrador~564_q\ <= NOT \BANCOREG|registrador~564_q\;
\BANCOREG|ALT_INV_saidaB[13]~13_combout\ <= NOT \BANCOREG|saidaB[13]~13_combout\;
\BANCOREG|ALT_INV_registrador~563_q\ <= NOT \BANCOREG|registrador~563_q\;
\BANCOREG|ALT_INV_saidaB[12]~12_combout\ <= NOT \BANCOREG|saidaB[12]~12_combout\;
\BANCOREG|ALT_INV_registrador~562_q\ <= NOT \BANCOREG|registrador~562_q\;
\BANCOREG|ALT_INV_saidaB[11]~11_combout\ <= NOT \BANCOREG|saidaB[11]~11_combout\;
\BANCOREG|ALT_INV_registrador~561_q\ <= NOT \BANCOREG|registrador~561_q\;
\BANCOREG|ALT_INV_saidaB[10]~10_combout\ <= NOT \BANCOREG|saidaB[10]~10_combout\;
\BANCOREG|ALT_INV_registrador~560_q\ <= NOT \BANCOREG|registrador~560_q\;
\BANCOREG|ALT_INV_saidaB[9]~9_combout\ <= NOT \BANCOREG|saidaB[9]~9_combout\;
\BANCOREG|ALT_INV_registrador~559_q\ <= NOT \BANCOREG|registrador~559_q\;
\BANCOREG|ALT_INV_saidaB[8]~8_combout\ <= NOT \BANCOREG|saidaB[8]~8_combout\;
\BANCOREG|ALT_INV_registrador~558_q\ <= NOT \BANCOREG|registrador~558_q\;
\BANCOREG|ALT_INV_saidaB[7]~7_combout\ <= NOT \BANCOREG|saidaB[7]~7_combout\;
\BANCOREG|ALT_INV_registrador~557_q\ <= NOT \BANCOREG|registrador~557_q\;
\BANCOREG|ALT_INV_saidaB[6]~6_combout\ <= NOT \BANCOREG|saidaB[6]~6_combout\;
\BANCOREG|ALT_INV_registrador~556_q\ <= NOT \BANCOREG|registrador~556_q\;
\BANCOREG|ALT_INV_saidaB[5]~5_combout\ <= NOT \BANCOREG|saidaB[5]~5_combout\;
\BANCOREG|ALT_INV_registrador~555_q\ <= NOT \BANCOREG|registrador~555_q\;
\BANCOREG|ALT_INV_saidaB[4]~4_combout\ <= NOT \BANCOREG|saidaB[4]~4_combout\;
\BANCOREG|ALT_INV_registrador~554_q\ <= NOT \BANCOREG|registrador~554_q\;
\BANCOREG|ALT_INV_registrador~553_q\ <= NOT \BANCOREG|registrador~553_q\;
\BANCOREG|ALT_INV_saidaB[2]~2_combout\ <= NOT \BANCOREG|saidaB[2]~2_combout\;
\BANCOREG|ALT_INV_registrador~552_q\ <= NOT \BANCOREG|registrador~552_q\;
\BANCOREG|ALT_INV_registrador~551_q\ <= NOT \BANCOREG|registrador~551_q\;
\BANCOREG|ALT_INV_saidaB[0]~0_combout\ <= NOT \BANCOREG|saidaB[0]~0_combout\;
\BANCOREG|ALT_INV_registrador~550_q\ <= NOT \BANCOREG|registrador~550_q\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\ULA|ALT_INV_saida~0_combout\ <= NOT \ULA|saida~0_combout\;
\PC|ALT_INV_DOUT\(31) <= NOT \PC|DOUT\(31);
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(28) <= NOT \PC|DOUT\(28);
\PC|ALT_INV_DOUT\(27) <= NOT \PC|DOUT\(27);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(23) <= NOT \PC|DOUT\(23);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT[24]~DUPLICATE_q\ <= NOT \PC|DOUT[24]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[21]~DUPLICATE_q\ <= NOT \PC|DOUT[21]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[20]~DUPLICATE_q\ <= NOT \PC|DOUT[20]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[18]~DUPLICATE_q\ <= NOT \PC|DOUT[18]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[15]~DUPLICATE_q\ <= NOT \PC|DOUT[15]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[14]~DUPLICATE_q\ <= NOT \PC|DOUT[14]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \PC|DOUT[5]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \PC|DOUT[2]~DUPLICATE_q\;

-- Location: IOOBUF_X11_Y0_N36
\Dado_Lido_RAM_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2087_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(0));

-- Location: IOOBUF_X23_Y0_N59
\Dado_Lido_RAM_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2088_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(1));

-- Location: IOOBUF_X11_Y0_N53
\Dado_Lido_RAM_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2089_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(2));

-- Location: IOOBUF_X23_Y0_N42
\Dado_Lido_RAM_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2090_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(3));

-- Location: IOOBUF_X23_Y0_N93
\Dado_Lido_RAM_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2091_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(4));

-- Location: IOOBUF_X12_Y0_N53
\Dado_Lido_RAM_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2092_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(5));

-- Location: IOOBUF_X38_Y0_N36
\Dado_Lido_RAM_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2093_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(6));

-- Location: IOOBUF_X34_Y0_N19
\Dado_Lido_RAM_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2094_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(7));

-- Location: IOOBUF_X40_Y0_N93
\Dado_Lido_RAM_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2095_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(8));

-- Location: IOOBUF_X44_Y0_N2
\Dado_Lido_RAM_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2096_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(9));

-- Location: IOOBUF_X44_Y0_N36
\Dado_Lido_RAM_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2097_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(10));

-- Location: IOOBUF_X10_Y0_N59
\Dado_Lido_RAM_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2098_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(11));

-- Location: IOOBUF_X14_Y0_N2
\Dado_Lido_RAM_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2099_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(12));

-- Location: IOOBUF_X12_Y0_N36
\Dado_Lido_RAM_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2100_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(13));

-- Location: IOOBUF_X43_Y0_N19
\Dado_Lido_RAM_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2101_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(14));

-- Location: IOOBUF_X38_Y0_N19
\Dado_Lido_RAM_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2102_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(15));

-- Location: IOOBUF_X43_Y0_N36
\Dado_Lido_RAM_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2103_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(16));

-- Location: IOOBUF_X38_Y0_N2
\Dado_Lido_RAM_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2104_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(17));

-- Location: IOOBUF_X44_Y0_N53
\Dado_Lido_RAM_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2105_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(18));

-- Location: IOOBUF_X40_Y0_N59
\Dado_Lido_RAM_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2106_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(19));

-- Location: IOOBUF_X40_Y0_N42
\Dado_Lido_RAM_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2107_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(20));

-- Location: IOOBUF_X12_Y0_N19
\Dado_Lido_RAM_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2108_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(21));

-- Location: IOOBUF_X38_Y0_N53
\Dado_Lido_RAM_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2109_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(22));

-- Location: IOOBUF_X11_Y0_N19
\Dado_Lido_RAM_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2110_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(23));

-- Location: IOOBUF_X43_Y0_N53
\Dado_Lido_RAM_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2111_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(24));

-- Location: IOOBUF_X11_Y0_N2
\Dado_Lido_RAM_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2112_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(25));

-- Location: IOOBUF_X10_Y0_N93
\Dado_Lido_RAM_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2113_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(26));

-- Location: IOOBUF_X40_Y0_N76
\Dado_Lido_RAM_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2114_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(27));

-- Location: IOOBUF_X14_Y0_N19
\Dado_Lido_RAM_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2115_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(28));

-- Location: IOOBUF_X19_Y0_N36
\Dado_Lido_RAM_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2116_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(29));

-- Location: IOOBUF_X14_Y0_N36
\Dado_Lido_RAM_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2117_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(30));

-- Location: IOOBUF_X14_Y0_N53
\Dado_Lido_RAM_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|memRAM~2118_combout\,
	oe => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado_Lido_RAM_Sim(31));

-- Location: IOOBUF_X36_Y45_N53
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

-- Location: IOOBUF_X54_Y21_N56
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

-- Location: IOOBUF_X29_Y0_N36
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X22_Y0_N19
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X36_Y0_N19
\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(9));

-- Location: IOOBUF_X36_Y0_N53
\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(10));

-- Location: IOOBUF_X36_Y0_N36
\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(11));

-- Location: IOOBUF_X0_Y20_N56
\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(12));

-- Location: IOOBUF_X22_Y45_N19
\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(13));

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X22_Y45_N2
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X46_Y0_N36
\ULA_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(0));

-- Location: IOOBUF_X43_Y45_N19
\ULA_OUT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(1));

-- Location: IOOBUF_X50_Y0_N36
\ULA_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ALT_INV_saida~0_combout\,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(2));

-- Location: IOOBUF_X32_Y45_N76
\ULA_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(3));

-- Location: IOOBUF_X46_Y45_N59
\ULA_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(4));

-- Location: IOOBUF_X54_Y15_N5
\ULA_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(5));

-- Location: IOOBUF_X50_Y45_N53
\ULA_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(6));

-- Location: IOOBUF_X32_Y45_N93
\ULA_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(7));

-- Location: IOOBUF_X14_Y45_N36
\ULA_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(8));

-- Location: IOOBUF_X18_Y45_N53
\ULA_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(9));

-- Location: IOOBUF_X54_Y17_N5
\ULA_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(10));

-- Location: IOOBUF_X52_Y45_N19
\ULA_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(11));

-- Location: IOOBUF_X34_Y45_N19
\ULA_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(12));

-- Location: IOOBUF_X12_Y45_N2
\ULA_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(13));

-- Location: IOOBUF_X54_Y19_N39
\ULA_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(14));

-- Location: IOOBUF_X8_Y45_N76
\ULA_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(15));

-- Location: IOOBUF_X12_Y45_N19
\ULA_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(16));

-- Location: IOOBUF_X54_Y16_N56
\ULA_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(17));

-- Location: IOOBUF_X20_Y45_N2
\ULA_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(18));

-- Location: IOOBUF_X0_Y21_N5
\ULA_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(19));

-- Location: IOOBUF_X12_Y45_N36
\ULA_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(20));

-- Location: IOOBUF_X48_Y45_N2
\ULA_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(21));

-- Location: IOOBUF_X48_Y45_N19
\ULA_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(22));

-- Location: IOOBUF_X54_Y17_N22
\ULA_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(23));

-- Location: IOOBUF_X50_Y45_N19
\ULA_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(24));

-- Location: IOOBUF_X14_Y45_N19
\ULA_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(25));

-- Location: IOOBUF_X52_Y45_N36
\ULA_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(26));

-- Location: IOOBUF_X44_Y45_N19
\ULA_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(27));

-- Location: IOOBUF_X16_Y45_N42
\ULA_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(28));

-- Location: IOOBUF_X50_Y45_N2
\ULA_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(29));

-- Location: IOOBUF_X54_Y21_N5
\ULA_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(30));

-- Location: IOOBUF_X54_Y15_N56
\ULA_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(31));

-- Location: IOOBUF_X16_Y45_N76
\endRegS_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(0));

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X44_Y45_N36
\endRegS_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(2));

-- Location: IOOBUF_X48_Y0_N42
\endRegS_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_endRegS_Sim(3));

-- Location: IOOBUF_X36_Y45_N36
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

-- Location: IOOBUF_X24_Y0_N36
\endRegT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(0));

-- Location: IOOBUF_X54_Y14_N62
\endRegT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(1));

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N76
\endRegT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_endRegT_Sim(4));

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X16_Y45_N59
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

-- Location: IOOBUF_X46_Y45_N76
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

-- Location: IOOBUF_X38_Y45_N53
\endRegD_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endRegD_Sim(3));

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X48_Y0_N59
\regS_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(0));

-- Location: IOOBUF_X46_Y45_N42
\regS_OUT_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(1));

-- Location: IOOBUF_X48_Y0_N76
\regS_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(2));

-- Location: IOOBUF_X44_Y45_N2
\regS_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(3));

-- Location: IOOBUF_X54_Y20_N22
\regS_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(4));

-- Location: IOOBUF_X54_Y14_N96
\regS_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(5));

-- Location: IOOBUF_X51_Y0_N19
\regS_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(6));

-- Location: IOOBUF_X54_Y14_N79
\regS_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(7));

-- Location: IOOBUF_X14_Y45_N2
\regS_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(8));

-- Location: IOOBUF_X54_Y16_N39
\regS_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(9));

-- Location: IOOBUF_X51_Y0_N53
\regS_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(10));

-- Location: IOOBUF_X20_Y45_N53
\regS_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(11));

-- Location: IOOBUF_X8_Y45_N42
\regS_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(12));

-- Location: IOOBUF_X52_Y45_N53
\regS_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(13));

-- Location: IOOBUF_X54_Y15_N39
\regS_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(14));

-- Location: IOOBUF_X40_Y45_N76
\regS_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(15));

-- Location: IOOBUF_X46_Y45_N93
\regS_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(16));

-- Location: IOOBUF_X22_Y45_N53
\regS_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(17));

-- Location: IOOBUF_X48_Y45_N53
\regS_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(18));

-- Location: IOOBUF_X14_Y45_N53
\regS_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(19));

-- Location: IOOBUF_X54_Y21_N39
\regS_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(20));

-- Location: IOOBUF_X36_Y45_N19
\regS_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(21));

-- Location: IOOBUF_X54_Y16_N5
\regS_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(22));

-- Location: IOOBUF_X38_Y45_N19
\regS_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(23));

-- Location: IOOBUF_X38_Y45_N2
\regS_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(24));

-- Location: IOOBUF_X12_Y45_N53
\regS_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(25));

-- Location: IOOBUF_X40_Y45_N42
\regS_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(26));

-- Location: IOOBUF_X20_Y45_N19
\regS_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(27));

-- Location: IOOBUF_X54_Y18_N45
\regS_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(28));

-- Location: IOOBUF_X54_Y19_N56
\regS_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(29));

-- Location: IOOBUF_X8_Y45_N93
\regS_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(30));

-- Location: IOOBUF_X34_Y45_N53
\regS_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_regS_OUT_Sim(31));

-- Location: IOOBUF_X0_Y19_N56
\regT_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(0));

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X51_Y0_N2
\regT_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(2));

-- Location: IOOBUF_X18_Y0_N53
\regT_OUT_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(3));

-- Location: IOOBUF_X19_Y0_N2
\regT_OUT_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(4));

-- Location: IOOBUF_X18_Y0_N19
\regT_OUT_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(5));

-- Location: IOOBUF_X52_Y0_N19
\regT_OUT_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(6));

-- Location: IOOBUF_X33_Y0_N42
\regT_OUT_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(7));

-- Location: IOOBUF_X33_Y0_N59
\regT_OUT_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(8));

-- Location: IOOBUF_X29_Y0_N2
\regT_OUT_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(9));

-- Location: IOOBUF_X34_Y0_N36
\regT_OUT_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(10));

-- Location: IOOBUF_X0_Y19_N22
\regT_OUT_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(11));

-- Location: IOOBUF_X16_Y0_N93
\regT_OUT_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(12));

-- Location: IOOBUF_X18_Y0_N2
\regT_OUT_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(13));

-- Location: IOOBUF_X34_Y0_N2
\regT_OUT_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(14));

-- Location: IOOBUF_X32_Y45_N59
\regT_OUT_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(15));

-- Location: IOOBUF_X33_Y0_N76
\regT_OUT_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(16));

-- Location: IOOBUF_X50_Y0_N2
\regT_OUT_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(17));

-- Location: IOOBUF_X50_Y0_N19
\regT_OUT_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(18));

-- Location: IOOBUF_X34_Y0_N53
\regT_OUT_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(19));

-- Location: IOOBUF_X46_Y0_N19
\regT_OUT_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(20));

-- Location: IOOBUF_X0_Y18_N62
\regT_OUT_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(21));

-- Location: IOOBUF_X12_Y0_N2
\regT_OUT_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(22));

-- Location: IOOBUF_X16_Y0_N59
\regT_OUT_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(23));

-- Location: IOOBUF_X0_Y18_N45
\regT_OUT_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(24));

-- Location: IOOBUF_X16_Y0_N42
\regT_OUT_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(25));

-- Location: IOOBUF_X0_Y18_N79
\regT_OUT_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(26));

-- Location: IOOBUF_X33_Y0_N93
\regT_OUT_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(27));

-- Location: IOOBUF_X19_Y0_N53
\regT_OUT_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(28));

-- Location: IOOBUF_X52_Y0_N2
\regT_OUT_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(29));

-- Location: IOOBUF_X0_Y18_N96
\regT_OUT_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(30));

-- Location: IOOBUF_X0_Y19_N5
\regT_OUT_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BANCOREG|ALT_INV_saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_regT_OUT_Sim(31));

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: LABCELL_X25_Y4_N0
\somaConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~1_sumout\ = SUM(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \somaConstante|Add0~2\ = CARRY(( \PC|DOUT[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \somaConstante|Add0~1_sumout\,
	cout => \somaConstante|Add0~2\);

-- Location: FF_X25_Y4_N2
\PC|DOUT[2]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N3
\somaConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~5_sumout\ = SUM(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))
-- \somaConstante|Add0~6\ = CARRY(( \PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \somaConstante|Add0~2\,
	sumout => \somaConstante|Add0~5_sumout\,
	cout => \somaConstante|Add0~6\);

-- Location: FF_X25_Y4_N5
\PC|DOUT[3]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N6
\somaConstante|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~9_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaConstante|Add0~6\ ))
-- \somaConstante|Add0~10\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaConstante|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaConstante|Add0~6\,
	sumout => \somaConstante|Add0~9_sumout\,
	cout => \somaConstante|Add0~10\);

-- Location: FF_X25_Y4_N7
\PC|DOUT[4]\ : dffeas
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
	q => \PC|DOUT\(4));

-- Location: LABCELL_X25_Y4_N9
\somaConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))
-- \somaConstante|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(5),
	cin => \somaConstante|Add0~10\,
	sumout => \somaConstante|Add0~13_sumout\,
	cout => \somaConstante|Add0~14\);

-- Location: FF_X25_Y4_N11
\PC|DOUT[5]\ : dffeas
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
	q => \PC|DOUT\(5));

-- Location: LABCELL_X25_Y4_N12
\somaConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~17_sumout\ = SUM(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~14\ ))
-- \somaConstante|Add0~18\ = CARRY(( \PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \somaConstante|Add0~14\,
	sumout => \somaConstante|Add0~17_sumout\,
	cout => \somaConstante|Add0~18\);

-- Location: FF_X25_Y4_N14
\PC|DOUT[6]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N15
\somaConstante|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~21_sumout\ = SUM(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~18\ ))
-- \somaConstante|Add0~22\ = CARRY(( \PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \somaConstante|Add0~18\,
	sumout => \somaConstante|Add0~21_sumout\,
	cout => \somaConstante|Add0~22\);

-- Location: FF_X25_Y4_N17
\PC|DOUT[7]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[7]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N8
\PC|DOUT[4]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N10
\PC|DOUT[5]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y4_N33
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT[3]~DUPLICATE_q\ & ( !\PC|DOUT[5]~DUPLICATE_q\ & ( (!\PC|DOUT[7]~DUPLICATE_q\ & (!\PC|DOUT[6]~DUPLICATE_q\ & !\PC|DOUT[4]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X24_Y4_N57
\RAM|Dado_out[0]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|Dado_out[0]~32_combout\ = ( \ROM|memROM~0_combout\ & ( !\PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|Dado_out[0]~32_combout\);

-- Location: LABCELL_X24_Y4_N48
\BANCOREG|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1062_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (\PC|DOUT[2]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1062_combout\);

-- Location: FF_X23_Y4_N38
\BANCOREG|registrador~550\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~550_q\);

-- Location: MLABCELL_X23_Y4_N51
\BANCOREG|registrador~1063\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1063_combout\ = ( \BANCOREG|registrador~550_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~550_q\,
	combout => \BANCOREG|registrador~1063_combout\);

-- Location: FF_X25_Y4_N13
\PC|DOUT[6]\ : dffeas
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
	q => \PC|DOUT\(6));

-- Location: FF_X25_Y4_N4
\PC|DOUT[3]\ : dffeas
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
	q => \PC|DOUT\(3));

-- Location: FF_X25_Y4_N16
\PC|DOUT[7]\ : dffeas
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
	q => \PC|DOUT\(7));

-- Location: LABCELL_X26_Y4_N27
\BANCOREG|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|Equal0~0_combout\ = ( \PC|DOUT\(7) ) # ( !\PC|DOUT\(7) & ( (((\PC|DOUT[4]~DUPLICATE_q\) # (\PC|DOUT[5]~DUPLICATE_q\)) # (\PC|DOUT\(3))) # (\PC|DOUT\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(6),
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \BANCOREG|Equal0~0_combout\);

-- Location: LABCELL_X26_Y4_N36
\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(7) & ( (!\PC|DOUT[2]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT\(6) & !\PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

-- Location: FF_X23_Y4_N52
\RAM|memRAM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1063_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~71_q\);

-- Location: MLABCELL_X23_Y4_N39
\RAM|memRAM~2087\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2087_combout\ = (\ROM|memROM~0_combout\ & (!\PC|DOUT[2]~DUPLICATE_q\ & \RAM|memRAM~71_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \RAM|ALT_INV_memRAM~71_q\,
	combout => \RAM|memRAM~2087_combout\);

-- Location: LABCELL_X24_Y4_N51
\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\PC|DOUT[7]~DUPLICATE_q\ & ( !\PC|DOUT[6]~DUPLICATE_q\ & ( (!\PC|DOUT[4]~DUPLICATE_q\ & (!\PC|DOUT[5]~DUPLICATE_q\ & (!\PC|DOUT[3]~DUPLICATE_q\ & \PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM|memROM~2_combout\);

-- Location: FF_X24_Y4_N55
\BANCOREG|registrador~551\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~551_q\);

-- Location: LABCELL_X26_Y4_N48
\BANCOREG|registrador~1064\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1064_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\ROM|memROM~0_combout\) # (\BANCOREG|registrador~551_q\) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~551_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1064_combout\);

-- Location: FF_X26_Y4_N49
\RAM|memRAM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1064_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~72_q\);

-- Location: LABCELL_X26_Y4_N51
\RAM|memRAM~2088\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2088_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \RAM|memRAM~72_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~72_q\,
	combout => \RAM|memRAM~2088_combout\);

-- Location: FF_X28_Y4_N37
\BANCOREG|registrador~552\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~552_q\);

-- Location: LABCELL_X26_Y4_N6
\BANCOREG|registrador~1065\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1065_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~552_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~552_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1065_combout\);

-- Location: FF_X26_Y4_N7
\RAM|memRAM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1065_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~73_q\);

-- Location: MLABCELL_X23_Y4_N0
\RAM|memRAM~2089\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2089_combout\ = (\ROM|memROM~0_combout\ & (\RAM|memRAM~73_q\ & !\PC|DOUT[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~73_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|memRAM~2089_combout\);

-- Location: FF_X24_Y4_N38
\BANCOREG|registrador~553\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~553_q\);

-- Location: LABCELL_X26_Y4_N3
\BANCOREG|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1066_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (!\ROM|memROM~0_combout\) # (\BANCOREG|registrador~553_q\) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~553_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1066_combout\);

-- Location: FF_X26_Y4_N5
\RAM|memRAM~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1066_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~74_q\);

-- Location: LABCELL_X26_Y4_N33
\RAM|memRAM~2090\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2090_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \RAM|memRAM~74_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \RAM|ALT_INV_memRAM~74_q\,
	combout => \RAM|memRAM~2090_combout\);

-- Location: FF_X23_Y4_N43
\BANCOREG|registrador~554\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~554_q\);

-- Location: LABCELL_X26_Y4_N30
\BANCOREG|registrador~1067\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1067_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~554_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~554_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1067_combout\);

-- Location: FF_X26_Y4_N32
\RAM|memRAM~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1067_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~75_q\);

-- Location: LABCELL_X26_Y4_N54
\RAM|memRAM~2091\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2091_combout\ = ( \RAM|memRAM~75_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~75_q\,
	combout => \RAM|memRAM~2091_combout\);

-- Location: FF_X24_Y4_N22
\BANCOREG|registrador~555\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~555_q\);

-- Location: LABCELL_X24_Y4_N3
\BANCOREG|registrador~1068\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1068_combout\ = ( \BANCOREG|registrador~555_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~555_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~555_q\,
	combout => \BANCOREG|registrador~1068_combout\);

-- Location: FF_X24_Y4_N5
\RAM|memRAM~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1068_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~76_q\);

-- Location: MLABCELL_X23_Y4_N48
\RAM|memRAM~2092\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2092_combout\ = (\ROM|memROM~0_combout\ & (\RAM|memRAM~76_q\ & !\PC|DOUT[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~76_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|memRAM~2092_combout\);

-- Location: FF_X29_Y4_N4
\BANCOREG|registrador~556\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~556_q\);

-- Location: LABCELL_X26_Y4_N24
\BANCOREG|registrador~1069\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1069_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\BANCOREG|registrador~556_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~556_q\,
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1069_combout\);

-- Location: FF_X26_Y4_N26
\RAM|memRAM~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1069_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~77_q\);

-- Location: LABCELL_X26_Y4_N57
\RAM|memRAM~2093\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2093_combout\ = ( \RAM|memRAM~77_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~77_q\,
	combout => \RAM|memRAM~2093_combout\);

-- Location: FF_X28_Y4_N43
\BANCOREG|registrador~557\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~557_q\);

-- Location: MLABCELL_X28_Y4_N48
\BANCOREG|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1070_combout\ = ( \BANCOREG|registrador~557_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~557_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~557_q\,
	combout => \BANCOREG|registrador~1070_combout\);

-- Location: FF_X28_Y4_N50
\RAM|memRAM~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1070_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~78_q\);

-- Location: MLABCELL_X28_Y4_N45
\RAM|memRAM~2094\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2094_combout\ = ( \RAM|memRAM~78_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~78_q\,
	combout => \RAM|memRAM~2094_combout\);

-- Location: FF_X28_Y4_N16
\BANCOREG|registrador~558\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~558_q\);

-- Location: LABCELL_X29_Y4_N15
\BANCOREG|registrador~1071\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1071_combout\ = ( \BANCOREG|registrador~558_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~558_q\,
	combout => \BANCOREG|registrador~1071_combout\);

-- Location: FF_X29_Y4_N17
\RAM|memRAM~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1071_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~79_q\);

-- Location: LABCELL_X29_Y4_N12
\RAM|memRAM~2095\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2095_combout\ = ( \RAM|memRAM~79_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~79_q\,
	combout => \RAM|memRAM~2095_combout\);

-- Location: FF_X28_Y4_N13
\BANCOREG|registrador~559\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~559_q\);

-- Location: MLABCELL_X28_Y4_N30
\BANCOREG|registrador~1072\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1072_combout\ = ( \BANCOREG|registrador~559_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~559_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~559_q\,
	combout => \BANCOREG|registrador~1072_combout\);

-- Location: FF_X28_Y4_N31
\RAM|memRAM~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1072_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~80_q\);

-- Location: LABCELL_X29_Y4_N18
\RAM|memRAM~2096\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2096_combout\ = ( \RAM|memRAM~80_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~80_q\,
	combout => \RAM|memRAM~2096_combout\);

-- Location: FF_X29_Y4_N7
\BANCOREG|registrador~560\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~560_q\);

-- Location: LABCELL_X29_Y4_N30
\BANCOREG|registrador~1073\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1073_combout\ = ( \BANCOREG|registrador~560_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~560_q\,
	combout => \BANCOREG|registrador~1073_combout\);

-- Location: FF_X29_Y4_N32
\RAM|memRAM~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1073_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~81_q\);

-- Location: LABCELL_X29_Y4_N9
\RAM|memRAM~2097\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2097_combout\ = (\ROM|memROM~0_combout\ & (!\PC|DOUT[2]~DUPLICATE_q\ & \RAM|memRAM~81_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_memRAM~81_q\,
	combout => \RAM|memRAM~2097_combout\);

-- Location: FF_X25_Y4_N1
\PC|DOUT[2]\ : dffeas
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
	q => \PC|DOUT\(2));

-- Location: FF_X24_Y4_N28
\BANCOREG|registrador~561\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~561_q\);

-- Location: LABCELL_X25_Y3_N0
\BANCOREG|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1074_combout\ = ( \BANCOREG|registrador~561_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT\(2)) ) ) # ( !\BANCOREG|registrador~561_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \BANCOREG|ALT_INV_registrador~561_q\,
	combout => \BANCOREG|registrador~1074_combout\);

-- Location: FF_X25_Y3_N2
\RAM|memRAM~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1074_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~82_q\);

-- Location: LABCELL_X25_Y3_N9
\RAM|memRAM~2098\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2098_combout\ = (\ROM|memROM~0_combout\ & (!\PC|DOUT\(2) & \RAM|memRAM~82_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datad => \RAM|ALT_INV_memRAM~82_q\,
	combout => \RAM|memRAM~2098_combout\);

-- Location: FF_X24_Y4_N43
\BANCOREG|registrador~562\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~562_q\);

-- Location: LABCELL_X25_Y3_N6
\BANCOREG|registrador~1075\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1075_combout\ = ( \BANCOREG|registrador~562_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \BANCOREG|ALT_INV_registrador~562_q\,
	combout => \BANCOREG|registrador~1075_combout\);

-- Location: FF_X25_Y3_N8
\RAM|memRAM~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1075_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~83_q\);

-- Location: LABCELL_X25_Y3_N27
\RAM|memRAM~2099\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2099_combout\ = ( \ROM|memROM~0_combout\ & ( \RAM|memRAM~83_q\ & ( !\PC|DOUT\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(2),
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~83_q\,
	combout => \RAM|memRAM~2099_combout\);

-- Location: FF_X24_Y4_N14
\BANCOREG|registrador~563\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~563_q\);

-- Location: LABCELL_X24_Y4_N9
\BANCOREG|registrador~1076\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1076_combout\ = ( \BANCOREG|registrador~563_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~563_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~563_q\,
	combout => \BANCOREG|registrador~1076_combout\);

-- Location: FF_X24_Y4_N34
\RAM|memRAM~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \BANCOREG|registrador~1076_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	sload => VCC,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~84_q\);

-- Location: LABCELL_X24_Y4_N45
\RAM|memRAM~2100\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2100_combout\ = (\ROM|memROM~0_combout\ & (\RAM|memRAM~84_q\ & !\PC|DOUT[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~84_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|memRAM~2100_combout\);

-- Location: FF_X28_Y4_N19
\BANCOREG|registrador~564\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~564_q\);

-- Location: MLABCELL_X28_Y4_N33
\BANCOREG|registrador~1077\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1077_combout\ = ( \BANCOREG|registrador~564_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~564_q\,
	combout => \BANCOREG|registrador~1077_combout\);

-- Location: FF_X28_Y4_N35
\RAM|memRAM~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1077_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~85_q\);

-- Location: LABCELL_X29_Y4_N21
\RAM|memRAM~2101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2101_combout\ = ( \RAM|memRAM~85_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~85_q\,
	combout => \RAM|memRAM~2101_combout\);

-- Location: FF_X29_Y4_N40
\BANCOREG|registrador~565\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~565_q\);

-- Location: LABCELL_X29_Y4_N24
\BANCOREG|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1078_combout\ = ( \BANCOREG|registrador~565_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~565_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~565_q\,
	combout => \BANCOREG|registrador~1078_combout\);

-- Location: FF_X29_Y4_N26
\RAM|memRAM~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1078_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~86_q\);

-- Location: LABCELL_X29_Y4_N27
\RAM|memRAM~2102\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2102_combout\ = ( \RAM|memRAM~86_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~86_q\,
	combout => \RAM|memRAM~2102_combout\);

-- Location: FF_X28_Y4_N25
\BANCOREG|registrador~566\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~566_q\);

-- Location: MLABCELL_X28_Y4_N51
\BANCOREG|registrador~1079\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1079_combout\ = ( \BANCOREG|registrador~566_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~566_q\,
	combout => \BANCOREG|registrador~1079_combout\);

-- Location: FF_X28_Y4_N52
\RAM|memRAM~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1079_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~87_q\);

-- Location: LABCELL_X29_Y4_N36
\RAM|memRAM~2103\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2103_combout\ = (\ROM|memROM~0_combout\ & (!\PC|DOUT[2]~DUPLICATE_q\ & \RAM|memRAM~87_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_memRAM~87_q\,
	combout => \RAM|memRAM~2103_combout\);

-- Location: FF_X28_Y4_N29
\BANCOREG|registrador~567\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~567_q\);

-- Location: MLABCELL_X28_Y4_N0
\BANCOREG|registrador~1080\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1080_combout\ = ( \BANCOREG|registrador~567_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~567_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~567_q\,
	combout => \BANCOREG|registrador~1080_combout\);

-- Location: FF_X28_Y4_N1
\RAM|memRAM~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1080_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~88_q\);

-- Location: LABCELL_X29_Y4_N48
\RAM|memRAM~2104\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2104_combout\ = ( \RAM|memRAM~88_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~88_q\,
	combout => \RAM|memRAM~2104_combout\);

-- Location: FF_X28_Y4_N10
\BANCOREG|registrador~568\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~568_q\);

-- Location: MLABCELL_X28_Y4_N3
\BANCOREG|registrador~1081\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1081_combout\ = ( \BANCOREG|registrador~568_q\ & ( (\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~568_q\,
	combout => \BANCOREG|registrador~1081_combout\);

-- Location: FF_X28_Y4_N5
\RAM|memRAM~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1081_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~89_q\);

-- Location: LABCELL_X29_Y4_N57
\RAM|memRAM~2105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2105_combout\ = ( \ROM|memROM~0_combout\ & ( (\RAM|memRAM~89_q\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_memRAM~89_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \RAM|memRAM~2105_combout\);

-- Location: FF_X28_Y4_N22
\BANCOREG|registrador~569\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~569_q\);

-- Location: MLABCELL_X28_Y4_N57
\BANCOREG|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1082_combout\ = ( \BANCOREG|registrador~569_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~569_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~569_q\,
	combout => \BANCOREG|registrador~1082_combout\);

-- Location: FF_X28_Y4_N58
\RAM|memRAM~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1082_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~90_q\);

-- Location: LABCELL_X29_Y4_N51
\RAM|memRAM~2106\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2106_combout\ = (\ROM|memROM~0_combout\ & (!\PC|DOUT[2]~DUPLICATE_q\ & \RAM|memRAM~90_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RAM|ALT_INV_memRAM~90_q\,
	combout => \RAM|memRAM~2106_combout\);

-- Location: FF_X28_Y4_N7
\BANCOREG|registrador~570\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~570_q\);

-- Location: LABCELL_X29_Y4_N42
\BANCOREG|registrador~1083\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1083_combout\ = ( \BANCOREG|registrador~570_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~570_q\,
	combout => \BANCOREG|registrador~1083_combout\);

-- Location: FF_X29_Y4_N44
\RAM|memRAM~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1083_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~91_q\);

-- Location: LABCELL_X29_Y4_N45
\RAM|memRAM~2107\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2107_combout\ = ( \RAM|memRAM~91_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~91_q\,
	combout => \RAM|memRAM~2107_combout\);

-- Location: FF_X23_Y4_N13
\BANCOREG|registrador~571\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~571_q\);

-- Location: MLABCELL_X23_Y4_N9
\BANCOREG|registrador~1084\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1084_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( \BANCOREG|registrador~571_q\ ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( \BANCOREG|registrador~571_q\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( \PC|DOUT[2]~DUPLICATE_q\ & ( 
-- !\BANCOREG|registrador~571_q\ & ( !\ROM|memROM~0_combout\ ) ) ) # ( !\PC|DOUT[2]~DUPLICATE_q\ & ( !\BANCOREG|registrador~571_q\ & ( !\ROM|memROM~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datae => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~571_q\,
	combout => \BANCOREG|registrador~1084_combout\);

-- Location: FF_X23_Y4_N11
\RAM|memRAM~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1084_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~92_q\);

-- Location: MLABCELL_X23_Y4_N15
\RAM|memRAM~2108\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2108_combout\ = (\ROM|memROM~0_combout\ & (\RAM|memRAM~92_q\ & !\PC|DOUT[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~92_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|memRAM~2108_combout\);

-- Location: FF_X23_Y4_N31
\BANCOREG|registrador~572\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~572_q\);

-- Location: LABCELL_X26_Y4_N18
\BANCOREG|registrador~1085\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1085_combout\ = ( \PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM|memROM~0_combout\ & \BANCOREG|registrador~572_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \BANCOREG|ALT_INV_registrador~572_q\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1085_combout\);

-- Location: FF_X26_Y4_N20
\RAM|memRAM~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1085_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~93_q\);

-- Location: LABCELL_X26_Y4_N21
\RAM|memRAM~2109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2109_combout\ = ( \RAM|memRAM~93_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~93_q\,
	combout => \RAM|memRAM~2109_combout\);

-- Location: FF_X24_Y4_N26
\BANCOREG|registrador~573\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~573_q\);

-- Location: LABCELL_X24_Y4_N36
\BANCOREG|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1086_combout\ = ( \BANCOREG|registrador~573_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~573_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~573_q\,
	combout => \BANCOREG|registrador~1086_combout\);

-- Location: FF_X24_Y4_N32
\RAM|memRAM~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \BANCOREG|registrador~1086_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	sload => VCC,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~94_q\);

-- Location: MLABCELL_X23_Y4_N57
\RAM|memRAM~2110\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2110_combout\ = ( \RAM|memRAM~94_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~94_q\,
	combout => \RAM|memRAM~2110_combout\);

-- Location: FF_X23_Y4_N35
\BANCOREG|registrador~574\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~574_q\);

-- Location: LABCELL_X26_Y4_N12
\BANCOREG|registrador~1087\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1087_combout\ = ( \ROM|memROM~0_combout\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( \BANCOREG|registrador~574_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~574_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1087_combout\);

-- Location: FF_X26_Y4_N14
\RAM|memRAM~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1087_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~95_q\);

-- Location: LABCELL_X26_Y4_N9
\RAM|memRAM~2111\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2111_combout\ = ( \RAM|memRAM~95_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~95_q\,
	combout => \RAM|memRAM~2111_combout\);

-- Location: FF_X23_Y4_N25
\BANCOREG|registrador~575\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~575_q\);

-- Location: MLABCELL_X23_Y4_N3
\BANCOREG|registrador~1088\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1088_combout\ = ( \BANCOREG|registrador~575_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~575_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~575_q\,
	combout => \BANCOREG|registrador~1088_combout\);

-- Location: FF_X23_Y4_N4
\RAM|memRAM~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1088_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~96_q\);

-- Location: MLABCELL_X23_Y4_N27
\RAM|memRAM~2112\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2112_combout\ = (\ROM|memROM~0_combout\ & (\RAM|memRAM~96_q\ & !\PC|DOUT[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \RAM|ALT_INV_memRAM~96_q\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|memRAM~2112_combout\);

-- Location: FF_X23_Y4_N22
\BANCOREG|registrador~576\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~576_q\);

-- Location: MLABCELL_X23_Y4_N54
\BANCOREG|registrador~1089\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1089_combout\ = ( \BANCOREG|registrador~576_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~576_q\,
	combout => \BANCOREG|registrador~1089_combout\);

-- Location: FF_X23_Y4_N56
\RAM|memRAM~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1089_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~97_q\);

-- Location: MLABCELL_X23_Y4_N18
\RAM|memRAM~2113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2113_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\ & (\ROM|memROM~0_combout\ & \RAM|memRAM~97_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ROM|ALT_INV_memROM~0_combout\,
	datad => \RAM|ALT_INV_memRAM~97_q\,
	combout => \RAM|memRAM~2113_combout\);

-- Location: FF_X28_Y4_N40
\BANCOREG|registrador~577\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~577_q\);

-- Location: MLABCELL_X28_Y4_N54
\BANCOREG|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1090_combout\ = ( \BANCOREG|registrador~577_q\ & ( (!\ROM|memROM~0_combout\) # (\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~577_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \BANCOREG|ALT_INV_registrador~577_q\,
	combout => \BANCOREG|registrador~1090_combout\);

-- Location: FF_X28_Y4_N55
\RAM|memRAM~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1090_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~98_q\);

-- Location: LABCELL_X29_Y4_N33
\RAM|memRAM~2114\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2114_combout\ = ( \RAM|memRAM~98_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RAM|ALT_INV_memRAM~98_q\,
	combout => \RAM|memRAM~2114_combout\);

-- Location: FF_X24_Y4_N19
\BANCOREG|registrador~578\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~578_q\);

-- Location: LABCELL_X25_Y3_N12
\BANCOREG|registrador~1091\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1091_combout\ = (\ROM|memROM~0_combout\ & (\PC|DOUT\(2) & \BANCOREG|registrador~578_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \BANCOREG|ALT_INV_registrador~578_q\,
	combout => \BANCOREG|registrador~1091_combout\);

-- Location: FF_X25_Y3_N14
\RAM|memRAM~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1091_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~99_q\);

-- Location: LABCELL_X25_Y3_N15
\RAM|memRAM~2115\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2115_combout\ = ( \RAM|memRAM~99_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_memRAM~99_q\,
	combout => \RAM|memRAM~2115_combout\);

-- Location: FF_X24_Y4_N8
\BANCOREG|registrador~579\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~579_q\);

-- Location: LABCELL_X24_Y4_N0
\BANCOREG|registrador~1092\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1092_combout\ = ( \ROM|memROM~0_combout\ & ( (\BANCOREG|registrador~579_q\ & \PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \BANCOREG|ALT_INV_registrador~579_q\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|registrador~1092_combout\);

-- Location: FF_X24_Y4_N1
\RAM|memRAM~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1092_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~100_q\);

-- Location: LABCELL_X25_Y3_N3
\RAM|memRAM~2116\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2116_combout\ = ( \RAM|memRAM~100_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_memRAM~100_q\,
	combout => \RAM|memRAM~2116_combout\);

-- Location: FF_X23_Y4_N47
\BANCOREG|registrador~580\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \RAM|Dado_out[0]~32_combout\,
	sload => VCC,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~580_q\);

-- Location: LABCELL_X25_Y3_N18
\BANCOREG|registrador~1093\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1093_combout\ = ( \BANCOREG|registrador~580_q\ & ( (\ROM|memROM~0_combout\ & \PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \BANCOREG|ALT_INV_registrador~580_q\,
	combout => \BANCOREG|registrador~1093_combout\);

-- Location: FF_X25_Y3_N20
\RAM|memRAM~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1093_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~101_q\);

-- Location: LABCELL_X25_Y3_N21
\RAM|memRAM~2117\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2117_combout\ = ( \RAM|memRAM~101_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT\(2),
	dataf => \RAM|ALT_INV_memRAM~101_q\,
	combout => \RAM|memRAM~2117_combout\);

-- Location: FF_X24_Y4_N59
\BANCOREG|registrador~581\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RAM|Dado_out[0]~32_combout\,
	ena => \BANCOREG|registrador~1062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BANCOREG|registrador~581_q\);

-- Location: LABCELL_X26_Y4_N42
\BANCOREG|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|registrador~1094_combout\ = ( \ROM|memROM~0_combout\ & ( \PC|DOUT[2]~DUPLICATE_q\ & ( \BANCOREG|registrador~581_q\ ) ) ) # ( !\ROM|memROM~0_combout\ & ( \PC|DOUT[2]~DUPLICATE_q\ ) ) # ( !\ROM|memROM~0_combout\ & ( !\PC|DOUT[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \BANCOREG|ALT_INV_registrador~581_q\,
	datae => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \BANCOREG|registrador~1094_combout\);

-- Location: FF_X26_Y4_N44
\RAM|memRAM~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \BANCOREG|registrador~1094_combout\,
	sclr => \BANCOREG|Equal0~0_combout\,
	ena => \ROM|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|memRAM~102_q\);

-- Location: LABCELL_X26_Y4_N0
\RAM|memRAM~2118\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|memRAM~2118_combout\ = ( \RAM|memRAM~102_q\ & ( (!\PC|DOUT[2]~DUPLICATE_q\ & \ROM|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_memRAM~102_q\,
	combout => \RAM|memRAM~2118_combout\);

-- Location: FF_X25_Y4_N20
\PC|DOUT[8]\ : dffeas
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
	q => \PC|DOUT\(8));

-- Location: LABCELL_X25_Y4_N18
\somaConstante|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~22\ ))
-- \somaConstante|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(8),
	cin => \somaConstante|Add0~22\,
	sumout => \somaConstante|Add0~25_sumout\,
	cout => \somaConstante|Add0~26\);

-- Location: FF_X25_Y4_N19
\PC|DOUT[8]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[8]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N23
\PC|DOUT[9]\ : dffeas
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
	q => \PC|DOUT\(9));

-- Location: LABCELL_X25_Y4_N21
\somaConstante|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~29_sumout\ = SUM(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~26\ ))
-- \somaConstante|Add0~30\ = CARRY(( \PC|DOUT\(9) ) + ( GND ) + ( \somaConstante|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(9),
	cin => \somaConstante|Add0~26\,
	sumout => \somaConstante|Add0~29_sumout\,
	cout => \somaConstante|Add0~30\);

-- Location: FF_X25_Y4_N22
\PC|DOUT[9]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[9]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N26
\PC|DOUT[10]\ : dffeas
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
	q => \PC|DOUT\(10));

-- Location: LABCELL_X25_Y4_N24
\somaConstante|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~30\ ))
-- \somaConstante|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(10),
	cin => \somaConstante|Add0~30\,
	sumout => \somaConstante|Add0~33_sumout\,
	cout => \somaConstante|Add0~34\);

-- Location: FF_X25_Y4_N25
\PC|DOUT[10]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[10]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N29
\PC|DOUT[11]\ : dffeas
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
	q => \PC|DOUT\(11));

-- Location: LABCELL_X25_Y4_N27
\somaConstante|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~37_sumout\ = SUM(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~34\ ))
-- \somaConstante|Add0~38\ = CARRY(( \PC|DOUT\(11) ) + ( GND ) + ( \somaConstante|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(11),
	cin => \somaConstante|Add0~34\,
	sumout => \somaConstante|Add0~37_sumout\,
	cout => \somaConstante|Add0~38\);

-- Location: FF_X25_Y4_N28
\PC|DOUT[11]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[11]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N31
\PC|DOUT[12]\ : dffeas
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
	q => \PC|DOUT\(12));

-- Location: LABCELL_X25_Y4_N30
\somaConstante|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~41_sumout\ = SUM(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~38\ ))
-- \somaConstante|Add0~42\ = CARRY(( \PC|DOUT\(12) ) + ( GND ) + ( \somaConstante|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(12),
	cin => \somaConstante|Add0~38\,
	sumout => \somaConstante|Add0~41_sumout\,
	cout => \somaConstante|Add0~42\);

-- Location: FF_X25_Y4_N32
\PC|DOUT[12]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[12]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N35
\PC|DOUT[13]\ : dffeas
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
	q => \PC|DOUT\(13));

-- Location: LABCELL_X25_Y4_N33
\somaConstante|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~42\ ))
-- \somaConstante|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(13),
	cin => \somaConstante|Add0~42\,
	sumout => \somaConstante|Add0~45_sumout\,
	cout => \somaConstante|Add0~46\);

-- Location: FF_X25_Y4_N34
\PC|DOUT[13]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[13]~DUPLICATE_q\);

-- Location: FF_X25_Y4_N38
\PC|DOUT[14]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[14]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N36
\somaConstante|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~49_sumout\ = SUM(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~46\ ))
-- \somaConstante|Add0~50\ = CARRY(( \PC|DOUT[14]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[14]~DUPLICATE_q\,
	cin => \somaConstante|Add0~46\,
	sumout => \somaConstante|Add0~49_sumout\,
	cout => \somaConstante|Add0~50\);

-- Location: FF_X25_Y4_N37
\PC|DOUT[14]\ : dffeas
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
	q => \PC|DOUT\(14));

-- Location: FF_X25_Y4_N41
\PC|DOUT[15]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[15]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N39
\somaConstante|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~53_sumout\ = SUM(( \PC|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))
-- \somaConstante|Add0~54\ = CARRY(( \PC|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	cin => \somaConstante|Add0~50\,
	sumout => \somaConstante|Add0~53_sumout\,
	cout => \somaConstante|Add0~54\);

-- Location: FF_X25_Y4_N40
\PC|DOUT[15]\ : dffeas
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
	q => \PC|DOUT\(15));

-- Location: LABCELL_X25_Y4_N42
\somaConstante|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~54\ ))
-- \somaConstante|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(16),
	cin => \somaConstante|Add0~54\,
	sumout => \somaConstante|Add0~57_sumout\,
	cout => \somaConstante|Add0~58\);

-- Location: FF_X25_Y4_N43
\PC|DOUT[16]\ : dffeas
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
	q => \PC|DOUT\(16));

-- Location: LABCELL_X25_Y4_N45
\somaConstante|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~61_sumout\ = SUM(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~58\ ))
-- \somaConstante|Add0~62\ = CARRY(( \PC|DOUT\(17) ) + ( GND ) + ( \somaConstante|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(17),
	cin => \somaConstante|Add0~58\,
	sumout => \somaConstante|Add0~61_sumout\,
	cout => \somaConstante|Add0~62\);

-- Location: FF_X25_Y4_N47
\PC|DOUT[17]\ : dffeas
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
	q => \PC|DOUT\(17));

-- Location: FF_X25_Y4_N50
\PC|DOUT[18]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[18]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N48
\somaConstante|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~65_sumout\ = SUM(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~62\ ))
-- \somaConstante|Add0~66\ = CARRY(( \PC|DOUT[18]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[18]~DUPLICATE_q\,
	cin => \somaConstante|Add0~62\,
	sumout => \somaConstante|Add0~65_sumout\,
	cout => \somaConstante|Add0~66\);

-- Location: FF_X25_Y4_N49
\PC|DOUT[18]\ : dffeas
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
	q => \PC|DOUT\(18));

-- Location: LABCELL_X25_Y4_N51
\somaConstante|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~69_sumout\ = SUM(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~66\ ))
-- \somaConstante|Add0~70\ = CARRY(( \PC|DOUT\(19) ) + ( GND ) + ( \somaConstante|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(19),
	cin => \somaConstante|Add0~66\,
	sumout => \somaConstante|Add0~69_sumout\,
	cout => \somaConstante|Add0~70\);

-- Location: FF_X25_Y4_N52
\PC|DOUT[19]\ : dffeas
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
	q => \PC|DOUT\(19));

-- Location: FF_X25_Y4_N56
\PC|DOUT[20]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[20]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N54
\somaConstante|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~73_sumout\ = SUM(( \PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~70\ ))
-- \somaConstante|Add0~74\ = CARRY(( \PC|DOUT[20]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[20]~DUPLICATE_q\,
	cin => \somaConstante|Add0~70\,
	sumout => \somaConstante|Add0~73_sumout\,
	cout => \somaConstante|Add0~74\);

-- Location: FF_X25_Y4_N55
\PC|DOUT[20]\ : dffeas
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
	q => \PC|DOUT\(20));

-- Location: FF_X25_Y4_N59
\PC|DOUT[21]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[21]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y4_N57
\somaConstante|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~77_sumout\ = SUM(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~74\ ))
-- \somaConstante|Add0~78\ = CARRY(( \PC|DOUT[21]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[21]~DUPLICATE_q\,
	cin => \somaConstante|Add0~74\,
	sumout => \somaConstante|Add0~77_sumout\,
	cout => \somaConstante|Add0~78\);

-- Location: FF_X25_Y4_N58
\PC|DOUT[21]\ : dffeas
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
	q => \PC|DOUT\(21));

-- Location: LABCELL_X25_Y3_N30
\somaConstante|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~78\ ))
-- \somaConstante|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(22),
	cin => \somaConstante|Add0~78\,
	sumout => \somaConstante|Add0~81_sumout\,
	cout => \somaConstante|Add0~82\);

-- Location: FF_X25_Y3_N31
\PC|DOUT[22]\ : dffeas
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
	q => \PC|DOUT\(22));

-- Location: LABCELL_X25_Y3_N33
\somaConstante|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~85_sumout\ = SUM(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~82\ ))
-- \somaConstante|Add0~86\ = CARRY(( \PC|DOUT\(23) ) + ( GND ) + ( \somaConstante|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(23),
	cin => \somaConstante|Add0~82\,
	sumout => \somaConstante|Add0~85_sumout\,
	cout => \somaConstante|Add0~86\);

-- Location: FF_X25_Y3_N35
\PC|DOUT[23]\ : dffeas
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
	q => \PC|DOUT\(23));

-- Location: FF_X25_Y3_N38
\PC|DOUT[24]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[24]~DUPLICATE_q\);

-- Location: LABCELL_X25_Y3_N36
\somaConstante|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~89_sumout\ = SUM(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~86\ ))
-- \somaConstante|Add0~90\ = CARRY(( \PC|DOUT[24]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[24]~DUPLICATE_q\,
	cin => \somaConstante|Add0~86\,
	sumout => \somaConstante|Add0~89_sumout\,
	cout => \somaConstante|Add0~90\);

-- Location: FF_X25_Y3_N37
\PC|DOUT[24]\ : dffeas
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
	q => \PC|DOUT\(24));

-- Location: LABCELL_X25_Y3_N39
\somaConstante|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~93_sumout\ = SUM(( \PC|DOUT\(25) ) + ( GND ) + ( \somaConstante|Add0~90\ ))
-- \somaConstante|Add0~94\ = CARRY(( \PC|DOUT\(25) ) + ( GND ) + ( \somaConstante|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(25),
	cin => \somaConstante|Add0~90\,
	sumout => \somaConstante|Add0~93_sumout\,
	cout => \somaConstante|Add0~94\);

-- Location: FF_X25_Y3_N41
\PC|DOUT[25]\ : dffeas
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
	q => \PC|DOUT\(25));

-- Location: LABCELL_X25_Y3_N42
\somaConstante|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~94\ ))
-- \somaConstante|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(26),
	cin => \somaConstante|Add0~94\,
	sumout => \somaConstante|Add0~97_sumout\,
	cout => \somaConstante|Add0~98\);

-- Location: FF_X25_Y3_N43
\PC|DOUT[26]\ : dffeas
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
	q => \PC|DOUT\(26));

-- Location: LABCELL_X25_Y3_N45
\somaConstante|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~101_sumout\ = SUM(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~98\ ))
-- \somaConstante|Add0~102\ = CARRY(( \PC|DOUT\(27) ) + ( GND ) + ( \somaConstante|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(27),
	cin => \somaConstante|Add0~98\,
	sumout => \somaConstante|Add0~101_sumout\,
	cout => \somaConstante|Add0~102\);

-- Location: FF_X25_Y3_N47
\PC|DOUT[27]\ : dffeas
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
	q => \PC|DOUT\(27));

-- Location: LABCELL_X25_Y3_N48
\somaConstante|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~105_sumout\ = SUM(( \PC|DOUT\(28) ) + ( GND ) + ( \somaConstante|Add0~102\ ))
-- \somaConstante|Add0~106\ = CARRY(( \PC|DOUT\(28) ) + ( GND ) + ( \somaConstante|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(28),
	cin => \somaConstante|Add0~102\,
	sumout => \somaConstante|Add0~105_sumout\,
	cout => \somaConstante|Add0~106\);

-- Location: FF_X25_Y3_N50
\PC|DOUT[28]\ : dffeas
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
	q => \PC|DOUT\(28));

-- Location: LABCELL_X25_Y3_N51
\somaConstante|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~106\ ))
-- \somaConstante|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(29),
	cin => \somaConstante|Add0~106\,
	sumout => \somaConstante|Add0~109_sumout\,
	cout => \somaConstante|Add0~110\);

-- Location: FF_X25_Y3_N52
\PC|DOUT[29]\ : dffeas
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
	q => \PC|DOUT\(29));

-- Location: LABCELL_X25_Y3_N54
\somaConstante|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~113_sumout\ = SUM(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~110\ ))
-- \somaConstante|Add0~114\ = CARRY(( \PC|DOUT\(30) ) + ( GND ) + ( \somaConstante|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(30),
	cin => \somaConstante|Add0~110\,
	sumout => \somaConstante|Add0~113_sumout\,
	cout => \somaConstante|Add0~114\);

-- Location: FF_X25_Y3_N56
\PC|DOUT[30]\ : dffeas
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
	q => \PC|DOUT\(30));

-- Location: LABCELL_X25_Y3_N57
\somaConstante|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~117_sumout\ = SUM(( \PC|DOUT\(31) ) + ( GND ) + ( \somaConstante|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(31),
	cin => \somaConstante|Add0~114\,
	sumout => \somaConstante|Add0~117_sumout\);

-- Location: FF_X25_Y3_N59
\PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \somaConstante|Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(31));

-- Location: LABCELL_X26_Y1_N48
\ULA|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|saida~0_combout\ = ( \PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[7]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( \PC|DOUT[7]~DUPLICATE_q\ ) ) # ( \PC|DOUT[5]~DUPLICATE_q\ & ( !\PC|DOUT[7]~DUPLICATE_q\ ) ) # ( !\PC|DOUT[5]~DUPLICATE_q\ & ( 
-- !\PC|DOUT[7]~DUPLICATE_q\ & ( (((\PC|DOUT[6]~DUPLICATE_q\) # (\PC|DOUT[4]~DUPLICATE_q\)) # (\PC|DOUT\(2))) # (\PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	combout => \ULA|saida~0_combout\);

-- Location: MLABCELL_X23_Y4_N36
\BANCOREG|saidaB[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[0]~0_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~550_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~550_q\,
	combout => \BANCOREG|saidaB[0]~0_combout\);

-- Location: LABCELL_X24_Y4_N54
\BANCOREG|saidaB[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[1]~1_combout\ = (\ROM|memROM~0_combout\ & ((!\PC|DOUT[2]~DUPLICATE_q\) # (\BANCOREG|registrador~551_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100000101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~551_q\,
	combout => \BANCOREG|saidaB[1]~1_combout\);

-- Location: MLABCELL_X28_Y4_N36
\BANCOREG|saidaB[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[2]~2_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~552_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~552_q\,
	combout => \BANCOREG|saidaB[2]~2_combout\);

-- Location: LABCELL_X24_Y4_N39
\BANCOREG|saidaB[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[3]~3_combout\ = ( \BANCOREG|registrador~553_q\ & ( \ROM|memROM~0_combout\ ) ) # ( !\BANCOREG|registrador~553_q\ & ( (\ROM|memROM~0_combout\ & !\PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~553_q\,
	combout => \BANCOREG|saidaB[3]~3_combout\);

-- Location: MLABCELL_X23_Y4_N42
\BANCOREG|saidaB[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[4]~4_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~554_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~554_q\,
	combout => \BANCOREG|saidaB[4]~4_combout\);

-- Location: LABCELL_X24_Y4_N21
\BANCOREG|saidaB[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[5]~5_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~555_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~555_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[5]~5_combout\);

-- Location: LABCELL_X29_Y4_N3
\BANCOREG|saidaB[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[6]~6_combout\ = ( \BANCOREG|registrador~556_q\ & ( \ROM|memROM~0_combout\ & ( !\PC|DOUT[2]~DUPLICATE_q\ ) ) ) # ( !\BANCOREG|registrador~556_q\ & ( \ROM|memROM~0_combout\ ) ) # ( \BANCOREG|registrador~556_q\ & ( !\ROM|memROM~0_combout\ ) 
-- ) # ( !\BANCOREG|registrador~556_q\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \BANCOREG|ALT_INV_registrador~556_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[6]~6_combout\);

-- Location: MLABCELL_X28_Y4_N42
\BANCOREG|saidaB[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[7]~7_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~557_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~557_q\,
	combout => \BANCOREG|saidaB[7]~7_combout\);

-- Location: MLABCELL_X28_Y4_N15
\BANCOREG|saidaB[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[8]~8_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~558_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~558_q\,
	combout => \BANCOREG|saidaB[8]~8_combout\);

-- Location: MLABCELL_X28_Y4_N12
\BANCOREG|saidaB[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[9]~9_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~559_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~559_q\,
	combout => \BANCOREG|saidaB[9]~9_combout\);

-- Location: LABCELL_X29_Y4_N6
\BANCOREG|saidaB[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[10]~10_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~560_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~560_q\,
	combout => \BANCOREG|saidaB[10]~10_combout\);

-- Location: LABCELL_X24_Y4_N27
\BANCOREG|saidaB[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[11]~11_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~561_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~561_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[11]~11_combout\);

-- Location: LABCELL_X24_Y4_N42
\BANCOREG|saidaB[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[12]~12_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~562_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~562_q\,
	combout => \BANCOREG|saidaB[12]~12_combout\);

-- Location: LABCELL_X24_Y4_N12
\BANCOREG|saidaB[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[13]~13_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~563_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~563_q\,
	combout => \BANCOREG|saidaB[13]~13_combout\);

-- Location: MLABCELL_X28_Y4_N18
\BANCOREG|saidaB[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[14]~14_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~564_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~564_q\,
	combout => \BANCOREG|saidaB[14]~14_combout\);

-- Location: LABCELL_X29_Y4_N39
\BANCOREG|saidaB[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[15]~15_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~565_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~565_q\,
	combout => \BANCOREG|saidaB[15]~15_combout\);

-- Location: MLABCELL_X28_Y4_N24
\BANCOREG|saidaB[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[16]~16_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~566_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~566_q\,
	combout => \BANCOREG|saidaB[16]~16_combout\);

-- Location: MLABCELL_X28_Y4_N27
\BANCOREG|saidaB[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[17]~17_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~567_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~567_q\,
	combout => \BANCOREG|saidaB[17]~17_combout\);

-- Location: MLABCELL_X28_Y4_N9
\BANCOREG|saidaB[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[18]~18_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~568_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~568_q\,
	combout => \BANCOREG|saidaB[18]~18_combout\);

-- Location: MLABCELL_X28_Y4_N21
\BANCOREG|saidaB[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[19]~19_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~569_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~569_q\,
	combout => \BANCOREG|saidaB[19]~19_combout\);

-- Location: MLABCELL_X28_Y4_N6
\BANCOREG|saidaB[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[20]~20_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~570_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~570_q\,
	combout => \BANCOREG|saidaB[20]~20_combout\);

-- Location: MLABCELL_X23_Y4_N12
\BANCOREG|saidaB[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[21]~21_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~571_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~571_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[21]~21_combout\);

-- Location: MLABCELL_X23_Y4_N30
\BANCOREG|saidaB[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[22]~22_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~572_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~572_q\,
	combout => \BANCOREG|saidaB[22]~22_combout\);

-- Location: LABCELL_X24_Y4_N24
\BANCOREG|saidaB[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[23]~23_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~573_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~573_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[23]~23_combout\);

-- Location: MLABCELL_X23_Y4_N33
\BANCOREG|saidaB[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[24]~24_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~574_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~574_q\,
	combout => \BANCOREG|saidaB[24]~24_combout\);

-- Location: MLABCELL_X23_Y4_N24
\BANCOREG|saidaB[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[25]~25_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~575_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~575_q\,
	combout => \BANCOREG|saidaB[25]~25_combout\);

-- Location: MLABCELL_X23_Y4_N21
\BANCOREG|saidaB[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[26]~26_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~576_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~576_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[26]~26_combout\);

-- Location: MLABCELL_X28_Y4_N39
\BANCOREG|saidaB[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[27]~27_combout\ = (!\PC|DOUT[2]~DUPLICATE_q\) # ((!\ROM|memROM~0_combout\) # (!\BANCOREG|registrador~577_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \BANCOREG|ALT_INV_registrador~577_q\,
	combout => \BANCOREG|saidaB[27]~27_combout\);

-- Location: LABCELL_X24_Y4_N18
\BANCOREG|saidaB[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[28]~28_combout\ = ( \ROM|memROM~0_combout\ & ( (!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~578_q\) ) ) # ( !\ROM|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~578_q\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \BANCOREG|saidaB[28]~28_combout\);

-- Location: LABCELL_X24_Y4_N6
\BANCOREG|saidaB[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[29]~29_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~579_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101011111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datac => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~579_q\,
	combout => \BANCOREG|saidaB[29]~29_combout\);

-- Location: MLABCELL_X23_Y4_N45
\BANCOREG|saidaB[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[30]~30_combout\ = (!\ROM|memROM~0_combout\) # ((!\PC|DOUT[2]~DUPLICATE_q\) # (!\BANCOREG|registrador~580_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101110111111111110111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \BANCOREG|ALT_INV_registrador~580_q\,
	combout => \BANCOREG|saidaB[30]~30_combout\);

-- Location: LABCELL_X24_Y4_N15
\BANCOREG|saidaB[31]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \BANCOREG|saidaB[31]~31_combout\ = ( \BANCOREG|registrador~581_q\ & ( (!\ROM|memROM~0_combout\) # (!\PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\BANCOREG|registrador~581_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datad => \PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \BANCOREG|ALT_INV_registrador~581_q\,
	combout => \BANCOREG|saidaB[31]~31_combout\);

-- Location: IOIBUF_X50_Y45_N35
\Habilita_WR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Habilita_WR,
	o => \Habilita_WR~input_o\);

-- Location: LABCELL_X1_Y33_N0
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


