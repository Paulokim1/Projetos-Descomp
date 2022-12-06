library ieee;
use ieee.std_logic_1164.all;

entity estendeSinalGenerico is
    generic
    (
        larguraDadoEntrada : natural  :=    16;
        larguraDadoSaida   : natural  :=    32
    );
    port
    (
        -- Input ports
        estendeSinal_IN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
		  ZeroExtImm : in std_logic;
        -- Output ports
        estendeSinal_OUT: out std_logic_vector(larguraDadoSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinalGenerico is

	 signal MUX_ZERO_IMM_OUT : std_logic_vector(15 downto 0);
	
begin

	MUX_ZERO_IMED: entity work.muxGenerico2x1 generic map(larguraDados => 	16)
		port map (
						entradaA_MUX => estendeSinal_IN, 
						entradaB_MUX => 16x"00", 
						seletor_MUX  => ZeroExtImm, 
						saida_MUX    => MUX_ZERO_IMM_OUT
		);

    estendeSinal_OUT <= (larguraDadoSaida-1 downto larguraDadoEntrada => MUX_ZERO_IMM_OUT(larguraDadoEntrada-1) ) & estendeSinal_IN;
								

end architecture;

--16x"00" & estendeSinal_IN;