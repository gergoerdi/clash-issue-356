-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_util_debounce is
  port(\$d(%,%)\ : in chip8_types.product;
       eta4      : in std_logic;
       \last'\   : out std_logic);
end;

architecture structural of cactus_clash_util_debounce is
  signal \s'\                       : chip8_types.tup3_0;
  signal \#last'_rec\               : std_logic;
  signal \counter'\                 : unsigned(2 downto 0);
  signal last                       : std_logic;
  signal \#counter'_case_alt\       : unsigned(2 downto 0);
  signal s1                         : chip8_types.tup3_0;
  signal counter                    : unsigned(2 downto 0);
  signal prev                       : std_logic;
  signal \#last'_rec_selection_res\ : boolean;
  signal \#counter'_selection_res\  : boolean;
begin
  \s'\ <= ( tup3_0_sel0 => \counter'\
          , tup3_0_sel1 => \#last'_rec\
          , tup3_0_sel2 => eta4 );

  \#last'_rec_selection_res\ <= \counter'\ = to_unsigned(7,3);

  \#last'_rec\ <= eta4 when \#last'_rec_selection_res\ else
                  last;

  \#counter'_selection_res\ <= eta4 /= prev;

  \counter'\ <= to_unsigned(0,3) when \#counter'_selection_res\ else
                \#counter'_case_alt\;

  last <= s1.tup3_0_sel1;

  clash_sized_internal_unsigned_satplus_counter_case_alt : entity clash_sized_internal_unsigned_satplus
    port map
      ( result => \#counter'_case_alt\
      , \#pTS\ => counter );

  -- register begin 
  cactus_clash_util_debounce_register : process(\$d(%,%)\.product_sel0,\$d(%,%)\.product_sel1)
  begin
    if \$d(%,%)\.product_sel1 = '1' then
      s1 <= ( tup3_0_sel0 => to_unsigned(0,3), tup3_0_sel1 => '0', tup3_0_sel2 => '0' )
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

  counter <= s1.tup3_0_sel0;

  prev <= s1.tup3_0_sel2;

  \last'\ <= \#last'_rec\;
end;

