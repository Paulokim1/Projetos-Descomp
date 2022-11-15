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

-- DATE "11/15/2022 18:56:11"

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
	ULA_OP_Sim : OUT std_logic_vector(2 DOWNTO 0);
	PC_Out_Sim : OUT std_logic_vector(31 DOWNTO 0);
	Instrucao_sim : OUT std_logic_vector(31 DOWNTO 0);
	ULA_OUT_Sim : OUT std_logic_vector(31 DOWNTO 0);
	endReg1_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endReg2_Sim : OUT std_logic_vector(4 DOWNTO 0);
	endReg3_Sim : OUT std_logic_vector(4 DOWNTO 0);
	dado_lido_reg_1_Sim : OUT std_logic_vector(31 DOWNTO 0);
	dado_lido_reg_2_Sim : OUT std_logic_vector(31 DOWNTO 0);
	dado_lido_ram_Sim : OUT std_logic_vector(31 DOWNTO 0);
	Pontos_Controle_Sim : OUT std_logic_vector(10 DOWNTO 0);
	flag_Sim : OUT std_logic
	);
END MIPS;

-- Design Ports Information
-- ULA_OP_Sim[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OP_Sim[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OP_Sim[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[1]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[8]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[9]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[10]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[11]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[12]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[14]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[15]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[16]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[17]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[19]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[20]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[21]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[22]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[23]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[24]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[25]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[26]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[27]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[28]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[29]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[30]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_Out_Sim[31]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[7]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[9]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[11]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[13]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[14]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[17]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[18]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[19]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[20]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[22]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[23]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[24]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[25]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[26]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[27]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[28]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[29]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[30]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instrucao_sim[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[3]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[8]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[9]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[11]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[12]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[13]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[16]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[17]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[18]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[19]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[21]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[22]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[26]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[27]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[28]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[29]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[30]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULA_OUT_Sim[31]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg1_Sim[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg1_Sim[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg1_Sim[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg1_Sim[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg1_Sim[4]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg2_Sim[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg2_Sim[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg2_Sim[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg2_Sim[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg2_Sim[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg3_Sim[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg3_Sim[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg3_Sim[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg3_Sim[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endReg3_Sim[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[5]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[6]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[11]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[15]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[16]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[17]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[18]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[19]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[20]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[21]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[23]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[24]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[25]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[26]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[27]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[28]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[29]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[30]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_1_Sim[31]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[0]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[3]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[8]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[9]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[11]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[12]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[16]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[17]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[18]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[19]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[20]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[21]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[22]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[23]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[24]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[25]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[26]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[27]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[28]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[29]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[30]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_reg_2_Sim[31]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[6]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[8]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[9]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[10]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[14]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[16]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[17]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[18]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[19]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[20]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[21]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[23]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[25]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[26]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[27]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[28]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[29]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[30]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dado_lido_ram_Sim[31]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[7]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Pontos_Controle_Sim[10]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag_Sim	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_ULA_OP_Sim : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_PC_Out_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Instrucao_sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_endReg1_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endReg2_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_endReg3_Sim : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_dado_lido_reg_1_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dado_lido_reg_2_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dado_lido_ram_Sim : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Pontos_Controle_Sim : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_flag_Sim : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \somaConstante|Add0~2\ : std_logic;
SIGNAL \somaConstante|Add0~5_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~6\ : std_logic;
SIGNAL \somaConstante|Add0~9_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~10\ : std_logic;
SIGNAL \somaConstante|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[5]~1_combout\ : std_logic;
SIGNAL \somaConstante|Add0~14\ : std_logic;
SIGNAL \somaConstante|Add0~17_sumout\ : std_logic;
SIGNAL \PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~18\ : std_logic;
SIGNAL \somaConstante|Add0~21_sumout\ : std_logic;
SIGNAL \PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \somaConstante|Add0~22\ : std_logic;
SIGNAL \somaConstante|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[8]~2_combout\ : std_logic;
SIGNAL \somaConstante|Add0~26\ : std_logic;
SIGNAL \somaConstante|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[9]~3_combout\ : std_logic;
SIGNAL \somaConstante|Add0~30\ : std_logic;
SIGNAL \somaConstante|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[10]~4_combout\ : std_logic;
SIGNAL \somaConstante|Add0~34\ : std_logic;
SIGNAL \somaConstante|Add0~37_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[11]~5_combout\ : std_logic;
SIGNAL \somaConstante|Add0~38\ : std_logic;
SIGNAL \somaConstante|Add0~41_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[12]~6_combout\ : std_logic;
SIGNAL \somaConstante|Add0~42\ : std_logic;
SIGNAL \somaConstante|Add0~45_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[13]~7_combout\ : std_logic;
SIGNAL \somaConstante|Add0~46\ : std_logic;
SIGNAL \somaConstante|Add0~49_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[14]~8_combout\ : std_logic;
SIGNAL \PC|DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~50\ : std_logic;
SIGNAL \somaConstante|Add0~53_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[15]~9_combout\ : std_logic;
SIGNAL \somaConstante|Add0~54\ : std_logic;
SIGNAL \somaConstante|Add0~57_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[16]~10_combout\ : std_logic;
SIGNAL \somaConstante|Add0~58\ : std_logic;
SIGNAL \somaConstante|Add0~61_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[17]~11_combout\ : std_logic;
SIGNAL \somaConstante|Add0~62\ : std_logic;
SIGNAL \somaConstante|Add0~65_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[18]~12_combout\ : std_logic;
SIGNAL \PC|DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~66\ : std_logic;
SIGNAL \somaConstante|Add0~69_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[19]~13_combout\ : std_logic;
SIGNAL \somaConstante|Add0~70\ : std_logic;
SIGNAL \somaConstante|Add0~73_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[20]~14_combout\ : std_logic;
SIGNAL \somaConstante|Add0~74\ : std_logic;
SIGNAL \somaConstante|Add0~77_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[21]~15_combout\ : std_logic;
SIGNAL \somaConstante|Add0~78\ : std_logic;
SIGNAL \somaConstante|Add0~81_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[22]~16_combout\ : std_logic;
SIGNAL \PC|DOUT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~82\ : std_logic;
SIGNAL \somaConstante|Add0~85_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[23]~17_combout\ : std_logic;
SIGNAL \somaConstante|Add0~86\ : std_logic;
SIGNAL \somaConstante|Add0~89_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[24]~18_combout\ : std_logic;
SIGNAL \somaConstante|Add0~90\ : std_logic;
SIGNAL \somaConstante|Add0~93_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[25]~19_combout\ : std_logic;
SIGNAL \somaConstante|Add0~94\ : std_logic;
SIGNAL \somaConstante|Add0~97_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[26]~20_combout\ : std_logic;
SIGNAL \PC|DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~98\ : std_logic;
SIGNAL \somaConstante|Add0~101_sumout\ : std_logic;
SIGNAL \MUX_PC|saida_MUX[27]~21_combout\ : std_logic;
SIGNAL \PC|DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~102\ : std_logic;
SIGNAL \somaConstante|Add0~105_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~106\ : std_logic;
SIGNAL \somaConstante|Add0~109_sumout\ : std_logic;
SIGNAL \somaConstante|Add0~110\ : std_logic;
SIGNAL \somaConstante|Add0~113_sumout\ : std_logic;
SIGNAL \PC|DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \somaConstante|Add0~114\ : std_logic;
SIGNAL \somaConstante|Add0~117_sumout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC|ALT_INV_DOUT[31]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[28]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[27]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[23]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[19]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[15]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(30 DOWNTO 2);
SIGNAL \somaConstante|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaConstante|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ULA_OP_Sim <= ww_ULA_OP_Sim;
PC_Out_Sim <= ww_PC_Out_Sim;
Instrucao_sim <= ww_Instrucao_sim;
ULA_OUT_Sim <= ww_ULA_OUT_Sim;
endReg1_Sim <= ww_endReg1_Sim;
endReg2_Sim <= ww_endReg2_Sim;
endReg3_Sim <= ww_endReg3_Sim;
dado_lido_reg_1_Sim <= ww_dado_lido_reg_1_Sim;
dado_lido_reg_2_Sim <= ww_dado_lido_reg_2_Sim;
dado_lido_ram_Sim <= ww_dado_lido_ram_Sim;
Pontos_Controle_Sim <= ww_Pontos_Controle_Sim;
flag_Sim <= ww_flag_Sim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\PC|ALT_INV_DOUT[31]~DUPLICATE_q\ <= NOT \PC|DOUT[31]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[28]~DUPLICATE_q\ <= NOT \PC|DOUT[28]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[27]~DUPLICATE_q\ <= NOT \PC|DOUT[27]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[23]~DUPLICATE_q\ <= NOT \PC|DOUT[23]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[19]~DUPLICATE_q\ <= NOT \PC|DOUT[19]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[15]~DUPLICATE_q\ <= NOT \PC|DOUT[15]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \PC|DOUT[7]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \PC|DOUT[6]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \PC|DOUT[4]~DUPLICATE_q\;
\PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \PC|DOUT[3]~DUPLICATE_q\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\PC|ALT_INV_DOUT\(30) <= NOT \PC|DOUT\(30);
\PC|ALT_INV_DOUT\(29) <= NOT \PC|DOUT\(29);
\PC|ALT_INV_DOUT\(26) <= NOT \PC|DOUT\(26);
\PC|ALT_INV_DOUT\(25) <= NOT \PC|DOUT\(25);
\PC|ALT_INV_DOUT\(24) <= NOT \PC|DOUT\(24);
\PC|ALT_INV_DOUT\(22) <= NOT \PC|DOUT\(22);
\PC|ALT_INV_DOUT\(21) <= NOT \PC|DOUT\(21);
\PC|ALT_INV_DOUT\(20) <= NOT \PC|DOUT\(20);
\PC|ALT_INV_DOUT\(18) <= NOT \PC|DOUT\(18);
\PC|ALT_INV_DOUT\(17) <= NOT \PC|DOUT\(17);
\PC|ALT_INV_DOUT\(16) <= NOT \PC|DOUT\(16);
\PC|ALT_INV_DOUT\(14) <= NOT \PC|DOUT\(14);
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
\somaConstante|ALT_INV_Add0~101_sumout\ <= NOT \somaConstante|Add0~101_sumout\;
\somaConstante|ALT_INV_Add0~97_sumout\ <= NOT \somaConstante|Add0~97_sumout\;
\somaConstante|ALT_INV_Add0~93_sumout\ <= NOT \somaConstante|Add0~93_sumout\;
\somaConstante|ALT_INV_Add0~89_sumout\ <= NOT \somaConstante|Add0~89_sumout\;
\somaConstante|ALT_INV_Add0~85_sumout\ <= NOT \somaConstante|Add0~85_sumout\;
\somaConstante|ALT_INV_Add0~81_sumout\ <= NOT \somaConstante|Add0~81_sumout\;
\somaConstante|ALT_INV_Add0~77_sumout\ <= NOT \somaConstante|Add0~77_sumout\;
\somaConstante|ALT_INV_Add0~73_sumout\ <= NOT \somaConstante|Add0~73_sumout\;
\somaConstante|ALT_INV_Add0~69_sumout\ <= NOT \somaConstante|Add0~69_sumout\;
\somaConstante|ALT_INV_Add0~65_sumout\ <= NOT \somaConstante|Add0~65_sumout\;
\somaConstante|ALT_INV_Add0~61_sumout\ <= NOT \somaConstante|Add0~61_sumout\;
\somaConstante|ALT_INV_Add0~57_sumout\ <= NOT \somaConstante|Add0~57_sumout\;
\somaConstante|ALT_INV_Add0~53_sumout\ <= NOT \somaConstante|Add0~53_sumout\;
\somaConstante|ALT_INV_Add0~49_sumout\ <= NOT \somaConstante|Add0~49_sumout\;
\somaConstante|ALT_INV_Add0~45_sumout\ <= NOT \somaConstante|Add0~45_sumout\;
\somaConstante|ALT_INV_Add0~41_sumout\ <= NOT \somaConstante|Add0~41_sumout\;
\somaConstante|ALT_INV_Add0~37_sumout\ <= NOT \somaConstante|Add0~37_sumout\;
\somaConstante|ALT_INV_Add0~33_sumout\ <= NOT \somaConstante|Add0~33_sumout\;
\somaConstante|ALT_INV_Add0~29_sumout\ <= NOT \somaConstante|Add0~29_sumout\;
\somaConstante|ALT_INV_Add0~25_sumout\ <= NOT \somaConstante|Add0~25_sumout\;
\somaConstante|ALT_INV_Add0~13_sumout\ <= NOT \somaConstante|Add0~13_sumout\;
\somaConstante|ALT_INV_Add0~1_sumout\ <= NOT \somaConstante|Add0~1_sumout\;

-- Location: IOOBUF_X34_Y0_N53
\dado_lido_ram_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(0));

-- Location: IOOBUF_X29_Y0_N2
\dado_lido_ram_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(1));

-- Location: IOOBUF_X29_Y0_N19
\dado_lido_ram_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(2));

-- Location: IOOBUF_X36_Y45_N19
\dado_lido_ram_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(3));

-- Location: IOOBUF_X54_Y17_N39
\dado_lido_ram_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(4));

-- Location: IOOBUF_X20_Y45_N53
\dado_lido_ram_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(5));

-- Location: IOOBUF_X54_Y19_N39
\dado_lido_ram_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(6));

-- Location: IOOBUF_X54_Y19_N5
\dado_lido_ram_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(7));

-- Location: IOOBUF_X43_Y0_N36
\dado_lido_ram_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(8));

-- Location: IOOBUF_X34_Y0_N36
\dado_lido_ram_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(9));

-- Location: IOOBUF_X40_Y45_N59
\dado_lido_ram_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(10));

-- Location: IOOBUF_X12_Y45_N36
\dado_lido_ram_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(11));

-- Location: IOOBUF_X43_Y45_N2
\dado_lido_ram_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(12));

-- Location: IOOBUF_X40_Y0_N93
\dado_lido_ram_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(13));

-- Location: IOOBUF_X48_Y45_N19
\dado_lido_ram_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(14));

-- Location: IOOBUF_X23_Y0_N42
\dado_lido_ram_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(15));

-- Location: IOOBUF_X20_Y45_N36
\dado_lido_ram_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(16));

-- Location: IOOBUF_X38_Y0_N53
\dado_lido_ram_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(17));

