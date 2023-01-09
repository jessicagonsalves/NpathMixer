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
        width : integer := n_bits;
        nsamples : integer := 5 -- LOG2 OF THE VALUE
    );
    port (
        clk : in std_logic;
        sine : out real := 0.0;
        qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
    );
end sine_generator;

architecture behavior of sine_generator is

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

    constant step : real := 1.00/real(2 ** nsamples);

begin

    p_sine_table : process (clk)

        variable count : integer := 0;
        variable v_sine : real := 0.0;
        variable v_tstep : real := 0.67;
        variable v_qsine_sgn : std_logic_vector(width - 1 downto 0) := (others => '0');

    begin
        if (rising_edge(clk)) then

            v_tstep := v_tstep + step;
            v_sine := sin(MATH_2_PI * v_tstep);
            v_qsine_sgn := quantization_sgn(width, 1.0, v_sine);

            count := count + 1;

            sine <= v_sine;
            qsine_sgn <= v_qsine_sgn;
        end if;
    end process p_sine_table;

end behavior;