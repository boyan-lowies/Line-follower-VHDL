library ieee;
use ieee.std_logic_1164.all;

entity timebase is
    port(
        clk         :in std_logic;
        reset       :in std_logic;
        count_out   :out std_logic_vector(0 to 19);
    )
    