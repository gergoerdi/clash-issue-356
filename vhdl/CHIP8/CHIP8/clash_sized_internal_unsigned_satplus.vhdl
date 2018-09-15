-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity clash_sized_internal_unsigned_satplus is
  port(\#pTS\ : in unsigned(2 downto 0);
       result : out unsigned(2 downto 0));
end;

architecture structural of clash_sized_internal_unsigned_satplus is
  signal r                    : unsigned(3 downto 0);
  signal result_selection_res : boolean;
  signal \#bv\                : std_logic_vector(3 downto 0);
  signal \#i\                 : signed(63 downto 0);
begin
  r <= resize(\#pTS\,4) + resize(to_unsigned(1,3),4);

  \#bv\ <= (std_logic_vector(r));

  \#i\ <= to_signed(0,64);

  result_selection_res <= ( \#bv\(\#bv\'high) ) = '0';

  result <= resize(r,3) when result_selection_res else
            to_unsigned(7,3);
end;

