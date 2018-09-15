-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_parity is
  port(eta    : in unsigned(7 downto 0);
       result : out std_logic);
end;

architecture structural of cactus_clash_ps2_parity is
  signal \x#\                      : unsigned(63 downto 0);
  signal \$j\                      : std_logic;
  signal \#x#_0\                   : unsigned(63 downto 0);
  signal result_0                  : std_logic;
  signal \#$j_0\                   : std_logic;
  signal \#x#_1\                   : unsigned(63 downto 0);
  signal result_1                  : std_logic;
  signal \#$j_1\                   : std_logic;
  signal \#x#_2\                   : unsigned(63 downto 0);
  signal result_2                  : std_logic;
  signal \#$j_2\                   : std_logic;
  signal \#x#_3\                   : unsigned(63 downto 0);
  signal result_3                  : std_logic;
  signal \#$j_3\                   : std_logic;
  signal \#x#_4\                   : unsigned(63 downto 0);
  signal result_4                  : std_logic;
  signal \#$j_4\                   : std_logic;
  signal \#x#_5\                   : unsigned(63 downto 0);
  signal result_5                  : std_logic;
  signal \#$j_5\                   : std_logic;
  signal \#case_alt\               : std_logic;
  signal \#x#_6\                   : unsigned(63 downto 0);
  signal result_selection_res      : unsigned(63 downto 0);
  signal \#i\                      : signed(63 downto 0);
  signal \#i_0\                    : signed(63 downto 0);
  signal result_0_selection_res    : unsigned(63 downto 0);
  signal \#i_1\                    : signed(63 downto 0);
  signal \#i_2\                    : signed(63 downto 0);
  signal result_1_selection_res    : unsigned(63 downto 0);
  signal \#i_3\                    : signed(63 downto 0);
  signal \#i_4\                    : signed(63 downto 0);
  signal result_2_selection_res    : unsigned(63 downto 0);
  signal \#i_5\                    : signed(63 downto 0);
  signal \#i_6\                    : signed(63 downto 0);
  signal result_3_selection_res    : unsigned(63 downto 0);
  signal \#i_7\                    : signed(63 downto 0);
  signal \#i_8\                    : signed(63 downto 0);
  signal result_4_selection_res    : unsigned(63 downto 0);
  signal \#i_9\                    : signed(63 downto 0);
  signal \#i_10\                   : signed(63 downto 0);
  signal result_5_selection_res    : unsigned(63 downto 0);
  signal \#i_11\                   : signed(63 downto 0);
  signal \#i_12\                   : signed(63 downto 0);
  signal \#case_alt_selection_res\ : unsigned(63 downto 0);
  signal \#i_13\                   : signed(63 downto 0);
  signal \#i_14\                   : signed(63 downto 0);
begin
  \x#\ <= resize(eta,64);

  result_selection_res <= \x#\ and to_unsigned(1,64);

  \#i\ <= to_signed(1,64);

  with (result_selection_res) select
    result <= \$j\ when x"0000000000000000",
              '1' xor result_0 when others;

  \#i_0\ <= to_signed(0,64);

  \$j\ <= '0' xor result_0;

  \#x#_0\ <= resize(eta,64);

  result_0_selection_res <= \#x#_0\ and to_unsigned(2,64);

  \#i_1\ <= to_signed(1,64);

  with (result_0_selection_res) select
    result_0 <= \#$j_0\ when x"0000000000000000",
                '1' xor result_1 when others;

  \#i_2\ <= to_signed(0,64);

  \#$j_0\ <= '0' xor result_1;

  \#x#_1\ <= resize(eta,64);

  result_1_selection_res <= \#x#_1\ and to_unsigned(4,64);

  \#i_3\ <= to_signed(1,64);

  with (result_1_selection_res) select
    result_1 <= \#$j_1\ when x"0000000000000000",
                '1' xor result_2 when others;

  \#i_4\ <= to_signed(0,64);

  \#$j_1\ <= '0' xor result_2;

  \#x#_2\ <= resize(eta,64);

  result_2_selection_res <= \#x#_2\ and to_unsigned(8,64);

  \#i_5\ <= to_signed(1,64);

  with (result_2_selection_res) select
    result_2 <= \#$j_2\ when x"0000000000000000",
                '1' xor result_3 when others;

  \#i_6\ <= to_signed(0,64);

  \#$j_2\ <= '0' xor result_3;

  \#x#_3\ <= resize(eta,64);

  result_3_selection_res <= \#x#_3\ and to_unsigned(16,64);

  \#i_7\ <= to_signed(1,64);

  with (result_3_selection_res) select
    result_3 <= \#$j_3\ when x"0000000000000000",
                '1' xor result_4 when others;

  \#i_8\ <= to_signed(0,64);

  \#$j_3\ <= '0' xor result_4;

  \#x#_4\ <= resize(eta,64);

  result_4_selection_res <= \#x#_4\ and to_unsigned(32,64);

  \#i_9\ <= to_signed(1,64);

  with (result_4_selection_res) select
    result_4 <= \#$j_4\ when x"0000000000000000",
                '1' xor result_5 when others;

  \#i_10\ <= to_signed(0,64);

  \#$j_4\ <= '0' xor result_5;

  \#x#_5\ <= resize(eta,64);

  result_5_selection_res <= \#x#_5\ and to_unsigned(64,64);

  \#i_11\ <= to_signed(1,64);

  with (result_5_selection_res) select
    result_5 <= \#$j_5\ when x"0000000000000000",
                '1' xor \#case_alt\ when others;

  \#i_12\ <= to_signed(0,64);

  \#$j_5\ <= '0' xor \#case_alt\;

  \#case_alt_selection_res\ <= \#x#_6\ and to_unsigned(128,64);

  \#i_13\ <= to_signed(0,64);

  \#i_14\ <= to_signed(1,64);

  with (\#case_alt_selection_res\) select
    \#case_alt\ <= '0' when x"0000000000000000",
                   '1' when others;

  \#x#_6\ <= resize(eta,64);
end;