-- Location: IOOBUF_X46_Y45_N93
\dado_lido_ram_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(18));

-- Location: IOOBUF_X0_Y21_N39
\dado_lido_ram_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(19));

-- Location: IOOBUF_X40_Y0_N76
\dado_lido_ram_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(20));

-- Location: IOOBUF_X54_Y21_N22
\dado_lido_ram_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(21));

-- Location: IOOBUF_X10_Y45_N19
\dado_lido_ram_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(22));

-- Location: IOOBUF_X48_Y45_N2
\dado_lido_ram_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(23));

-- Location: IOOBUF_X34_Y0_N19
\dado_lido_ram_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(24));

-- Location: IOOBUF_X24_Y0_N19
\dado_lido_ram_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(25));

-- Location: IOOBUF_X54_Y20_N22
\dado_lido_ram_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(26));

-- Location: IOOBUF_X51_Y0_N53
\dado_lido_ram_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(27));

-- Location: IOOBUF_X25_Y0_N36
\dado_lido_ram_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(28));

-- Location: IOOBUF_X0_Y18_N79
\dado_lido_ram_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(29));

-- Location: IOOBUF_X54_Y14_N62
\dado_lido_ram_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(30));

-- Location: IOOBUF_X29_Y0_N53
\dado_lido_ram_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_dado_lido_ram_Sim(31));

