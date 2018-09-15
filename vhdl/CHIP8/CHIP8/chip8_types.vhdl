library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package chip8_types is



  type scancode is record
    scancode_sel0 : std_logic_vector(0 downto 0);
    scancode_sel1 : boolean;
    scancode_sel2 : unsigned(7 downto 0);
  end record;

  type array_of_unsigned_8 is array (integer range <>) of unsigned(7 downto 0);


  type array_of_boolean is array (integer range <>) of boolean;
  type tup2_12 is record
    tup2_12_sel0 : chip8_types.array_of_boolean(0 to 0);
    tup2_12_sel1 : chip8_types.array_of_boolean(0 to 0);
  end record;



  type tup2_8 is record
    tup2_8_sel0 : std_logic_vector(6 downto 0);
    tup2_8_sel1 : std_logic_vector(2 downto 0);
  end record;


  type tup2_2 is record
    tup2_2_sel0 : unsigned(5 downto 0);
    tup2_2_sel1 : unsigned(4 downto 0);
  end record;


  type cpuout is record
    cpuout_sel0 : unsigned(11 downto 0);
    cpuout_sel1 : std_logic_vector(8 downto 0);
    cpuout_sel2 : chip8_types.tup2_2;
    cpuout_sel3 : std_logic_vector(1 downto 0);
  end record;

  type tup2_14 is record
    tup2_14_sel0 : std_logic_vector(8 downto 0);
    tup2_14_sel1 : std_logic_vector(12 downto 0);
  end record;

  type tup2_9 is record
    tup2_9_sel0 : unsigned(7 downto 0);
    tup2_9_sel1 : unsigned(3 downto 0);
  end record;
  type array_of_tup2_9 is array (integer range <>) of chip8_types.tup2_9;


  type tup3 is record
    tup3_sel0 : std_logic_vector(3 downto 0);
    tup3_sel1 : unsigned(7 downto 0);
    tup3_sel2 : unsigned(7 downto 0);
  end record;

  type tup2_11 is record
    tup2_11_sel0 : std_logic_vector(10 downto 0);
    tup2_11_sel1 : std_logic_vector(3 downto 0);
  end record;

  type array_of_std_logic is array (integer range <>) of std_logic;
  type gatedclock is record
    gatedclock_sel0 : std_logic;
    gatedclock_sel1 : boolean;
  end record;
  type tup2_15 is record
    tup2_15_sel0 : chip8_types.array_of_std_logic(0 to 7);
    tup2_15_sel1 : chip8_types.array_of_std_logic(0 to 0);
  end record;
  type array_of_unsigned_4 is array (integer range <>) of unsigned(3 downto 0);
  type array_of_array_of_4_unsigned_4 is array (integer range <>) of chip8_types.array_of_unsigned_4(0 to 3);
  type tup2_13 is record
    tup2_13_sel0 : chip8_types.array_of_std_logic(0 to 0);
    tup2_13_sel1 : chip8_types.array_of_std_logic(0 to 0);
  end record;
  type product is record
    product_sel0 : std_logic;
    product_sel1 : std_logic;
  end record;
  type tup5 is record
    tup5_sel0 : std_logic;
    tup5_sel1 : std_logic;
    tup5_sel2 : unsigned(3 downto 0);
    tup5_sel3 : unsigned(3 downto 0);
    tup5_sel4 : unsigned(3 downto 0);
  end record;
  type tup2_0 is record
    tup2_0_sel0 : unsigned(7 downto 0);
    tup2_0_sel1 : std_logic_vector(8 downto 0);
  end record;

  type tup2 is record
    tup2_sel0 : std_logic_vector(3 downto 0);
    tup2_sel1 : std_logic_vector(3 downto 0);
  end record;
  type ps2 is record
    ps2_sel0 : std_logic;
    ps2_sel1 : std_logic;
  end record;
  type tup2_10 is record
    tup2_10_sel0 : boolean;
    tup2_10_sel1 : unsigned(3 downto 0);
  end record;
  type tup2_7 is record
    tup2_7_sel0 : std_logic;
    tup2_7_sel1 : chip8_types.tup5;
  end record;
  type tup2_5 is record
    tup2_5_sel0 : unsigned(11 downto 0);
    tup2_5_sel1 : std_logic_vector(7 downto 0);
  end record;
  type tup3_0 is record
    tup3_0_sel0 : unsigned(2 downto 0);
    tup3_0_sel1 : std_logic;
    tup3_0_sel2 : std_logic;
  end record;

  type array_of_array_of_4_unsigned_8 is array (integer range <>) of chip8_types.array_of_unsigned_8(0 to 3);
  type array_of_std_logic_vector_1 is array (integer range <>) of std_logic_vector(0 downto 0);

  type tup2_3 is record
    tup2_3_sel0 : chip8_types.array_of_boolean(0 to 15);
    tup2_3_sel1 : std_logic_vector(5 downto 0);
  end record;
  type tup2_6 is record
    tup2_6_sel0 : unsigned(11 downto 0);
    tup2_6_sel1 : std_logic_vector(8 downto 0);
  end record;



  type array_of_unsigned_12 is array (integer range <>) of unsigned(11 downto 0);

  type cpustate is record
    cpustate_sel0 : unsigned(7 downto 0);
    cpustate_sel1 : unsigned(7 downto 0);
    cpustate_sel2 : unsigned(11 downto 0);
    cpustate_sel3 : unsigned(11 downto 0);
    cpustate_sel4 : chip8_types.array_of_unsigned_8(0 to 15);
    cpustate_sel5 : chip8_types.array_of_unsigned_12(0 to 23);
    cpustate_sel6 : unsigned(4 downto 0);
    cpustate_sel7 : std_logic_vector(21 downto 0);
    cpustate_sel8 : unsigned(7 downto 0);
  end record;
  type vgadriver is record
    vgadriver_sel0 : std_logic;
    vgadriver_sel1 : std_logic;
    vgadriver_sel2 : boolean;
    vgadriver_sel3 : boolean;
    vgadriver_sel4 : std_logic_vector(10 downto 0);
    vgadriver_sel5 : std_logic_vector(10 downto 0);
  end record;
  type array_of_std_logic_vector_13 is array (integer range <>) of std_logic_vector(12 downto 0);


  type tup2_4 is record
    tup2_4_sel0 : unsigned(10 downto 0);
    tup2_4_sel1 : std_logic_vector(1 downto 0);
  end record;
  type cpuin is record
    cpuin_sel0 : unsigned(7 downto 0);
    cpuin_sel1 : std_logic;
    cpuin_sel2 : chip8_types.array_of_boolean(0 to 15);
    cpuin_sel3 : std_logic_vector(5 downto 0);
    cpuin_sel4 : boolean;
  end record;
  type tup2_1 is record
    tup2_1_sel0 : unsigned(10 downto 0);
    tup2_1_sel1 : std_logic;
  end record;
  function toSLV (slv : in std_logic_vector) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector;
  function toSLV (u : in unsigned) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return unsigned;
  function toSLV (b : in boolean) return std_logic_vector;
  function fromSLV (sl : in std_logic_vector) return boolean;
  function tagToEnum (s : in signed) return boolean;
  function dataToTag (b : in boolean) return signed;
  function toSLV (p : chip8_types.scancode) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.scancode;
  function toSLV (value :  chip8_types.array_of_unsigned_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_8;
  function toSLV (value :  chip8_types.array_of_boolean) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_boolean;
  function toSLV (p : chip8_types.tup2_12) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_12;
  function toSLV (p : chip8_types.tup2_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_8;
  function toSLV (p : chip8_types.tup2_2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_2;
  function toSLV (p : chip8_types.cpuout) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpuout;
  function toSLV (p : chip8_types.tup2_14) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_14;
  function toSLV (p : chip8_types.tup2_9) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_9;
  function toSLV (value :  chip8_types.array_of_tup2_9) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_tup2_9;
  function toSLV (p : chip8_types.tup3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup3;
  function toSLV (p : chip8_types.tup2_11) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_11;
  function toSLV (sl : in std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return std_logic;
  function toSLV (value :  chip8_types.array_of_std_logic) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic;
  function toSLV (p : chip8_types.gatedclock) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.gatedclock;
  function toSLV (p : chip8_types.tup2_15) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_15;
  function toSLV (value :  chip8_types.array_of_unsigned_4) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_4;
  function toSLV (value :  chip8_types.array_of_array_of_4_unsigned_4) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_array_of_4_unsigned_4;
  function toSLV (p : chip8_types.tup2_13) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_13;
  function toSLV (p : chip8_types.product) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.product;
  function toSLV (p : chip8_types.tup5) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup5;
  function toSLV (p : chip8_types.tup2_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_0;
  function toSLV (p : chip8_types.tup2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2;
  function toSLV (p : chip8_types.ps2) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.ps2;
  function toSLV (p : chip8_types.tup2_10) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_10;
  function toSLV (p : chip8_types.tup2_7) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_7;
  function toSLV (p : chip8_types.tup2_5) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_5;
  function toSLV (p : chip8_types.tup3_0) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup3_0;
  function toSLV (value :  chip8_types.array_of_array_of_4_unsigned_8) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_array_of_4_unsigned_8;
  function toSLV (value :  chip8_types.array_of_std_logic_vector_1) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic_vector_1;
  function toSLV (p : chip8_types.tup2_3) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_3;
  function toSLV (p : chip8_types.tup2_6) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_6;
  function toSLV (value :  chip8_types.array_of_unsigned_12) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_12;
  function toSLV (p : chip8_types.cpustate) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpustate;
  function toSLV (p : chip8_types.vgadriver) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.vgadriver;
  function toSLV (value :  chip8_types.array_of_std_logic_vector_13) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic_vector_13;
  function toSLV (s : in signed) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return signed;
  function toSLV (p : chip8_types.tup2_4) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_4;
  function toSLV (p : chip8_types.cpuin) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpuin;
  function toSLV (p : chip8_types.tup2_1) return std_logic_vector;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_1;
end;

package body chip8_types is
  function toSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic_vector is
  begin
    return slv;
  end;
  function toSLV (u : in unsigned) return std_logic_vector is
  begin
    return std_logic_vector(u);
  end;
  function fromSLV (slv : in std_logic_vector) return unsigned is
  begin
    return unsigned(slv);
  end;
  function toSLV (b : in boolean) return std_logic_vector is
  begin
    if b then
      return "1";
    else
      return "0";
    end if;
  end;
  function fromSLV (sl : in std_logic_vector) return boolean is
  begin
    if sl = "1" then
      return true;
    else
      return false;
    end if;
  end;
  function tagToEnum (s : in signed) return boolean is
  begin
    if s = to_signed(0,64) then
      return false;
    else
      return true;
    end if;
  end;
  function dataToTag (b : in boolean) return signed is
  begin
    if b then
      return to_signed(1,64);
    else
      return to_signed(0,64);
    end if;
  end;
  function toSLV (p : chip8_types.scancode) return std_logic_vector is
  begin
    return (toSLV(p.scancode_sel0) & toSLV(p.scancode_sel1) & toSLV(p.scancode_sel2));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.scancode is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)),fromSLV(islv(2 to 9)));
  end;
  function toSLV (value :  chip8_types.array_of_unsigned_8) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_unsigned_8(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 8);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 8) + 1 to i*8) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_8 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_unsigned_8(0 to slv'length / 8 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 8 to (i+1) * 8 - 1));
    end loop;
    return result;
  end;
  function toSLV (value :  chip8_types.array_of_boolean) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_boolean(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_boolean is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_boolean(0 to slv'length / 1 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 1 to (i+1) * 1 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.tup2_12) return std_logic_vector is
  begin
    return (toSLV(p.tup2_12_sel0) & toSLV(p.tup2_12_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_12 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)));
  end;
  function toSLV (p : chip8_types.tup2_8) return std_logic_vector is
  begin
    return (toSLV(p.tup2_8_sel0) & toSLV(p.tup2_8_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_8 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 6)),fromSLV(islv(7 to 9)));
  end;
  function toSLV (p : chip8_types.tup2_2) return std_logic_vector is
  begin
    return (toSLV(p.tup2_2_sel0) & toSLV(p.tup2_2_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 5)),fromSLV(islv(6 to 10)));
  end;
  function toSLV (p : chip8_types.cpuout) return std_logic_vector is
  begin
    return (toSLV(p.cpuout_sel0) & toSLV(p.cpuout_sel1) & toSLV(p.cpuout_sel2) & toSLV(p.cpuout_sel3));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpuout is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 11)),fromSLV(islv(12 to 20)),fromSLV(islv(21 to 31)),fromSLV(islv(32 to 33)));
  end;
  function toSLV (p : chip8_types.tup2_14) return std_logic_vector is
  begin
    return (toSLV(p.tup2_14_sel0) & toSLV(p.tup2_14_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_14 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 8)),fromSLV(islv(9 to 21)));
  end;
  function toSLV (p : chip8_types.tup2_9) return std_logic_vector is
  begin
    return (toSLV(p.tup2_9_sel0) & toSLV(p.tup2_9_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_9 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 11)));
  end;
  function toSLV (value :  chip8_types.array_of_tup2_9) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_tup2_9(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 12);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 12) + 1 to i*12) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_tup2_9 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_tup2_9(0 to slv'length / 12 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 12 to (i+1) * 12 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.tup3) return std_logic_vector is
  begin
    return (toSLV(p.tup3_sel0) & toSLV(p.tup3_sel1) & toSLV(p.tup3_sel2));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 11)),fromSLV(islv(12 to 19)));
  end;
  function toSLV (p : chip8_types.tup2_11) return std_logic_vector is
  begin
    return (toSLV(p.tup2_11_sel0) & toSLV(p.tup2_11_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_11 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 10)),fromSLV(islv(11 to 14)));
  end;
  function toSLV (sl : in std_logic) return std_logic_vector is
  begin
    return std_logic_vector'(0 => sl);
  end;
  function fromSLV (slv : in std_logic_vector) return std_logic is
    alias islv : std_logic_vector (0 to slv'length - 1) is slv;
  begin
    return islv(0);
  end;
  function toSLV (value :  chip8_types.array_of_std_logic) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_std_logic(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_std_logic(0 to slv'length / 1 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 1 to (i+1) * 1 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.gatedclock) return std_logic_vector is
  begin
    return (toSLV(p.gatedclock_sel0) & toSLV(p.gatedclock_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.gatedclock is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)));
  end;
  function toSLV (p : chip8_types.tup2_15) return std_logic_vector is
  begin
    return (toSLV(p.tup2_15_sel0) & toSLV(p.tup2_15_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_15 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)));
  end;
  function toSLV (value :  chip8_types.array_of_unsigned_4) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_unsigned_4(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 4);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 4) + 1 to i*4) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_4 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_unsigned_4(0 to slv'length / 4 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 4 to (i+1) * 4 - 1));
    end loop;
    return result;
  end;
  function toSLV (value :  chip8_types.array_of_array_of_4_unsigned_4) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_array_of_4_unsigned_4(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 16);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 16) + 1 to i*16) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_array_of_4_unsigned_4 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_array_of_4_unsigned_4(0 to slv'length / 16 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 16 to (i+1) * 16 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.tup2_13) return std_logic_vector is
  begin
    return (toSLV(p.tup2_13_sel0) & toSLV(p.tup2_13_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_13 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)));
  end;
  function toSLV (p : chip8_types.product) return std_logic_vector is
  begin
    return (toSLV(p.product_sel0) & toSLV(p.product_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.product is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)));
  end;
  function toSLV (p : chip8_types.tup5) return std_logic_vector is
  begin
    return (toSLV(p.tup5_sel0) & toSLV(p.tup5_sel1) & toSLV(p.tup5_sel2) & toSLV(p.tup5_sel3) & toSLV(p.tup5_sel4));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup5 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)),fromSLV(islv(2 to 5)),fromSLV(islv(6 to 9)),fromSLV(islv(10 to 13)));
  end;
  function toSLV (p : chip8_types.tup2_0) return std_logic_vector is
  begin
    return (toSLV(p.tup2_0_sel0) & toSLV(p.tup2_0_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 16)));
  end;
  function toSLV (p : chip8_types.tup2) return std_logic_vector is
  begin
    return (toSLV(p.tup2_sel0) & toSLV(p.tup2_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 3)),fromSLV(islv(4 to 7)));
  end;
  function toSLV (p : chip8_types.ps2) return std_logic_vector is
  begin
    return (toSLV(p.ps2_sel0) & toSLV(p.ps2_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.ps2 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)));
  end;
  function toSLV (p : chip8_types.tup2_10) return std_logic_vector is
  begin
    return (toSLV(p.tup2_10_sel0) & toSLV(p.tup2_10_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_10 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 4)));
  end;
  function toSLV (p : chip8_types.tup2_7) return std_logic_vector is
  begin
    return (toSLV(p.tup2_7_sel0) & toSLV(p.tup2_7_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_7 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 14)));
  end;
  function toSLV (p : chip8_types.tup2_5) return std_logic_vector is
  begin
    return (toSLV(p.tup2_5_sel0) & toSLV(p.tup2_5_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_5 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 11)),fromSLV(islv(12 to 19)));
  end;
  function toSLV (p : chip8_types.tup3_0) return std_logic_vector is
  begin
    return (toSLV(p.tup3_0_sel0) & toSLV(p.tup3_0_sel1) & toSLV(p.tup3_0_sel2));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup3_0 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 2)),fromSLV(islv(3 to 3)),fromSLV(islv(4 to 4)));
  end;
  function toSLV (value :  chip8_types.array_of_array_of_4_unsigned_8) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_array_of_4_unsigned_8(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 32);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 32) + 1 to i*32) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_array_of_4_unsigned_8 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_array_of_4_unsigned_8(0 to slv'length / 32 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 32 to (i+1) * 32 - 1));
    end loop;
    return result;
  end;
  function toSLV (value :  chip8_types.array_of_std_logic_vector_1) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_std_logic_vector_1(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 1);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 1) + 1 to i*1) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic_vector_1 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_std_logic_vector_1(0 to slv'length / 1 - 1);
  begin
    for i in result'range loop
      result(i) := islv(i * 1 to (i+1) * 1 - 1);
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.tup2_3) return std_logic_vector is
  begin
    return (toSLV(p.tup2_3_sel0) & toSLV(p.tup2_3_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_3 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 15)),fromSLV(islv(16 to 21)));
  end;
  function toSLV (p : chip8_types.tup2_6) return std_logic_vector is
  begin
    return (toSLV(p.tup2_6_sel0) & toSLV(p.tup2_6_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_6 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 11)),fromSLV(islv(12 to 20)));
  end;
  function toSLV (value :  chip8_types.array_of_unsigned_12) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_unsigned_12(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 12);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 12) + 1 to i*12) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_unsigned_12 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_unsigned_12(0 to slv'length / 12 - 1);
  begin
    for i in result'range loop
      result(i) := fromSLV(islv(i * 12 to (i+1) * 12 - 1));
    end loop;
    return result;
  end;
  function toSLV (p : chip8_types.cpustate) return std_logic_vector is
  begin
    return (toSLV(p.cpustate_sel0) & toSLV(p.cpustate_sel1) & toSLV(p.cpustate_sel2) & toSLV(p.cpustate_sel3) & toSLV(p.cpustate_sel4) & toSLV(p.cpustate_sel5) & toSLV(p.cpustate_sel6) & toSLV(p.cpustate_sel7) & toSLV(p.cpustate_sel8));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpustate is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 15)),fromSLV(islv(16 to 27)),fromSLV(islv(28 to 39)),fromSLV(islv(40 to 167)),fromSLV(islv(168 to 455)),fromSLV(islv(456 to 460)),fromSLV(islv(461 to 482)),fromSLV(islv(483 to 490)));
  end;
  function toSLV (p : chip8_types.vgadriver) return std_logic_vector is
  begin
    return (toSLV(p.vgadriver_sel0) & toSLV(p.vgadriver_sel1) & toSLV(p.vgadriver_sel2) & toSLV(p.vgadriver_sel3) & toSLV(p.vgadriver_sel4) & toSLV(p.vgadriver_sel5));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.vgadriver is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 0)),fromSLV(islv(1 to 1)),fromSLV(islv(2 to 2)),fromSLV(islv(3 to 3)),fromSLV(islv(4 to 14)),fromSLV(islv(15 to 25)));
  end;
  function toSLV (value :  chip8_types.array_of_std_logic_vector_13) return std_logic_vector is
    alias ivalue    : chip8_types.array_of_std_logic_vector_13(1 to value'length) is value;
    variable result : std_logic_vector(1 to value'length * 13);
  begin
    for i in ivalue'range loop
      result(((i - 1) * 13) + 1 to i*13) := toSLV(ivalue(i));
    end loop;
    return result;
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.array_of_std_logic_vector_13 is
    alias islv      : std_logic_vector(0 to slv'length - 1) is slv;
    variable result : chip8_types.array_of_std_logic_vector_13(0 to slv'length / 13 - 1);
  begin
    for i in result'range loop
      result(i) := islv(i * 13 to (i+1) * 13 - 1);
    end loop;
    return result;
  end;
  function toSLV (s : in signed) return std_logic_vector is
  begin
    return std_logic_vector(s);
  end;
  function fromSLV (slv : in std_logic_vector) return signed is
  begin
    return signed(slv);
  end;
  function toSLV (p : chip8_types.tup2_4) return std_logic_vector is
  begin
    return (toSLV(p.tup2_4_sel0) & toSLV(p.tup2_4_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_4 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 10)),fromSLV(islv(11 to 12)));
  end;
  function toSLV (p : chip8_types.cpuin) return std_logic_vector is
  begin
    return (toSLV(p.cpuin_sel0) & toSLV(p.cpuin_sel1) & toSLV(p.cpuin_sel2) & toSLV(p.cpuin_sel3) & toSLV(p.cpuin_sel4));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.cpuin is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 7)),fromSLV(islv(8 to 8)),fromSLV(islv(9 to 24)),fromSLV(islv(25 to 30)),fromSLV(islv(31 to 31)));
  end;
  function toSLV (p : chip8_types.tup2_1) return std_logic_vector is
  begin
    return (toSLV(p.tup2_1_sel0) & toSLV(p.tup2_1_sel1));
  end;
  function fromSLV (slv : in std_logic_vector) return chip8_types.tup2_1 is
  alias islv : std_logic_vector(0 to slv'length - 1) is slv;
  begin
    return (fromSLV(islv(0 to 10)),fromSLV(islv(11 to 11)));
  end;
end;

