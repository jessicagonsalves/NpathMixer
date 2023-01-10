library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity am_test is
    generic (
        clk_period : time := clk_period_smp;
        width : integer := n_bits/2;
        nsamples : integer := 5-- LOG2 OF THE VALUE
    );
    port (
        vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
    );
end am_test;

architecture behavior of am_test is

    signal clk_info, clk_carrier : std_logic;

    component clock_generator is
        generic (
            clk_period : time := 10ns
        );
        port (
            clk : out std_logic
        );
    end component;

    component amplitude_modulation is
        generic (
            width : integer := n_bits;
            nsamples : integer := 5 -- LOG2 OF THE VALUE
        );
        port (
            clk_info, clk_carrier : in std_logic;
            vout : out std_logic_vector(2 * width - 1 downto 0) := (others => '0')
        );
    end component;

begin

    clk_gen_info : clock_generator generic map(clk_period => clk_period) port map(clk => clk_info);
    clk_gen_carrier : clock_generator generic map(clk_period => clk_period/10) port map(clk => clk_carrier);
    am_gen : amplitude_modulation generic map(width => width, nsamples => nsamples) port map(clk_info => clk_info, clk_carrier => clk_carrier, vout => vout);

end behavior;