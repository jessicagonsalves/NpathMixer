library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity npath_two is
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
end npath_two;

architecture behavior of npath_two is

    constant width_ext : natural := (width + n_rom) + log2(width_coeff) + log2(width_phases);
    type bits_array_t is array (natural range <>) of std_logic_vector(width - 1 downto 0);
    signal reg_out_array : bits_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type n_array_t is array (natural range <>) of std_logic_vector(vout_s'length - 1 downto 0);
    signal fir_out : n_array_t(width_phases - 1 downto 0) := (others => (others => '0'));
    type sub_array_t is array (natural range <>) of std_logic_vector(vout_s'length - 1 downto 0);
    signal q_sub : sub_array_t(width_phases/2 - 1 downto 0) := (others => (others => '0'));
    type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(vout_s'length - 1 downto 0);
    signal q_sum : matrix_slv_t(log2(width_phases) - 2 downto 0, width_phases/4 - 1 downto 0) := (others => (others => (others => '0')));
    signal q_out_s : std_logic_vector(vout_s'length - 1 downto 0) := (others => '0');

    component fir_basic is
        generic (
            width : natural := 8;
            width_coeff : natural := 4;
            width_ext : natural := 20
        );
        port (
            clk : in std_logic;
            vin : in std_logic_vector(width - 1 downto 0);
            vout : out std_logic_vector(width_ext - 1 downto 0) := (others => '0')
        );
    end component;

begin
    -- arrangment two
    filtering : for i in 0 to width_phases - 1 generate
        process (phg(i))
        begin
            if phg(i)'EVENT and phg(i) = '1' then
                reg_out_array(i) <= vin;
            end if;
        end process;
        fir_one : fir_basic generic map(
            width_coeff => width_coeff,
            width => width,
            width_ext => width_ext
        ) port map(clk => phg(i), vin => reg_out_array(i), vout => fir_out(i));
    end generate;

    tree : process (clk)
        variable q_mod : std_logic_vector(width - 1 downto 0) := (others => '0');
    begin
        for i in 0 to width_phases/2 - 1 loop
            q_sub(i/2) <= std_logic_vector(signed(fir_out(i + width_phases/2)) - signed(fir_out(i)));
        end loop;

        for i in 0 to log2(width_coeff) - 2 loop
            for j in 0 to width_coeff/2 - 2 loop
                q_mod := std_logic_vector(to_unsigned(j, width));
                if q_mod(0) = '0' then
                    if i = 0 then
                        q_sum(i, j/2) <= std_logic_vector(signed(q_sub(j)) + signed(q_sub(j + 1)));
                    else
                        q_sum(i, j/2) <= std_logic_vector(signed(q_sum(i - 1, j)) + signed(q_sum(i - 1, j + 1)));
                    end if;
                end if;
            end loop;
        end loop;
    end process tree;

    q_out_s <= q_sum(log2(width_coeff) - 2, 0);
    vout_s <= q_out_s;
    vout <= q_out_s(q_out_s'length - 1) & q_out_s(width - 2 downto 0);
end architecture behavior;