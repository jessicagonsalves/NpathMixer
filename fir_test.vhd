library ieee;
use ieee.std_logic_1164.all;
library work;
use work.npath_package.all;
use ieee.fixed_pkg.all;

entity fir_test is
	generic (
		n : natural := n_coefficients;
		width : natural := n_bits;
		width_samples : natural := 5;
		clk_period : time := clk_period_smp
	);
	port (
		vout_s : out std_logic_vector(18 downto 0);
		vout : out std_logic_vector(width - 1 downto 0)
	);
end fir_test;

architecture behavior of fir_test is

	signal vin : std_logic_vector(width - 1 downto 0) := (others => '0');
	signal clk, clk_sine : std_logic;

	component clock_generator is
		generic (
			clk_period : time := 10ns
		);

		port (
			clk : out std_logic
		);
	end component;

	component fir_basic is
		generic (
			n : natural := 4;
			width : natural := 8
		);
		port (
			clk : in std_logic;
			vin : in std_logic_vector(width - 1 downto 0);
			vout_s : out std_logic_vector(18 downto 0) := (others => '0');
			vout : out std_logic_vector(width - 1 downto 0)
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

	clock : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
	clock_sine : clock_generator generic map(clk_period => clk_period/(4 * width)) port map(clk => clk_sine);
	sine_gen : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_sine, qsine_sgn => vin);

	fir_one : fir_basic generic map(
		n => n,
		width => width
	) port map(clk => clk, vin => vin, vout => vout, vout_s => vout_s);

end behavior;