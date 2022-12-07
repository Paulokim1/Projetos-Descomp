library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity ULAMIPS is
   generic (larguraDados : natural := 32);
   port (
      entradaA, entradaB : in std_logic_vector(larguraDados-1 downto 0);
      sel : in std_logic_vector(1 downto 0);
      inverteB : in std_logic;
      saida : out std_logic_vector(larguraDados-1 downto 0);
      flagZero : out std_logic;
		overflow : out std_logic
   );
end entity;

architecture comportamento of ULAMIPS is

   signal overflow_OUT : std_logic;

   signal c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30 : std_logic;

begin

ULA1 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(0),
    entradaB => entradaB(0),
    inverteB => inverteB, 
    carryIn => inverteB,
    carryOut => c0,
    sel => sel,
    slt => overflow_OUT,
    saida => saida(0)
);

ULA2 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(1),
    entradaB => entradaB(1),
    inverteB => inverteB, 
    carryIn => c0,
    carryOut => c1,
    sel => sel,
    slt => '0',
    saida => saida(1)
);
  
ULA3 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(2),
    entradaB => entradaB(2),
    inverteB => inverteB, 
    carryIn => c1,
    carryOut => c2,
    sel => sel,
    slt => '0',
    saida => saida(2)
);

ULA4 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(3),
    entradaB => entradaB(3),
    inverteB => inverteB, 
    carryIn => c2,
    carryOut => c3,
    sel => sel,
    slt => '0',
    saida => saida(3)
);

ULA5 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(4),
    entradaB => entradaB(4),
    inverteB => inverteB, 
    carryIn => c3,
    carryOut => c4,
    sel => sel,
    slt => '0',
    saida => saida(4)
);

ULA6 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(5),
    entradaB => entradaB(5),
    inverteB => inverteB, 
    carryIn => c4,
    carryOut => c5,
    sel => sel,
    slt => '0',
    saida => saida(5)
);

ULA7 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(6),
    entradaB => entradaB(6),
    inverteB => inverteB, 
    carryIn => c5,
    carryOut => c6,
    sel => sel,
    slt => '0',
    saida => saida(6)
);

ULA8 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(7),
    entradaB => entradaB(7),
    inverteB => inverteB, 
    carryIn => c6,
    carryOut => c7,
    sel => sel,
    slt => '0',
    saida => saida(7)
);

ULA9 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(8),
    entradaB => entradaB(8),
    inverteB => inverteB, 
    carryIn => c7,
    carryOut => c8,
    sel => sel,
    slt => '0',
    saida => saida(8)
);

ULA10 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(9),
    entradaB => entradaB(9),
    inverteB => inverteB, 
    carryIn => c8,
    carryOut => c9,
    sel => sel,
    slt => '0',
    saida => saida(9)
);

ULA11 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(10),
    entradaB => entradaB(10),
    inverteB => inverteB, 
    carryIn => c9,
    carryOut => c10,
    sel => sel,
    slt => '0',
    saida => saida(10)
);

ULA12 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(11),
    entradaB => entradaB(11),
    inverteB => inverteB, 
    carryIn => c10,
    carryOut => c11,
    sel => sel,
    slt => '0',
    saida => saida(11)
);

ULA13 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(12),
    entradaB => entradaB(12),
    inverteB => inverteB, 
    carryIn => c11,
    carryOut => c12,
    sel => sel,
    slt => '0',
    saida => saida(12)
);

ULA14 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(13),
    entradaB => entradaB(13),
    inverteB => inverteB, 
    carryIn => c12,
    carryOut => c13,
    sel => sel,
    slt => '0',
    saida => saida(13)
);

ULA15 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(14),
    entradaB => entradaB(14),
    inverteB => inverteB, 
    carryIn => c13,
    carryOut => c14,
    sel => sel,
    slt => '0',
    saida => saida(14)
);

ULA16 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(15),
    entradaB => entradaB(15),
    inverteB => inverteB, 
    carryIn => c14,
    carryOut => c15,
    sel => sel,
    slt => '0',
    saida => saida(15)
);

ULA17 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(16),
    entradaB => entradaB(16),
    inverteB => inverteB, 
    carryIn => c15,
    carryOut => c16,
    sel => sel,
    slt => '0',
    saida => saida(16)
);

ULA18 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(17),
    entradaB => entradaB(17),
    inverteB => inverteB, 
    carryIn => c16,
    carryOut => c17,
    sel => sel,
    slt => '0',
    saida => saida(17)
);

ULA19 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(18),
    entradaB => entradaB(18),
    inverteB => inverteB, 
    carryIn => c17,
    carryOut => c18,
    sel => sel,
    slt => '0',
    saida => saida(18)
);

ULA20 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(19),
    entradaB => entradaB(19),
    inverteB => inverteB, 
    carryIn => c18,
    carryOut => c19,
    sel => sel,
    slt => '0',
    saida => saida(19)
);

ULA21 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(20),
    entradaB => entradaB(20),
    inverteB => inverteB, 
    carryIn => c19,
    carryOut => c20,
    sel => sel,
    slt => '0',
    saida => saida(20)
);

ULA22 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(21),
    entradaB => entradaB(21),
    inverteB => inverteB, 
    carryIn => c20,
    carryOut => c21,
    sel => sel,
    slt => '0',
    saida => saida(21)
);

ULA23 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(22),
    entradaB => entradaB(22),
    inverteB => inverteB, 
    carryIn => c21,
    carryOut => c22,
    sel => sel,
    slt => '0',
    saida => saida(22)
);

ULA24 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(23),
    entradaB => entradaB(23),
    inverteB => inverteB, 
    carryIn => c22,
    carryOut => c23,
    sel => sel,
    slt => '0',
    saida => saida(23)
);

ULA25 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(24),
    entradaB => entradaB(24),
    inverteB => inverteB, 
    carryIn => c23,
    carryOut => c24,
    sel => sel,
    slt => '0',
    saida => saida(24)
);

ULA26 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(25),
    entradaB => entradaB(25),
    inverteB => inverteB, 
    carryIn => c24,
    carryOut => c25,
    sel => sel,
    slt => '0',
    saida => saida(25)
);

ULA27 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(26),
    entradaB => entradaB(26),
    inverteB => inverteB, 
    carryIn => c25,
    carryOut => c26,
    sel => sel,
    slt => '0',
    saida => saida(26)
);

ULA28 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(27),
    entradaB => entradaB(27),
    inverteB => inverteB, 
    carryIn => c26,
    carryOut => c27,
    sel => sel,
    slt => '0',
    saida => saida(27)
);

ULA29 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(28),
    entradaB => entradaB(28),
    inverteB => inverteB, 
    carryIn => c27,
    carryOut => c28,
    sel => sel,
    slt => '0',
    saida => saida(28)
);

ULA30 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(29),
    entradaB => entradaB(29),
    inverteB => inverteB, 
    carryIn => c28,
    carryOut => c29,
    sel => sel,
    slt => '0',
    saida => saida(29)
);

ULA31 : entity work.ULA_31_1bit
port map(
    entradaA => entradaA(30),
    entradaB => entradaB(30),
    inverteB => inverteB, 
    carryIn => c29,
    carryOut => c30,
    sel => sel,
    slt => '0',
    saida => saida(30)
);


ULA32 : entity work.ULA_32bit
port map(
   entradaA => entradaA(31),
   entradaB => entradaB(31),
   inverteB => inverteB,
   carryIn      => c30,
   slt      =>  '0',
   sel  => sel,
   saida    =>  saida(31),
   overflow      =>  overflow_OUT
);

flagZero <= '1' when unsigned(saida) = 32x"00" else '0';

end architecture;