library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity testbench;

architecture structural of testbench is
    component timebase is
        port(
            clk         :in std_logic;
            reset       :in std_logic;
            count_out   :out std_logic_vector(19 downto 0)
        );
    end component timebase;

    signal clk          : std_logic;
    signal reset        : std_logic;
    signal count_out    : std_logic_vector(19 downto 0);

begin
    clk         <=  '1' after 0ns,
                    '0' after 10ns when clk = '1' else '1' after 10ns;
    reset       <=  '1' after 0ns,
                    '0' after 60ns;

P1: timebase port map(
                        clk => clk,
                        reset => reset,
                        count_out => count_out
);
end architecture structural;