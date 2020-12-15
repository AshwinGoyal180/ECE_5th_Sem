library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux8_1 is
port(
	A,B,C,D,E,F,G,H : in STD_LOGIC;
	S2,S1,S0: in STD_LOGIC;
	Z1: out STD_LOGIC
);
end mux8_1;

architecture smsa of mux8_1 is
component mux2_1
port(
	A,B:in STD_LOGIC;
	S2: in STD_LOGIC;
	Z: out STD_LOGIC
);
end component;

component mux4_1
port(
	A,B,C,D : in STD_LOGIC;
	S0,S1: in STD_LOGIC;
	Z: out STD_LOGIC
);
end component;

signal temp1, temp2: std_logic;
begin
	m1: mux4_1 port map(A,B,C,D,S0,S1,temp1);
	m2: mux4_1 port map(E,F,G,H,S0,S1,temp2);
	m3: mux2_1 port map(temp1,temp2,S2,Z1);

end smsa;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
port(
    A,B,C,D : in STD_LOGIC;
    S0,S1 : in STD_LOGIC;
    Z : out STD_LOGIC
);
end mux4_1;

architecture sms of mux4_1 is
begin
	process (A,B,C,D,S0,S1) is
	begin
		  if (S0 ='0' and S1 = '0') then
		      Z <= A;
		  elsif (S0 ='1' and S1 = '0') then
		      Z <= B;
		  elsif (S0 ='0' and S1 = '1') then
		      Z <= C;
		  else
		      Z <= D;
	      end if;
	end process;
end sms;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
port(
	A,B:in STD_LOGIC;
	S2:in STD_LOGIC;
	Z:out STD_LOGIC
);
end mux2_1;

architecture sms of mux2_1 is
begin
 with S2 select
	Z<= A when '0',
	B when others;
end sms;

