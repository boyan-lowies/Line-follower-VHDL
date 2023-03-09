library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end entity testbench;

architecture structural of testbench is
    component timebase is
        port(
            clk         :in std_logic;
            reset       :in std_logic;
            count_out   :out std_logic_vector(0 to 19)
        );
    end component timebase;

signal clk, reset :std_logic;
signal count_out  :std_logic_vector(0 to 19);
begin

    clk <= '0' after 0ns, not clk after 20ns;
    reset <= '1' after 0ns, '0' after 100ns;

PORTS: timebase port map(
    clk => clk,
    reset=> reset,
    count_out => count_out
);

end architecture structural; 

