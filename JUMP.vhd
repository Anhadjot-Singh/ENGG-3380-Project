library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JUMP is
    Port (
        Address      : in  STD_LOGIC_VECTOR(11 downto 0);
        PC           : in  STD_LOGIC_VECTOR(15 downto 0);
        PC_Jump      : out STD_LOGIC_VECTOR(15 downto 0)  
    );
end JUMP;

architecture Behavioral of JUMP is
begin
    process(PC, Address)
    begin
        PC_Jump <= PC(15 downto 12) & Address;
    end process;
end Behavioral;