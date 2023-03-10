library ieee;
use ieee.std_logic_1164.all;

entity clock_generator is
	generic (
		clk_period : time := 10ns
	);

	port (
		clk : out std_logic
	);
end clock_generator;

architecture behavior of clock_generator is

begin

	clk_generation : process
	begin
		clk <= '0';
		wait for clk_period / 2;
		clk <= '1';
		wait for clk_period / 2;
	end process clk_generation;
end architecture behavior;