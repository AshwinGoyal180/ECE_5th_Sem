library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8_1 is
port(
	A : in STD_LOGIC_VECTOR(7 downto 0);
	S: in STD_LOGIC_VECTOR(1 downto 0);
	E:in STD_LOGIC;
	Z1: out STD_LOGIC
);
end mux8_1;

architecture smsb of mux8_1 is
component orgate
	port(
		A,B:in STD_LOGIC;
		Z: out STD_LOGIC
	);
	end component;

component multiplexer_4_1
	port(
		A : in STD_LOGIC_VECTOR(3 downto 0);
	        S : in STD_LOGIC_VECTOR(1 downto 0);
		E:in STD_LOGIC;
	Z: out STD_LOGIC);
	end component;
signal temp1, temp2,C: std_logic;
begin
	C<=not(E);
	m1: multiplexer_4_1 port map(A(3 downto 0),S,C,temp1);
	m2: multiplexer_4_1 port map(A(7 downto 4),S,E,temp2);
	m3: orgate port map(temp1,temp2,Z1);
end smsb;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multiplexer_4_1 is
port(
	A : in STD_LOGIC_VECTOR(3 downto 0);
	S : in STD_LOGIC_VECTOR(1 downto 0);
	E:in STD_LOGIC;
	Z : out STD_LOGIC
);
end multiplexer_4_1;

architecture multiplexer4_1_arc of multiplexer_4_1 is
begin
	with S select
	Z <= A(0) and E when "00" ,
	A(1) and E when "01" ,
	A(2) and E when "10" ,
	A(3) and E when others;
end multiplexer4_1_arc;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orgate is
port(
	A,B:in STD_LOGIC;
	Z:out STD_LOGIC
);
end orgate;

architecture sms of orgate is
begin
	Z<=A or B;
end sms;

