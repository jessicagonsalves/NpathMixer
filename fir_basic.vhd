library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.fixed_pkg.all;
use work.npath_package.all;

entity fir_basic is
	generic (
		n : natural := 4;
		width : natural := 8;
		width_op : natural := 19
	);
	port (
		clk : in std_logic;
		vin : in std_logic_vector(width - 1 downto 0);
		vout_s : out std_logic_vector(width_op - 1 downto 0) := (others => '0');
		vout : out std_logic_vector(width - 1 downto 0) := (others => '0')
	);
end fir_basic;

architecture behavior of fir_basic is

	type bitsPlus_array_t is array (natural range <>) of std_logic_vector(width - 1 downto 0);
	signal q_s : bitsPlus_array_t(n - 1 downto 0) := (others => (others => '0'));
	signal fix_w : sfixed(width - 1 downto 0) := (others => '0');
	type fix_array_2w is array (natural range <>) of sfixed(width + n_integer - 1 downto n_integer - my_rom(0)'length);
	signal vec_2w : fix_array_2w(n - 1 downto 0) := (others => (others => '0'));
	type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(width_op - 1 downto 0);
	signal q_sum : matrix_slv_t(log2(n) - 1 downto 0, n - 1 downto 0) := (others => (others => (others => '0')));

begin

	shif_regs : process (clk)
	begin
		if (clk'event and clk = '1') then
			q_s(n - 1) <= vin;
			vec_2w(n - 1) <= to_sfixed(vin, fix_w) * my_rom(n - 1);
			for i in n - 2 downto 0 loop
				q_s(i) <= q_s(i + 1);
				vec_2w(i) <= to_sfixed(q_s(i + 1), fix_w) * my_rom(i);
			end loop;
			vout <= q_sum(log2(n) - 1, 0)(width_op - 1) & q_sum(log2(n) - 1, 0)(width + n_integer - 3 downto n_integer - 1);
			vout_s <= q_sum(log2(n) - 1, 0)(width_op - 1 downto 0);
		end if;

	end process shif_regs;

	sum_tree : for i in 0 to n - 2 generate
		mod_if : if (i mod 2) = 0 generate
			q_sum(0, i/2) <= std_logic_vector(to_signed(vec_2w(i) + vec_2w(i + 1), width_op));
		end generate;
	end generate;

	sum_tree_row : for i in 1 to log2(n) - 1 generate
		sum_tree_col : for j in 0 to n/2 - 2 generate
			mod_if : if (j mod 2) = 0 generate
				q_sum(i, j/2) <= std_logic_vector(signed(q_sum(i - 1, j)) + signed(q_sum(i - 1, j + 1)));
			end generate;
		end generate;
	end generate;

end behavior;