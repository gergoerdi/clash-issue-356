-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity clash_explicit_mealy_mealy is
  port(-- clock
       clk    : in std_logic;
       -- asynchronous reset: active high
       rst    : in std_logic;
       i1     : in chip8_types.cpuin;
       result : out chip8_types.cpuout);
end;

architecture structural of clash_explicit_mealy_mealy is
  signal x                                : chip8_types.cpuout;
  signal ds5                              : boolean;
  signal result_0                         : chip8_types.cpuout;
  signal result_1                         : chip8_types.cpuout;
  signal \#x_case_alt\                    : chip8_types.cpuout;
  signal \#x_case_alt_0\                  : chip8_types.cpuout;
  signal \#x_case_alt_1\                  : chip8_types.cpuout;
  signal ds14                             : std_logic_vector(21 downto 0);
  signal xy                               : chip8_types.tup2_2;
  signal ds3                              : unsigned(11 downto 0);
  signal r                                : unsigned(3 downto 0);
  signal r_0                              : unsigned(3 downto 0);
  signal dp                               : std_logic_vector(0 downto 0);
  signal result_2                         : chip8_types.cpuout;
  signal result_3                         : chip8_types.cpuout;
  signal result_4                         : chip8_types.cpuout;
  signal \#x_case_alt_2\                  : chip8_types.cpuout;
  signal ds4                              : std_logic_vector(5 downto 0);
  signal \s''\                            : chip8_types.cpustate;
  signal s1                               : chip8_types.cpustate;
  signal result_5                         : unsigned(7 downto 0);
  signal m3                               : chip8_types.tup2_2;
  signal \#addr_app_arg\                  : signed(63 downto 0);
  signal \#m1_app_arg\                    : signed(63 downto 0);
  signal \reg'\                           : unsigned(3 downto 0);
  signal ds3_0                            : unsigned(11 downto 0);
  signal ds12                             : unsigned(11 downto 0);
  signal wild5                            : std_logic_vector(17 downto 0);
  signal \#x_case_alt_3\                  : chip8_types.cpuout;
  signal \#x_case_alt_4\                  : chip8_types.cpuout;
  signal \#x_case_alt_5\                  : chip8_types.cpuout;
  signal \#x_case_alt_6\                  : chip8_types.cpuout;
  signal \#x_case_alt_7\                  : chip8_types.cpuout;
  signal \#x_case_alt_8\                  : chip8_types.cpuout;
  signal \#x_case_alt_9\                  : chip8_types.cpuout;
  signal \#s''_0\                         : chip8_types.cpustate;
  signal result_6                         : chip8_types.cpustate;
  signal \#s''_case_alt\                  : chip8_types.cpustate;
  signal \#s''_case_alt_0\                : chip8_types.cpustate;
  signal xy2                              : chip8_types.tup2_2;
  signal m1                               : unsigned(11 downto 0);
  signal xy2_0                            : chip8_types.tup2_2;
  signal m1_0                             : unsigned(11 downto 0);
  signal result_7                         : chip8_types.cpustate;
  signal \#s''_1\                         : chip8_types.cpustate;
  signal result_8                         : chip8_types.cpustate;
  signal m4                               : std_logic;
  signal result_9                         : unsigned(7 downto 0);
  signal \#m1_app_arg_0\                  : unsigned(11 downto 0);
  signal result_10                        : unsigned(7 downto 0);
  signal \#addr_app_arg_0\                : unsigned(11 downto 0);
  signal m2                               : unsigned(4 downto 0);
  signal m1_1                             : unsigned(5 downto 0);
  signal \#ph_case_alt\                   : std_logic_vector(21 downto 0);
  signal \#s''_case_scrut\                : boolean;
  signal pressed                          : boolean;
  signal reg                              : unsigned(3 downto 0);
  signal row                              : unsigned(3 downto 0);
  signal wild1                            : signed(63 downto 0);
  signal eta                              : chip8_types.cpustate;
  signal karg                             : chip8_types.cpustate;
  signal ds9                              : unsigned(7 downto 0);
  signal ds10                             : unsigned(7 downto 0);
  signal ds11                             : unsigned(11 downto 0);
  signal ds14_0                           : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds15                             : unsigned(4 downto 0);
  signal ds17                             : unsigned(7 downto 0);
  signal ds3_1                            : unsigned(11 downto 0);
  signal ds3_2                            : unsigned(11 downto 0);
  signal ds13                             : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds4_0                            : unsigned(11 downto 0);
  signal ds4_1                            : unsigned(11 downto 0);
  signal carry                            : std_logic_vector(8 downto 0);
  signal x1                               : chip8_types.tup2_10;
  signal \#x_case_scrut\                  : boolean;
  signal \#x_case_scrut_0\                : boolean;
  signal \#x_case_scrut_1\                : boolean;
  signal \#x_case_scrut_2\                : boolean;
  signal \#x_case_alt_10\                 : chip8_types.cpuout;
  signal \#x_case_scrut_3\                : boolean;
  signal \#x_case_alt_11\                 : chip8_types.cpuout;
  signal \#x_case_scrut_4\                : boolean;
  signal \#x_case_alt_12\                 : chip8_types.cpuout;
  signal \#decodeOut\                     : std_logic_vector(17 downto 0);
  signal ds22                             : unsigned(11 downto 0);
  signal ds4_2                            : std_logic;
  signal xy1                              : unsigned(4 downto 0);
  signal xy_0                             : unsigned(5 downto 0);
  signal xy1_0                            : unsigned(4 downto 0);
  signal xy_1                             : unsigned(5 downto 0);
  signal \#m1_app_arg_1\                  : unsigned(11 downto 0);
  signal x_0                              : unsigned(5 downto 0);
  signal y                                : unsigned(4 downto 0);
  signal ds                               : unsigned(7 downto 0);
  signal ds_0                             : unsigned(7 downto 0);
  signal ds1                              : unsigned(7 downto 0);
  signal ds2                              : unsigned(11 downto 0);
  signal ds4_3                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds5_0                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds6                              : unsigned(4 downto 0);
  signal ds8                              : unsigned(7 downto 0);
  signal \#s''_app_arg\                   : unsigned(11 downto 0);
  signal result_11                        : chip8_types.cpustate;
  signal result_12                        : chip8_types.cpustate;
  signal \#s''_2\                         : chip8_types.cpustate;
  signal \#s''_case_alt_1\                : chip8_types.cpustate;
  signal xy_2                             : chip8_types.tup2_2;
  signal col                              : unsigned(2 downto 0);
  signal \#m1_app_arg_2\                  : signed(63 downto 0);
  signal \#val_app_arg\                   : signed(63 downto 0);
  signal \#addr_app_arg_1\                : signed(63 downto 0);
  signal ds_1                             : unsigned(7 downto 0);
  signal ds1_0                            : unsigned(7 downto 0);
  signal ds2_0                            : unsigned(11 downto 0);
  signal ds4_4                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds5_1                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds6_0                            : unsigned(4 downto 0);
  signal ds8_0                            : unsigned(7 downto 0);
  signal \#ph_case_alt_0\                 : std_logic_vector(21 downto 0);
  signal ds19                             : unsigned(7 downto 0);
  signal ds23                             : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds24                             : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds25                             : unsigned(4 downto 0);
  signal ds27                             : unsigned(7 downto 0);
  signal y_0                              : unsigned(4 downto 0);
  signal b                                : std_logic;
  signal s1_0                             : chip8_types.cpustate;
  signal s1_1                             : chip8_types.cpustate;
  signal x_1                              : unsigned(5 downto 0);
  signal eta_0                            : chip8_types.cpustate;
  signal eta_1                            : chip8_types.cpustate;
  signal result_13                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_14                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds10_0                           : unsigned(7 downto 0);
  signal ds11_0                           : unsigned(11 downto 0);
  signal ds12_0                           : unsigned(11 downto 0);
  signal ds16                             : std_logic_vector(21 downto 0);
  signal ds5_2                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds5_3                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal \s'\                             : chip8_types.cpustate;
  signal \skipWhen\                       : boolean;
  signal \#skipWhen_0\                    : boolean;
  signal \skipIfPressed\                  : boolean;
  signal \#x_app_arg\                     : signed(63 downto 0);
  signal \#x_app_arg_0\                   : signed(63 downto 0);
  signal \#x_app_arg_1\                   : signed(63 downto 0);
  signal \#x_app_arg_2\                   : signed(63 downto 0);
  signal \#decodeOut_app_arg\             : unsigned(7 downto 0);
  signal ds3_3                            : chip8_types.array_of_boolean(0 to 15);
  signal x_2                              : unsigned(5 downto 0);
  signal y_1                              : unsigned(4 downto 0);
  signal \#xy1_app_arg\                   : unsigned(4 downto 0);
  signal x_3                              : unsigned(5 downto 0);
  signal y_2                              : unsigned(4 downto 0);
  signal result_15                        : chip8_types.tup2_0;
  signal \#s''_3\                         : chip8_types.cpustate;
  signal \#s''_4\                         : chip8_types.cpustate;
  signal \#s''_5\                         : chip8_types.cpustate;
  signal \#s''_6\                         : chip8_types.cpustate;
  signal \#s''_7\                         : chip8_types.cpustate;
  signal \#s''_8\                         : chip8_types.cpustate;
  signal \#s''_9\                         : chip8_types.cpustate;
  signal \#s''_10\                        : chip8_types.cpustate;
  signal \#s''_11\                        : chip8_types.cpustate;
  signal \#s''_12\                        : chip8_types.cpustate;
  signal \#s''_13\                        : chip8_types.cpustate;
  signal \#s''_14\                        : chip8_types.cpustate;
  signal \#s''_15\                        : chip8_types.cpustate;
  signal wild5_0                          : std_logic_vector(17 downto 0);
  signal \#s''_16\                        : chip8_types.cpustate;
  signal \#s''_17\                        : chip8_types.cpustate;
  signal \#s''_18\                        : chip8_types.cpustate;
  signal \#s''_19\                        : chip8_types.cpustate;
  signal \#s''_20\                        : chip8_types.cpustate;
  signal \#s''_21\                        : chip8_types.cpustate;
  signal \#s''_22\                        : chip8_types.cpustate;
  signal \#s''_23\                        : chip8_types.cpustate;
  signal \#s''_24\                        : chip8_types.cpustate;
  signal \#s''_25\                        : chip8_types.cpustate;
  signal \#s''_26\                        : chip8_types.cpustate;
  signal \#s''_27\                        : chip8_types.cpustate;
  signal \#s''_28\                        : chip8_types.cpustate;
  signal \regMax\                         : unsigned(3 downto 0);
  signal \x#\                             : unsigned(63 downto 0);
  signal \#x#_0\                          : unsigned(63 downto 0);
  signal \#s''_case_alt_2\                : chip8_types.cpustate;
  signal \#s''_case_alt_3\                : chip8_types.cpustate;
  signal result_16                        : chip8_types.cpustate;
  signal \#s''_case_alt_4\                : chip8_types.cpustate;
  signal \#s''_case_alt_5\                : chip8_types.cpustate;
  signal \#s''_case_alt_6\                : chip8_types.cpustate;
  signal result_17                        : chip8_types.cpustate;
  signal \#s''_case_alt_7\                : chip8_types.cpustate;
  signal \#s''_app_arg_0\                 : std_logic_vector(21 downto 0);
  signal \#regMax_0\                      : unsigned(3 downto 0);
  signal \#eta_app_arg\                   : chip8_types.array_of_unsigned_8(0 to 15);
  signal row_0                            : unsigned(3 downto 0);
  signal wild1_0                          : signed(63 downto 0);
  signal eta_2                            : unsigned(11 downto 0);
  signal result_18                        : unsigned(11 downto 0);
  signal \sp'\                            : unsigned(4 downto 0);
  signal ds2_1                            : unsigned(11 downto 0);
  signal result_19                        : unsigned(11 downto 0);
  signal \#sp'_0\                         : unsigned(4 downto 0);
  signal ds2_2                            : unsigned(11 downto 0);
  signal result_20                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds_2                             : unsigned(7 downto 0);
  signal ds1_1                            : unsigned(7 downto 0);
  signal ds2_3                            : unsigned(11 downto 0);
  signal ds4_5                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds5_4                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds6_1                            : unsigned(4 downto 0);
  signal ds8_1                            : unsigned(7 downto 0);
  signal \#regMax_1\                      : unsigned(3 downto 0);
  signal ds_3                             : unsigned(7 downto 0);
  signal ds1_2                            : unsigned(7 downto 0);
  signal ds2_4                            : unsigned(11 downto 0);
  signal ds4_6                            : chip8_types.array_of_unsigned_8(0 to 15);
  signal ds5_5                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds6_2                            : unsigned(4 downto 0);
  signal ds8_2                            : unsigned(7 downto 0);
  signal ds1_3                            : chip8_types.tup2_2;
  signal row_1                            : unsigned(3 downto 0);
  signal ds1_4                            : chip8_types.tup2_2;
  signal \#s'_app_arg\                    : chip8_types.array_of_unsigned_8(0 to 15);
  signal wild1_1                          : signed(63 downto 0);
  signal \#eta_app_arg_0\                 : chip8_types.array_of_unsigned_8(0 to 15);
  signal \#karg_app_arg\                  : signed(63 downto 0);
  signal \#x#_1\                          : unsigned(63 downto 0);
  signal ds1_5                            : unsigned(7 downto 0);
  signal ds2_5                            : unsigned(7 downto 0);
  signal ds6_3                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds7                              : unsigned(4 downto 0);
  signal ds9_0                            : unsigned(7 downto 0);
  signal ds1_6                            : unsigned(7 downto 0);
  signal ds2_6                            : unsigned(7 downto 0);
  signal ds6_4                            : chip8_types.array_of_unsigned_12(0 to 23);
  signal ds7_0                            : unsigned(4 downto 0);
  signal ds9_1                            : unsigned(7 downto 0);
  signal \#s'_case_alt\                   : unsigned(7 downto 0);
  signal x_4                              : unsigned(63 downto 0);
  signal y_3                              : unsigned(63 downto 0);
  signal x_5                              : unsigned(63 downto 0);
  signal y_4                              : unsigned(63 downto 0);
  signal x_6                              : unsigned(63 downto 0);
  signal y_5                              : unsigned(63 downto 0);
  signal x_7                              : unsigned(63 downto 0);
  signal ds1_7                            : chip8_types.tup2_2;
  signal ds1_8                            : chip8_types.tup2_2;
  signal result_21                        : chip8_types.array_of_unsigned_12(0 to 23);
  signal \#s''_app_arg_1\                 : unsigned(4 downto 0);
  signal result_22                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_23                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_24                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_25                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_26                        : unsigned(7 downto 0);
  signal addr                             : unsigned(11 downto 0);
  signal addr_0                           : unsigned(11 downto 0);
  signal addr_1                           : unsigned(11 downto 0);
  signal result_27                        : chip8_types.array_of_unsigned_12(0 to 23);
  signal \#s''_app_arg_2\                 : unsigned(4 downto 0);
  signal result_28                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_29                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_30                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_31                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_32                        : unsigned(7 downto 0);
  signal \#decodeOut_0\                   : std_logic_vector(17 downto 0);
  signal x_8                              : unsigned(63 downto 0);
  signal \#x_case_scrut_5\                : unsigned(7 downto 0);
  signal \#x_case_scrut_6\                : unsigned(7 downto 0);
  signal \#s''_case_scrut_0\              : boolean;
  signal \#s''_case_alt_8\                : chip8_types.cpustate;
  signal \#s''_case_alt_9\                : chip8_types.cpustate;
  signal \#s''_case_scrut_1\              : boolean;
  signal \#s''_case_alt_10\               : chip8_types.cpustate;
  signal \#s''_case_alt_11\               : chip8_types.cpustate;
  signal \#s''_29\                        : chip8_types.cpustate;
  signal \#s''_30\                        : chip8_types.cpustate;
  signal carry_0                          : std_logic_vector(8 downto 0);
  signal \#s''_case_scrut_2\              : boolean;
  signal \#s''_case_alt_12\               : chip8_types.cpustate;
  signal \#s''_case_alt_13\               : chip8_types.cpustate;
  signal addr_2                           : unsigned(11 downto 0);
  signal \regX\                           : unsigned(3 downto 0);
  signal \#regMax_2\                      : unsigned(3 downto 0);
  signal \#s''_case_scrut_3\              : boolean;
  signal \#s''_case_alt_14\               : chip8_types.cpustate;
  signal \#s''_case_alt_15\               : chip8_types.cpustate;
  signal \#s''_case_scrut_4\              : boolean;
  signal \#s''_case_alt_16\               : chip8_types.cpustate;
  signal \#s''_case_alt_17\               : chip8_types.cpustate;
  signal \#s''_31\                        : chip8_types.cpustate;
  signal \#s''_32\                        : chip8_types.cpustate;
  signal \#s''_case_scrut_5\              : boolean;
  signal \#s''_case_alt_18\               : chip8_types.cpustate;
  signal \#s''_case_alt_19\               : chip8_types.cpustate;
  signal \#decodeOut_app_arg_0\           : unsigned(7 downto 0);
  signal \#s''_case_alt_20\               : std_logic_vector(21 downto 0);
  signal height                           : unsigned(3 downto 0);
  signal \#tupIn\                         : chip8_types.tup3;
  signal wild1_2                          : signed(63 downto 0);
  signal \#x#_2\                          : unsigned(63 downto 0);
  signal \#x#_3\                          : unsigned(63 downto 0);
  signal wild1_3                          : signed(63 downto 0);
  signal \#x#_4\                          : unsigned(63 downto 0);
  signal \#x#_5\                          : unsigned(63 downto 0);
  signal wild1_4                          : signed(63 downto 0);
  signal height_0                         : unsigned(3 downto 0);
  signal b1                               : std_logic_vector(3 downto 0);
  signal b1_0                             : std_logic_vector(3 downto 0);
  signal wild1_5                          : signed(63 downto 0);
  signal wild                             : unsigned(63 downto 0);
  signal \#x#_6\                          : unsigned(63 downto 0);
  signal \#x#_7\                          : unsigned(63 downto 0);
  signal \#x#_8\                          : unsigned(63 downto 0);
  signal \#x#_9\                          : unsigned(63 downto 0);
  signal imm                              : unsigned(7 downto 0);
  signal \#x_case_scrut_7\                : unsigned(7 downto 0);
  signal \#x_case_scrut_8\                : unsigned(7 downto 0);
  signal \#x_case_scrut_9\                : unsigned(7 downto 0);
  signal \#x_case_scrut_10\               : unsigned(7 downto 0);
  signal \#x_case_scrut_11\               : unsigned(7 downto 0);
  signal \#x_case_scrut_12\               : unsigned(7 downto 0);
  signal imm_0                            : unsigned(7 downto 0);
  signal mask                             : unsigned(7 downto 0);
  signal \#s''_app_arg_3\                 : signed(63 downto 0);
  signal \#s''_app_arg_4\                 : signed(63 downto 0);
  signal \#s''_app_arg_5\                 : signed(63 downto 0);
  signal \#s''_app_arg_6\                 : signed(63 downto 0);
  signal \#s''_app_arg_7\                 : signed(63 downto 0);
  signal \#x_app_arg_3\                   : signed(63 downto 0);
  signal wild1_6                          : signed(63 downto 0);
  signal \#s''_app_arg_8\                 : signed(63 downto 0);
  signal \#s''_app_arg_9\                 : signed(63 downto 0);
  signal \#s''_app_arg_10\                : chip8_types.array_of_unsigned_8(0 to 15);
  signal \#skipWhen_1\                    : boolean;
  signal \#skipWhen_2\                    : boolean;
  signal \#skipIfPressed_0\               : boolean;
  signal wild1_7                          : signed(63 downto 0);
  signal \#s''_app_arg_11\                : signed(63 downto 0);
  signal \#s''_app_arg_12\                : signed(63 downto 0);
  signal \#s''_app_arg_13\                : chip8_types.array_of_unsigned_8(0 to 15);
  signal \#x#_10\                         : unsigned(63 downto 0);
  signal \#x#_11\                         : unsigned(63 downto 0);
  signal \#x#_12\                         : unsigned(63 downto 0);
  signal \#x#_13\                         : unsigned(63 downto 0);
  signal \#tupIn_case_alt\                : chip8_types.tup3;
  signal result_33                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_34                        : chip8_types.array_of_unsigned_8(0 to 15);
  signal result_35                        : chip8_types.tup2_0;
  signal \#x#_14\                         : unsigned(63 downto 0);
  signal \#s''_case_scrut_6\              : unsigned(7 downto 0);
  signal \#x#_15\                         : unsigned(63 downto 0);
  signal \#s''_case_scrut_7\              : unsigned(7 downto 0);
  signal \y#\                             : unsigned(63 downto 0);
  signal \#x#_16\                         : unsigned(63 downto 0);
  signal \#s''_case_scrut_8\              : unsigned(7 downto 0);
  signal \#x#_17\                         : unsigned(63 downto 0);
  signal \#s''_case_scrut_9\              : unsigned(7 downto 0);
  signal addr_3                           : unsigned(11 downto 0);
  signal ds8_3                            : std_logic_vector(21 downto 0);
  signal ds8_4                            : std_logic_vector(21 downto 0);
  signal reg_0                            : unsigned(3 downto 0);
  signal ds4_7                            : chip8_types.tup2;
  signal ds4_8                            : chip8_types.tup2;
  signal \#ds1_case_scrut\                : unsigned(7 downto 0);
  signal \#ds1_case_scrut_0\              : unsigned(7 downto 0);
  signal \#ds1_case_scrut_1\              : unsigned(7 downto 0);
  signal \#ds1_case_scrut_2\              : unsigned(7 downto 0);
  signal key                              : unsigned(3 downto 0);
  signal \#x_app_arg_4\                   : signed(63 downto 0);
  signal \#x_app_arg_5\                   : signed(63 downto 0);
  signal \#x_app_arg_6\                   : signed(63 downto 0);
  signal wild1_8                          : signed(63 downto 0);
  signal wild1_9                          : signed(63 downto 0);
  signal wild1_10                         : signed(63 downto 0);
  signal wild1_11                         : signed(63 downto 0);
  signal wild1_12                         : signed(63 downto 0);
  signal wild1_13                         : signed(63 downto 0);
  signal x_9                              : unsigned(63 downto 0);
  signal y_6                              : unsigned(63 downto 0);
  signal x_10                             : unsigned(63 downto 0);
  signal x_11                             : unsigned(7 downto 0);
  signal y_7                              : unsigned(63 downto 0);
  signal x_12                             : unsigned(63 downto 0);
  signal y_8                              : unsigned(63 downto 0);
  signal x_13                             : unsigned(63 downto 0);
  signal \#ds1_case_scrut_3\              : unsigned(7 downto 0);
  signal \#ds1_case_scrut_4\              : unsigned(7 downto 0);
  signal \#ds1_case_scrut_5\              : unsigned(7 downto 0);
  signal \#ds1_case_scrut_6\              : unsigned(7 downto 0);
  signal \x'\                             : unsigned(7 downto 0);
  signal result_36                        : unsigned(7 downto 0);
  signal result_37                        : unsigned(7 downto 0);
  signal result_38                        : unsigned(7 downto 0);
  signal result_39                        : unsigned(7 downto 0);
  signal fun                              : std_logic_vector(3 downto 0);
  signal \#s''_case_scrut_10\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_11\             : unsigned(7 downto 0);
  signal imm_1                            : unsigned(7 downto 0);
  signal \#s''_case_scrut_12\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_13\             : unsigned(7 downto 0);
  signal \#s''_app_arg_14\                : signed(63 downto 0);
  signal \#tupIn_0\                       : chip8_types.tup3;
  signal \#ds1_app_arg\                   : signed(63 downto 0);
  signal \#ds1_app_arg_0\                 : signed(63 downto 0);
  signal \#x#_18\                         : unsigned(63 downto 0);
  signal \#x#_19\                         : unsigned(63 downto 0);
  signal \#tupIn_app_arg\                 : signed(63 downto 0);
  signal wild1_14                         : signed(63 downto 0);
  signal wild7                            : signed(63 downto 0);
  signal wild1_15                         : signed(63 downto 0);
  signal \#s''_case_scrut_14\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_15\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_16\             : unsigned(7 downto 0);
  signal imm_2                            : unsigned(7 downto 0);
  signal \#regX_0\                        : unsigned(3 downto 0);
  signal \#regX_1\                        : unsigned(3 downto 0);
  signal \#regX_2\                        : unsigned(3 downto 0);
  signal \#regX_3\                        : unsigned(3 downto 0);
  signal \#regX_4\                        : unsigned(3 downto 0);
  signal \#s''_case_scrut_17\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_18\             : unsigned(7 downto 0);
  signal \#s''_case_scrut_19\             : unsigned(7 downto 0);
  signal \#regX_5\                        : unsigned(3 downto 0);
  signal \#ds1_app_arg_1\                 : signed(63 downto 0);
  signal \#ds1_app_arg_2\                 : signed(63 downto 0);
  signal \#tupIn_app_arg_0\               : signed(63 downto 0);
  signal \#tupIn_app_arg_1\               : signed(63 downto 0);
  signal \#s''_app_arg_15\                : signed(63 downto 0);
  signal wild1_16                         : signed(63 downto 0);
  signal result_40                        : unsigned(7 downto 0);
  signal result_41                        : unsigned(7 downto 0);
  signal result_42                        : unsigned(7 downto 0);
  signal result_43                        : unsigned(7 downto 0);
  signal fun_0                            : std_logic_vector(3 downto 0);
  signal wild1_17                         : signed(63 downto 0);
  signal wild1_18                         : signed(63 downto 0);
  signal wild1_19                         : signed(63 downto 0);
  signal result_44                        : unsigned(7 downto 0);
  signal result_45                        : unsigned(7 downto 0);
  signal \#regX_6\                        : unsigned(3 downto 0);
  signal \#regX_7\                        : unsigned(3 downto 0);
  signal \regY\                           : unsigned(3 downto 0);
  signal \#s''_app_arg_16\                : signed(63 downto 0);
  signal \#s''_app_arg_17\                : signed(63 downto 0);
  signal \#s''_app_arg_18\                : signed(63 downto 0);
  signal wild1_20                         : signed(63 downto 0);
  signal wild1_21                         : signed(63 downto 0);
  signal wild1_22                         : signed(63 downto 0);
  signal wild1_23                         : signed(63 downto 0);
  signal \#regX_8\                        : unsigned(3 downto 0);
  signal wild1_24                         : signed(63 downto 0);
  signal \#regX_9\                        : unsigned(3 downto 0);
  signal \#tupIn_app_arg_2\               : signed(63 downto 0);
  signal \#regX_10\                       : unsigned(3 downto 0);
  signal \#regY_0\                        : unsigned(3 downto 0);
  signal \#x_app_arg_7\                   : signed(63 downto 0);
  signal wild1_25                         : signed(63 downto 0);
  signal wild7_0                          : signed(63 downto 0);
  signal wild1_26                         : signed(63 downto 0);
  signal \#regX_11\                       : unsigned(3 downto 0);
  signal \#regY_1\                        : unsigned(3 downto 0);
  signal \#regX_12\                       : unsigned(3 downto 0);
  signal \#regY_2\                        : unsigned(3 downto 0);
  signal \#regX_13\                       : unsigned(3 downto 0);
  signal wild1_27                         : signed(63 downto 0);
  signal wild1_28                         : signed(63 downto 0);
  signal \#regX_14\                       : unsigned(3 downto 0);
  signal \#regX_15\                       : unsigned(3 downto 0);
  signal \#regY_3\                        : unsigned(3 downto 0);
  signal \#regY_4\                        : unsigned(3 downto 0);
  signal \#regX_16\                       : unsigned(3 downto 0);
  signal \#ph_case_alt_selection_res\     : boolean;
  signal \#ph_case_alt_0_selection_res\   : boolean;
  signal \#bv\                            : std_logic_vector(7 downto 0);
  signal \#w\                             : unsigned(63 downto 0);
  signal \#s''_app_arg_1_selection_res\   : boolean;
  signal \#w_0\                           : unsigned(63 downto 0);
  signal \#s''_app_arg_2_selection_res\   : boolean;
  signal \#w_1\                           : unsigned(63 downto 0);
  signal \#s''_case_alt_20_selection_res\ : boolean;
  signal \#bv_0\                          : std_logic_vector(7 downto 0);
  signal \#bv_1\                          : std_logic_vector(7 downto 0);
