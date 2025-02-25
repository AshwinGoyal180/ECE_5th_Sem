library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
port(
	A,B,C,D : in STD_LOGIC;
	S0,S1: in STD_LOGIC;
	Z: out STD_LOGIC
);
end mux4_1;

architecture smsa of mux4_1 is
component mux2_1
port(
	A,B : in STD_LOGIC;
	S: in STD_LOGIC;
	Z: out STD_LOGIC
);
end component;

signal temp1, temp2: std_logic;
begin
	m1: mux2_1 port map(A,B,S0,temp1);
	m2: mux2_1 port map(C,D,S0,temp2);
	m3: mux2_1 port map(temp1,temp2,S1,Z);
end smsa;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
port(
	A,B:in STD_LOGIC;
	S:in STD_LOGIC;
	Z:out STD_LOGIC
);
end mux2_1;

architecture sms of mux2_1 is
begin
 with S select
	Z<= A when '0',
	B when others;
end sms;

