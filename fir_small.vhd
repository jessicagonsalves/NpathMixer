library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use work.npath_package.all;

entity fir_small is
    generic (
        n : natural := 4;
        width_address : natural := 2;
        width : natural := 8
    );
    port (
        clk, clk_r : in std_logic;
        vin : in std_logic_vector(width - 1 downto 0);
        coeff_o : out sfixed(n_integer - 1 downto n_integer - width);
        address_o : out std_logic_vector(width_address - 1 downto 0) := (others => '0');
        vout, q_mux_o, q_mul_o, q_sum_o, q_tmp_o : out std_logic_vector(width - 1 downto 0)
    );
end fir_small;

architecture behavior of fir_small is

    signal address : std_logic_vector(width_address - 1 downto 0) := (others => '0');
    signal q_s : bits_array_t(n - 1 downto 0) := (others => (others => '0'));
    signal q_mux, q_mul, q_sum, q_tmp : std_logic_vector(width - 1 downto 0) := (others => '0');
    signal coeff : sfixed(n_integer - 1 downto n_integer - width);
    type state_type_addr is (
        A, B, C, D
    );
    signal state, next_state : state_type_addr;
    signal fix_w : sfixed(width - 1 downto 0) := (others => '0');
    type fix_array_2w is array (natural range <>) of sfixed(2 * width - n_integer - 3 downto n_integer - width);
    signal vec_2w : fix_array_2w(n - 1 downto 0) := (others => (others => '0'));

    component reg is
        generic (
            width : natural := 8
        );
        port (
            clk : in std_logic;
            d : in std_logic_vector(width - 1 downto 0) := (others => '0');
            q : out std_logic_vector(width - 1 downto 0) := (others => '0')
        );
    end component;

begin

    shif_regs : process (clk)
    begin
        if (clk'event and clk = '1') then
            q_s(n - 1) <= vin;
            for i in n - 2 downto 0 loop
                q_s(i) <= q_s(i + 1);
            end loop;
        end if;
    end process shif_regs;

    ------------------------Sequential Logic-----------------------
    seq : process (clk)
    begin
        if clk'event and clk = '1' then
            state <= next_state;
        end if;
    end process seq;
    -----------------------Combinational Logic----------------------
    comb : process (clk, state)
    begin
        case state is
            when A =>
                next_state <= B;

            when B =>
                next_state <= C;

            when C =>
                next_state <= D;

            when D =>
                next_state <= A;

            when others =>
                null;
        end case;
    end process comb;

    -----------------------Output Combinational Logic---------------------
    process (state)
    begin
        case state is
            when A =>
                address <= (others => '0');
                coeff <= my_rom(0);
            when B =>
                address <= std_logic_vector(unsigned(address) + 1);
                coeff <= my_rom(1);
            when C =>
                address <= std_logic_vector(unsigned(address) + 1);
                coeff <= my_rom(2);
            when D =>
                address <= std_logic_vector(unsigned(address) + 1);
                coeff <= my_rom(3);
            when others =>
                null;
        end case;
    end process;

    q_mux <= q_s(to_integer(signed(address)));

    q_mul <= std_logic_vector(to_signed(to_sfixed(vin, fix_w) * coeff, 2*width));
    q_sum <= std_logic_vector(signed(q_mul) + signed(q_tmp));

    reg_temp : reg generic map(width => width) port map(clk => clk_r, d => q_sum, q => q_tmp);
    reg_result : reg generic map(width => width) port map(clk => clk_r, d => q_tmp, q => vout);

    coeff_o <= coeff;
    q_mux_o <= q_mux;
    q_mul_o <= q_mul;
    q_sum_o <= q_sum;
    q_tmp_o <= q_tmp;
    address_o <= address;

end behavior;