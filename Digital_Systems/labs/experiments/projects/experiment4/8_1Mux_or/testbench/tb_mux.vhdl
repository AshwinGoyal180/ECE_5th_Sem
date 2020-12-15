LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_mux IS
END tb_mux;

ARCHITECTURE behavior OF tb_mux IS

    COMPONENT mux8_1
    PORT(
	A : in STD_LOGIC_VECTOR(7 downto 0);
	S: in STD_LOGIC_VECTOR(1 downto 0);
	E:in STD_LOGIC;
	Z1: out STD_LOGIC
        );
    END COMPONENT;

   signal A : std_logic_vector (7 downto 0) ;
   signal S : std_logic_vector (1 downto 0);
   signal E : std_logic;
 	--Outputs
   signal Z1 : std_logic;

BEGIN
   uut: mux8_1 PORT MAP (
         A  => A,
         S => S,
	 E => E,
         Z1 => Z1
        );

   stim_proc: process
   begin
      wait for 100 ns;
	A <= "10101010";
	E <= '0';

	S <= "00";
		wait for 100 ns;
	S <= "01";
		wait for 100 ns;
	S <= "10";
		wait for 100 ns;
	S <= "11";
		wait for 100 ns;
	E <= '1';
	S <= "00";
	        wait for 100 ns;
	S <= "01";
	        wait for 100 ns;
	S <= "10";
		wait for 100 ns;
	S <= "11";
		wait for 100 ns;
	end process;
END;

