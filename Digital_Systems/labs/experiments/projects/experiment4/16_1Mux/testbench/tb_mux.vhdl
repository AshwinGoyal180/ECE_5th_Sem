LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_mux IS
END tb_mux;

ARCHITECTURE behavior OF tb_mux IS

    COMPONENT mux16_1
    PORT(
	A : in STD_LOGIC_VECTOR(15 downto 0);
	S: in STD_LOGIC_VECTOR(3 downto 0);
	Z1: out STD_LOGIC
        );
    END COMPONENT;

   signal A : std_logic_vector (15 downto 0) ;
   signal S : std_logic_vector (3 downto 0);
 	--Outputs
   signal Z1 : std_logic;

BEGIN
   uut: mux16_1 PORT MAP (
         A  => A,
         S => S,
         Z1 => Z1
        );

   stim_proc: process
   begin
      wait for 100 ns;
	A <= "1010101010101010";

	S <= "0000"; wait for 100 ns;
	S <= "0001"; wait for 100 ns;
	S <= "0010"; wait for 100 ns;
	S <= "0011"; wait for 100 ns;
	S <= "0100"; wait for 100 ns;
	S <= "0101"; wait for 100 ns;
	S <= "0110"; wait for 100 ns;
	S <= "0111"; wait for 100 ns;
	S <= "1000"; wait for 100 ns;
	S <= "1001"; wait for 100 ns;
	S <= "1010"; wait for 100 ns;
	S <= "1011"; wait for 100 ns;
	S <= "1100"; wait for 100 ns;
	S <= "1101"; wait for 100 ns;
	S <= "1110"; wait for 100 ns;
	S <= "1111"; wait for 100 ns;

	end process;
END;

