-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_vga_vgadriver is
  port(\$d(%,%)\ : in chip8_types.product;
       result    : out chip8_types.vgadriver);
end;

architecture structural of cactus_clash_vga_vgadriver is
  signal result_0          : std_logic_vector(10 downto 0);
  signal result_1          : std_logic_vector(10 downto 0);
  signal \vgaStartLine1\   : boolean;
  signal result_2          : std_logic;
  signal result_3          : std_logic;
  signal ds                : boolean;
  signal ds_0              : boolean;
  signal \hCount\          : unsigned(9 downto 0);
  signal x                 : boolean;
  signal x_0               : boolean;
  signal \vCount\          : unsigned(9 downto 0);
  signal result_4          : unsigned(9 downto 0);
  signal \#vCount_app_arg\ : chip8_types.gatedclock;
  signal result_5          : unsigned(9 downto 0);
  signal f2                : unsigned(9 downto 0);
  signal \endLine\         : boolean;
  signal f2_0              : unsigned(9 downto 0);
  signal b                 : boolean;
  signal \#i\              : signed(63 downto 0);
  signal \#i_0\            : signed(63 downto 0);
  signal \#i_1\            : signed(63 downto 0);
  signal \#i_2\            : signed(63 downto 0);
begin
  result <= ( vgadriver_sel0 => not result_2
            , vgadriver_sel1 => not result_3
            , vgadriver_sel2 => \vgaStartLine1\ and (\vCount\ = to_unsigned(491,10))
            , vgadriver_sel3 => \vgaStartLine1\
            , vgadriver_sel4 => result_0
            , vgadriver_sel5 => result_1 );

  result_0 <= std_logic_vector'("1" & (std_logic_vector(\hCount\))) when ds else
              std_logic_vector'("0" & "----------");

  result_1 <= std_logic_vector'("1" & (std_logic_vector(\vCount\))) when ds_0 else
              std_logic_vector'("0" & "----------");

  \vgaStartLine1\ <= \hCount\ = to_unsigned(656,10);

  \#i\ <= to_signed(0,64);

  \#i_0\ <= to_signed(1,64);

  result_2 <= '1' when x else
              '0';

  \#i_1\ <= to_signed(0,64);

  \#i_2\ <= to_signed(1,64);

  result_3 <= '1' when x_0 else
              '0';

  ds <= \hCount\ < to_unsigned(640,10);

  ds_0 <= \vCount\ < to_unsigned(480,10);

  -- register begin 
  cactus_clash_vga_vgadriver_register : process(\$d(%,%)\.product_sel0,\$d(%,%)\.product_sel1)
  begin
    if \$d(%,%)\.product_sel1 = '1' then
      \hCount\ <= to_unsigned(0,10)
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    elsif rising_edge(\$d(%,%)\.product_sel0) then
      \hCount\ <= result_4
      -- pragma translate_off
      after 1 ps
      -- pragma translate_on
      ;
    end if;
  end process;
  -- register end

  x <= (to_unsigned(491,10) <= \vCount\) and (\vCount\ < to_unsigned(493,10));

  x_0 <= (to_unsigned(656,10) <= \hCount\) and (\hCount\ < to_unsigned(752,10));

  -- register begin
  cactus_clash_vga_vgadriver_register_0 : block
    signal clk_0 : std_logic;
    signal ce_0 : boolean;
  begin
    (clk_0,ce_0) <= \#vCount_app_arg\;
    cactus_clash_vga_vgadriver_reg_0 : process(clk_0,\$d(%,%)\.product_sel1)
    begin
      if \$d(%,%)\.product_sel1 = '1' then
        \vCount\ <= to_unsigned(0,10);
      elsif rising_edge(clk_0) then
        if ce_0 then
          \vCount\ <= result_5
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  result_4 <= to_unsigned(0,10) when \endLine\ else
              f2;

  -- clockGate begin
  \#vCount_app_arg\ <= (\$d(%,%)\.product_sel0,\endLine\);
  -- clockGate end

  result_5 <= to_unsigned(0,10) when b else
              f2_0;

  f2 <= \hCount\ + to_unsigned(1,10);

  \endLine\ <= \hCount\ = to_unsigned(799,10);

  f2_0 <= \vCount\ + to_unsigned(1,10);

  b <= \vCount\ = to_unsigned(523,10);
end;

