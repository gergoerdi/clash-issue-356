-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity CHIP8 is
  port(-- clock
       CLK_25MHZ : in std_logic;
       -- asynchronous reset: active high
       RESET     : in std_logic;
       RX        : in std_logic;
       PS2_CLK   : in std_logic;
       PS2_DATA  : in std_logic;
       TX        : out std_logic;
       VGA_VSYNC : out std_logic;
       VGA_HSYNC : out std_logic;
       VGA_RED   : out unsigned(3 downto 0);
       VGA_GREEN : out unsigned(3 downto 0);
       VGA_BLUE  : out unsigned(3 downto 0));
end;

architecture structural of CHIP8 is
  signal \#app_arg\                 : std_logic;
  signal \#app_arg_0\               : std_logic;
  signal \#app_arg_1\               : unsigned(3 downto 0);
  signal ds                         : std_logic;
  signal ds1                        : std_logic;
  signal \#case_scrut\              : chip8_types.vgadriver;
  signal result_0                   : std_logic;
  signal b                          : boolean;
  signal \$d(%,%)\                  : chip8_types.product;
  signal result_2                   : std_logic;
  signal result_3                   : boolean;
  signal result_4                   : boolean;
  signal result_5                   : std_logic_vector(6 downto 0);
  signal \#case_alt\                : std_logic_vector(6 downto 0);
  signal x1                         : unsigned(9 downto 0);
  signal ds4                        : std_logic_vector(10 downto 0);
  signal \#x_case_scrut\            : chip8_types.vgadriver;
  signal result_6                   : std_logic_vector(5 downto 0);
  signal \#case_alt_0\              : std_logic_vector(5 downto 0);
  signal x1_0                       : unsigned(9 downto 0);
  signal ds5                        : std_logic_vector(10 downto 0);
  signal \#x_case_scrut_0\          : chip8_types.vgadriver;
  signal wild                       : signed(63 downto 0);
  signal x                          : chip8_types.tup2_1;
  signal x_0                        : unsigned(10 downto 0);
  signal a1                         : std_logic;
  signal x_1                        : unsigned(10 downto 0);
  signal ds4_0                      : std_logic_vector(1 downto 0);
  signal a1_0                       : unsigned(5 downto 0);
  signal b1                         : unsigned(4 downto 0);
  signal \cpuOut\                   : chip8_types.cpuout;
  signal r                          : chip8_types.tup2_2;
  signal ds3                        : chip8_types.tup2_2;
  signal result_7                   : unsigned(5 downto 0);
  signal result_8                   : unsigned(4 downto 0);
  signal \cpuInVBlank\              : boolean;
  signal result_9                   : std_logic;
  signal v                          : unsigned(5 downto 0);
  signal v_0                        : unsigned(4 downto 0);
  signal ds2                        : boolean;
  signal \keyEvent\                 : std_logic_vector(5 downto 0);
  signal keys                       : chip8_types.array_of_boolean(0 to 15);
  signal \#cpuInFB_app_arg\         : boolean;
  signal result_10                  : signed(63 downto 0);
  signal wild_0                     : unsigned(63 downto 0);
  signal wild_1                     : signed(63 downto 0);
  signal wild_2                     : signed(63 downto 0);
  signal x_2                        : std_logic;
  signal ds_0                       : chip8_types.tup2_3;
  signal tup                        : chip8_types.tup2_1;
  signal \#wrM_case_alt\            : std_logic_vector(12 downto 0);
  signal \#ds_app_arg\              : std_logic_vector(10 downto 0);
  signal y                          : std_logic_vector(1 downto 0);
  signal \#ds_app_arg_0\            : std_logic_vector(8 downto 0);
  signal result_11                  : std_logic_vector(7 downto 0);
  signal eta2                       : chip8_types.tup2_4;
  signal \#ds_app_arg_1\            : std_logic_vector(1 downto 0);
  signal \#x_app_arg\               : boolean;
  signal \#eta2_case_alt\           : unsigned(10 downto 0);
  signal wild_3                     : signed(63 downto 0);
  signal wild_4                     : signed(63 downto 0);
  signal x_3                        : std_logic_vector(7 downto 0);
  signal tup_0                      : chip8_types.tup2_5;
  signal \#wrM_case_alt_0\          : std_logic_vector(20 downto 0);
  signal y_0                        : std_logic_vector(8 downto 0);
  signal a1_1                       : unsigned(5 downto 0);
  signal b1_0                       : unsigned(4 downto 0);
  signal x_4                        : chip8_types.tup2_5;
  signal eta2_0                     : chip8_types.tup2_6;
  signal ds1_0                      : unsigned(11 downto 0);
  signal x_5                        : unsigned(11 downto 0);
  signal a1_2                       : std_logic_vector(7 downto 0);
  signal x_6                        : unsigned(11 downto 0);
  signal \#eta2_case_alt_0\         : std_logic_vector(8 downto 0);
  signal ds2_0                      : std_logic_vector(8 downto 0);
  signal \x#\                       : unsigned(63 downto 0);
  signal a1_3                       : unsigned(7 downto 0);
  signal \#app_arg_1_selection_res\ : std_logic_vector(0 downto 0);
  signal \#x_case_scrut_fun_arg\    : chip8_types.product;
  signal \#x_case_scrut_0_fun_arg\  : chip8_types.product;
  signal \#cpuOut_fun_arg\          : chip8_types.cpuin;
  signal \#ds_app_arg_1_fun_arg\    : chip8_types.ps2;
  signal result                     : chip8_types.tup2_7;
  signal result_1                   : chip8_types.tup5;
