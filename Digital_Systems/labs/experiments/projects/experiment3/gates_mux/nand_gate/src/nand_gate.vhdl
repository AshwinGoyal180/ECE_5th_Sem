library ieee;
use ieee.std_logic_1164.all;

entity nandgate is
	port(
		A:IN std_logic;
		B:IN std_logic;
		Y:OUT std_logic
	);
end nandgate;

architecture sms of nandgate is
component mux is
	port(
		I0:IN std_logic;
		I1:IN std_logic;
		S1:IN std_logic;
		y:OUT std_logic
	);
	end component;
signal Y1:std_logic;
begin
	mux1:mux port map(I0=>'1',I1=>'0',S1=>B,y=>Y1);
	mux2:mux port map(I0=>'1',I1=>Y1,S1=>A,y=>Y);
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
architecture nandgate_arch of mux is
	begin
		y<= I0 when S1='0' Else
		I1;
end nandgate_arch;