-- Location: IOOBUF_X16_Y45_N76
\ULA_OP_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OP_Sim(0));

-- Location: IOOBUF_X51_Y0_N2
\ULA_OP_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OP_Sim(1));

-- Location: IOOBUF_X42_Y45_N2
\ULA_OP_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OP_Sim(2));

-- Location: IOOBUF_X44_Y0_N36
\PC_Out_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(0));

-- Location: IOOBUF_X52_Y0_N2
\PC_Out_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(1));

-- Location: IOOBUF_X18_Y0_N2
\PC_Out_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(2));

-- Location: IOOBUF_X16_Y0_N42
\PC_Out_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(3));

-- Location: IOOBUF_X18_Y0_N53
\PC_Out_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(4));

-- Location: IOOBUF_X16_Y0_N93
\PC_Out_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(5));

-- Location: IOOBUF_X16_Y0_N76
\PC_Out_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(6));

-- Location: IOOBUF_X16_Y0_N59
\PC_Out_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(7));

-- Location: IOOBUF_X24_Y0_N36
\PC_Out_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(8));

-- Location: IOOBUF_X12_Y0_N36
\PC_Out_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(9),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(9));

-- Location: IOOBUF_X19_Y0_N53
\PC_Out_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(10),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(10));

-- Location: IOOBUF_X19_Y0_N19
\PC_Out_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(11),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(11));

-- Location: IOOBUF_X18_Y0_N36
\PC_Out_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(12),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(12));

-- Location: IOOBUF_X11_Y0_N36
\PC_Out_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(13),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(13));

-- Location: IOOBUF_X14_Y0_N2
\PC_Out_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(14),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(14));

-- Location: IOOBUF_X18_Y0_N19
\PC_Out_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(15),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(15));

-- Location: IOOBUF_X14_Y0_N19
\PC_Out_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(16),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(16));

-- Location: IOOBUF_X11_Y0_N19
\PC_Out_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(17),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(17));

-- Location: IOOBUF_X14_Y0_N53
\PC_Out_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(18),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(18));

-- Location: IOOBUF_X19_Y0_N36
\PC_Out_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(19),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(19));

-- Location: IOOBUF_X11_Y0_N53
\PC_Out_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(20),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(20));

-- Location: IOOBUF_X14_Y0_N36
\PC_Out_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(21),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(21));

-- Location: IOOBUF_X11_Y0_N2
\PC_Out_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(22),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(22));

-- Location: IOOBUF_X12_Y0_N53
\PC_Out_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(23),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(23));

-- Location: IOOBUF_X12_Y0_N19
\PC_Out_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(24),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(24));

-- Location: IOOBUF_X10_Y0_N59
\PC_Out_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(25),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(25));

-- Location: IOOBUF_X19_Y0_N2
\PC_Out_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(26),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(26));

-- Location: IOOBUF_X10_Y0_N42
\PC_Out_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(27),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(27));

