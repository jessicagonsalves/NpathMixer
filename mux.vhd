library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use work.npath_package.all;

entity mux is
	generic (
		width_address : natural := 2;
		width : natural := 8
	);
	port (
		a : in bits_array_t(width_address ** 2 - 1 downto 0) := (others => (others => '0'));
		address : in std_logic_vector(width_address - 1 downto 0) := (others => '0');
		b : out std_logic_vector(width - 1 downto 0) := (others => '0')
	);

end mux;

architecture behavior of mux is

begin
	b <= a(to_integer(unsigned(address)));
end architecture behavior;