library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity buffer_3_state_Generico is
    generic (
        larguraDados : natural := 1
    );
    port (
		  entrada  : in std_logic_vector(larguraDados-1 downto 0);
        habilita : in std_logic;
        saida    : out std_logic_vector(larguraDados-1 downto 0);
        );
end entity;

architecture comportamento of buffer_3_state_Generico is

begin
-- A saida esta ativa quando o habilita = 1.
    saida <= "ZZZZZZZZ" when (habilita = '0') else entrada;
end architecture;