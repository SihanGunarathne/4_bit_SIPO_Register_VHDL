library ieee;
use ieee.std_logic_1164.all;

entity Four_bit_SIPO_ShiftRegister is
port( res: in std_logic;
data_in: in std_logic;
clk: in std_logic;
data_out: out std_logic_vector(3 downto 0));
end Four_bit_SIPO_ShiftRegister;

architecture behaviour of Four_bit_SIPO_ShiftRegister is
signal temp: std_logic_vector( 3 downto 0);
begin
process( clk, res)
begin
if(res='1') then
temp<="0000";
elsif (clk'event and clk ='1') then
temp(3)<=data_in;
temp(2)<=temp(3);
temp(1)<=temp(2);
temp(0)<=temp(1);
end if;
end process;
data_out<=temp;
end behaviour ;
