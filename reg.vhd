library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity reg is
	generic (
		WIDTH : natural := 8
	);

	port (
		clk : in std_logic;
		d : in std_logic_vector(WIDTH - 1 downto 0) := (others => '0');
		q : out std_logic_vector(WIDTH - 1 downto 0) := (others => '0')
	);
end reg;

architecture behavior of reg is

	signal q_s : std_logic_vector(WIDTH - 1 downto 0) := (others => '0');

begin

	q <= q_s;

	-- Register with active-high clock & asynchronous clear
	process (clk)
	begin
		if clk'EVENT and clk = '1' then
			q_s <= d;
		end if;
	end process;

end behavior;