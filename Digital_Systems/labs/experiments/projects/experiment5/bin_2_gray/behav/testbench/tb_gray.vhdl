library ieee;
use ieee.std_logic_1164.all;

entity tb_gray is
end tb_gray;

architecture behav of tb_gray is
	component bin2gray_behav is
		port(b: in bit_vector (3 downto 0);
		     y: out bit_vector (3 downto 0)
	     );
	end component;

	signal input : bit_vector (3 downto 0);
	signal output: bit_vector (3 downto 0);
begin
	uut: bin2gray_behav port map(
		b => input,
		y => output);
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




