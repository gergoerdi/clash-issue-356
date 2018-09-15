-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity cactus_clash_ps2_sampleps2 is
  port(\$d(%,%)\ : in chip8_types.product;
       eta       : in chip8_types.ps2;
       result    : out std_logic_vector(1 downto 0));
end;

architecture structural of cactus_clash_ps2_sampleps2 is
  signal ds1                   : std_logic;
  signal ds                    : std_logic;
  signal \#ds_app_arg\         : std_logic;
  signal eta_0                 : std_logic;
  signal ds_0                  : boolean;
  signal \#ds_app_arg_fun_arg\ : chip8_types.product;
  signal eta_0_fun_arg         : chip8_types.product;
begin
  ds1 <= eta.ps2_sel1;

  ds <= eta.ps2_sel0;

  \#ds_app_arg_fun_arg\ <= ( product_sel0 => \$d(%,%)\.product_sel0
                           , product_sel1 => \$d(%,%)\.product_sel1 );

  cactus_clash_util_debounce_ds_app_arg : entity cactus_clash_util_debounce
    port map
      ( \last'\   => \#ds_app_arg\
      , \$d(%,%)\ => \#ds_app_arg_fun_arg\
      , eta4      => ds );

  eta_0_fun_arg <= ( product_sel0 => \$d(%,%)\.product_sel0
                   , product_sel1 => \$d(%,%)\.product_sel1 );

  cactus_clash_util_debounce_eta_0 : entity cactus_clash_util_debounce
    port map
      ( \last'\   => eta_0
      , \$d(%,%)\ => eta_0_fun_arg
      , eta4      => ds1 );

  cactus_clash_ps2_isfalling_ds_0 : entity cactus_clash_ps2_isfalling
    port map
      ( result => ds_0
      , clk    => \$d(%,%)\.product_sel0
      , rst    => \$d(%,%)\.product_sel1
      , s      => \#ds_app_arg\ );

  result <= std_logic_vector'("1" & (chip8_types.toSLV(eta_0))) when ds_0 else
            std_logic_vector'("0" & "-");
end;

