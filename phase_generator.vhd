library ieee;
use ieee.std_logic_1164.all;
use work.npath_package.all;

entity phase_generator is
    generic (
        n : natural := n_phases;
        clk_period : time := 10ns
    );
    port (
        clk : out std_array(n - 1 downto 0) := (others => '0')
    );
end phase_generator;

architecture behavior of phase_generator is

begin
    phase_generation : process
    begin
        for i in 0 to n - 1 loop
            clk(i) <= '1';
            wait for clk_period / n;
            clk(i) <= '0';
        end loop;
    end process phase_generation;
end architecture behavior;