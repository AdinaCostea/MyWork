----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/20/2024 06:34:18 PM
-- Design Name: 
-- Module Name: 2 - Behavioral
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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;


entity fsm is
    Port ( rst : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           seg:out std_logic_vector(0 to 6);
           dp:out std_logic; 
           an:out std_logic_vector(3 downto 0);
           clk : in STD_LOGIC);
end fsm;

architecture Behavioral of fsm is

type states is (start, get_rnd, led_on, sw_on, sw_off,
                led_off, count);---enumerare
signal current_state, next_state : states;

signal i : integer;
signal score :std_logic_vector(15 downto 0):=(others=>'0'); 
component driver7seg is
    Port ( clk : in STD_LOGIC; --100MHz board clock input
           Din : in STD_LOGIC_VECTOR (15 downto 0); --16 bit binary data for 4 displays 
           an : out STD_LOGIC_VECTOR (3 downto 0); --anode outputs selecting individual displays 3 to 0
           seg : out STD_LOGIC_VECTOR (0 to 6); -- cathode outputs for selecting LED-s in each display
           dp_in : in STD_LOGIC_VECTOR (3 downto 0); --decimal point input values
           dp_out : out STD_LOGIC; --selected decimal point sent to cathodes
           rst : in STD_LOGIC); --global reset
end component driver7seg;
begin

ff : process (rst, clk)---pt circuite secventiale
begin
  if rst = '1' then
    current_state <= start;---domeniu asincron
  elsif rising_edge(clk) then---domeniul sincron
    current_state <= next_state;
  end if;    
end process;

lut : process (current_state, sw)---modeleaza un circuit combinational(circuit combinational=este independent de clk si nu depinde de stari doar de intrari)
begin
  case current_state is
    when start => next_state <= get_rnd;
    when get_rnd => next_state <= led_on;
    when led_on => next_state <= sw_on;
    when sw_on => if sw(i) = '1' then
                    next_state <= sw_off;
                  else
                    next_state <= sw_on;
                  end if;
    when sw_off => if sw(i) = '0'then
                     next_state <= led_off;
                   else
                     next_state <= sw_off;
                   end if;
    when led_off => next_state <= count;
    when count => next_state <= get_rnd;
    when others => next_state <= start;                                      
  end case;
end process;

generate_i : process (rst, clk)
  variable cnt : integer := 0;
begin
  if rst = '1' then
    cnt := 0;
    i <= 0;
  elsif rising_edge(clk) then
    if cnt = 15 then
      cnt := 0;
    else
      cnt :=cnt + 1;
    end if;
    
    if current_state = get_rnd then
      i <= cnt;
    end if;  
        
  end if;  
end process;  

generate_led: process (rst, clk)
begin
  if rst = '1' then
    led <= (others => '0');
  elsif rising_edge(clk) then
    if current_state = led_on then
      led(i) <= '1';
    elsif current_state = led_off then
      led(i) <= '0';
    end if;
  end if;      
end process;
generate_score:process(rst,clk)
 variable m,s,z,u : integer:=0;
begin
if rst='1' then
m:=0; 
s:=0;
z:=0; 
u:=0;
elsif rising_edge(clk) then 
  if current_state =count then
    if u=9 then
      u:=0; 
      if z=9 then
        z:=0;
         if s=9 then
            s:=0; 
             if m=9 then
               m:=0; 
               else 
               m:=m+1; 
               end if;
            else 
            s:=s+1; 
            end if;
       else 
        z:=z+1;
        end if;
    else u:=u+1; 
     end if;
  end if;
end if;
 score<=std_logic_vector(to_unsigned(m,4)) &
        std_logic_vector(to_unsigned(s,4)) &
         std_logic_vector(to_unsigned(z,4)) &
          std_logic_vector(to_unsigned(u,4));
          
       
end process;
ssd: driver7seg port map(rst=>rst,
                          clk=>clk,
                          Din=>score,
                          dp_in=>"0000",
                          seg=>seg,
                          dp_out=>dp,
                          an=>an);   
end Behavioral;