-- Location: IOOBUF_X10_Y0_N76
\PC_Out_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(28),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(28));

-- Location: IOOBUF_X10_Y0_N93
\PC_Out_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(29),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(29));

-- Location: IOOBUF_X12_Y0_N2
\PC_Out_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(30),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(30));

-- Location: IOOBUF_X23_Y0_N93
\PC_Out_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(31),
	devoe => ww_devoe,
	o => ww_PC_Out_Sim(31));

-- Location: IOOBUF_X33_Y0_N93
\Instrucao_sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(0));

-- Location: IOOBUF_X32_Y45_N76
\Instrucao_sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(1));

-- Location: IOOBUF_X20_Y45_N2
\Instrucao_sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(2));

-- Location: IOOBUF_X22_Y0_N53
\Instrucao_sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(3));

-- Location: IOOBUF_X52_Y0_N36
\Instrucao_sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(4));

-- Location: IOOBUF_X50_Y45_N53
\Instrucao_sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(5));

-- Location: IOOBUF_X50_Y0_N2
\Instrucao_sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(6));

-- Location: IOOBUF_X0_Y20_N22
\Instrucao_sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(7));

-- Location: IOOBUF_X38_Y45_N53
\Instrucao_sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(8));

-- Location: IOOBUF_X33_Y0_N59
\Instrucao_sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(9));

-- Location: IOOBUF_X50_Y0_N36
\Instrucao_sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(10));

-- Location: IOOBUF_X20_Y45_N19
\Instrucao_sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(11));

-- Location: IOOBUF_X48_Y0_N42
\Instrucao_sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(12));

-- Location: IOOBUF_X40_Y45_N76
\Instrucao_sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(13));

-- Location: IOOBUF_X52_Y45_N2
\Instrucao_sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(14));

-- Location: IOOBUF_X43_Y0_N19
\Instrucao_sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(15));

-- Location: IOOBUF_X50_Y45_N36
\Instrucao_sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(16));

-- Location: IOOBUF_X44_Y0_N53
\Instrucao_sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(17));

-- Location: IOOBUF_X0_Y18_N45
\Instrucao_sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(18));

-- Location: IOOBUF_X54_Y21_N56
\Instrucao_sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(19));

-- Location: IOOBUF_X0_Y19_N22
\Instrucao_sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(20));

-- Location: IOOBUF_X44_Y45_N19
\Instrucao_sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(21));

-- Location: IOOBUF_X24_Y0_N53
\Instrucao_sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(22));

-- Location: IOOBUF_X22_Y45_N2
\Instrucao_sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(23));

-- Location: IOOBUF_X10_Y45_N53
\Instrucao_sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(24));

-- Location: IOOBUF_X54_Y17_N56
\Instrucao_sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(25));

-- Location: IOOBUF_X34_Y0_N2
\Instrucao_sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(26));

-- Location: IOOBUF_X22_Y0_N2
\Instrucao_sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(27));

-- Location: IOOBUF_X54_Y15_N39
\Instrucao_sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(28));

-- Location: IOOBUF_X18_Y45_N2
\Instrucao_sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(29));

-- Location: IOOBUF_X51_Y0_N19
\Instrucao_sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(30));

-- Location: IOOBUF_X50_Y0_N19
\Instrucao_sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Instrucao_sim(31));

-- Location: IOOBUF_X10_Y45_N36
\ULA_OUT_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(0));

-- Location: IOOBUF_X54_Y20_N39
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

-- Location: IOOBUF_X12_Y45_N19
\ULA_OUT_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ULA_OUT_Sim(2));

-- Location: IOOBUF_X0_Y20_N5
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

-- Location: IOOBUF_X52_Y45_N36
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

-- Location: IOOBUF_X18_Y45_N36
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X8_Y45_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X48_Y45_N53
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X44_Y45_N53
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X50_Y45_N19
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X43_Y45_N53
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

-- Location: IOOBUF_X8_Y45_N42
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y45_N36
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

-- Location: IOOBUF_X46_Y45_N76
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X54_Y21_N39
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X38_Y45_N36
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

-- Location: IOOBUF_X8_Y45_N93
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

-- Location: IOOBUF_X14_Y45_N53
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

-- Location: IOOBUF_X36_Y0_N36
\endReg1_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg1_Sim(0));

-- Location: IOOBUF_X12_Y45_N2
\endReg1_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg1_Sim(1));

-- Location: IOOBUF_X54_Y16_N39
\endReg1_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg1_Sim(2));

-- Location: IOOBUF_X25_Y0_N2
\endReg1_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg1_Sim(3));

-- Location: IOOBUF_X54_Y20_N5
\endReg1_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg1_Sim(4));

-- Location: IOOBUF_X54_Y14_N79
\endReg2_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg2_Sim(0));

-- Location: IOOBUF_X23_Y0_N59
\endReg2_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg2_Sim(1));

-- Location: IOOBUF_X54_Y17_N22
\endReg2_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg2_Sim(2));

-- Location: IOOBUF_X54_Y17_N5
\endReg2_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg2_Sim(3));

-- Location: IOOBUF_X43_Y0_N2
\endReg2_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg2_Sim(4));

-- Location: IOOBUF_X46_Y0_N36
\endReg3_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg3_Sim(0));

-- Location: IOOBUF_X48_Y45_N36
\endReg3_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg3_Sim(1));

-- Location: IOOBUF_X0_Y21_N56
\endReg3_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg3_Sim(2));

-- Location: IOOBUF_X34_Y45_N2
\endReg3_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg3_Sim(3));

-- Location: IOOBUF_X18_Y45_N53
\endReg3_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_endReg3_Sim(4));

-- Location: IOOBUF_X54_Y18_N96
\dado_lido_reg_1_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(0));

-- Location: IOOBUF_X12_Y45_N53
\dado_lido_reg_1_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(1));

-- Location: IOOBUF_X44_Y45_N2
\dado_lido_reg_1_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(2));

-- Location: IOOBUF_X0_Y21_N5
\dado_lido_reg_1_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(3));

-- Location: IOOBUF_X10_Y45_N2
\dado_lido_reg_1_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(4));

-- Location: IOOBUF_X54_Y20_N56
\dado_lido_reg_1_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(5));

-- Location: IOOBUF_X52_Y0_N53
\dado_lido_reg_1_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(6));

