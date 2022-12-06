library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROMMIPS IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
       memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) 
	);
end entity;

architecture assincrona OF ROMMIPS IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  
  -- Opcodes
  constant ANDOP  : std_logic_vector(5 downto 0) := "000000";
  constant OROP  : std_logic_vector(5 downto 0)  := "000000";
  constant ADD  : std_logic_vector(5 downto 0)   := "000000";
  constant SUB  : std_logic_vector(5 downto 0)   := "000000";
  constant SLT  : std_logic_vector(5 downto 0)   := "000000";
  constant LW  : std_logic_vector(5 downto 0)    := "100011";
  constant SW  : std_logic_vector(5 downto 0)    := "101011";
  constant BEQ  : std_logic_vector(5 downto 0)   := "000100";
  constant JMP  : std_logic_vector(5 downto 0)   := "000010";
  
  -- Functs
  constant ANDOP_FUNCT : std_logic_vector(5 downto 0) := "100100";
  constant OROP_FUNCT : std_logic_vector(5 downto 0)  := "100101";
  constant ADD_FUNCT : std_logic_vector(5 downto 0)   := "100000";
  constant SUB_FUNCT : std_logic_vector(5 downto 0)   := "100010";
  constant SLT_FUNCT : std_logic_vector(5 downto 0)   := "101010";

--   function initMemory
--         return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
--   begin
--         -- Instrucoes R: (opcode(6) Rs(5) Rt(5) Rd(5) shamt(5) funct(6))
-- --		  tmp(0) := ANDOP & "01000" & "01001" & "01010" & "00000" & ANDOP_FUNCT; -- AND
-- --		  tmp(0) := OROP & "01000" & "01001" & "01010" & "00000" & OROP_FUNCT;   -- OR
-- --		  tmp(0) := ADD & "01001" & "01010" & "01011" & "00000" & ADD_FUNCT;     -- ADD
-- --		  tmp(0) := SUB & "01001" & "01010" & "01011" & "00000" & SUB_FUNCT;     -- SUB
-- --		  tmp(0) := SLT & "01001" & "01010" & "01011" & "00000" & SLT_FUNCT;     -- SLT
		  
-- 		  -- Instrucoes I: (opcode(6) Rs(5) Rt(5) Imediato(16))
-- --      tmp(0) := SW & "01000" & "01001" & "0000000000000000";  -- SW
-- --		  tmp(1) := LW & "01000" & "01011" & "0000000000000000";  -- LW
-- --      tmp(2) := BEQ & "01100" & "01011" & "0000000000010010"; -- BEQ 
		  
-- 		  -- Instrucoes J: (opcode(6) Imediato(26))
-- --		  tmp(0) := JMP & "00000000000000000000001000";  -- JMP
		  
--         return tmp;
--     end initMemory;

--     signal memROM : blocoMemoria := initMemory;

signal memROM: blocoMemoria;
attribute ram_init_file : string;
attribute ram_init_file of memROM:
signal is "initROM.mif";

-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;