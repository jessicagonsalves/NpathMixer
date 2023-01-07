library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use work.npath_package.all;

entity rom is
  port (
    address : in std_logic_vector(size_coefficient - 1 downto 0);
    data : out sfixed(n_integer - 1 downto n_integer - n_bits)
  );
end entity rom;

architecture behavior of rom is
    
begin
  process (address)
  begin
    data <= my_rom(i);
  end process;
end architecture behavior;