library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library std;
use ieee.std_logic_textio.all;
use std.textio.all;
use work.npath_package.all;

entity am_generator is
    generic (
        sine_period_info, sine_period_carrier : time := 32ns;
        width : integer := 8;
        width_samples : integer := 5 -- LOG2 OF THE VALUE
    );
    port (
        vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
    );
end am_generator;

architecture behavior of am_generator is

    signal vin_info, vin_carrier : std_logic_vector(width - 1 downto 0) := (others => '0');

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

begin

    sine_gen : sine_generator generic map(sine_period => sine_period_info, width => width, width_samples => width_samples) port map(qsine_sgn => vin_info);
    sine_gen_carrier : sine_generator generic map(sine_period => sine_period_carrier, width => width, width_samples => width_samples) port map(qsine_sgn => vin_carrier);
    vout <= std_logic_vector(signed(vin_info) * signed(vin_carrier));

end behavior;