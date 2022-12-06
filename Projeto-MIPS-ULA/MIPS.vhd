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
	LEDR  : out std_logic_vector(9 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
	SW : in std_logic_vector(9 downto 0);
	KEY: in std_logic_vector(3 downto 0)	 
--	ULA_OP_Sim : out std_logic_vector(2 downto 0);
--    PC_Out_Sim : out std_logic_vector(larguraEnderecos-1 downto 0);
--    Instrucao_sim : out std_logic_vector(larguraEnderecos-1 downto 0);
--	ULA_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	endReg1_Sim : out std_logic_vector(4 downto 0);
--	endReg2_Sim : out std_logic_vector(4 downto 0);
--	endReg3_Sim : out std_logic_vector(4 downto 0);
--	dado_lido_reg_1_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	dado_lido_reg_2_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	dado_lido_ram_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	Pontos_Controle_Sim : out std_logic_vector(8 downto 0)

  );
end entity;


architecture arquitetura of MIPS is

  signal CLK : 							std_logic;
  signal Instrucao : 					std_logic_vector(larguraEnderecos-1 downto 0);
  signal somaConstante_OUT : 			std_logic_vector(larguraEnderecos-1 downto 0);
  signal Endereco : 						std_logic_vector(larguraEnderecos-1 downto 0);
  signal endReg1 : 						std_logic_vector(4 downto 0);
  signal endReg2 : 						std_logic_vector(4 downto 0);
  signal endReg3 : 						std_logic_vector(4 downto 0);
  signal dado_lido_reg_1 : 			std_logic_vector(larguraDados-1 downto 0);
  signal dado_lido_reg_2 : 			std_logic_vector(larguraDados-1 downto 0);
  signal RAM_dado_lido : 				std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT : 						std_logic_vector(larguraDados-1 downto 0);
  signal ULA_Z_OUT : 					std_logic;
  signal PROX_PC : 						std_logic_vector(larguraDados-1 downto 0);
  signal MUX_REG_BANK_OUT : 			std_logic_vector(4 downto 0);
  signal MUX_ULA_OUT : 					std_logic_vector(larguraDados-1 downto 0);
  signal MUX_RAM_OUT : 					std_logic_vector(larguraDados-1 downto 0);
  signal SigExt_Imediato : 			std_logic_vector(larguraDados-1 downto 0);
  signal deslocador_2_MUX_PC_OUT :  std_logic_vector(27 downto 0);
  signal deslocador_2_somador_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal somador_OUT: 					std_logic_vector(larguraDados-1 downto 0);
  signal MUX_2_MUX_PC_OUT: 			std_logic_vector(larguraDados-1 downto 0);
  signal Pontos_Controle: 				std_logic_vector(8 downto 0);
  signal mux_PC_BEQ_Jump : 			std_logic;
  signal MUX_Rt_Rd : 					std_logic;
  signal hab_Escrita_Reg : 			std_logic;
  signal MUX_Rt_imediato : 			std_logic;
  signal ULA_OP : 						std_logic_vector(2 downto 0);
  signal MUX_ULA_mem : 					std_logic;
  signal BEQ : 							std_logic;
  signal hab_leitura_MEM : 			std_logic;
  signal hab_escrita_MEM : 			std_logic;
  signal op_code : 			         std_logic_vector(5 downto 0);
  signal funct : 			            std_logic_vector(5 downto 0);
  signal ULA_CTRL_OUT :             std_logic_vector(2 downto 0);
  signal Tipo_R :                   std_logic;
  signal ULA_Overflow_OUT :         std_logic;
  signal SW_0 :       		        std_logic;
  signal MUX_ULA_PC_OUT :           std_logic_vector(larguraDados-1 downto 0);
  signal DECODER_HEX0_OUT :         std_logic_vector(6 downto 0);
  signal DECODER_HEX1_OUT :         std_logic_vector(6 downto 0);
  signal DECODER_HEX2_OUT :         std_logic_vector(6 downto 0);
  signal DECODER_HEX3_OUT :         std_logic_vector(6 downto 0);
  signal DECODER_HEX4_OUT :         std_logic_vector(6 downto 0);
  signal DECODER_HEX5_OUT :         std_logic_vector(6 downto 0);

  
