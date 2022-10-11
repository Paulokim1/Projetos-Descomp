library IEEE;
use ieee.std_logic_1164.all;

entity SevenSeg is
    port
    (
	   Wr : in std_logic;
	   Data_IN : in std_logic_vector(3 downto 0);
	   A5 : in std_logic;
	   Decoder1_IN : in std_logic;
	   Decoder2_IN : in std_logic_vector(5 downto 0);
	   CLK : in std_logic;  
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0)
    );
end entity;

architecture comportamento of SevenSeg is

signal REG0_OUT, REG1_OUT, REG2_OUT, REG3_OUT, REG4_OUT, REG5_OUT : std_logic_vector(3 downto 0);  
  
    
begin

REG0 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG0_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(0) AND A5, CLK => CLK);
			 
REG1 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG1_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(1) AND A5, CLK => CLK);

REG2 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG2_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(2) AND A5, CLK => CLK);

REG3 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG3_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(3) AND A5, CLK => CLK);

REG4 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG4_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(4) AND A5, CLK => CLK);

REG5 : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Data_IN, DOUT => REG5_OUT, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(5) AND A5, CLK => CLK);

DECODER0 : entity work.conversorHex7Seg
          port map (dadohex => REG0_OUT, saida7seg => HEX0);
			 
DECODER1 : entity work.conversorHex7Seg
          port map (dadohex => REG1_OUT, saida7seg => HEX1);
			 
DECODER2 : entity work.conversorHex7Seg
          port map (dadohex => REG2_OUT, saida7seg => HEX2);
			 
DECODER3 : entity work.conversorHex7Seg
          port map (dadohex => REG3_OUT, saida7seg => HEX3);
			 
DECODER4 : entity work.conversorHex7Seg
          port map (dadohex => REG4_OUT, saida7seg => HEX4);
			 
DECODER5 : entity work.conversorHex7Seg
          port map (dadohex => REG5_OUT, saida7seg => HEX5);
			     
end architecture;