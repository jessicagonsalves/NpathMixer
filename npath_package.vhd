library ieee;
use ieee.std_logic_1164.all;
use ieee.fixed_pkg.all;
package npath_package is

    constant size_coefficient : natural := 2;
    constant n_coefficients : natural := 2 ** size_coefficient;
    constant n_phases : natural := 8;
    constant n_bits : natural := 8;
    constant n_integer : natural := 2;
    type mem is array (n_coefficients - 1 downto 0) of sfixed(n_integer - 1 downto n_integer - n_bits);
    -- constant my_rom : mem := (
    --     0 => "00000101", -- 0.0823799983546885
    --     1 => "00011100", -- 0.447615457609833
    --     2 => "11111111", -- -0.0223498723843134
    --     3 => "00011100" -- 0.447615457609833
    -- );
        constant my_rom : mem := (
        0 => "00100000", -- 0.0823799983546885
        1 => "00100000", -- 0.447615457609833
        2 => "00100000", -- -0.0223498723843134
        3 => "00100000" -- 0.447615457609833
    );
    constant clk_period_smp : time := 32ns;
    constant floating_decimal : integer := 100;
    type bits_array_t is array (natural range <>) of std_logic_vector(n_bits - 1 downto 0);
    type matrix_bits_t is array(natural range <>, natural range <>) of std_logic_vector(n_bits - 1 downto 0);
    type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(18 downto 0);
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