-- Location: IOOBUF_X44_Y0_N19
\dado_lido_reg_1_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(7));

-- Location: IOOBUF_X36_Y45_N53
\dado_lido_reg_1_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(8));

-- Location: IOOBUF_X25_Y0_N53
\dado_lido_reg_1_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(9));

-- Location: IOOBUF_X14_Y45_N36
\dado_lido_reg_1_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(10));

-- Location: IOOBUF_X36_Y0_N19
\dado_lido_reg_1_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(11));

-- Location: IOOBUF_X44_Y45_N36
\dado_lido_reg_1_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(12));

-- Location: IOOBUF_X16_Y45_N42
\dado_lido_reg_1_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(13));

-- Location: IOOBUF_X48_Y0_N76
\dado_lido_reg_1_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(14));

-- Location: IOOBUF_X54_Y16_N22
\dado_lido_reg_1_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(15));

-- Location: IOOBUF_X54_Y18_N62
\dado_lido_reg_1_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(16));

-- Location: IOOBUF_X54_Y15_N22
\dado_lido_reg_1_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(17));

-- Location: IOOBUF_X34_Y45_N53
\dado_lido_reg_1_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(18));

-- Location: IOOBUF_X36_Y0_N53
\dado_lido_reg_1_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(19));

-- Location: IOOBUF_X54_Y18_N45
\dado_lido_reg_1_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(20));

-- Location: IOOBUF_X0_Y18_N96
\dado_lido_reg_1_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(21));

-- Location: IOOBUF_X46_Y45_N59
\dado_lido_reg_1_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(22));

-- Location: IOOBUF_X8_Y45_N59
\dado_lido_reg_1_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(23));

-- Location: IOOBUF_X0_Y20_N39
\dado_lido_reg_1_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(24));

-- Location: IOOBUF_X0_Y20_N56
\dado_lido_reg_1_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(25));

-- Location: IOOBUF_X36_Y45_N36
\dado_lido_reg_1_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(26));

-- Location: IOOBUF_X43_Y45_N19
\dado_lido_reg_1_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(27));

-- Location: IOOBUF_X50_Y45_N2
\dado_lido_reg_1_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(28));

-- Location: IOOBUF_X42_Y45_N53
\dado_lido_reg_1_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(29));

-- Location: IOOBUF_X32_Y45_N93
\dado_lido_reg_1_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(30));

-- Location: IOOBUF_X54_Y14_N96
\dado_lido_reg_1_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_1_Sim(31));

-- Location: IOOBUF_X24_Y0_N2
\dado_lido_reg_2_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(0));

-- Location: IOOBUF_X40_Y0_N42
\dado_lido_reg_2_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(1));

-- Location: IOOBUF_X22_Y0_N19
\dado_lido_reg_2_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(2));

-- Location: IOOBUF_X52_Y45_N19
\dado_lido_reg_2_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(3));

-- Location: IOOBUF_X38_Y0_N19
\dado_lido_reg_2_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(4));

-- Location: IOOBUF_X29_Y0_N36
\dado_lido_reg_2_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(5));

-- Location: IOOBUF_X22_Y45_N36
\dado_lido_reg_2_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(6));

-- Location: IOOBUF_X32_Y45_N59
\dado_lido_reg_2_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(7));

-- Location: IOOBUF_X38_Y45_N2
\dado_lido_reg_2_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(8));

-- Location: IOOBUF_X18_Y45_N19
\dado_lido_reg_2_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(9));

-- Location: IOOBUF_X0_Y21_N22
\dado_lido_reg_2_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(10));

-- Location: IOOBUF_X48_Y0_N59
\dado_lido_reg_2_Sim[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(11));

-- Location: IOOBUF_X54_Y16_N5
\dado_lido_reg_2_Sim[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(12));

-- Location: IOOBUF_X52_Y45_N53
\dado_lido_reg_2_Sim[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(13));

-- Location: IOOBUF_X42_Y45_N19
\dado_lido_reg_2_Sim[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(14));

-- Location: IOOBUF_X33_Y0_N76
\dado_lido_reg_2_Sim[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(15));

-- Location: IOOBUF_X22_Y45_N53
\dado_lido_reg_2_Sim[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(16));

-- Location: IOOBUF_X0_Y19_N5
\dado_lido_reg_2_Sim[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(17));

-- Location: IOOBUF_X14_Y45_N2
\dado_lido_reg_2_Sim[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(18));

-- Location: IOOBUF_X54_Y16_N56
\dado_lido_reg_2_Sim[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(19));

-- Location: IOOBUF_X0_Y18_N62
\dado_lido_reg_2_Sim[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(20));

-- Location: IOOBUF_X34_Y45_N36
\dado_lido_reg_2_Sim[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(21));

-- Location: IOOBUF_X0_Y19_N56
\dado_lido_reg_2_Sim[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(22));

-- Location: IOOBUF_X54_Y15_N5
\dado_lido_reg_2_Sim[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(23));

-- Location: IOOBUF_X46_Y0_N53
\dado_lido_reg_2_Sim[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(24));

-- Location: IOOBUF_X54_Y14_N45
\dado_lido_reg_2_Sim[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(25));

-- Location: IOOBUF_X54_Y21_N5
\dado_lido_reg_2_Sim[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(26));

-- Location: IOOBUF_X54_Y15_N56
\dado_lido_reg_2_Sim[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(27));

-- Location: IOOBUF_X40_Y45_N42
\dado_lido_reg_2_Sim[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(28));

-- Location: IOOBUF_X16_Y45_N59
\dado_lido_reg_2_Sim[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(29));

-- Location: IOOBUF_X54_Y19_N22
\dado_lido_reg_2_Sim[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(30));

-- Location: IOOBUF_X50_Y0_N53
\dado_lido_reg_2_Sim[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dado_lido_reg_2_Sim(31));

-- Location: IOOBUF_X36_Y45_N2
\Pontos_Controle_Sim[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(0));

-- Location: IOOBUF_X51_Y0_N36
\Pontos_Controle_Sim[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(1));

-- Location: IOOBUF_X14_Y45_N19
\Pontos_Controle_Sim[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(2));

-- Location: IOOBUF_X34_Y45_N19
\Pontos_Controle_Sim[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(3));

