library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorGenerico_1bit is
    port
    (
      entradaA  : in std_logic;
		entradaB  : in std_logic;
		c_in      : in std_logic;
		c_out     : out std_logic;
		resultado : out std_logic
		  
    );
end entity;

architecture comportamento of somadorGenerico_1bit is
  begin
  
  resultado <= c_in xor (entradaA xor entradaB);
  c_out     <= (entradaA and entradaB) or (c_in and (entradaA xor entradaB));
  
    
end architecture;