library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library std;
use ieee.std_logic_textio.all;
use std.textio.all;
use work.npath_package.all;

entity sine_generator is
    generic (
        sine_period : time := 32ns;
        width : integer := n_bits;
        width_samples : integer := 5 -- LOG2 OF THE VALUE
    );
    port (
        qsine_uns : out std_logic_vector(width - 1 downto 0) := (others => '0');
        qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
    );
end sine_generator;

architecture behavior of sine_generator is

    signal clk : std_logic;

    component clock_generator is
        generic (
            clk_period : time := 10ns
        );
        port (
            clk : out std_logic
        );
    end component;

    function quantization_sgn(width : integer; max_abs : real; dval : real) return std_logic_vector is
        variable temp : std_logic_vector(width - 1 downto 0) := (others => '0');
        constant scale : real := (2.0 ** (real(width - 1)))/max_abs;
        constant minq : integer := - (2 ** (width - 1)) + 1; -- -128
        constant maxq : integer := + (2 ** (width - 1)) - 1; -- 127
        variable itemp : integer := 0;

    begin
        if (width > 0) then
            if (dval = 0.0) then
                itemp := 0;
            elsif (dval > 0.0) then
                itemp := + (integer(+dval * scale + 0.49));
            else
                itemp := - (integer(-dval * scale + 0.49));
            end if;
            if (itemp <= minq) then
                itemp := minq;
            end if;
            if (itemp > maxq) then
                itemp := maxq;
            end if;
        end if;
        temp := std_logic_vector(to_signed(itemp, width));
        return temp;
    end quantization_sgn;

    function quantization_uns(width : integer; max_abs : real; dval : real) return std_logic_vector is
        variable temp : std_logic_vector(width - 1 downto 0) := (others => '0');
        constant bit_sign : std_logic_vector(width - 1 downto 0) := ('1', others => '0');
    begin
        temp := quantization_sgn(width, max_abs, dval);
        temp := temp xor bit_sign;
        return temp;
    end quantization_uns;

    constant step : real := 1.00/real(2 ** width_samples);

begin

    clock : clock_generator generic map(clk_period => sine_period/2 ** width_samples) port map(clk => clk);

    p_sine_table : process (clk)

        variable v_sine : real := 0.0;
        variable v_tstep : real := 0.0;
        variable v_qsine_sgn : std_logic_vector(width - 1 downto 0) := (others => '0');
        variable v_qsine_uns : std_logic_vector(width - 1 downto 0) := (others => '0');
    begin
        if (rising_edge(clk)) then
            v_tstep := v_tstep + step;
            v_sine := sin(MATH_2_PI * v_tstep);
            v_qsine_sgn := quantization_sgn(width, 1.0, v_sine);
            v_qsine_uns := quantization_uns(width, 1.0, v_sine);

            qsine_sgn <= v_qsine_sgn;
            qsine_uns <= v_qsine_uns;
        end if;
    end process p_sine_table;

end behavior;