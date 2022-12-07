library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_32bit is
    port
    (	slt       :  in std_logic;
		entradaA :  in std_logic;
		entradaB :  in std_logic;
      inverteA, inverteB :  in std_logic;
      sel   :  in std_logic_vector(1 downto 0);
		carryIn      :  in std_logic;
		carryOut     :  out std_logic;
		saida :  out std_logic;
		overflow  :  out std_logic
    );
end entity;


architecture comportamento of ULA_32bit is
	
	signal MUX_INVERTE_A_OUT : std_logic;
	signal MUX_INVERTE_B_OUT : std_logic;
	signal somador_OUT       : std_logic;
	signal MUX_FINAL_OUT     : std_logic;


begin

MUX_INVERTE_A : entity work.muxGenerico2x1_1bit
		port map(
						entradaA_MUX => entradaA,
						entradaB_MUX => not(entradaA),
						seletor_MUX  => inverteA,
						saida_MUX    => MUX_INVERTE_A_OUT
		);

MUX_INVERTE_B : entity work.muxGenerico2x1_1bit
		port map(
						entradaA_MUX => entradaB,
						entradaB_MUX => not(entradaB),
						seletor_MUX  => inverteB,
						saida_MUX    => MUX_INVERTE_B_OUT
		);

		
somador_1bit : entity work.somadorGenerico_1bit
		 port map (
						entradaA  => MUX_INVERTE_A_OUT, 
						entradaB  => MUX_INVERTE_B_OUT,
						c_in      => carryIn,
						c_out     => carryOut,
						resultado => somador_OUT
		);
		
MUX_FINAL : entity work.muxGenerico4x1_1bit generic map(larguraDados => 1)
		port map(
						entradaA_MUX => MUX_INVERTE_B_OUT and MUX_INVERTE_A_OUT,
						entradaB_MUX => MUX_INVERTE_B_OUT or MUX_INVERTE_A_OUT,
						entradaC_MUX => somador_OUT,
						entradaD_MUX => slt,
						seletor_MUX  => sel,
						saida_MUX    => MUX_FINAL_OUT
		);
		
saida <= MUX_FINAL_OUT;		
overflow <= (carryOut xor carryIn) xor somador_OUT;

end architecture;

