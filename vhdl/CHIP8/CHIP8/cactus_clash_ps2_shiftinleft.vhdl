-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_shiftinleft is
  port(b      : in std_logic;
       bs     : in unsigned(7 downto 0);
       result : out unsigned(7 downto 0));
end;

architecture structural of cactus_clash_ps2_shiftinleft is
  signal wild7              : unsigned(63 downto 0);
  signal \#wild7_app_arg\   : std_logic_vector(7 downto 0);
  signal \#wild7_app_arg_0\ : chip8_types.array_of_std_logic_vector_1(0 to 7);
  signal x                  : chip8_types.array_of_std_logic(0 to 7);
  signal \#app_arg\         : chip8_types.array_of_std_logic(0 to 7);
  signal \#app_arg_0\       : chip8_types.array_of_std_logic_vector_1(0 to 7);
  signal \x#\               : unsigned(63 downto 0);
  signal \#vec\             : chip8_types.array_of_std_logic(0 to 8);
  signal x_projection       : chip8_types.tup2_15;
  signal \#vec_0\           : std_logic_vector(7 downto 0);
begin
  result <= resize((resize(wild7(7 downto 0),64)),8);

  wild7 <= unsigned(std_logic_vector((signed(std_logic_vector(resize(unsigned(\#wild7_app_arg\),64))))));

  -- concatBitVector begin
  concatbitvectoriter_loop : for i in \#wild7_app_arg_0\'range generate
    \#wild7_app_arg\(((i * 1) + 1 - 1) downto (i * 1)) <= std_logic_vector'(\#wild7_app_arg_0\(\#wild7_app_arg_0\'high - i));
  end generate;
  -- concatBitVector end

  -- map begin
  map_r : for i_0 in \#wild7_app_arg_0\'range generate
  begin
    \#wild7_app_arg_0\(i_0) <= std_logic_vector'(0 => x(i_0));
  end generate;
  -- map end

  \#vec\ <= (chip8_types.array_of_std_logic'(chip8_types.array_of_std_logic'(chip8_types.array_of_std_logic'(0 => b)) & chip8_types.array_of_std_logic'(\#app_arg\)));

  x_projection <= (\#vec\(0 to 8-1),\#vec\(8 to \#vec\'high));

  x <= x_projection.tup2_15_sel0;

  -- map begin
  map_r_0 : for i_1 in \#app_arg\'range generate
  begin
    \#app_arg\(i_1) <= \#app_arg_0\(i_1)(0);
  end generate;
  -- map end

  \#vec_0\ <= (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\x#\))))),8)));

  -- unconcatBitVector begin
  unconcatbitvectoriter_loop : for i_2 in \#app_arg_0\'range generate
    \#app_arg_0\(\#app_arg_0\'high - i_2) <= \#vec_0\(((i_2 * 1) + 1 - 1) downto (i_2 * 1));
  end generate;
  -- unconcatBitVector end

  \x#\ <= resize(bs,64);
end;

