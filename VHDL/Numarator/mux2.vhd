----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 10:33:08 PM
-- Design Name: 
-- Module Name: mux2 - Behavioral
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

entity mux2 is
    Port ( io : in STD_LOGIC;
           i1 : in STD_LOGIC;
           A : in STD_LOGIC;
           y : out STD_LOGIC);
end mux2;

architecture Structural of mux2 is

begin

   mux:process(io,i1,A)
begin
case(A) is 
    when '0'=>y<=io;
    when '1'=>y<=i1;
    when others=>y<=io;
  end case;
end process;


end Structural;
