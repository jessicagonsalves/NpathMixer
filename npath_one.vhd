library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_one is
    generic (
        clk_period : time := clk_period_smp;
        n : natural := n_phases;
        n_coeff : natural := n_coefficients;
        width_samples : natural := 5;
        width : natural := n_bits
    );
    port (
        vout_one_s, vout_two_s : out std_logic_vector(18 downto 0) := (others => '0');
        vout_one, vout_two : out std_logic_vector(width - 1 downto 0)
    );
end npath_one;

architecture behavior of npath_one is

    constant width_op : natural := 2 * width + log2(width);
    signal clk, clk_sine : std_logic;
    signal fir_out : bits_array_t(n - 1 downto 0) := (others => (others => '0'));
    signal phg : std_array(n - 1 downto 0) := (others => '0');
    type bitsPlus_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal reg_out_array : bitsPlus_array_t(n - 1 downto 0) := (others => (others => '0'));
    type n_array_t is array (natural range <>) of std_logic_vector(width_op - 1 downto 0);
    signal fir_out_s : n_array_t(n - 1 downto 0) := (others => (others => '0'));
    signal q_sub1_s, q_sub2_s : std_logic_vector(width_op - 1 downto 0) := (others => '0');
    signal vin, q_sub1, q_sub2 : std_logic_vector(width - 1 downto 0) := (others => '0');
    signal q_sub3, q_sub4 : std_logic_vector(width downto 0) := (others => '0');
    signal q_sum, q_out2, q_sub3_ext, q_sub4_ext : std_logic_vector(width + 1 downto 0) := (others => '0');
    signal q_out2_s : std_logic_vector(width_op + 1 downto 0) := (others => '0');

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

begin
    clock : clock_generator generic map(clk_period => clk_period) port map(clk => clk);
    clock_sine : clock_generator generic map(clk_period => clk_period/(4 * width)) port map(clk => clk_sine);
    phase : phase_generator generic map(clk_period => clk_period, n => n_phases) port map(clk => phg);
    sine_gen : sine_generator generic map(width => width, nsamples => width_samples) port map(clk => clk_sine, qsine_sgn => vin);

    -- arrangment one
    filtering : for i in 0 to n - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin(width - 1) & vin(width - 1 downto 0);
            end if;
        end process;
        fir_one : fir_basic generic map(
            n => n_coeff,
            width => width
        ) port map(clk => phg(i), vin => reg_out_array(i)(width - 1 downto 0), vout => fir_out(i), vout_s => fir_out_s(i));
    end generate;

    q_sub1 <= std_logic_vector(signed(fir_out(2)) - signed(fir_out(0)));
    q_sub2 <= std_logic_vector(signed(fir_out(3)) - signed(fir_out(1)));
    q_sub1_s <= std_logic_vector(signed(fir_out_s(2)) - signed(fir_out_s(0)));
    q_sub2_s <= std_logic_vector(signed(fir_out_s(3)) - signed(fir_out_s(1)));
    vout_one <= std_logic_vector(signed(q_sub1) + signed(q_sub2));
    vout_one_s <= std_logic_vector(signed(q_sub1_s) + signed(q_sub2_s));

    -- arrangment two
    q_sub3 <= std_logic_vector(signed(reg_out_array(2)) - signed(reg_out_array(0)));
    q_sub3_ext <= q_sub3(q_sub3'length - 1) & q_sub3(q_sub3'length - 1 downto 0);
    q_sub4 <= std_logic_vector(signed(reg_out_array(3)) - signed(reg_out_array(1)));
    q_sub4_ext <= q_sub4(q_sub4'length - 1) & q_sub4(q_sub4'length - 1 downto 0);
    q_sum <= std_logic_vector(signed(q_sub3_ext) + signed(q_sub4_ext));
    filtering_out : fir_basic generic map(
        n => n_coeff,
        width => width + 2,
        width_op => 2 * width + log2(width) + 2
    ) port map(clk => clk, vin => q_sum, vout => q_out2, vout_s => q_out2_s);
    vout_two <= q_out2(width) & q_out2(width - 2 downto 0);
    vout_two_s <= q_out2_s(width_op) & q_out2_s(width_op - 2 downto 0);

end architecture behavior;