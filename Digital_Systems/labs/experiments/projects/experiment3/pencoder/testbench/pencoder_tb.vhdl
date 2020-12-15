library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pencoder_tb is
end entity;

architecture tb_pencoder of pencoder_tb is
	component pencoder is
		Port (
		signal i : STD_LOGIC_VECTOR (3 downto 0);
		a0,a1,v: out std_logic);
	end component;
	signal i : STD_LOGIC_VECTOR (3 downto 0);
	signal a0: STD_LOGIC;
	signal a1: STD_LOGIC;
	signal v : STD_LOGIC;

begin

	uut: pencoder port map(
		i => i,
		a0 => a0,
		a1 => a1,
		v => v
	);

	stim: process
		begin
			i <= "0000"; wait for 10 ns;
			i <= "0001"; wait for 10 ns;
			i <= "0010"; wait for 10 ns;
			i <= "0011"; wait for 10 ns;
			i <= "0111"; wait for 10 ns;
			i <= "1111"; wait for 10 ns;
		wait;

end process;
end;
