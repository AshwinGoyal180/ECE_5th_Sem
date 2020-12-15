LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_mux IS
END tb_mux;

ARCHITECTURE behavior OF tb_mux IS

    COMPONENT mux8_1
    PORT(
	A,B,C,D,E,F,G,H : in STD_LOGIC;
	S2,S1,S0: in STD_LOGIC;
	Z1: out STD_LOGIC
        );
    END COMPONENT;

   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal E : std_logic := '0';
   signal F : std_logic := '0';
   signal G : std_logic := '0';
   signal H : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S2 : std_logic := '0';
 	--Outputs
   signal Z1 : std_logic;

BEGIN
   uut: mux8_1 PORT MAP (
         A => A,
         B => B,
         C => C,
	 D => D,
         E => E,
         F => F,
         G => G,
         H => H,
         S0 => S0,
         S1 => S1,
         S2 => S2,
         Z1 => Z1
        );

   stim_proc: process
   begin
      wait for 100 ns;
	A <= '1';
	B <= '0';
	C <= '1';
	D <= '0';
	E <= '1';
	F <= '0';
	G <= '1';
	H <= '0';

	S0 <= '0'; S1 <= '0'; S2 <= '0';
		wait for 100 ns;
	S0 <= '1'; S1 <= '0'; S2 <= '0';
		wait for 100 ns;
	S0 <= '0'; S1 <= '1'; S2 <= '0';
		wait for 100 ns;
	S0 <= '1'; S1 <= '1'; S2 <= '0';
		wait for 100 ns;
	S0 <= '0'; S1 <= '0'; S2 <= '1';
	        wait for 100 ns;
	S0 <= '1'; S1 <= '0'; S2 <= '1';
	        wait for 100 ns;
	S0 <= '0'; S1 <= '1'; S2 <= '1';
		wait for 100 ns;
	S0 <= '1'; S1 <= '1'; S2 <= '1';
		wait for 100 ns;
	end process;
END;

