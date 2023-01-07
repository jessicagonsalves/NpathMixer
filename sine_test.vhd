library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity sine_test is
	generic (
		clk_period : time := clk_period_smp;
		width : integer := n_bits;
		nsamples : integer := 5-- LOG2 OF THE VALUE
	);
	port (
		sine : out real := 0.0;
		qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
	);
end sine_test;

architecture behavior of sine_test is

	signal clk : std_logic;

	component clock_generator is
		generic (
			clk_period : time := 10ns
		);
		port (
			clk : out std_logic
		);
	end component;

	component sine_generator is
		generic (
			width : integer := 8;
			nsamples : integer := 5 -- LOG2 OF THE VALUE
		);
		port (
			clk : in std_logic;
			sine : out real := 0.0;
			qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
		);
	end component;

begin

	clk_gen : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
	sine_gen : sine_generator generic map(width => width, nsamples => nsamples) port map(clk => clk, sine => sine, qsine_sgn => qsine_sgn);

end behavior;