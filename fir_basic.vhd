library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.npath_package.all;

entity fir_basic is
	generic (
		width : natural := 8;
		width_coeff : natural := 4
	);
	port (
		clk : in std_logic;
		vin : in std_logic_vector(width - 1 downto 0);
		vout : out std_logic_vector(width + log2(width_coeff) + n_integer - 1 downto 0) := (others => '0')
	);
end fir_basic;

architecture behavior of fir_basic is

	constant width_ext : natural := (width + n_rom) + log2(width_coeff);
	type bits_array_t is array (natural range <>) of std_logic_vector(width - 1 downto 0);
	signal q_s : bits_array_t(width_coeff - 1 downto 0) := (others => (others => '0'));
	type fix_array_2w is array (natural range <>) of std_logic_vector(width + n_rom - 1 downto 0);
	signal vec_2w : fix_array_2w(width_coeff - 1 downto 0) := (others => (others => '0'));
	type matrix_slv_t is array(natural range <>, natural range <>) of std_logic_vector(width_ext - 1 downto 0);
	signal q_sum : matrix_slv_t(log2(width_coeff) - 1 downto 0, width_coeff/2 - 1 downto 0) := (others => (others => (others => '0')));

begin

	shif_regs : process (clk)
	begin
		if (clk'event and clk = '1') then
			q_s(width_coeff - 1) <= vin;
			vec_2w(width_coeff - 1) <= std_logic_vector(signed(vin) * signed(my_rom(width_coeff - 1)));
			for i in width_coeff - 2 downto 0 loop
				q_s(i) <= q_s(i + 1);
				vec_2w(i) <= std_logic_vector(signed(q_s(i + 1)) * signed(my_rom(i)));
			end loop;
		end if;

	end process shif_regs;

	sum_tree : process (clk)
		variable q_mod : std_logic_vector(width - 1 downto 0);
		variable q_rem : std_logic_vector(n_rom - n_integer - 1 downto 0);
	begin
		for i in 0 to width_coeff - 2 loop
			q_mod := std_logic_vector(to_unsigned(i, width));
			if q_mod(0) = '0' then
				q_sum(0, i/2) <= std_logic_vector(resize(signed(std_logic_vector(signed(vec_2w(i)) + signed(vec_2w(i + 1)))), width_ext));
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

		--remainder
		q_rem := q_sum(log2(width_coeff) - 1, 0)(n_rom - n_integer - 1 downto 0);
		if 2 ** (q_rem'length - 1) < to_integer(unsigned(q_rem)) then
			vout <= std_logic_vector(to_signed(to_integer(signed(q_sum(log2(width_coeff) - 1, 0)(q_sum(log2(width_coeff) - 1, 0)'length - 1 downto n_rom - n_integer))) + 1, vout'length));
		else
			vout <= q_sum(log2(width_coeff) - 1, 0)(q_sum(log2(width_coeff) - 1, 0)'length - 1 downto n_rom - n_integer);
		end if;
	end process sum_tree;

end behavior;