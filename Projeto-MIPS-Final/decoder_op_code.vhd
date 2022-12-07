library ieee;
use ieee.std_logic_1164.all;

entity decoder_op_code is
  port ( entrada : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoder_op_code is

  constant LW  : std_logic_vector(5 downto 0)    := "100011";
  constant SW  : std_logic_vector(5 downto 0)    := "101011";
  constant BEQ  : std_logic_vector(5 downto 0)   := "000100";
  constant JMP  : std_logic_vector(5 downto 0)   := "000010";
  constant LUI  : std_logic_vector(5 downto 0)   := "001111";
  constant ADDI  : std_logic_vector(5 downto 0)  := "001000";
  constant ORI  : std_logic_vector(5 downto 0)   := "001101";
  constant ANDI  : std_logic_vector(5 downto 0)  := "001100";
  constant SLTI  : std_logic_vector(5 downto 0)  := "001010";
  constant BNE  : std_logic_vector(5 downto 0)   := "000101";
  constant JAL  : std_logic_vector(5 downto 0)   := "000011";
  
  constant ANDOP : std_logic_vector(3 downto 0)  := "0000";
  constant OROP  : std_logic_vector(3 downto 0)  := "0001";
  constant ADD    : std_logic_vector(3 downto 0) := "0010";
  constant SUB    : std_logic_vector(3 downto 0) := "0110";
  constant SLT    : std_logic_vector(3 downto 0) := "0111";

  begin
saida <= ADD    when entrada = LW OR entrada = SW OR entrada = ADDI else
         SUB    when entrada = BEQ OR entrada = BNE else
			ANDOP  when entrada = ANDI else
			OROP   when entrada = ORI else
			SLT    when entrada = SLTI else
         "0000";  -- NOP para os entradas Indefinidas
end architecture;	