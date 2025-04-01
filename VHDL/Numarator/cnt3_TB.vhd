----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 10:42:46 PM
-- Design Name: 
-- Module Name: cnt3_TB - Structural
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

entity cnt3_TB is
--  Port ( );
end cnt3_TB;
architecture Structural of cnt3_TB is
component cnt3 is
    Port ( d: in std_logic_vector( 2 downto 0);
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           ld : in STD_LOGIC;
           en : in STD_LOGIC;
           q :out std_logic_vector( 2 downto 0));
end component cnt3;
signal r,clk,ld,en : std_logic;
signal d,q :std_logic_vector(2 downto 0);
begin
UUT: cnt3 port map (d=>d,
                    clk=>clk,
                    r=>r,
                    en=>en,
                    ld=>ld,
                    q=>q);
generate_clk:process
begin 
clk<='1'; wait for 1 ns;
clk<='0';wait for 1 ns; 
end process;
d<= "000";
en<='0' after 0 ns, '1' after 11.5 ns, '1' after 12.5 ns;
ld<='1' after 0 ns, '0' after 5.3 ns, '1' after 11.3 ns;
r<='0' after 0 ns, '1' after 0.5 ns;
end Structural;
