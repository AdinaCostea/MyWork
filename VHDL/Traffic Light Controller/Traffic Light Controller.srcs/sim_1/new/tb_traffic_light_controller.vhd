LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Testbench VHDL pentru controlerul de semafor

ENTITY tb_traffic_light_controller IS
END tb_traffic_light_controller;

ARCHITECTURE behavior OF tb_traffic_light_controller IS 

    -- Declararea componentei pentru controlerul de semafor
    COMPONENT traffic_light_controller
    PORT(
         sensor : IN  std_logic;
         clk : IN  std_logic;
         rst_n : IN  std_logic;
         light_main : OUT  std_logic_vector(2 downto 0); -- Semafor drum principal
         light_secondary : OUT  std_logic_vector(2 downto 0) -- Semafor drum secundar
        );
    END COMPONENT;

    -- Semnale de intrare
    signal sensor        : std_logic := '0';
    signal clk           : std_logic := '0';
    signal rst_n         : std_logic := '0';

    -- Semnale de iesire
    signal light_main      : std_logic_vector(2 downto 0);
    signal light_secondary : std_logic_vector(2 downto 0);

    constant clk_period : time := 10 ns;

BEGIN

    -- Instantierea controlerului de semafor
    trafficlightcontroller : traffic_light_controller
    PORT MAP (
        sensor => sensor,
        clk => clk,
        rst_n => rst_n,
        light_main => light_main,
        light_secondary => light_secondary
    );

    -- Proces pentru generarea semnalului de ceas
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Proces de generare a stimulilor
    stim_proc: process
    begin    
        rst_n <= '0';       -- Resetare initiala
        sensor <= '0';      -- Fara vehicule pe drumul secundar
        wait for clk_period * 10;

        rst_n <= '1';       -- Se scoate resetarea
        wait for clk_period * 20;

        sensor <= '1';      -- Vehicul detectat pe drumul secundar
        wait for clk_period * 100;

        sensor <= '0';      -- Niciun vehicul detectat
        wait;
    end process;

END;
