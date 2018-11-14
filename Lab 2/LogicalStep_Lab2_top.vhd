library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity LogicalStep_Lab2_top is port (
   clkin_50			: in	std_logic;
	pb					: in	std_logic_vector(3 downto 0);
 	sw   				: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds				: out std_logic_vector(7 downto 0); -- for displaying the switch content
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab2_top;

architecture SimpleCircuit of LogicalStep_Lab2_top is
--
-- Components Used ---
------------------------------------------------------------------- 
  component SevenSegment port (
   hex   		:  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg 	:  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
   end component;
	
	 component segment7_mux port (
   clk : in std_logic := '0';
	DIN2 : in std_logic_vector (6 downto 0);
	DIN1 : in std_logic_vector (6 downto 0);
	DOUT : out std_logic_vector (6 downto 0);
	DIG2 : out std_logic;
	DIG1 : out std_logic
   ); 
   end component;
	
	 component Adder port (
	 add_inpA : in std_logic_vector (6 downto 0);
	 add_inpB : in std_logic_vector (6 downto 0);
	 sum : out std_logic
   ); 
   end component;

	 component LogicProcessor port (
	 
   ); 
   end component;
	
	
	
-- Create any signals, or temporary variables to be used
--
--  std_logic_vector is a signal which can be used for logic operations such as OR, AND, NOT, XOR
--
	signal seg7_A		: std_logic_vector(6 downto 0);
	signal hex_A		: std_logic_vector(3 downto 0);
	signal seg7_B     : std_logic_vector(6 downto 0);
	signal hex_B		: std_logic_vector(3 downto 0);
	
	
	--signal Operand1   : std_logic_vector(3 downto 0);
	--signal Operand2   : std_logic_vector(3 downto 0);  //this was the same thing as hex so it is redundant 
	signal OPERATOR   : std_logic_vector(3 downto 0);
	signal LOGICALRESULT : std_logic_vector(3 downto 0);
	signal ARITHMETICRESULT : std_logic_vector(6 downto 0);
-- Here the circuit begins

begin

hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);
LOG3res3to0 <= leds(3 downto 0);
LOGres7to4 <= leds(7 downto 4);
sumvalues <= seg7_data(6 downto 0);
sumleds <= leds(7 downto 0);

OPERATOR <= pb(3 downto 0);


--COMPONENT HOOKUP
--
-- generate the seven segment coding
   INST1: SevenSegment port map(hex_A, seg7_A);
	INST2: SevenSegment port map(hex_B, seg7_B);
	INST3: segment7_mux port map(Clkin_50,seg7_A, seg7_B,seg7_data,seg7_char2, seg7_char1);
	INST4: Adder port map (hex_A, hex_B, sum);
end SimpleCircuit;




-- concatenate: "0000" & 1111 gives a vector of 00001111
-- A <= "0101"; B <= "1100" ; C <= A & B;
