library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_test is
    generic (
        width : natural := 8;
        width_coeff : natural := 4;
        width_phases : natural := 4
    );
    port (
        -- clk : in std_logic;
        -- phg : in std_array(width_phases - 1 downto 0) := (others => '0');
        -- vin : in std_logic_vector(width - 1 downto 0);
        vout_s : out std_logic_vector(width + log2(width_coeff) + log2(width_phases) + n_integer - 1 downto 0) := (others => '0');
        vout : out std_logic_vector(width - 1 downto 0)
    );
end npath_test;

architecture behavior of npath_test is

    signal clk, clk_sine : std_logic;
    signal phg : std_array(width_phases - 1 downto 0) := (others => '0');
    constant width_ext : natural := (width + n_rom) + log2(width_coeff) + log2(width_phases);
    type bitsPlus_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal reg_out_array : bitsPlus_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type sub_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal q_sub : sub_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type subExt_array_t is array (natural range <>) of std_logic_vector(width + 1 downto 0);
    signal q_sub_ext : subExt_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(width + log2(width_phases) - 1 downto 0);
    signal q_sum : matrix_slv_t(log2(width_phases) - 2 downto 0, width_phases/4 - 1 downto 0) := (others => (others => (others => '0')));
    signal q_out_s : std_logic_vector(vout_s'length - 1 downto 0) := (others => '0');
    signal vin : std_logic_vector(width - 1 downto 0) := (others => '0');

    component fir_basic is
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

begin
    clock : clock_generator generic map(clk_period => clk_period_smp) port map(clk => clk);
    clock_sine : clock_generator generic map(clk_period => clk_period_smp/(4 * width)) port map(clk => clk_sine);
    phase : phase_generator generic map(clk_period => clk_period_smp, width_phases => n_phases) port map(clk => phg);
    sine_gen : sine_generator generic map(width => width, nsamples => n_samples) port map(clk => clk_sine, qsine_sgn => vin);

    -- arrangment one
    filtering : for i in 0 to width_phases - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin(vin'left) & vin(width - 1 downto 0);
            end if;
        end process;
    end generate;

    tree : process (clk)
        variable q_mod : std_logic_vector(width_coeff - 1 downto 0) := (others => '0');
    begin
        for i in 0 to q_sub'length - 1 loop
            q_sub(i/2) <= std_logic_vector(signed(reg_out_array(i + width_phases/2)) - signed(reg_out_array(i)));
            q_sub_ext(i/2) <= q_sub(i/2)(q_sub(i/2)'left) & q_sub(i/2)(q_sub(i/2)'length - 1 downto 0);
        end loop;

        for i in 0 to log2(width_coeff) - 2 loop
            for j in 0 to width_coeff/2 - 2 loop
                q_mod := std_logic_vector(to_unsigned(j, width_coeff));
                if q_mod(0) = '0' then
                    if i = 0 then
                        q_sum(i, j/2) <= std_logic_vector(resize(signed(q_sub_ext(j)) + signed(q_sub_ext(j + 1)), q_sum(0, 0)'length));
                    else
                        q_sum(i, j/2) <= std_logic_vector(resize(signed(q_sum(i - 1, j)) + signed(q_sum(i - 1, j + 1)), q_sum(0, 0)'length));
                    end if;
                end if;
            end loop;
        end loop;
    end process tree;

    filtering_out : fir_basic generic map(
        width_coeff => width_coeff,
        width => width + log2(width_phases)
    ) port map(clk => clk, vin => q_sum(log2(width_coeff) - 2, 0), vout => q_out_s);

    vout_s <= q_out_s;
    vout <= q_out_s(q_out_s'length - 1 downto q_out_s'length - width);

end architecture behavior;