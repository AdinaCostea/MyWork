----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 10:38:01 PM
-- Design Name: 
-- Module Name: modul_Testare - Behavioral
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

entity modul_Testare is
--  Port ( );
end modul_Testare;

architecture Behavioral of modul_Testare is

component placuta is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           reset : in STD_LOGIC;
           ck : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (2 downto 0));
end component placuta;

component comp_beh is
    Port ( ck : in STD_LOGIC;
           rn : in STD_LOGIC;
           a : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0);
           b : in STD_LOGIC);
end component comp_beh;

signal ck, rn, a, b : std_logic;
signal q, q_ref : std_logic_vector (2 downto 0);

begin

UUT: placuta port map ( b => b,
                        ck =>ck,
                        reset => rn,
                        a => a,
                        q => q);
                        
UUT_ref: comp_beh port map ( b => b,
                        ck =>ck,
                        rn => rn,
                        a => a,
                        q => q_ref);
                        
rn <= '1' after 0 ns, '0' after 0.2 ns, '1' after 2 ns;

process
begin
    ck <= '0';
    wait for 0.5 ns;
    ck <= '1';
    wait for 0.5 ns;
    end process;
    
a <= '0' after 0 ns, '1' after 5 ns, '0' after 11 ns, '1' after 15 ns;
b <= '0' after 0 ns, '1' after 2 ns, '0' after 8 ns, '1' after 13 ns;    
    
check: process(q)
begin
    if q/=q_ref then
       report "Rezultat diferit de referinta!";
    end if;
end process;
    
end Behavioral;