begin	

--CLK <= CLOCK_50;


detectorSub0: work.edgeDetector(bordaSubida)
		  port map (
					clk => CLOCK_50,
					entrada => (not KEY(0)),
					saida => CLK
			);
			
-- Instanciando os componentes:

MUX_PC: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map(
						entradaA_MUX => MUX_2_MUX_PC_OUT, 
						entradaB_MUX => somaConstante_OUT(31 downto 28) & deslocador_2_MUX_PC_OUT, 
						seletor_MUX  => mux_PC_BEQ_Jump, 
						saida_MUX    => PROX_PC
		);
		
				
PC: entity work.registradorGenerico generic map (larguraDados => larguraDados)
		 port map (
						DIN  => PROX_PC, 
						DOUT => Endereco, 
						ENABLE => '1', 
						CLK  => CLK, 
						RST  => '0'
		);
		 

-- O port map completo do soma constante:
somaConstante: entity work.somaConstante
		 port map (
						entrada => Endereco, 
						saida   => somaConstante_OUT
		);
		
					 
deslocador_2_MUX_PC: entity work.deslocadorGenerico generic map (larguraDadoEntrada => 26, larguraDadoSaida => 28, larguraDados => 26)
		port map (
						sinalIN  => Instrucao(25 downto 0), 
						sinalOUT => deslocador_2_MUX_PC_OUT
		);	
		
		 
-- O port map completo da memória ROM:
ROM: entity work.ROMMIPS	
		 port map (
						endereco => Endereco, 
						dado 		=> Instrucao
		);
		 
		 
MUX_REG_BANK: entity work.muxGenerico2x1 generic map(larguraDados => 5)
		port map (
						entradaA_MUX => endReg2, 
						entradaB_MUX => endReg3, 
						seletor_MUX  => MUX_Rt_Rd, 
						saida_MUX    =>  MUX_REG_BANK_OUT
		);
		
					
ESTENDE_SINAL: entity work.estendeSinalGenerico
		 port map (
						estendeSinal_IN  => Instrucao(15 downto 0), 
						estendeSinal_OUT => SigExt_Imediato  
		);
	 
-- O port map completo do banco de registradores:
BANCOREG: entity work.bancoReg
		 port map (
						clk 		 	 => CLK, 
						enderecoA 	 => endReg1, 
						enderecoB 	 => endReg2, 
						enderecoC 	 => MUX_REG_BANK_OUT, 
						dadoEscritaC => MUX_RAM_OUT, 
						escreveC 	 => hab_Escrita_Reg, 
						saidaA 		 => dado_lido_reg_1, 
						saidaB 		 => dado_lido_reg_2
		);
		
		
deslocador_2_somador: entity work.DeslocadorGenerico generic map (larguraDadoSaida => 32, larguraDados => 30)
		port map (
						sinalIN  => SigExt_Imediato, 
						sinalOUT => deslocador_2_somador_OUT
		);
		
		
somador: entity work.somadorGenerico
		 port map (
						entradaA => somaConstante_OUT, 
						entradaB => deslocador_2_somador_OUT,
						saida   => somador_OUT
		);
		
		
MUX_2_MUX_PC: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map (
						entradaA_MUX => somaConstante_OUT, 
						entradaB_MUX => somador_OUT, 
						seletor_MUX  => ULA_Z_OUT AND BEQ, 
						saida_MUX    => MUX_2_MUX_PC_OUT  
		);

	
	
MUX_ULA: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map (
						entradaA_MUX => dado_lido_reg_2, 
						entradaB_MUX => SigExt_Imediato, 
						seletor_MUX  => MUX_Rt_imediato, 
						saida_MUX    => MUX_ULA_OUT  
		);


-- O port map completo da ULA:
ULA: entity work.ULAMIPS   generic map(larguraDados => larguraDados)
		 port map (
						entradaA => dado_lido_reg_1, 
						entradaB => MUX_ULA_OUT, 
						sel      => ULA_CTRL_OUT(1 downto 0),
						inverteB => ULA_CTRL_OUT(2),
						saida    => ULA_OUT, 
						flagZero => ULA_Z_OUT,
						overflow => ULA_Overflow_OUT
		);
		
