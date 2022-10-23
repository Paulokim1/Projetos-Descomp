library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant ANDI : std_logic_vector(3 downto 0) := "1011";
  
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:

-- TESTE LEDS

--		  tmp(0) := LDI &'0'&x"01";
--		  tmp(1) := STA &'0'&x"00";
--		  tmp(2) := SOMA &'0'&x"00";
--		  tmp(3) := STA &'0'&x"01";
--		  tmp(4) := LDA &'0'&x"00";
--		  tmp(5) := STA &'1'&x"01";
--		  tmp(6) := STA &'1'&x"02";
--		  tmp(7) := LDI &'0'&x"55";
--		  tmp(8) := STA &'1'&x"00";
--		  tmp(9) := LDI &'0'&x"AA";
--		  tmp(10) := STA &'1'&x"00";
--		  tmp(11) := JMP &'0'&x"0B";


-- TESTE 7SEG

--        tmp(0) := LDI &'0'&x"01";
--		  tmp(1) := STA &'0'&x"00";
--		  tmp(2) := SOMA &'0'&x"00";
--		  tmp(3) := STA &'1'&x"20";
--		  tmp(4) := SOMA &'0'&x"00";
--		  tmp(5) := STA &'1'&x"21";
--		  tmp(6) := SOMA &'0'&x"00";
--		  tmp(7) := STA &'1'&x"22";
--		  tmp(8) := SOMA &'0'&x"00";
--		  tmp(9) := STA &'1'&x"23";
--		  tmp(10) := SOMA &'0'&x"00";
--		  tmp(11) := STA &'1'&x"24";
--		  tmp(12) := SOMA &'0'&x"00";
--		  tmp(13) := STA &'1'&x"25";
--		  tmp(14) := JMP &'0'&x"02";


-- KEYS BUTTONS

--		tmp(0)  := LDA &'1'&x"40";
--		tmp(1)  := STA &'1'&x"20";
--		tmp(2)  := LDA &'1'&x"41";
--		tmp(3)  := STA &'1'&x"21";
--		tmp(4)  := LDA &'1'&x"42";
--		tmp(5)  := STA &'1'&x"22";
--		tmp(6)  := LDA &'1'&x"60";
--		tmp(7)  := STA &'1'&x"23";
--		tmp(8)  := LDA &'1'&x"61";
--		tmp(9)  := STA &'1'&x"24";
--		tmp(10) := LDA &'1'&x"62";
--		tmp(11) := STA &'1'&x"25";
--		tmp(12) := LDA &'1'&x"63";
--		tmp(13) := STA &'1'&x"01";
--		tmp(14) := LDA &'1'&x"64";
--		tmp(15) := STA &'1'&x"02";
--		tmp(16) := JMP &'0'&x"00";


-- Debounce e Memorização

--		tmp(0):= LDI &'0'&x"00";  
--		tmp(1):= STA &'0'&x"00";   
--		tmp(2):= STA &'0'&x"02";      
--		tmp(3):= LDI &'0'&x"01";      
--		tmp(4):= STA &'0'&x"01";     
--		tmp(5):= NOP &'0'&x"00";    
--		tmp(6):= LDA &'1'&x"61";   
--		tmp(7):= STA &'1'&x"20";       
--		tmp(8):= CEQ &'0'&x"00";       
--		tmp(9):= JEQ &'0'&x"0b";       
--		tmp(10):= JSR &'0'&x"20";       
--		tmp(11):= NOP &'0'&x"00";       
--		tmp(12):= JMP &'0'&x"05";       
--		tmp(32):= STA &'1'&x"fe";       
--		tmp(33):= LDA &'0'&x"02";       
--		tmp(34):= SOMA &'0'&x"01";       
--		tmp(35):= STA &'0'&x"02";       
--		tmp(36):= STA &'1'&x"02";
--		tmp(37):= STA &'1'&x"25";		
--		tmp(38):= RET &'0'&x"00"; 
      

-- Contador

