-- Automatically generated VHDL-93
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;
use std.textio.all;
use work.all;
use work.chip8_types.all;

entity chip8_keypad_fromscancode is
  port(ds          : in chip8_types.scancode;
       \#case_alt\ : out std_logic_vector(5 downto 0));
end;

architecture structural of chip8_keypad_fromscancode is
  signal \#case_alt_0\        : std_logic_vector(5 downto 0);
  signal ext                  : boolean;
  signal \#case_scrut\        : std_logic_vector(12 downto 0);
  signal \#app_arg\           : chip8_types.array_of_std_logic_vector_13(0 to 15);
  signal \#app_arg_0\         : boolean;
  signal key                  : unsigned(3 downto 0);
  signal code                 : unsigned(7 downto 0);
  signal a1                   : chip8_types.tup2_9;
  signal ev                   : std_logic_vector(0 downto 0);
  signal \#app_arg_res\       : chip8_types.array_of_tup2_9(0 to 15);
  signal \#app_arg_res_res\   : chip8_types.array_of_unsigned_8(0 to 15);
  signal \#vec\               : chip8_types.array_of_array_of_4_unsigned_8(0 to 3);
  signal \#app_arg_res_res_0\ : chip8_types.array_of_unsigned_4(0 to 15);
  signal \#vec_0\             : chip8_types.array_of_array_of_4_unsigned_4(0 to 3);
begin
  \#case_alt\ <= std_logic_vector'("0" & "-----") when ext else
                 \#case_alt_0\;

  with (\#case_scrut\(12 downto 12)) select
    \#case_alt_0\ <= std_logic_vector'("0" & "-----") when "0",
                     std_logic_vector'("1" & ((chip8_types.toSLV(\#app_arg_0\)
                      & std_logic_vector(key)))) when others;

  ext <= ds.scancode_sel1;

  -- fold begin
  fold : block
    -- given a level and a depth, calculate the corresponding index into the
    -- intermediate array
    function depth2index (levels,depth : in natural) return natural is
    begin
      return (2 ** levels - 2 ** depth);
    end function;

    signal intermediate : chip8_types.array_of_std_logic_vector_13(0 to (2*16)-2);
    constant levels : natural := natural (ceil (log2 (real (16))));
  begin
    -- put input array into the first half of the intermediate array
    intermediate(0 to 16-1) <= \#app_arg\;

    -- Create the tree of instantiated components
    make_tree : if levels /= 0 generate
      tree_depth : for d in levels-1 downto 0 generate
        tree_depth_loop : for i in 0 to (natural(2**d) - 1) generate
          with (intermediate(depth2index(levels+1,d+2)+(2*i))(12 downto 12)) select
      intermediate(depth2index(levels+1,d+1)+i) <= intermediate(depth2index(levels+1,d+2)+(2*i)+1) when "0",
                 intermediate(depth2index(levels+1,d+2)+(2*i)) when others;
        end generate;
      end generate;
    end generate;

    -- The last element of the intermediate array holds the result
    \#case_scrut\ <= intermediate((2*16)-2);
  end block;
  -- fold end

  \#vec\ <= chip8_types.array_of_array_of_4_unsigned_8'( chip8_types.array_of_unsigned_8'( resize(to_unsigned(22,64),8)
                                                                                         , resize(to_unsigned(30,64),8)
                                                                                         , resize(to_unsigned(38,64),8)
                                                                                         , resize(to_unsigned(37,64),8) )
                                                       , chip8_types.array_of_unsigned_8'( resize(to_unsigned(21,64),8)
                                                                                         , resize(to_unsigned(29,64),8)
                                                                                         , resize(to_unsigned(36,64),8)
                                                                                         , resize(to_unsigned(45,64),8) )
                                                       , chip8_types.array_of_unsigned_8'( resize(to_unsigned(28,64),8)
                                                                                         , resize(to_unsigned(27,64),8)
                                                                                         , resize(to_unsigned(35,64),8)
                                                                                         , resize(to_unsigned(43,64),8) )
                                                       , chip8_types.array_of_unsigned_8'( resize(to_unsigned(26,64),8)
                                                                                         , resize(to_unsigned(34,64),8)
                                                                                         , resize(to_unsigned(33,64),8)
                                                                                         , resize(to_unsigned(42,64),8) ) );

  -- concat begin
  concat : for i_0 in \#vec\'range generate
  begin
  \#app_arg_res_res\(i_0 * 4 to ((i_0+1) * 4) - 1) <= \#vec\(i_0);
  end generate;
  -- concat end

  \#vec_0\ <= chip8_types.array_of_array_of_4_unsigned_4'( chip8_types.array_of_unsigned_4'( to_unsigned(1,4)
                                                                                           , to_unsigned(2,4)
                                                                                           , to_unsigned(3,4)
                                                                                           , to_unsigned(12,4) )
                                                         , chip8_types.array_of_unsigned_4'( to_unsigned(4,4)
                                                                                           , to_unsigned(5,4)
                                                                                           , to_unsigned(6,4)
                                                                                           , to_unsigned(13,4) )
                                                         , chip8_types.array_of_unsigned_4'( to_unsigned(7,4)
                                                                                           , to_unsigned(8,4)
                                                                                           , to_unsigned(9,4)
                                                                                           , to_unsigned(14,4) )
                                                         , chip8_types.array_of_unsigned_4'( to_unsigned(10,4)
                                                                                           , to_unsigned(0,4)
                                                                                           , to_unsigned(11,4)
                                                                                           , to_unsigned(15,4) ) );

  -- concat begin
  concat_0 : for i_1 in \#vec_0\'range generate
  begin
  \#app_arg_res_res_0\(i_1 * 4 to ((i_1+1) * 4) - 1) <= \#vec_0\(i_1);
  end generate;
  -- concat end

  -- zipWith begin
  zipwith : for i_2 in \#app_arg_res\'range generate
  begin
    \#app_arg_res\(i_2) <= ( tup2_9_sel0 => \#app_arg_res_res\(i_2)
               , tup2_9_sel1 => \#app_arg_res_res_0\(i_2) );
  end generate;
  -- zipWith end

  -- map begin
  map_r : for i_3 in \#app_arg\'range generate
  begin
    fun : block
      signal \#case_scrut_0\ : boolean;
      signal \#app_arg_1\    : signed(63 downto 0);
      signal y               : unsigned(63 downto 0);
      signal x               : unsigned(63 downto 0);
      signal x_0             : unsigned(7 downto 0);
    begin
      \#app_arg\(i_3) <= std_logic_vector'("1" & ((std_logic_vector(\#app_arg_res\(i_3).tup2_9_sel0)
                  & std_logic_vector(\#app_arg_res\(i_3).tup2_9_sel1)))) when \#case_scrut_0\ else
                 std_logic_vector'("0" & "------------");

      \#case_scrut_0\ <= tagToEnum(\#app_arg_1\);

      \#app_arg_1\ <= to_signed(1,64) when x = y else to_signed(0,64);

      y <= resize(x_0,64);

      x <= resize(code,64);

      x_0 <= \#app_arg_res\(i_3).tup2_9_sel0;
    end block;
  end generate;
  -- map end

  with (ev) select
    \#app_arg_0\ <= true when "0",
                    false when others;

  key <= a1.tup2_9_sel1;

  code <= ds.scancode_sel2;

  a1 <= ( tup2_9_sel0 => unsigned(\#case_scrut\(11 downto 4))
        , tup2_9_sel1 => unsigned(\#case_scrut\(3 downto 0)) );

  ev <= ds.scancode_sel0;
end;

