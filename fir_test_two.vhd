library ieee;
use ieee.std_logic_1164.all;
library work;
use work.npath_package.all;

entity fir_test_two is
	generic (
		n : natural := n_coefficients;
		width : natural := n_bits;
		width_address : natural := size_coefficient;
		clk_period : time := clk_period_smp
	);
	port (
		vin : in std_logic_vector(width - 1 downto 0);
		coeff : out real := 0.0;
		vout, q_mux, q_mul, q_sum, q_tmp : out std_logic_vector(width - 1 downto 0);
		address : out std_logic_vector(width_address - 1 downto 0) := (others => '0')
	);
end fir_test_two;

architecture behavior of fir_test_two is

	signal phase_vector : std_logic_vector(n - 1 downto 0) := (others => '0');
	signal clk, clk_r : std_logic;
	signal q_preg, q_firb : bits_array_t(0 to n - 1) := (others => (others => '0'));

	component clock_generator is
		generic (
			clk_period : time := 10ns
		);

		port (
			clk : out std_logic
		);
	end component;

	component fir_small is
		generic (
			n : natural := 4;
			width_address : natural := 2;
			width : natural := 8
		);
		port (
			clk, clk_r : in std_logic;
			vin : in std_logic_vector(width - 1 downto 0);
			coeff_o : out real := 0.0;
			address_o : out std_logic_vector(width_address - 1 downto 0) := (others => '0');
			vout, q_mux_o, q_mul_o, q_sum_o, q_tmp_o : out std_logic_vector(width - 1 downto 0)
		);
	end component;

begin

	clock : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
	clock_smp : clock_generator generic map(clk_period => clk_period/(2*n)) port map(clk => clk_r);
    
	fir_two : fir_small generic map(
		n => n,
		width => width,
		width_address => width_address
		) port map(clk => clk, clk_r => clk_r,
		vin => vin, vout => vout, coeff_o => coeff,
		q_mux_o => q_mux, q_mul_o => q_mul, q_sum_o => q_sum, q_tmp_o => q_tmp, address_o => address);
end behavior;
