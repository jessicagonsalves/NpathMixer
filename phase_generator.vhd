library ieee;
use ieee.std_logic_1164.all;
use work.npath_package.all;

entity phase_generator is
    generic (
        width_phases : natural := 4
    );
    port (
        clk : in std_logic;
        phg : out std_array(width_phases - 1 downto 0) := (others => '0')
    );
end phase_generator;

architecture behavior of phase_generator is

begin
    process (clk)
        variable counter : natural;
    begin
        if (clk'event and clk = '1') then
            for i in 0 to width_phases - 1 loop
                if i = counter then
                    phg(i) <= '1';
                else
                    phg(i) <= '0';
                end if;
            end loop;
            counter := counter + 1;
            if (counter = width_phases) then
                counter := 0;
            end if;
        end if;
    end process;
end architecture behavior;