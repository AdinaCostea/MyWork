----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 09:28:50 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( d : in STD_LOGIC_VECTOR (2 downto 0);
           ck : in STD_LOGIC;
           cl : in STD_LOGIC;
           ld : in STD_LOGIC;
           pt : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end counter;

architecture Behavioral of counter is

signal qint: std_logic_vector (2 downto 0);

begin
count4b: process (cl,ck)

begin
if cl = '1' then
  qint <= "000";
  elsif rising_edge(ck) then
  if ld ='0' then
    qint <=qint;
   elsif pt = '1' then
      qint <=qint+1;
    else
        qint <=qint;
    end if;
  end if;
end process;

q <= qint;

end Behavioral;
