library ieee;
use ieee.std_logic_1164.all;

entity bcd2excess3 is
port(bcd: in std_logic_vector (3 downto 0);
     e3: out std_logic_vector (3 downto 0));
end bcd2excess3;

architecture arch_bcd2excess3 of bcd2excess3 is
begin
	process(bcd)
	begin

	if (bcd < "1010") then
		e3(3) <= bcd(3) or (bcd(2) and (bcd(1) or bcd(0)) );
		e3(2) <= ( (not bcd(2)) and (bcd(1) or bcd(0)) ) or ( bcd(2) and
		(not bcd(1)) and (not bcd(0)) );
		e3(1) <= bcd(1) xnor bcd(0);
		e3(0) <= not bcd(0);
	else
		e3 <= "ZZZZ";
	end if;
	end process;
end arch_bcd2excess3;
