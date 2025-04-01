----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 10:28:28 PM
-- Design Name: 
-- Module Name: comp_beh - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comp_beh is
    Port ( ck : in STD_LOGIC;
           rn : in STD_LOGIC;
           a : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC);
end comp_beh;

architecture Behavioral of comp_beh is

signal current_state, next_state: std_logic_vector (2 downto 0);

begin

q <= current_state;

process (ck, rn)
begin 
if rn = '0' then
    current_state <= "000";
    elsif rising_edge(ck) then
        current_state <= next_state;
    end if;
end process;

process (current_state, a, b)
begin
    case current_state is
    when "000" => next_state <= "001";
    when "001" => next_state <= "011";
    when "011" => if b='1' then
                        next_state <= "100";
                      else
                        next_state <= "011";
                        end if;
    when "100" => next_state <= "110";
    when "110" => next_state <= "111";
    when "111" => if a='1' then
                        next_state <= "000";
                      else
                        next_state <= "011";
                        end if;
  when others => next_state <="000";
  end case;
  end process;

end Behavioral;
