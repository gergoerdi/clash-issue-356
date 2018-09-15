-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_isfalling is
  port(-- clock
       clk    : in std_logic;
       -- asynchronous reset: active high
       rst    : in std_logic;
       s      : in std_logic;
       result : out boolean);
end;

architecture structural of cactus_clash_ps2_isfalling is
  signal old                  : std_logic;
  signal result_selection_res : boolean;
begin
  -- register begin 
  cactus_clash_ps2_isfalling_register : process(clk,rst)
  begin
    if rst = '1' then
      old <= ('0')
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(clk) then
      old <= s
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  result_selection_res <= old = ('1');

  result <= s = ('0') when result_selection_res else
            false;
end;

