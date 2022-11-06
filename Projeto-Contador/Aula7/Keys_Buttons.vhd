library IEEE;
use ieee.std_logic_1164.all;

entity Keys_Buttons is
    port
    (
	  SW : in std_logic_vector(9 downto 0);
	  Data_Address : in std_logic_vector(8 downto 0);
	  Wr : in std_logic;
	  KEY : in std_logic_vector(3 downto 0);
	  FPGA_RESET_N : in std_logic;
	  Rd : in std_logic;
	  A5 : in std_logic;
	  Decoder1_IN : in std_logic;
	  Decoder2_IN : in std_logic_vector(4 downto 0);
	  KEY_0, KEY_1, KEY_2, KEY_3 : in std_logic;
	  Saida_Dados : out std_logic_vector(7 downto 0)
    );
end entity;

architecture comportamento of Keys_Buttons is

signal Debounce_OUT_0 : std_logic;
signal Debounce_OUT_1 : std_logic;
signal Debounce_OUT_2 : std_logic;
signal Debounce_OUT_3 : std_logic;
    
begin

DEBOUNCER0: entity work.FlipFlop
		port map(
			DIN 		=> '1',
			DOUT 		=> Debounce_OUT_0,
			ENABLE 	=> '1',
			CLK		=> KEY_0,
			RST      => (Data_Address(8) AND
							Data_Address(7) AND
							Data_Address(6) AND
							Data_Address(5) AND
							Data_Address(4) AND
							Data_Address(3) AND
							Data_Address(2) AND
							Data_Address(1) AND
							Data_Address(0) AND
							Wr)
	);
	
	DEBOUNCER1: entity work.FlipFlop
		port map(
			DIN 		=> '1',
			DOUT 		=> Debounce_OUT_1,
			ENABLE 	=> '1',
			CLK		=> KEY_1,
			RST      => Data_Address(8) AND
							Data_Address(7) AND
							Data_Address(6) AND
							Data_Address(5) AND
							Data_Address(4) AND
							Data_Address(3) AND
							Data_Address(2) AND
							Data_Address(1) AND
							NOT (Data_Address(0)) AND
							Wr
	);
	
	DEBOUNCER2: entity work.FlipFlop
		port map(
			DIN 		=> '1',
			DOUT 		=> Debounce_OUT_2,
			ENABLE 	=> '1',
			CLK		=> KEY_2,
			RST      => Data_Address(8) AND
							Data_Address(7) AND
							Data_Address(6) AND
							Data_Address(5) AND
							Data_Address(4) AND
							Data_Address(3) AND
							Data_Address(2) AND
							NOT (Data_Address(1)) AND
							NOT (Data_Address(0)) AND
							Wr
	);
	
	DEBOUNCER3: entity work.FlipFlop
		port map(
			DIN 		=> '1',
			DOUT 		=> Debounce_OUT_3,
			ENABLE 	=> '1',
			CLK		=> KEY_3,
			RST      => Data_Address(8) AND
							Data_Address(7) AND
							Data_Address(6) AND
							Data_Address(5) AND
							Data_Address(4) AND
							Data_Address(3) AND
							NOT (Data_Address(2)) AND
							NOT (Data_Address(1)) AND
							NOT (Data_Address(0)) AND
							Wr
	);


	Tri_8 : entity work.buffer_3_state_8portas 
	        port map (
				entrada => SW(7 downto 0), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(0) AND Decoder1_IN,
				saida => Saida_Dados 
				);
				
	Tri_1_SW8 : entity work.buffer_3_state_8portas 
	        port map (
				entrada => "0000000" & SW(8), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(1) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
	Tri_1_SW9 : entity work.buffer_3_state_8portas 
	        port map (
				entrada => "0000000" & SW(9), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(2) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
	Tri_1_K0 : entity work.buffer_3_state_8portas
	        port map (
				entrada => "0000000" & Debounce_OUT_0,
				habilita => Rd AND A5 AND Decoder2_IN(0) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
	Tri_1_K1 : entity work.buffer_3_state_8portas
	        port map (
				entrada => "0000000" & Debounce_OUT_1, 
				habilita => Rd AND A5 AND Decoder2_IN(1) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
	Tri_1_K2 : entity work.buffer_3_state_8portas
	        port map (
				entrada => "0000000" & Debounce_OUT_2, 
				habilita => Rd AND A5 AND Decoder2_IN(2) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
			
	Tri_1_K3 : entity work.buffer_3_state_8portas
	        port map (
				entrada => "0000000" & Debounce_OUT_3, 
				habilita => Rd AND A5 AND Decoder2_IN(3) AND Decoder1_IN,
				saida => Saida_Dados
				);
				
	Tri_1_RESET : entity work.buffer_3_state_8portas
	        port map (
				entrada => "0000000" & NOT (FPGA_RESET_N), 
				habilita => Rd AND A5 AND Decoder2_IN(4) AND Decoder1_IN,
				saida => Saida_Dados
				);
							     
end architecture;