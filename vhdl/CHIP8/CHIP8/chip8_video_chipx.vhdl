-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_video_chipx is
  port(x      : in unsigned(9 downto 0);
       result : out std_logic_vector(6 downto 0));
end;

architecture structural of chip8_video_chipx is
  signal \#case_alt\               : std_logic_vector(6 downto 0);
  signal \x'\                      : unsigned(6 downto 0);
  signal a1                        : std_logic_vector(6 downto 0);
  signal result_selection_res      : boolean;
  signal \#case_alt_selection_res\ : boolean;
  signal \#bv\                     : std_logic_vector(9 downto 0);
  signal a1_projection             : chip8_types.tup2_8;
begin
  result_selection_res <= to_unsigned(8,7) <= \x'\;

  result <= \#case_alt\ when result_selection_res else
            std_logic_vector'("0" & "------");

  \#case_alt_selection_res\ <= \x'\ < to_unsigned(72,7);

  \#case_alt\ <= std_logic_vector'("1" & (std_logic_vector(resize((\x'\ - to_unsigned(8,7)),6)))) when \#case_alt_selection_res\ else
                 std_logic_vector'("0" & "------");

  \x'\ <= unsigned(a1);

  \#bv\ <= (std_logic_vector(x));

  a1_projection <= (\#bv\(\#bv\'high downto 3),\#bv\(3-1 downto 0));

  a1 <= a1_projection.tup2_8_sel0;
end;

