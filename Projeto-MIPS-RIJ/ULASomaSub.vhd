library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZero: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal andop : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal orop : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal slt : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal A_menos_B : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	

	
    begin
	 
		A_menos_B <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		passa <= STD_LOGIC_VECTOR(unsigned(entradaB));
		andop <= STD_LOGIC_VECTOR(unsigned(entradaA) AND unsigned(entradaB));
		orop <= STD_LOGIC_VECTOR(unsigned(entradaA) OR unsigned(entradaB));
		slt <= "00000000000000000000000000000001" when (A_menos_B(31) = '1') else
	          "00000000000000000000000000000000";
				 
		
      saida <= soma when (seletor = "001") else
					subtracao when (seletor = "000") else
					andop when (seletor = "010") else
					orop when (seletor = "011") else
					slt when (seletor = "100") else
					passa;
		
		flagZero <= '1' when (subtracao = "00000000000000000000000000000000") else '0';
end architecture;