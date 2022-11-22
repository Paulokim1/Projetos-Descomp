library ieee;
use ieee.std_logic_1164.all;

entity decoder_op_code is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoder_op_code is

  constant LW  : std_logic_vector(5 downto 0)    := "100011";
  constant SW  : std_logic_vector(5 downto 0)    := "101011";
  constant BEQ  : std_logic_vector(5 downto 0)   := "000100";
  constant JMP  : std_logic_vector(5 downto 0)   := "000010";
  
  constant ADD    : std_logic_vector(2 downto 0) := "010";
  constant SUB    : std_logic_vector(2 downto 0) := "110";

  begin
saida <= ADD    when entrada = LW or SW else
         SUB    when entrada = BEQ else
         "XXX";  -- NOP para os entradas Indefinidas
end architecture;