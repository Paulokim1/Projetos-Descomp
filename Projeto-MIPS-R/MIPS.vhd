library ieee;
use ieee.std_logic_1164.all;

entity MIPS is
  -- Total de bits das entradas e saidas
  generic ( 
        larguraDados : natural := 32;
        larguraEnderecos : natural := 32
  );
  port   (
    CLOCK_50 : in std_logic;
	 Habilita_WR : in std_logic;
	 ULA_OP : in std_logic;
    PC_OUT : out std_logic_vector(larguraEnderecos-1 downto 0);
    Instrucao : out std_logic_vector(larguraEnderecos-1 downto 0);
	 ULA_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0);
	 endRegS_Sim : out std_logic_vector(4 downto 0);
	 endRegT_Sim : out std_logic_vector(4 downto 0);
	 endRegD_Sim : out std_logic_vector(4 downto 0);
	 regS_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0);
	 regT_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0)

  );
end entity;


architecture arquitetura of MIPS is

  signal CLK : std_logic;
  signal somaConstante_OUT : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Endereco : std_logic_vector(larguraEnderecos-1 downto 0);
  signal endRegS : std_logic_vector(4 downto 0);
  signal endRegT : std_logic_vector(4 downto 0);
  signal endRegD : std_logic_vector(4 downto 0);
  signal regS_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal regT_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  
begin

CLK <= CLOCK_50;

-- Instanciando os componentes:

			 
-- O port map completo do PC:
PC: entity work.registradorGenerico generic map (larguraDados => larguraDados)
		 port map (DIN => somaConstante_OUT, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');
		 
-- O port map completo do soma constante:
somaConstante: entity work.somaConstante
		 port map (entrada => Endereco, saida => somaConstante_OUT);
		 
-- O port map completo da memória ROM:
ROM: entity work.ROMMIPS	
		 port map (endereco => Endereco, dado => Instrucao);
		 
-- O port map completo do banco de registradores:
BANCOREG: entity work.bancoReg
		 port map (clk => CLK, enderecoA => endRegS, enderecoB => endRegT, enderecoC => endRegD, dadoEscritaC => ULA_OUT, escreveC => Habilita_WR, saidaA => regS_OUT, saidaB => regT_OUT);
		 
-- O port map completo da ULA:
ULA: entity work.ULASomaSub   generic map(larguraDados => larguraDados)
		 port map (entradaA => regS_OUT, entradaB => regT_OUT, seletor => ULA_OP, saida => ULA_OUT);


endRegS <= Instrucao(25 downto 21);
endRegT <= Instrucao(20 downto 16);
endRegD <= Instrucao(15 downto 11);		

ULA_OUT_Sim <= ULA_OUT;
endRegS_Sim <= endRegS;
endRegT_Sim <= endRegT;
endRegD_Sim <= endRegD;
regS_OUT_Sim <= regS_OUT;
regT_OUT_Sim <= regT_OUT;

PC_OUT <= Endereco;

end architecture;