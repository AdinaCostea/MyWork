library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Sistem de semafor pentru intersectia dintre drumul principal si drumul secundar
-- Exista un senzor pe drumul secundar; cand sunt vehicule,
-- semaforul trece pe GALBEN, apoi VERDE pentru a permite trecerea vehiculelor
-- In rest, drumul principal are mereu verde, iar drumul secundar rosu

entity traffic_light_controller is
 port (
        sensor        : in STD_LOGIC; -- Senzor pe drumul secundar
        clk           : in STD_LOGIC; -- Ceas
        rst_n         : in STD_LOGIC; -- Resetare activa pe 0
        light_main    : out STD_LOGIC_VECTOR(2 downto 0); -- Semafor drum principal
        light_secondary : out STD_LOGIC_VECTOR(2 downto 0) -- Semafor drum secundar
        -- ROSU_GALBEN_VERDE
      );
end traffic_light_controller;

architecture traffic_light of traffic_light_controller is

signal counter_1s: std_logic_vector(27 downto 0):= x"0000000";
signal delay_count: std_logic_vector(3 downto 0):= x"0";

signal delay_10s, delay_3s_S, delay_3s_M, RED_LIGHT_ENABLE, YELLOW_LIGHT1_ENABLE, YELLOW_LIGHT2_ENABLE: std_logic := '0';
signal clk_1s_enable: std_logic; -- Semnal de activare la fiecare 1 secunda

type FSM_States is (MGRE_SRED, MYEL_SRED, MRED_SGRE, MRED_SYEL);
-- MGRE_SRED : Drumul principal verde si drumul secundar rosu
-- MYEL_SRED : Drumul principal galben si drumul secundar rosu
-- MRED_SGRE : Drumul principal rosu si drumul secundar verde
-- MRED_SYEL : Drumul principal rosu si drumul secundar galben

signal current_state, next_state: FSM_States;

begin

-- Logica secventiala pentru starea urmatoare
process(clk,rst_n)
begin
 if(rst_n='0') then
  current_state <= MGRE_SRED;
 elsif(rising_edge(clk)) then
  current_state <= next_state;
 end if;
end process;

-- Logica combinationala FSM
process(current_state,sensor,delay_3s_S,delay_3s_M,delay_10s)
begin
 case current_state is
  when MGRE_SRED =>
   RED_LIGHT_ENABLE <= '0';
   YELLOW_LIGHT1_ENABLE <= '0';
   YELLOW_LIGHT2_ENABLE <= '0';
   light_main <= "001"; -- Verde pe drumul principal
   light_secondary <= "100"; -- Rosu pe drumul secundar
   if(sensor = '1') then -- daca se detecteaza vehicul pe drumul secundar
    next_state <= MYEL_SRED;
   else
    next_state <= MGRE_SRED;
   end if;

  when MYEL_SRED =>
   light_main <= "010"; -- Galben pe drumul principal
   light_secondary <= "100"; -- Rosu pe drumul secundar
   RED_LIGHT_ENABLE <= '0';
   YELLOW_LIGHT1_ENABLE <= '1';
   YELLOW_LIGHT2_ENABLE <= '0';
   if(delay_3s_M='1') then
    next_state <= MRED_SGRE;
   else
    next_state <= MYEL_SRED;
   end if;

  when MRED_SGRE =>
   light_main <= "100"; -- Rosu pe drumul principal
   light_secondary <= "001"; -- Verde pe drumul secundar
   RED_LIGHT_ENABLE <= '1';
   YELLOW_LIGHT1_ENABLE <= '0';
   YELLOW_LIGHT2_ENABLE <= '0';
   if(delay_10s='1') then
    next_state <= MRED_SYEL;
   else
    next_state <= MRED_SGRE;
   end if;

  when MRED_SYEL =>
   light_main <= "100"; -- Rosu pe drumul principal
   light_secondary <= "010"; -- Galben pe drumul secundar
   RED_LIGHT_ENABLE <= '0';
   YELLOW_LIGHT1_ENABLE <= '0';
   YELLOW_LIGHT2_ENABLE <= '1';
   if(delay_3s_S='1') then
    next_state <= MGRE_SRED;
   else
    next_state <= MRED_SYEL;
   end if;

  when others =>
   next_state <= MGRE_SRED;
 end case;
end process;

-- Contor pentru intarzieri ROSU si GALBEN
process(clk)
begin
 if(rising_edge(clk)) then
  if(clk_1s_enable='1') then
   if(RED_LIGHT_ENABLE='1' or YELLOW_LIGHT1_ENABLE='1' or YELLOW_LIGHT2_ENABLE='1') then
    delay_count <= delay_count + x"1";
    if((delay_count = x"9") and RED_LIGHT_ENABLE ='1') then
     delay_10s <= '1';
     delay_3s_M <= '0';
     delay_3s_S <= '0';
     delay_count <= x"0";
    elsif((delay_count = x"2") and YELLOW_LIGHT1_ENABLE= '1') then
     delay_10s <= '0';
     delay_3s_M <= '1';
     delay_3s_S <= '0';
     delay_count <= x"0";
    elsif((delay_count = x"2") and YELLOW_LIGHT2_ENABLE= '1') then
     delay_10s <= '0';
     delay_3s_M <= '0';
     delay_3s_S <= '1';
     delay_count <= x"0";
    else
     delay_10s <= '0';
     delay_3s_M <= '0';
     delay_3s_S <= '0';
    end if;
   end if;
  end if;
 end if;
end process;

-- Generare semnal de 1 secunda
process(clk)
begin
 if(rising_edge(clk)) then
  counter_1s <= counter_1s + x"0000001";
  if(counter_1s >= x"0000003") then -- x"0003" este pentru simulare
   counter_1s <= x"0000000";
  end if;
 end if;
end process;

clk_1s_enable <= '1' when counter_1s = x"0003" else '0'; -- Pentru testare. Pentru FPGA real: x"2FAF080"

end traffic_light;
