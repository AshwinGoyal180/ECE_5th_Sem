library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd2excess3 is
port(bcd: in std_logic_vector (3 downto 0);
     e3: out std_logic_vector (3 downto 0));
end bcd2excess3;

architecture arch_bcd2excess3 of bcd2excess3 is

begin
  with bcd select
	  e3 <= "0011" WHEN "0000",
		"0100" when "0001",
		"0101" when "0010",
		"0110" when "0011",
		"0111" when "0100",
		"1000" when "0101",
		"1001" when "0110",
		"1010" when "0111",
		"1011" when "1000",
		"1100" when "1001",
		"1101" when "1010",
		"1110" when "1011",
		"1111" when "1100",
		"0000" when "1101",
		"0001" when "1110",
		"0010" when others;
end arch_bcd2excess3;

