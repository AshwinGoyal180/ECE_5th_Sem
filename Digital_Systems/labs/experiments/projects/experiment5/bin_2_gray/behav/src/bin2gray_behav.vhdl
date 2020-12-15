library ieee;
use ieee.std_logic_1164.all;

entity bin2gray_behav is
port(b: in bit_vector (3 downto 0);
     y: out bit_vector (3 downto 0));
end bin2gray_behav;

architecture arch_bin2gray_behav of bin2gray_behav is
begin

process(b)
  begin

    y(3) <= b(3);
    for i in 3 downto 1 loop

	      if ( b(i) = b(i-1)) then y(i-1) <= '0';
	      elsif ( b(i) /= b(i-1)) then y(i-1) <= '1';
	      end if;
	end loop;
      end process;

end arch_bin2gray_behav;

