library ieee;
use ieee.std_logic_1164.all;

entity UnidadeControleULA is
  
  port ( opcode    : in std_logic_vector(5 downto 0);
         funct     : in std_logic_vector(5 downto 0);
			tipo_R    : in std_logic;
			ULA_CTRL  : out std_logic_vector(2 downto 0);
			inverte_B : out std_logic
  );
end entity;

architecture comportamento of UnidadeControleULA is

  signal opcode_out : std_logic_vector(2 downto 0);
  signal funct_out : std_logic_vector(2 downto 0);
  signal mux_out : std_logic_vector(2 downto 0);
  

  begin
  
decoder_Op_code :  entity work.decoder_op_code
        port map( 
						entrada => opcode,
                  saida => opcode_out
						
					 );
					  
decoder_funct :  entity work.decoder_funct
        port map( 
						entrada => funct,
                  saida => funct_out
					  );

MUX :  entity work.muxGenerico2x1
        port map (
						 entradaA_MUX => opcode_out,
						 entradaB_MUX => funct_out,
						 seletor_MUX => tipo_R,
						 saida_MUX => mux_out
					  );
 
ULA_CTRL <= mux_out;
 
end architecture;