----------------------------------------------------------------------------------
-- Company:
-- Engineer: 
-- 
-- Create Date: 01/07/2024 12:52:45 PM
-- Design Name: 
-- Module Name: generator - Structural
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

entity generator is
    Port ( clk : in STD_LOGIC;
           r,en: in STD_LOGIC;
           s : out STD_LOGIC);
end generator;

architecture Structural of generator is
component cnt3 is
   Port ( d: in std_logic_vector (2 downto 0);
          r : in STD_LOGIC;
          clk : in STD_LOGIC;
          ld : in STD_LOGIC;
          en : in STD_LOGIC;
          q :out std_logic_vector( 2 downto 0));
end component cnt3;
signal cnt : STD_LOGIC_VECTOR (2 downto 0);
begin


UI_cnt : cnt3 port map ( clk=>clk,
                         q=>cnt,
                         d=>(others => '0'),
                         r=>r,
                         ld=>'1',
                         en=>'0');
  ---mux       
  process(cnt)   
  begin      
   case cnt is 
   when "000"=>s<='0';
   when  "100"=>s<='1';
   when "110"=>s<='1';
   when "111"=>s<='1';
   when others=>s<='0';
   end case;
   end process;
 
end Structural;
