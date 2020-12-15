library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
port(
A : in STD_LOGIC;
B: in STD_LOGIC;
C: in STD_LOGIC;
S:out STD_LOGIC;
CA: out STD_LOGIC
);
end fulladder;

architecture smsb of fulladder is
component orgate
port( A,B:in STD_LOGIC;
Z: out STD_LOGIC);
end component;

component half_adder
port( a : in STD_LOGIC;
b: in STD_LOGIC;
sum:out STD_LOGIC;
carry: out STD_LOGIC);
end component;

signal sum1,carry1,carry2: std_logic;
begin
m1: half_adder port map(A,B,sum1,carry1);
m2: half_adder port map(C,sum1,S,carry2);
m3: orgate port map(carry1,carry2,CA);

end smsb;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity half_adder is
   port(a,b:in STD_LOGIC; sum,carry:out STD_LOGIC);
end half_adder;

architecture halfadder of half_adder is
begin
   sum<= a xor b;
   carry <= a and b;
end halfadder;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orgate is
port(A,B:in STD_LOGIC;
Z : out STD_LOGIC);
end orgate;

architecture sms of orgate is
begin
	Z <= A or B;
end sms;

