---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 10:40:41 PM
-- Design Name: 
-- Module Name: cnt3 - Structural
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cnt3 is
    Port ( d : in STD_LOGIC_VECTOR (2 downto 0);
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end cnt3;

architecture Structural of cnt3 is
signal qint : std_logic_vector (2 downto 0):="000";
begin
 
numarator: process (r,clk)
 begin
 if r='0' then qint <="000";
 elsif falling_edge(clk) then
      if ld = '1' then
                qint <= d;
            elsif (ld='0' and en = '0' ) then
                qint <= qint + 1;
                else qint<=qint;
        end if;
 end if;

 end process;
q<=qint;
end Structural;
