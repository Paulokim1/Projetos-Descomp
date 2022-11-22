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

-- DATE "11/18/2022 16:09:55"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
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

ENTITY 	ULAMIPS IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	sel : IN std_logic_vector(1 DOWNTO 0);
	inverteB : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0);
	flagZero : OUT std_logic;
	overflow : OUT std_logic
	);
END ULAMIPS;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[28]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[30]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[31]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flagZero	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inverteB	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[0]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[31]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[31]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[7]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[8]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[9]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[9]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[11]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[12]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[14]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[15]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[16]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[17]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[17]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[18]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[18]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[19]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[19]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[20]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[20]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[21]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[22]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[22]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[23]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[23]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[24]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[24]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[25]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[25]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[26]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[26]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[27]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[28]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[28]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[29]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[30]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[30]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULAMIPS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inverteB : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flagZero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \inverteB~input_o\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA25|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \ULA10|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \ULA5|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \ULA5|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \ULA2|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA5|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \ULA7|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA10|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \ULA10|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \ULA15|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \ULA17|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \ULA20|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \ULA20|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \ULA22|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \ULA27|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \ULA27|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \ULA30|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA30|somador_1bit|c_out~1_combout\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|somador_1bit|c_out~2_combout\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \ULA32|overflow~0_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \ULA1|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA2|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA4|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA5|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA7|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA9|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA9|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA9|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA10|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA12|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA14|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA14|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA15|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA17|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA19|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA19|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA20|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA22|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA24|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA24|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA25|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA27|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador_1bit|c_out~0_combout\ : std_logic;
SIGNAL \ULA29|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|MUX_FINAL|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA29|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA30|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|somador_1bit|c_out~combout\ : std_logic;
SIGNAL \ULA32|MUX_FINAL|saida_MUX~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverteB~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA32|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA31|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA29|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA29|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA28|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA26|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA24|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA24|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA23|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA21|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA19|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA19|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA18|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA16|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA14|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA14|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA13|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA11|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA9|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA9|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA9|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA8|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA6|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA4|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA3|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA1|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA32|ALT_INV_overflow~0_combout\ : std_logic;
SIGNAL \ULA31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA30|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA30|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA25|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA20|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA20|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA15|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA10|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA10|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|somador_1bit|ALT_INV_c_out~2_combout\ : std_logic;
SIGNAL \ULA5|somador_1bit|ALT_INV_c_out~1_combout\ : std_logic;
SIGNAL \ULA5|somador_1bit|ALT_INV_c_out~0_combout\ : std_logic;
SIGNAL \ULA4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|somador_1bit|ALT_INV_c_out~combout\ : std_logic;
SIGNAL \ULA32|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_sel <= sel;
ww_inverteB <= inverteB;
saida <= ww_saida;
flagZero <= ww_flagZero;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_inverteB~input_o\ <= NOT \inverteB~input_o\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ULA32|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA32|MUX_FINAL|saida_MUX~0_combout\;
\ULA31|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA31|somador_1bit|c_out~combout\;
\ULA31|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|MUX_FINAL|saida_MUX~0_combout\;
\ULA30|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|MUX_FINAL|saida_MUX~0_combout\;
\ULA29|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA29|somador_1bit|c_out~combout\;
\ULA29|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA29|MUX_FINAL|saida_MUX~1_combout\;
\ULA29|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|MUX_FINAL|saida_MUX~0_combout\;
\ULA29|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA29|somador_1bit|c_out~0_combout\;
\ULA28|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|MUX_FINAL|saida_MUX~0_combout\;
\ULA27|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|MUX_FINAL|saida_MUX~0_combout\;
\ULA26|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA26|somador_1bit|c_out~combout\;
\ULA26|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|MUX_FINAL|saida_MUX~0_combout\;
\ULA25|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|MUX_FINAL|saida_MUX~0_combout\;
\ULA24|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA24|somador_1bit|c_out~combout\;
\ULA24|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA24|MUX_FINAL|saida_MUX~1_combout\;
\ULA24|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|MUX_FINAL|saida_MUX~0_combout\;
\ULA24|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA24|somador_1bit|c_out~0_combout\;
\ULA23|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MUX_FINAL|saida_MUX~0_combout\;
\ULA22|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|MUX_FINAL|saida_MUX~0_combout\;
\ULA21|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA21|somador_1bit|c_out~combout\;
\ULA21|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|MUX_FINAL|saida_MUX~0_combout\;
\ULA20|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|MUX_FINAL|saida_MUX~0_combout\;
\ULA19|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA19|somador_1bit|c_out~combout\;
\ULA19|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA19|MUX_FINAL|saida_MUX~1_combout\;
\ULA19|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|MUX_FINAL|saida_MUX~0_combout\;
\ULA19|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA19|somador_1bit|c_out~0_combout\;
\ULA18|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|MUX_FINAL|saida_MUX~0_combout\;
\ULA17|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|MUX_FINAL|saida_MUX~0_combout\;
\ULA16|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA16|somador_1bit|c_out~combout\;
\ULA16|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MUX_FINAL|saida_MUX~0_combout\;
\ULA15|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|MUX_FINAL|saida_MUX~0_combout\;
\ULA14|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA14|somador_1bit|c_out~combout\;
\ULA14|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA14|MUX_FINAL|saida_MUX~1_combout\;
\ULA14|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|MUX_FINAL|saida_MUX~0_combout\;
\ULA14|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA14|somador_1bit|c_out~0_combout\;
\ULA13|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|MUX_FINAL|saida_MUX~0_combout\;
\ULA12|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|MUX_FINAL|saida_MUX~0_combout\;
\ULA11|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA11|somador_1bit|c_out~combout\;
\ULA11|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|MUX_FINAL|saida_MUX~0_combout\;
\ULA10|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|MUX_FINAL|saida_MUX~0_combout\;
\ULA9|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA9|somador_1bit|c_out~combout\;
\ULA9|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA9|MUX_FINAL|saida_MUX~1_combout\;
\ULA9|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA9|MUX_FINAL|saida_MUX~0_combout\;
\ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA2|MUX_FINAL|saida_MUX~1_combout\;
\ULA9|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA9|somador_1bit|c_out~0_combout\;
\ULA8|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MUX_FINAL|saida_MUX~0_combout\;
\ULA7|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|MUX_FINAL|saida_MUX~0_combout\;
\ULA6|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA6|somador_1bit|c_out~combout\;
\ULA6|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|MUX_FINAL|saida_MUX~0_combout\;
\ULA5|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|MUX_FINAL|saida_MUX~0_combout\;
\ULA4|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA4|somador_1bit|c_out~combout\;
\ULA4|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA4|MUX_FINAL|saida_MUX~0_combout\;
\ULA3|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA3|somador_1bit|c_out~combout\;
\ULA3|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|MUX_FINAL|saida_MUX~0_combout\;
\ULA2|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|MUX_FINAL|saida_MUX~0_combout\;
\ULA1|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA1|somador_1bit|c_out~0_combout\;
\ULA1|MUX_FINAL|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|MUX_FINAL|saida_MUX~0_combout\;
\ULA32|ALT_INV_overflow~0_combout\ <= NOT \ULA32|overflow~0_combout\;
\ULA31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA30|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA30|somador_1bit|c_out~2_combout\;
\ULA30|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA30|somador_1bit|c_out~1_combout\;
\ULA30|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA30|somador_1bit|c_out~0_combout\;
\ULA30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA27|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA27|somador_1bit|c_out~combout\;
\ULA27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA25|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA25|somador_1bit|c_out~2_combout\;
\ULA25|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA25|somador_1bit|c_out~1_combout\;
\ULA25|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA25|somador_1bit|c_out~0_combout\;
\ULA25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA22|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA22|somador_1bit|c_out~combout\;
\ULA22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA20|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA20|somador_1bit|c_out~2_combout\;
\ULA20|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA20|somador_1bit|c_out~1_combout\;
\ULA20|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA20|somador_1bit|c_out~0_combout\;
\ULA20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA17|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA17|somador_1bit|c_out~combout\;
\ULA17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA15|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA15|somador_1bit|c_out~2_combout\;
\ULA15|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA15|somador_1bit|c_out~1_combout\;
\ULA15|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA15|somador_1bit|c_out~0_combout\;
\ULA15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA12|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA12|somador_1bit|c_out~combout\;
\ULA12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA10|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA10|somador_1bit|c_out~2_combout\;
\ULA10|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA10|somador_1bit|c_out~1_combout\;
\ULA10|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA10|somador_1bit|c_out~0_combout\;
\ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA9|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA7|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA7|somador_1bit|c_out~combout\;
\ULA7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA5|somador_1bit|ALT_INV_c_out~2_combout\ <= NOT \ULA5|somador_1bit|c_out~2_combout\;
\ULA5|somador_1bit|ALT_INV_c_out~1_combout\ <= NOT \ULA5|somador_1bit|c_out~1_combout\;
\ULA5|somador_1bit|ALT_INV_c_out~0_combout\ <= NOT \ULA5|somador_1bit|c_out~0_combout\;
\ULA4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA4|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|MUX_INVERTE_B|saida_MUX~0_combout\;
\ULA2|somador_1bit|ALT_INV_c_out~combout\ <= NOT \ULA2|somador_1bit|c_out~combout\;
\ULA32|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\;

