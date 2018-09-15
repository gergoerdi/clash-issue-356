-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_parsescancode is
  port(\$d(%,%)\ : in chip8_types.product;
       eta       : in std_logic_vector(8 downto 0);
       w1        : out std_logic_vector(10 downto 0));
end;

architecture structural of cactus_clash_ps2_parsescancode is
  signal ext              : boolean;
  signal ev               : std_logic_vector(0 downto 0);
  signal x1               : unsigned(7 downto 0);
  signal x                : unsigned(63 downto 0);
  signal \#ds_case_alt\   : std_logic_vector(10 downto 0);
  signal \#ds_case_alt_0\ : std_logic_vector(10 downto 0);
  signal \#ds_case_alt_1\ : std_logic_vector(3 downto 0);
  signal \#ds_case_alt_2\ : std_logic_vector(3 downto 0);
  signal \#ds_app_arg\    : std_logic_vector(10 downto 0);
  signal s1               : std_logic_vector(3 downto 0);
  signal \#ds_app_arg_0\  : std_logic_vector(3 downto 0);
  signal ds               : chip8_types.tup2_11;
  signal a1               : std_logic_vector(10 downto 0);
  signal \s'\             : std_logic_vector(3 downto 0);
begin
  ext <= chip8_types.fromSLV(s1(0 downto 0));

  ev <= s1(1 downto 1);

  x1 <= unsigned(eta(7 downto 0));

  x <= resize(x1,64);

  with (x) select
    \#ds_case_alt\ <= std_logic_vector'("0" & "----------") when x"00000000000000F0",
                      std_logic_vector'("1" & (("0"
                       & chip8_types.toSLV(true)
                       & std_logic_vector(x1)))) when others;

  with (x) select
    \#ds_case_alt_0\ <= std_logic_vector'("0" & "----------") when x"00000000000000E0",
                        std_logic_vector'("0" & "----------") when x"00000000000000F0",
                        std_logic_vector'("1" & (("0"
                         & chip8_types.toSLV(false)
                         & std_logic_vector(x1)))) when others;

  with (x) select
    \#ds_case_alt_1\ <= std_logic_vector'("10" & ("1") & (chip8_types.toSLV(true))) when x"00000000000000F0",
                        std_logic_vector'("00" & "--") when others;

  with (x) select
    \#ds_case_alt_2\ <= std_logic_vector'("01" & "--") when x"00000000000000E0",
                        std_logic_vector'("10" & ("1") & (chip8_types.toSLV(false))) when x"00000000000000F0",
                        std_logic_vector'("00" & "--") when others;

  with (s1(3 downto 2)) select
    \#ds_app_arg\ <= \#ds_case_alt_0\ when "00",
                     \#ds_case_alt\ when "01",
                     std_logic_vector'("1" & ((ev
                      & chip8_types.toSLV(ext)
                      & std_logic_vector(x1)))) when others;

  -- register begin 
  cactus_clash_ps2_parsescancode_register : process(\$d(%,%)\.product_sel0,\$d(%,%)\.product_sel1)
  begin
    if \$d(%,%)\.product_sel1 = '1' then
      s1 <= std_logic_vector'("00" & "--")
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(\$d(%,%)\.product_sel0) then
      s1 <= \s'\
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  with (s1(3 downto 2)) select
    \#ds_app_arg_0\ <= \#ds_case_alt_2\ when "00",
                       \#ds_case_alt_1\ when "01",
                       std_logic_vector'("00" & "--") when others;

  with (eta(8 downto 8)) select
    ds <= ( tup2_11_sel0 => std_logic_vector'("0" & "----------")
          , tup2_11_sel1 => s1 ) when "0",
          ( tup2_11_sel0 => \#ds_app_arg\
          , tup2_11_sel1 => \#ds_app_arg_0\ ) when others;

  a1 <= ds.tup2_11_sel0;

  w1 <= a1;

  \s'\ <= ds.tup2_11_sel1;
end;

