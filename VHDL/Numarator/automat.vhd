--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/06/2024 10:45:48 PM
-- Design Name: 
-- Module Name: automat - Structural
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

entity automat is
    Port ( clk : in STD_LOGIC;
           r : in STD_LOGIC;
           en : in STD_LOGIC;
           ld : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
end automat;

architecture Structural of automat is
---mux
component mux2 is
   Port ( io : in STD_LOGIC;
          i1 : in STD_LOGIC;
          A : in STD_LOGIC;
          y : out STD_LOGIC);
end component;
---numarator
component cnt3 is
   Port ( d: in std_logic_vector (2 downto 0);
          r : in STD_LOGIC;
          clk : in STD_LOGIC;
          ld : in STD_LOGIC;
          en : in STD_LOGIC;
          q :out std_logic_vector( 2 downto 0));
end component cnt3;
signal y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18,y19,y20:std_logic;
signal qint: std_logic_vector (2 downto 0);
begin
q<=qint;
---C
U1: mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y1);
U2: mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y2);
U4: mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y4);
U5: mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y5);
U6: mux2 port map( io=>y4,i1=>y5,A=>qint(1),y=>y6);
U3: mux2 port map( io=>y1,i1=>y2,A=>qint(1),y=>y3);
U7: mux2 port map( io=>y3,i1=>y6,A=>qint(2),y=>y7);
---B
U8:mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y8);
U9:mux2 port map(io=>'1',i1=>'0',A=>qint(0),y=>y9);
U10:mux2 port map (io=>'1',i1=>'0',A=>qint(0),y=>y10);
U11:mux2 port map(io=>'0',i1=>y8,A=>qint(1),y=>y11);
U12:mux2 port map(io=>y9,i1=>y10,A=>qint(1),y=>y12);
U13:mux2 port map(io=>y11,i1=>y12,A=>qint(2),y=>y13);
---A
U14:mux2 port map(io=>'0',i1=>'1',A=>qint(0),y=>y14);
U15:mux2 port map(io=>'0',i1=>'1',A=>qint(1),y=>y15);
U16:mux2 port map(io=>y14,i1=>'1',A=>qint(1),y=>y16);
U17:mux2 port map(io=>y15,i1=>y16,A=>qint(2),y=>y17);
---ld
U18:mux2 port map(io=>'0',i1=>'1',A=>qint(0),y=>y18);
U19:mux2 port map(io=>'1',i1=>y18,A=>qint(1),y=>y19);
U20:mux2 port map(io=>'1',i1=>y19,A=>qint(2),y=>y20);

--numarator

UUT: cnt3 port map( ld=>ld,
                    d(2)=>y7,
                    d(1)=>y13,
                    d(0)=>y17,
                    clk=>clk,
                    en=>'0',
                    r=>r,
                    q=>qint);

end Structural;
