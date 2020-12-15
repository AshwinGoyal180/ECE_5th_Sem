library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux16_1 is
	port(
	A : in STD_LOGIC_VECTOR(15 downto 0);
	S : in STD_LOGIC_VECTOR( 3 downto 0);
	Z1: out STD_LOGIC
);
end mux16_1;

architecture smsb of mux16_1 is
	component multiplexer_4_1
		port(
		A : in STD_LOGIC_VECTOR( 3 downto 0);
		S : in STD_LOGIC_VECTOR( 1 downto 0);
		Z : out STD_LOGIC
	);
	end component;

	signal temp: STD_LOGIC_VECTOR(3 downto 0);
begin
	m1: multiplexer_4_1 port map( A(3 downto 0), S(1 downto 0), temp(0));
	m2: multiplexer_4_1 port map( A(7 downto 4), S(1 downto 0), temp(1));
	m3: multiplexer_4_1 port map( A(11 downto 8), S(1 downto 0), temp(2));
	m4: multiplexer_4_1 port map( A(15 downto 12), S(1 downto 0), temp(3));
	m5: multiplexer_4_1 port map(temp, S(3 downto 2), Z1);
end smsb;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer_4_1 is
	port(
         A : in STD_LOGIC_VECTOR( 3 downto 0);
         S : in STD_LOGIC_VECTOR(1 downto 0);
         Z : out STD_LOGIC
         );
end multiplexer_4_1;

architecture multiplexer4_1_arc of multiplexer_4_1 is
begin
	with S select
		Z <= A(0) when "00",
		     A(1) when "01",
		     A(2) when "10",
		     A(3) when others;
end multiplexer4_1_arc;
