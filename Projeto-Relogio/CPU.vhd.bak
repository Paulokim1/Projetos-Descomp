library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( 
        dataWidth : natural := 8;
        addrWidth : natural := 9;
        instrWidth : natural := 13
  );
  port   (
        CLK : in std_logic;
        Wr : out std_logic;
		  Rd : out std_logic;
		  ROM_Address : out std_logic_vector(addrWidth-1 downto 0);
		  Instruction_IN : in std_logic_vector(instrWidth-1 downto 0);
		  Data_IN : in std_logic_vector(dataWidth-1 downto 0);
		  Data_OUT : out std_logic_vector(dataWidth-1 downto 0);
		  Data_Address : out std_logic_vector(addrWidth-1 downto 0);
		  Decoder_OUT : out std_logic_vector(12 downto 0)
  );
end entity;


architecture arquitetura of CPU is

  signal MUX1_OUT : std_logic_vector (dataWidth-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (dataWidth-1 downto 0);
  signal Saida_ULA : std_logic_vector (dataWidth-1 downto 0);
  signal Sinais_Controle : std_logic_vector (12 downto 0);
  signal proxPC : std_logic_vector (addrWidth-1 downto 0);
  signal Opcode : std_logic_vector(3 downto 0);
  signal SelMUX : std_logic;
  signal Operacao_ULA : std_logic_vector (2 downto 0); 	
  signal seletorMuxPC : std_logic_vector(1 downto 0);
  signal MUX_PC : std_logic_vector (addrWidth-1 downto 0);
  signal Destino : std_logic_vector (addrWidth-1 downto 0);
  signal Habilita_Reg_Igual : std_logic;
  signal Flag_Igual : std_logic;
  signal saida_ULA_flip_flop_igual : std_logic;
  signal Endereco_Retorno : std_logic_vector(8 downto 0);
  signal Habilita_Escrita_Retorno : std_logic;
  signal Valor : std_logic_vector(7 downto 0);
  signal Address : std_logic_vector(addrWidth-1 downto 0);
  signal Habilita_A : std_logic;
  signal Habilita_Leitura : std_logic;
  signal Habilita_Escrita : std_logic;
  
begin

-- Instanciando os componentes:

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => dataWidth)
        port map( entradaA_MUX => Data_IN,
                 entradaB_MUX =>  Valor,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX1_OUT);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => dataWidth)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN => MUX_PC, DOUT => Address, ENABLE => '1', CLK => CLK);

incrementaPC :  entity work.somaConstante  generic map (larguraDados => addrWidth, constante => 1)
        port map(entrada => Address, saida => proxPC);

-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => dataWidth)
          port map (entradaA => REG1_ULA_A, entradaB => MUX1_OUT, saida => Saida_ULA, saida_ULA_flip_flop_igual => saida_ULA_flip_flop_igual, seletor => Operacao_ULA);
			 
-- O port map completo do DECODER:
DECODER : entity work.decoderinstru
          port map (opcode => Opcode, flag_igual => Flag_Igual, saida_controle => Sinais_Controle, seletor_mux_pc => seletorMuxPC);

			 -- O port map completo do MUX.
MUX2 :  entity work.muxGenerico4x1  generic map (larguraDados => addrWidth)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Destino,
                 entradaC_MUX => Endereco_Retorno,
                 entradaD_MUX => "000000000",
                 seletor_MUX => seletorMuxPC,
                 saida_MUX => MUX_PC);
					  
-- O port map completo do Flip-Flop de Igual.
FlipFlopIgual : entity work.FlipFlop
                port map (DIN => saida_ULA_flip_flop_igual, DOUT => Flag_Igual, ENABLE => Habilita_Reg_Igual, CLK => CLK, RST => '0');
					 
-- O port map completo do REG_END_RET.
REG_END_RET : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN => proxPC, DOUT => Endereco_Retorno, ENABLE => Habilita_Escrita_Retorno, CLK => CLK);
				  
			 
Opcode <= Instruction_IN(12 downto 9);
Destino <= Instruction_IN(8 downto 0);
Valor <= Instruction_IN(7 downto 0);

Habilita_Escrita_Retorno <= Sinais_Controle(12);
selMUX <= Sinais_Controle(7);
Habilita_A <= Sinais_Controle(6);
Operacao_ULA <= Sinais_Controle(5 downto 3);
Habilita_Reg_Igual <= Sinais_Controle(2);
Habilita_Leitura <= Sinais_Controle(1);
Habilita_Escrita <= Sinais_Controle(0);

Wr <= Sinais_Controle(0);
Rd <= Sinais_Controle(1);
Rom_Address <= Address;
Data_Address <= Destino;
Data_OUT <= REG1_ULA_A;
Decoder_OUT <= Sinais_Controle;

end architecture;