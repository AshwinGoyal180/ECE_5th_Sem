library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullsubtractor is
port(
A : in STD_LOGIC;
B: in STD_LOGIC;
C: in STD_LOGIC;
D:out STD_LOGIC;
BO: out STD_LOGIC
);
end fullsubtractor;

architecture smsb of fullsubtractor is
	component orgate
		port( A,B:in STD_LOGIC;
		Z : out STD_LOGIC);
	end component;

	component half_subtractor
		port( a: in STD_LOGIC;
		b: in STD_LOGIC;
		diff : out STD_LOGIC;
		borrow: out STD_LOGIC);
	end component;

	signal sum1,carry1,carry2: std_logic;
	begin
	m1: half_subtractor port map(A,B,sum1,carry1);
	m2: half_subtractor port map(C,sum1,D,carry2);
	m3: half_subtractor port map(carry1, carry2, BO);
end smsb;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor is
   port(a,b:in STD_LOGIC; diff,borrow:out STD_LOGIC);
end half_subtractor;

architecture halfsubtractor of half_subtractor is
begin
	diff <= a xor b;
	borrow <= not(a) and b;
end halfsubtractor;
