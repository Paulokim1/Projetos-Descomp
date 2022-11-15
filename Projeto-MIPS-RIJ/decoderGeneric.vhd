library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  
  port ( entradaA : in std_logic_vector(5 downto 0);
			entradaB : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(10 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

  constant ANDOP  : std_logic_vector(5 downto 0) := "000000";
  constant OROP  : std_logic_vector(5 downto 0)  := "000000";
  constant ADD  : std_logic_vector(5 downto 0)   := "000000";
  constant SUB  : std_logic_vector(5 downto 0)   := "000000";
  constant SLT  : std_logic_vector(5 downto 0)   := "000000";
  constant LW  : std_logic_vector(5 downto 0)    := "100011";
  constant SW  : std_logic_vector(5 downto 0)    := "101011";
  constant BEQ  : std_logic_vector(5 downto 0)   := "000100";
  constant JMP  : std_logic_vector(5 downto 0)   := "000010";
  
  constant ANDOP_FUNCT : std_logic_vector(5 downto 0) := "100100";
  constant OROP_FUNCT : std_logic_vector(5 downto 0)  := "100101";
  constant ADD_FUNCT : std_logic_vector(5 downto 0)   := "100000";
  constant SUB_FUNCT : std_logic_vector(5 downto 0)   := "100010";
  constant SLT_FUNCT : std_logic_vector(5 downto 0)   := "101010";


  begin
saida <= "01100100000" when entradaA = ANDOP  AND entradaB = ANDOP_FUNCT  else
         "01100110000" when entradaA = OROP AND entradaB = OROP_FUNCT else
         "01100010000" when entradaA = ADD AND entradaB = ADD_FUNCT else
         "01100000000" when entradaA = SUB AND entradaB = SUB_FUNCT else
         "01101000000" when entradaA = SLT AND entradaB = SLT_FUNCT else
			"0011XXX1010" when entradaA = LW else 
         "0001XXXX001" when entradaA = SW else
			"0000111X1XX" when entradaA = BEQ else
         "1XXXXXXXXXX" when entradaA = JMP else
         "00000000000";  -- NOP para os entradas Indefinidas
end architecture;