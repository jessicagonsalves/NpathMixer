library ieee;
use ieee.std_logic_1164.all;
use ieee.fixed_pkg.all;
package npath_package is

    constant size_coefficient : natural := 3;
    constant n_coefficients : natural := 2 ** size_coefficient;
    constant n_phases : natural := 4;
    constant n_bits : natural := 16;
    constant n_integer : natural := 2;
    type mem is array (n_coefficients - 1 downto 0) of sfixed(n_integer - 1 downto n_integer - 8);
    constant my_rom : mem := (
        0 => "11111010", -- -0.1
        1 => "00010101", -- 0.34059
        2 => "00100001", -- 0.530707
        3 => "00011100", -- 0.34059
        4 => "11111010", -- -0.1
        5 => "00010101", -- 0.34059
        6 => "00100001", -- 0.530707
        7 => "00011100" -- 0.34059
    );
    -- constant my_rom : mem := (
    --     0 => "00000101", -- 0.0823799983546885
    --     1 => "00011100", -- 0.447615457609833
    --     2 => "11111111", -- -0.0223498723843134
    --     3 => "00011100" -- 0.447615457609833
    -- );
    -- constant my_rom : mem := (
    --     0 => "00010000", -- 0.25
    --     1 => "00100000", -- 0.5
    --     2 => "00110000", -- -0.75
    --     3 => "01000000" -- 1.0
    -- );
    constant clk_period_smp : time := 32ns;
    constant floating_decimal : integer := 100;
    type bits_array_t is array (natural range <>) of std_logic_vector(n_bits - 1 downto 0);
    type matrix_bits_t is array(natural range <>, natural range <>) of std_logic_vector(n_bits - 1 downto 0);
    type std_array is array (natural range <>) of std_logic;

    function log2 (x : positive) return natural;

end npath_package;

package body npath_package is

    function log2 (x : positive) return natural is
        variable i : natural;
    begin
        i := 0;
        while (2 ** i < x) and i < 31 loop
            i := i + 1;
        end loop;
        return i;
    end function;

end package body npath_package;