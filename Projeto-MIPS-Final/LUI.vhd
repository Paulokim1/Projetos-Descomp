library ieee;
use ieee.std_logic_1164.all;

entity LUI is
    generic
    (
        larguraDados : natural  := 32    
	 );
    port
    (
		  imediato : in std_logic_vector(15 downto 0);
		  saida : out std_logic_vector(larguraDados-1 downto 0)
    );
end entity;

architecture comportamento of LUI is
begin

    saida <= imediato & 16x"00";

end architecture;