----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 09:28:50 PM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
    Port ( a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i0 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           f : out STD_LOGIC);
end mux;

architecture Behavioral of mux is

signal a: std_logic_vector(1 downto 0);

begin

a<= a1& a0;

with a select
f <= i0 when "00",
     i1 when "01",
     i2 when "10",
     i3 when "11",
     i0 when others;

end Behavioral;