-- Location: IOOBUF_X44_Y0_N2
\Pontos_Controle_Sim[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(4));

-- Location: IOOBUF_X16_Y45_N93
\Pontos_Controle_Sim[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(5));

-- Location: IOOBUF_X42_Y45_N36
\Pontos_Controle_Sim[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(6));

-- Location: IOOBUF_X46_Y0_N2
\Pontos_Controle_Sim[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(7));

-- Location: IOOBUF_X25_Y0_N19
\Pontos_Controle_Sim[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(8));

-- Location: IOOBUF_X22_Y45_N19
\Pontos_Controle_Sim[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(9));

-- Location: IOOBUF_X22_Y0_N36
\Pontos_Controle_Sim[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Pontos_Controle_Sim(10));

-- Location: IOOBUF_X38_Y0_N2
\flag_Sim~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_flag_Sim);

-- Location: IOIBUF_X38_Y45_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G13
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

-- Location: FF_X13_Y4_N14
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

-- Location: MLABCELL_X13_Y4_N0
\somaConstante|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~1_sumout\ = SUM(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \somaConstante|Add0~2\ = CARRY(( \PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \somaConstante|Add0~1_sumout\,
	cout => \somaConstante|Add0~2\);

-- Location: MLABCELL_X13_Y4_N3
\somaConstante|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~5_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaConstante|Add0~2\ ))
-- \somaConstante|Add0~6\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaConstante|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaConstante|Add0~2\,
	sumout => \somaConstante|Add0~5_sumout\,
	cout => \somaConstante|Add0~6\);

-- Location: FF_X13_Y4_N5
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

-- Location: MLABCELL_X13_Y4_N6
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

-- Location: FF_X13_Y4_N7
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

-- Location: MLABCELL_X13_Y4_N9
\somaConstante|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~13_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))
-- \somaConstante|Add0~14\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaConstante|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaConstante|Add0~10\,
	sumout => \somaConstante|Add0~13_sumout\,
	cout => \somaConstante|Add0~14\);

-- Location: LABCELL_X14_Y4_N30
\MUX_PC|saida_MUX[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[5]~1_combout\ = ( \somaConstante|Add0~13_sumout\ & ( !\ROM|memROM~0_combout\ ) ) # ( !\somaConstante|Add0~13_sumout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~13_sumout\,
	combout => \MUX_PC|saida_MUX[5]~1_combout\);

-- Location: FF_X13_Y4_N2
\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

-- Location: MLABCELL_X13_Y4_N12
\somaConstante|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~17_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaConstante|Add0~14\ ))
-- \somaConstante|Add0~18\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaConstante|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|ALT_INV_DOUT\(6),
	cin => \somaConstante|Add0~14\,
	sumout => \somaConstante|Add0~17_sumout\,
	cout => \somaConstante|Add0~18\);

-- Location: FF_X13_Y4_N13
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

-- Location: FF_X13_Y4_N17
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

-- Location: MLABCELL_X13_Y4_N15
\somaConstante|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~18\ ))
-- \somaConstante|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaConstante|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(7),
	cin => \somaConstante|Add0~18\,
	sumout => \somaConstante|Add0~21_sumout\,
	cout => \somaConstante|Add0~22\);

-- Location: FF_X13_Y4_N16
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

-- Location: FF_X13_Y4_N4
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

-- Location: FF_X13_Y4_N8
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

-- Location: LABCELL_X14_Y4_N12
\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\PC|DOUT[4]~DUPLICATE_q\ & ( !\PC|DOUT\(5) & ( (!\PC|DOUT[6]~DUPLICATE_q\ & (!\PC|DOUT\(2) & (!\PC|DOUT[7]~DUPLICATE_q\ & !\PC|DOUT[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~0_combout\);

-- Location: LABCELL_X14_Y4_N27
\MUX_PC|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[2]~0_combout\ = ( \somaConstante|Add0~1_sumout\ & ( !\ROM|memROM~0_combout\ ) ) # ( !\somaConstante|Add0~1_sumout\ & ( \ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~1_sumout\,
	combout => \MUX_PC|saida_MUX[2]~0_combout\);

-- Location: FF_X13_Y4_N44
\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

-- Location: MLABCELL_X13_Y4_N18
\somaConstante|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~25_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~22\ ))
-- \somaConstante|Add0~26\ = CARRY(( \PC|DOUT\(8) ) + ( GND ) + ( \somaConstante|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaConstante|Add0~22\,
	sumout => \somaConstante|Add0~25_sumout\,
	cout => \somaConstante|Add0~26\);

-- Location: LABCELL_X14_Y4_N24
\MUX_PC|saida_MUX[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[8]~2_combout\ = ( \somaConstante|Add0~25_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~25_sumout\,
	combout => \MUX_PC|saida_MUX[8]~2_combout\);

-- Location: FF_X13_Y4_N23
\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[8]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

-- Location: MLABCELL_X13_Y4_N21
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

-- Location: LABCELL_X14_Y4_N18
\MUX_PC|saida_MUX[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[9]~3_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~29_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[9]~3_combout\);

-- Location: FF_X13_Y4_N59
\PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \MUX_PC|saida_MUX[9]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(9));

-- Location: MLABCELL_X13_Y4_N24
\somaConstante|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~33_sumout\ = SUM(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~30\ ))
-- \somaConstante|Add0~34\ = CARRY(( \PC|DOUT\(10) ) + ( GND ) + ( \somaConstante|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(10),
	cin => \somaConstante|Add0~30\,
	sumout => \somaConstante|Add0~33_sumout\,
	cout => \somaConstante|Add0~34\);

-- Location: LABCELL_X14_Y4_N9
\MUX_PC|saida_MUX[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[10]~4_combout\ = ( \somaConstante|Add0~33_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \somaConstante|ALT_INV_Add0~33_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[10]~4_combout\);

-- Location: FF_X14_Y4_N11
\PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(10));

-- Location: MLABCELL_X13_Y4_N27
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

-- Location: LABCELL_X14_Y4_N54
\MUX_PC|saida_MUX[11]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[11]~5_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~37_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[11]~5_combout\);

-- Location: FF_X14_Y4_N56
\PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(11));

-- Location: MLABCELL_X13_Y4_N30
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

-- Location: LABCELL_X14_Y4_N51
\MUX_PC|saida_MUX[12]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[12]~6_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~41_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[12]~6_combout\);

