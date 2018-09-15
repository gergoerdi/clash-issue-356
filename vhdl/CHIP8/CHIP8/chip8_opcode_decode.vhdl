-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_opcode_decode is
  port(hi     : in unsigned(7 downto 0);
       lo     : in unsigned(7 downto 0);
       result : out std_logic_vector(17 downto 0));
end;

architecture structural of chip8_opcode_decode is
  signal \#case_alt\    : std_logic_vector(17 downto 0);
  signal \#case_alt_0\  : std_logic_vector(17 downto 0);
  signal result_0       : std_logic_vector(17 downto 0);
  signal result_1       : std_logic_vector(17 downto 0);
  signal result_2       : std_logic_vector(17 downto 0);
  signal result_3       : std_logic_vector(17 downto 0);
  signal result_4       : std_logic_vector(17 downto 0);
  signal \#case_alt_1\  : std_logic_vector(17 downto 0);
  signal \#case_alt_2\  : std_logic_vector(17 downto 0);
  signal \#case_alt_3\  : std_logic_vector(17 downto 0);
  signal \#case_alt_4\  : std_logic_vector(17 downto 0);
  signal result_5       : std_logic_vector(17 downto 0);
  signal result_6       : std_logic_vector(17 downto 0);
  signal result_7       : std_logic_vector(17 downto 0);
  signal result_8       : std_logic_vector(17 downto 0);
  signal \#case_alt_5\  : std_logic_vector(17 downto 0);
  signal \#app_arg\     : unsigned(3 downto 0);
  signal \#case_alt_6\  : std_logic_vector(17 downto 0);
  signal \#app_arg_0\   : unsigned(3 downto 0);
  signal result_9       : std_logic_vector(17 downto 0);
  signal \#case_alt_7\  : std_logic_vector(17 downto 0);
  signal result_10      : std_logic_vector(17 downto 0);
  signal result_11      : std_logic_vector(17 downto 0);
  signal result_12      : std_logic_vector(17 downto 0);
  signal \#case_alt_8\  : std_logic_vector(17 downto 0);
  signal \#case_alt_9\  : std_logic_vector(17 downto 0);
  signal \#case_alt_10\ : std_logic_vector(17 downto 0);
  signal \#case_alt_11\ : std_logic_vector(17 downto 0);
  signal result_13      : std_logic_vector(17 downto 0);
  signal result_14      : std_logic_vector(17 downto 0);
  signal result_15      : std_logic_vector(17 downto 0);
  signal result_16      : std_logic_vector(17 downto 0);
  signal \#case_alt_12\ : std_logic_vector(17 downto 0);
  signal \#app_arg_1\   : unsigned(3 downto 0);
  signal \#case_alt_13\ : std_logic_vector(17 downto 0);
  signal \#app_arg_2\   : unsigned(3 downto 0);
  signal result_17      : std_logic_vector(17 downto 0);
  signal \#case_alt_14\ : std_logic_vector(17 downto 0);
  signal \#app_arg_3\   : unsigned(3 downto 0);
  signal \#app_arg_4\   : unsigned(11 downto 0);
  signal \#app_arg_5\   : std_logic_vector(3 downto 0);
  signal \#app_arg_6\   : std_logic_vector(3 downto 0);
  signal \#case_alt_15\ : std_logic_vector(17 downto 0);
  signal \#app_arg_7\   : std_logic_vector(3 downto 0);
  signal \#app_arg_8\   : unsigned(3 downto 0);
  signal \#app_arg_9\   : unsigned(3 downto 0);
  signal \#case_alt_16\ : std_logic_vector(17 downto 0);
  signal \#a1_case_alt\ : unsigned(3 downto 0);
  signal \#case_alt_17\ : std_logic_vector(17 downto 0);
  signal \#app_arg_10\  : std_logic_vector(3 downto 0);
  signal \#app_arg_11\  : unsigned(3 downto 0);
  signal a1             : std_logic_vector(3 downto 0);
  signal \#a2_case_alt\ : unsigned(3 downto 0);
  signal \#app_arg_12\  : std_logic_vector(3 downto 0);
  signal a8             : unsigned(3 downto 0);
  signal a4             : unsigned(3 downto 0);
  signal b1             : std_logic_vector(3 downto 0);
  signal ds4            : chip8_types.tup2;
  signal \#app_arg_13\  : unsigned(11 downto 0);
  signal \x#\           : unsigned(63 downto 0);
  signal a1_0           : std_logic_vector(3 downto 0);
  signal b1_0           : std_logic_vector(3 downto 0);
  signal ds4_0          : chip8_types.tup2;
  signal \#x#_0\        : unsigned(63 downto 0);
  signal \#bv\          : std_logic_vector(7 downto 0);
  signal \#bv_0\        : std_logic_vector(7 downto 0);
