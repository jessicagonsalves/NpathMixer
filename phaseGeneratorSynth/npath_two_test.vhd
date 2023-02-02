library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_two_test is
    generic (
        width : natural := 8;
        width_coeff : natural := 4;
        width_phases : natural := 8
    );
    port (
        vout_s : out std_logic_vector(width + log2(width_coeff) + log2(width_phases) + n_integer - 1 downto 0) := (others => '0');
        vout : out std_logic_vector(width - 1 downto 0)
    );
end npath_two_test;

architecture behavior of npath_two_test is

    signal clk, clk_sine, clk_carrier, clk_info, clk_phg : std_logic;
    signal phg : std_array(width_phases - 1 downto 0) := (others => '0');
    constant width_ext : natural := (width + n_rom) + log2(width_coeff) + log2(width_phases);
    type bitsPlus_array_t is array (natural range <>) of std_logic_vector(width - 1 downto 0);
    signal reg_out_array : bitsPlus_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type n_array_t is array (natural range <>) of std_logic_vector(width + log2(width_coeff) + n_integer - 1 downto 0);
    signal fir_out : n_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type sub_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal q_sub : sub_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(vout_s'length - 1 downto 0);
    signal q_sum : matrix_slv_t(log2(width_phases) - 2 downto 0, width_phases/4 - 1 downto 0) := (others => (others => (others => '0')));
    signal q_out_s : std_logic_vector(vout_s'length - 1 downto 0) := (others => '0');
    signal vin : std_logic_vector(width - 1 downto 0) := (others => '0');

    component fir is
        generic (
            width : natural := 8;
            width_coeff : natural := 4
        );
        port (
            clk : in std_logic;
            vin : in std_logic_vector(width - 1 downto 0);
            vout : out std_logic_vector(width + log2(width_coeff) + n_integer - 1 downto 0) := (others => '0')
        );
    end component;

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
            sine_period : time := 32ns;
            width : integer := n_bits;
            width_samples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            qsine_uns : out std_logic_vector(width - 1 downto 0) := (others => '0');
            qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
        );
    end component;

    component am_generator is
        generic (
            sine_period_info, sine_period_carrier : time := 32ns;
            width : integer := 8;
            width_samples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            vout : out std_logic_vector(width - 1 downto 0) := (others => '0')
        );
    end component;

begin
    clock : clock_generator generic map(clk_period => clk_period_smp) port map(clk => clk);
    clock_sine : clock_generator generic map(clk_period => clk_period_smp/(4 * width)) port map(clk => clk_sine);
    clock_phg : clock_generator generic map(clk_period => clk_period_smp/width_phases) port map(clk => clk_phg);
    --    sine_gen : sine_generator generic map(sine_period => clk_period_smp, width => width) port map(qsine_sgn => vin);
    -- amplitude modulation wave
    clock_info : clock_generator generic map(clk_period => clk_period_smp) port map(clk => clk_info);
    clk_gen_carrier : clock_generator generic map(clk_period => clk_period_smp/(32)) port map(clk => clk_carrier);
    am_gen : am_generator generic map(sine_period_info => clk_period_smp * 32, sine_period_carrier => clk_period_smp, width => width) port map(vout => vin);

    phase_gen : process (clk_phg)
        variable counter : natural;
    begin
        if (clk_phg'event and clk_phg = '1') then
            for i in 0 to width_phases - 1 loop
                if i = counter then
                    phg(i) <= '1';
                else
                    phg(i) <= '0';
                end if;
            end loop;
            counter := counter + 1;
            if (counter = width_phases) then
                counter := 0;
            end if;
        end if;
    end process phase_gen;

    -- arrangment two
    filtering : for i in 0 to width_phases - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin;
            end if;
        end process;
        fir_one : fir generic map(
            width_coeff => width_coeff,
            width => width
        ) port map(clk => phg(i), vin => reg_out_array(i), vout => fir_out(i));
    end generate;

    sub_tree : process (clk)
    begin
        for i in 0 to width_phases/2 - 1 loop
            q_sub(i) <= std_logic_vector(resize(signed(fir_out(i + width_phases/2)) - signed(fir_out(i)), q_sub(0)'length));
        end loop;
    end process sub_tree;

    add_tree : process (clk)
        variable q_mod : std_logic_vector(width_phases - 1 downto 0) := (others => '0');
    begin

        for j in 0 to width_phases/4 - 1 loop
            q_sum(0, j) <= std_logic_vector(resize(signed(q_sub(2 * j)) + signed(q_sub(2 * j + 1)), q_sum(0, 0)'length));
        end loop;

        for i in 1 to log2(width_phases) - 2 loop
            for j in 0 to width_phases/4 - 1 loop
                q_mod := std_logic_vector(to_unsigned(j, width_phases));
                if q_mod(0) = '0' then
                    q_sum(i, j/2) <= std_logic_vector(resize(signed(q_sum(i - 1, j)) + signed(q_sum(i - 1, j + 1)), q_sum(0, 0)'length));
                end if;
            end loop;
        end loop;
    end process add_tree;

    q_out_s <= q_sum(log2(width_phases) - 2, 0);
    vout_s <= q_out_s;
    vout <= q_out_s(q_out_s'length - 1 downto q_out_s'length - width);

end architecture behavior;