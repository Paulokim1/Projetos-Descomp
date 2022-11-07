library ieee;
use ieee.std_logic_1164.all;

entity Leds is
  port ( 
		  CLK : in std_logic;
      Wr : in std_logic;
		A5 : in std_logic;
      Data : in std_logic_vector(7 downto 0);
      Decoder1_IN : in std_logic;
      Decoder2_IN : in std_logic_vector(2 downto 0);
      LEDR : out std_logic_vector(7 downto 0);
      LED8 : out std_logic;
      LED9 : out std_logic
  );
end entity;

architecture comportamento of Leds is
  begin
  
-- O port map completo do FLIPFLOP1:
FLIPFLOP1 : entity work.FlipFlop
          port map (DIN => Data(0), DOUT => LED9, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(2) AND NOT(A5), CLK => CLK, RST => '0');
			 
-- O port map completo do FLIPFLOP1:
FLIPFLOP2 : entity work.FlipFlop
          port map (DIN => Data(0), DOUT => LED8, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(1) AND NOT(A5), CLK => CLK, RST => '0');
			 
-- O port map completo do REG1:
REG1 : entity work.registradorGenerico
          port map (DIN => Data, DOUT => LEDR, ENABLE => Wr AND Decoder1_IN AND Decoder2_IN(0) AND NOT(A5), CLK => CLK);
    
    
end architecture;