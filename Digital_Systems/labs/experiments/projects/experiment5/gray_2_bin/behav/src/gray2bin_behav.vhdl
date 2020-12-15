library ieee;
use ieee.std_logic_1164.all;

entity gray2bin_behav is
port(g: in bit_vector (3 downto 0);
     b: inout bit_vector (3 downto 0));
end gray2bin_behav;

architecture arch_gray2bin_behav of gray2bin_behav is
begin

process(g)
  begin
    b(3) <= g(3);

    for i in 2 downto 0 loop
	      if ( b(i+1) = g(i)) then b(i) <= '0';
	      elsif ( b(i+1) /= g(i)) then b(i) <= '1';
	      end if;
	    end loop;
      end process;
end arch_gray2bin_behav;

