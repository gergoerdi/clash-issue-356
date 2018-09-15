-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_decodeps2 is
  port(\$d(%,%)\ : in chip8_types.product;
       eta       : in std_logic_vector(1 downto 0);
       w1        : out std_logic_vector(8 downto 0));
end;

architecture structural of cactus_clash_ps2_decodeps2 is
  signal \s'\                           : std_logic_vector(12 downto 0);
  signal a1                             : std_logic_vector(8 downto 0);
  signal ds                             : chip8_types.tup2_14;
  signal s1                             : std_logic_vector(12 downto 0);
  signal \#s'_0\                        : std_logic_vector(12 downto 0);
  signal \w'\                           : std_logic_vector(8 downto 0);
  signal ds1                            : chip8_types.tup2_14;
  signal a1_0                           : std_logic_vector(8 downto 0);
  signal \#ds1_case_alt\                : chip8_types.tup2_14;
  signal result                         : std_logic_vector(12 downto 0);
  signal \#ds1_app_arg\                 : std_logic_vector(8 downto 0);
  signal \#ds1_app_arg_0\               : std_logic_vector(8 downto 0);
  signal x1                             : std_logic;
  signal \#$sshiftInLeftOut\            : unsigned(7 downto 0);
  signal i                              : unsigned(2 downto 0);
  signal x2                             : std_logic_vector(8 downto 0);
  signal \#ds1_app_arg_1\               : std_logic;
  signal x2_0                           : unsigned(7 downto 0);
  signal x2_1                           : unsigned(7 downto 0);
  signal \#ds1_case_alt_selection_res\  : boolean;
  signal result_selection_res           : boolean;
  signal \#ds1_app_arg_selection_res\   : boolean;
  signal \#ds1_app_arg_0_selection_res\ : boolean;
begin
  \s'\ <= ds.tup2_14_sel1;

  w1 <= a1;

  a1 <= ds.tup2_14_sel0;

  with (eta(1 downto 1)) select
    ds <= ( tup2_14_sel0 => std_logic_vector'("0" & "--------")
          , tup2_14_sel1 => s1 ) when "0",
          ( tup2_14_sel0 => \w'\
          , tup2_14_sel1 => \#s'_0\ ) when others;

  -- register begin 
  cactus_clash_ps2_decodeps2_register : process(\$d(%,%)\.product_sel0,\$d(%,%)\.product_sel1)
  begin
    if \$d(%,%)\.product_sel1 = '1' then
      s1 <= std_logic_vector'("00" & "-----------")
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

  \#s'_0\ <= ds1.tup2_14_sel1;

  \w'\ <= a1_0;

  with (s1(12 downto 11)) select
    ds1 <= \#ds1_case_alt\ when "00",
           ( tup2_14_sel0 => std_logic_vector'("0" & "--------")
           , tup2_14_sel1 => result ) when "01",
           ( tup2_14_sel0 => std_logic_vector'("0" & "--------")
           , tup2_14_sel1 => std_logic_vector'("11" & (\#ds1_app_arg\) & "--") ) when "10",
           ( tup2_14_sel0 => \#ds1_app_arg_0\
           , tup2_14_sel1 => std_logic_vector'("00" & "-----------") ) when others;

  a1_0 <= ds1.tup2_14_sel0;

  \#ds1_case_alt_selection_res\ <= x1 = ('0');

  \#ds1_case_alt\ <= ( tup2_14_sel0 => std_logic_vector'("0" & "--------")
                     , tup2_14_sel1 => std_logic_vector'("01" & (std_logic_vector(resize(to_unsigned(0,64),8))) & (std_logic_vector(to_unsigned(0,3)))) ) when \#ds1_case_alt_selection_res\ else
                     ( tup2_14_sel0 => std_logic_vector'("0" & "--------")
                     , tup2_14_sel1 => std_logic_vector'("00" & "-----------") );

  result_selection_res <= i = to_unsigned(7,3);

  result <= std_logic_vector'("10" & (std_logic_vector(\#$sshiftInLeftOut\)) & "---") when result_selection_res else
            std_logic_vector'("01" & (std_logic_vector(\#$sshiftInLeftOut\)) & (std_logic_vector(i + to_unsigned(1,3))));

  \#ds1_app_arg_selection_res\ <= x1 /= \#ds1_app_arg_1\;

  \#ds1_app_arg\ <= std_logic_vector'("1" & (std_logic_vector(x2_1))) when \#ds1_app_arg_selection_res\ else
                    std_logic_vector'("0" & "--------");

  \#ds1_app_arg_0_selection_res\ <= x1 = ('1');

  \#ds1_app_arg_0\ <= x2 when \#ds1_app_arg_0_selection_res\ else
                      std_logic_vector'("0" & "--------");

  x1 <= eta(0);

  cactus_clash_ps2_shiftinleft_sshiftinleftout : entity cactus_clash_ps2_shiftinleft
    port map
      ( result => \#$sshiftInLeftOut\
      , b      => x1
      , bs     => x2_0 );

  i <= unsigned(s1(2 downto 0));

  x2 <= s1(10 downto 2);

  cactus_clash_ps2_parity_ds1_app_arg_1 : entity cactus_clash_ps2_parity
    port map
      (result => \#ds1_app_arg_1\, eta    => x2_1);

  x2_0 <= unsigned(s1(10 downto 3));

  x2_1 <= unsigned(s1(10 downto 3));
end;

