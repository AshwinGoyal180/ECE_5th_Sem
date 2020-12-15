library ieee;
use ieee.std_logic_1164.all;
entity orgate is
port(
	A:IN std_logic;
	B:IN std_logic;
	Y:OUT std_logic
);
end orgate;

architecture sms of orgate is
component mux is
port(
	I0:IN std_logic;
	I1:IN std_logic;
	S1:IN std_logic;
	y: OUT std_logic
);
end component;

begin
	mux1:mux port map(I0=>B,I1=>'1',S1=>A,y=>Y);
end sms;

library IEEE;
use IEEE.std_logic_1164.all;
entity mux is
port(
	I0:IN std_logic;
	I1:IN std_logic;
	S1:IN std_logic;
	y:OUT std_logic
);
end mux;
architecture orgate_arch of mux is
	begin
	y<= I0 when S1='0' Else
	I1;
end orgate_arch;
