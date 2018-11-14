LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

Entity InputLatch IS port (
			 Sync_input       : in std_logic; 
			 Latch_clear      : in std_logic; 
          clk_in	      	: in  std_logic;
			 enable           : in std_logic; 
			 rst_n				: in  std_logic;
			 DOUT             : OUT std_logic 
   );
end entity;

ARCHITECTURE change OF InputLatch IS

	SIGNAL DoutR					      : std_logic;
	sIGNAL Latchsync                 : std_logic;
BEGIN

Latchsync <= not(Latch_clear) AND (Sync_input OR DoutR); --Latch sync is the Dinput statement 

DLatch: PROCESS (rst_n, clk_in, enable)	
	BEGIN
		IF (rst_n = '0') THEN --resets current state if push button reset is pressed 
				DoutR <= '0';
		ELSIF(rising_edge(clk_in)) THEN	
			IF (enable = '1') then
				DoutR <= Latchsync;
			END IF;
		ELSE
				DoutR <= DoutR;
		END IF; 
END PROCESS;
DOUT <= DoutR; 

END ARCHITECTURE change; 