library ieee;
use ieee.std_logic_1164.all;

entity decoder_funct is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoder_funct is

  constant ANDOP_FUNCT : std_logic_vector(5 downto 0) := "100100";
  constant OROP_FUNCT : std_logic_vector(5 downto 0)  := "100101";
  constant ADD_FUNCT : std_logic_vector(5 downto 0)   := "100000";
  constant SUB_FUNCT : std_logic_vector(5 downto 0)   := "100010";
  constant SLT_FUNCT : std_logic_vector(5 downto 0)   := "101010";
  constant JR_FUNCT  : std_logic_vector(5 downto 0)   := "001000";
  constant NOR_FUNCT : std_logic_vector(5 downto 0)   := "100111";
  

  constant AND_OP : std_logic_vector(3 downto 0) := "0000";
  constant OR_OP  : std_logic_vector(3 downto 0) := "0001";
  constant NOR_OP : std_logic_vector(3 downto 0) := "1100";
  constant ADD    : std_logic_vector(3 downto 0) := "0010";
  constant SUB    : std_logic_vector(3 downto 0) := "0110";
  constant SLT    : std_logic_vector(3 downto 0) := "0111";

  begin
saida <= AND_OP when entrada = ANDOP_FUNCT else
         OR_OP  when entrada = OROP_FUNCT  else
			NOR_OP when entrada = NOR_FUNCT else
         ADD    when entrada = ADD_FUNCT else
         SUB    when entrada = SUB_FUNCT else
         SLT    when entrada = SLT_FUNCT else
         "0000";  -- NOP para os entradas Indefinidas
end architecture;