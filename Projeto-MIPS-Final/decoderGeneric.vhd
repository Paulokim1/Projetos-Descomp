library ieee;
use ieee.std_logic_1164.all;

entity decoderGeneric is
  
  port ( entradaA : in std_logic_vector(5 downto 0);
			entradaB : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(13 downto 0)
  );
end entity;

architecture comportamento of decoderGeneric is

 -- GRUPO A:

  constant ANDOP  : std_logic_vector(5 downto 0) := "000000";
  constant OROP  : std_logic_vector(5 downto 0)  := "000000";
  constant ADD  : std_logic_vector(5 downto 0)   := "000000";
  constant SUB  : std_logic_vector(5 downto 0)   := "000000";
  constant SLT  : std_logic_vector(5 downto 0)   := "000000";
  constant LW  : std_logic_vector(5 downto 0)    := "100011";
  constant SW  : std_logic_vector(5 downto 0)    := "101011";
  constant BEQ  : std_logic_vector(5 downto 0)   := "000100";
  constant JMP  : std_logic_vector(5 downto 0)   := "000010";
  
 -- GRUPO B:

  constant LUI  : std_logic_vector(5 downto 0)   := "001111";
  constant ADDI  : std_logic_vector(5 downto 0)  := "001000";
  constant ORI  : std_logic_vector(5 downto 0)   := "001101";
  constant ANDI  : std_logic_vector(5 downto 0)  := "001100";
  constant SLTI  : std_logic_vector(5 downto 0)  := "001010";
  constant BNE  : std_logic_vector(5 downto 0)   := "000101";
  constant JAL  : std_logic_vector(5 downto 0)   := "000011";
  constant JR  : std_logic_vector(5 downto 0)    := "000000";
  
 -- EXTRAS:
 
  constant NOROP : std_logic_vector(5 downto 0)  := "000000";


  begin
saida <= "00101010000000" when entradaA = ANDOP else
         "00101010000000" when entradaA = OROP else
         "00101010000000" when entradaA = ADD else
         "00101010000000" when entradaA = SUB else
         "00101010000000" when entradaA = SLT else
			"00001100100100" when entradaA = LW else 
         "00000100000010" when entradaA = SW else
			"00000000010000" when entradaA = BEQ else
         "10000000000000" when entradaA = JMP else
			"00001001100000" when entradaA = LUI else
			"00001100000000" when entradaA = ADDI else
			"00011100000000" when entradaA = ORI else
			"00011100000000" when entradaA = ANDI else
			"00001100000000" when entradaA = SLTI else
			"00000000001000" when entradaA = BNE else
			"11001001000000" when entradaA = JAL else
			"10100010000001" when entradaA = JR else
			"00101010000000" when entradaA = NOROP else
         "00000000000000";  -- NOP para os entradas Indefinidas
			
end architecture;

-- mux_PC_BEQ/JMP, mux_RT/RD(2), SignExtImm/ZeroExtImm, HabEscritaReg, mux_RT/Imm, Tipo_R, mux_ULA/Mem(2), BEQ, BNE, HabLeituraMem, HabEscritaMem, HabJR