Decoder_Unidade_Controle_ULA: entity work.UnidadeControleULA
		port map (
						opcode => op_code, 
						funct => funct, 
						tipo_R => Tipo_R, 
						ULA_CTRL => ULA_CTRL_OUT		
		);
					
RAM: entity work.RAMMIPS 
		port map(
						clk      => CLK,
						Endereco => ULA_OUT,
						Dado_in  => dado_lido_reg_2,
						Dado_out => RAM_dado_lido,
						we 		=> hab_escrita_MEM,
						re 		=> hab_leitura_MEM,
						habilita => '1'
		);
		 
MUX_RAM: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map (
						entradaA_MUX => ULA_OUT,
						entradaB_MUX => RAM_dado_lido,
						seletor_MUX  => MUX_ULA_mem,
						saida_MUX    => MUX_RAM_OUT  
		);
		
		
Decorder_Controle_Fluxo: entity work.decoderGeneric
		port map(
						entradaA => op_code,
						entradaB => funct,
						saida => Pontos_Controle
		);


MUX_ULA_PC: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map (
						entradaA_MUX => Endereco,
						entradaB_MUX => ULA_OUT,
						seletor_MUX  => SW_0,
						saida_MUX    => MUX_ULA_PC_OUT  
		);


DECODER_HEX0: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(3 downto 0),
						saida7seg => DECODER_HEX0_OUT
		);

DECODER_HEX1: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(7 downto 4),
						saida7seg => DECODER_HEX1_OUT
		);

DECODER_HEX2: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(11 downto 8),
						saida7seg => DECODER_HEX2_OUT
		);

DECODER_HEX3: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(15 downto 12),
						saida7seg => DECODER_HEX3_OUT
		);

DECODER_HEX4: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(19 downto 16),
						saida7seg => DECODER_HEX4_OUT
		);

DECODER_HEX5: entity work.conversorHex7Seg
		port map(
						dadoHex => MUX_ULA_PC_OUT(23 downto 20),
						saida7seg => DECODER_HEX5_OUT
		);

-- Fios ligando a saída da ROM p/ o Banco de Registradores
endReg1 <= Instrucao(25 downto 21);
endReg2 <= Instrucao(20 downto 16);
endReg3 <= Instrucao(15 downto 11);

--Entradas do decoder responsavel na unidade de controle de fluxo de dados
op_code <= Instrucao(31 downto 26);
funct   <= Instrucao(5 downto 0);


-- Pontos de controle
mux_PC_BEQ_Jump <= Pontos_Controle(8);
MUX_Rt_Rd 		 <= Pontos_Controle(7);
hab_Escrita_Reg <= Pontos_Controle(6);
MUX_Rt_imediato <= Pontos_Controle(5);
Tipo_R          <= POntos_Controle(4);
MUX_ULA_mem 	 <= Pontos_Controle(3);
BEQ 				 <= Pontos_Controle(2);
hab_leitura_MEM <= Pontos_Controle(1); 
hab_escrita_MEM <= Pontos_Controle(0);
				


-- Simulacao
--Pontos_Controle_Sim  <= Pontos_Controle;
--PC_Out_Sim           <= Endereco;
--Instrucao_sim        <= Instrucao;
--ULA_OP_Sim           <= ULA_OP;	
--ULA_OUT_Sim          <= ULA_OUT;
--endReg1_Sim          <= endReg1;
--endReg2_Sim          <= endReg2;
--endReg3_Sim          <= endReg3;
--dado_lido_reg_1_Sim  <= dado_lido_reg_1;
--dado_lido_reg_2_Sim  <= dado_lido_reg_2;
--dado_lido_ram_Sim    <= RAM_dado_lido;



-- Ligando na placa
HEX0 <= DECODER_HEX0_OUT;
HEX1 <= DECODER_HEX1_OUT;
HEX2 <= DECODER_HEX2_OUT;
HEX3 <= DECODER_HEX3_OUT;
HEX4 <= DECODER_HEX4_OUT;
HEX5 <= DECODER_HEX5_OUT;
LEDR(3 downto 0) <= MUX_ULA_PC_OUT(27 downto 24);
LEDR(7 downto 4) <= MUX_ULA_PC_OUT(31 downto 28);
SW_0 <= SW(0);

end architecture;