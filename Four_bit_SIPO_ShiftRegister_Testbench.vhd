LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY Four_bit_SIPO_ShiftRegister_Testbench IS
END Four_bit_SIPO_ShiftRegister_Testbench;

ARCHITECTURE behavior OF Four_bit_SIPO_ShiftRegister_Testbench IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Four_bit_SIPO_ShiftRegister
    PORT(
         res : IN  std_logic;
         data_in : IN  std_logic;
         clk : IN  std_logic;
         data_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal res : std_logic := '0';
   signal data_in : std_logic := '0';
   signal clk : std_logic := '0';

            --Outputs
   signal data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ps;

BEGIN
            -- Instantiate the Unit Under Test (UUT)
   uut: Four_bit_SIPO_ShiftRegister PORT MAP (
          res => res,
          data_in => data_in,
          clk => clk,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
                        clk <= '0';
                        wait for clk_period/2;
                        clk <= '1';
                        wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin                       
data_in<='0';
      wait for 20 ps;      
data_in<='0';
      wait for 20 ps;      
data_in<='1';
      wait for 20 ps;      
data_in<='1';
      wait for 20 ps;      
data_in<='0';
      wait for 20 ps;      
data_in<='1';
      wait for 20 ps;      
data_in<='0';
      wait for 20 ps;      
data_in<='1';
      wait for 20 ps;      
data_in<='0';
      wait for 20 ps;      
data_in<='1';
      wait for 20 ps;
data_in<='1';
      wait for 20 ps;      
data_in<='0';
      wait for 20 ps;                              
data_in<='0';
      wait for 20 ps;      
wait;
      wait;
   end process;
END;
