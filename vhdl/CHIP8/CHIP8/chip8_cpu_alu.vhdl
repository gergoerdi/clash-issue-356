-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_cpu_alu is
  port(fun    : in std_logic_vector(3 downto 0);
       eta1   : in unsigned(7 downto 0);
       eta    : in unsigned(7 downto 0);
       result : out chip8_types.tup2_0);
end;

architecture structural of chip8_cpu_alu is
  signal \#case_alt\                 : unsigned(7 downto 0);
  signal \#z_case_alt\               : unsigned(7 downto 0);
  signal x                           : unsigned(63 downto 0);
  signal \#case_alt_0\               : unsigned(7 downto 0);
  signal \#case_scrut\               : boolean;
  signal \#app_arg\                  : signed(63 downto 0);
  signal \#case_alt_1\               : unsigned(7 downto 0);
  signal \#z_case_alt_0\             : unsigned(7 downto 0);
  signal x_0                         : unsigned(63 downto 0);
  signal \#case_alt_2\               : unsigned(7 downto 0);
  signal \#case_scrut_0\             : boolean;
  signal \#app_arg_0\                : signed(63 downto 0);
  signal \#z_case_alt_1\             : unsigned(7 downto 0);
  signal x_1                         : unsigned(63 downto 0);
  signal \#case_alt_3\               : unsigned(7 downto 0);
  signal \#case_scrut_1\             : boolean;
  signal \#app_arg_1\                : signed(63 downto 0);
  signal \x#\                        : unsigned(63 downto 0);
  signal \y#\                        : unsigned(63 downto 0);
  signal \#w\                        : unsigned(63 downto 0);
  signal \#case_alt_selection_res\   : unsigned(63 downto 0);
  signal \#w_0\                      : unsigned(63 downto 0);
  signal \#case_alt_1_selection_res\ : unsigned(63 downto 0);
  signal \#w_1\                      : unsigned(63 downto 0);
  signal \#w_2\                      : unsigned(63 downto 0);
begin
  \#w\ <= (shift_left(\x#\,to_integer(to_signed(1,64))));

  with (fun) select
    result <= ( tup2_0_sel0 => eta
              , tup2_0_sel1 => std_logic_vector'("0" & "--------") ) when x"0",
              ( tup2_0_sel0 => resize((\x#\ or \y#\),8)
              , tup2_0_sel1 => std_logic_vector'("0" & "--------") ) when x"1",
              ( tup2_0_sel0 => resize((\x#\ and \y#\),8)
              , tup2_0_sel1 => std_logic_vector'("0" & "--------") ) when x"2",
              ( tup2_0_sel0 => resize((\x#\ xor \y#\),8)
              , tup2_0_sel1 => std_logic_vector'("0" & "--------") ) when x"3",
              ( tup2_0_sel0 => \#z_case_alt_1\
              , tup2_0_sel1 => std_logic_vector'("1" & (std_logic_vector(\#case_alt_3\))) ) when x"4",
              ( tup2_0_sel0 => \#z_case_alt_0\
              , tup2_0_sel1 => std_logic_vector'("1" & (std_logic_vector(\#case_alt_2\))) ) when x"5",
              ( tup2_0_sel0 => resize((shift_right(\x#\,to_integer(to_signed(1,64)))),8)
              , tup2_0_sel1 => std_logic_vector'("1" & (std_logic_vector(\#case_alt_1\))) ) when x"6",
              ( tup2_0_sel0 => \#z_case_alt\
              , tup2_0_sel1 => std_logic_vector'("1" & (std_logic_vector(\#case_alt_0\))) ) when x"7",
              ( tup2_0_sel0 => resize((resize(\#w\(7 downto 0),64)),8)
              , tup2_0_sel1 => std_logic_vector'("1" & (std_logic_vector(\#case_alt\))) ) when others;

  \#case_alt_selection_res\ <= \x#\ and to_unsigned(128,64);

  with (\#case_alt_selection_res\) select
    \#case_alt\ <= resize(to_unsigned(0,64),8) when x"0000000000000000",
                   resize(to_unsigned(1,64),8) when others;

  \#w_0\ <= (\y#\ - \x#\);

  \#z_case_alt\ <= resize((resize(\#w_0\(7 downto 0),64)),8);

  x <= resize(\#z_case_alt\,64);

  \#case_alt_0\ <= resize(to_unsigned(1,64),8) when \#case_scrut\ else
                   resize(to_unsigned(0,64),8);

  \#case_scrut\ <= tagToEnum(\#app_arg\);

  \#app_arg\ <= to_signed(1,64) when x <= \y#\ else to_signed(0,64);

  \#case_alt_1_selection_res\ <= \x#\ and to_unsigned(1,64);

  with (\#case_alt_1_selection_res\) select
    \#case_alt_1\ <= resize(to_unsigned(0,64),8) when x"0000000000000000",
                     resize(to_unsigned(1,64),8) when others;

  \#w_1\ <= (\x#\ - \y#\);

  \#z_case_alt_0\ <= resize((resize(\#w_1\(7 downto 0),64)),8);

  x_0 <= resize(\#z_case_alt_0\,64);

  \#case_alt_2\ <= resize(to_unsigned(1,64),8) when \#case_scrut_0\ else
                   resize(to_unsigned(0,64),8);

  \#case_scrut_0\ <= tagToEnum(\#app_arg_0\);

  \#app_arg_0\ <= to_signed(1,64) when x_0 <= \x#\ else to_signed(0,64);

  \#w_2\ <= (\x#\ + \y#\);

  \#z_case_alt_1\ <= resize((resize(\#w_2\(7 downto 0),64)),8);

  x_1 <= resize(\#z_case_alt_1\,64);

  \#case_alt_3\ <= resize(to_unsigned(1,64),8) when \#case_scrut_1\ else
                   resize(to_unsigned(0,64),8);

  \#case_scrut_1\ <= tagToEnum(\#app_arg_1\);

  \#app_arg_1\ <= to_signed(1,64) when x_1 < \x#\ else to_signed(0,64);

  \x#\ <= resize(eta1,64);

  \y#\ <= resize(eta,64);
end;

