--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 11:09:19 PM
-- Design Name: 
-- Module Name: automat_TB - Structural
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
--------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity automat_TB is
--  Port ( );
end automat_TB;

architecture Structural of automat_TB is

component automat is
     Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end component automat;
signal clk,en,r,ld: std_logic;  
signal q:std_logic_vector(2 downto 0);
begin

UI_automat: automat port map( ld=>ld,
                              clk=>clk,
                              r=>r,
                              en=>en,
                              q=>q);

generate_clk:process
begin 
clk<='0'; wait for 1 ns;
clk<='1';wait for 1 ns;
end process;  
en<='0' after 0 ns, '1' after 5.5 ns;
ld<='1' after 0 ns;
r<='0' after 0 ns, '1' after 0.5 ns;
end Structural;
