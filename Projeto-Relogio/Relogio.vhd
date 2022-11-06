library ieee;
use ieee.std_logic_1164.all;

entity Relogio is
  -- Total de bits das entradas e saidas
  generic ( 
        dataWidth : natural := 8;
        addrWidth : natural := 9;
		  instrWidth : natural := 15;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    PC_OUT: out std_logic_vector(addrWidth-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
	 SW : in std_logic_vector(9 downto 0);
	 KEY : in std_logic_vector(3 downto 0);
	 FPGA_RESET_N : in std_logic;
	 Decoder_Instru : out std_logic_vector(12 downto 0);
	 Decoder_1 : out std_logic_vector(dataWidth-1 downto 0);
	 Decoder_2 : out std_logic_vector(dataWidth-1 downto 0);
	 Wr_debug : out std_logic;
	 Data_debug : out std_logic_vector(dataWidth-1 downto 0)
  );
end entity;


architecture arquitetura of Relogio is

  signal CLK : std_logic;
  signal ROM_Address : std_logic_vector (addrWidth-1 downto 0);
  signal Instruction : std_logic_vector (instrWidth-1 downto 0);
  signal Data_Address : std_logic_vector (addrWidth-1 downto 0);
  signal Wr : std_logic;
  signal Rd : std_logic;
  signal Saida_Decoder1 : std_logic_vector (dataWidth-1 downto 0);
  signal Saida_Decoder2 : std_logic_vector (dataWidth-1 downto 0);
  signal Data_Wr : std_logic_vector (dataWidth-1 downto 0);
  signal Data_Rd : std_logic_vector (dataWidth-1 downto 0);
  signal Decoder_OUT : std_logic_vector (12 downto 0);
  signal Leitura_Dados : std_logic_vector (7 downto 0);
  signal Key_0, Key_1, Key_2, Key_3 : std_logic;
  signal Clock_Normal, Clock_Rapido, Clock_Escolhido : std_logic;
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= KEY(3);
--else generate
CLK <= CLOCK_50;

detectorSub0: work.edgeDetector(bordaSubida)
		  port map (
					clk => CLK,
					entrada => (not KEY(0)),
					saida => Key_0);
					
detectorSub1: work.edgeDetector(bordaSubida)
	  port map (
				clk => CLK,
				entrada => (not KEY(1)),
				saida => Key_1);
				
detectorSub2: work.edgeDetector(bordaSubida)
	  port map (
				clk => CLK,
				entrada => (not KEY(2)),
				saida => Key_2);
				
detectorSub3: work.edgeDetector(bordaSubida)
	  port map (
				clk => CLK,
				entrada => (not KEY(3)),
				saida => Key_3);
				
--end generate;

-- O port map completo da CPU.
CPU : entity work.CPU generic map (dataWidth => dataWidth, addrWidth => addrWidth, instrWidth => instrWidth)
          port map (Wr => Wr, 
						  Rd => Rd, 
						  ROM_Address => ROM_Address, 
						  Instruction_IN => Instruction, 
						  Data_IN => Data_Rd, 
						  Data_OUT => Data_Wr, 
						  Data_Address => Data_Address, 
						  Decoder_OUT => Decoder_OUT, 
						  CLK => CLK
						  );
			 
-- O port map completo da ROM:
ROM1 : entity work.memoriaROM   generic map (dataWidth => instrWidth, addrWidth => addrWidth)
          port map (Endereco => ROM_Address, 
						  Dado => Instruction
						  );

-- O port map completo da RAM:			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => dataWidth, addrWidth => 6)
          port map (addr => Data_Address(5 downto 0), 
						  we => Wr, 
						  re => Rd, 
						  habilita => Saida_Decoder1(0), 
						  dado_in => Data_Wr, 
						  dado_out => Data_Rd, 
						  clk => CLK
						  );
			 
-- O port map completo do DECODER1:
DECODER1 : entity work.decoder3x8
          port map (entrada => Data_Address(8 downto 6), 
						  saida => Saida_Decoder1);
			 
-- O port map completo do DECODER2:
DECODER2 : entity work.decoder3x8
          port map (entrada => Data_Address(2 downto 0), 
						  saida => Saida_Decoder2);
			 
-- O port map completo dos LEDS:
LEDS : entity work.Leds
          port map (Wr => Wr, 
						  A5 => Data_Address(5), 
						  Data => Data_Wr, 
						  Decoder1_IN => Saida_Decoder1(4), 
						  Decoder2_IN => Saida_Decoder2(2 downto 0), 
						  LEDR => LEDR(7 downto 0), 
						  LED8 => LEDR(8), 
						  LED9 => LEDR(9), 
						  CLK => CLK
						  );

-- O port map completo do SEVENSEG:
SEVENSEG: entity work.SevenSeg
		    port map (Wr => Wr, 
						  Data_IN => Data_Wr(3 downto 0), 
						  A5 => Data_Address(5), 
						  Decoder1_IN => Saida_Decoder1(4), 
						  Decoder2_IN => Saida_Decoder2(5 downto 0), 
						  HEX0 => HEX0, 
						  HEX1 => HEX1, 
						  HEX2 => HEX2, 
						  HEX3 => HEX3, 
						  HEX4 => HEX4, 
						  HEX5 => HEX5, 
						  CLK => CLK
						  );
			 
-- O port map completo do KEYS_BUTTONS:
KEYS_BUTTONS: entity work.Keys_Buttons
			 port map (KEY => KEY,
						  Data_Address => Data_Address,
						  Wr => Wr,
						  SW => SW, 
						  FPGA_RESET_N => FPGA_RESET_N, 
						  Rd => Rd, 
						  A5 => Data_Address(5), 
						  Decoder1_IN => Saida_Decoder1(5), 
						  Decoder2_IN => Saida_Decoder2(4 downto 0), 
						  KEY_0 => Clock_Escolhido,
						  KEY_1 => Key_1,
						  KEY_2 => Key_2,
						  KEY_3 => Key_3,
						  Saida_Dados => Leitura_Dados
						  );
			 
-- O port map completo do DIVGEN_Normal:
DIVGEN_N: entity work.divisorGenerico generic map (divisor => 25000000)
			port map(clk => CLOCK_50, saida_clk => Clock_Normal);
			
-- O port map completo do DIVGEN_Rapido:
DIVGEN_R: entity work.divisorGenerico generic map (divisor => 25000)
			port map(clk => CLOCK_50, saida_clk => Clock_Rapido);
	
-- O port map completo do MUX_CLOCK:	
MUX_CLOCK: entity work.muxGenerico2x1 generic map (larguraDados => 1)
			port map( entradaA_MUX(0) => Clock_Normal,
                 entradaB_MUX(0) =>  Clock_Rapido,
                 seletor_MUX => not KEY(0),
                 saida_MUX(0) => Clock_Escolhido);
			
							
PC_OUT <= ROM_Address;			 
Decoder_Instru <= Decoder_OUT;
Decoder_1 <= Saida_Decoder1;
Decoder_2 <= Saida_Decoder2;
Wr_debug <= Wr;
Data_debug <= Data_wr;
Data_Rd <= Leitura_Dados;


end architecture;