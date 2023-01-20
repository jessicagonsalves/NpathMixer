library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
library std;
use ieee.std_logic_textio.all;
use std.textio.all;
use work.npath_package.all;

entity amplitude_modulation is
    generic (
        width : integer := n_bits;
        nsamples : integer := 5 -- LOG2 OF THE VALUE
    );
    port (
        clk_info, clk_carrier : in std_logic;
        vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
    );
end amplitude_modulation;

architecture behavior of amplitude_modulation is

    signal vin_info, vin_carrier : std_logic_vector(width - 1 downto 0) := (others => '0');

    component sine_generator is
        generic (
            width : integer := 8;
            nsamples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            clk : in std_logic;
            sine : out real := 0.0;
            qsine_uns : out std_logic_vector(width - 1 downto 0) := (others => '0');
            qsine_sgn : out std_logic_vector(width - 1 downto 0) := (others => '0')
        );
    end component;

begin

    sine_gen : sine_generator generic map(width => width, nsamples => nsamples) port map(clk => clk_info, qsine_sgn => vin_info);
    sine_gen_carrier : sine_generator generic map(width => width, nsamples => nsamples) port map(clk => clk_carrier, qsine_sgn => vin_carrier);
    vout <= std_logic_vector(signed(vin_info) * signed(vin_carrier));

end behavior;