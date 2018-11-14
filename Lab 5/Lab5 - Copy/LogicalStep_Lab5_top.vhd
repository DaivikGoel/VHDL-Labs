
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab5_top IS
   PORT
	(
   clkin_50		: in	std_logic;							-- The 50 MHz FPGA Clockinput
	rst_n			: in	std_logic;							-- The RESET input (ACTIVE LOW)
	pb				: in	std_logic_vector(1 downto 0); -- The push-button inputs (ACTIVE LOW)
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab5_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab5_top IS


   component cycle_generator port (
          clkin      		: in  std_logic;
			 rst_n				: in  std_logic;
			 modulo 				: in  integer;	
			 strobe_out			: out	std_logic;
			 full_cycle_out	: out std_logic
  );
   end component;
	
	 component inputsynchronizer port (
            clk_in      		: in  std_logic;
			 rst_n				: in  std_logic;
		    pb               : in  std_logic;
			 DOUT             : OUT std_logic 
  );
   end component;
	component InputLatch port (
			Sync_input       : in std_logic; 
			 Latch_clear      : in std_logic; 
          clk_in	      	: in  std_logic;
			 enable           : in std_logic; 
			 rst_n				: in  std_logic;
			 DOUT             : OUT std_logic 
	);
end component; 
   component segment7_mux port (
          clk        		: in  std_logic := '0';
			 DIN2 				: in  std_logic_vector(6 downto 0);	
			 DIN1 				: in  std_logic_vector(6 downto 0);
			 DOUT					: out	std_logic_vector(6 downto 0);
			 DIG2					: out	std_logic;
			 DIG1					: out	std_logic
   );
   end component;
	
	component Lab5_Moore_SM port(
		
clk_input						: IN std_logic; --our clk variable 
 strobe_one						: IN std_logic;
 strobe_two						: IN std_logic;
 sw0 								: IN std_logic;
 sw1 								: IN std_logic; 
 rst_n							: IN std_logic; --our reset button when pressed, will turn state to S0
 QQ 								: OUT std_logic_vector(6 downto 0);
 QQ2								: OUT std_logic_vector(6 downto 0); --our output hex is QQ (QQ for next state, tried Q+, didn't work) 
 NS_monitor						: IN std_logic;
 EW_monitor 					: IN std_logic;
 NS_clear 						: OUT std_logic; 
 EW_clear 						: OUT std_logic; 
 SM_night, SM_reduced 		: out std_logic;
 state_output 					: out std_logic_vector(3 downto 0)

	);
	
   end component;
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE;

	CONSTANT CNTR1_modulo				: 	integer := 25000000;    	-- modulo count for 1Hz cycle generator 1 with 50Mhz clocking input
   CONSTANT CNTR2_modulo				: 	integer := 5000000;    	-- modulo count for 5Hz cycle generator 2 with 50Mhz clocking input
   CONSTANT CNTR1_modulo_sim			: 	integer := 199;   			-- modulo count for cycle generator 1 during simulation
   CONSTANT CNTR2_modulo_sim			: 	integer :=  39;   			-- modulo count for cycle generator 2 during simulation
	
   SIGNAL CNTR1_modulo_value			: 	integer ;   					-- modulo count for cycle generator 1 
   SIGNAL CNTR2_modulo_value			: 	integer ;   					-- modulo count for cycle generator 2 

   SIGNAL clken1,clken2					:  STD_LOGIC; 						-- clock enables 1 & 2

	SIGNAL strobe1, strobe2				:  std_logic;						-- strobes 1 & 2 with each one being 50% Duty Cycle
		

	SIGNAL seg7_A, seg7_B				:  STD_LOGIC_VECTOR(6 downto 0); 
	SIGNAL SIG                       : STD_LOGIC_VECTOR(6 downto 0);
	SIGNAL SIG2                      : STD_LOGIC_VECTOR(6 downto 0);
	
	SIGNAL sync1                     : STD_LOGIC; 
	SIGNAL sync2                     : STD_LOGIC;
	
	
		Signal Latch1Clr              :STD_LOGIC;
	Signal Latch2Clr 						:STD_LOGIC; 
	
	Signal Latch1                    :STD_LOGIC;
	Signal Latch2 							:STD_LOGIC; 
	Signal outputshit 					:STD_LOGIC_VECTOR (3 downto 0);
	
	Signal nightmode, reducedmode 	: STD_LOGIC;
	
	
BEGIN
----------------------------------------------------------------------------------------------------


MODULO_1_SELECTION:	CnTR1_modulo_value <= CNTR1_modulo when SIM = FALSE else CNTR1_modulo_sim; 

MODULO_2_SELECTION:	CNTR2_modulo_value <= CNTR2_modulo when SIM = FALSE else CNTR2_modulo_sim; 
						

----------------------------------------------------------------------------------------------------
-- Component Hook-up:					

GEN1: 	cycle_generator port map(clkin_50, rst_n, CNTR1_modulo_value, strobe1, clken1);	

GEN2: 	cycle_generator port map(clkin_50, rst_n, CNTR2_modulo_value, strobe2, clken2);




INST1:   Lab5_Moore_SM port map(clkin_50 ,strobe1, strobe2, sw(0), sw(1), rst_n, SIG, SIG2,  Latch1 , Latch2  , Latch1Clr, Latch2Clr,nightmode, reducedmode,outputshit);



INST2:   inputsynchronizer port map(clkin_50 , rst_n,not(pb(0)), sync1); 
INST3:   inputsynchronizer port map(clkin_50, rst_n, not(pb(1)), sync2);
 
INST4:   InputLatch port map (sync1, Latch1Clr ,clkin_50, clken2, rst_n, Latch1);
INST5:   InputLatch port map (sync2, Latch2Clr ,clkin_50, Strobe2, rst_n, Latch2); 


Seg1:    segment7_mux port map(clkin_50, SIG,SIG2, seg7_data, seg7_char1, seg7_char2);	
	
leds(1 downto 0) <= Strobe1 & Strobe2;
leds(6) <= nightmode or reducedmode;
leds(7) <= Latch1 or Latch2; 
leds( 5 downto 2) <= outputshit(3 downto 0); 

END SimpleCircuit;
