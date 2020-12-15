library ieee;
use ieee.std_logic_1164.all;

entity bin2gray is
port(b: in std_logic_vector (3 downto 0);
     y: out std_logic_vector (3 downto 0));
end bin2gray;

architecture arch_bin2gray of bin2gray is
begin
	y(3) <= b(3);
	y(2) <= b(3) xor b(2);
	y(1) <= b(2) xor b(1);
	y(0) <= b(1) xor b(0);
end arch_bin2gray;


