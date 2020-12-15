library ieee;
use ieee.std_logic_1164.all;

entity tb_bin is
end tb_bin;

architecture behav of tb_bin is
	component gray2bin is
		port(g: in std_logic_vector (3 downto 0);
		     b: out std_logic_vector (3 downto 0)
	     );
	end component;

	signal input : std_logic_vector (3 downto 0);
	signal output: std_logic_vector (3 downto 0);
begin
	uut: gray2bin port map(
		g => input,
		b => output);
	stim_proc: process
	begin
		input <= "0000"; wait for 100 ns;
		input <= "0001"; wait for 100 ns;
		input <= "0010"; wait for 100 ns;
		input <= "0011"; wait for 100 ns;
		input <= "0100"; wait for 100 ns;
		input <= "0101"; wait for 100 ns;
		input <= "0110"; wait for 100 ns;
		input <= "0111"; wait for 100 ns;
		input <= "1000"; wait for 100 ns;
		input <= "1001"; wait for 100 ns;
		input <= "1010"; wait for 100 ns;
		input <= "1011"; wait for 100 ns;
		input <= "1100"; wait for 100 ns;
		input <= "1101"; wait for 100 ns;
		input <= "1110"; wait for 100 ns;
		input <= "1111"; wait for 100 ns;
		wait;
	end process;
end;




