library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter is port
(
i:in std_logic_vector(15 downto 0);
o:out std_logic_vector(15 downto 0);
sel:in std_logic_vector(2 downto 0)
);
end shifter;

architecture yigithan of shifter is
begin
process (sel,i)
begin
case (sel) is
when "000"=>o<=i(1 downto 0) & i(15 downto 2);
when "001"=>o<=i(2 downto 0) & i(15 downto 3);
when "010"=>o<=i(3 downto 0) & i(15 downto 4);
when "011"=>o<=i(4 downto 0) & i(15 downto 5);
when "100"=>o<=i(5 downto 0) & i(15 downto 6);
when "101"=>o<=i(6 downto 0) & i(15 downto 7);
when "110"=>o<=i(7 downto 0) & i(15 downto 8);
when "111"=>o<=i(8 downto 0) & i(15 downto 9);
when others=>o<=x"0000";
end case;
end process;
end yigithan;
