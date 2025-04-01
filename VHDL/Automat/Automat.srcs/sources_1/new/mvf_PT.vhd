----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 09:59:05 PM
-- Design Name: 
-- Module Name: mvf_PT - Behavioral
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

entity mvf_PT is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end mvf_PT;

architecture Behavioral of mvf_PT is

component mux4 is
Port    ( a1 : in STD_LOGIC;
           a0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           i0 : in STD_LOGIC;
           i3 : in STD_LOGIC;
           i2 : in STD_LOGIC;
           f : out STD_LOGIC);
end component mux4;

signal i0, i1, i2, i3 : std_logic;

begin

i0 <= '1';
i1 <= b;
i2 <= '1';
i3 <= '1';

U : mux4 port map (i0 => i0,
                    i1 => i1,
                    i2 =>i2,
                    i3 => i3,
                    a1 => QB,
                    a0 => QC,
                    f => Y);


end Behavioral;
