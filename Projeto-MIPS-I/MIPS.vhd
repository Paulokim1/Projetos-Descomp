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
    PC_OUT : out std_logic_vector(larguraEnderecos-1 downto 0);
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
  signal Dado_Lido_RAM : std_logic_vector(larguraDados-1 downto 0);
  signal Sig_Ext : std_logic_vector(larguraDados-1 downto 0);
  signal Opcode : std_logic_vector(5 downto 0);
  signal Flag_Zero : std_logic;
  signal Habilita_RAM_Escrita, Habilita_RAM_Leitura : std_logic;
  signal Sig_Ext_Shift : std_logic_vector(larguraDados-1 downto 0);
  signal Somador_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal Controle_BEQ : std_logic;
  signal Saida_MUX_END : std_logic_vector(larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector(5 downto 0);
  signal Habilita_WR_Reg_Bank : std_logic;
  signal Imediato : std_logic_vector(15 downto 0);
  signal Instrucao : std_logic_vector(larguraEnderecos-1 downto 0);
  signal ULA_OP : std_logic_vector(1 downto 0);

  
begin

CLK <= CLOCK_50;

-- Instanciando os componentes:

			 
-- O port map completo do PC:
PC: entity work.registradorGenerico generic map (larguraDados => larguraDados)
		 port map (DIN => Saida_MUX_END, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');
		 
-- O port map completo do soma constante:
somaConstante: entity work.somaConstante
		 port map (entrada => Endereco, saida => somaConstante_OUT);
		 
-- O port map completo da memória ROM:
ROM: entity work.ROMMIPS	
		 port map (endereco => Endereco, dado => Instrucao);
		 
-- O port map completo do banco de registradores:
BANCOREG: entity work.bancoReg
		 port map (clk => CLK,
					  enderecoA => endRegS,
					  enderecoB => endRegT,
					  enderecoC => endRegT,
					  dadoEscritaC => Dado_Lido_RAM,
					  escreveC => Habilita_WR_Reg_Bank,
					  saidaA => regS_OUT,
					  saidaB => regT_OUT
					 );
				
-- O port map completo da ULA:
ULA: entity work.ULASomaSub   generic map(larguraDados => larguraDados)
		 port map (entradaA => regS_OUT,
		           entradaB => Sig_Ext,
		           seletor => ULA_OP,
		           saida => ULA_OUT,
					  flagZero => Flag_Zero
		          );
		 
-- O port map completo da memória RAM:
RAM: entity work.RAMMIPS	
		 port map (Endereco => ULA_OUT, 
		           Dado_in => regT_OUT, 
		           Dado_out => Dado_Lido_RAM, 
		           we => Habilita_RAM_Escrita, 
		           re => Habilita_RAM_Leitura, 
		           habilita => '1',
					  clk => CLK
		          );

-- O port map completo do deslocador:
DSLCDR: entity work.deslocadorGenerico 
		 port map (sinalIn => Sig_Ext,
					  sinalOUT => Sig_Ext_Shift
					 );		
					 
-- O port map completo do somador:
somador: entity work.somadorGenerico
		 port map (entradaA => somaConstante_OUT, entradaB => Sig_Ext_Shift, saida => Somador_OUT);
		 
-- O port map completo do MUXEND:
MUXEND: entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)	
		 port map (entradaA_MUX => somaConstante_OUT,
					  entradaB_MUX => Somador_OUT,
					  seletor_MUX => Flag_Zero AND Controle_BEQ,
					  saida_MUX => Saida_MUX_END
					 );

-- O port map completo do DECODER: 
DECODER: entity work.decoderGenerico
		 port map (entrada => Opcode, saida => Sinais_Controle);
		 
-- O port map completo do extensor de sinal: 
EXTSR: entity work.estendeSinalGenerico
		 port map (estendeSinal_IN => Imediato, estendeSinal_OUT => Sig_Ext);
		
Opcode <= Instrucao(31 downto 26);
endRegS <= Instrucao(25 downto 21);
endRegT <= Instrucao(20 downto 16);
endRegD <= Instrucao(15 downto 11);	
Imediato <= Instrucao(15 downto 0);	

Habilita_WR_Reg_Bank <= Sinais_Controle(5);
ULA_OP <= Sinais_Controle(4 downto 3);
Controle_BEQ <= Sinais_Controle(2);
Habilita_RAM_Leitura <= Sinais_Controle(1);
Habilita_RAM_Escrita <= Sinais_Controle(0);

ULA_OUT_Sim <= ULA_OUT;
endRegS_Sim <= endRegS;
endRegT_Sim <= endRegT;
endRegD_Sim <= endRegD;
regS_OUT_Sim <= regS_OUT;
regT_OUT_Sim <= regT_OUT;

PC_OUT <= Endereco;

end architecture;