begin
  result <= ( tup2_7_sel0 => '0'
            , tup2_7_sel1 => ( tup5_sel0 => \#app_arg\
            , tup5_sel1 => \#app_arg_0\
            , tup5_sel2 => \#app_arg_1\
            , tup5_sel3 => \#app_arg_1\
            , tup5_sel4 => \#app_arg_1\ ) );

  chip8_delayed1_0_app_arg : entity chip8_delayed1_0
    port map
      ( \#case_alt\ => \#app_arg\
      , clk         => CLK_25MHZ
      , rst         => RESET
      , ds          => ds );

  chip8_delayed1_0_app_arg_0 : entity chip8_delayed1_0
    port map
      ( \#case_alt\ => \#app_arg_0\
      , clk         => CLK_25MHZ
      , rst         => RESET
      , ds          => ds1 );

  \#app_arg_1_selection_res\ <= std_logic_vector'(0 => result_0);

  with (\#app_arg_1_selection_res\) select
    \#app_arg_1\ <= to_unsigned(15,4) when "1",
                    unsigned'(4-1 downto 0 => '0') when others;

  ds <= \#case_scrut\.vgadriver_sel0;

  ds1 <= \#case_scrut\.vgadriver_sel1;

  cactus_clash_vga_vgadriver_case_scrut : entity cactus_clash_vga_vgadriver
    port map
      ( result    => \#case_scrut\
      , \$d(%,%)\ => \$d(%,%)\ );

  result_0 <= result_2 when b else
              '0';

  b <= result_3 and result_4;

  \$d(%,%)\ <= ( product_sel0 => CLK_25MHZ
               , product_sel1 => RESET );

  -- blockRam begin
  chip8_blockram : block
    signal ram : chip8_types.array_of_std_logic(0 to 2047) := (chip8_types.array_of_std_logic'(0 to 2048-1 =>  ('0') ));
    signal rd  : integer range 0 to 2048 - 1;
    signal wr  : integer range 0 to 2048 - 1; 
  begin
    rd <= to_integer((wild))
    -- pragma translate_off
                  mod 2048
    -- pragma translate_on
                  ;

    wr <= to_integer(result_10)
    -- pragma translate_off
                  mod 2048
    -- pragma translate_on
                  ;

    blockram_sync : process(CLK_25MHZ)
    begin
      if rising_edge(CLK_25MHZ) then
        if \#cpuInFB_app_arg\ then
          ram(wr) <= x_2;
        end if;
        result_2 <= ram(rd)
        -- pragma translate_off
        after 1 ps
        -- pragma translate_on
        ;
      end if;
    end process; 
  end block;
  --end blockRam

  with (result_5(6 downto 6)) select
    result_3 <= false when "0",
                true when others;

  with (result_6(5 downto 5)) select
    result_4 <= false when "0",
                true when others;

  with (ds4(10 downto 10)) select
    result_5 <= std_logic_vector'("0" & "------") when "0",
                \#case_alt\ when others;

  chip8_video_chipx_case_alt : entity chip8_video_chipx
    port map
      (result => \#case_alt\, x      => x1);

  x1 <= unsigned(ds4(9 downto 0));

  ds4 <= \#x_case_scrut\.vgadriver_sel4;

  \#x_case_scrut_fun_arg\ <= ( product_sel0 => CLK_25MHZ
                             , product_sel1 => RESET );

  cactus_clash_vga_vgadriver_x_case_scrut : entity cactus_clash_vga_vgadriver
    port map
      ( result    => \#x_case_scrut\
      , \$d(%,%)\ => \#x_case_scrut_fun_arg\ );

  with (ds5(10 downto 10)) select
    result_6 <= std_logic_vector'("0" & "-----") when "0",
                \#case_alt_0\ when others;

  chip8_video_chipy_case_alt_0 : entity chip8_video_chipy
    port map
      (result => \#case_alt_0\, y      => x1_0);

  x1_0 <= unsigned(ds5(9 downto 0));

  ds5 <= \#x_case_scrut_0\.vgadriver_sel5;

  \#x_case_scrut_0_fun_arg\ <= ( product_sel0 => CLK_25MHZ
                               , product_sel1 => RESET );

  cactus_clash_vga_vgadriver_x_case_scrut_0 : entity cactus_clash_vga_vgadriver
    port map
      ( result    => \#x_case_scrut_0\
      , \$d(%,%)\ => \#x_case_scrut_0_fun_arg\ );

  wild <= (signed(std_logic_vector(resize((unsigned((std_logic_vector'(std_logic_vector'((std_logic_vector(a1_0))) & std_logic_vector'((std_logic_vector(b1))))))),64))));

  x <= ( tup2_1_sel0 => unsigned(\#wrM_case_alt\(11 downto 1))
       , tup2_1_sel1 => \#wrM_case_alt\(0) );

  x_0 <= tup.tup2_1_sel0;

  a1 <= y(0);

  x_1 <= eta2.tup2_4_sel0;

  ds4_0 <= \cpuOut\.cpuout_sel3;

  a1_0 <= r.tup2_2_sel0;

  b1 <= r.tup2_2_sel1;

  \#cpuOut_fun_arg\ <= ( cpuin_sel0 => resize((resize(wild_0(7 downto 0),64)),8)
                       , cpuin_sel1 => result_9
                       , cpuin_sel2 => keys
                       , cpuin_sel3 => \keyEvent\
                       , cpuin_sel4 => \cpuInVBlank\ );

  clash_explicit_mealy_mealy_cpuout : entity clash_explicit_mealy_mealy
    port map
      ( result => \cpuOut\
      , clk    => CLK_25MHZ
      , rst    => RESET
      , i1     => \#cpuOut_fun_arg\ );

  r <= ( tup2_2_sel0 => result_7
       , tup2_2_sel1 => result_8 );

  ds3 <= \cpuOut\.cpuout_sel2;

  with (result_5(6 downto 6)) select
    result_7 <= to_unsigned(0,6) when "0",
                v when others;

  with (result_6(5 downto 5)) select
    result_8 <= to_unsigned(0,5) when "0",
                v_0 when others;

  chip8_delayed1_cpuinvblank : entity chip8_delayed1
    port map
      ( \#case_alt\ => \cpuInVBlank\
      , clk         => CLK_25MHZ
      , rst         => RESET
      , ds          => ds2 );

  -- blockRam begin
  chip8_blockram_0 : block
    signal ram_0 : chip8_types.array_of_std_logic(0 to 2047) := (chip8_types.array_of_std_logic'(0 to 2048-1 =>  ('0') ));
    signal rd_0  : integer range 0 to 2048 - 1;
    signal wr_0  : integer range 0 to 2048 - 1; 
  begin
    rd_0 <= to_integer((wild_1))
    -- pragma translate_off
                  mod 2048
    -- pragma translate_on
                  ;

    wr_0 <= to_integer(result_10)
    -- pragma translate_off
                  mod 2048
    -- pragma translate_on
                  ;

    blockram_sync_0 : process(CLK_25MHZ)
    begin
      if rising_edge(CLK_25MHZ) then
        if \#cpuInFB_app_arg\ then
          ram_0(wr_0) <= x_2;
        end if;
        result_9 <= ram_0(rd_0)
        -- pragma translate_off
        after 1 ps
        -- pragma translate_on
        ;
      end if;
    end process; 
  end block;
  --end blockRam

  v <= unsigned(result_5(5 downto 0));

  v_0 <= unsigned(result_6(4 downto 0));

  ds2 <= \#case_scrut\.vgadriver_sel2;

  \keyEvent\ <= ds_0.tup2_3_sel1;

  keys <= ds_0.tup2_3_sel0;

  with (\#wrM_case_alt\(12 downto 12)) select
    \#cpuInFB_app_arg\ <= false when "0",
                          true when others;

  result_10 <= wild_2;

  wild_0 <= unsigned(std_logic_vector((signed(std_logic_vector(resize(unsigned(result_11),64))))));

  wild_1 <= (signed(std_logic_vector(resize(\#eta2_case_alt\,64))));

  wild_2 <= (signed(std_logic_vector(resize(x_0,64))));

  x_2 <= tup.tup2_1_sel1;

  chip8_keypad_keypad_ds_0 : entity chip8_keypad_keypad
    port map
      ( result     => ds_0
      , \$d(%,%)\  => \$d(%,%)\
      , \scanCode\ => \#ds_app_arg\ );

  with (\#wrM_case_alt\(12 downto 12)) select
    tup <= chip8_types.tup2_1'( unsigned'(0 to 10 => '-'), '-' ) when "0",
           x when others;

  with (y(1 downto 1)) select
    \#wrM_case_alt\ <= std_logic_vector'("0" & "------------") when "0",
                       std_logic_vector'("1" & ((std_logic_vector(x_1)
                        & chip8_types.toSLV(a1)))) when others;

  cactus_clash_ps2_parsescancode_ds_app_arg : entity cactus_clash_ps2_parsescancode
    port map
      ( w1        => \#ds_app_arg\
      , \$d(%,%)\ => \$d(%,%)\
      , eta       => \#ds_app_arg_0\ );

  y <= eta2.tup2_4_sel1;

  cactus_clash_ps2_decodeps2_ds_app_arg_0 : entity cactus_clash_ps2_decodeps2
    port map
      ( w1        => \#ds_app_arg_0\
      , \$d(%,%)\ => \$d(%,%)\
      , eta       => \#ds_app_arg_1\ );

  -- blockRamFile begin
  chip8_blockramfile : block
    type ramtype is array(natural range <>) of bit_vector(8-1 downto 0);

    impure function initramfromfile (RamFileName : in string) return ramtype is
      FILE RamFile : text open read_mode is RamFileName;
      variable RamFileLine : line;
      variable RAM : ramtype(0 to 4096-1);
    begin
      for i in RAM'range loop
        readline(RamFile,RamFileLine);
        read(RamFileLine,RAM(i));
      end loop;
      return RAM;
    end function;

    signal ram_1 : ramtype(0 to 4096-1) := initramfromfile("image.rom");
    signal rd_1  : integer range 0 to 4096-1;
    signal wr_1  : integer range 0 to 4096-1; 
  begin
    rd_1 <= to_integer((wild_3))
    -- pragma translate_off
                  mod 4096
    -- pragma translate_on
                  ;

    wr_1 <= to_integer((wild_4))
    -- pragma translate_off
                  mod 4096
    -- pragma translate_on
                  ;

    blockramfile_sync : process(CLK_25MHZ)
    begin
      if rising_edge(CLK_25MHZ) then
        if \#x_app_arg\ then
          ram_1(wr_1) <= to_bitvector(x_3);
        end if;
        result_11 <= to_stdlogicvector(ram_1(rd_1))
        -- pragma translate_off
        after 1 ps
        -- pragma translate_on
        ;
      end if;
    end process; 
  end block;
  -- blockRamFile end

  eta2 <= ( tup2_4_sel0 => \#eta2_case_alt\
          , tup2_4_sel1 => ds4_0 );

  \#ds_app_arg_1_fun_arg\ <= ( ps2_sel0 => PS2_CLK
                             , ps2_sel1 => PS2_DATA );

  cactus_clash_ps2_sampleps2_ds_app_arg_1 : entity cactus_clash_ps2_sampleps2
    port map
      ( result    => \#ds_app_arg_1\
      , \$d(%,%)\ => \$d(%,%)\
      , eta       => \#ds_app_arg_1_fun_arg\ );

  with (\#wrM_case_alt_0\(20 downto 20)) select
    \#x_app_arg\ <= false when "0",
                    true when others;

  \#eta2_case_alt\ <= unsigned((std_logic_vector'(std_logic_vector'((std_logic_vector(a1_1))) & std_logic_vector'((std_logic_vector(b1_0))))));

  wild_3 <= (signed(std_logic_vector(resize(ds1_0,64))));

  wild_4 <= (signed(std_logic_vector(resize(x_5,64))));

  x_3 <= tup_0.tup2_5_sel1;

  with (\#wrM_case_alt_0\(20 downto 20)) select
    tup_0 <= chip8_types.tup2_5'( unsigned'(0 to 11 => '-'), std_logic_vector'(0 to 7 => '-') ) when "0",
             x_4 when others;

  with (y_0(8 downto 8)) select
    \#wrM_case_alt_0\ <= std_logic_vector'("0" & "--------------------") when "0",
                         std_logic_vector'("1" & ((std_logic_vector(x_6)
                          & a1_2))) when others;

  y_0 <= eta2_0.tup2_6_sel1;

  a1_1 <= ds3.tup2_2_sel0;

  b1_0 <= ds3.tup2_2_sel1;

  x_4 <= ( tup2_5_sel0 => unsigned(\#wrM_case_alt_0\(19 downto 8))
         , tup2_5_sel1 => \#wrM_case_alt_0\(7 downto 0) );

  eta2_0 <= ( tup2_6_sel0 => ds1_0
            , tup2_6_sel1 => \#eta2_case_alt_0\ );

  ds1_0 <= \cpuOut\.cpuout_sel0;

  x_5 <= tup_0.tup2_5_sel0;

  a1_2 <= y_0(7 downto 0);

  x_6 <= eta2_0.tup2_6_sel0;

  with (ds2_0(8 downto 8)) select
    \#eta2_case_alt_0\ <= std_logic_vector'("0" & "--------") when "0",
                          std_logic_vector'("1" & (std_logic_vector(resize(unsigned(std_logic_vector((signed(std_logic_vector(\x#\))))),8)))) when others;

  ds2_0 <= \cpuOut\.cpuout_sel1;

  \x#\ <= resize(a1_3,64);

  a1_3 <= unsigned(ds2_0(7 downto 0));

  TX <= result.tup2_7_sel0;

  result_1 <= result.tup2_7_sel1;

  VGA_VSYNC <= result_1.tup5_sel0;

  VGA_HSYNC <= result_1.tup5_sel1;

  VGA_RED <= result_1.tup5_sel2;

  VGA_GREEN <= result_1.tup5_sel3;

  VGA_BLUE <= result_1.tup5_sel4;
end;