begin
  result <= x when ds5 else
            x;

  with (ds14(21 downto 19)) select
    x <= ( cpuout_sel0 => ds3
         , cpuout_sel1 => std_logic_vector'("0" & "--------")
         , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
         , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
         , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "000",
         ( cpuout_sel0 => ds3
         , cpuout_sel1 => std_logic_vector'("0" & "--------")
         , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
         , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
         , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "001",
         \#x_case_alt\ when "010",
         \#x_case_alt_0\ when "011",
         result_0 when "100",
         ( cpuout_sel0 => ds3
         , cpuout_sel1 => std_logic_vector'("0" & "--------")
         , cpuout_sel2 => xy
         , cpuout_sel3 => std_logic_vector'("1" & (chip8_types.toSLV('0'))) ) when "101",
         result_1 when "110",
         \#x_case_alt_1\ when others;

  ds5 <= i1.cpuin_sel4;

  with (r_0) select
    result_0 <= ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when x"0",
                ( cpuout_sel0 => ds3_0 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(resize(\reg'\,64)))))),12))
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when others;

  with (dp) select
    result_1 <= ( cpuout_sel0 => ds12 + (resize(unsigned(std_logic_vector(\#m1_app_arg\)),12))
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => m3
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "0",
                result_4 when others;

  \#x_case_alt\ <= result_3 when ds5 else
                   result_2;

  with (r) select
    \#x_case_alt_0\ <= ( cpuout_sel0 => ds3
                       , cpuout_sel1 => std_logic_vector'("0" & "--------")
                       , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                       , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                       , cpuout_sel3 => std_logic_vector'("0" & "-") ) when x"0",
                       ( cpuout_sel0 => ds12 + (resize(unsigned(std_logic_vector(\#addr_app_arg\)),12))
                       , cpuout_sel1 => std_logic_vector'("1" & (std_logic_vector(result_5)))
                       , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                       , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                       , cpuout_sel3 => std_logic_vector'("0" & "-") ) when others;

  with (ds4(5 downto 5)) select
    \#x_case_alt_1\ <= ( cpuout_sel0 => ds3
                       , cpuout_sel1 => std_logic_vector'("0" & "--------")
                       , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                       , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                       , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "0",
                       \#x_case_alt_2\ when others;

  ds14 <= s1.cpustate_sel7;

  xy <= ( tup2_2_sel0 => unsigned(ds14(18 downto 13))
        , tup2_2_sel1 => unsigned(ds14(12 downto 8)) );

  ds3 <= \s''\.cpustate_sel2;

  r <= unsigned(ds14(18 downto 15));

  r_0 <= unsigned(ds14(18 downto 15));

  dp <= ds14(18 downto 18);

  with (wild5(17 downto 13)) select
    result_2 <= ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("1" & (chip8_types.toSLV('0'))) ) when "00000",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00100",
                \#x_case_alt_3\ when "00101",
                \#x_case_alt_4\ when "00110",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00111",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01000",
                \#x_case_alt_8\ when "01001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01010",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01100",
                ( cpuout_sel0 => ds3_1 + \#m1_app_arg_0\
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => xy2
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01101",
                \#x_case_alt_5\ when "01110",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01111",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10000",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10100",
                ( cpuout_sel0 => ds4_0 + \#addr_app_arg_0\
                , cpuout_sel1 => std_logic_vector'("1" & (std_logic_vector(result_9)))
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10110",
                ( cpuout_sel0 => m1
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10111",
                chip8_types.cpuout'( unsigned'(0 to 11 => '-'), std_logic_vector'(0 to 8 => '-'), chip8_types.tup2_2'( unsigned'(0 to 5 => '-'), unsigned'(0 to 4 => '-') ), std_logic_vector'(0 to 1 => '-') ) when others;

  with (wild5(17 downto 13)) select
    result_3 <= ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("1" & (chip8_types.toSLV('0'))) ) when "00000",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00100",
                \#x_case_alt_6\ when "00101",
                \#x_case_alt_7\ when "00110",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "00111",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01000",
                \#x_case_alt_8\ when "01001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01010",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01100",
                ( cpuout_sel0 => ds3_2 + \#m1_app_arg_0\
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => xy2_0
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01101",
                \#x_case_alt_9\ when "01110",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "01111",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10000",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10001",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10011",
                ( cpuout_sel0 => ds3
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10100",
                ( cpuout_sel0 => ds4_1 + \#addr_app_arg_0\
                , cpuout_sel1 => std_logic_vector'("1" & (std_logic_vector(result_10)))
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10110",
                ( cpuout_sel0 => m1_0
                , cpuout_sel1 => std_logic_vector'("0" & "--------")
                , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "10111",
                chip8_types.cpuout'( unsigned'(0 to 11 => '-'), std_logic_vector'(0 to 8 => '-'), chip8_types.tup2_2'( unsigned'(0 to 5 => '-'), unsigned'(0 to 4 => '-') ), std_logic_vector'(0 to 1 => '-') ) when others;

  result_4 <= ( cpuout_sel0 => ds3
              , cpuout_sel1 => std_logic_vector'("0" & "--------")
              , cpuout_sel2 => m3
              , cpuout_sel3 => std_logic_vector'("1" & (chip8_types.toSLV(m4))) ) when \#s''_case_scrut\ else
              ( cpuout_sel0 => ds3
              , cpuout_sel1 => std_logic_vector'("0" & "--------")
              , cpuout_sel2 => m3
              , cpuout_sel3 => std_logic_vector'("1" & (chip8_types.toSLV(m4))) );

  \#x_case_alt_2\ <= ( cpuout_sel0 => ds3
                     , cpuout_sel1 => std_logic_vector'("0" & "--------")
                     , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                     , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                     , cpuout_sel3 => std_logic_vector'("0" & "-") ) when pressed else
                     ( cpuout_sel0 => ds3
                     , cpuout_sel1 => std_logic_vector'("0" & "--------")
                     , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                     , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                     , cpuout_sel3 => std_logic_vector'("0" & "-") );

  ds4 <= i1.cpuin_sel3;

  with (ds14(21 downto 19)) select
    \s''\ <= \#s''_1\ when "000",
             \#s''_0\ when "001",
             result_7 when "010",
             \#s''_case_alt\ when "011",
             result_8 when "100",
             ( cpustate_sel0 => ds9
             , cpustate_sel1 => ds10
             , cpustate_sel2 => ds11
             , cpustate_sel3 => ds12
             , cpustate_sel4 => ds13
             , cpustate_sel5 => ds14_0
             , cpustate_sel6 => ds15
             , cpustate_sel7 => \#ph_case_alt\
             , cpustate_sel8 => ds17 ) when "101",
             result_6 when "110",
             \#s''_case_alt_0\ when others;

  -- register begin 
  clash_explicit_mealy_mealy_register : process(clk,rst)
  begin
    if rst = '1' then
      s1 <= ( cpustate_sel0 => resize(to_unsigned(0,64),8), cpustate_sel1 => resize(to_unsigned(0,64),8), cpustate_sel2 => to_unsigned(512,12), cpustate_sel3 => to_unsigned(0,12), cpustate_sel4 => chip8_types.array_of_unsigned_8'(0 to 16-1 =>  (resize(to_unsigned(0,64),8)) ), cpustate_sel5 => chip8_types.array_of_unsigned_12'(0 to 24-1 =>  to_unsigned(0,12) ), cpustate_sel6 => to_unsigned(0,5), cpustate_sel7 => std_logic_vector'("000" & "-------------------"), cpustate_sel8 => resize(to_unsigned(0,64),8) )
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(clk) then
      s1 <= \s''\
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  -- index begin
  indexvec : block
    signal vec_index : integer range 0 to 16-1;
  begin
    vec_index <= to_integer((wild1))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_5 <= ds13(vec_index);
  end block;
  -- index end

  m3 <= (tup2_2_sel0 => m1_1, tup2_2_sel1 => m2);

  \#addr_app_arg\ <= signed(std_logic_vector(resize(reg,64)));

  \#m1_app_arg\ <= signed(std_logic_vector(resize(row,64)));

  \reg'\ <= r_0 - to_unsigned(1,4);

  ds3_0 <= karg.cpustate_sel3;

  ds12 <= eta.cpustate_sel3;

  wild5 <= \#decodeOut\;

  \#x_case_alt_3\ <= \#x_case_alt_10\ when \#x_case_scrut\ else
                     \#x_case_alt_10\;

  \#x_case_alt_4\ <= \#x_case_alt_11\ when \#x_case_scrut_0\ else
                     \#x_case_alt_11\;

  \#x_case_alt_5\ <= \#x_case_alt_12\ when \#x_case_scrut_1\ else
                     \#x_case_alt_12\;

  \#x_case_alt_6\ <= \#x_case_alt_10\ when \#x_case_scrut_2\ else
                     \#x_case_alt_10\;

  \#x_case_alt_7\ <= \#x_case_alt_11\ when \#x_case_scrut_3\ else
                     \#x_case_alt_11\;

  with (carry(8 downto 8)) select
    \#x_case_alt_8\ <= ( cpuout_sel0 => ds3
                       , cpuout_sel1 => std_logic_vector'("0" & "--------")
                       , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                       , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                       , cpuout_sel3 => std_logic_vector'("0" & "-") ) when "0",
                       ( cpuout_sel0 => ds3
                       , cpuout_sel1 => std_logic_vector'("0" & "--------")
                       , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                       , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                       , cpuout_sel3 => std_logic_vector'("0" & "-") ) when others;

  \#x_case_alt_9\ <= \#x_case_alt_12\ when \#x_case_scrut_4\ else
                     \#x_case_alt_12\;

  \#s''_0\ <= ( cpustate_sel0 => ds
              , cpustate_sel1 => ds10_0
              , cpustate_sel2 => \#s''_app_arg\
              , cpustate_sel3 => ds12_0
              , cpustate_sel4 => ds23
              , cpustate_sel5 => ds24
              , cpustate_sel6 => ds25
              , cpustate_sel7 => std_logic_vector'("010" & "-------------------")
              , cpustate_sel8 => ds27 ) when ds5 else
              ( cpustate_sel0 => ds
              , cpustate_sel1 => ds1
              , cpustate_sel2 => \#s''_app_arg\
              , cpustate_sel3 => ds22
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("010" & "-------------------")
              , cpustate_sel8 => ds8 );

  with (dp) select
    result_6 <= ( cpustate_sel0 => ds9
                , cpustate_sel1 => ds10
                , cpustate_sel2 => ds11
                , cpustate_sel3 => ds12
                , cpustate_sel4 => ds13
                , cpustate_sel5 => ds14_0
                , cpustate_sel6 => ds15
                , cpustate_sel7 => std_logic_vector'("110" & ("1") & ((std_logic_vector(xy_2.tup2_2_sel0)
                 & std_logic_vector(xy_2.tup2_2_sel1))) & (std_logic_vector(row)) & (std_logic_vector(col)))
                , cpustate_sel8 => ds17 ) when "0",
                \#s''_2\ when others;

  with (r) select
    \#s''_case_alt\ <= \#s''_1\ when x"0",
                       ( cpustate_sel0 => ds9
                       , cpustate_sel1 => ds10
                       , cpustate_sel2 => ds11
                       , cpustate_sel3 => ds12
                       , cpustate_sel4 => ds13
                       , cpustate_sel5 => ds14_0
                       , cpustate_sel6 => ds15
                       , cpustate_sel7 => std_logic_vector'("011" & (std_logic_vector(reg)) & "---------------")
                       , cpustate_sel8 => ds17 ) when others;

  with (ds4(5 downto 5)) select
    \#s''_case_alt_0\ <= eta when "0",
                         \#s''_case_alt_1\ when others;

  xy2 <= ( tup2_2_sel0 => xy_0
         , tup2_2_sel1 => xy1 );

  m1 <= ds22 + \#m1_app_arg_1\;

  xy2_0 <= ( tup2_2_sel0 => xy_1
           , tup2_2_sel1 => xy1_0 );

  m1_0 <= ds12_0 + \#m1_app_arg_1\;

  result_7 <= result_12 when ds5 else
              result_11;

  \#s''_1\ <= ( cpustate_sel0 => ds19
              , cpustate_sel1 => ds10_0
              , cpustate_sel2 => ds11_0
              , cpustate_sel3 => ds12_0
              , cpustate_sel4 => ds23
              , cpustate_sel5 => ds24
              , cpustate_sel6 => ds25
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds27 ) when ds5 else
              ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds1
              , cpustate_sel2 => ds2
              , cpustate_sel3 => ds22
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  with (r_0) select
    result_8 <= ( cpustate_sel0 => ds_1
                , cpustate_sel1 => ds1_0
                , cpustate_sel2 => ds2_0
                , cpustate_sel3 => ds3_0
                , cpustate_sel4 => ds4_4
                , cpustate_sel5 => ds5_1
                , cpustate_sel6 => ds6_0
                , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
                , cpustate_sel8 => ds8_0 ) when x"0",
                ( cpustate_sel0 => ds_1
                , cpustate_sel1 => ds1_0
                , cpustate_sel2 => ds2_0
                , cpustate_sel3 => ds3_0
                , cpustate_sel4 => ds4_4
                , cpustate_sel5 => ds5_1
                , cpustate_sel6 => ds6_0
                , cpustate_sel7 => std_logic_vector'("100" & (std_logic_vector(\reg'\)) & "---------------")
                , cpustate_sel8 => ds8_0 ) when others;

  m4 <= ds4_2 xor b;

  -- index begin
  indexvec_0 : block
    signal vec_index_0 : integer range 0 to 16-1;
  begin
    vec_index_0 <= to_integer(\#val_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_9 <= ds5_2(vec_index_0);
  end block;
  -- index end

  \#m1_app_arg_0\ <= resize(unsigned(std_logic_vector(\#m1_app_arg_2\)),12);

  -- index begin
  indexvec_1 : block
    signal vec_index_1 : integer range 0 to 16-1;
  begin
    vec_index_1 <= to_integer(\#val_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_10 <= ds5_3(vec_index_1);
  end block;
  -- index end

  \#addr_app_arg_0\ <= resize(unsigned(std_logic_vector(\#addr_app_arg_1\)),12);

  m2 <= y + (resize(unsigned(std_logic_vector(\#m1_app_arg\)),5));

  m1_1 <= x_0 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(resize(col,64)))))),6));

  \#ph_case_alt_selection_res\ <= y_0 = to_unsigned(31,5);

  \#ph_case_alt\ <= \#ph_case_alt_0\ when \#ph_case_alt_selection_res\ else
                    std_logic_vector'("101" & ((std_logic_vector(x_1)
                     & std_logic_vector(y_0 + to_unsigned(1,5)))) & "--------");

  \#s''_case_scrut\ <= (ds4_2 and b) = ('1');

  pressed <= x1.tup2_10_sel0;

  reg <= r - to_unsigned(1,4);

  row <= unsigned(ds14(6 downto 3));

  wild1 <= \#addr_app_arg\;

  eta <= \s'\ when ds5 else
         s1;

  karg <= ( cpustate_sel0 => ds19
          , cpustate_sel1 => ds10_0
          , cpustate_sel2 => ds11_0
          , cpustate_sel3 => ds12_0
          , cpustate_sel4 => result_14
          , cpustate_sel5 => ds24
          , cpustate_sel6 => ds25
          , cpustate_sel7 => ds16
          , cpustate_sel8 => ds27 ) when ds5 else
          ( cpustate_sel0 => ds_0
          , cpustate_sel1 => ds1
          , cpustate_sel2 => ds2
          , cpustate_sel3 => ds22
          , cpustate_sel4 => result_13
          , cpustate_sel5 => ds5_0
          , cpustate_sel6 => ds6
          , cpustate_sel7 => ds14
          , cpustate_sel8 => ds8 );

  ds9 <= eta.cpustate_sel0;

  ds10 <= eta.cpustate_sel1;

  ds11 <= eta.cpustate_sel2;

  ds14_0 <= eta.cpustate_sel5;

  ds15 <= eta.cpustate_sel6;

  ds17 <= eta.cpustate_sel8;

  ds3_1 <= eta_0.cpustate_sel3;

  ds3_2 <= eta_1.cpustate_sel3;

  ds13 <= eta.cpustate_sel4;

  ds4_0 <= s1_0.cpustate_sel3;

  ds4_1 <= s1_1.cpustate_sel3;

  carry <= result_15.tup2_0_sel1;

  x1 <= ( tup2_10_sel0 => chip8_types.fromSLV(ds4(4 downto 4))
        , tup2_10_sel1 => unsigned(ds4(3 downto 0)) );

  \#x_case_scrut\ <= tagToEnum(\#x_app_arg\);

  \#x_case_scrut_0\ <= tagToEnum(\#x_app_arg_0\);

  -- index begin
  indexvec_2 : block
    signal vec_index_2 : integer range 0 to 16-1;
  begin
    vec_index_2 <= to_integer(((signed(std_logic_vector(\x#\)))))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_1\ <= ds3_3(vec_index_2);
  end block;
  -- index end

  \#x_case_scrut_2\ <= tagToEnum(\#x_app_arg_1\);

  \#x_case_alt_10\ <= ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") ) when \skipWhen\ else
                      ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") );

  \#x_case_scrut_3\ <= tagToEnum(\#x_app_arg_2\);

  \#x_case_alt_11\ <= ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") ) when \#skipWhen_0\ else
                      ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") );

  -- index begin
  indexvec_3 : block
    signal vec_index_3 : integer range 0 to 16-1;
  begin
    vec_index_3 <= to_integer(((signed(std_logic_vector(\#x#_0\)))))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_4\ <= ds3_3(vec_index_3);
  end block;
  -- index end

  \#x_case_alt_12\ <= ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") ) when \skipIfPressed\ else
                      ( cpuout_sel0 => ds3
                      , cpuout_sel1 => std_logic_vector'("0" & "--------")
                      , cpuout_sel2 => ( tup2_2_sel0 => unsigned'(6-1 downto 0 => '0')
                      , tup2_2_sel1 => unsigned'(5-1 downto 0 => '0') )
                      , cpuout_sel3 => std_logic_vector'("0" & "-") );

  chip8_opcode_decode_decodeout : entity chip8_opcode_decode
    port map
      ( result => \#decodeOut\
      , hi     => \#decodeOut_app_arg\
      , lo     => ds );

  ds22 <= s1.cpustate_sel3;

  ds4_2 <= i1.cpuin_sel1;

  xy1 <= y_1 + \#xy1_app_arg\;

  xy_0 <= x_2 + to_unsigned(7,6);

  xy1_0 <= y_2 + \#xy1_app_arg\;

  xy_1 <= x_3 + to_unsigned(7,6);

  \#m1_app_arg_1\ <= resize(unsigned(std_logic_vector((signed(std_logic_vector(resize(\regMax\,64)))))),12);

  x_0 <= xy_2.tup2_2_sel0;

  y <= xy_2.tup2_2_sel1;

  ds <= i1.cpuin_sel0;

  ds_0 <= s1.cpustate_sel0;

  ds1 <= s1.cpustate_sel1;

  ds2 <= s1.cpustate_sel2;

  ds4_3 <= s1.cpustate_sel4;

  ds5_0 <= s1.cpustate_sel5;

  ds6 <= s1.cpustate_sel6;

  ds8 <= s1.cpustate_sel8;

  \#s''_app_arg\ <= ds2 + to_unsigned(1,12);

  with (wild5_0(17 downto 13)) select
    result_11 <= ( cpustate_sel0 => ds1_5
                 , cpustate_sel1 => ds2_5
                 , cpustate_sel2 => ds2_1
                 , cpustate_sel3 => ds4_0
                 , cpustate_sel4 => ds5_2
                 , cpustate_sel5 => ds6_3
                 , cpustate_sel6 => ds7
                 , cpustate_sel7 => std_logic_vector'("101" & ((std_logic_vector(unsigned'(6-1 downto 0 => '0'))
                  & std_logic_vector(to_unsigned(1,5)))) & "--------")
                 , cpustate_sel8 => ds9_0 ) when "00000",
                 ( cpustate_sel0 => ds_0
                 , cpustate_sel1 => ds
                 , cpustate_sel2 => result_18
                 , cpustate_sel3 => ds22
                 , cpustate_sel4 => ds4_3
                 , cpustate_sel5 => ds5_0
                 , cpustate_sel6 => \sp'\
                 , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
                 , cpustate_sel8 => ds8 ) when "00001",
                 \#s''_3\ when "00011",
                 \#s''_4\ when "00100",
                 \#s''_case_alt_2\ when "00101",
                 \#s''_case_alt_3\ when "00110",
                 \#s''_5\ when "00111",
                 \#s''_6\ when "01000",
                 result_16 when "01001",
                 \#s''_7\ when "01010",
                 \#s''_8\ when "01011",
                 \#s''_9\ when "01100",
                 ( cpustate_sel0 => ds_2
                 , cpustate_sel1 => ds1_1
                 , cpustate_sel2 => ds2_3
                 , cpustate_sel3 => ds3_1
                 , cpustate_sel4 => ds4_5
                 , cpustate_sel5 => ds5_4
                 , cpustate_sel6 => ds6_1
                 , cpustate_sel7 => std_logic_vector'("110" & ("1") & ((std_logic_vector(ds1_3.tup2_2_sel0)
                  & std_logic_vector(ds1_3.tup2_2_sel1))) & (std_logic_vector(row_1)) & (std_logic_vector(to_unsigned(7,3))))
                 , cpustate_sel8 => ds8_1 ) when "01101",
                 \#s''_case_alt_4\ when "01110",
                 \#s''_10\ when "01111",
                 \#s''_11\ when "10000",
                 \#s''_12\ when "10001",
                 \#s''_13\ when "10011",
                 \#s''_14\ when "10100",
                 ( cpustate_sel0 => ds1_5
                 , cpustate_sel1 => ds2_5
                 , cpustate_sel2 => ds2_1
                 , cpustate_sel3 => ds4_0
                 , cpustate_sel4 => ds5_2
                 , cpustate_sel5 => ds6_3
                 , cpustate_sel6 => ds7
                 , cpustate_sel7 => std_logic_vector'("011" & (std_logic_vector(\#regMax_1\)) & "---------------")
                 , cpustate_sel8 => ds9_0 ) when "10110",
                 \#s''_15\ when "10111",
                 chip8_types.cpustate'( unsigned'(0 to 7 => '-'), unsigned'(0 to 7 => '-'), unsigned'(0 to 11 => '-'), unsigned'(0 to 11 => '-'), chip8_types.array_of_unsigned_8'(0 to 15 => unsigned'(0 to 7 => '-')), chip8_types.array_of_unsigned_12'(0 to 23 => unsigned'(0 to 11 => '-')), unsigned'(0 to 4 => '-'), std_logic_vector'(0 to 21 => '-'), unsigned'(0 to 7 => '-') ) when others;

  with (wild5_0(17 downto 13)) select
    result_12 <= ( cpustate_sel0 => ds1_6
                 , cpustate_sel1 => ds2_6
                 , cpustate_sel2 => ds2_2
                 , cpustate_sel3 => ds4_1
                 , cpustate_sel4 => ds5_3
                 , cpustate_sel5 => ds6_4
                 , cpustate_sel6 => ds7_0
                 , cpustate_sel7 => std_logic_vector'("101" & ((std_logic_vector(unsigned'(6-1 downto 0 => '0'))
                  & std_logic_vector(to_unsigned(1,5)))) & "--------")
                 , cpustate_sel8 => ds9_1 ) when "00000",
                 ( cpustate_sel0 => ds19
                 , cpustate_sel1 => ds
                 , cpustate_sel2 => result_19
                 , cpustate_sel3 => ds12_0
                 , cpustate_sel4 => ds23
                 , cpustate_sel5 => ds24
                 , cpustate_sel6 => \#sp'_0\
                 , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
                 , cpustate_sel8 => ds27 ) when "00001",
                 \#s''_16\ when "00011",
                 \#s''_17\ when "00100",
                 \#s''_case_alt_5\ when "00101",
                 \#s''_case_alt_6\ when "00110",
                 \#s''_18\ when "00111",
                 \#s''_19\ when "01000",
                 result_17 when "01001",
                 \#s''_20\ when "01010",
                 \#s''_21\ when "01011",
                 \#s''_22\ when "01100",
                 ( cpustate_sel0 => ds_3
                 , cpustate_sel1 => ds1_2
                 , cpustate_sel2 => ds2_4
                 , cpustate_sel3 => ds3_2
                 , cpustate_sel4 => ds4_6
                 , cpustate_sel5 => ds5_5
                 , cpustate_sel6 => ds6_2
                 , cpustate_sel7 => std_logic_vector'("110" & ("1") & ((std_logic_vector(ds1_4.tup2_2_sel0)
                  & std_logic_vector(ds1_4.tup2_2_sel1))) & (std_logic_vector(row_1)) & (std_logic_vector(to_unsigned(7,3))))
                 , cpustate_sel8 => ds8_2 ) when "01101",
                 \#s''_case_alt_7\ when "01110",
                 \#s''_23\ when "01111",
                 \#s''_24\ when "10000",
                 \#s''_25\ when "10001",
                 \#s''_26\ when "10011",
                 \#s''_27\ when "10100",
                 ( cpustate_sel0 => ds1_6
                 , cpustate_sel1 => ds2_6
                 , cpustate_sel2 => ds2_2
                 , cpustate_sel3 => ds4_1
                 , cpustate_sel4 => ds5_3
                 , cpustate_sel5 => ds6_4
                 , cpustate_sel6 => ds7_0
                 , cpustate_sel7 => std_logic_vector'("011" & (std_logic_vector(\#regMax_1\)) & "---------------")
                 , cpustate_sel8 => ds9_1 ) when "10110",
                 \#s''_28\ when "10111",
                 chip8_types.cpustate'( unsigned'(0 to 7 => '-'), unsigned'(0 to 7 => '-'), unsigned'(0 to 11 => '-'), unsigned'(0 to 11 => '-'), chip8_types.array_of_unsigned_8'(0 to 15 => unsigned'(0 to 7 => '-')), chip8_types.array_of_unsigned_12'(0 to 23 => unsigned'(0 to 11 => '-')), unsigned'(0 to 4 => '-'), std_logic_vector'(0 to 21 => '-'), unsigned'(0 to 7 => '-') ) when others;

  \#s''_2\ <= ( cpustate_sel0 => ds9
              , cpustate_sel1 => ds10
              , cpustate_sel2 => ds11
              , cpustate_sel3 => ds12
              , cpustate_sel4 => \#s'_app_arg\
              , cpustate_sel5 => ds14_0
              , cpustate_sel6 => ds15
              , cpustate_sel7 => \#s''_app_arg_0\
              , cpustate_sel8 => ds17 ) when \#s''_case_scrut\ else
              ( cpustate_sel0 => ds9
              , cpustate_sel1 => ds10
              , cpustate_sel2 => ds11
              , cpustate_sel3 => ds12
              , cpustate_sel4 => ds13
              , cpustate_sel5 => ds14_0
              , cpustate_sel6 => ds15
              , cpustate_sel7 => \#s''_app_arg_0\
              , cpustate_sel8 => ds17 );

  \#s''_case_alt_1\ <= ( cpustate_sel0 => ds9
                       , cpustate_sel1 => ds10
                       , cpustate_sel2 => ds11
                       , cpustate_sel3 => ds12
                       , cpustate_sel4 => result_20
                       , cpustate_sel5 => ds14_0
                       , cpustate_sel6 => ds15
                       , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
                       , cpustate_sel8 => ds17 ) when pressed else
                       eta;

  xy_2 <= ( tup2_2_sel0 => unsigned(ds14(17 downto 12))
          , tup2_2_sel1 => unsigned(ds14(11 downto 7)) );

  col <= unsigned(ds14(2 downto 0));

  \#m1_app_arg_2\ <= signed(std_logic_vector(resize(row_0,64)));

  \#val_app_arg\ <= wild1_0;

  \#addr_app_arg_1\ <= signed(std_logic_vector(resize(\#regMax_0\,64)));

  ds_1 <= karg.cpustate_sel0;

  ds1_0 <= karg.cpustate_sel1;

  ds2_0 <= karg.cpustate_sel2;

  ds4_4 <= karg.cpustate_sel4;

  ds5_1 <= karg.cpustate_sel5;

  ds6_0 <= karg.cpustate_sel6;

  ds8_0 <= karg.cpustate_sel8;

  \#ph_case_alt_0_selection_res\ <= x_1 = to_unsigned(63,6);

  \#ph_case_alt_0\ <= std_logic_vector'("001" & "-------------------") when \#ph_case_alt_0_selection_res\ else
                      std_logic_vector'("101" & ((std_logic_vector(x_1 + to_unsigned(1,6))
                       & std_logic_vector(unsigned'(5-1 downto 0 => '0')))) & "--------");

  ds19 <= \s'\.cpustate_sel0;

  ds23 <= \s'\.cpustate_sel4;

  ds24 <= \s'\.cpustate_sel5;

  ds25 <= \s'\.cpustate_sel6;

  ds27 <= \s'\.cpustate_sel8;

  y_0 <= xy.tup2_2_sel1;

  \#bv\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_1\))))),8)));

  -- indexBitVector begin
  indexbitvector : block
    signal vec_index_4 : integer range 0 to 8-1;
  begin
    vec_index_4 <= to_integer((wild1_1))
    -- pragma translate_off
                 mod 8
    -- pragma translate_on
                 ;

    b <= \#bv\(vec_index_4);
  end block;
  -- indexBitVector end

  s1_0 <= ( cpustate_sel0 => ds_0
          , cpustate_sel1 => ds
          , cpustate_sel2 => eta_2
          , cpustate_sel3 => ds22
          , cpustate_sel4 => ds4_3
          , cpustate_sel5 => ds5_0
          , cpustate_sel6 => ds6
          , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
          , cpustate_sel8 => ds8 );

  s1_1 <= ( cpustate_sel0 => ds19
          , cpustate_sel1 => ds
          , cpustate_sel2 => eta_2
          , cpustate_sel3 => ds12_0
          , cpustate_sel4 => ds23
          , cpustate_sel5 => ds24
          , cpustate_sel6 => ds25
          , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
          , cpustate_sel8 => ds27 );

  x_1 <= xy.tup2_2_sel0;

  eta_0 <= ( cpustate_sel0 => ds_0
           , cpustate_sel1 => ds
           , cpustate_sel2 => eta_2
           , cpustate_sel3 => ds22
           , cpustate_sel4 => \#eta_app_arg\
           , cpustate_sel5 => ds5_0
           , cpustate_sel6 => ds6
           , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
           , cpustate_sel8 => ds8 );

  eta_1 <= ( cpustate_sel0 => ds19
           , cpustate_sel1 => ds
           , cpustate_sel2 => eta_2
           , cpustate_sel3 => ds12_0
           , cpustate_sel4 => \#eta_app_arg_0\
           , cpustate_sel5 => ds24
           , cpustate_sel6 => ds25
           , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
           , cpustate_sel8 => ds27 );

  -- replace begin
  replacevec : block
    signal vec_index_5 : integer range 0 to 16-1;
  begin
    vec_index_5 <= to_integer(\#karg_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_5,ds4_3,ds)
      variable ivec : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec := ds4_3;
      ivec(vec_index_5) := ds;
      result_13 <= ivec;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_0 : block
    signal vec_index_6 : integer range 0 to 16-1;
  begin
    vec_index_6 <= to_integer(\#karg_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_6,ds23,ds)
      variable ivec_0 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_0 := ds23;
      ivec_0(vec_index_6) := ds;
      result_14 <= ivec_0;
    end process;
  end block;
  -- replace end

  ds10_0 <= \s'\.cpustate_sel1;

  ds11_0 <= \s'\.cpustate_sel2;

  ds12_0 <= \s'\.cpustate_sel3;

  ds16 <= \s'\.cpustate_sel7;

  ds5_2 <= s1_0.cpustate_sel4;

  ds5_3 <= s1_1.cpustate_sel4;

  \s'\ <= ( cpustate_sel0 => ds_0
          , cpustate_sel1 => ds1
          , cpustate_sel2 => ds2
          , cpustate_sel3 => ds22
          , cpustate_sel4 => ds4_3
          , cpustate_sel5 => ds5_0
          , cpustate_sel6 => ds6
          , cpustate_sel7 => ds14
          , cpustate_sel8 => \#s'_case_alt\ );

  \skipWhen\ <= chip8_types.fromSLV(wild5(0 downto 0));

  \#skipWhen_0\ <= chip8_types.fromSLV(wild5(4 downto 4));

  \skipIfPressed\ <= chip8_types.fromSLV(wild5(8 downto 8));

  \#x_app_arg\ <= to_signed(1,64) when x_4 = y_4 else to_signed(0,64);

  \#x_app_arg_0\ <= to_signed(1,64) when x_5 = y_3 else to_signed(0,64);

  \#x_app_arg_1\ <= to_signed(1,64) when x_6 = y_4 else to_signed(0,64);

  \#x_app_arg_2\ <= to_signed(1,64) when x_7 = y_5 else to_signed(0,64);

  \#decodeOut_app_arg\ <= \#decodeOut_app_arg_0\ when ds5 else
                          \#decodeOut_app_arg_0\;

  ds3_3 <= i1.cpuin_sel2;

  x_2 <= ds1_7.tup2_2_sel0;

  y_1 <= ds1_7.tup2_2_sel1;

  \#xy1_app_arg\ <= resize(unsigned(std_logic_vector(\#m1_app_arg_2\)),5);

  x_3 <= ds1_8.tup2_2_sel0;

  y_2 <= ds1_8.tup2_2_sel1;

  chip8_cpu_alu_result_15 : entity chip8_cpu_alu
    port map
      ( result => result_15
      , fun    => \#tupIn\.tup3_sel0
      , eta1   => \#tupIn\.tup3_sel1
      , eta    => \#tupIn\.tup3_sel2 );

  \#s''_3\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => addr
              , cpustate_sel3 => ds22
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_4\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => addr_0
              , cpustate_sel3 => ds22
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => result_21
              , cpustate_sel6 => \#s''_app_arg_1\
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_5\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => eta_2
              , cpustate_sel3 => ds22
              , cpustate_sel4 => result_22
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_6\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => eta_2
              , cpustate_sel3 => ds22
              , cpustate_sel4 => result_23
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_7\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => eta_2
              , cpustate_sel3 => addr_1
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_8\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => addr_2 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_2\))))),12))
              , cpustate_sel3 => ds22
              , cpustate_sel4 => ds4_3
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_9\ <= ( cpustate_sel0 => ds_0
              , cpustate_sel1 => ds
              , cpustate_sel2 => eta_2
              , cpustate_sel3 => ds22
              , cpustate_sel4 => result_24
              , cpustate_sel5 => ds5_0
              , cpustate_sel6 => ds6
              , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
              , cpustate_sel8 => ds8 );

  \#s''_10\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => result_25
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds8 );

  \#s''_11\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => ds4_3
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("111" & (std_logic_vector(\regX\)) & "---------------")
               , cpustate_sel8 => ds8 );

  \#s''_12\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => ds4_3
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => result_26 );

  \#s''_13\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_3\))))),12))
               , cpustate_sel4 => ds4_3
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds8 );

  \#s''_14\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => shift_left((resize(unsigned(std_logic_vector((signed(std_logic_vector(resize((unsigned(b1)),64)))))),12)),to_integer(to_signed(3,64)))
               , cpustate_sel4 => ds4_3
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds8 );

  \#s''_15\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => ds4_3
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("100" & (std_logic_vector(\#regMax_2\)) & "---------------")
               , cpustate_sel8 => ds8 );

  wild5_0 <= \#decodeOut_0\;

  \#s''_16\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => addr
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_17\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => addr_0
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => result_27
               , cpustate_sel6 => \#s''_app_arg_2\
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_18\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => result_28
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_19\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => result_29
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_20\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => addr_1
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_21\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => addr_2 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_4\))))),12))
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_22\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => result_30
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_23\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => result_31
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_24\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("111" & (std_logic_vector(\regX\)) & "---------------")
               , cpustate_sel8 => ds27 );

  \#s''_25\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => result_32 );

  \#s''_26\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0 + (resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_5\))))),12))
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_27\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => shift_left((resize(unsigned(std_logic_vector((signed(std_logic_vector(resize((unsigned(b1_0)),64)))))),12)),to_integer(to_signed(3,64)))
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_28\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => ds23
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("100" & (std_logic_vector(\#regMax_2\)) & "---------------")
               , cpustate_sel8 => ds27 );

  \regMax\ <= unsigned(wild5(12 downto 9));

  \x#\ <= resize(\#x_case_scrut_5\,64);

  \#x#_0\ <= resize(\#x_case_scrut_6\,64);

  \#s''_case_alt_2\ <= \#s''_case_alt_9\ when \#s''_case_scrut_0\ else
                       \#s''_case_alt_8\;

  \#s''_case_alt_3\ <= \#s''_case_alt_11\ when \#s''_case_scrut_1\ else
                       \#s''_case_alt_10\;

  with (carry_0(8 downto 8)) select
    result_16 <= \#s''_29\ when "0",
                 \#s''_30\ when others;

  \#s''_case_alt_4\ <= \#s''_case_alt_13\ when \#s''_case_scrut_2\ else
                       \#s''_case_alt_12\;

  \#s''_case_alt_5\ <= \#s''_case_alt_15\ when \#s''_case_scrut_3\ else
                       \#s''_case_alt_14\;

  \#s''_case_alt_6\ <= \#s''_case_alt_17\ when \#s''_case_scrut_4\ else
                       \#s''_case_alt_16\;

  with (carry_0(8 downto 8)) select
    result_17 <= \#s''_31\ when "0",
                 \#s''_32\ when others;

  \#s''_case_alt_7\ <= \#s''_case_alt_19\ when \#s''_case_scrut_5\ else
                       \#s''_case_alt_18\;

  with (col) select
    \#s''_app_arg_0\ <= \#s''_case_alt_20\ when "000",
                        std_logic_vector'("110" & ("0") & ((std_logic_vector(xy_2.tup2_2_sel0)
                         & std_logic_vector(xy_2.tup2_2_sel1))) & (std_logic_vector(row)) & (std_logic_vector(col - to_unsigned(1,3)))) when others;

  \#regMax_0\ <= unsigned(wild5(12 downto 9));

  -- replace begin
  replacevec_1 : block
    signal vec_index_7 : integer range 0 to 16-1;
  begin
    vec_index_7 <= to_integer(to_signed(15,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_7,ds4_3)
      variable ivec_1 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_1 := ds4_3;
      ivec_1(vec_index_7) := (resize(to_unsigned(0,64),8));
      \#eta_app_arg\ <= ivec_1;
    end process;
  end block;
  -- replace end

  with (height) select
    row_0 <= to_unsigned(15,4) when x"0",
             height - to_unsigned(1,4) when others;

  wild1_0 <= \#addr_app_arg_1\;

  eta_2 <= \#s''_app_arg\;

  -- index begin
  indexvec_4 : block
    signal vec_index_8 : integer range 0 to 24-1;
  begin
    vec_index_8 <= to_integer((wild1_2))
    -- pragma translate_off
                 mod 24
    -- pragma translate_on
                 ;
    result_18 <= ds5_0(vec_index_8);
  end block;
  -- index end

  with (ds6) select
    \sp'\ <= to_unsigned(23,5) when "00000",
             ds6 - to_unsigned(1,5) when others;

  ds2_1 <= s1_0.cpustate_sel2;

  -- index begin
  indexvec_5 : block
    signal vec_index_9 : integer range 0 to 24-1;
  begin
    vec_index_9 <= to_integer((wild1_3))
    -- pragma translate_off
                 mod 24
    -- pragma translate_on
                 ;
    result_19 <= ds24(vec_index_9);
  end block;
  -- index end

  with (ds25) select
    \#sp'_0\ <= to_unsigned(23,5) when "00000",
                ds25 - to_unsigned(1,5) when others;

  ds2_2 <= s1_1.cpustate_sel2;

  -- replace begin
  replacevec_2 : block
    signal vec_index_10 : integer range 0 to 16-1;
  begin
    vec_index_10 <= to_integer((wild1_4))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_10,ds13)
      variable ivec_2 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_2 := ds13;
      ivec_2(vec_index_10) := (resize((resize(wild(7 downto 0),64)),8));
      result_20 <= ivec_2;
    end process;
  end block;
  -- replace end

  ds_2 <= eta_0.cpustate_sel0;

  ds1_1 <= eta_0.cpustate_sel1;

  ds2_3 <= eta_0.cpustate_sel2;

  ds4_5 <= eta_0.cpustate_sel4;

  ds5_4 <= eta_0.cpustate_sel5;

  ds6_1 <= eta_0.cpustate_sel6;

  ds8_1 <= eta_0.cpustate_sel8;

  \#regMax_1\ <= unsigned(wild5_0(12 downto 9));

  ds_3 <= eta_1.cpustate_sel0;

  ds1_2 <= eta_1.cpustate_sel1;

  ds2_4 <= eta_1.cpustate_sel2;

  ds4_6 <= eta_1.cpustate_sel4;

  ds5_5 <= eta_1.cpustate_sel5;

  ds6_2 <= eta_1.cpustate_sel6;

  ds8_2 <= eta_1.cpustate_sel8;

  ds1_3 <= ( tup2_2_sel0 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_6\))))),6)
           , tup2_2_sel1 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_7\))))),5) );

  with (height_0) select
    row_1 <= to_unsigned(15,4) when x"0",
             height_0 - to_unsigned(1,4) when others;

  ds1_4 <= ( tup2_2_sel0 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_8\))))),6)
           , tup2_2_sel1 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_9\))))),5) );

  -- replace begin
  replacevec_3 : block
    signal vec_index_11 : integer range 0 to 16-1;
  begin
    vec_index_11 <= to_integer(to_signed(15,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_11,ds13)
      variable ivec_3 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_3 := ds13;
      ivec_3(vec_index_11) := (resize(to_unsigned(1,64),8));
      \#s'_app_arg\ <= ivec_3;
    end process;
  end block;
  -- replace end

  wild1_1 <= (signed(std_logic_vector(resize((to_unsigned(7,3) - col),64))));

  -- replace begin
  replacevec_4 : block
    signal vec_index_12 : integer range 0 to 16-1;
  begin
    vec_index_12 <= to_integer(to_signed(15,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_12,ds23)
      variable ivec_4 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_4 := ds23;
      ivec_4(vec_index_12) := (resize(to_unsigned(0,64),8));
      \#eta_app_arg_0\ <= ivec_4;
    end process;
  end block;
  -- replace end

  \#karg_app_arg\ <= wild1_5;

  \#x#_1\ <= resize(ds,64);

  ds1_5 <= s1_0.cpustate_sel0;

  ds2_5 <= s1_0.cpustate_sel1;

  ds6_3 <= s1_0.cpustate_sel5;

  ds7 <= s1_0.cpustate_sel6;

  ds9_0 <= s1_0.cpustate_sel8;

  ds1_6 <= s1_1.cpustate_sel0;

  ds2_6 <= s1_1.cpustate_sel1;

  ds6_4 <= s1_1.cpustate_sel5;

  ds7_0 <= s1_1.cpustate_sel6;

  ds9_1 <= s1_1.cpustate_sel8;

  \#w\ <= (x_8 - to_unsigned(1,64));

  with (x_8) select
    \#s'_case_alt\ <= resize(to_unsigned(0,64),8) when x"0000000000000000",
                      resize((resize(\#w\(7 downto 0),64)),8) when others;

  x_4 <= resize(\#x_case_scrut_7\,64);

  y_3 <= resize(\#x_case_scrut_8\,64);

  x_5 <= resize(\#x_case_scrut_9\,64);

  y_4 <= resize(imm,64);

  x_6 <= resize(\#x_case_scrut_10\,64);

  y_5 <= resize(\#x_case_scrut_11\,64);

  x_7 <= resize(\#x_case_scrut_12\,64);

  ds1_7 <= ( tup2_2_sel0 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_10\))))),6)
           , tup2_2_sel1 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_11\))))),5) );

  ds1_8 <= ( tup2_2_sel0 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_12\))))),6)
           , tup2_2_sel1 => resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_13\))))),5) );

  -- replace begin
  replacevec_5 : block
    signal vec_index_13 : integer range 0 to 24-1;
  begin
    vec_index_13 <= to_integer((wild1_6))
    -- pragma translate_off
                 mod 24
    -- pragma translate_on
                 ;

    process(vec_index_13,ds5_0,eta_2)
      variable ivec_5 : chip8_types.array_of_unsigned_12(0 to 23);
    begin
      ivec_5 := ds5_0;
      ivec_5(vec_index_13) := eta_2;
      result_21 <= ivec_5;
    end process;
  end block;
  -- replace end

  \#s''_app_arg_1_selection_res\ <= ds6 = to_unsigned(23,5);

  \#s''_app_arg_1\ <= to_unsigned(0,5) when \#s''_app_arg_1_selection_res\ else
                      ds6 + to_unsigned(1,5);

  -- replace begin
  replacevec_6 : block
    signal vec_index_14 : integer range 0 to 16-1;
  begin
    vec_index_14 <= to_integer(\#s''_app_arg_3\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_14,ds4_3,imm_0)
      variable ivec_6 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_6 := ds4_3;
      ivec_6(vec_index_14) := imm_0;
      result_22 <= ivec_6;
    end process;
  end block;
  -- replace end

  \#w_0\ <= (\#x#_14\ + \y#\);

  -- replace begin
  replacevec_7 : block
    signal vec_index_15 : integer range 0 to 16-1;
  begin
    vec_index_15 <= to_integer(\#s''_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_15,ds4_3)
      variable ivec_7 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_7 := ds4_3;
      ivec_7(vec_index_15) := (resize((resize(\#w_0\(7 downto 0),64)),8));
      result_23 <= ivec_7;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_8 : block
    signal vec_index_16 : integer range 0 to 16-1;
  begin
    vec_index_16 <= to_integer(\#s''_app_arg_5\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_16,ds4_3,mask)
      variable ivec_8 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_8 := ds4_3;
      ivec_8(vec_index_16) := mask;
      result_24 <= ivec_8;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_9 : block
    signal vec_index_17 : integer range 0 to 16-1;
  begin
    vec_index_17 <= to_integer(\#s''_app_arg_6\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_17,ds4_3,ds8)
      variable ivec_9 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_9 := ds4_3;
      ivec_9(vec_index_17) := ds8;
      result_25 <= ivec_9;
    end process;
  end block;
  -- replace end

  -- index begin
  indexvec_6 : block
    signal vec_index_18 : integer range 0 to 16-1;
  begin
    vec_index_18 <= to_integer(\#s''_app_arg_7\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_26 <= ds4_3(vec_index_18);
  end block;
  -- index end

  addr <= unsigned(wild5_0(12 downto 1));

  addr_0 <= unsigned(wild5_0(12 downto 1));

  addr_1 <= unsigned(wild5_0(12 downto 1));

  -- replace begin
  replacevec_10 : block
    signal vec_index_19 : integer range 0 to 24-1;
  begin
    vec_index_19 <= to_integer((wild1_7))
    -- pragma translate_off
                 mod 24
    -- pragma translate_on
                 ;

    process(vec_index_19,ds24,eta_2)
      variable ivec_10 : chip8_types.array_of_unsigned_12(0 to 23);
    begin
      ivec_10 := ds24;
      ivec_10(vec_index_19) := eta_2;
      result_27 <= ivec_10;
    end process;
  end block;
  -- replace end

  \#s''_app_arg_2_selection_res\ <= ds25 = to_unsigned(23,5);

  \#s''_app_arg_2\ <= to_unsigned(0,5) when \#s''_app_arg_2_selection_res\ else
                      ds25 + to_unsigned(1,5);

  -- replace begin
  replacevec_11 : block
    signal vec_index_20 : integer range 0 to 16-1;
  begin
    vec_index_20 <= to_integer(\#s''_app_arg_3\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_20,ds23,imm_0)
      variable ivec_11 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_11 := ds23;
      ivec_11(vec_index_20) := imm_0;
      result_28 <= ivec_11;
    end process;
  end block;
  -- replace end

  \#w_1\ <= (\#x#_16\ + \y#\);

  -- replace begin
  replacevec_12 : block
    signal vec_index_21 : integer range 0 to 16-1;
  begin
    vec_index_21 <= to_integer(\#s''_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_21,ds23)
      variable ivec_12 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_12 := ds23;
      ivec_12(vec_index_21) := (resize((resize(\#w_1\(7 downto 0),64)),8));
      result_29 <= ivec_12;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_13 : block
    signal vec_index_22 : integer range 0 to 16-1;
  begin
    vec_index_22 <= to_integer(\#s''_app_arg_5\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_22,ds23,mask)
      variable ivec_13 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_13 := ds23;
      ivec_13(vec_index_22) := mask;
      result_30 <= ivec_13;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_14 : block
    signal vec_index_23 : integer range 0 to 16-1;
  begin
    vec_index_23 <= to_integer(\#s''_app_arg_6\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_23,ds23,ds27)
      variable ivec_14 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_14 := ds23;
      ivec_14(vec_index_23) := ds27;
      result_31 <= ivec_14;
    end process;
  end block;
  -- replace end

  -- index begin
  indexvec_7 : block
    signal vec_index_24 : integer range 0 to 16-1;
  begin
    vec_index_24 <= to_integer(\#s''_app_arg_7\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_32 <= ds23(vec_index_24);
  end block;
  -- index end

  chip8_opcode_decode_decodeout_0 : entity chip8_opcode_decode
    port map
      ( result => \#decodeOut_0\
      , hi     => \#decodeOut_app_arg_0\
      , lo     => ds );

  x_8 <= resize(ds8,64);

  -- index begin
  indexvec_8 : block
    signal vec_index_25 : integer range 0 to 16-1;
  begin
    vec_index_25 <= to_integer(\#x_app_arg_3\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_5\ <= ds4_3(vec_index_25);
  end block;
  -- index end

  -- index begin
  indexvec_9 : block
    signal vec_index_26 : integer range 0 to 16-1;
  begin
    vec_index_26 <= to_integer(\#x_app_arg_3\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_6\ <= ds23(vec_index_26);
  end block;
  -- index end

  \#s''_case_scrut_0\ <= tagToEnum(\#s''_app_arg_8\);

  \#s''_case_alt_8\ <= s1_0 when \#skipWhen_1\ else
                       ( cpustate_sel0 => ds1_5
                       , cpustate_sel1 => ds2_5
                       , cpustate_sel2 => addr_3
                       , cpustate_sel3 => ds4_0
                       , cpustate_sel4 => ds5_2
                       , cpustate_sel5 => ds6_3
                       , cpustate_sel6 => ds7
                       , cpustate_sel7 => ds8_3
                       , cpustate_sel8 => ds9_0 );

  \#s''_case_alt_9\ <= ( cpustate_sel0 => ds1_5
                       , cpustate_sel1 => ds2_5
                       , cpustate_sel2 => addr_3
                       , cpustate_sel3 => ds4_0
                       , cpustate_sel4 => ds5_2
                       , cpustate_sel5 => ds6_3
                       , cpustate_sel6 => ds7
                       , cpustate_sel7 => ds8_3
                       , cpustate_sel8 => ds9_0 ) when \#skipWhen_1\ else
                       s1_0;

  \#s''_case_scrut_1\ <= tagToEnum(\#s''_app_arg_9\);

  \#s''_case_alt_10\ <= s1_0 when \#skipWhen_2\ else
                        ( cpustate_sel0 => ds1_5
                        , cpustate_sel1 => ds2_5
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_0
                        , cpustate_sel4 => ds5_2
                        , cpustate_sel5 => ds6_3
                        , cpustate_sel6 => ds7
                        , cpustate_sel7 => ds8_3
                        , cpustate_sel8 => ds9_0 );

  \#s''_case_alt_11\ <= ( cpustate_sel0 => ds1_5
                        , cpustate_sel1 => ds2_5
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_0
                        , cpustate_sel4 => ds5_2
                        , cpustate_sel5 => ds6_3
                        , cpustate_sel6 => ds7
                        , cpustate_sel7 => ds8_3
                        , cpustate_sel8 => ds9_0 ) when \#skipWhen_2\ else
                        s1_0;

  \#s''_29\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => result_33
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds8 );

  \#s''_30\ <= ( cpustate_sel0 => ds_0
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds22
               , cpustate_sel4 => \#s''_app_arg_10\
               , cpustate_sel5 => ds5_0
               , cpustate_sel6 => ds6
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds8 );

  carry_0 <= result_35.tup2_0_sel1;

  -- index begin
  indexvec_10 : block
    signal vec_index_27 : integer range 0 to 16-1;
  begin
    vec_index_27 <= to_integer(((signed(std_logic_vector(\#x#_15\)))))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_2\ <= ds3_3(vec_index_27);
  end block;
  -- index end

  \#s''_case_alt_12\ <= s1_0 when \#skipIfPressed_0\ else
                        ( cpustate_sel0 => ds1_5
                        , cpustate_sel1 => ds2_5
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_0
                        , cpustate_sel4 => ds5_2
                        , cpustate_sel5 => ds6_3
                        , cpustate_sel6 => ds7
                        , cpustate_sel7 => ds8_3
                        , cpustate_sel8 => ds9_0 );

  \#s''_case_alt_13\ <= ( cpustate_sel0 => ds1_5
                        , cpustate_sel1 => ds2_5
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_0
                        , cpustate_sel4 => ds5_2
                        , cpustate_sel5 => ds6_3
                        , cpustate_sel6 => ds7
                        , cpustate_sel7 => ds8_3
                        , cpustate_sel8 => ds9_0 ) when \#skipIfPressed_0\ else
                        s1_0;

  addr_2 <= unsigned(wild5_0(12 downto 1));

  \regX\ <= unsigned(wild5_0(12 downto 9));

  \#regMax_2\ <= unsigned(wild5_0(12 downto 9));

  \#s''_case_scrut_3\ <= tagToEnum(\#s''_app_arg_11\);

  \#s''_case_alt_14\ <= s1_1 when \#skipWhen_1\ else
                        ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 );

  \#s''_case_alt_15\ <= ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 ) when \#skipWhen_1\ else
                        s1_1;

  \#s''_case_scrut_4\ <= tagToEnum(\#s''_app_arg_12\);

  \#s''_case_alt_16\ <= s1_1 when \#skipWhen_2\ else
                        ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 );

  \#s''_case_alt_17\ <= ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 ) when \#skipWhen_2\ else
                        s1_1;

  \#s''_31\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => result_34
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  \#s''_32\ <= ( cpustate_sel0 => ds19
               , cpustate_sel1 => ds
               , cpustate_sel2 => eta_2
               , cpustate_sel3 => ds12_0
               , cpustate_sel4 => \#s''_app_arg_13\
               , cpustate_sel5 => ds24
               , cpustate_sel6 => ds25
               , cpustate_sel7 => std_logic_vector'("001" & "-------------------")
               , cpustate_sel8 => ds27 );

  -- index begin
  indexvec_11 : block
    signal vec_index_28 : integer range 0 to 16-1;
  begin
    vec_index_28 <= to_integer(((signed(std_logic_vector(\#x#_17\)))))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_5\ <= ds3_3(vec_index_28);
  end block;
  -- index end

  \#s''_case_alt_18\ <= s1_1 when \#skipIfPressed_0\ else
                        ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 );

  \#s''_case_alt_19\ <= ( cpustate_sel0 => ds1_6
                        , cpustate_sel1 => ds2_6
                        , cpustate_sel2 => addr_3
                        , cpustate_sel3 => ds4_1
                        , cpustate_sel4 => ds5_3
                        , cpustate_sel5 => ds6_4
                        , cpustate_sel6 => ds7_0
                        , cpustate_sel7 => ds8_4
                        , cpustate_sel8 => ds9_1 ) when \#skipIfPressed_0\ else
                        s1_1;

  \#decodeOut_app_arg_0\ <= ds19 when ds5 else
                            ds_0;

  \#s''_case_alt_20_selection_res\ <= row = (unsigned'(4-1 downto 0 => '0'));

  \#s''_case_alt_20\ <= std_logic_vector'("001" & "-------------------") when \#s''_case_alt_20_selection_res\ else
                        std_logic_vector'("110" & ("0") & ((std_logic_vector(xy_2.tup2_2_sel0)
                         & std_logic_vector(xy_2.tup2_2_sel1))) & (std_logic_vector(row - to_unsigned(1,4))) & (std_logic_vector(to_unsigned(7,3))));

  height <= unsigned(wild5(4 downto 1));

  \#tupIn\ <= \#tupIn_case_alt\ when ds5 else
              \#tupIn_case_alt\;

  wild1_2 <= (signed(std_logic_vector(resize(\sp'\,64))));

  \#x#_2\ <= resize(\#s''_case_scrut_6\,64);

  \#x#_3\ <= resize(\#s''_case_scrut_7\,64);

  wild1_3 <= (signed(std_logic_vector(resize(\#sp'_0\,64))));

  \#x#_4\ <= resize(\#s''_case_scrut_8\,64);

  \#x#_5\ <= resize(\#s''_case_scrut_9\,64);

  wild1_4 <= (signed(std_logic_vector(resize(reg_0,64))));

  height_0 <= unsigned(wild5_0(4 downto 1));

  b1 <= ds4_7.tup2_sel1;

  b1_0 <= ds4_8.tup2_sel1;

  wild1_5 <= (signed(std_logic_vector(resize(r_0,64))));

  wild <= unsigned(std_logic_vector((signed(std_logic_vector(resize(key,64))))));

  \#x#_6\ <= resize(\#ds1_case_scrut\,64);

  \#x#_7\ <= resize(\#ds1_case_scrut_0\,64);

  \#x#_8\ <= resize(\#ds1_case_scrut_1\,64);

  \#x#_9\ <= resize(\#ds1_case_scrut_2\,64);

  imm <= unsigned(wild5(8 downto 1));

  -- index begin
  indexvec_12 : block
    signal vec_index_29 : integer range 0 to 16-1;
  begin
    vec_index_29 <= to_integer(\#x_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_7\ <= ds4_3(vec_index_29);
  end block;
  -- index end

  -- index begin
  indexvec_13 : block
    signal vec_index_30 : integer range 0 to 16-1;
  begin
    vec_index_30 <= to_integer(\#x_app_arg_6\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_8\ <= ds4_3(vec_index_30);
  end block;
  -- index end

  -- index begin
  indexvec_14 : block
    signal vec_index_31 : integer range 0 to 16-1;
  begin
    vec_index_31 <= to_integer(\#x_app_arg_5\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_9\ <= ds4_3(vec_index_31);
  end block;
  -- index end

  -- index begin
  indexvec_15 : block
    signal vec_index_32 : integer range 0 to 16-1;
  begin
    vec_index_32 <= to_integer(\#x_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_10\ <= ds23(vec_index_32);
  end block;
  -- index end

  -- index begin
  indexvec_16 : block
    signal vec_index_33 : integer range 0 to 16-1;
  begin
    vec_index_33 <= to_integer(\#x_app_arg_6\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_11\ <= ds23(vec_index_33);
  end block;
  -- index end

  -- index begin
  indexvec_17 : block
    signal vec_index_34 : integer range 0 to 16-1;
  begin
    vec_index_34 <= to_integer(\#x_app_arg_5\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#x_case_scrut_12\ <= ds23(vec_index_34);
  end block;
  -- index end

  imm_0 <= unsigned(wild5_0(8 downto 1));

  mask <= unsigned(wild5_0(8 downto 1));

  \#s''_app_arg_3\ <= wild1_8;

  \#s''_app_arg_4\ <= wild1_9;

  \#s''_app_arg_5\ <= wild1_10;

  \#s''_app_arg_6\ <= wild1_11;

  \#s''_app_arg_7\ <= wild1_12;

  \#x_app_arg_3\ <= wild1_13;

  wild1_6 <= (signed(std_logic_vector(resize(ds6,64))));

  \#s''_app_arg_8\ <= to_signed(1,64) when x_9 = y_7 else to_signed(0,64);

  \#s''_app_arg_9\ <= to_signed(1,64) when x_10 = y_6 else to_signed(0,64);

  -- replace begin
  replacevec_15 : block
    signal vec_index_35 : integer range 0 to 16-1;
  begin
    vec_index_35 <= to_integer(to_signed(15,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_35,result_33,x_11)
      variable ivec_15 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_15 := result_33;
      ivec_15(vec_index_35) := x_11;
      \#s''_app_arg_10\ <= ivec_15;
    end process;
  end block;
  -- replace end

  \#skipWhen_1\ <= chip8_types.fromSLV(wild5_0(0 downto 0));

  \#skipWhen_2\ <= chip8_types.fromSLV(wild5_0(4 downto 4));

  \#skipIfPressed_0\ <= chip8_types.fromSLV(wild5_0(8 downto 8));

  wild1_7 <= (signed(std_logic_vector(resize(ds25,64))));

  \#s''_app_arg_11\ <= to_signed(1,64) when x_12 = y_7 else to_signed(0,64);

  \#s''_app_arg_12\ <= to_signed(1,64) when x_13 = y_8 else to_signed(0,64);

  -- replace begin
  replacevec_16 : block
    signal vec_index_36 : integer range 0 to 16-1;
  begin
    vec_index_36 <= to_integer(to_signed(15,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_36,result_34,x_11)
      variable ivec_16 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_16 := result_34;
      ivec_16(vec_index_36) := x_11;
      \#s''_app_arg_13\ <= ivec_16;
    end process;
  end block;
  -- replace end

  \#x#_10\ <= resize(\#ds1_case_scrut_5\,64);

  \#x#_11\ <= resize(\#ds1_case_scrut_6\,64);

  \#x#_12\ <= resize(\#ds1_case_scrut_3\,64);

  \#x#_13\ <= resize(\#ds1_case_scrut_4\,64);

  \#tupIn_case_alt\ <= ( tup3_sel0 => fun
                       , tup3_sel1 => result_38
                       , tup3_sel2 => result_39 ) when ds5 else
                       ( tup3_sel0 => fun
                       , tup3_sel1 => result_36
                       , tup3_sel2 => result_37 );

  -- replace begin
  replacevec_17 : block
    signal vec_index_37 : integer range 0 to 16-1;
  begin
    vec_index_37 <= to_integer(\#tupIn_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_37,ds4_3,\x'\)
      variable ivec_17 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_17 := ds4_3;
      ivec_17(vec_index_37) := \x'\;
      result_33 <= ivec_17;
    end process;
  end block;
  -- replace end

  -- replace begin
  replacevec_18 : block
    signal vec_index_38 : integer range 0 to 16-1;
  begin
    vec_index_38 <= to_integer(\#tupIn_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index_38,ds23,\x'\)
      variable ivec_18 : chip8_types.array_of_unsigned_8(0 to 15);
    begin
      ivec_18 := ds23;
      ivec_18(vec_index_38) := \x'\;
      result_34 <= ivec_18;
    end process;
  end block;
  -- replace end

  chip8_cpu_alu_result_35 : entity chip8_cpu_alu
    port map
      ( result => result_35
      , fun    => \#tupIn_0\.tup3_sel0
      , eta1   => \#tupIn_0\.tup3_sel1
      , eta    => \#tupIn_0\.tup3_sel2 );

  \#x#_14\ <= resize(\#s''_case_scrut_10\,64);

  -- index begin
  indexvec_18 : block
    signal vec_index_39 : integer range 0 to 16-1;
  begin
    vec_index_39 <= to_integer(to_signed(0,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_6\ <= ds4_3(vec_index_39);
  end block;
  -- index end

  \#x#_15\ <= resize(\#s''_case_scrut_11\,64);

  -- index begin
  indexvec_19 : block
    signal vec_index_40 : integer range 0 to 16-1;
  begin
    vec_index_40 <= to_integer(\#s''_app_arg_14\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_7\ <= ds4_3(vec_index_40);
  end block;
  -- index end

  \y#\ <= resize(imm_1,64);

  \#x#_16\ <= resize(\#s''_case_scrut_12\,64);

  -- index begin
  indexvec_20 : block
    signal vec_index_41 : integer range 0 to 16-1;
  begin
    vec_index_41 <= to_integer(to_signed(0,64))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_8\ <= ds23(vec_index_41);
  end block;
  -- index end

  \#x#_17\ <= resize(\#s''_case_scrut_13\,64);

  -- index begin
  indexvec_21 : block
    signal vec_index_42 : integer range 0 to 16-1;
  begin
    vec_index_42 <= to_integer(\#s''_app_arg_14\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_9\ <= ds23(vec_index_42);
  end block;
  -- index end

  addr_3 <= eta_2 + to_unsigned(2,12);

  ds8_3 <= s1_0.cpustate_sel7;

  ds8_4 <= s1_1.cpustate_sel7;

  reg_0 <= unsigned(ds14(18 downto 15));

  \#bv_0\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_18\))))),8)));

  ds4_7 <= (\#bv_0\(\#bv_0\'high downto 4),\#bv_0\(4-1 downto 0));

  \#bv_1\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\#x#_19\))))),8)));

  ds4_8 <= (\#bv_1\(\#bv_1\'high downto 4),\#bv_1\(4-1 downto 0));

  -- index begin
  indexvec_22 : block
    signal vec_index_43 : integer range 0 to 16-1;
  begin
    vec_index_43 <= to_integer(\#ds1_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut\ <= ds4_3(vec_index_43);
  end block;
  -- index end

  -- index begin
  indexvec_23 : block
    signal vec_index_44 : integer range 0 to 16-1;
  begin
    vec_index_44 <= to_integer(\#ds1_app_arg_0\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_0\ <= ds4_3(vec_index_44);
  end block;
  -- index end

  -- index begin
  indexvec_24 : block
    signal vec_index_45 : integer range 0 to 16-1;
  begin
    vec_index_45 <= to_integer(\#ds1_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_1\ <= ds23(vec_index_45);
  end block;
  -- index end

  -- index begin
  indexvec_25 : block
    signal vec_index_46 : integer range 0 to 16-1;
  begin
    vec_index_46 <= to_integer(\#ds1_app_arg_0\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_2\ <= ds23(vec_index_46);
  end block;
  -- index end

  key <= x1.tup2_10_sel1;

  \#x_app_arg_4\ <= wild1_14;

  \#x_app_arg_5\ <= wild1_15;

  \#x_app_arg_6\ <= wild7;

  wild1_8 <= (signed(std_logic_vector(resize(\#regX_0\,64))));

  wild1_9 <= (signed(std_logic_vector(resize(\#regX_1\,64))));

  wild1_10 <= (signed(std_logic_vector(resize(\#regX_2\,64))));

  wild1_11 <= (signed(std_logic_vector(resize(\#regX_3\,64))));

  wild1_12 <= (signed(std_logic_vector(resize(\#regX_4\,64))));

  wild1_13 <= (signed(std_logic_vector(resize(\#regX_5\,64))));

  x_9 <= resize(\#s''_case_scrut_14\,64);

  y_6 <= resize(\#s''_case_scrut_15\,64);

  x_10 <= resize(\#s''_case_scrut_16\,64);

  x_11 <= unsigned(carry_0(7 downto 0));

  y_7 <= resize(imm_2,64);

  x_12 <= resize(\#s''_case_scrut_17\,64);

  y_8 <= resize(\#s''_case_scrut_18\,64);

  x_13 <= resize(\#s''_case_scrut_19\,64);

  -- index begin
  indexvec_26 : block
    signal vec_index_47 : integer range 0 to 16-1;
  begin
    vec_index_47 <= to_integer(\#ds1_app_arg_1\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_3\ <= ds23(vec_index_47);
  end block;
  -- index end

  -- index begin
  indexvec_27 : block
    signal vec_index_48 : integer range 0 to 16-1;
  begin
    vec_index_48 <= to_integer(\#ds1_app_arg_2\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_4\ <= ds23(vec_index_48);
  end block;
  -- index end

  -- index begin
  indexvec_28 : block
    signal vec_index_49 : integer range 0 to 16-1;
  begin
    vec_index_49 <= to_integer(\#ds1_app_arg_1\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_5\ <= ds4_3(vec_index_49);
  end block;
  -- index end

  -- index begin
  indexvec_29 : block
    signal vec_index_50 : integer range 0 to 16-1;
  begin
    vec_index_50 <= to_integer(\#ds1_app_arg_2\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#ds1_case_scrut_6\ <= ds4_3(vec_index_50);
  end block;
  -- index end

  \x'\ <= result_35.tup2_0_sel0;

  -- index begin
  indexvec_30 : block
    signal vec_index_51 : integer range 0 to 16-1;
  begin
    vec_index_51 <= to_integer(\#tupIn_app_arg_0\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_36 <= ds4_3(vec_index_51);
  end block;
  -- index end

  -- index begin
  indexvec_31 : block
    signal vec_index_52 : integer range 0 to 16-1;
  begin
    vec_index_52 <= to_integer(\#tupIn_app_arg_1\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_37 <= ds4_3(vec_index_52);
  end block;
  -- index end

  -- index begin
  indexvec_32 : block
    signal vec_index_53 : integer range 0 to 16-1;
  begin
    vec_index_53 <= to_integer(\#tupIn_app_arg_0\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_38 <= ds23(vec_index_53);
  end block;
  -- index end

  -- index begin
  indexvec_33 : block
    signal vec_index_54 : integer range 0 to 16-1;
  begin
    vec_index_54 <= to_integer(\#tupIn_app_arg_1\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_39 <= ds23(vec_index_54);
  end block;
  -- index end

  fun <= wild5(4 downto 1);

  -- index begin
  indexvec_34 : block
    signal vec_index_55 : integer range 0 to 16-1;
  begin
    vec_index_55 <= to_integer(\#s''_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_10\ <= ds4_3(vec_index_55);
  end block;
  -- index end

  -- index begin
  indexvec_35 : block
    signal vec_index_56 : integer range 0 to 16-1;
  begin
    vec_index_56 <= to_integer(\#s''_app_arg_15\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_11\ <= ds4_3(vec_index_56);
  end block;
  -- index end

  imm_1 <= unsigned(wild5_0(8 downto 1));

  -- index begin
  indexvec_36 : block
    signal vec_index_57 : integer range 0 to 16-1;
  begin
    vec_index_57 <= to_integer(\#s''_app_arg_4\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_12\ <= ds23(vec_index_57);
  end block;
  -- index end

  -- index begin
  indexvec_37 : block
    signal vec_index_58 : integer range 0 to 16-1;
  begin
    vec_index_58 <= to_integer(\#s''_app_arg_15\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_13\ <= ds23(vec_index_58);
  end block;
  -- index end

  \#s''_app_arg_14\ <= wild1_16;

  \#tupIn_0\ <= ( tup3_sel0 => fun_0
                , tup3_sel1 => result_42
                , tup3_sel2 => result_43 ) when ds5 else
                ( tup3_sel0 => fun_0
                , tup3_sel1 => result_40
                , tup3_sel2 => result_41 );

  \#ds1_app_arg\ <= wild1_17;

  \#ds1_app_arg_0\ <= wild1_18;

  \#x#_18\ <= resize(result_44,64);

  \#x#_19\ <= resize(result_45,64);

  \#tupIn_app_arg\ <= wild1_19;

  wild1_14 <= (signed(std_logic_vector(resize(\#regX_6\,64))));

  wild7 <= (signed(std_logic_vector(resize(\regY\,64))));

  wild1_15 <= (signed(std_logic_vector(resize(\#regX_7\,64))));

  -- index begin
  indexvec_38 : block
    signal vec_index_59 : integer range 0 to 16-1;
  begin
    vec_index_59 <= to_integer(\#s''_app_arg_16\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_14\ <= ds4_3(vec_index_59);
  end block;
  -- index end

  -- index begin
  indexvec_39 : block
    signal vec_index_60 : integer range 0 to 16-1;
  begin
    vec_index_60 <= to_integer(\#s''_app_arg_18\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_15\ <= ds4_3(vec_index_60);
  end block;
  -- index end

  -- index begin
  indexvec_40 : block
    signal vec_index_61 : integer range 0 to 16-1;
  begin
    vec_index_61 <= to_integer(\#s''_app_arg_17\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_16\ <= ds4_3(vec_index_61);
  end block;
  -- index end

  imm_2 <= unsigned(wild5_0(8 downto 1));

  \#regX_0\ <= unsigned(wild5_0(12 downto 9));

  \#regX_1\ <= unsigned(wild5_0(12 downto 9));

  \#regX_2\ <= unsigned(wild5_0(12 downto 9));

  \#regX_3\ <= unsigned(wild5_0(12 downto 9));

  \#regX_4\ <= unsigned(wild5_0(12 downto 9));

  -- index begin
  indexvec_41 : block
    signal vec_index_62 : integer range 0 to 16-1;
  begin
    vec_index_62 <= to_integer(\#s''_app_arg_16\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_17\ <= ds23(vec_index_62);
  end block;
  -- index end

  -- index begin
  indexvec_42 : block
    signal vec_index_63 : integer range 0 to 16-1;
  begin
    vec_index_63 <= to_integer(\#s''_app_arg_18\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_18\ <= ds23(vec_index_63);
  end block;
  -- index end

  -- index begin
  indexvec_43 : block
    signal vec_index_64 : integer range 0 to 16-1;
  begin
    vec_index_64 <= to_integer(\#s''_app_arg_17\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    \#s''_case_scrut_19\ <= ds23(vec_index_64);
  end block;
  -- index end

  \#regX_5\ <= unsigned(wild5(12 downto 9));

  \#ds1_app_arg_1\ <= wild1_20;

  \#ds1_app_arg_2\ <= wild1_21;

  \#tupIn_app_arg_0\ <= wild1_22;

  \#tupIn_app_arg_1\ <= wild1_23;

  \#s''_app_arg_15\ <= wild1_24;

  wild1_16 <= (signed(std_logic_vector(resize(\#regX_9\,64))));

  -- index begin
  indexvec_44 : block
    signal vec_index_65 : integer range 0 to 16-1;
  begin
    vec_index_65 <= to_integer(\#tupIn_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_40 <= ds4_3(vec_index_65);
  end block;
  -- index end

  -- index begin
  indexvec_45 : block
    signal vec_index_66 : integer range 0 to 16-1;
  begin
    vec_index_66 <= to_integer(\#tupIn_app_arg_2\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_41 <= ds4_3(vec_index_66);
  end block;
  -- index end

  -- index begin
  indexvec_46 : block
    signal vec_index_67 : integer range 0 to 16-1;
  begin
    vec_index_67 <= to_integer(\#tupIn_app_arg\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_42 <= ds23(vec_index_67);
  end block;
  -- index end

  -- index begin
  indexvec_47 : block
    signal vec_index_68 : integer range 0 to 16-1;
  begin
    vec_index_68 <= to_integer(\#tupIn_app_arg_2\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_43 <= ds23(vec_index_68);
  end block;
  -- index end

  fun_0 <= wild5_0(4 downto 1);

  wild1_17 <= (signed(std_logic_vector(resize(\#regX_10\,64))));

  wild1_18 <= (signed(std_logic_vector(resize(\#regY_0\,64))));

  wild1_19 <= (signed(std_logic_vector(resize(\#regX_8\,64))));

  -- index begin
  indexvec_48 : block
    signal vec_index_69 : integer range 0 to 16-1;
  begin
    vec_index_69 <= to_integer(\#x_app_arg_7\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_44 <= ds4_3(vec_index_69);
  end block;
  -- index end

  -- index begin
  indexvec_49 : block
    signal vec_index_70 : integer range 0 to 16-1;
  begin
    vec_index_70 <= to_integer(\#x_app_arg_7\)
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;
    result_45 <= ds23(vec_index_70);
  end block;
  -- index end

  \#regX_6\ <= unsigned(wild5(12 downto 9));

  \#regX_7\ <= unsigned(wild5(12 downto 9));

  \regY\ <= unsigned(wild5(8 downto 5));

  \#s''_app_arg_16\ <= wild1_25;

  \#s''_app_arg_17\ <= wild1_26;

  \#s''_app_arg_18\ <= wild7_0;

  wild1_20 <= (signed(std_logic_vector(resize(\#regX_11\,64))));

  wild1_21 <= (signed(std_logic_vector(resize(\#regY_1\,64))));

  wild1_22 <= (signed(std_logic_vector(resize(\#regX_12\,64))));

  wild1_23 <= (signed(std_logic_vector(resize(\#regY_2\,64))));

  \#regX_8\ <= unsigned(wild5_0(12 downto 9));

  wild1_24 <= (signed(std_logic_vector(resize(\#regX_13\,64))));

  \#regX_9\ <= unsigned(wild5_0(12 downto 9));

  \#tupIn_app_arg_2\ <= wild1_27;

  \#regX_10\ <= unsigned(wild5_0(12 downto 9));

  \#regY_0\ <= unsigned(wild5_0(8 downto 5));

  \#x_app_arg_7\ <= wild1_28;

  wild1_25 <= (signed(std_logic_vector(resize(\#regX_14\,64))));

  wild7_0 <= (signed(std_logic_vector(resize(\#regY_3\,64))));

  wild1_26 <= (signed(std_logic_vector(resize(\#regX_15\,64))));

  \#regX_11\ <= unsigned(wild5(12 downto 9));

  \#regY_1\ <= unsigned(wild5(8 downto 5));

  \#regX_12\ <= unsigned(wild5(12 downto 9));

  \#regY_2\ <= unsigned(wild5(8 downto 5));

  \#regX_13\ <= unsigned(wild5_0(12 downto 9));

  wild1_27 <= (signed(std_logic_vector(resize(\#regY_4\,64))));

  wild1_28 <= (signed(std_logic_vector(resize(\#regX_16\,64))));

  \#regX_14\ <= unsigned(wild5_0(12 downto 9));

  \#regX_15\ <= unsigned(wild5_0(12 downto 9));

  \#regY_3\ <= unsigned(wild5_0(8 downto 5));

  \#regY_4\ <= unsigned(wild5_0(8 downto 5));

  \#regX_16\ <= unsigned(wild5_0(12 downto 9));
end;

