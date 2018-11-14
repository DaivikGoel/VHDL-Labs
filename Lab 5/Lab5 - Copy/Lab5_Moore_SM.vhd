library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Lab5_Moore_SM IS Port
(
 clk_input					: IN std_logic; --our clk variable 
 strobe_one					:IN std_logic;
 strobe_two					:IN std_logic;
 sw0 							: IN std_logic;
 sw1 							: IN std_logic; 
 rst_n						: IN std_logic; --our reset button when pressed, will turn state to S0
 QQ 							: OUT std_logic_vector(6 downto 0);
 QQ2							: OUT std_logic_vector(6 downto 0); --our output hex is QQ (QQ for next state, tried Q+, didn't work) 
 NS_monitor					: IN std_logic;
 EW_monitor 				: IN std_logic;
 NS_clear 					: OUT std_logic; 
 EW_clear 					: OUT std_logic; 
 SM_night, SM_reduced 	: out std_logic;
 state_output 				: out std_logic_vector(3 downto 0)

 );
END ENTITY;
 
 
 
 Architecture MSM of Lab5_Moore_SM is
 
  
 TYPE STATE_NAMES IS (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, night, reduced); -- list all the STATES
	--16 states from values 0 to 15
 
 SIGNAL current_state, next_state	:  STATE_NAMES;   -- signals of type STATE_NAMES
 


BEGIN

 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 
-- REGISTER LOGIC PROCESS
-- add clock and any related inputs for state machine register section into Sensitivity List 

Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN --resets current state if push button reset is pressed 
		current_state <= S0;
	ELSIF(rising_edge(strobe_one)) THEN --rising edge of clock input triggers thing to move to next state
		current_state <= next_State;
	ELSE
		current_state <= current_state; --otherwise currentstate stays current state
	END IF;
END PROCESS;	



-- TRANSTION LOGIC PROCESS (to be combinational only)
-- add all transition inputs for state machine into Transition section Sensitivity List 
-- make sure that all conditional statement options are complete otherwise VHDL will infer LATCHES.

Transition_Section: PROCESS (current_state) 

BEGIN

     CASE current_state IS 
         WHEN S0 =>		--whe at first state and compared value is greater then next state will turn to S1
           state_output <= "0000"; 
			  IF (EW_monitor = '1') then 
				next_state <= S6; 
				
				ELSE
					next_state <= S1;
					 
            END IF;
         WHEN S1 => --if greater than the next state will be S2 
			state_output <= "0001"; 
                IF (EW_monitor = '1') then 
				next_state <= S6; 
				ELSE
					next_state <= S2;
            END IF;
         WHEN S2 => --same method as S1 above. this goes down all the way to S14
                state_output <= "0010"; 
					 IF (EW_monitor = '1') then 
				next_state <= S6; 
				ELSE
					next_state <= S3;
            END IF;
         WHEN S3 =>
			state_output <= "0011"; 
               IF (EW_monitor = '1') then 
				next_state <= S6; 
				ELSE
					next_state <= S4;
            END IF;
         WHEN S4 =>
			state_output <= "0100"; 
               IF (EW_monitor = '1') then 
				next_state <= S6; 
				ELSE
					next_state <= S5;
            END IF;	
         WHEN S5 =>
			state_output <= "0101"; 
             next_state <= S6;
          			
         WHEN S6 =>
			state_output <= "0110"; 
            next_state <= S7;	
				
         WHEN S7 =>
			state_output <= "0111"; 
				IF (sw1 = '1') then
				next_state <= reduced;
				ELSIF (sw0 = '1') then 
				next_state <= night; 
				ELSE
					next_state <= S8;
            END IF;
			
			WHEN S8 =>
			state_output <= "1000"; 
                IF (NS_monitor = '1') then 
				next_state <= S14; 
				ELSE
					next_state <= S9;
            END IF;
			WHEN S9 =>
			state_output <= "1001"; 
             IF (NS_monitor = '1') then 
				next_state <= S14; 
				ELSE
					next_state <= S10;
            END IF;
			WHEN S10 =>
                IF (NS_monitor = '1') then 
				next_state <= S14; 
				ELSE
					next_state <= S11;
            END IF;		
		   
			WHEN S11 =>
			state_output <= "1011"; 
               IF (NS_monitor = '1') then 
				next_state <= S14; 
				ELSE
					next_state <= S12;
            END IF;
			WHEN S12 =>
			state_output <= "1100"; 
               IF (NS_monitor = '1') then 
				next_state <= S14; 
				ELSE
					next_state <= S13;
            END IF;
			WHEN S13 =>
				state_output <= "1101"; 
					next_state <= S14;
           
			WHEN S14 =>
			state_output <= "1110"; 
            next_state <= S15;
				
			WHEN S15 => --> if lower than next state will go to lower state of S14
			state_output <= "1111"; 
				 IF (sw1 = '1') then 
				 next_state <= reduced; 
				 ELSIF (sw0 = '1') then
				 next_state <= night; 
				 ELSE 
				 next_state <= S0;		
				END IF; 
			WHEN night => 
			--state_output <= "0000"; 
				if (sw1 = '1') THEN 
				next_state <= reduced; 
				ELSIF (sw0 = '0') THEN
				next_state <= S6; 
				ELSE
				next_state <= night;
				END IF;
			WHEN reduced =>
			--state_output <= "0000"; 
				IF (sw0 = '1' and sw1 = '0') THEN 
				next_state <= night;
				ELSIF (sw0 = '1') THEN
				next_state <= reduced;
				ELSIF (sw1 = '0') THEN 
				next_state <= S6;
				ELSE 
				next_state <= reduced;
				END IF;
         WHEN others => --if something else happens, next state just becomes S0
               next_state <= S0;
					
		END CASE;
 END PROCESS;
 
QQ <= "000" & strobe_two & "000" when current_state = S0 else --QQ is our output hex. Here we decode our results from the case above into results for QQ
		"000" & strobe_two & "000" when current_state = S1 else --As we see here, QQ values change depending on what state our current state ends on
		"0001000" when current_state = S2 else --QQ goes through each binary value corresponding to our state value
		"0001000" when current_state = S3 else 
		"0001000" when current_state = S4 else 
		"0001000" when current_state = S5 else 
		"1000000" when current_state = S6 else 
		"1000000" when current_state = S7 else 
		"0000001" when current_state = S8 else 
		"0000001" when current_state = S9 else 
		"0000001" when current_state = S10 else 
		"0000001" when current_state = S11 else 
		"0000001" when current_state = S12 else 
		"0000001" when current_state = S13 else 
		"0000001" when current_state = S14 else 
		"0000001"when current_state = S15 else 
		"0001000" when current_state = night else 
		strobe_one & "000000" when current_state = reduced else 
		"000" & strobe_two & "000"; 
		
QQ2<= "0000001" when current_state = S0 else
      "0000001" when current_state = S1 else
		"0000001" when current_state = S2 else --QQ goes through each binary value corresponding to our state value
		"0000001" when current_state = S3 else 
		"0000001" when current_state = S4 else 
		"0000001" when current_state = S5 else 
		"0000001" when current_state = S6 else 
		"0000001" when current_state = S7 else
		"000" & strobe_two & "000" when current_state = S8 else --QQ is our output hex. Here we decode our results from the case above into results for QQ
		"000" & strobe_two & "000" when current_state = S9 else --As we see here, QQ values change depending on what state our current state ends on	
		"0001000" when current_state = S10 else 
		"0001000" when current_state = S11 else 
		"0001000" when current_state = S12 else 
		"0001000" when current_state = S13 else 
		"1000000" when current_state = S14 else 
		"1000000"when current_state = S15  else 
		"0000001" when current_state = night else 
		"000000" & strobe_one when current_state = reduced else 
		"0000001"; 

Decoder_section3 : PROCESS (current_state) 
Begin 
	Case current_state is 
	When S15 => 
		NS_clear <= '1'; 
	when others => 
		NS_clear <= '0';
	End Case; 
End Process;

Decoder_section4 : PROCESS (current_state) 
Begin 
 Case current_state is 
 When S7 => 
	EW_clear <= '1';
 When others => 
   EW_clear <= '0';
End Case; 
End Process; 	
		
Decoder_section5 : PROCESS (current_state) 
Begin 
	CASE current_state IS 
	 when night => 
	 SM_night <='1';
	 when reduced =>
	 SM_reduced <= '1';
	 When Others => 
	 SM_night <= '0';
	 SM_reduced <= '0';
	END CASE;
END PROCESS;

END ARCHITECTURE MSM;
