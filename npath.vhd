library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath is
    generic (
        width : natural := 8;
        width_coeff : natural := 4;
        width_phases : natural := 4
    );
    port (
        clk, clk_phg : in std_logic;
        vin : in std_logic_vector(width - 1 downto 0);
        vout_s : out std_logic_vector(width + log2(width_coeff) + log2(width_phases) + n_integer - 1 downto 0) := (others => '0');
        vout : out std_logic_vector(width - 1 downto 0)
    );
end npath;

architecture behavior of npath is

    constant width_ext : natural := (width + n_rom) + log2(width_coeff) + log2(width_phases);
    signal phg : std_array(width_phases - 1 downto 0) := (others => '0');
    type bitsPlus_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal reg_out_array : bitsPlus_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type sub_array_t is array (natural range <>) of std_logic_vector(width downto 0);
    signal q_sub : sub_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type subExt_array_t is array (natural range <>) of std_logic_vector(width + 1 downto 0);
    signal q_sub_ext : subExt_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(width + log2(width_phases) - 1 downto 0);
    signal q_sum : matrix_slv_t(log2(width_phases) - 2 downto 0, width_phases/4 - 1 downto 0) := (others => (others => (others => '0')));
    signal q_out_s : std_logic_vector(vout_s'length - 1 downto 0) := (others => '0');

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

begin

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

    -- arrangment one
    filtering : for i in 0 to width_phases - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin(vin'left) & vin(width - 1 downto 0);
            end if;
        end process;
    end generate;

    sub_tree : process (clk)
    begin
        for i in 0 to width_phases/2 - 1 loop
            q_sub(i) <= std_logic_vector(signed(reg_out_array(i + width_phases/2)) - signed(reg_out_array(i)));
            q_sub_ext(i) <= q_sub(i)(q_sub(i)'left) & q_sub(i)(q_sub(i)'length - 1 downto 0);
        end loop;
    end process sub_tree;

    add_tree : process (clk)
        variable q_mod : std_logic_vector(width_phases - 1 downto 0) := (others => '0');
    begin

        for j in 0 to width_phases/4 - 1 loop
            q_sum(0, j) <= std_logic_vector(resize(signed(q_sub_ext(2 * j)) + signed(q_sub_ext(2 * j + 1)), q_sum(0, 0)'length));
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

    filtering_out : fir_basic generic map(
        width_coeff => width_coeff,
        width => width + log2(width_phases)
    ) port map(clk => clk, vin => q_sum(log2(width_phases) - 2, 0), vout => q_out_s);

    vout_s <= q_out_s;
    vout <= q_out_s(q_out_s'length - 1 downto q_out_s'length - width);
end architecture behavior;