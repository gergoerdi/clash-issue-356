-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_delayed1_0 is
  port(-- clock
       clk         : in std_logic;
       -- asynchronous reset: active high
       rst         : in std_logic;
       ds          : in std_logic;
       \#case_alt\ : out std_logic);
end;

architecture structural of chip8_delayed1_0 is
  signal o            : chip8_types.array_of_std_logic(0 to 0);
  signal ds3          : chip8_types.tup2_13;
  signal \#x_app_arg\ : chip8_types.array_of_std_logic(0 to 0);
  signal \r'\         : chip8_types.array_of_std_logic(0 to 0);
  signal \#vec\       : chip8_types.array_of_std_logic(0 to 1);
begin
  \#case_alt\ <=  o(0) ;

  o <= ds3.tup2_13_sel1;

  \#vec\ <= (chip8_types.array_of_std_logic'(chip8_types.array_of_std_logic'(chip8_types.array_of_std_logic'(0 => ds)) & chip8_types.array_of_std_logic'((\#x_app_arg\))));

  ds3 <= (\#vec\(0 to 1-1),\#vec\(1 to \#vec\'high));

  -- register begin 
  chip8_delayed1_0_register : process(clk,rst)
  begin
    if rst = '1' then
      \#x_app_arg\ <= chip8_types.array_of_std_logic'(0 => '1')
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(clk) then
      \#x_app_arg\ <= \r'\
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  \r'\ <= ds3.tup2_13_sel0;
end;

