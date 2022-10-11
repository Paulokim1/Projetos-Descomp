library IEEE;
use ieee.std_logic_1164.all;

entity Keys_Buttons is
    port
    (
	  SW : in std_logic_vector(9 downto 0);
	  KEY : in std_logic_vector(3 downto 0);
	  FPGA_RESET : in std_logic;
	  Rd : in std_logic;
	  A5 : in std_logic;
	  Decoder1_IN : in std_logic;
	  Decoder2_IN : in std_logic_vector(4 downto 0);
	  Saida_Dados : out std_logic_vector(7 downto 0)
    );
end entity;

architecture comportamento of Keys_Buttons is


    
begin

	Tri_8 : entity work.buffer_3_state_8portas 
	        port map (
				entrada => SW(7 downto 0), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(0) AND Decoder1_IN,
				saida => Saida_Dados 
				);
				
	Tri_1_SW8 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => SW(8), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(1) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
	Tri_1_SW9 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => SW(9), 
				habilita => Rd AND NOT(A5) AND Decoder2_IN(2) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
	Tri_1_K0 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => KEY(0), 
				habilita => Rd AND A5 AND Decoder2_IN(0) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
	Tri_1_K1 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => KEY(1), 
				habilita => Rd AND A5 AND Decoder2_IN(1) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
	Tri_1_K2 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => KEY(2), 
				habilita => Rd AND A5 AND Decoder2_IN(2) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
			
	Tri_1_K3 : entity work.buffer_3_state_1porta 
	        port map (
				entrada => KEY(3), 
				habilita => Rd AND A5 AND Decoder2_IN(3) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);
				
	Tri_1_RESET : entity work.buffer_3_state_1porta 
	        port map (
				entrada => FPGA_RESET, 
				habilita => Rd AND A5 AND Decoder2_IN(4) AND Decoder1_IN,
				saida => Saida_Dados(0) 
				);

			     
end architecture;