begin
  with (\#a1_case_alt\) select
    result <= \#case_alt\ when x"0",
              std_logic_vector'("00011" & (std_logic_vector(\#app_arg_13\)) & "-") when x"1",
              std_logic_vector'("00100" & (std_logic_vector(\#app_arg_13\)) & "-") when x"2",
              std_logic_vector'("00101" & (std_logic_vector(\#app_arg_11\)) & (std_logic_vector(lo)) & (chip8_types.toSLV(true))) when x"3",
              std_logic_vector'("00101" & (std_logic_vector(\#app_arg_11\)) & (std_logic_vector(lo)) & (chip8_types.toSLV(false))) when x"4",
              \#case_alt_0\ when x"5",
              result_0 when others;

  with (\#a2_case_alt\) select
    \#case_alt\ <= \#case_alt_16\ when x"0",
                   std_logic_vector'("00010" & (std_logic_vector(\#app_arg_13\)) & "-") when others;

  with (a8) select
    \#case_alt_0\ <= std_logic_vector'("00110" & (std_logic_vector(\#app_arg_11\)) & (std_logic_vector(unsigned(\#app_arg_12\))) & (chip8_types.toSLV(true)) & "----") when x"0",
                     result_0 when others;

  with (\#a1_case_alt\) select
    result_0 <= std_logic_vector'("00111" & (std_logic_vector(\#app_arg_9\)) & (std_logic_vector(lo)) & "-") when x"6",
                std_logic_vector'("01000" & (std_logic_vector(\#app_arg_9\)) & (std_logic_vector(lo)) & "-") when x"7",
                std_logic_vector'("01001" & (std_logic_vector(\#app_arg_9\)) & (std_logic_vector(\#app_arg_8\)) & (\#app_arg_7\) & "-") when x"8",
                \#case_alt_15\ when x"9",
                result_1 when others;

  with (\#a1_case_alt\) select
    result_1 <= std_logic_vector'("01010" & (std_logic_vector(\#app_arg_4\)) & "-") when x"A",
                std_logic_vector'("01011" & (std_logic_vector(\#app_arg_4\)) & "-") when x"B",
                std_logic_vector'("01100" & (std_logic_vector(\#app_arg_3\)) & (std_logic_vector(lo)) & "-") when x"C",
                std_logic_vector'("01101" & (std_logic_vector(\#app_arg_3\)) & (std_logic_vector(unsigned(\#app_arg_5\))) & (std_logic_vector(a8)) & "-") when x"D",
                result_9 when x"E",
                result_2 when others;

  with (\#a1_case_alt\) select
    result_2 <= result_3 when x"F",
                std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_3 <= \#case_alt_6\ when x"0",
                result_4 when others;

  with (a4) select
    result_4 <= \#case_alt_5\ when x"1",
                result_8 when others;

  with (a8) select
    \#case_alt_1\ <= std_logic_vector'("10100" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"9",
                     result_7 when others;

  with (a8) select
    \#case_alt_2\ <= std_logic_vector'("10101" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"3",
                     result_6 when others;

  with (a8) select
    \#case_alt_3\ <= std_logic_vector'("10110" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"5",
                     result_5 when others;

  with (a8) select
    \#case_alt_4\ <= std_logic_vector'("10111" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"5",
                     std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_5 <= \#case_alt_4\ when x"6",
                std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_6 <= \#case_alt_3\ when x"5",
                result_5 when others;

  with (a4) select
    result_7 <= \#case_alt_2\ when x"3",
                result_6 when others;

  with (a4) select
    result_8 <= \#case_alt_1\ when x"2",
                result_7 when others;

  with (a8) select
    \#case_alt_5\ <= std_logic_vector'("10001" & (std_logic_vector(\#app_arg\)) & "---------") when x"5",
                     std_logic_vector'("10010" & (std_logic_vector(\#app_arg\)) & "---------") when x"8",
                     std_logic_vector'("10011" & (std_logic_vector(\#app_arg\)) & "---------") when x"E",
                     result_8 when others;

  \#app_arg\ <= unsigned((std_logic_vector(\#a2_case_alt\)));

  with (a8) select
    \#case_alt_6\ <= std_logic_vector'("01111" & (std_logic_vector(\#app_arg_0\)) & "---------") when x"7",
                     std_logic_vector'("10000" & (std_logic_vector(\#app_arg_0\)) & "---------") when x"A",
                     result_4 when others;

  \#app_arg_0\ <= unsigned((std_logic_vector(\#a2_case_alt\)));

  with (a4) select
    result_9 <= \#case_alt_14\ when x"9",
                result_17 when others;

  with (a8) select
    \#case_alt_7\ <= std_logic_vector'("01110" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & (chip8_types.toSLV(false)) & "--------") when x"1",
                     result_10 when others;

  with (\#a1_case_alt\) select
    result_10 <= result_11 when x"F",
                 std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_11 <= \#case_alt_13\ when x"0",
                 result_12 when others;

  with (a4) select
    result_12 <= \#case_alt_12\ when x"1",
                 result_16 when others;

  with (a8) select
    \#case_alt_8\ <= std_logic_vector'("10100" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"9",
                     result_15 when others;

  with (a8) select
    \#case_alt_9\ <= std_logic_vector'("10101" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"3",
                     result_14 when others;

  with (a8) select
    \#case_alt_10\ <= std_logic_vector'("10110" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"5",
                      result_13 when others;

  with (a8) select
    \#case_alt_11\ <= std_logic_vector'("10111" & (std_logic_vector(unsigned((std_logic_vector(\#a2_case_alt\))))) & "---------") when x"5",
                      std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_13 <= \#case_alt_11\ when x"6",
                 std_logic_vector'(0 to 17 => '-') when others;

  with (a4) select
    result_14 <= \#case_alt_10\ when x"5",
                 result_13 when others;

  with (a4) select
    result_15 <= \#case_alt_9\ when x"3",
                 result_14 when others;

  with (a4) select
    result_16 <= \#case_alt_8\ when x"2",
                 result_15 when others;

  with (a8) select
    \#case_alt_12\ <= std_logic_vector'("10001" & (std_logic_vector(\#app_arg_1\)) & "---------") when x"5",
                      std_logic_vector'("10010" & (std_logic_vector(\#app_arg_1\)) & "---------") when x"8",
                      std_logic_vector'("10011" & (std_logic_vector(\#app_arg_1\)) & "---------") when x"E",
                      result_16 when others;

  \#app_arg_1\ <= unsigned((std_logic_vector(\#a2_case_alt\)));

  with (a8) select
    \#case_alt_13\ <= std_logic_vector'("01111" & (std_logic_vector(\#app_arg_2\)) & "---------") when x"7",
                      std_logic_vector'("10000" & (std_logic_vector(\#app_arg_2\)) & "---------") when x"A",
                      result_12 when others;

  \#app_arg_2\ <= unsigned((std_logic_vector(\#a2_case_alt\)));

  with (a4) select
    result_17 <= \#case_alt_7\ when x"A",
                 result_10 when others;

  with (a8) select
    \#case_alt_14\ <= std_logic_vector'("01110" & (std_logic_vector(\#app_arg_3\)) & (chip8_types.toSLV(true)) & "--------") when x"E",
                      result_17 when others;

  \#app_arg_3\ <= unsigned(\#app_arg_6\);

  \#app_arg_4\ <= unsigned((std_logic_vector'(std_logic_vector'(\#app_arg_6\) & std_logic_vector'((std_logic_vector'(std_logic_vector'(\#app_arg_5\) & std_logic_vector'((std_logic_vector(a8)))))))));

  \#app_arg_5\ <= std_logic_vector(a4);

  \#app_arg_6\ <= std_logic_vector(\#a2_case_alt\);

  with (a8) select
    \#case_alt_15\ <= std_logic_vector'("00110" & (std_logic_vector(\#app_arg_9\)) & (std_logic_vector(\#app_arg_8\)) & (chip8_types.toSLV(false)) & "----") when x"0",
                      result_1 when others;

  with (a8) select
    \#app_arg_7\ <= "0000" when x"0",
                    "0001" when x"1",
                    "0010" when x"2",
                    "0011" when x"3",
                    "0100" when x"4",
                    "0101" when x"5",
                    "0110" when x"6",
                    "0111" when x"7",
                    "1000" when x"E",
                    std_logic_vector'(0 to 3 => '-') when others;

  \#app_arg_8\ <= unsigned((std_logic_vector(a4)));

  \#app_arg_9\ <= unsigned((std_logic_vector(\#a2_case_alt\)));

  with (a4) select
    \#case_alt_16\ <= \#case_alt_17\ when x"E",
                      std_logic_vector'("00010" & (std_logic_vector(\#app_arg_13\)) & "-") when others;

  \#a1_case_alt\ <= unsigned(a1);

  with (a8) select
    \#case_alt_17\ <= std_logic_vector'("00000" & "-------------") when x"0",
                      std_logic_vector'("00001" & "-------------") when x"E",
                      std_logic_vector'("00010" & (std_logic_vector(\#app_arg_13\)) & "-") when others;

  \#app_arg_10\ <= std_logic_vector(\#a2_case_alt\);

  \#app_arg_11\ <= unsigned(\#app_arg_10\);

  a1 <= ds4.tup2_sel0;

  \#a2_case_alt\ <= unsigned(b1);

  \#app_arg_12\ <= std_logic_vector(a4);

  a8 <= unsigned(b1_0);

  a4 <= unsigned(a1_0);

  b1 <= ds4.tup2_sel1;

  \#bv\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\x#\))))),8)));

  ds4 <= (\#bv\(\#bv\'high downto 4),\#bv\(4-1 downto 0));

  \#app_arg_13\ <= unsigned((std_logic_vector'(std_logic_vector'(\#app_arg_10\) & std_logic_vector'((std_logic_vector'(std_logic_vector'(\#app_arg_12\) & std_logic_vector'((std_logic_vector(a8)))))))));

  \x#\ <= resize(hi,64);

  a1_0 <= ds4_0.tup2_sel0;

  b1_0 <= ds4_0.tup2_sel1;

  \#bv_0\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_0\))))),8)));

  ds4_0 <= (\#bv_0\(\#bv_0\'high downto 4),\#bv_0\(4-1 downto 0));

  \#x#_0\ <= resize(lo,64);
end;