-- Location: IOOBUF_X52_Y0_N19
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X44_Y0_N19
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X44_Y0_N36
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X50_Y0_N53
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X44_Y0_N2
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X51_Y0_N53
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X38_Y0_N2
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X24_Y0_N19
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X24_Y0_N2
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|MUX_FINAL|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X16_Y0_N59
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X23_Y0_N93
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X10_Y0_N93
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X14_Y0_N53
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X24_Y0_N36
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|MUX_FINAL|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X16_Y0_N42
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X22_Y0_N53
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOOBUF_X19_Y0_N36
\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(16));

-- Location: IOOBUF_X10_Y0_N42
\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(17));

-- Location: IOOBUF_X10_Y0_N76
\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|MUX_FINAL|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(18));

-- Location: IOOBUF_X25_Y0_N53
\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(19));

-- Location: IOOBUF_X40_Y0_N93
\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(20));

-- Location: IOOBUF_X29_Y0_N36
\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(21));

-- Location: IOOBUF_X33_Y0_N59
\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(22));

-- Location: IOOBUF_X34_Y0_N36
\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|MUX_FINAL|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(23));

-- Location: IOOBUF_X29_Y0_N2
\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(24));

-- Location: IOOBUF_X25_Y0_N36
\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(25));

-- Location: IOOBUF_X50_Y0_N36
\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(26));

-- Location: IOOBUF_X36_Y0_N36
\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(27));

-- Location: IOOBUF_X51_Y0_N2
\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|MUX_FINAL|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(28));

-- Location: IOOBUF_X50_Y0_N2
\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(29));

-- Location: IOOBUF_X43_Y0_N19
\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(30));

-- Location: IOOBUF_X52_Y0_N36
\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA32|MUX_FINAL|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(31));

-- Location: IOOBUF_X50_Y0_N19
\flagZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => ww_flagZero);

-- Location: IOOBUF_X48_Y0_N59
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA32|overflow~0_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X46_Y0_N1
\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N41
\inverteB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverteB,
	o => \inverteB~input_o\);

-- Location: IOIBUF_X48_Y0_N92
\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

-- Location: LABCELL_X31_Y1_N45
\ULA28|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[27]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[27]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X18_Y0_N35
\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

-- Location: LABCELL_X24_Y2_N6
\ULA26|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA26|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X34_Y0_N52
\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

-- Location: IOIBUF_X29_Y0_N52
\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

-- Location: LABCELL_X32_Y1_N0
\ULA23|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[22]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \entradaB[22]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \ULA23|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X33_Y0_N92
\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

-- Location: MLABCELL_X23_Y1_N24
\ULA25|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[24]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \entradaB[24]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaB[24]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \ULA25|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N45
\ULA25|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador_1bit|c_out~0_combout\ = !\entradaA[24]~input_o\ $ (!\ULA25|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA25|somador_1bit|c_out~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

-- Location: LABCELL_X31_Y1_N3
\ULA22|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA22|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X25_Y0_N18
\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

-- Location: LABCELL_X24_Y2_N0
\ULA17|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA17|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X22_Y0_N35
\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

-- Location: LABCELL_X24_Y1_N51
\ULA12|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[11]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[11]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[11]~input_o\,
	combout => \ULA12|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X18_Y0_N18
\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

-- Location: IOIBUF_X11_Y0_N18
\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

-- Location: MLABCELL_X23_Y1_N36
\ULA8|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[7]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \entradaB[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entradaB[7]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X19_Y0_N18
\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

-- Location: MLABCELL_X23_Y1_N45
\ULA9|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[8]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[8]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datae => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA9|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X23_Y0_N75
\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

-- Location: IOIBUF_X18_Y0_N52
\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

-- Location: LABCELL_X24_Y1_N33
\ULA10|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|somador_1bit|c_out~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[9]~input_o\ $ (\entradaA[9]~input_o\) ) ) # ( !\inverteB~input_o\ & ( !\entradaB[9]~input_o\ $ (!\entradaA[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaB[9]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	dataf => \ALT_INV_inverteB~input_o\,
	combout => \ULA10|somador_1bit|c_out~0_combout\);

-- Location: IOIBUF_X38_Y0_N18
\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

-- Location: LABCELL_X39_Y1_N51
\ULA7|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA7|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

-- Location: LABCELL_X39_Y1_N42
\ULA5|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador_1bit|c_out~2_combout\ = ( \entradaA[4]~input_o\ & ( !\inverteB~input_o\ $ (!\entradaB[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ALT_INV_entradaA[4]~input_o\,
	combout => \ULA5|somador_1bit|c_out~2_combout\);

-- Location: IOIBUF_X38_Y0_N52
\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

-- Location: LABCELL_X39_Y1_N48
\ULA6|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[5]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[5]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA6|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X40_Y0_N41
\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

-- Location: IOIBUF_X40_Y0_N75
\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

-- Location: LABCELL_X39_Y1_N0
\ULA4|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X43_Y0_N1
\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N92
\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

-- Location: MLABCELL_X23_Y1_N0
\ULA3|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[2]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \entradaB[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaB[2]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \ULA3|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X43_Y0_N35
\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

-- Location: LABCELL_X39_Y1_N3
\ULA5|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador_1bit|c_out~0_combout\ = ( \entradaA[4]~input_o\ & ( !\inverteB~input_o\ $ (\entradaB[4]~input_o\) ) ) # ( !\entradaA[4]~input_o\ & ( !\inverteB~input_o\ $ (!\entradaB[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ALT_INV_entradaA[4]~input_o\,
	combout => \ULA5|somador_1bit|c_out~0_combout\);

-- Location: IOIBUF_X51_Y0_N35
\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

-- Location: IOIBUF_X48_Y0_N41
\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: LABCELL_X43_Y1_N36
\ULA2|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|somador_1bit|c_out~combout\ = ( \entradaA[0]~input_o\ & ( (!\entradaB[0]~input_o\ & ((!\entradaB[1]~input_o\ & (\inverteB~input_o\)) # (\entradaB[1]~input_o\ & ((\entradaA[1]~input_o\))))) # (\entradaB[0]~input_o\ & ((!\inverteB~input_o\ $ 
-- (!\entradaB[1]~input_o\)) # (\entradaA[1]~input_o\))) ) ) # ( !\entradaA[0]~input_o\ & ( (!\entradaB[0]~input_o\ & ((!\entradaB[1]~input_o\ & (\inverteB~input_o\)) # (\entradaB[1]~input_o\ & ((\entradaA[1]~input_o\))))) # (\entradaB[0]~input_o\ & 
-- (\entradaA[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000111110001000000011111000110100011111110011010001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[0]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaA[1]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA2|somador_1bit|c_out~combout\);

-- Location: LABCELL_X39_Y1_N36
\ULA5|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador_1bit|c_out~1_combout\ = ( \ULA5|somador_1bit|c_out~0_combout\ & ( \ULA2|somador_1bit|c_out~combout\ & ( (!\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[3]~input_o\ & ((\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (\entradaA[2]~input_o\)))) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (((\entradaA[3]~input_o\) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\entradaA[2]~input_o\))) ) ) ) # ( \ULA5|somador_1bit|c_out~0_combout\ & ( 
-- !\ULA2|somador_1bit|c_out~combout\ & ( (!\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[2]~input_o\ & (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[3]~input_o\))) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (((\entradaA[2]~input_o\ & 
-- \ULA3|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\entradaA[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101011100000000000000000001010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ULA5|somador_1bit|ALT_INV_c_out~0_combout\,
	dataf => \ULA2|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA5|somador_1bit|c_out~1_combout\);

-- Location: IOIBUF_X40_Y0_N58
\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

-- Location: LABCELL_X39_Y1_N24
\ULA7|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador_1bit|c_out~combout\ = ( \ULA5|somador_1bit|c_out~1_combout\ & ( \entradaA[5]~input_o\ & ( (!\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[6]~input_o\) ) ) ) # ( !\ULA5|somador_1bit|c_out~1_combout\ & ( \entradaA[5]~input_o\ & ( 
-- (!\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[6]~input_o\) # ((!\ULA5|somador_1bit|c_out~2_combout\ & !\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ULA5|somador_1bit|c_out~2_combout\ & 
-- (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[6]~input_o\))) ) ) ) # ( \ULA5|somador_1bit|c_out~1_combout\ & ( !\entradaA[5]~input_o\ & ( (!\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- (!\entradaA[6]~input_o\))) # (\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[6]~input_o\)) ) ) ) # ( !\ULA5|somador_1bit|c_out~1_combout\ & ( !\entradaA[5]~input_o\ & ( 
-- (!\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA5|somador_1bit|c_out~2_combout\) # ((!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\entradaA[6]~input_o\)))) # (\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[6]~input_o\ & 
-- ((!\ULA5|somador_1bit|c_out~2_combout\) # (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111110101010000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA5|somador_1bit|ALT_INV_c_out~2_combout\,
	datac => \ULA6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ULA5|somador_1bit|ALT_INV_c_out~1_combout\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	combout => \ULA7|somador_1bit|c_out~combout\);

-- Location: LABCELL_X24_Y1_N36
\ULA10|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|somador_1bit|c_out~1_combout\ = ( \ULA10|somador_1bit|c_out~0_combout\ & ( \ULA7|somador_1bit|c_out~combout\ & ( (!\entradaA[8]~input_o\ & (\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \entradaA[7]~input_o\))) # (\entradaA[8]~input_o\ & (((\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[7]~input_o\)) # (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \ULA10|somador_1bit|c_out~0_combout\ & ( !\ULA7|somador_1bit|c_out~combout\ 
-- & ( (!\entradaA[8]~input_o\ & (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\entradaA[7]~input_o\) # (\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\entradaA[8]~input_o\ & (((\entradaA[7]~input_o\) # (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\)) # 
-- (\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101110011111100000000000000000000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[8]~input_o\,
	datac => \ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ULA10|somador_1bit|ALT_INV_c_out~0_combout\,
	dataf => \ULA7|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA10|somador_1bit|c_out~1_combout\);

-- Location: LABCELL_X24_Y1_N15
\ULA10|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|somador_1bit|c_out~2_combout\ = (\entradaA[9]~input_o\ & (!\entradaB[9]~input_o\ $ (!\inverteB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	datad => \ALT_INV_inverteB~input_o\,
	combout => \ULA10|somador_1bit|c_out~2_combout\);

-- Location: IOIBUF_X10_Y0_N58
\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

-- Location: LABCELL_X24_Y1_N48
\ULA11|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y1_N24
\ULA12|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|somador_1bit|c_out~combout\ = ( \entradaA[10]~input_o\ & ( \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[11]~input_o\) ) ) ) # ( !\entradaA[10]~input_o\ & ( 
-- \ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[11]~input_o\) # ((!\ULA10|somador_1bit|c_out~1_combout\ & !\ULA10|somador_1bit|c_out~2_combout\)))) # (\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (!\entradaA[11]~input_o\ & (!\ULA10|somador_1bit|c_out~1_combout\ & !\ULA10|somador_1bit|c_out~2_combout\))) ) ) ) # ( \entradaA[10]~input_o\ & ( !\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((!\entradaA[11]~input_o\) # ((!\ULA10|somador_1bit|c_out~1_combout\ & !\ULA10|somador_1bit|c_out~2_combout\)))) # (\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[11]~input_o\ & (!\ULA10|somador_1bit|c_out~1_combout\ & 
-- !\ULA10|somador_1bit|c_out~2_combout\))) ) ) ) # ( !\entradaA[10]~input_o\ & ( !\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\entradaA[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111010001000100011101000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[11]~input_o\,
	datac => \ULA10|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA10|somador_1bit|ALT_INV_c_out~2_combout\,
	datae => \ALT_INV_entradaA[10]~input_o\,
	dataf => \ULA11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA12|somador_1bit|c_out~combout\);

