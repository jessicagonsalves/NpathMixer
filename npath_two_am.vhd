library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_two_am is
    generic (
        clk_period : time := clk_period_smp;
        n : natural := n_phases;
        n_coeff : natural := n_coefficients;
        width_samples : natural := 5;
        width : natural := n_bits;
        width_op : natural := 2 * n_bits + log2(n_bits)
    );
    port (
        vout_s : out std_logic_vector(width_op - 1 downto 0) := (others => '0');
        vout : out std_logic_vector(width - 1 downto 0)
    );
end npath_two_am;

architecture behavior of npath_two_am is

    signal clk, clk_sine, clk_carrier : std_logic;
    signal vin, vout_info, vout_carrier, q_sub1, q_sub2 : std_logic_vector(width - 1 downto 0) := (others => '0');
    signal fir_out : bits_array_t(n - 1 downto 0) := (others => (others => '0'));
    signal phg : std_array(n - 1 downto 0) := (others => '0');
    signal reg_out_array : bits_array_t(n - 1 downto 0) := (others => (others => '0'));
    type n_array_t is array (natural range <>) of std_logic_vector(width_op - 1 downto 0);
    signal fir_out_s : n_array_t(n - 1 downto 0) := (others => (others => '0'));
    signal q_sub1_s, q_sub2_s : std_logic_vector(width_op - 1 downto 0) := (others => '0');

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
            width : natural := 8;
            width_op : natural := 19
        );
        port (
            clk : in std_logic;
            vin : in std_logic_vector(width - 1 downto 0);
            vout_s : out std_logic_vector(width_op - 1 downto 0) := (others => '0');
            vout : out std_logic_vector(width - 1 downto 0)
        );
    end component;

    component phase_generator is
        generic (
            n : natural := n_phases;
            clk_period : time := 10ns
        );
        port (
            clk : out std_array(n - 1 downto 0) := (others => '0')
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
            width : integer := n_bits;
            nsamples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            clk_info, clk_carrier : in std_logic;
            vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
        );
    end component;

begin
    clock : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
    clock_sine : clock_generator generic map(clk_period => clk_period/(width)) port map(clk => clk_sine);
    clk_gen_carrier : clock_generator generic map(clk_period => clk_period/(2 * width)) port map(clk => clk_carrier);
    phase : phase_generator generic map(clk_period => clk_period, n => n_phases) port map(clk => phg);
    am_gen : amplitude_modulation generic map(width => width/2, nsamples => width_samples) port map(clk_info => clk, clk_carrier => clk_carrier, vout => vin);
    sine_gen_info : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk, qsine_sgn => vout_info);
    sine_gen_carrier : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_carrier, qsine_sgn => vout_carrier);

    -- arrangment two
    filtering : for i in 0 to n - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin;
            end if;
        end process;
        fir_one : fir_basic generic map(
            n => n_coeff,
            width => width,
            width_op => width_op
        ) port map(clk => phg(i), vin => reg_out_array(i), vout => fir_out(i), vout_s => fir_out_s(i));
    end generate;

    q_sub1 <= std_logic_vector(signed(fir_out(2)) - signed(fir_out(0)));
    q_sub2 <= std_logic_vector(signed(fir_out(3)) - signed(fir_out(1)));
    q_sub1_s <= std_logic_vector(signed(fir_out_s(2)) - signed(fir_out_s(0)));
    q_sub2_s <= std_logic_vector(signed(fir_out_s(3)) - signed(fir_out_s(1)));
    vout <= std_logic_vector(signed(q_sub1) + signed(q_sub2));
    vout_s <= std_logic_vector(signed(q_sub1_s) + signed(q_sub2_s));

end architecture behavior;