----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 10:36:03 PM
-- Design Name: 
-- Module Name: mux2_TB - Structural
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

entity mux2_TB is
--  Port ( );
end mux2_TB;

architecture Structural of mux2_TB is

component mux2 is
    Port ( io : in STD_LOGIC;
           i1 : in STD_LOGIC;
           A : in STD_LOGIC;
           y : out STD_LOGIC);
end component;

signal inio,ini1,inA,outy:std_logic;

begin

UUT: mux2 port map(io => inio,
                  i1 => ini1,
                  A  => inA,
                  y  => outy);

generate_inio:process
begin
inio <='0'; wait for 0.5 ns;
inio <='1'; wait for 0.5 ns;
end process;

generate_ini1:process
begin
ini1<='0'; wait for 1.2 ns;
ini1<='1'; wait for 1.2 ns;
end process;

generate_inA:process
begin
inA<='0'; wait for 5 ns;
inA<='1'; wait for 5 ns;
end process;

end Structural;
