library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  


entity deslocadorGenerico is
    generic (
		  larguraDadoEntrada : natural  :=    32;
        larguraDadoSaida   : natural  :=    29;
		  larguraDados       : natural  :=    32
	 );
    port (
        sinalIN : in  STD_LOGIC_VECTOR(larguraDadoEntrada-1 downto 0);
        sinalOUT : out STD_LOGIC_VECTOR(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of deslocadorGenerico is
    begin
	 
        sinalOUT <= sinalIn(larguraDados-1 downto 0) & "00";
		  
end architecture;