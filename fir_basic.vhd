library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use work.npath_package.all;

entity fir_basic is
	generic (
		width : natural := 8;
		width_integer : natural := 2;
		width_coeff : natural := 4;
		width_ext : natural := 19
	);
	port (
		clk : in std_logic;
		vin : in std_logic_vector(width - 1 downto 0);
		vout : out std_logic_vector(width_ext - 1 downto 0) := (others => '0')
	);
end fir_basic;

architecture behavior of fir_basic is

	type bits_array_t is array (natural range <>) of std_logic_vector(width - 1 downto 0);
	signal q_s : bits_array_t(width_coeff - 1 downto 0) := (others => (others => '0'));
	signal fix_w : sfixed(width - 1 downto 0) := (others => '0');
	type fix_array_2w is array (natural range <>) of sfixed(width + width_integer - 1 downto width_integer - my_rom(0)'length);
	signal vec_2w : fix_array_2w(width_coeff - 1 downto 0) := (others => (others => '0'));
	type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(width_ext - 1 downto 0);
	signal q_sum : matrix_slv_t(log2(width_coeff) - 1 downto 0, width_coeff/2 - 1 downto 0) := (others => (others => (others => '0')));

begin

	shif_regs : process (clk)
	begin
		if (clk'event and clk = '1') then
			q_s(width_coeff - 1) <= vin;
			vec_2w(width_coeff - 1) <= to_sfixed(vin, fix_w) * my_rom(width_coeff - 1);
			for i in width_coeff - 2 downto 0 loop
				q_s(i) <= q_s(i + 1);
				vec_2w(i) <= to_sfixed(q_s(i + 1), fix_w) * my_rom(i);
			end loop;

		end if;

	end process shif_regs;

	sum_tree : process (clk)
		variable q_mod : std_logic_vector(width - 1 downto 0) := (others => '0');
	begin
		for i in 0 to width_coeff - 2 loop
			q_mod := std_logic_vector(to_unsigned(i, width));
			if q_mod(0) = '0' then
				q_sum(0, i/2) <= std_logic_vector(to_signed(vec_2w(i) + vec_2w(i + 1), width_ext));
			end if;
		end loop;

		for i in 1 to log2(width_coeff) - 1 loop
			for j in 0 to width_coeff/2 - 2 loop
				q_mod := std_logic_vector(to_unsigned(j, width));
				if q_mod(0) = '0' then
					q_sum(i, j/2) <= std_logic_vector(signed(q_sum(i - 1, j)) + signed(q_sum(i - 1, j + 1)));
				end if;
			end loop;
		end loop;

		vout <= q_sum(log2(width_coeff) - 1, 0)(width_ext - 1 downto 0);
	end process sum_tree;

end behavior;