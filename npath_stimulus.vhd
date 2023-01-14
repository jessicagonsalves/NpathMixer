library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_stimulus is
    generic (
        clk_period : time := clk_period_smp;
        width_phases : natural := n_phases;
        width_coeff : natural := n_coefficients;
        width_samples : natural := n_samples;
        width : natural := n_bits
    );
    port (
        vout_one_s, vout_one_s_am, vout_two_s, vout_two_s_am : out std_logic_vector((width + n_integer) + log2(width_coeff) + log2(width_phases) - 1 downto 0) := (others => '0');
        vout_one, vout_two, vout_one_am, vout_two_am : out std_logic_vector(width - 1 downto 0)
    );
end npath_stimulus;

architecture behavior of npath_stimulus is

    signal clk, clk_sine, clk_info, clk_carrier : std_logic := '0';
    signal phg : std_array(width_phases - 1 downto 0) := (others => '0');
    signal vin_sine, vin_am : std_logic_vector(width - 1 downto 0) := (others => '0');
    signal vout_info, vout_carrier : std_logic_vector(width - 1 downto 0) := (others => '0');

    component clock_generator is
        generic (
            clk_period : time := 10ns
        );
        port (
            clk : out std_logic
        );
    end component;

    component npath_one is
        generic (
            width_phases : natural := 4;
            width_coeff : natural := 4;
            width : natural := 8
        );
        port (
            clk : in std_logic;
            phg : in std_array(width_phases - 1 downto 0) := (others => '0');
            vin : in std_logic_vector(width - 1 downto 0);
            vout_s : out std_logic_vector(width + log2(width_coeff) + log2(width_phases) + n_integer - 1 downto 0) := (others => '0');
            vout : out std_logic_vector(width - 1 downto 0)
        );
    end component;

    component npath_two is
        generic (
            width_phases : natural := 4;
            width_coeff : natural := 4;
            width : natural := 8
        );
        port (
            clk : in std_logic;
            phg : in std_array(width_phases - 1 downto 0) := (others => '0');
            vin : in std_logic_vector(width - 1 downto 0);
            vout_s : out std_logic_vector(width + log2(width_coeff) + log2(width_phases) + n_integer - 1 downto 0) := (others => '0');
            vout : out std_logic_vector(width - 1 downto 0)
        );
    end component;

    component phase_generator is
        generic (
            width_phases : natural := n_phases;
            clk_period : time := 10ns
        );
        port (
            clk : out std_array(width_phases - 1 downto 0) := (others => '0')
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

    component amplitude_modulation is
        generic (
            width : integer := 8;
            nsamples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            clk_info, clk_carrier : in std_logic;
            vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
        );
    end component;

begin
    clock : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
    phase : phase_generator generic map(clk_period => clk_period, width_phases => width_phases) port map(clk => phg);
    -- sine with period of 32ns
    clock_sine : clock_generator generic map(clk_period => clk_period/(4 * width)) port map(clk => clk_sine);
    sine_gen : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_sine, qsine_sgn => vin_sine);
    -- amplitude modulation wave
    am_gen : amplitude_modulation generic map(width => width/2, nsamples => width_samples) port map(clk_info => clk_info, clk_carrier => clk_carrier, vout => vin_am);
    -- sine with with period of 32*32ns
    clock_info : clock_generator generic map(clk_period => clk_period) port map(clk => clk_info);
    sine_gen_info : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_info, qsine_sgn => vout_info);
    -- sine carrier
    clk_gen_carrier : clock_generator generic map(clk_period => clk_period/(32)) port map(clk => clk_carrier);
    sine_gen_carrier : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_carrier, qsine_sgn => vout_carrier);

    npath_gen : npath_one generic map(
        width => width, width_phases => width_phases, width_coeff => width_coeff) port map(
        clk => clk, phg => phg, vin => vin_sine, vout_s => vout_one_s, vout => vout_one);
    npath_gen_am : npath_one generic map(
        width => width, width_phases => width_phases, width_coeff => width_coeff) port map(
        clk => clk, phg => phg, vin => vin_am, vout_s => vout_one_s_am, vout => vout_one_am);
    npath_gen_two : npath_two generic map(
        width => width, width_phases => width_phases, width_coeff => width_coeff) port map(
        clk => clk, phg => phg, vin => vin_sine, vout_s => vout_two_s, vout => vout_two);
    npath_gen_two_am : npath_two generic map(
        width => width, width_phases => width_phases, width_coeff => width_coeff) port map(
        clk => clk, phg => phg, vin => vin_am, vout_s => vout_two_s_am, vout => vout_two_am);

end architecture behavior;