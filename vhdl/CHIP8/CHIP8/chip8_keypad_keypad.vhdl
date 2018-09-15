-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_keypad_keypad is
  port(\$d(%,%)\  : in chip8_types.product;
       \scanCode\ : in std_logic_vector(10 downto 0);
       result     : out chip8_types.tup2_3);
end;

architecture structural of chip8_keypad_keypad is
  signal event             : std_logic_vector(5 downto 0);
  signal result_0          : chip8_types.array_of_boolean(0 to 15);
  signal \#event_case_alt\ : std_logic_vector(5 downto 0);
  signal \#keys_app_arg\   : chip8_types.gatedclock;
  signal \#keys_app_arg_0\ : chip8_types.array_of_boolean(0 to 15);
  signal x1                : chip8_types.scancode;
  signal \#keys_app_arg_1\ : boolean;
  signal \iM\              : std_logic_vector(16 downto 0);
  signal x                 : chip8_types.array_of_boolean(0 to 15);
  signal result_1          : chip8_types.array_of_boolean(0 to 15);
  signal state             : boolean;
  signal wild1             : signed(63 downto 0);
  signal a1                : chip8_types.tup2_10;
  signal key               : unsigned(3 downto 0);
begin
  result <= ( tup2_3_sel0 => result_0
            , tup2_3_sel1 => event );

  with (\scanCode\(10 downto 10)) select
    event <= std_logic_vector'("0" & "-----") when "0",
             \#event_case_alt\ when others;

  -- register begin
  chip8_keypad_keypad_register : block
    signal clk : std_logic;
    signal ce : boolean;
  begin
    (clk,ce) <= \#keys_app_arg\;
    chip8_keypad_keypad_reg : process(clk,\$d(%,%)\.product_sel1)
    begin
      if \$d(%,%)\.product_sel1 = '1' then
        result_0 <= (chip8_types.array_of_boolean'(0 to 16-1 =>  false ));
      elsif rising_edge(clk) then
        if ce then
          result_0 <= \#keys_app_arg_0\
          -- pragma translate_off
          after 1 ps
          -- pragma translate_on
          ;
        end if;
      end if;
    end process;
  end block;
  -- register end

  chip8_keypad_fromscancode_event_case_alt : entity chip8_keypad_fromscancode
    port map
      ( \#case_alt\ => \#event_case_alt\
      , ds          => x1 );

  -- clockGate begin
  \#keys_app_arg\ <= (\$d(%,%)\.product_sel0,\#keys_app_arg_1\);
  -- clockGate end

  with (\iM\(16 downto 16)) select
    \#keys_app_arg_0\ <= chip8_types.array_of_boolean'(0 to 15 => true) when "0",
                         x when others;

  x1 <= ( scancode_sel0 => \scanCode\(9 downto 9)
        , scancode_sel1 => chip8_types.fromSLV(\scanCode\(8 downto 8))
        , scancode_sel2 => unsigned(\scanCode\(7 downto 0)) );

  with (\iM\(16 downto 16)) select
    \#keys_app_arg_1\ <= false when "0",
                         true when others;

  with (event(5 downto 5)) select
    \iM\ <= std_logic_vector'("0" & "----------------") when "0",
            std_logic_vector'("1" & ((chip8_types.toSLV(result_1(0)) & 
            chip8_types.toSLV(result_1(1)) & 
            chip8_types.toSLV(result_1(2)) & 
            chip8_types.toSLV(result_1(3)) & 
            chip8_types.toSLV(result_1(4)) & 
            chip8_types.toSLV(result_1(5)) & 
            chip8_types.toSLV(result_1(6)) & 
            chip8_types.toSLV(result_1(7)) & 
            chip8_types.toSLV(result_1(8)) & 
            chip8_types.toSLV(result_1(9)) & 
            chip8_types.toSLV(result_1(10)) & 
            chip8_types.toSLV(result_1(11)) & 
            chip8_types.toSLV(result_1(12)) & 
            chip8_types.toSLV(result_1(13)) & 
            chip8_types.toSLV(result_1(14)) & 
            chip8_types.toSLV(result_1(15))))) when others;

  x <= ( chip8_types.fromSLV(\iM\(15 downto 15))
       , chip8_types.fromSLV(\iM\(14 downto 14))
       , chip8_types.fromSLV(\iM\(13 downto 13))
       , chip8_types.fromSLV(\iM\(12 downto 12))
       , chip8_types.fromSLV(\iM\(11 downto 11))
       , chip8_types.fromSLV(\iM\(10 downto 10))
       , chip8_types.fromSLV(\iM\(9 downto 9))
       , chip8_types.fromSLV(\iM\(8 downto 8))
       , chip8_types.fromSLV(\iM\(7 downto 7))
       , chip8_types.fromSLV(\iM\(6 downto 6))
       , chip8_types.fromSLV(\iM\(5 downto 5))
       , chip8_types.fromSLV(\iM\(4 downto 4))
       , chip8_types.fromSLV(\iM\(3 downto 3))
       , chip8_types.fromSLV(\iM\(2 downto 2))
       , chip8_types.fromSLV(\iM\(1 downto 1))
       , chip8_types.fromSLV(\iM\(0 downto 0)) );

  -- replace begin
  replacevec : block
    signal vec_index : integer range 0 to 16-1;
  begin
    vec_index <= to_integer((wild1))
    -- pragma translate_off
                 mod 16
    -- pragma translate_on
                 ;

    process(vec_index,result_0,state)
      variable ivec : chip8_types.array_of_boolean(0 to 15);
    begin
      ivec := result_0;
      ivec(vec_index) := state;
      result_1 <= ivec;
    end process;
  end block;
  -- replace end

  state <= a1.tup2_10_sel0;

  wild1 <= (signed(std_logic_vector(resize(key,64))));

  a1 <= ( tup2_10_sel0 => chip8_types.fromSLV(event(4 downto 4))
        , tup2_10_sel1 => unsigned(event(3 downto 0)) );

  key <= a1.tup2_10_sel1;
end;