-- Location: FF_X14_Y4_N53
\PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[12]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(12));

-- Location: MLABCELL_X13_Y4_N33
\somaConstante|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~45_sumout\ = SUM(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~42\ ))
-- \somaConstante|Add0~46\ = CARRY(( \PC|DOUT\(13) ) + ( GND ) + ( \somaConstante|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(13),
	cin => \somaConstante|Add0~42\,
	sumout => \somaConstante|Add0~45_sumout\,
	cout => \somaConstante|Add0~46\);

-- Location: LABCELL_X14_Y4_N42
\MUX_PC|saida_MUX[13]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[13]~7_combout\ = ( \somaConstante|Add0~45_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \somaConstante|ALT_INV_Add0~45_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[13]~7_combout\);

-- Location: FF_X14_Y4_N44
\PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[13]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(13));

-- Location: MLABCELL_X13_Y4_N36
\somaConstante|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~49_sumout\ = SUM(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~46\ ))
-- \somaConstante|Add0~50\ = CARRY(( \PC|DOUT\(14) ) + ( GND ) + ( \somaConstante|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(14),
	cin => \somaConstante|Add0~46\,
	sumout => \somaConstante|Add0~49_sumout\,
	cout => \somaConstante|Add0~50\);

-- Location: LABCELL_X14_Y4_N39
\MUX_PC|saida_MUX[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[14]~8_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~49_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[14]~8_combout\);

-- Location: FF_X14_Y4_N41
\PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[14]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(14));

-- Location: FF_X14_Y4_N2
\PC|DOUT[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[15]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y4_N39
\somaConstante|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~53_sumout\ = SUM(( \PC|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))
-- \somaConstante|Add0~54\ = CARRY(( \PC|DOUT[15]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[15]~DUPLICATE_q\,
	cin => \somaConstante|Add0~50\,
	sumout => \somaConstante|Add0~53_sumout\,
	cout => \somaConstante|Add0~54\);

-- Location: LABCELL_X14_Y4_N0
\MUX_PC|saida_MUX[15]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[15]~9_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~53_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[15]~9_combout\);

-- Location: FF_X14_Y4_N1
\PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[15]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(15));

-- Location: MLABCELL_X13_Y4_N42
\somaConstante|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~57_sumout\ = SUM(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~54\ ))
-- \somaConstante|Add0~58\ = CARRY(( \PC|DOUT\(16) ) + ( GND ) + ( \somaConstante|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(16),
	cin => \somaConstante|Add0~54\,
	sumout => \somaConstante|Add0~57_sumout\,
	cout => \somaConstante|Add0~58\);

-- Location: LABCELL_X14_Y4_N3
\MUX_PC|saida_MUX[16]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[16]~10_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~57_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[16]~10_combout\);

-- Location: FF_X14_Y4_N5
\PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(16));

-- Location: MLABCELL_X13_Y4_N45
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

-- Location: LABCELL_X14_Y4_N36
\MUX_PC|saida_MUX[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[17]~11_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~61_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[17]~11_combout\);

-- Location: FF_X14_Y4_N38
\PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[17]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(17));

-- Location: MLABCELL_X13_Y4_N48
\somaConstante|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~65_sumout\ = SUM(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~62\ ))
-- \somaConstante|Add0~66\ = CARRY(( \PC|DOUT\(18) ) + ( GND ) + ( \somaConstante|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(18),
	cin => \somaConstante|Add0~62\,
	sumout => \somaConstante|Add0~65_sumout\,
	cout => \somaConstante|Add0~66\);

-- Location: LABCELL_X14_Y4_N33
\MUX_PC|saida_MUX[18]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[18]~12_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~65_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[18]~12_combout\);

-- Location: FF_X14_Y4_N35
\PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[18]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(18));

-- Location: FF_X14_Y4_N23
\PC|DOUT[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[19]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y4_N51
\somaConstante|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~69_sumout\ = SUM(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~66\ ))
-- \somaConstante|Add0~70\ = CARRY(( \PC|DOUT[19]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[19]~DUPLICATE_q\,
	cin => \somaConstante|Add0~66\,
	sumout => \somaConstante|Add0~69_sumout\,
	cout => \somaConstante|Add0~70\);

-- Location: LABCELL_X14_Y4_N21
\MUX_PC|saida_MUX[19]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[19]~13_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \somaConstante|ALT_INV_Add0~69_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[19]~13_combout\);

-- Location: FF_X14_Y4_N22
\PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(19));

-- Location: MLABCELL_X13_Y4_N54
\somaConstante|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~73_sumout\ = SUM(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~70\ ))
-- \somaConstante|Add0~74\ = CARRY(( \PC|DOUT\(20) ) + ( GND ) + ( \somaConstante|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(20),
	cin => \somaConstante|Add0~70\,
	sumout => \somaConstante|Add0~73_sumout\,
	cout => \somaConstante|Add0~74\);

-- Location: LABCELL_X14_Y4_N48
\MUX_PC|saida_MUX[20]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[20]~14_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \somaConstante|ALT_INV_Add0~73_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[20]~14_combout\);

-- Location: FF_X14_Y4_N50
\PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[20]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(20));

-- Location: MLABCELL_X13_Y4_N57
\somaConstante|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~77_sumout\ = SUM(( \PC|DOUT\(21) ) + ( GND ) + ( \somaConstante|Add0~74\ ))
-- \somaConstante|Add0~78\ = CARRY(( \PC|DOUT\(21) ) + ( GND ) + ( \somaConstante|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(21),
	cin => \somaConstante|Add0~74\,
	sumout => \somaConstante|Add0~77_sumout\,
	cout => \somaConstante|Add0~78\);

-- Location: LABCELL_X14_Y4_N57
\MUX_PC|saida_MUX[21]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[21]~15_combout\ = ( !\ROM|memROM~0_combout\ & ( \somaConstante|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \somaConstante|ALT_INV_Add0~77_sumout\,
	dataf => \ROM|ALT_INV_memROM~0_combout\,
	combout => \MUX_PC|saida_MUX[21]~15_combout\);

-- Location: FF_X14_Y4_N59
\PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[21]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(21));

-- Location: MLABCELL_X13_Y3_N0
\somaConstante|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~81_sumout\ = SUM(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~78\ ))
-- \somaConstante|Add0~82\ = CARRY(( \PC|DOUT\(22) ) + ( GND ) + ( \somaConstante|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(22),
	cin => \somaConstante|Add0~78\,
	sumout => \somaConstante|Add0~81_sumout\,
	cout => \somaConstante|Add0~82\);

-- Location: MLABCELL_X13_Y3_N57
\MUX_PC|saida_MUX[22]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[22]~16_combout\ = (!\ROM|memROM~0_combout\ & \somaConstante|Add0~81_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~81_sumout\,
	combout => \MUX_PC|saida_MUX[22]~16_combout\);

-- Location: FF_X13_Y3_N59
\PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[22]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(22));