tmp(0) := NOP & '0' & x"00";       	-- NOP 	#BEGIN
tmp(1) := LDI & '0' & x"00";       	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(2) := STA & '1' & x"FF";       	-- STA @511 	#RESET no KEY0
tmp(3) := STA & '1' & x"FE";       	-- STA @510 	#RESET no KEY1
tmp(4) := STA & '1' & x"00";       	-- STA @256 	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
tmp(5) := STA & '1' & x"01";       	-- STA @257 	#Armazena o valor do bit0 do acumulador no LDR8
tmp(6) := STA & '1' & x"02";       	-- STA @258 	#Armazena o valor do bit0 do acumulador no LDR9
tmp(7) := STA & '1' & x"20";       	-- STA @288 	#Armazena o valor do acumulador em HEX0
tmp(8) := STA & '1' & x"21";       	-- STA @289 	#Armazena o valor do acumulador em HEX1
tmp(9) := STA & '1' & x"22";       	-- STA @290 	#Armazena o valor do acumulador em HEX2
tmp(10) := STA & '1' & x"23";      	-- STA @291 	#Armazena o valor do acumulador em HEX3
tmp(11) := STA & '1' & x"24";      	-- STA @292 	#Armazena o valor do acumulador em HEX4
tmp(12) := STA & '1' & x"25";      	-- STA @293 	#Armazena o valor do acumulador em HEX5
tmp(13) := STA & '0' & x"00";      	-- STA @0 	#Armazena o valor do acumulador em MEM[0] UNIDADES
tmp(14) := STA & '0' & x"01";      	-- STA @1 	#Armazena o valor do acumulador em MEM[1] DEZENAS
tmp(15) := STA & '0' & x"02";      	-- STA @2 	#Armazena o valor do acumulador em MEM[2] CENTENAS
tmp(16) := STA & '0' & x"03";      	-- STA @3 	#Armazena o valor do acumulador em MEM[3] MILHAR
tmp(17) := STA & '0' & x"04";      	-- STA @4 	#Armazena o valor do acumulador em MEM[4] DEZENA DE MILHAR
tmp(18) := STA & '0' & x"05";      	-- STA @5 	#Armazena o valor do acumulador em MEM[5] CENTENA DE MILHAR
tmp(19) := LDI & '0' & x"09";      	-- LDI $9 	#Carrega no acumulador o valor 9
tmp(20) := STA & '0' & x"0A";      	-- STA @10 	#Armazena o valor do acumulador em MEM[10] (LIMITE UNIDADE)
tmp(21) := STA & '0' & x"0B";      	-- STA @11 	#Armazena o valor do acumulador em MEM[11] (LIMITE DEZENA)
tmp(22) := STA & '0' & x"0C";      	-- STA @12 	#Armazena o valor do acumulador em MEM[12] (LIMITE CENTENA)
tmp(23) := STA & '0' & x"0D";      	-- STA @13 	#Armazena o valor do acumulador em MEM[13] (LIMITE MILHAR)
tmp(24) := STA & '0' & x"0E";      	-- STA @14 	#Armazena o valor do acumulador em MEM[14] (LIMITE DEZENA DE MILHAR)
tmp(25) := STA & '0' & x"0F";      	-- STA @15 	#Armazena o valor do acumulador em MEM[15] (LIMITE CENTENA DE MILHAR)
tmp(26) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega no acumulador o valor 0
tmp(27) := STA & '0' & x"10";      	-- STA @16 	#Armazena o valor do acumulador em MEM[16] (VALOR ATUAL DO LIMITE UNIDADE)
tmp(28) := STA & '0' & x"11";      	-- STA @17 	#Armazena o valor do acumulador em MEM[17] (VALOR ATUAL DO LIMITE DEZENA)
tmp(29) := STA & '0' & x"12";      	-- STA @18 	#Armazena o valor do acumulador em MEM[18] (VALOR ATUAL DO LIMITE CENTENA)
tmp(30) := STA & '0' & x"13";      	-- STA @19 	#Armazena o valor do acumulador em MEM[19] (VALOR ATUAL DO LIMITE MILHAR)
tmp(31) := STA & '0' & x"14";      	-- STA @20 	#Armazena o valor do acumulador em MEM[20] (VALOR ATUAL DO LIMITE DEZENA DE MILHAR)
tmp(32) := STA & '0' & x"15";      	-- STA @21 	#Armazena o valor do acumulador em MEM[21] (VALOR ATUAL DO LIMITE CENTENA DE MILHAR)
tmp(33) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega o valor 0 para fazer comparações
tmp(34) := STA & '0' & x"06";      	-- STA @6 	#Armazena o valor do acumulador em MEM[6]
tmp(35) := LDI & '0' & x"01";      	-- LDI $1 	#Carrega o valor 1 para fazer incrementos
tmp(36) := STA & '0' & x"07";      	-- STA @7 	#Armazena o valor do acumulador em MEM[7]
tmp(37) := LDI & '0' & x"0A";      	-- LDI $10 	#Carrega o valor 10 para fazer comparações de limite
tmp(38) := STA & '0' & x"08";      	-- STA @8 	#Armazena o valor do acumulador em MEM[8]
tmp(39) := LDI & '0' & x"80";      	-- LDI $128 	#Carrega o valor 10 para fazer comparações de limite máximo
tmp(40) := STA & '0' & x"09";      	-- STA @9 	#Armazena o valor do acumulador em MEM[9]
tmp(41) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega o valor 0 para FLAG INIBIR
tmp(42) := STA & '0' & x"32";      	-- STA @50 	#Flag de inibir a contagem
tmp(43) := NOP & '0' & x"00";      	-- NOP 	#LOOP PRINCIPAL
tmp(44) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(45) := STA & '1' & x"00";      	-- STA @256 	#Limpa os LEDS0~7
tmp(46) := JSR & '1' & x"3A";      	-- JSR @ATUALIZA_TELA 	#Responsável em atualizar a tela
tmp(47) := LDA & '1' & x"60";      	-- LDA @352 	#Carrega o acumulador com a leitura do botão KEY0
tmp(48) := CEQ & '0' & x"07";      	-- CEQ @7 	#Compara o valor de KEY0 com o valor 1
tmp(49) := JEQ & '0' & x"3C";      	-- JEQ @GOTO_DEF_LIMITE 	#Jump para a linha onde realizara o JSR da definição de limite
tmp(50) := LDA & '1' & x"61";      	-- LDA @353 	#Carrega o acumulador com a leitura do botão KEY1
tmp(51) := CEQ & '0' & x"07";      	-- CEQ @7 	#Compara o valor de KEY1 com o valor 1
tmp(52) := JEQ & '0' & x"3F";      	-- JEQ @GOTO_INCREMENTA 	#Jump para a linha onde realizara o JSR de incremento
tmp(53) := LDA & '1' & x"64";      	-- LDA @356 	#Carrega o acumulador com a leitura do botão FPGA_RESET
tmp(54) := CEQ & '0' & x"07";      	-- CEQ @7 	#Compara o valor de KEY1 com o valor 1
tmp(55) := JEQ & '0' & x"42";      	-- JEQ @GOTO_RESET_CONTAGEM 	#Jump para a linha onde realizara o JSR de reset
tmp(56) := LDA & '0' & x"32";      	-- LDA @50 	#Carrega o valor da flag de inibir a contagem no acumulador
tmp(57) := CEQ & '0' & x"06";      	-- CEQ @6 	#Checa se a flag de inibir contagem nao esta setada
tmp(58) := JEQ & '0' & x"44";      	-- JEQ @GOTO_CHECA_LIMITE 	#Vai para a subrotina de checagem de limite
tmp(59) := JMP & '0' & x"2B";      	-- JMP @MAIN_LOOP 	#Volta para o MAIN_LOOP e espera o usuário realizar um evento
tmp(60) := NOP & '0' & x"00";      	-- NOP 	#GOTO_DEF_LIMITE
tmp(61) := JSR & '0' & x"47";      	-- JSR @DEF_LIMITE 
tmp(62) := JMP & '0' & x"2B";      	-- JMP @MAIN_LOOP 
tmp(63) := NOP & '0' & x"00";      	-- NOP 	#GOTO_INCREMENTA
tmp(64) := JSR & '0' & x"F0";      	-- JSR @INCREMENTA
tmp(65) := JMP & '0' & x"2B";      	-- JMP @MAIN_LOOP
tmp(66) := NOP & '0' & x"00";      	-- NOP 	#GOTO_RESET_CONTAGEM
tmp(67) := JMP & '0' & x"00";      	-- JMP @BEGIN
tmp(68) := NOP & '0' & x"00";      	-- NOP 	#GOTO_CHECA_LIMITE
tmp(69) := JSR & '1' & x"49";      	-- JSR @CHECA_LIMITE 	#Jump na subrotina de checagem de limite
tmp(70) := JMP & '0' & x"2B";      	-- JMP @MAIN_LOOP
tmp(71) := NOP & '0' & x"00";      	-- NOP 	# DEF_LIMITE
tmp(72) := STA & '1' & x"FF";      	-- STA @511 	#RESET no KEY0
tmp(73) := LDI & '0' & x"01";      	-- LDI $1 	#Carrega o valor 1
tmp(74) := LDA & '0' & x"32";      	-- LDA @50 	#Carrega FLAG DE INIBIR CONTAGEM
tmp(75) := CEQ & '0' & x"07";      	-- CEQ @7 @Comparar se a flag está setada
tmp(76) := JEQ & '0' & x"EE";      	-- JEQ @RETORNO_MAIN_LOOP
tmp(77) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega acumulador com 0
tmp(78) := STA & '1' & x"20";      	-- STA @288 	#Escreve no HEX0
tmp(79) := STA & '1' & x"21";      	-- STA @289 	#Escreve no HEX1
tmp(80) := STA & '1' & x"22";      	-- STA @290 	#Escreve no HEX2 
tmp(81) := STA & '1' & x"23";      	-- STA @291 	#Escreve no HEX3
tmp(82) := STA & '1' & x"24";      	-- STA @292 	#Escreve no HEX4
tmp(83) := STA & '1' & x"25";      	-- STA @293 	#Escreve no HEX5
tmp(84) := LDI & '0' & x"00";      	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(85) := STA & '1' & x"FF";      	-- STA @511 	#RESET no KEY0
tmp(86) := LDI & '0' & x"01";      	-- LDI $1 	#Carrega o valor 1
tmp(87) := STA & '1' & x"00";      	-- STA @256 	#Armazena o valor 1 no LEDR0
tmp(88) := JMP & '0' & x"5E";      	-- JMP @BUSY_WAITING_1
tmp(89) := NOP & '0' & x"00";      	-- NOP 	#COLOCA_9_UNIDADE
tmp(90) := LDI & '0' & x"09";      	-- LDI $9 	#Carrega 9 no acumulador
tmp(91) := STA & '1' & x"20";      	-- STA @288 	#Escreve no HEX0
tmp(92) := STA & '0' & x"10";      	-- STA @16 	#Escreve no VALOR ATUAL DO LIMITE UNIDADE
tmp(93) := JMP & '0' & x"6A";      	-- JMP @SALVA_UNIDADE
tmp(94) := NOP & '0' & x"00";      	-- NOP 	#BUSY_WAITING_1
tmp(95) := LDA & '1' & x"40";      	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(96) := STA & '0' & x"10";      	-- STA @16 	#Escreve no VALOR ATUAL DO LIMITE UNIDADE
tmp(97) := STA & '1' & x"20";      	-- STA @288 	#Escreve no HEX0
tmp(98) := LDA & '1' & x"60";      	-- LDA @352 	#Ler o valor do KEY0
tmp(99) := CEQ & '0' & x"06";      	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(100) := JEQ & '0' & x"5E";     	-- JEQ @BUSY_WAITING_1 	#Volta na leitura do KEY0
tmp(101) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(102) := SUB & '0' & x"10";     	-- SUB @16 	#Subtrai o VALOR ATUAL DO LIMITE UNIDADE do limite máximo da unidade
tmp(103) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(104) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(105) := JEQ & '0' & x"59";     	-- JEQ @COLOCA_9_UNIDADE 	#Vai para a escrita de 9
tmp(106) := LDA & '0' & x"10";     	-- LDA @16 	#Leitura do VALOR ATUAL DO LIMITE UNIDADE
tmp(107) := STA & '0' & x"0A";     	-- STA @10 	#Armazena o valor do acumulador em MEM[10] (LIMITE UNIDADE)
tmp(108) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(109) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(110) := LDI & '0' & x"02";     	-- LDI $2 	#Carrega o valor 2
tmp(111) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 1 no LEDR1
tmp(112) := JMP & '0' & x"76";     	-- JMP @BUSY_WAITING_2
tmp(113) := NOP & '0' & x"00";     	-- NOP 	#COLOCA_9_DEZENA
tmp(114) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega 9 no acumulador
tmp(115) := STA & '1' & x"21";     	-- STA @289 	#Escreve no HEX1
tmp(116) := STA & '0' & x"11";     	-- STA @17 	#Escreve no VALOR ATUAL DO LIMITE DEZENA
tmp(117) := JMP & '0' & x"82";     	-- JMP @SALVA_DEZENA
tmp(118) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_2
tmp(119) := LDA & '1' & x"40";     	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(120) := STA & '0' & x"11";     	-- STA @17 	#Escreve no VALOR ATUAL DO LIMITE DEZENA
tmp(121) := STA & '1' & x"21";     	-- STA @289 	#Escreve no HEX1
tmp(122) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(123) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(124) := JEQ & '0' & x"76";     	-- JEQ @BUSY_WAITING_2 	#Volta na leitura do KEY0
tmp(125) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(126) := SUB & '0' & x"11";     	-- SUB @17 	#Subtrai o VALOR ATUAL DO LIMITE DEZENA do limite máximo da dezena
tmp(127) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(128) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(129) := JEQ & '0' & x"71";     	-- JEQ @COLOCA_9_DEZENA 	#Vai para a escrita de 9
tmp(130) := LDA & '0' & x"11";     	-- LDA @17 	#Leitura do VALOR ATUAL DO LIMITE DEZENA
tmp(131) := STA & '0' & x"0B";     	-- STA @11 	#Armazena o valor do acumulador em MEM[11] (LIMITE DEZENA)
tmp(132) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(133) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(134) := LDI & '0' & x"04";     	-- LDI $4 	#Carrega o valor 4
tmp(135) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 1 no LEDR2
tmp(136) := JMP & '0' & x"8E";     	-- JMP @BUSY_WAITING_3
tmp(137) := NOP & '0' & x"00";     	-- NOP 	#COLOCA_9_CENTENA
tmp(138) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega 9 no acumulador
tmp(139) := STA & '1' & x"22";     	-- STA @290 	#Escreve no HEX2
tmp(140) := STA & '0' & x"12";     	-- STA @18 	#Escreve no VALOR ATUAL DO LIMITE CENTENA
tmp(141) := JMP & '0' & x"9A";     	-- JMP @SALVA_CENTENA
tmp(142) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_3
tmp(143) := LDA & '1' & x"40";     	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(144) := STA & '0' & x"12";     	-- STA @18 	#Escreve no VALOR ATUAL DO LIMITE CENTENA
tmp(145) := STA & '1' & x"22";     	-- STA @290 	#Escreve no HEX2
tmp(146) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(147) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(148) := JEQ & '0' & x"8E";     	-- JEQ @BUSY_WAITING_3 	#Volta na leitura do KEY0
tmp(149) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(150) := SUB & '0' & x"12";     	-- SUB @18 	#Subtrai o VALOR ATUAL DO LIMITE CENTENA do limite máximo da centena
tmp(151) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(152) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(153) := JEQ & '0' & x"89";     	-- JEQ @COLOCA_9_CENTENA 	#Vai para a escrita de 9
tmp(154) := LDA & '0' & x"12";     	-- LDA @18 	#Leitura do VALOR ATUAL DO LIMITE CENTENA
tmp(155) := STA & '0' & x"0C";     	-- STA @12 	#Armazena o valor do acumulador em MEM[12] (LIMITE CENTENA)
tmp(156) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(157) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(158) := LDI & '0' & x"08";     	-- LDI $8 	#Carrega o valor 8
tmp(159) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 1 no LEDR3
tmp(160) := JMP & '0' & x"A6";     	-- JMP @BUSY_WAITING_4
tmp(161) := NOP & '0' & x"00";     	-- NOP 	#COLOCA_9_MILHAR
tmp(162) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega 9 no acumulador
tmp(163) := STA & '1' & x"23";     	-- STA @291 	#Escreve no HEX3
tmp(164) := STA & '0' & x"13";     	-- STA @19 	#Escreve no VALOR ATUAL DO LIMITE MILHAR
tmp(165) := JMP & '0' & x"B2";     	-- JMP @SALVA_MILHAR
tmp(166) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_4
tmp(167) := LDA & '1' & x"40";     	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(168) := STA & '0' & x"13";     	-- STA @19 	#Escreve no VALOR ATUAL DO LIMITE MILHAR
tmp(169) := STA & '1' & x"23";     	-- STA @291 	#Escreve no HEX3
tmp(170) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(171) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(172) := JEQ & '0' & x"A6";     	-- JEQ @BUSY_WAITING_4 	#Volta na leitura do KEY0
tmp(173) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(174) := SUB & '0' & x"13";     	-- SUB @19 	#Subtrai o VALOR ATUAL DO LIMITE MILHAR do limite máximo do milhar
tmp(175) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(176) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(177) := JEQ & '0' & x"A1";     	-- JEQ @COLOCA_9_MILHAR 	#Vai para a escrita de 9
tmp(178) := LDA & '0' & x"13";     	-- LDA @19 	#Leitura do VALOR ATUAL DO LIMITE MILHAR
tmp(179) := STA & '0' & x"0D";     	-- STA @13 	#Armazena o valor do acumulador em MEM[13] (LIMITE MILHAR)
tmp(180) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(181) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(182) := LDI & '0' & x"10";     	-- LDI $16 	#Carrega o valor 16
tmp(183) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 1 no LEDR4
tmp(184) := JMP & '0' & x"BE";     	-- JMP @BUSY_WAITING_5
tmp(185) := NOP & '0' & x"00";     	-- NOP 	#COLOCA_9_DEZENA_MILHAR
tmp(186) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega 9 no acumulador
tmp(187) := STA & '1' & x"24";     	-- STA @292 	#Escreve no HEX4
tmp(188) := STA & '0' & x"14";     	-- STA @20 	#Escreve no VALOR ATUAL DO LIMITE DEZENA MILHAR
tmp(189) := JMP & '0' & x"CA";     	-- JMP @SALVA_DEZENA_MILHAR
tmp(190) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_5
tmp(191) := LDA & '1' & x"40";     	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(192) := STA & '0' & x"14";     	-- STA @20 	#Escreve no VALOR ATUAL DO LIMITE DEZENA DE MILHAR
tmp(193) := STA & '1' & x"24";     	-- STA @292 	#Escreve no HEX4
tmp(194) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(195) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(196) := JEQ & '0' & x"BE";     	-- JEQ @BUSY_WAITING_5 	#Volta na leitura do KEY0
tmp(197) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(198) := SUB & '0' & x"14";     	-- SUB @20 	#Subtrai o VALOR ATUAL DO LIMITE DEZENA DE MILHAR do limite máximo da dezena de milhar
tmp(199) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(200) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(201) := JEQ & '0' & x"B9";     	-- JEQ @COLOCA_9_DEZENA_MILHAR 	#Vai para a escrita de 9
tmp(202) := LDA & '0' & x"14";     	-- LDA @20 	#Leitura do VALOR ATUAL DO LIMITE DEZENA DE MILHAR
tmp(203) := STA & '0' & x"0E";     	-- STA @14 	#Armazena o valor do acumulador em MEM[14] (LIMITE DEZENA DE MILHAR)
tmp(204) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(205) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(206) := LDI & '0' & x"20";     	-- LDI $32 	#Carrega o valor 32
tmp(207) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 1 no LEDR5
tmp(208) := JMP & '0' & x"D6";     	-- JMP @BUSY_WAITING_6
tmp(209) := NOP & '0' & x"00";     	-- NOP 	#COLOCA_9_CENTENA_MILHAR
tmp(210) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega 9 no acumulador
tmp(211) := STA & '1' & x"25";     	-- STA @293 	#Escreve no HEX5
tmp(212) := STA & '0' & x"15";     	-- STA @21 	#Escreve no VALOR ATUAL DO LIMITE CENTENA MILHAR
tmp(213) := JMP & '0' & x"E2";     	-- JMP @SALVA_CENTENA_MILHAR
tmp(214) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_6
tmp(215) := LDA & '1' & x"40";     	-- LDA @320 	#Leitura do SW0 ~ SW7 
tmp(216) := STA & '0' & x"15";     	-- STA @21 	#Escreve no VALOR ATUAL DO LIMITE CENTENA DE MILHAR
tmp(217) := STA & '1' & x"25";     	-- STA @293 	#Escreve no HEX5
tmp(218) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(219) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(220) := JEQ & '0' & x"D6";     	-- JEQ @BUSY_WAITING_6 	#Volta na leitura do KEY0
tmp(221) := LDI & '0' & x"09";     	-- LDI $9 	#Carrega acumulador com o limite máximo
tmp(222) := SUB & '0' & x"15";     	-- SUB @21 	#Subtrai o VALOR ATUAL DO LIMITE CENTENA DE MILHAR do limite máximo da centena de milhar
tmp(223) := ANDI & '0' & x"80";    	-- ANDI $128 	#AND com 10000000 para ver se valor é negativo
tmp(224) := CEQ & '0' & x"09";     	-- CEQ @9 	#Verifica se o valor do AND deu 128
tmp(225) := JEQ & '0' & x"D1";     	-- JEQ @COLOCA_9_CENTENA_MILHAR 	#Vai para a escrita de 9
tmp(226) := LDA & '0' & x"15";     	-- LDA @21 	#Leitura do VALOR ATUAL DO LIMITE CENTENA DE MILHAR
tmp(227) := STA & '0' & x"0F";     	-- STA @15 	#Armazena o valor do acumulador em MEM[15] (LIMITE CENTENA DE MILHAR)
tmp(228) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(229) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(230) := LDI & '0' & x"FF";     	-- LDI $255 	#Carrega o valor 255
tmp(231) := STA & '1' & x"00";     	-- STA @256 	#Armazena o valor 255 nos LEDR0~LEDR7
tmp(232) := NOP & '0' & x"00";     	-- NOP 	#BUSY_WAITING_7
tmp(233) := LDA & '1' & x"60";     	-- LDA @352 	#Ler o valor do KEY0
tmp(234) := CEQ & '0' & x"06";     	-- CEQ @6 	#Compara o acumulador com o valor 0
tmp(235) := JEQ & '0' & x"E8";     	-- JEQ @BUSY_WAITING_7 	#Volta na leitura do KEY0
tmp(236) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(237) := STA & '1' & x"FF";     	-- STA @511 	#RESET no KEY0
tmp(238) := NOP & '0' & x"00";     	-- NOP 	#RETORNO_MAIN_LOOP
tmp(239) := RET & '0' & x"00";     	-- RET
tmp(240) := NOP & '0' & x"00";     	-- NOP 	# INCREMENTA
tmp(241) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(242) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(243) := LDA & '0' & x"32";     	-- LDA @50 	#Carrega FLAG DE INIBIR CONTAGEM
tmp(244) := CEQ & '0' & x"07";     	-- CEQ @7 @Comparar se a flag está setada
tmp(245) := JEQ & '1' & x"47";     	-- JEQ @RETORNO
tmp(246) := LDI & '0' & x"00";     	-- LDI $0 	# Carrega zero
tmp(247) := STA & '1' & x"02";     	-- STA @258 	#Apaga o LED 9 
tmp(248) := LDA & '0' & x"00";     	-- LDA @0 	# Carrega conteudo das UNIDADES
tmp(249) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor das UNIDADES
tmp(250) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(251) := JEQ & '1' & x"00";     	-- JEQ @INCREMENTA_DEZENA 	# Pula para incrementar dezena quando há overflow na unidade
tmp(252) := STA & '0' & x"00";     	-- STA @0 	# Guarda o valor novo das UNIDADES
tmp(253) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(254) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(255) := RET & '0' & x"00";     	-- RET 	# Retorna para a MAIN LOOP
tmp(256) := NOP & '0' & x"00";     	-- NOP 	#INCREMENTA_DEZENA
tmp(257) := LDA & '0' & x"06";     	-- LDA @6 	# Carrega zero
tmp(258) := STA & '0' & x"00";     	-- STA @0 	# Define o valor das unidades com zero
tmp(259) := LDA & '0' & x"01";     	-- LDA @1 	# Carrega valor das dezenas
tmp(260) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor das DEZENAS
tmp(261) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(262) := JEQ & '1' & x"0B";     	-- JEQ @INCREMENTA_CENTENA 	# Pula para incrementar centena quando há overflow na dezena
tmp(263) := STA & '0' & x"01";     	-- STA @1 	# Salva o novo valor das DEZENAS
tmp(264) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(265) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(266) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(267) := NOP & '0' & x"00";     	-- NOP 	#INCREMENTA_CENTENA
tmp(268) := LDA & '0' & x"06";     	-- LDA @6 	# Carrega zero
tmp(269) := STA & '0' & x"01";     	-- STA @1 	# Define o valor das dezenas com zero
tmp(270) := LDA & '0' & x"02";     	-- LDA @2 	# Carrega valor das centenas
tmp(271) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor das CENTENAS
tmp(272) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(273) := JEQ & '1' & x"16";     	-- JEQ @INCREMENTA_MILHAR 	# Pula para incrementar milhar quando há overflow na centena
tmp(274) := STA & '0' & x"02";     	-- STA @2 	# Salva o novo valor das CENTENAS
tmp(275) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(276) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(277) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(278) := NOP & '0' & x"00";     	-- NOP 	#INCREMENTA_MILHAR
tmp(279) := LDA & '0' & x"06";     	-- LDA @6 	# Carrega zero
tmp(280) := STA & '0' & x"02";     	-- STA @2 	# Define o valor das cetenas com zero
tmp(281) := LDA & '0' & x"03";     	-- LDA @3 	# Carrega valor dos milhares
tmp(282) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor dos MILHARES
tmp(283) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(284) := JEQ & '1' & x"21";     	-- JEQ @INCREMENTA_DEZENA_MILHAR 	# Pula para incrementar dezena de milhar quando há overflow no milhar
tmp(285) := STA & '0' & x"03";     	-- STA @3 	# Salva o novo valor dos MILHARES
tmp(286) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(287) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(288) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(289) := NOP & '0' & x"00";     	-- NOP 	#INCREMENTA_DEZENA_MILHAR
tmp(290) := LDA & '0' & x"06";     	-- LDA @6 	# Carrega zero
tmp(291) := STA & '0' & x"03";     	-- STA @3 	# Define o valor dos milhares com zero
tmp(292) := LDA & '0' & x"04";     	-- LDA @4 	# Carrega valor das dezenas de milhar
tmp(293) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor das DEZENAS DE MILHAR
tmp(294) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(295) := JEQ & '1' & x"2C";     	-- JEQ @INCREMENTA_CENTENA_MILHAR 	# Pula para incrementar centena de milhar quando há overflow na dezena de milhar
tmp(296) := STA & '0' & x"04";     	-- STA @4 	# Salva o novo valor das DEZENAS DE MILHAR
tmp(297) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(298) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(299) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(300) := NOP & '0' & x"00";     	-- NOP 	#INCREMENTA_CENTENA_MILHAR
tmp(301) := LDA & '0' & x"06";     	-- LDA @6 	# Carrega zero
tmp(302) := STA & '0' & x"04";     	-- STA @4 	# Define o valor das dezenas de milhar com zero
tmp(303) := LDA & '0' & x"05";     	-- LDA @5 	# Carrega valor das centenas de milhar
tmp(304) := SOMA & '0' & x"07";    	-- SOMA @7 	# Soma 1 ao valor das CENTENAS DE MILHAR
tmp(305) := CEQ & '0' & x"08";     	-- CEQ @8 	# Comparar com o valor 10
tmp(306) := JEQ & '1' & x"37";     	-- JEQ @VOLTAR_MAIN 	# Volta para main loop quando atingir o máximo das centenas de milhar
tmp(307) := STA & '0' & x"02";     	-- STA @2 	# Salva o novo valor das CENTENAS
tmp(308) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(309) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(310) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(311) := LDI & '0' & x"00";     	-- LDI $0 	#Carrega o acumulador com o valor 0
tmp(312) := STA & '1' & x"FE";     	-- STA @510 	#RESET no KEY1
tmp(313) := RET & '0' & x"00";     	-- RET 	# Retorna para MAIN LOOP
tmp(314) := NOP & '0' & x"00";     	-- NOP 	#Atualiza tela
tmp(315) := LDA & '0' & x"00";     	-- LDA @0 	# Carrega UNIDADES
tmp(316) := STA & '1' & x"20";     	-- STA @288 	# Mostra unidade no HEX0
tmp(317) := LDA & '0' & x"01";     	-- LDA @1 	# Carrega DEZENA
tmp(318) := STA & '1' & x"21";     	-- STA @289 	# Mostra unidade no HEX1
tmp(319) := LDA & '0' & x"02";     	-- LDA @2 	# Carrega CENTENA
tmp(320) := STA & '1' & x"22";     	-- STA @290 	# Mostra unidade no HEX2
tmp(321) := LDA & '0' & x"03";     	-- LDA @3 	# Carrega MILHAR
tmp(322) := STA & '1' & x"23";     	-- STA @291 	# Mostra unidade no HEX3
tmp(323) := LDA & '0' & x"04";     	-- LDA @4 	# Carrega DEZENA DE MILHAR
tmp(324) := STA & '1' & x"24";     	-- STA @292 	# Mostra unidade no HEX4
tmp(325) := LDA & '0' & x"05";     	-- LDA @5 	# Carrega CENTENA DE MILHAR
tmp(326) := STA & '1' & x"25";     	-- STA @293 	# Mostra unidade no HEX5
tmp(327) := NOP & '0' & x"00";     	-- NOP 	#RETORNO MAIN LOOP
tmp(328) := RET & '0' & x"00";     	-- RET
tmp(329) := LDA & '0' & x"00";     	-- LDA @0 	#Carrega o valor atual da UNIDADE no acumulador
tmp(330) := CEQ & '0' & x"0A";     	-- CEQ @10 	#Compara o valor do acumulador com o valor de limite da UNIDADE
tmp(331) := JEQ & '1' & x"4D";     	-- JEQ @CHECA_DEZENA 	#Jump para a checagem da DEZENA
tmp(332) := RET & '0' & x"00";     	-- RET
tmp(333) := NOP & '0' & x"00";     	-- NOP 	#CHECA_DEZENA
tmp(334) := LDA & '0' & x"01";     	-- LDA @1 	#Carrega o valor atual da DEZENA no acumulador
tmp(335) := CEQ & '0' & x"0B";     	-- CEQ @11 	#Compara o valor do acumulador com o valor de limite da DEZENA
tmp(336) := JEQ & '1' & x"52";     	-- JEQ @CHECA_CENTENA 	#Jump para a checagem da CENTENA
tmp(337) := RET & '0' & x"00";     	-- RET
tmp(338) := NOP & '0' & x"00";     	-- NOP 	#CHECA_CENTENA
tmp(339) := LDA & '0' & x"02";     	-- LDA @2 	#Carrega o valor atual da CENTENA no acumulador
tmp(340) := CEQ & '0' & x"0C";     	-- CEQ @12 	#Compara o valor do acumulador com o valor de limite da CENTENA
tmp(341) := JEQ & '1' & x"57";     	-- JEQ @CHECA_MILHAR 	#Jump para a checagem da MILHAR
tmp(342) := RET & '0' & x"00";     	-- RET
tmp(343) := NOP & '0' & x"00";     	-- NOP 	#CHECA_MILHAR
tmp(344) := LDA & '0' & x"03";     	-- LDA @3 	#Carrega o valor atual da MILHAR no acumulador
tmp(345) := CEQ & '0' & x"0D";     	-- CEQ @13 	#Compara o valor do acumulador com o valor de limite da MILHAR
tmp(346) := JEQ & '1' & x"5C";     	-- JEQ @CHECA_DEZENA_MILHAR 	#Jump para a checagem da DEZENA DE MILHAR
tmp(347) := RET & '0' & x"00";     	-- RET
tmp(348) := NOP & '0' & x"00";     	-- NOP 	#CHECA_DEZENA_MILHAR
tmp(349) := LDA & '0' & x"04";     	-- LDA @4 	#Carrega o valor atual da DEZENA_MILHAR no acumulador
tmp(350) := CEQ & '0' & x"0E";     	-- CEQ @14 	#Compara o valor do acumulador com o valor de limite da DEZENA_MILHAR
tmp(351) := JEQ & '1' & x"61";     	-- JEQ @CHECA_CENTENA_MILHAR 	#Jump para a checagem da CENTENA_MILHAR
tmp(352) := RET & '0' & x"00";     	-- RET
tmp(353) := NOP & '0' & x"00";     	-- NOP 	#CENTENA_MILHAR
tmp(354) := LDA & '0' & x"05";     	-- LDA @5 	#Carrega o valor atual da CENTENA_MILHAR no acumulador
tmp(355) := CEQ & '0' & x"0F";     	-- CEQ @15 	#Compara o valor do acumulador com o valor de limite da CENTENA_MILHAR
tmp(356) := JEQ & '1' & x"66";     	-- JEQ @INIBIR_FLAG 	#Jump para a parte responsável em setar a flag de inibir contagem e ligar LED de Overflow
tmp(357) := RET & '0' & x"00";     	-- RET
tmp(358) := NOP & '0' & x"00";     	-- NOP 	#INIBIR_FLAG
tmp(359) := LDI & '0' & x"01";     	-- LDI $1 	#Carregar acumulador com valor 1
tmp(360) := STA & '0' & x"32";     	-- STA @50 	#Ativa flag de inibir a contagem
tmp(361) := STA & '1' & x"02";     	-- STA @258 	#Liga LED9 de Limite Atingido
tmp(362) := RET & '0' & x"00";     	-- RET

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;		