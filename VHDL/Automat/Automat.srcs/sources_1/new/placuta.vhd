----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2020 10:10:06 PM
-- Design Name: 
-- Module Name: placuta - Behavioral
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

entity placuta is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           reset : in STD_LOGIC;
           ck : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR (2 downto 0));
end placuta;

architecture Behavioral of placuta is

component counter is
    Port ( d : in STD_LOGIC_VECTOR (2 downto 0);
           ck : in STD_LOGIC;
           cl : in STD_LOGIC;
           ld : in STD_LOGIC;
           pt : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (2 downto 0));
 end component counter;
 
 component mvf_A is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end component mvf_A;

component mvf_B is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end component mvf_B;

component mvf_C is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end component mvf_C;

component mvf_LD is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end component mvf_LD;

component mvf_PT is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           QA : in STD_LOGIC;
           QB : in STD_LOGIC;
           QC : in STD_LOGIC;
           Y : out STD_LOGIC);
end component mvf_PT;

signal Y_LD, Y_A, Y_B, Y_C, Y_PT: std_logic;

begin

u0: mvf_LD port map ( a=>a,
                      b=>b,
                      QA=>q(2),
                      QB=>q(1),
                      QC=>q(0),
                      Y=>Y_LD);
                      
u1: mvf_C port map ( a=>a,
                      b=>b,
                      QA=>q(2),
                      QB=>q(1),
                      QC=>q(0),
                      Y=>Y_C);
                      
u2: mvf_A port map ( a=>a,
                      b=>b,
                      QA=>q(2),
                      QB=>q(1),
                      QC=>q(0),
                      Y=>Y_A);    
                                                              
u3: mvf_B port map ( a=>a,
                      b=>b,
                      QA=>q(2),
                      QB=>q(1),
                      QC=>q(0),
                      Y=>Y_B);
                      
u4: mvf_PT port map ( a=>a,
                      b=>b,
                      QA=>q(2),
                      QB=>q(1),
                      QC=>q(0),
                      Y=>Y_PT);
                      
u5: counter port map( d(0) => Y_C,
                      d(1) => Y_B,
                      d(2) => Y_A,
                      ck => ck,
                      pt => Y_PT,
                      cl => reset,
                      ld => Y_LD,
                      q => q);
                                            
end Behavioral;
