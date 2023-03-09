library ieee;
use ieee.std_logic_1164.all;

entity timebase is
    port(
        clk         :in std_logic;
        reset       :in std_logic;
        count_out   :out std_logic_vector(0 to 19)
    );
end entity timebase;

architecture behavioral of timebase is
	signal count, new_count		:unsigned (0 to 19);
	
	begin
		-- Register
		process(clk)
		begin
			if (rising_edge(clk)) then
				if (reset = '1') then
					count <= (others => '0');
				else then
					count <= new_count;
				end if;
			end if;
		end process;
		
		-- add_1
		process(count)
		begin
			new_count <= count + 1;
		end process;

		count_out <= std_logic_vector(count);
	end architecture behavioral;