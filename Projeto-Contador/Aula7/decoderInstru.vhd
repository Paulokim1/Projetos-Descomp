library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
			flag_igual : in std_logic;
         saida_controle : out std_logic_vector(12 downto 0);
			seletor_mux_pc : out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant ANDI  : std_logic_vector(3 downto 0) := "1011";

  begin
saida_controle <= "0000000000000" when opcode = NOP else
                  "0000001010010" when opcode = LDA else
                  "0000001001010" when opcode = SOMA else
                  "0000001000010" when opcode = SUB else
						"0000011100010" when opcode = ANDI else
                  "0000011010000" when opcode = LDI else
			         "0000000000001" when opcode = STA else
			         "0100000000000" when opcode = JMP else
			         "0000100000000" when opcode = JEQ else
			         "0000000000110" when opcode = CEQ else
						"1001000000000" when opcode = JSR else
						"0010000000000" when opcode = RET else
                  "0000000000000";  -- NOP para os opcodes Indefinidos
						
seletor_mux_pc <= "10" when (opcode = RET) else
						"01" when (opcode = JMP) or ((opcode = JEQ) and (flag_igual = '1')) or (opcode = JSR) else
                  "00";
end architecture;