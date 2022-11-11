library ieee;
use ieee.std_logic_1164.all;

entity decoderGenerico is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoderGenerico is

  constant LW  : std_logic_vector(5 downto 0) := "100011";
  constant SW  : std_logic_vector(5 downto 0) := "101011";
  constant BEQ : std_logic_vector(5 downto 0) := "000100";
 

  begin
  
	saida <= "110010" when entrada = LW else
				"000001" when entrada = SW else
				"000110" when entrada = BEQ else
				"000000";  -- NOP para os entradas Indefinidas
end architecture;
