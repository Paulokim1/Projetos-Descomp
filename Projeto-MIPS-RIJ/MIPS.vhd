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
	 --Habilita_WR : in std_logic;
	 --ULA_OP : in std_logic;
    PC_OUT : out std_logic_vector(larguraEnderecos-1 downto 0);
    --Instrucao : out std_logic_vector(larguraEnderecos-1 downto 0);
--	 ULA_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	 endRegS_Sim : out std_logic_vector(4 downto 0);
--	 endRegT_Sim : out std_logic_vector(4 downto 0);
--	 endRegD_Sim : out std_logic_vector(4 downto 0);
--	 regS_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0);
--	 regT_OUT_Sim : out std_logic_vector(larguraDados-1 downto 0)

  );
end entity;


architecture arquitetura of MIPS is

  signal CLK : std_logic;
  signal Instrucao : std_logic_vector(larguraEnderecos-1 downto 0);
  signal somaConstante_OUT : std_logic_vector(larguraEnderecos-1 downto 0);
  signal Endereco : std_logic_vector(larguraEnderecos-1 downto 0);
  signal endReg1 : std_logic_vector(4 downto 0);
  signal endReg2 : std_logic_vector(4 downto 0);
  signal endReg3 : std_logic_vector(4 downto 0);
  signal dado_lido_reg_1 : std_logic_vector(larguraDados-1 downto 0);
  signal dado_lido_reg_2 : std_logic_vector(larguraDados-1 downto 0);
  signal RAM_dado_lido : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_Z_OUT : std_logic;
  signal PROX_PC : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_REG_BANK_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_RAM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal SigExt_Imediato : std_logic_vector(larguraDados-1 downto 0);
  signal deslocador_2_MUX_PC_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal deslocador_2_somador_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal somador_OUT: std_logic_vector(larguraDados-1 downto 0);
  signal MUX_2_MUX_PC_OUT: std_logic_vector(larguraDados-1 downto 0);
  signal Pontos_Controle: std_logic_vector(larguraDados-1 downto 0);
  
  signal mux_PC_BEQ_Jump : std_logic;
  signal MUX_Rt_Rd : std_logic;
  signal hab_Escrita_Reg : std_logic;
  signal MUX_Rt_imediato : std_logic;
  signal ULA_op : std_logic_vector(1 downto 0);
  signal MUX_ULA_mem : std_logic;
  signal BEQ : std_logic;
  signal hab_leitura_MEM : std_logic;
  signal hab_escrita_MEM : std_logic;

  
    
begin

CLK <= CLOCK_50;

-- Instanciando os componentes:

MUX_PC: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
		port map(
						entradaA_MUX => MUX_2_MUX_PC_OUT, 
						entradaB_MUX => somaConstante_OUT(31 downto 28) & deslocador_2_MUX_PC_OUT , 
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
		
					 
deslocador_2_MUX_PC: entity work.deslocadorGenerico
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
		 
		 
MUX_REG_BANK: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
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
		
		
deslocador_2_somador: entity work.DeslocadorGenerico
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
						seletor_MUX  => ULA_Z_OUT and BEQ, 
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
ULA: entity work.ULASomaSub   generic map(larguraDados => larguraDados)
		 port map (
						entradaA => dado_lido_reg_1, 
						entradaB => MUX_ULA_OUT, 
						seletor  => ULA_OP, 
						saida    => ULA_OUT,
						flagZero => ULA_Z_OUT
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
		
		
Decorder: entity work.decoderGeneric
		port map(
						entrada => Instrucao,
						saida => Pontos_Controle
		);
				

endReg1 <= Instrucao(25 downto 21);
endReg2 <= Instrucao(20 downto 16);
endReg3 <= Instrucao(15 downto 11);


-- Pontos de controle
mux_PC_BEQ_Jump <= Pontos_Controle(0);
MUX_Rt_Rd 		 <= Pontos_Controle(0);
hab_Escrita_Reg <= Pontos_Controle(0);
MUX_Rt_imediato <= Pontos_Controle(0);
ULA_op 			 <= Pontos_Controle(1 downto 0);
MUX_ULA_mem 	 <= Pontos_Controle(0);
BEQ 				 <= Pontos_Controle(0);
hab_leitura_MEM <= Pontos_Controle(0); 
hab_escrita_MEM <= Pontos_Controle(0);
				


-- Simulacao
--ULA_OUT_Sim <= ULA_OUT;
--endRegS_Sim <= endRegS;
--endRegT_Sim <= endRegT;
--endRegD_Sim <= endRegD;
--regS_OUT_Sim <= regS_OUT;
--regT_OUT_Sim <= regT_OUT;

PC_OUT <= Endereco;

end architecture;