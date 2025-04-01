----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/07/2024 01:05:08 PM
-- Design Name: 
-- Module Name: generator_TB - Behavioral
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

entity generator_TB is
--  Port ( );
end generator_TB;

architecture Behavioral of generator_TB is
component generator is
    Port ( clk : in STD_LOGIC;
           r,en: in STD_LOGIC;
          s : out STD_LOGIC);
end component generator;
signal r,clk,s,en:std_logic;

begin
UUT:generator port map(clk=>clk,r=>r,en=>en,s=>s);
generate_clk:process
begin
en<='0';
clk<='1'; wait for 1 ns;
clk <='0'; wait for 1 ns;
end process;
r <= '1' after 0 ns, '0' after 0.5 ns;


end Behavioral;