-- Location: IOIBUF_X0_Y19_N55
\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

-- Location: IOIBUF_X11_Y0_N52
\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

-- Location: LABCELL_X24_Y2_N36
\ULA15|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA15|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N45
\ULA15|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador_1bit|c_out~0_combout\ = !\entradaA[14]~input_o\ $ (!\ULA15|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datad => \ULA15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|somador_1bit|c_out~0_combout\);

-- Location: IOIBUF_X19_Y0_N52
\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

-- Location: IOIBUF_X0_Y18_N61
\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

-- Location: LABCELL_X24_Y2_N30
\ULA13|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[12]~input_o\,
	combout => \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X12_Y0_N1
\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

-- Location: LABCELL_X24_Y2_N33
\ULA14|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N18
\ULA15|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador_1bit|c_out~1_combout\ = ( \entradaA[13]~input_o\ & ( \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA15|somador_1bit|c_out~0_combout\ ) ) ) # ( !\entradaA[13]~input_o\ & ( \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- (\ULA15|somador_1bit|c_out~0_combout\ & ((!\ULA12|somador_1bit|c_out~combout\ & ((\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[12]~input_o\))) # (\ULA12|somador_1bit|c_out~combout\ & (\entradaA[12]~input_o\ & 
-- \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( \entradaA[13]~input_o\ & ( !\ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA15|somador_1bit|c_out~0_combout\ & ((!\ULA12|somador_1bit|c_out~combout\ & ((\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\) 
-- # (\entradaA[12]~input_o\))) # (\ULA12|somador_1bit|c_out~combout\ & (\entradaA[12]~input_o\ & \ULA13|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100010001100000010001000110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA15|somador_1bit|ALT_INV_c_out~0_combout\,
	datac => \ALT_INV_entradaA[12]~input_o\,
	datad => \ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[13]~input_o\,
	dataf => \ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|somador_1bit|c_out~1_combout\);

-- Location: IOIBUF_X12_Y0_N35
\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

-- Location: LABCELL_X24_Y2_N39
\ULA16|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N24
\ULA15|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador_1bit|c_out~2_combout\ = (\entradaA[14]~input_o\ & \ULA15|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaA[14]~input_o\,
	datad => \ULA15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA15|somador_1bit|c_out~2_combout\);

-- Location: LABCELL_X25_Y2_N30
\ULA17|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|somador_1bit|c_out~combout\ = ( \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA15|somador_1bit|c_out~2_combout\ & ( (!\entradaA[16]~input_o\ & !\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) ) # ( !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA15|somador_1bit|c_out~2_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\entradaA[15]~input_o\))) # (\entradaA[16]~input_o\ & (!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[15]~input_o\)) ) ) ) # ( 
-- \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA15|somador_1bit|c_out~2_combout\ & ( (!\entradaA[16]~input_o\ & ((!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\ & !\ULA15|somador_1bit|c_out~1_combout\)))) # 
-- (\entradaA[16]~input_o\ & (!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[15]~input_o\ & !\ULA15|somador_1bit|c_out~1_combout\))) ) ) ) # ( !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA15|somador_1bit|c_out~2_combout\ & ( 
-- (!\entradaA[16]~input_o\ & ((!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\entradaA[15]~input_o\) # (!\ULA15|somador_1bit|c_out~1_combout\)))) # (\entradaA[16]~input_o\ & (!\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[15]~input_o\) # 
-- (!\ULA15|somador_1bit|c_out~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101000111010001000100011101000111010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[16]~input_o\,
	datab => \ULA17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA15|somador_1bit|ALT_INV_c_out~1_combout\,
	datae => \ULA16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA15|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA17|somador_1bit|c_out~combout\);

-- Location: IOIBUF_X22_Y0_N18
\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

-- Location: LABCELL_X25_Y2_N39
\ULA18|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA18|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X24_Y0_N52
\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

-- Location: IOIBUF_X0_Y18_N78
\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

-- Location: LABCELL_X24_Y2_N3
\ULA20|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA20|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X14_Y0_N35
\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

-- Location: LABCELL_X25_Y2_N15
\ULA20|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|somador_1bit|c_out~0_combout\ = !\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[19]~input_o\,
	combout => \ULA20|somador_1bit|c_out~0_combout\);

-- Location: IOIBUF_X0_Y18_N44
\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

-- Location: MLABCELL_X23_Y1_N21
\ULA19|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[18]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[18]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datae => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N18
\ULA20|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|somador_1bit|c_out~1_combout\ = ( \entradaA[17]~input_o\ & ( \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA20|somador_1bit|c_out~0_combout\ & ((!\ULA17|somador_1bit|c_out~combout\) # ((\entradaA[18]~input_o\) # 
-- (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( !\entradaA[17]~input_o\ & ( \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA20|somador_1bit|c_out~0_combout\ & (((!\ULA17|somador_1bit|c_out~combout\ & \ULA18|MUX_INVERTE_B|saida_MUX~0_combout\)) 
-- # (\entradaA[18]~input_o\))) ) ) ) # ( \entradaA[17]~input_o\ & ( !\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\entradaA[18]~input_o\ & (\ULA20|somador_1bit|c_out~0_combout\ & ((!\ULA17|somador_1bit|c_out~combout\) # 
-- (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( !\entradaA[17]~input_o\ & ( !\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA17|somador_1bit|c_out~combout\ & (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[18]~input_o\ & 
-- \ULA20|somador_1bit|c_out~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000101100000000001011110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[18]~input_o\,
	datad => \ULA20|somador_1bit|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA20|somador_1bit|c_out~1_combout\);

-- Location: IOIBUF_X34_Y0_N18
\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

-- Location: IOIBUF_X29_Y0_N18
\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

-- Location: LABCELL_X31_Y1_N0
\ULA21|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[20]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[20]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N36
\ULA20|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|somador_1bit|c_out~2_combout\ = (\entradaA[19]~input_o\ & \ULA20|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entradaA[19]~input_o\,
	datac => \ULA20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA20|somador_1bit|c_out~2_combout\);

-- Location: LABCELL_X31_Y1_N36
\ULA22|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|somador_1bit|c_out~combout\ = ( \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA20|somador_1bit|c_out~2_combout\ & ( (!\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[21]~input_o\) ) ) ) # ( !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( 
-- \ULA20|somador_1bit|c_out~2_combout\ & ( (!\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[20]~input_o\) # (!\entradaA[21]~input_o\))) # (\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[20]~input_o\ & !\entradaA[21]~input_o\)) ) ) ) # ( 
-- \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA20|somador_1bit|c_out~2_combout\ & ( (!\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[21]~input_o\) # ((!\entradaA[20]~input_o\ & !\ULA20|somador_1bit|c_out~1_combout\)))) # 
-- (\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[20]~input_o\ & (!\ULA20|somador_1bit|c_out~1_combout\ & !\entradaA[21]~input_o\))) ) ) ) # ( !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA20|somador_1bit|c_out~2_combout\ & ( 
-- (!\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[20]~input_o\) # ((!\ULA20|somador_1bit|c_out~1_combout\) # (!\entradaA[21]~input_o\)))) # (\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[21]~input_o\ & ((!\entradaA[20]~input_o\) # 
-- (!\ULA20|somador_1bit|c_out~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111010101000000011101110100010001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[20]~input_o\,
	datac => \ULA20|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	datae => \ULA21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA20|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA22|somador_1bit|c_out~combout\);

-- Location: IOIBUF_X33_Y0_N41
\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

-- Location: IOIBUF_X51_Y0_N18
\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

-- Location: LABCELL_X32_Y1_N9
\ULA24|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[23]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[23]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N48
\ULA25|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador_1bit|c_out~1_combout\ = ( \entradaA[22]~input_o\ & ( \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA25|somador_1bit|c_out~0_combout\ & (((!\ULA22|somador_1bit|c_out~combout\) # (\entradaA[23]~input_o\)) # 
-- (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\entradaA[22]~input_o\ & ( \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA25|somador_1bit|c_out~0_combout\ & (((\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA22|somador_1bit|c_out~combout\)) 
-- # (\entradaA[23]~input_o\))) ) ) ) # ( \entradaA[22]~input_o\ & ( !\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA25|somador_1bit|c_out~0_combout\ & (\entradaA[23]~input_o\ & ((!\ULA22|somador_1bit|c_out~combout\) # 
-- (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) ) # ( !\entradaA[22]~input_o\ & ( !\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & (\ULA25|somador_1bit|c_out~0_combout\ & (!\ULA22|somador_1bit|c_out~combout\ & 
-- \entradaA[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000011000100010000001100110011000100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA25|somador_1bit|ALT_INV_c_out~0_combout\,
	datac => \ULA22|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ALT_INV_entradaA[22]~input_o\,
	dataf => \ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA25|somador_1bit|c_out~1_combout\);

-- Location: IOIBUF_X0_Y18_N95
\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

-- Location: LABCELL_X24_Y2_N9
\ULA27|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MUX_INVERTE_B|saida_MUX~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA27|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N54
\ULA25|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador_1bit|c_out~2_combout\ = ( \entradaA[24]~input_o\ & ( \ULA25|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[24]~input_o\,
	combout => \ULA25|somador_1bit|c_out~2_combout\);

-- Location: IOIBUF_X36_Y0_N1
\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

-- Location: LABCELL_X32_Y1_N30
\ULA27|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|somador_1bit|c_out~combout\ = ( \ULA25|somador_1bit|c_out~2_combout\ & ( \entradaA[26]~input_o\ & ( (!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\)) ) ) ) # ( 
-- !\ULA25|somador_1bit|c_out~2_combout\ & ( \entradaA[26]~input_o\ & ( (!\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\entradaA[25]~input_o\) # (!\ULA25|somador_1bit|c_out~1_combout\))) # 
-- (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA25|somador_1bit|c_out~1_combout\)))) ) ) ) # ( \ULA25|somador_1bit|c_out~2_combout\ & ( !\entradaA[26]~input_o\ & ( (!\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\) # 
-- ((!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[25]~input_o\)) ) ) ) # ( !\ULA25|somador_1bit|c_out~2_combout\ & ( !\entradaA[26]~input_o\ & ( (!\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((!\entradaA[25]~input_o\) # (!\ULA25|somador_1bit|c_out~1_combout\))) # (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA25|somador_1bit|c_out~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111111111000100011101000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[25]~input_o\,
	datac => \ULA25|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA25|somador_1bit|ALT_INV_c_out~2_combout\,
	dataf => \ALT_INV_entradaA[26]~input_o\,
	combout => \ULA27|somador_1bit|c_out~combout\);

-- Location: IOIBUF_X36_Y0_N18
\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N75
\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

-- Location: MLABCELL_X23_Y1_N33
\ULA29|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \inverteB~input_o\ & ( !\entradaB[28]~input_o\ ) ) # ( !\inverteB~input_o\ & ( \entradaB[28]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[28]~input_o\,
	datae => \ALT_INV_inverteB~input_o\,
	combout => \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X46_Y0_N35
\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

-- Location: LABCELL_X43_Y1_N15
\ULA30|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[29]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[29]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X48_Y0_N75
\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

-- Location: LABCELL_X43_Y1_N21
\ULA30|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador_1bit|c_out~0_combout\ = ( \entradaA[29]~input_o\ & ( !\ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ ) ) # ( !\entradaA[29]~input_o\ & ( \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[29]~input_o\,
	combout => \ULA30|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X31_Y1_N18
\ULA30|somador_1bit|c_out~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador_1bit|c_out~1_combout\ = ( \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA30|somador_1bit|c_out~0_combout\ & ( ((!\entradaA[27]~input_o\ & (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA27|somador_1bit|c_out~combout\)) # 
-- (\entradaA[27]~input_o\ & ((!\ULA27|somador_1bit|c_out~combout\) # (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\entradaA[28]~input_o\) ) ) ) # ( !\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA30|somador_1bit|c_out~0_combout\ & ( 
-- (\entradaA[28]~input_o\ & ((!\entradaA[27]~input_o\ & (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA27|somador_1bit|c_out~combout\)) # (\entradaA[27]~input_o\ & ((!\ULA27|somador_1bit|c_out~combout\) # (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011100010111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[27]~input_o\,
	datab => \ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA27|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_entradaA[28]~input_o\,
	datae => \ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA30|somador_1bit|ALT_INV_c_out~0_combout\,
	combout => \ULA30|somador_1bit|c_out~1_combout\);

-- Location: IOIBUF_X52_Y0_N52
\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

-- Location: LABCELL_X43_Y1_N0
\ULA32|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[31]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[31]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[31]~input_o\,
	combout => \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y1_N39
\ULA30|somador_1bit|c_out~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador_1bit|c_out~2_combout\ = ( \entradaA[29]~input_o\ & ( \ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[29]~input_o\,
	combout => \ULA30|somador_1bit|c_out~2_combout\);

-- Location: IOIBUF_X46_Y0_N52
\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

-- Location: LABCELL_X43_Y1_N27
\ULA31|MUX_INVERTE_B|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ = ( \entradaB[30]~input_o\ & ( !\inverteB~input_o\ ) ) # ( !\entradaB[30]~input_o\ & ( \inverteB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	dataf => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\);

-- Location: IOIBUF_X52_Y0_N1
\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

-- Location: LABCELL_X43_Y1_N30
\ULA32|overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|overflow~0_combout\ = ( \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \entradaA[30]~input_o\ & ( (\entradaA[31]~input_o\ & \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) ) # ( !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \entradaA[30]~input_o\ & 
-- ( (!\entradaA[31]~input_o\ & (!\ULA30|somador_1bit|c_out~1_combout\ & (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA30|somador_1bit|c_out~2_combout\))) # (\entradaA[31]~input_o\ & (((!\ULA30|somador_1bit|c_out~1_combout\ & 
-- !\ULA30|somador_1bit|c_out~2_combout\)) # (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\entradaA[30]~input_o\ & ( (!\entradaA[31]~input_o\ & (!\ULA30|somador_1bit|c_out~1_combout\ & 
-- (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA30|somador_1bit|c_out~2_combout\))) # (\entradaA[31]~input_o\ & (((!\ULA30|somador_1bit|c_out~1_combout\ & !\ULA30|somador_1bit|c_out~2_combout\)) # (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\entradaA[30]~input_o\ & ( (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010011010000010101001101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ULA30|somador_1bit|ALT_INV_c_out~1_combout\,
	datac => \ULA32|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA30|somador_1bit|ALT_INV_c_out~2_combout\,
	datae => \ULA31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[30]~input_o\,
	combout => \ULA32|overflow~0_combout\);

-- Location: IOIBUF_X43_Y0_N52
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X23_Y0_N58
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: LABCELL_X43_Y1_N6
\ULA1|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[1]~input_o\ & ( \entradaA[0]~input_o\ & ( (!\sel[0]~input_o\ & (!\entradaB[0]~input_o\)) # (\sel[0]~input_o\ & ((\ULA32|overflow~0_combout\))) ) ) ) # ( !\sel[1]~input_o\ & ( \entradaA[0]~input_o\ & ( 
-- (!\entradaB[0]~input_o\ $ (!\inverteB~input_o\)) # (\sel[0]~input_o\) ) ) ) # ( \sel[1]~input_o\ & ( !\entradaA[0]~input_o\ & ( (!\sel[0]~input_o\ & (\entradaB[0]~input_o\)) # (\sel[0]~input_o\ & ((\ULA32|overflow~0_combout\))) ) ) ) # ( !\sel[1]~input_o\ 
-- & ( !\entradaA[0]~input_o\ & ( (\sel[0]~input_o\ & (!\entradaB[0]~input_o\ $ (!\inverteB~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110010101010000111101100110111111111010101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[0]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ULA32|ALT_INV_overflow~0_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA1|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y1_N45
\ULA1|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|somador_1bit|c_out~0_combout\ = ( \entradaA[0]~input_o\ & ( (\entradaB[0]~input_o\) # (\inverteB~input_o\) ) ) # ( !\entradaA[0]~input_o\ & ( (\inverteB~input_o\ & !\entradaB[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ALT_INV_entradaA[0]~input_o\,
	combout => \ULA1|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X43_Y1_N48
\ULA2|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA1|somador_1bit|c_out~0_combout\ & ( \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\entradaB[1]~input_o\ $ (!\inverteB~input_o\ $ (!\entradaA[1]~input_o\)))) ) ) ) # ( !\ULA1|somador_1bit|c_out~0_combout\ & ( 
-- \sel[1]~input_o\ & ( (!\sel[0]~input_o\ & (!\entradaB[1]~input_o\ $ (!\inverteB~input_o\ $ (\entradaA[1]~input_o\)))) ) ) ) # ( \ULA1|somador_1bit|c_out~0_combout\ & ( !\sel[1]~input_o\ & ( (!\entradaA[1]~input_o\ & (\sel[0]~input_o\ & 
-- (!\entradaB[1]~input_o\ $ (!\inverteB~input_o\)))) # (\entradaA[1]~input_o\ & ((!\entradaB[1]~input_o\ $ (!\inverteB~input_o\)) # (\sel[0]~input_o\))) ) ) ) # ( !\ULA1|somador_1bit|c_out~0_combout\ & ( !\sel[1]~input_o\ & ( (!\entradaA[1]~input_o\ & 
-- (\sel[0]~input_o\ & (!\entradaB[1]~input_o\ $ (!\inverteB~input_o\)))) # (\entradaA[1]~input_o\ & ((!\entradaB[1]~input_o\ $ (!\inverteB~input_o\)) # (\sel[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101111000001100110111101101001000000001001011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[1]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	datac => \ALT_INV_entradaA[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ULA1|somador_1bit|ALT_INV_c_out~0_combout\,
	dataf => \ALT_INV_sel[1]~input_o\,
	combout => \ULA2|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N30
\ULA3|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA2|somador_1bit|c_out~combout\ & ( (!\sel[0]~input_o\ & ((!\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[2]~input_o\ & \sel[1]~input_o\)) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[2]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\entradaA[2]~input_o\) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) # ( !\ULA2|somador_1bit|c_out~combout\ & ( (!\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[2]~input_o\ & (!\sel[1]~input_o\ $ (!\sel[0]~input_o\)))) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\sel[1]~input_o\ $ (((!\entradaA[2]~input_o\ & !\sel[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011001110000000101100111000000011001011100000001100101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ULA2|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA3|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N33
\ULA3|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|somador_1bit|c_out~combout\ = ( \ULA2|somador_1bit|c_out~combout\ & ( (\entradaA[2]~input_o\) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ULA2|somador_1bit|c_out~combout\ & ( (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \entradaA[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	dataf => \ULA2|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA3|somador_1bit|c_out~combout\);

-- Location: LABCELL_X39_Y1_N6
\ULA4|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA3|somador_1bit|c_out~combout\ & ( (!\sel[0]~input_o\ & ((!\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (\sel[1]~input_o\ & !\entradaA[3]~input_o\)) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((\entradaA[3]~input_o\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\entradaA[3]~input_o\) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) ) # ( !\ULA3|somador_1bit|c_out~combout\ & ( (!\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[3]~input_o\ & (!\sel[1]~input_o\ $ (!\sel[0]~input_o\)))) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & !\entradaA[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101010000001100110101001000010001011100100001000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ULA4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	dataf => \ULA3|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA4|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N45
\ULA4|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador_1bit|c_out~combout\ = ( \ULA2|somador_1bit|c_out~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\entradaA[2]~input_o\) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\entradaA[3]~input_o\ & 
-- (((\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[2]~input_o\)) # (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\ULA2|somador_1bit|c_out~combout\ & ( (!\entradaA[3]~input_o\ & (\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[2]~input_o\ & \ULA4|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\entradaA[3]~input_o\ & (((\ULA3|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[2]~input_o\)) # (\ULA4|MUX_INVERTE_B|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA3|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ALT_INV_entradaA[3]~input_o\,
	datad => \ULA4|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA2|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA4|somador_1bit|c_out~combout\);

-- Location: LABCELL_X39_Y1_N12
\ULA5|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( \entradaA[4]~input_o\ & ( !\sel[1]~input_o\ ) ) ) # ( !\sel[0]~input_o\ & ( \entradaA[4]~input_o\ & ( !\inverteB~input_o\ $ (!\entradaB[4]~input_o\ $ (((\sel[1]~input_o\ & 
-- !\ULA4|somador_1bit|c_out~combout\)))) ) ) ) # ( \sel[0]~input_o\ & ( !\entradaA[4]~input_o\ & ( (!\sel[1]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[4]~input_o\))) ) ) ) # ( !\sel[0]~input_o\ & ( !\entradaA[4]~input_o\ & ( (\sel[1]~input_o\ & 
-- (!\inverteB~input_o\ $ (!\entradaB[4]~input_o\ $ (\ULA4|somador_1bit|c_out~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001011000000110000001101001011001101111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[4]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA4|somador_1bit|ALT_INV_c_out~combout\,
	datae => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_entradaA[4]~input_o\,
	combout => \ULA5|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N18
\ULA6|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[1]~input_o\ & ( \entradaA[5]~input_o\ & ( (!\sel[0]~input_o\ & (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((\ULA5|somador_1bit|c_out~2_combout\) # (\ULA5|somador_1bit|c_out~1_combout\))))) ) ) ) # ( 
-- !\sel[1]~input_o\ & ( \entradaA[5]~input_o\ & ( (\sel[0]~input_o\) # (\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) ) # ( \sel[1]~input_o\ & ( !\entradaA[5]~input_o\ & ( (!\sel[0]~input_o\ & (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ $ 
-- (((!\ULA5|somador_1bit|c_out~1_combout\ & !\ULA5|somador_1bit|c_out~2_combout\))))) ) ) ) # ( !\sel[1]~input_o\ & ( !\entradaA[5]~input_o\ & ( (\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ & \sel[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111011110000000000000001111111111111000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA5|somador_1bit|ALT_INV_c_out~1_combout\,
	datab => \ULA5|somador_1bit|ALT_INV_c_out~2_combout\,
	datac => \ULA6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	combout => \ULA6|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N57
\ULA6|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|somador_1bit|c_out~combout\ = ( \entradaA[5]~input_o\ & ( (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\ULA5|somador_1bit|c_out~2_combout\ & !\ULA5|somador_1bit|c_out~1_combout\)) ) ) # ( !\entradaA[5]~input_o\ & ( 
-- (!\ULA6|MUX_INVERTE_B|saida_MUX~0_combout\) # ((!\ULA5|somador_1bit|c_out~2_combout\ & !\ULA5|somador_1bit|c_out~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA6|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA5|somador_1bit|ALT_INV_c_out~2_combout\,
	datad => \ULA5|somador_1bit|ALT_INV_c_out~1_combout\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	combout => \ULA6|somador_1bit|c_out~combout\);

-- Location: LABCELL_X39_Y1_N9
\ULA7|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA6|somador_1bit|c_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA7|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\sel[1]~input_o\ & (\sel[0]~input_o\ & ((\entradaA[6]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\ULA6|somador_1bit|c_out~combout\ $ (\entradaA[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110010000000010011000100110111010100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ULA6|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ULA7|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA7|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y1_N3
\ULA8|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[7]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\entradaA[7]~input_o\ & 
-- \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\sel[1]~input_o\ & (!\ULA7|somador_1bit|c_out~combout\ $ (!\entradaA[7]~input_o\ $ (!\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100110110000010010011011000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA8|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N57
\ULA2|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MUX_FINAL|saida_MUX~1_combout\ = ( !\sel[0]~input_o\ & ( \sel[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA2|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X24_Y1_N6
\ULA9|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[8]~input_o\) # (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[8]~input_o\ & 
-- !\sel[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[8]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA9|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y1_N9
\ULA9|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador_1bit|c_out~0_combout\ = !\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[8]~input_o\,
	combout => \ULA9|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X24_Y1_N42
\ULA9|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MUX_FINAL|saida_MUX~1_combout\ = ( \entradaA[7]~input_o\ & ( \ULA7|somador_1bit|c_out~combout\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ULA9|somador_1bit|c_out~0_combout\)))) # 
-- (\ULA9|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( !\entradaA[7]~input_o\ & ( \ULA7|somador_1bit|c_out~combout\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & \ULA9|somador_1bit|c_out~0_combout\)) # (\ULA9|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( 
-- \entradaA[7]~input_o\ & ( !\ULA7|somador_1bit|c_out~combout\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & !\ULA9|somador_1bit|c_out~0_combout\)) # (\ULA9|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( !\entradaA[7]~input_o\ & ( 
-- !\ULA7|somador_1bit|c_out~combout\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ULA9|somador_1bit|c_out~0_combout\)))) # (\ULA9|MUX_FINAL|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101110011011101110011001100110011011101110011011101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA9|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA9|somador_1bit|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_entradaA[7]~input_o\,
	dataf => \ULA7|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA9|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X24_Y1_N0
\ULA9|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador_1bit|c_out~combout\ = ( \ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[8]~input_o\ & ((!\ULA7|somador_1bit|c_out~combout\) # (\entradaA[7]~input_o\)))) # 
-- (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA7|somador_1bit|c_out~combout\) # ((\entradaA[8]~input_o\) # (\entradaA[7]~input_o\)))) ) ) # ( !\ULA8|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (!\ULA7|somador_1bit|c_out~combout\ & (\entradaA[7]~input_o\ & \entradaA[8]~input_o\))) # (\ULA9|MUX_INVERTE_B|saida_MUX~0_combout\ & (((!\ULA7|somador_1bit|c_out~combout\ & \entradaA[7]~input_o\)) # (\entradaA[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101111000000100010111100001011101111110000101110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA9|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[8]~input_o\,
	dataf => \ULA8|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA9|somador_1bit|c_out~combout\);

-- Location: LABCELL_X24_Y1_N18
\ULA10|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaB[9]~input_o\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[9]~input_o\))) ) ) ) # ( !\entradaB[9]~input_o\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & 
-- ((\inverteB~input_o\) # (\entradaA[9]~input_o\))) ) ) ) # ( \entradaB[9]~input_o\ & ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\entradaA[9]~input_o\ & !\inverteB~input_o\)))) # (\sel[1]~input_o\ & (!\ULA9|somador_1bit|c_out~combout\ $ 
-- (!\entradaA[9]~input_o\ $ (!\inverteB~input_o\)))) ) ) ) # ( !\entradaB[9]~input_o\ & ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\entradaA[9]~input_o\ & \inverteB~input_o\)))) # (\sel[1]~input_o\ & (!\ULA9|somador_1bit|c_out~combout\ $ 
-- (!\entradaA[9]~input_o\ $ (\inverteB~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101101001001100001001011000111111000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ALT_INV_entradaB[9]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA10|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y1_N54
\ULA11|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaA[10]~input_o\ & ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ ) ) ) # ( !\entradaA[10]~input_o\ & ( \sel[0]~input_o\ & ( (\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & !\sel[1]~input_o\) ) ) ) # ( 
-- \entradaA[10]~input_o\ & ( !\sel[0]~input_o\ & ( !\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((!\sel[1]~input_o\) # ((\ULA10|somador_1bit|c_out~2_combout\) # (\ULA10|somador_1bit|c_out~1_combout\)))) ) ) ) # ( !\entradaA[10]~input_o\ & ( 
-- !\sel[0]~input_o\ & ( (\sel[1]~input_o\ & (!\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((!\ULA10|somador_1bit|c_out~1_combout\ & !\ULA10|somador_1bit|c_out~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000100010011001010101010101000100010001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA10|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA10|somador_1bit|ALT_INV_c_out~2_combout\,
	datae => \ALT_INV_entradaA[10]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA11|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y1_N12
\ULA11|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|somador_1bit|c_out~combout\ = ( \ULA10|somador_1bit|c_out~2_combout\ & ( (!\entradaA[10]~input_o\ & !\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ULA10|somador_1bit|c_out~2_combout\ & ( (!\entradaA[10]~input_o\ & 
-- ((!\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\ULA10|somador_1bit|c_out~1_combout\))) # (\entradaA[10]~input_o\ & (!\ULA11|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA10|somador_1bit|c_out~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[10]~input_o\,
	datac => \ULA11|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA10|somador_1bit|ALT_INV_c_out~1_combout\,
	dataf => \ULA10|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA11|somador_1bit|c_out~combout\);

-- Location: LABCELL_X24_Y1_N30
\ULA12|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[11]~input_o\) # (\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \entradaA[11]~input_o\)))) # (\sel[1]~input_o\ & (!\ULA11|somador_1bit|c_out~combout\ $ (!\ULA12|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110010000010001111000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ULA11|somador_1bit|ALT_INV_c_out~combout\,
	datac => \ULA12|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA12|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N12
\ULA13|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[12]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (\entradaA[12]~input_o\ & 
-- (\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\sel[1]~input_o\ & (!\entradaA[12]~input_o\ $ (!\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ULA12|somador_1bit|c_out~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010110000100011001011001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA12|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA13|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N51
\ULA14|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador_1bit|c_out~0_combout\ = !\ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[13]~input_o\,
	combout => \ULA14|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X24_Y2_N48
\ULA14|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[13]~input_o\) # (\ULA14|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (\ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[13]~input_o\ & !\sel[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA14|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X24_Y2_N54
\ULA14|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MUX_FINAL|saida_MUX~1_combout\ = ( \ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( \ULA14|MUX_FINAL|saida_MUX~0_combout\ ) ) # ( !\ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( \ULA14|MUX_FINAL|saida_MUX~0_combout\ ) ) # ( \ULA2|MUX_FINAL|saida_MUX~1_combout\ & 
-- ( !\ULA14|MUX_FINAL|saida_MUX~0_combout\ & ( !\ULA14|somador_1bit|c_out~0_combout\ $ (((!\ULA12|somador_1bit|c_out~combout\ & (!\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[12]~input_o\)) # (\ULA12|somador_1bit|c_out~combout\ & 
-- ((!\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\) # (!\entradaA[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001011011011010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA14|somador_1bit|ALT_INV_c_out~0_combout\,
	datad => \ALT_INV_entradaA[12]~input_o\,
	datae => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA14|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X24_Y2_N15
\ULA14|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador_1bit|c_out~combout\ = ( \ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\entradaA[12]~input_o\ & (\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA12|somador_1bit|c_out~combout\)) # (\entradaA[12]~input_o\ & 
-- ((!\ULA12|somador_1bit|c_out~combout\) # (\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\entradaA[13]~input_o\) ) ) # ( !\ULA14|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\entradaA[13]~input_o\ & ((!\entradaA[12]~input_o\ & 
-- (\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\ & !\ULA12|somador_1bit|c_out~combout\)) # (\entradaA[12]~input_o\ & ((!\ULA12|somador_1bit|c_out~combout\) # (\ULA13|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000001000001110000000101111111000111110111111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ULA13|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ULA12|somador_1bit|ALT_INV_c_out~combout\,
	dataf => \ULA14|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA14|somador_1bit|c_out~combout\);

-- Location: LABCELL_X24_Y2_N42
\ULA15|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA15|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[14]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (\entradaA[14]~input_o\ & 
-- ((\ULA15|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\sel[1]~input_o\ & (!\entradaA[14]~input_o\ $ (!\ULA14|somador_1bit|c_out~combout\ $ (\ULA15|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101101001000001010110100101011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA14|somador_1bit|ALT_INV_c_out~combout\,
	datac => \ULA15|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA15|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N24
\ULA16|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ ) ) ) # ( !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & \entradaA[15]~input_o\) ) ) ) 
-- # ( \ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\sel[0]~input_o\ & ( !\entradaA[15]~input_o\ $ (((!\sel[1]~input_o\) # ((\ULA15|somador_1bit|c_out~2_combout\) # (\ULA15|somador_1bit|c_out~1_combout\)))) ) ) ) # ( 
-- !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\sel[0]~input_o\ & ( (\sel[1]~input_o\ & (!\entradaA[15]~input_o\ $ (((!\ULA15|somador_1bit|c_out~1_combout\ & !\ULA15|somador_1bit|c_out~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010000010010110000111100001010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ULA15|somador_1bit|ALT_INV_c_out~1_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA15|somador_1bit|ALT_INV_c_out~2_combout\,
	datae => \ULA16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA16|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N0
\ULA16|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|somador_1bit|c_out~combout\ = ( \ULA15|somador_1bit|c_out~2_combout\ & ( (!\entradaA[15]~input_o\ & !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ULA15|somador_1bit|c_out~2_combout\ & ( (!\ULA15|somador_1bit|c_out~1_combout\ & 
-- ((!\entradaA[15]~input_o\) # (!\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA15|somador_1bit|c_out~1_combout\ & (!\entradaA[15]~input_o\ & !\ULA16|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA15|somador_1bit|ALT_INV_c_out~1_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA16|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA15|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA16|somador_1bit|c_out~combout\);

-- Location: LABCELL_X25_Y2_N6
\ULA17|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\sel[1]~input_o\) # (!\ULA16|somador_1bit|c_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\ULA17|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA16|somador_1bit|c_out~combout\ $ (\entradaA[16]~input_o\)))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\entradaA[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001000110001000000100011001000110111011000100011011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ULA16|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_entradaA[16]~input_o\,
	dataf => \ULA17|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA17|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N45
\ULA18|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[17]~input_o\) # (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \entradaA[17]~input_o\)))) # (\sel[1]~input_o\ & (!\ULA17|somador_1bit|c_out~combout\ $ (!\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100110110000010010011011000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA18|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N51
\ULA19|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador_1bit|c_out~0_combout\ = !\entradaA[18]~input_o\ $ (!\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X25_Y2_N48
\ULA19|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[18]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (\entradaA[18]~input_o\ & 
-- (\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & !\sel[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA19|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X25_Y2_N54
\ULA19|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MUX_FINAL|saida_MUX~1_combout\ = ( \entradaA[17]~input_o\ & ( \ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( (!\ULA19|somador_1bit|c_out~0_combout\ $ (((!\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA17|somador_1bit|c_out~combout\)))) # 
-- (\ULA19|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( !\entradaA[17]~input_o\ & ( \ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( (!\ULA19|somador_1bit|c_out~0_combout\ $ (((!\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ULA17|somador_1bit|c_out~combout\)))) # 
-- (\ULA19|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( \entradaA[17]~input_o\ & ( !\ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( \ULA19|MUX_FINAL|saida_MUX~0_combout\ ) ) ) # ( !\entradaA[17]~input_o\ & ( !\ULA2|MUX_FINAL|saida_MUX~1_combout\ & ( 
-- \ULA19|MUX_FINAL|saida_MUX~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101101111010111111010111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA19|somador_1bit|ALT_INV_c_out~0_combout\,
	datab => \ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA19|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA17|somador_1bit|ALT_INV_c_out~combout\,
	datae => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA19|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X25_Y2_N42
\ULA19|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador_1bit|c_out~combout\ = ( \ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( ((!\ULA17|somador_1bit|c_out~combout\ & ((\entradaA[17]~input_o\) # (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA17|somador_1bit|c_out~combout\ & 
-- (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[17]~input_o\))) # (\entradaA[18]~input_o\) ) ) # ( !\ULA19|MUX_INVERTE_B|saida_MUX~0_combout\ & ( (\entradaA[18]~input_o\ & ((!\ULA17|somador_1bit|c_out~combout\ & ((\entradaA[17]~input_o\) # 
-- (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA17|somador_1bit|c_out~combout\ & (\ULA18|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001011000000100000101100101111101111110010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA18|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[18]~input_o\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ULA19|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA19|somador_1bit|c_out~combout\);

-- Location: LABCELL_X25_Y2_N9
\ULA20|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA19|somador_1bit|c_out~combout\ & ( (!\sel[0]~input_o\ & ((!\entradaA[19]~input_o\ & (\sel[1]~input_o\ & !\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\)) # (\entradaA[19]~input_o\ & 
-- ((\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\ & ((\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[19]~input_o\)))) ) ) # ( !\ULA19|somador_1bit|c_out~combout\ & ( (!\entradaA[19]~input_o\ & 
-- (\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\sel[0]~input_o\ $ (!\sel[1]~input_o\)))) # (\entradaA[19]~input_o\ & (!\sel[1]~input_o\ $ (((!\sel[0]~input_o\ & !\ULA20|MUX_INVERTE_B|saida_MUX~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100000001100110110000100100010011100010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datab => \ALT_INV_sel[1]~input_o\,
	datac => \ALT_INV_entradaA[19]~input_o\,
	datad => \ULA20|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA19|somador_1bit|ALT_INV_c_out~combout\,
	combout => \ULA20|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N30
\ULA21|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \sel[0]~input_o\ & ( !\sel[1]~input_o\ ) ) ) # ( !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & \entradaA[20]~input_o\) ) ) ) 
-- # ( \ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\sel[0]~input_o\ & ( !\entradaA[20]~input_o\ $ (((!\sel[1]~input_o\) # ((\ULA20|somador_1bit|c_out~2_combout\) # (\ULA20|somador_1bit|c_out~1_combout\)))) ) ) ) # ( 
-- !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\sel[0]~input_o\ & ( (\sel[1]~input_o\ & (!\entradaA[20]~input_o\ $ (((!\ULA20|somador_1bit|c_out~1_combout\ & !\ULA20|somador_1bit|c_out~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000100011000110011001100100010001000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ALT_INV_entradaA[20]~input_o\,
	datac => \ULA20|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA20|somador_1bit|ALT_INV_c_out~2_combout\,
	datae => \ULA21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA21|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N6
\ULA21|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador_1bit|c_out~combout\ = ( \ULA20|somador_1bit|c_out~2_combout\ & ( (!\entradaA[20]~input_o\ & !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ULA20|somador_1bit|c_out~2_combout\ & ( (!\entradaA[20]~input_o\ & 
-- ((!\ULA20|somador_1bit|c_out~1_combout\) # (!\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\entradaA[20]~input_o\ & (!\ULA20|somador_1bit|c_out~1_combout\ & !\ULA21|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000000111111001100000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entradaA[20]~input_o\,
	datac => \ULA20|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA21|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA20|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA21|somador_1bit|c_out~combout\);

-- Location: LABCELL_X31_Y1_N12
\ULA22|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[21]~input_o\) # (\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (((\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- \entradaA[21]~input_o\)))) # (\sel[1]~input_o\ & (!\ULA21|somador_1bit|c_out~combout\ $ (!\ULA22|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100011110010000010001111000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ULA21|somador_1bit|ALT_INV_c_out~combout\,
	datac => \ULA22|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA22|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N39
\ULA23|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[22]~input_o\) # (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[22]~input_o\))) # (\sel[1]~input_o\ & (!\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[22]~input_o\ $ (!\ULA22|somador_1bit|c_out~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110010110000100011001011001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA22|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA23|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N15
\ULA24|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador_1bit|c_out~0_combout\ = ( \entradaA[23]~input_o\ & ( !\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ ) ) # ( !\entradaA[23]~input_o\ & ( \ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[23]~input_o\,
	combout => \ULA24|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X32_Y1_N12
\ULA24|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[23]~input_o\) # (\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\sel[0]~input_o\ & ( (\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[23]~input_o\ & !\sel[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[23]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA24|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N18
\ULA24|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MUX_FINAL|saida_MUX~1_combout\ = ( \entradaA[22]~input_o\ & ( \ULA24|MUX_FINAL|saida_MUX~0_combout\ ) ) # ( !\entradaA[22]~input_o\ & ( \ULA24|MUX_FINAL|saida_MUX~0_combout\ ) ) # ( \entradaA[22]~input_o\ & ( !\ULA24|MUX_FINAL|saida_MUX~0_combout\ 
-- & ( (\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA24|somador_1bit|c_out~0_combout\ $ (((!\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & \ULA22|somador_1bit|c_out~combout\))))) ) ) ) # ( !\entradaA[22]~input_o\ & ( !\ULA24|MUX_FINAL|saida_MUX~0_combout\ & ( 
-- (\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA24|somador_1bit|c_out~0_combout\ $ (((!\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\) # (\ULA22|somador_1bit|c_out~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100011001100010000001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA22|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ULA24|somador_1bit|ALT_INV_c_out~0_combout\,
	datae => \ALT_INV_entradaA[22]~input_o\,
	dataf => \ULA24|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA24|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X32_Y1_N36
\ULA24|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador_1bit|c_out~combout\ = ( \entradaA[23]~input_o\ & ( ((!\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[22]~input_o\ & !\ULA22|somador_1bit|c_out~combout\)) # (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((!\ULA22|somador_1bit|c_out~combout\) # (\entradaA[22]~input_o\)))) # (\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\entradaA[23]~input_o\ & ( (\ULA24|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (\entradaA[22]~input_o\ & !\ULA22|somador_1bit|c_out~combout\)) # (\ULA23|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA22|somador_1bit|c_out~combout\) # (\entradaA[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001000000000111000101110001111111110111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA23|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA22|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ULA24|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[23]~input_o\,
	combout => \ULA24|somador_1bit|c_out~combout\);

-- Location: LABCELL_X32_Y1_N42
\ULA25|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA25|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[24]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (\entradaA[24]~input_o\ & 
-- (\ULA25|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\sel[1]~input_o\ & (!\entradaA[24]~input_o\ $ (!\ULA25|MUX_INVERTE_B|saida_MUX~0_combout\ $ (\ULA24|somador_1bit|c_out~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101101001000100010110100101110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA24|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA25|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N24
\ULA26|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA25|somador_1bit|c_out~2_combout\ & ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[25]~input_o\) # (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( !\ULA25|somador_1bit|c_out~2_combout\ & ( 
-- \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\entradaA[25]~input_o\) # (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) ) # ( \ULA25|somador_1bit|c_out~2_combout\ & ( !\sel[0]~input_o\ & ( (!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- (!\entradaA[25]~input_o\ & \sel[1]~input_o\)) # (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[25]~input_o\)) ) ) ) # ( !\ULA25|somador_1bit|c_out~2_combout\ & ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & 
-- (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (\entradaA[25]~input_o\))) # (\sel[1]~input_o\ & (!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\entradaA[25]~input_o\ $ (\ULA25|somador_1bit|c_out~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101101001000100011001100101110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_entradaA[25]~input_o\,
	datac => \ULA25|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	datae => \ULA25|somador_1bit|ALT_INV_c_out~2_combout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA26|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y1_N57
\ULA26|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|somador_1bit|c_out~combout\ = ( \ULA25|somador_1bit|c_out~1_combout\ & ( (!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & !\entradaA[25]~input_o\) ) ) # ( !\ULA25|somador_1bit|c_out~1_combout\ & ( (!\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & 
-- ((!\entradaA[25]~input_o\) # (!\ULA25|somador_1bit|c_out~2_combout\))) # (\ULA26|MUX_INVERTE_B|saida_MUX~0_combout\ & (!\entradaA[25]~input_o\ & !\ULA25|somador_1bit|c_out~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA25|somador_1bit|ALT_INV_c_out~2_combout\,
	dataf => \ULA25|somador_1bit|ALT_INV_c_out~1_combout\,
	combout => \ULA26|somador_1bit|c_out~combout\);

-- Location: LABCELL_X32_Y1_N6
\ULA27|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MUX_FINAL|saida_MUX~0_combout\ = ( \sel[0]~input_o\ & ( (!\sel[1]~input_o\ & ((\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\) # (\entradaA[26]~input_o\))) ) ) # ( !\sel[0]~input_o\ & ( (!\sel[1]~input_o\ & (\entradaA[26]~input_o\ & 
-- ((\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\sel[1]~input_o\ & (!\entradaA[26]~input_o\ $ (!\ULA26|somador_1bit|c_out~combout\ $ (!\ULA27|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101010110000010010101011001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[26]~input_o\,
	datab => \ULA26|somador_1bit|ALT_INV_c_out~combout\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA27|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_sel[0]~input_o\,
	combout => \ULA27|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N48
\ULA28|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaA[27]~input_o\ & ( (!\sel[0]~input_o\ & (!\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((!\ULA27|somador_1bit|c_out~combout\) # (!\sel[1]~input_o\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) # 
-- ( !\entradaA[27]~input_o\ & ( (!\sel[1]~input_o\ & (((\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & \sel[0]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\ULA27|somador_1bit|c_out~combout\ $ (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100110000000010010011000000110110111100000011011011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_entradaA[27]~input_o\,
	combout => \ULA28|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N42
\ULA29|somador_1bit|c_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador_1bit|c_out~0_combout\ = ( \entradaA[28]~input_o\ & ( !\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ ) ) # ( !\entradaA[28]~input_o\ & ( \ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[28]~input_o\,
	combout => \ULA29|somador_1bit|c_out~0_combout\);

-- Location: LABCELL_X31_Y1_N15
\ULA29|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaA[28]~input_o\ & ( (!\sel[1]~input_o\ & ((\sel[0]~input_o\) # (\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\))) ) ) # ( !\entradaA[28]~input_o\ & ( (!\sel[1]~input_o\ & 
-- (\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ & \sel[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datac => \ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_entradaA[28]~input_o\,
	combout => \ULA29|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X31_Y1_N24
\ULA29|MUX_FINAL|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MUX_FINAL|saida_MUX~1_combout\ = ( \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \entradaA[27]~input_o\ & ( ((!\ULA29|somador_1bit|c_out~0_combout\ & \ULA2|MUX_FINAL|saida_MUX~1_combout\)) # (\ULA29|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( 
-- !\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \entradaA[27]~input_o\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA27|somador_1bit|c_out~combout\ $ (\ULA29|somador_1bit|c_out~0_combout\)))) # (\ULA29|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( 
-- \ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\entradaA[27]~input_o\ & ( ((\ULA2|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA27|somador_1bit|c_out~combout\ $ (\ULA29|somador_1bit|c_out~0_combout\)))) # (\ULA29|MUX_FINAL|saida_MUX~0_combout\) ) ) ) # ( 
-- !\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\entradaA[27]~input_o\ & ( ((\ULA29|somador_1bit|c_out~0_combout\ & \ULA2|MUX_FINAL|saida_MUX~1_combout\)) # (\ULA29|MUX_FINAL|saida_MUX~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000010011111111100001001111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA29|somador_1bit|ALT_INV_c_out~0_combout\,
	datac => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	datad => \ULA29|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[27]~input_o\,
	combout => \ULA29|MUX_FINAL|saida_MUX~1_combout\);

-- Location: LABCELL_X31_Y1_N51
\ULA29|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|somador_1bit|c_out~combout\ = ( \entradaA[28]~input_o\ & ( ((!\ULA27|somador_1bit|c_out~combout\ & ((\entradaA[27]~input_o\) # (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA27|somador_1bit|c_out~combout\ & 
-- (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[27]~input_o\))) # (\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\entradaA[28]~input_o\ & ( (\ULA29|MUX_INVERTE_B|saida_MUX~0_combout\ & ((!\ULA27|somador_1bit|c_out~combout\ & 
-- ((\entradaA[27]~input_o\) # (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\ULA27|somador_1bit|c_out~combout\ & (\ULA28|MUX_INVERTE_B|saida_MUX~0_combout\ & \entradaA[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001011000000100000101100101111101111110010111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ULA28|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	dataf => \ALT_INV_entradaA[28]~input_o\,
	combout => \ULA29|somador_1bit|c_out~combout\);

-- Location: LABCELL_X43_Y1_N18
\ULA30|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaA[29]~input_o\ & ( (!\sel[0]~input_o\ & (!\ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((!\sel[1]~input_o\) # (\ULA29|somador_1bit|c_out~combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) # ( 
-- !\entradaA[29]~input_o\ & ( (!\sel[1]~input_o\ & (\ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ & ((\sel[0]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\ULA30|MUX_INVERTE_B|saida_MUX~0_combout\ $ (!\ULA29|somador_1bit|c_out~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000100010000101000010001001100011101010100110001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ULA30|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|somador_1bit|ALT_INV_c_out~combout\,
	datad => \ALT_INV_sel[0]~input_o\,
	dataf => \ALT_INV_entradaA[29]~input_o\,
	combout => \ULA30|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y1_N54
\ULA31|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MUX_FINAL|saida_MUX~0_combout\ = ( \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA30|somador_1bit|c_out~2_combout\ & ( (!\sel[0]~input_o\ & ((\entradaA[30]~input_o\))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( 
-- !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( \ULA30|somador_1bit|c_out~2_combout\ & ( (!\sel[1]~input_o\ & (\entradaA[30]~input_o\ & \sel[0]~input_o\)) # (\sel[1]~input_o\ & (!\entradaA[30]~input_o\ & !\sel[0]~input_o\)) ) ) ) # ( 
-- \ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA30|somador_1bit|c_out~2_combout\ & ( (!\sel[0]~input_o\ & (!\entradaA[30]~input_o\ $ (((!\sel[1]~input_o\) # (\ULA30|somador_1bit|c_out~1_combout\))))) # (\sel[0]~input_o\ & (!\sel[1]~input_o\)) ) ) ) # ( 
-- !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\ & ( !\ULA30|somador_1bit|c_out~2_combout\ & ( (!\sel[1]~input_o\ & (((\entradaA[30]~input_o\ & \sel[0]~input_o\)))) # (\sel[1]~input_o\ & (!\sel[0]~input_o\ & (!\ULA30|somador_1bit|c_out~1_combout\ $ 
-- (!\entradaA[30]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000001010010010111010101001010000000010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[1]~input_o\,
	datab => \ULA30|somador_1bit|ALT_INV_c_out~1_combout\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ALT_INV_sel[0]~input_o\,
	datae => \ULA31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA30|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA31|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X43_Y1_N3
\ULA31|somador_1bit|c_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|somador_1bit|c_out~combout\ = ( \ULA30|somador_1bit|c_out~2_combout\ & ( (!\entradaA[30]~input_o\ & !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\) ) ) # ( !\ULA30|somador_1bit|c_out~2_combout\ & ( (!\entradaA[30]~input_o\ & 
-- ((!\ULA30|somador_1bit|c_out~1_combout\) # (!\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\))) # (\entradaA[30]~input_o\ & (!\ULA30|somador_1bit|c_out~1_combout\ & !\ULA31|MUX_INVERTE_B|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010100000111110101010000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[30]~input_o\,
	datac => \ULA30|somador_1bit|ALT_INV_c_out~1_combout\,
	datad => \ULA31|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA30|somador_1bit|ALT_INV_c_out~2_combout\,
	combout => \ULA31|somador_1bit|c_out~combout\);

-- Location: LABCELL_X43_Y1_N42
\ULA32|MUX_FINAL|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MUX_FINAL|saida_MUX~0_combout\ = ( \entradaA[31]~input_o\ & ( (!\sel[0]~input_o\ & (!\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\ $ (((!\ULA31|somador_1bit|c_out~combout\) # (!\sel[1]~input_o\))))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\)))) ) ) # 
-- ( !\entradaA[31]~input_o\ & ( (!\sel[0]~input_o\ & (\sel[1]~input_o\ & (!\ULA31|somador_1bit|c_out~combout\ $ (\ULA32|MUX_INVERTE_B|saida_MUX~0_combout\)))) # (\sel[0]~input_o\ & (((!\sel[1]~input_o\ & \ULA32|MUX_INVERTE_B|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000110100000010000011010000110100111110000011010011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA31|somador_1bit|ALT_INV_c_out~combout\,
	datab => \ALT_INV_sel[0]~input_o\,
	datac => \ALT_INV_sel[1]~input_o\,
	datad => \ULA32|MUX_INVERTE_B|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[31]~input_o\,
	combout => \ULA32|MUX_FINAL|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y1_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ULA5|MUX_FINAL|saida_MUX~0_combout\ & ( (!\ULA4|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA3|MUX_FINAL|saida_MUX~0_combout\ & !\ULA2|MUX_FINAL|saida_MUX~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA4|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA3|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA2|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA5|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X32_Y1_N3
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\ULA6|MUX_FINAL|saida_MUX~0_combout\ & ( (\Equal0~0_combout\ & (!\ULA8|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA7|MUX_FINAL|saida_MUX~0_combout\ & !\ULA9|MUX_FINAL|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ULA8|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA7|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA9|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA6|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X24_Y2_N27
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\ULA13|MUX_FINAL|saida_MUX~0_combout\ & ( (!\ULA10|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA11|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA12|MUX_FINAL|saida_MUX~0_combout\ & \Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA10|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA11|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA12|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	dataf => \ULA13|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X25_Y2_N3
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\ULA16|MUX_FINAL|saida_MUX~0_combout\ & ( (\Equal0~2_combout\ & (!\ULA15|MUX_FINAL|saida_MUX~0_combout\ & !\ULA14|MUX_FINAL|saida_MUX~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datac => \ULA15|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA14|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA16|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X25_Y2_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\ULA17|MUX_FINAL|saida_MUX~0_combout\ & ( (!\ULA18|MUX_FINAL|saida_MUX~0_combout\ & (\Equal0~3_combout\ & !\ULA19|MUX_FINAL|saida_MUX~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA18|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ULA19|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA17|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X31_Y1_N54
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\ULA21|MUX_FINAL|saida_MUX~0_combout\ & ( (!\ULA20|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA22|MUX_FINAL|saida_MUX~0_combout\ & (\Equal0~4_combout\ & !\ULA23|MUX_FINAL|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA22|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ULA23|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA21|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~5_combout\);

-- Location: LABCELL_X31_Y1_N9
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\ULA26|MUX_FINAL|saida_MUX~0_combout\ & ( (!\ULA24|MUX_FINAL|saida_MUX~1_combout\ & (!\ULA25|MUX_FINAL|saida_MUX~0_combout\ & \Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA25|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ULA26|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~6_combout\);

-- Location: LABCELL_X43_Y1_N12
\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = ( \Equal0~6_combout\ & ( (!\ULA27|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA28|MUX_FINAL|saida_MUX~0_combout\ & !\ULA29|MUX_FINAL|saida_MUX~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA28|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA29|MUX_FINAL|ALT_INV_saida_MUX~1_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LABCELL_X43_Y1_N24
\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( \Equal0~7_combout\ & ( (!\ULA30|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA32|MUX_FINAL|saida_MUX~0_combout\ & (!\ULA31|MUX_FINAL|saida_MUX~0_combout\ & !\ULA1|MUX_FINAL|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA32|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA31|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA1|MUX_FINAL|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: MLABCELL_X23_Y28_N0
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


