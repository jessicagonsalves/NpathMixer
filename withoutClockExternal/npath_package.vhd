library ieee;
use ieee.std_logic_1164.all;

package npath_package is

    constant clk_period_smp : time := 32ns;
    constant n_coefficients : natural := 4;
    constant n_phases : natural := 4;
    constant n_bits : natural := 8;
    constant n_integer : natural := 1;
    constant n_rom : natural := 8;
    constant n_samples : natural := 5;
    type mem is array (n_coefficients - 1 downto 0) of std_logic_vector(n_rom - 1 downto 0);
    constant my_rom : mem := (
        0 => "11110011", -- -0.1
        1 => "00101011", -- 0.34059
        2 => "01000011", -- 0.530707
        3 => "00101011" -- 0.34059
    );
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