-- Location: FF_X13_Y3_N56
\PC|DOUT[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[23]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N3
\somaConstante|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~85_sumout\ = SUM(( \PC|DOUT[23]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~82\ ))
-- \somaConstante|Add0~86\ = CARRY(( \PC|DOUT[23]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[23]~DUPLICATE_q\,
	cin => \somaConstante|Add0~82\,
	sumout => \somaConstante|Add0~85_sumout\,
	cout => \somaConstante|Add0~86\);

-- Location: MLABCELL_X13_Y3_N54
\MUX_PC|saida_MUX[23]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[23]~17_combout\ = (!\ROM|memROM~0_combout\ & \somaConstante|Add0~85_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datad => \somaConstante|ALT_INV_Add0~85_sumout\,
	combout => \MUX_PC|saida_MUX[23]~17_combout\);

-- Location: FF_X13_Y3_N55
\PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[23]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(23));

-- Location: MLABCELL_X13_Y3_N6
\somaConstante|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~89_sumout\ = SUM(( \PC|DOUT\(24) ) + ( GND ) + ( \somaConstante|Add0~86\ ))
-- \somaConstante|Add0~90\ = CARRY(( \PC|DOUT\(24) ) + ( GND ) + ( \somaConstante|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(24),
	cin => \somaConstante|Add0~86\,
	sumout => \somaConstante|Add0~89_sumout\,
	cout => \somaConstante|Add0~90\);

-- Location: MLABCELL_X13_Y3_N51
\MUX_PC|saida_MUX[24]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[24]~18_combout\ = ( \somaConstante|Add0~89_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~89_sumout\,
	combout => \MUX_PC|saida_MUX[24]~18_combout\);

-- Location: FF_X13_Y3_N53
\PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[24]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(24));

-- Location: MLABCELL_X13_Y3_N9
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

-- Location: MLABCELL_X13_Y3_N48
\MUX_PC|saida_MUX[25]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[25]~19_combout\ = ( \somaConstante|Add0~93_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~93_sumout\,
	combout => \MUX_PC|saida_MUX[25]~19_combout\);

-- Location: FF_X13_Y3_N49
\PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[25]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(25));

-- Location: MLABCELL_X13_Y3_N12
\somaConstante|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~97_sumout\ = SUM(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~94\ ))
-- \somaConstante|Add0~98\ = CARRY(( \PC|DOUT\(26) ) + ( GND ) + ( \somaConstante|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT\(26),
	cin => \somaConstante|Add0~94\,
	sumout => \somaConstante|Add0~97_sumout\,
	cout => \somaConstante|Add0~98\);

-- Location: MLABCELL_X13_Y3_N33
\MUX_PC|saida_MUX[26]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[26]~20_combout\ = ( \somaConstante|Add0~97_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~97_sumout\,
	combout => \MUX_PC|saida_MUX[26]~20_combout\);

-- Location: FF_X13_Y3_N35
\PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(26));

-- Location: FF_X13_Y3_N32
\PC|DOUT[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[27]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT[27]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N15
\somaConstante|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~101_sumout\ = SUM(( \PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~98\ ))
-- \somaConstante|Add0~102\ = CARRY(( \PC|DOUT[27]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[27]~DUPLICATE_q\,
	cin => \somaConstante|Add0~98\,
	sumout => \somaConstante|Add0~101_sumout\,
	cout => \somaConstante|Add0~102\);

-- Location: MLABCELL_X13_Y3_N30
\MUX_PC|saida_MUX[27]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_PC|saida_MUX[27]~21_combout\ = ( \somaConstante|Add0~101_sumout\ & ( !\ROM|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \somaConstante|ALT_INV_Add0~101_sumout\,
	combout => \MUX_PC|saida_MUX[27]~21_combout\);

-- Location: FF_X13_Y3_N31
\PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \MUX_PC|saida_MUX[27]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(27));

-- Location: FF_X13_Y3_N20
\PC|DOUT[28]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[28]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N18
\somaConstante|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~105_sumout\ = SUM(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~102\ ))
-- \somaConstante|Add0~106\ = CARRY(( \PC|DOUT[28]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PC|ALT_INV_DOUT[28]~DUPLICATE_q\,
	cin => \somaConstante|Add0~102\,
	sumout => \somaConstante|Add0~105_sumout\,
	cout => \somaConstante|Add0~106\);

-- Location: FF_X13_Y3_N19
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

-- Location: MLABCELL_X13_Y3_N21
\somaConstante|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~109_sumout\ = SUM(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~106\ ))
-- \somaConstante|Add0~110\ = CARRY(( \PC|DOUT\(29) ) + ( GND ) + ( \somaConstante|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(29),
	cin => \somaConstante|Add0~106\,
	sumout => \somaConstante|Add0~109_sumout\,
	cout => \somaConstante|Add0~110\);

-- Location: FF_X13_Y3_N23
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

-- Location: MLABCELL_X13_Y3_N24
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

-- Location: FF_X13_Y3_N26
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

-- Location: FF_X13_Y3_N29
\PC|DOUT[31]~DUPLICATE\ : dffeas
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
	q => \PC|DOUT[31]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y3_N27
\somaConstante|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaConstante|Add0~117_sumout\ = SUM(( \PC|DOUT[31]~DUPLICATE_q\ ) + ( GND ) + ( \somaConstante|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT[31]~DUPLICATE_q\,
	cin => \somaConstante|Add0~114\,
	sumout => \somaConstante|Add0~117_sumout\);

-- Location: FF_X13_Y3_N28
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

-- Location: LABCELL_X52_Y38_N3
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


