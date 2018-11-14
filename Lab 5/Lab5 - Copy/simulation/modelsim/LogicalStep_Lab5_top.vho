-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/18/2017 00:08:27"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab5_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(1 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab5_top;

-- Design Ports Information
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab5_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST1|WideOr2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GEN1|strobe~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \GEN1|Add0~0_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~18_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \GEN1|Add0~1\ : std_logic;
SIGNAL \GEN1|Add0~2_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~17_combout\ : std_logic;
SIGNAL \GEN1|Add0~3\ : std_logic;
SIGNAL \GEN1|Add0~4_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~16_combout\ : std_logic;
SIGNAL \GEN1|Add0~5\ : std_logic;
SIGNAL \GEN1|Add0~6_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~15_combout\ : std_logic;
SIGNAL \GEN1|Add0~7\ : std_logic;
SIGNAL \GEN1|Add0~8_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN1|Add0~9\ : std_logic;
SIGNAL \GEN1|Add0~10_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN1|Add0~11\ : std_logic;
SIGNAL \GEN1|Add0~12_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[6]~31_combout\ : std_logic;
SIGNAL \GEN1|Add0~13\ : std_logic;
SIGNAL \GEN1|Add0~14_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~19_combout\ : std_logic;
SIGNAL \GEN1|Add0~15\ : std_logic;
SIGNAL \GEN1|Add0~16_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN1|Add0~17\ : std_logic;
SIGNAL \GEN1|Add0~18_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN1|Add0~19\ : std_logic;
SIGNAL \GEN1|Add0~20_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN1|Add0~21\ : std_logic;
SIGNAL \GEN1|Add0~22_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[11]~30_combout\ : std_logic;
SIGNAL \GEN1|Equal0~6_combout\ : std_logic;
SIGNAL \GEN1|Add0~23\ : std_logic;
SIGNAL \GEN1|Add0~24_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[12]~29_combout\ : std_logic;
SIGNAL \GEN1|Add0~25\ : std_logic;
SIGNAL \GEN1|Add0~26_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[13]~28_combout\ : std_logic;
SIGNAL \GEN1|Add0~27\ : std_logic;
SIGNAL \GEN1|Add0~28_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[14]~27_combout\ : std_logic;
SIGNAL \GEN1|Add0~29\ : std_logic;
SIGNAL \GEN1|Add0~30_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN1|Equal0~5_combout\ : std_logic;
SIGNAL \GEN1|Equal0~7_combout\ : std_logic;
SIGNAL \GEN1|Equal0~8_combout\ : std_logic;
SIGNAL \GEN1|Equal0~9_combout\ : std_logic;
SIGNAL \GEN1|Add0~31\ : std_logic;
SIGNAL \GEN1|Add0~32_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[16]~26_combout\ : std_logic;
SIGNAL \GEN1|Add0~33\ : std_logic;
SIGNAL \GEN1|Add0~34_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN1|Add0~35\ : std_logic;
SIGNAL \GEN1|Add0~36_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[18]~25_combout\ : std_logic;
SIGNAL \GEN1|Add0~37\ : std_logic;
SIGNAL \GEN1|Add0~38_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[19]~24_combout\ : std_logic;
SIGNAL \GEN1|Equal0~3_combout\ : std_logic;
SIGNAL \GEN1|Add0~39\ : std_logic;
SIGNAL \GEN1|Add0~40_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[20]~23_combout\ : std_logic;
SIGNAL \GEN1|Add0~41\ : std_logic;
SIGNAL \GEN1|Add0~42_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[21]~22_combout\ : std_logic;
SIGNAL \GEN1|Add0~43\ : std_logic;
SIGNAL \GEN1|Add0~44_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[22]~21_combout\ : std_logic;
SIGNAL \GEN1|Add0~45\ : std_logic;
SIGNAL \GEN1|Add0~46_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN1|Equal0~2_combout\ : std_logic;
SIGNAL \GEN1|Add0~47\ : std_logic;
SIGNAL \GEN1|Add0~48_combout\ : std_logic;
SIGNAL \GEN1|bin_counter[24]~20_combout\ : std_logic;
SIGNAL \GEN1|Add0~49\ : std_logic;
SIGNAL \GEN1|Add0~50_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN1|Add0~51\ : std_logic;
SIGNAL \GEN1|Add0~52_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN1|Add0~53\ : std_logic;
SIGNAL \GEN1|Add0~54_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~1_combout\ : std_logic;
SIGNAL \GEN1|Add0~55\ : std_logic;
SIGNAL \GEN1|Add0~56_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN1|Add0~57\ : std_logic;
SIGNAL \GEN1|Add0~58_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN1|Add0~59\ : std_logic;
SIGNAL \GEN1|Add0~60_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN1|Add0~61\ : std_logic;
SIGNAL \GEN1|Add0~62_combout\ : std_logic;
SIGNAL \GEN1|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN1|Equal0~0_combout\ : std_logic;
SIGNAL \GEN1|Equal0~4_combout\ : std_logic;
SIGNAL \GEN1|Equal0~10_combout\ : std_logic;
SIGNAL \GEN1|terminal_count~feeder_combout\ : std_logic;
SIGNAL \GEN1|terminal_count~q\ : std_logic;
SIGNAL \GEN1|strobe~0_combout\ : std_logic;
SIGNAL \GEN1|strobe~feeder_combout\ : std_logic;
SIGNAL \GEN1|strobe~q\ : std_logic;
SIGNAL \GEN1|strobe~clkctrl_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \GEN2|Add0~0_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~23_combout\ : std_logic;
SIGNAL \GEN2|Add0~1\ : std_logic;
SIGNAL \GEN2|Add0~2_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~22_combout\ : std_logic;
SIGNAL \GEN2|Add0~3\ : std_logic;
SIGNAL \GEN2|Add0~4_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~21_combout\ : std_logic;
SIGNAL \GEN2|Add0~5\ : std_logic;
SIGNAL \GEN2|Add0~6_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~20_combout\ : std_logic;
SIGNAL \GEN2|Equal0~9_combout\ : std_logic;
SIGNAL \GEN2|Add0~7\ : std_logic;
SIGNAL \GEN2|Add0~8_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~19_combout\ : std_logic;
SIGNAL \GEN2|Add0~9\ : std_logic;
SIGNAL \GEN2|Add0~10_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~18_combout\ : std_logic;
SIGNAL \GEN2|Add0~11\ : std_logic;
SIGNAL \GEN2|Add0~12_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[6]~31_combout\ : std_logic;
SIGNAL \GEN2|Add0~13\ : std_logic;
SIGNAL \GEN2|Add0~14_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~17_combout\ : std_logic;
SIGNAL \GEN2|Add0~15\ : std_logic;
SIGNAL \GEN2|Add0~16_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[8]~30_combout\ : std_logic;
SIGNAL \GEN2|Add0~17\ : std_logic;
SIGNAL \GEN2|Add0~18_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[9]~29_combout\ : std_logic;
SIGNAL \GEN2|Add0~19\ : std_logic;
SIGNAL \GEN2|Add0~20_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~16_combout\ : std_logic;
SIGNAL \GEN2|Add0~21\ : std_logic;
SIGNAL \GEN2|Add0~22_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[11]~28_combout\ : std_logic;
SIGNAL \GEN2|Add0~23\ : std_logic;
SIGNAL \GEN2|Add0~24_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~15_combout\ : std_logic;
SIGNAL \GEN2|Add0~25\ : std_logic;
SIGNAL \GEN2|Add0~26_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~14_combout\ : std_logic;
SIGNAL \GEN2|Add0~27\ : std_logic;
SIGNAL \GEN2|Add0~28_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[14]~27_combout\ : std_logic;
SIGNAL \GEN2|Add0~29\ : std_logic;
SIGNAL \GEN2|Add0~30_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~13_combout\ : std_logic;
SIGNAL \GEN2|Add0~31\ : std_logic;
SIGNAL \GEN2|Add0~32_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~12_combout\ : std_logic;
SIGNAL \GEN2|Add0~33\ : std_logic;
SIGNAL \GEN2|Add0~34_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~11_combout\ : std_logic;
SIGNAL \GEN2|Add0~35\ : std_logic;
SIGNAL \GEN2|Add0~36_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[18]~26_combout\ : std_logic;
SIGNAL \GEN2|Add0~37\ : std_logic;
SIGNAL \GEN2|Add0~38_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[19]~25_combout\ : std_logic;
SIGNAL \GEN2|Add0~39\ : std_logic;
SIGNAL \GEN2|Add0~40_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~10_combout\ : std_logic;
SIGNAL \GEN2|Add0~41\ : std_logic;
SIGNAL \GEN2|Add0~42_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~9_combout\ : std_logic;
SIGNAL \GEN2|Add0~43\ : std_logic;
SIGNAL \GEN2|Add0~44_combout\ : std_logic;
SIGNAL \GEN2|bin_counter[22]~24_combout\ : std_logic;
SIGNAL \GEN2|Add0~45\ : std_logic;
SIGNAL \GEN2|Add0~46_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~8_combout\ : std_logic;
SIGNAL \GEN2|Equal0~2_combout\ : std_logic;
SIGNAL \GEN2|Add0~47\ : std_logic;
SIGNAL \GEN2|Add0~48_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~7_combout\ : std_logic;
SIGNAL \GEN2|Add0~49\ : std_logic;
SIGNAL \GEN2|Add0~50_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~6_combout\ : std_logic;
SIGNAL \GEN2|Add0~51\ : std_logic;
SIGNAL \GEN2|Add0~52_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~5_combout\ : std_logic;
SIGNAL \GEN2|Add0~53\ : std_logic;
SIGNAL \GEN2|Add0~54_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~4_combout\ : std_logic;
SIGNAL \GEN2|Equal0~1_combout\ : std_logic;
SIGNAL \GEN2|Add0~55\ : std_logic;
SIGNAL \GEN2|Add0~56_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~3_combout\ : std_logic;
SIGNAL \GEN2|Add0~57\ : std_logic;
SIGNAL \GEN2|Add0~58_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~2_combout\ : std_logic;
SIGNAL \GEN2|Add0~59\ : std_logic;
SIGNAL \GEN2|Add0~60_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~1_combout\ : std_logic;
SIGNAL \GEN2|Add0~61\ : std_logic;
SIGNAL \GEN2|Add0~62_combout\ : std_logic;
SIGNAL \GEN2|bin_counter~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~0_combout\ : std_logic;
SIGNAL \GEN2|Equal0~3_combout\ : std_logic;
SIGNAL \GEN2|Equal0~4_combout\ : std_logic;
SIGNAL \GEN2|Equal0~5_combout\ : std_logic;
SIGNAL \GEN2|Equal0~6_combout\ : std_logic;
SIGNAL \GEN2|Equal0~7_combout\ : std_logic;
SIGNAL \GEN2|Equal0~8_combout\ : std_logic;
SIGNAL \GEN2|Equal0~10_combout\ : std_logic;
SIGNAL \GEN2|terminal_count~q\ : std_logic;
SIGNAL \GEN2|strobe~0_combout\ : std_logic;
SIGNAL \GEN2|strobe~feeder_combout\ : std_logic;
SIGNAL \GEN2|strobe~q\ : std_logic;
SIGNAL \GEN2|full_cycle~0_combout\ : std_logic;
SIGNAL \GEN2|full_cycle~q\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST2|Dintermediate~0_combout\ : std_logic;
SIGNAL \INST2|Dintermediate~q\ : std_logic;
SIGNAL \INST2|Dfinal~feeder_combout\ : std_logic;
SIGNAL \INST2|Dfinal~q\ : std_logic;
SIGNAL \INST4|DoutR~0_combout\ : std_logic;
SIGNAL \INST4|DoutR~q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \INST1|Selector3~4_combout\ : std_logic;
SIGNAL \INST1|current_state.reduced~feeder_combout\ : std_logic;
SIGNAL \INST1|current_state.reduced~q\ : std_logic;
SIGNAL \INST1|WideOr2~0_combout\ : std_logic;
SIGNAL \INST1|WideOr8~1_combout\ : std_logic;
SIGNAL \INST1|Selector2~0_combout\ : std_logic;
SIGNAL \INST1|current_state.night~feeder_combout\ : std_logic;
SIGNAL \INST1|current_state.night~q\ : std_logic;
SIGNAL \INST1|Selector0~0_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST3|Dintermediate~0_combout\ : std_logic;
SIGNAL \INST3|Dintermediate~q\ : std_logic;
SIGNAL \INST3|Dfinal~feeder_combout\ : std_logic;
SIGNAL \INST3|Dfinal~q\ : std_logic;
SIGNAL \INST5|DoutR~0_combout\ : std_logic;
SIGNAL \INST5|DoutR~q\ : std_logic;
SIGNAL \INST1|next_state.S1~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S1~q\ : std_logic;
SIGNAL \INST1|next_state.S2~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S2~q\ : std_logic;
SIGNAL \INST1|next_state.S3~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S3~q\ : std_logic;
SIGNAL \INST1|next_state.S4~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S4~q\ : std_logic;
SIGNAL \INST1|next_state.S5~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S5~q\ : std_logic;
SIGNAL \Seg1|DOUT[3]~4_combout\ : std_logic;
SIGNAL \INST1|Selector0~1_combout\ : std_logic;
SIGNAL \INST1|Selector0~2_combout\ : std_logic;
SIGNAL \INST1|current_state.S6~q\ : std_logic;
SIGNAL \INST1|current_state.S7~q\ : std_logic;
SIGNAL \INST1|next_state.S8~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S8~q\ : std_logic;
SIGNAL \INST1|next_state.S9~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S9~q\ : std_logic;
SIGNAL \INST1|QQ~1_combout\ : std_logic;
SIGNAL \INST1|next_state.S10~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S10~feeder_combout\ : std_logic;
SIGNAL \INST1|current_state.S10~q\ : std_logic;
SIGNAL \INST1|next_state.S11~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S11~q\ : std_logic;
SIGNAL \INST1|next_state.S12~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S12~q\ : std_logic;
SIGNAL \INST1|next_state.S13~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S13~q\ : std_logic;
SIGNAL \INST1|QQ2~0_combout\ : std_logic;
SIGNAL \INST1|Selector1~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S14~q\ : std_logic;
SIGNAL \INST1|current_state.S15~q\ : std_logic;
SIGNAL \INST1|next_state.S0~0_combout\ : std_logic;
SIGNAL \INST1|current_state.S0~q\ : std_logic;
SIGNAL \Seg1|DOUT_TEMP[6]~0_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST1|QQ~2_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \Seg1|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \Seg1|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \INST1|WideOr6~0_combout\ : std_logic;
SIGNAL \Seg1|DOUT_TEMP[6]~1_combout\ : std_logic;
SIGNAL \Seg1|DOUT_TEMP[6]~3_combout\ : std_logic;
SIGNAL \INST1|WideOr8~0_combout\ : std_logic;
SIGNAL \INST1|WideOr8~combout\ : std_logic;
SIGNAL \INST1|WideOr2~combout\ : std_logic;
SIGNAL \INST1|WideOr2~clkctrl_outclk\ : std_logic;
SIGNAL \INST1|WideOr6~combout\ : std_logic;
SIGNAL \INST1|WideOr4~0_combout\ : std_logic;
SIGNAL \INST1|WideOr4~combout\ : std_logic;
SIGNAL \Seg1|DOUT[0]~2_combout\ : std_logic;
SIGNAL \INST1|SM_night~combout\ : std_logic;
SIGNAL \INST1|SM_reduced~combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \leds~1_combout\ : std_logic;
SIGNAL \Seg1|DOUT[0]~5_combout\ : std_logic;
SIGNAL \Seg1|DOUT[0]~13_combout\ : std_logic;
SIGNAL \Seg1|DOUT[0]~6_combout\ : std_logic;
SIGNAL \INST1|QQ2~1_combout\ : std_logic;
SIGNAL \INST1|QQ~0_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~7_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~8_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~9_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~10_combout\ : std_logic;
SIGNAL \Seg1|DOUT[3]~11_combout\ : std_logic;
SIGNAL \GEN2|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \GEN1|bin_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \INST1|state_output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GEN1|ALT_INV_terminal_count~q\ : std_logic;
SIGNAL \GEN2|ALT_INV_terminal_count~q\ : std_logic;
SIGNAL \Seg1|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\INST1|WideOr2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST1|WideOr2~combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\GEN1|strobe~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GEN1|strobe~q\);
\GEN1|ALT_INV_terminal_count~q\ <= NOT \GEN1|terminal_count~q\;
\GEN2|ALT_INV_terminal_count~q\ <= NOT \GEN2|terminal_count~q\;
\Seg1|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \Seg1|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y23_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Seg1|DOUT_TEMP[6]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN2|strobe~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN1|strobe~q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|state_output\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|state_output\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|state_output\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|state_output\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~1_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Seg1|DOUT[0]~6_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Seg1|DOUT[3]~11_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Seg1|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Seg1|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y12_N0
\GEN1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~0_combout\ = \GEN1|bin_counter\(0) $ (VCC)
-- \GEN1|Add0~1\ = CARRY(\GEN1|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(0),
	datad => VCC,
	combout => \GEN1|Add0~0_combout\,
	cout => \GEN1|Add0~1\);

-- Location: LCCOMB_X17_Y12_N16
\GEN1|bin_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~18_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~0_combout\,
	combout => \GEN1|bin_counter~18_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X17_Y12_N17
\GEN1|bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(0));

-- Location: LCCOMB_X18_Y12_N2
\GEN1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~2_combout\ = (\GEN1|bin_counter\(1) & (\GEN1|Add0~1\ & VCC)) # (!\GEN1|bin_counter\(1) & (!\GEN1|Add0~1\))
-- \GEN1|Add0~3\ = CARRY((!\GEN1|bin_counter\(1) & !\GEN1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(1),
	datad => VCC,
	cin => \GEN1|Add0~1\,
	combout => \GEN1|Add0~2_combout\,
	cout => \GEN1|Add0~3\);

-- Location: LCCOMB_X17_Y12_N22
\GEN1|bin_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~17_combout\ = (\GEN1|Add0~2_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~2_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~17_combout\);

-- Location: FF_X17_Y12_N23
\GEN1|bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(1));

-- Location: LCCOMB_X18_Y12_N4
\GEN1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~4_combout\ = (\GEN1|bin_counter\(2) & ((GND) # (!\GEN1|Add0~3\))) # (!\GEN1|bin_counter\(2) & (\GEN1|Add0~3\ $ (GND)))
-- \GEN1|Add0~5\ = CARRY((\GEN1|bin_counter\(2)) # (!\GEN1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(2),
	datad => VCC,
	cin => \GEN1|Add0~3\,
	combout => \GEN1|Add0~4_combout\,
	cout => \GEN1|Add0~5\);

-- Location: LCCOMB_X17_Y12_N12
\GEN1|bin_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~16_combout\ = (\GEN1|Add0~4_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~4_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~16_combout\);

-- Location: FF_X17_Y12_N13
\GEN1|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(2));

-- Location: LCCOMB_X18_Y12_N6
\GEN1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~6_combout\ = (\GEN1|bin_counter\(3) & (\GEN1|Add0~5\ & VCC)) # (!\GEN1|bin_counter\(3) & (!\GEN1|Add0~5\))
-- \GEN1|Add0~7\ = CARRY((!\GEN1|bin_counter\(3) & !\GEN1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(3),
	datad => VCC,
	cin => \GEN1|Add0~5\,
	combout => \GEN1|Add0~6_combout\,
	cout => \GEN1|Add0~7\);

-- Location: LCCOMB_X17_Y12_N10
\GEN1|bin_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~15_combout\ = (\GEN1|Add0~6_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~6_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~15_combout\);

-- Location: FF_X17_Y12_N11
\GEN1|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(3));

-- Location: LCCOMB_X18_Y12_N8
\GEN1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~8_combout\ = (\GEN1|bin_counter\(4) & ((GND) # (!\GEN1|Add0~7\))) # (!\GEN1|bin_counter\(4) & (\GEN1|Add0~7\ $ (GND)))
-- \GEN1|Add0~9\ = CARRY((\GEN1|bin_counter\(4)) # (!\GEN1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(4),
	datad => VCC,
	cin => \GEN1|Add0~7\,
	combout => \GEN1|Add0~8_combout\,
	cout => \GEN1|Add0~9\);

-- Location: LCCOMB_X17_Y12_N14
\GEN1|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~14_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~8_combout\,
	combout => \GEN1|bin_counter~14_combout\);

-- Location: FF_X17_Y12_N15
\GEN1|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(4));

-- Location: LCCOMB_X18_Y12_N10
\GEN1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~10_combout\ = (\GEN1|bin_counter\(5) & (\GEN1|Add0~9\ & VCC)) # (!\GEN1|bin_counter\(5) & (!\GEN1|Add0~9\))
-- \GEN1|Add0~11\ = CARRY((!\GEN1|bin_counter\(5) & !\GEN1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(5),
	datad => VCC,
	cin => \GEN1|Add0~9\,
	combout => \GEN1|Add0~10_combout\,
	cout => \GEN1|Add0~11\);

-- Location: LCCOMB_X17_Y12_N4
\GEN1|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~13_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~10_combout\,
	combout => \GEN1|bin_counter~13_combout\);

-- Location: FF_X17_Y12_N5
\GEN1|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(5));

-- Location: LCCOMB_X18_Y12_N12
\GEN1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~12_combout\ = (\GEN1|bin_counter\(6) & (\GEN1|Add0~11\ $ (GND))) # (!\GEN1|bin_counter\(6) & ((GND) # (!\GEN1|Add0~11\)))
-- \GEN1|Add0~13\ = CARRY((!\GEN1|Add0~11\) # (!\GEN1|bin_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(6),
	datad => VCC,
	cin => \GEN1|Add0~11\,
	combout => \GEN1|Add0~12_combout\,
	cout => \GEN1|Add0~13\);

-- Location: LCCOMB_X17_Y12_N2
\GEN1|bin_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[6]~31_combout\ = !\GEN1|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~12_combout\,
	combout => \GEN1|bin_counter[6]~31_combout\);

-- Location: FF_X17_Y12_N3
\GEN1|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[6]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(6));

-- Location: LCCOMB_X18_Y12_N14
\GEN1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~14_combout\ = (\GEN1|bin_counter\(7) & (\GEN1|Add0~13\ & VCC)) # (!\GEN1|bin_counter\(7) & (!\GEN1|Add0~13\))
-- \GEN1|Add0~15\ = CARRY((!\GEN1|bin_counter\(7) & !\GEN1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(7),
	datad => VCC,
	cin => \GEN1|Add0~13\,
	combout => \GEN1|Add0~14_combout\,
	cout => \GEN1|Add0~15\);

-- Location: LCCOMB_X17_Y12_N28
\GEN1|bin_counter~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~19_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~14_combout\,
	combout => \GEN1|bin_counter~19_combout\);

-- Location: FF_X17_Y12_N29
\GEN1|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(7));

-- Location: LCCOMB_X18_Y12_N16
\GEN1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~16_combout\ = (\GEN1|bin_counter\(8) & ((GND) # (!\GEN1|Add0~15\))) # (!\GEN1|bin_counter\(8) & (\GEN1|Add0~15\ $ (GND)))
-- \GEN1|Add0~17\ = CARRY((\GEN1|bin_counter\(8)) # (!\GEN1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(8),
	datad => VCC,
	cin => \GEN1|Add0~15\,
	combout => \GEN1|Add0~16_combout\,
	cout => \GEN1|Add0~17\);

-- Location: LCCOMB_X19_Y12_N12
\GEN1|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~12_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~16_combout\,
	combout => \GEN1|bin_counter~12_combout\);

-- Location: FF_X18_Y12_N19
\GEN1|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(8));

-- Location: LCCOMB_X18_Y12_N18
\GEN1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~18_combout\ = (\GEN1|bin_counter\(9) & (\GEN1|Add0~17\ & VCC)) # (!\GEN1|bin_counter\(9) & (!\GEN1|Add0~17\))
-- \GEN1|Add0~19\ = CARRY((!\GEN1|bin_counter\(9) & !\GEN1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(9),
	datad => VCC,
	cin => \GEN1|Add0~17\,
	combout => \GEN1|Add0~18_combout\,
	cout => \GEN1|Add0~19\);

-- Location: LCCOMB_X19_Y12_N18
\GEN1|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~11_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~18_combout\,
	combout => \GEN1|bin_counter~11_combout\);

-- Location: FF_X18_Y12_N17
\GEN1|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(9));

-- Location: LCCOMB_X18_Y12_N20
\GEN1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~20_combout\ = (\GEN1|bin_counter\(10) & ((GND) # (!\GEN1|Add0~19\))) # (!\GEN1|bin_counter\(10) & (\GEN1|Add0~19\ $ (GND)))
-- \GEN1|Add0~21\ = CARRY((\GEN1|bin_counter\(10)) # (!\GEN1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(10),
	datad => VCC,
	cin => \GEN1|Add0~19\,
	combout => \GEN1|Add0~20_combout\,
	cout => \GEN1|Add0~21\);

-- Location: LCCOMB_X19_Y12_N8
\GEN1|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~10_combout\ = (\GEN1|Add0~20_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~20_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~10_combout\);

-- Location: FF_X18_Y12_N15
\GEN1|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(10));

-- Location: LCCOMB_X18_Y12_N22
\GEN1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~22_combout\ = (\GEN1|bin_counter\(11) & (!\GEN1|Add0~21\)) # (!\GEN1|bin_counter\(11) & (\GEN1|Add0~21\ & VCC))
-- \GEN1|Add0~23\ = CARRY((\GEN1|bin_counter\(11) & !\GEN1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(11),
	datad => VCC,
	cin => \GEN1|Add0~21\,
	combout => \GEN1|Add0~22_combout\,
	cout => \GEN1|Add0~23\);

-- Location: LCCOMB_X19_Y12_N22
\GEN1|bin_counter[11]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[11]~30_combout\ = !\GEN1|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~22_combout\,
	combout => \GEN1|bin_counter[11]~30_combout\);

-- Location: FF_X18_Y12_N13
\GEN1|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter[11]~30_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(11));

-- Location: LCCOMB_X19_Y12_N26
\GEN1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~6_combout\ = (\GEN1|bin_counter\(11) & (!\GEN1|bin_counter\(8) & (!\GEN1|bin_counter\(9) & !\GEN1|bin_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(11),
	datab => \GEN1|bin_counter\(8),
	datac => \GEN1|bin_counter\(9),
	datad => \GEN1|bin_counter\(10),
	combout => \GEN1|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y12_N24
\GEN1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~24_combout\ = (\GEN1|bin_counter\(12) & (\GEN1|Add0~23\ $ (GND))) # (!\GEN1|bin_counter\(12) & ((GND) # (!\GEN1|Add0~23\)))
-- \GEN1|Add0~25\ = CARRY((!\GEN1|Add0~23\) # (!\GEN1|bin_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(12),
	datad => VCC,
	cin => \GEN1|Add0~23\,
	combout => \GEN1|Add0~24_combout\,
	cout => \GEN1|Add0~25\);

-- Location: LCCOMB_X19_Y12_N20
\GEN1|bin_counter[12]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[12]~29_combout\ = !\GEN1|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~24_combout\,
	combout => \GEN1|bin_counter[12]~29_combout\);

-- Location: FF_X18_Y12_N7
\GEN1|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter[12]~29_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(12));

-- Location: LCCOMB_X18_Y12_N26
\GEN1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~26_combout\ = (\GEN1|bin_counter\(13) & (!\GEN1|Add0~25\)) # (!\GEN1|bin_counter\(13) & (\GEN1|Add0~25\ & VCC))
-- \GEN1|Add0~27\ = CARRY((\GEN1|bin_counter\(13) & !\GEN1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(13),
	datad => VCC,
	cin => \GEN1|Add0~25\,
	combout => \GEN1|Add0~26_combout\,
	cout => \GEN1|Add0~27\);

-- Location: LCCOMB_X19_Y12_N10
\GEN1|bin_counter[13]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[13]~28_combout\ = !\GEN1|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~26_combout\,
	combout => \GEN1|bin_counter[13]~28_combout\);

-- Location: FF_X18_Y12_N5
\GEN1|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter[13]~28_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(13));

-- Location: LCCOMB_X18_Y12_N28
\GEN1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~28_combout\ = (\GEN1|bin_counter\(14) & (\GEN1|Add0~27\ $ (GND))) # (!\GEN1|bin_counter\(14) & ((GND) # (!\GEN1|Add0~27\)))
-- \GEN1|Add0~29\ = CARRY((!\GEN1|Add0~27\) # (!\GEN1|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(14),
	datad => VCC,
	cin => \GEN1|Add0~27\,
	combout => \GEN1|Add0~28_combout\,
	cout => \GEN1|Add0~29\);

-- Location: LCCOMB_X19_Y12_N0
\GEN1|bin_counter[14]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[14]~27_combout\ = !\GEN1|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~28_combout\,
	combout => \GEN1|bin_counter[14]~27_combout\);

-- Location: FF_X18_Y12_N3
\GEN1|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter[14]~27_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(14));

-- Location: LCCOMB_X18_Y12_N30
\GEN1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~30_combout\ = (\GEN1|bin_counter\(15) & (\GEN1|Add0~29\ & VCC)) # (!\GEN1|bin_counter\(15) & (!\GEN1|Add0~29\))
-- \GEN1|Add0~31\ = CARRY((!\GEN1|bin_counter\(15) & !\GEN1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(15),
	datad => VCC,
	cin => \GEN1|Add0~29\,
	combout => \GEN1|Add0~30_combout\,
	cout => \GEN1|Add0~31\);

-- Location: LCCOMB_X19_Y12_N30
\GEN1|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~9_combout\ = (\GEN1|Add0~30_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~30_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~9_combout\);

-- Location: FF_X18_Y12_N9
\GEN1|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(15));

-- Location: LCCOMB_X19_Y12_N24
\GEN1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~5_combout\ = (!\GEN1|bin_counter\(15) & (\GEN1|bin_counter\(13) & (\GEN1|bin_counter\(12) & \GEN1|bin_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(15),
	datab => \GEN1|bin_counter\(13),
	datac => \GEN1|bin_counter\(12),
	datad => \GEN1|bin_counter\(14),
	combout => \GEN1|Equal0~5_combout\);

-- Location: LCCOMB_X17_Y12_N24
\GEN1|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~7_combout\ = (!\GEN1|bin_counter\(4) & !\GEN1|bin_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(4),
	datac => \GEN1|bin_counter\(5),
	combout => \GEN1|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y12_N26
\GEN1|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~8_combout\ = (!\GEN1|bin_counter\(3) & (!\GEN1|bin_counter\(0) & (!\GEN1|bin_counter\(1) & !\GEN1|bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(3),
	datab => \GEN1|bin_counter\(0),
	datac => \GEN1|bin_counter\(1),
	datad => \GEN1|bin_counter\(2),
	combout => \GEN1|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y12_N6
\GEN1|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~9_combout\ = (\GEN1|Equal0~7_combout\ & (!\GEN1|bin_counter\(7) & (\GEN1|Equal0~8_combout\ & \GEN1|bin_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~7_combout\,
	datab => \GEN1|bin_counter\(7),
	datac => \GEN1|Equal0~8_combout\,
	datad => \GEN1|bin_counter\(6),
	combout => \GEN1|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y11_N0
\GEN1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~32_combout\ = (\GEN1|bin_counter\(16) & (\GEN1|Add0~31\ $ (GND))) # (!\GEN1|bin_counter\(16) & ((GND) # (!\GEN1|Add0~31\)))
-- \GEN1|Add0~33\ = CARRY((!\GEN1|Add0~31\) # (!\GEN1|bin_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(16),
	datad => VCC,
	cin => \GEN1|Add0~31\,
	combout => \GEN1|Add0~32_combout\,
	cout => \GEN1|Add0~33\);

-- Location: LCCOMB_X19_Y12_N14
\GEN1|bin_counter[16]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[16]~26_combout\ = !\GEN1|Add0~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~32_combout\,
	combout => \GEN1|bin_counter[16]~26_combout\);

-- Location: FF_X18_Y12_N1
\GEN1|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \GEN1|bin_counter[16]~26_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(16));

-- Location: LCCOMB_X18_Y11_N2
\GEN1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~34_combout\ = (\GEN1|bin_counter\(17) & (\GEN1|Add0~33\ & VCC)) # (!\GEN1|bin_counter\(17) & (!\GEN1|Add0~33\))
-- \GEN1|Add0~35\ = CARRY((!\GEN1|bin_counter\(17) & !\GEN1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(17),
	datad => VCC,
	cin => \GEN1|Add0~33\,
	combout => \GEN1|Add0~34_combout\,
	cout => \GEN1|Add0~35\);

-- Location: LCCOMB_X19_Y13_N16
\GEN1|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~8_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~34_combout\,
	combout => \GEN1|bin_counter~8_combout\);

-- Location: FF_X19_Y13_N17
\GEN1|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(17));

-- Location: LCCOMB_X18_Y11_N4
\GEN1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~36_combout\ = (\GEN1|bin_counter\(18) & (\GEN1|Add0~35\ $ (GND))) # (!\GEN1|bin_counter\(18) & ((GND) # (!\GEN1|Add0~35\)))
-- \GEN1|Add0~37\ = CARRY((!\GEN1|Add0~35\) # (!\GEN1|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(18),
	datad => VCC,
	cin => \GEN1|Add0~35\,
	combout => \GEN1|Add0~36_combout\,
	cout => \GEN1|Add0~37\);

-- Location: LCCOMB_X19_Y13_N6
\GEN1|bin_counter[18]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[18]~25_combout\ = !\GEN1|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~36_combout\,
	combout => \GEN1|bin_counter[18]~25_combout\);

-- Location: FF_X19_Y13_N7
\GEN1|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[18]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(18));

-- Location: LCCOMB_X18_Y11_N6
\GEN1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~38_combout\ = (\GEN1|bin_counter\(19) & (!\GEN1|Add0~37\)) # (!\GEN1|bin_counter\(19) & (\GEN1|Add0~37\ & VCC))
-- \GEN1|Add0~39\ = CARRY((\GEN1|bin_counter\(19) & !\GEN1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(19),
	datad => VCC,
	cin => \GEN1|Add0~37\,
	combout => \GEN1|Add0~38_combout\,
	cout => \GEN1|Add0~39\);

-- Location: LCCOMB_X19_Y13_N20
\GEN1|bin_counter[19]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[19]~24_combout\ = !\GEN1|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~38_combout\,
	combout => \GEN1|bin_counter[19]~24_combout\);

-- Location: FF_X19_Y13_N21
\GEN1|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[19]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(19));

-- Location: LCCOMB_X19_Y13_N26
\GEN1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~3_combout\ = (\GEN1|bin_counter\(16) & (\GEN1|bin_counter\(19) & (!\GEN1|bin_counter\(17) & \GEN1|bin_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(16),
	datab => \GEN1|bin_counter\(19),
	datac => \GEN1|bin_counter\(17),
	datad => \GEN1|bin_counter\(18),
	combout => \GEN1|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y11_N8
\GEN1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~40_combout\ = (\GEN1|bin_counter\(20) & (\GEN1|Add0~39\ $ (GND))) # (!\GEN1|bin_counter\(20) & ((GND) # (!\GEN1|Add0~39\)))
-- \GEN1|Add0~41\ = CARRY((!\GEN1|Add0~39\) # (!\GEN1|bin_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(20),
	datad => VCC,
	cin => \GEN1|Add0~39\,
	combout => \GEN1|Add0~40_combout\,
	cout => \GEN1|Add0~41\);

-- Location: LCCOMB_X19_Y13_N22
\GEN1|bin_counter[20]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[20]~23_combout\ = !\GEN1|Add0~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~40_combout\,
	combout => \GEN1|bin_counter[20]~23_combout\);

-- Location: FF_X19_Y13_N23
\GEN1|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[20]~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(20));

-- Location: LCCOMB_X18_Y11_N10
\GEN1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~42_combout\ = (\GEN1|bin_counter\(21) & (!\GEN1|Add0~41\)) # (!\GEN1|bin_counter\(21) & (\GEN1|Add0~41\ & VCC))
-- \GEN1|Add0~43\ = CARRY((\GEN1|bin_counter\(21) & !\GEN1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(21),
	datad => VCC,
	cin => \GEN1|Add0~41\,
	combout => \GEN1|Add0~42_combout\,
	cout => \GEN1|Add0~43\);

-- Location: LCCOMB_X19_Y13_N4
\GEN1|bin_counter[21]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[21]~22_combout\ = !\GEN1|Add0~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~42_combout\,
	combout => \GEN1|bin_counter[21]~22_combout\);

-- Location: FF_X19_Y13_N5
\GEN1|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[21]~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(21));

-- Location: LCCOMB_X18_Y11_N12
\GEN1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~44_combout\ = (\GEN1|bin_counter\(22) & (\GEN1|Add0~43\ $ (GND))) # (!\GEN1|bin_counter\(22) & ((GND) # (!\GEN1|Add0~43\)))
-- \GEN1|Add0~45\ = CARRY((!\GEN1|Add0~43\) # (!\GEN1|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(22),
	datad => VCC,
	cin => \GEN1|Add0~43\,
	combout => \GEN1|Add0~44_combout\,
	cout => \GEN1|Add0~45\);

-- Location: LCCOMB_X19_Y13_N18
\GEN1|bin_counter[22]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[22]~21_combout\ = !\GEN1|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Add0~44_combout\,
	combout => \GEN1|bin_counter[22]~21_combout\);

-- Location: FF_X19_Y13_N19
\GEN1|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[22]~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(22));

-- Location: LCCOMB_X18_Y11_N14
\GEN1|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~46_combout\ = (\GEN1|bin_counter\(23) & (\GEN1|Add0~45\ & VCC)) # (!\GEN1|bin_counter\(23) & (!\GEN1|Add0~45\))
-- \GEN1|Add0~47\ = CARRY((!\GEN1|bin_counter\(23) & !\GEN1|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(23),
	datad => VCC,
	cin => \GEN1|Add0~45\,
	combout => \GEN1|Add0~46_combout\,
	cout => \GEN1|Add0~47\);

-- Location: LCCOMB_X19_Y13_N24
\GEN1|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~7_combout\ = (\GEN1|Add0~46_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~46_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~7_combout\);

-- Location: FF_X19_Y13_N25
\GEN1|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(23));

-- Location: LCCOMB_X19_Y13_N2
\GEN1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~2_combout\ = (\GEN1|bin_counter\(20) & (\GEN1|bin_counter\(22) & (\GEN1|bin_counter\(21) & !\GEN1|bin_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(20),
	datab => \GEN1|bin_counter\(22),
	datac => \GEN1|bin_counter\(21),
	datad => \GEN1|bin_counter\(23),
	combout => \GEN1|Equal0~2_combout\);

-- Location: LCCOMB_X18_Y11_N16
\GEN1|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~48_combout\ = (\GEN1|bin_counter\(24) & (\GEN1|Add0~47\ $ (GND))) # (!\GEN1|bin_counter\(24) & ((GND) # (!\GEN1|Add0~47\)))
-- \GEN1|Add0~49\ = CARRY((!\GEN1|Add0~47\) # (!\GEN1|bin_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(24),
	datad => VCC,
	cin => \GEN1|Add0~47\,
	combout => \GEN1|Add0~48_combout\,
	cout => \GEN1|Add0~49\);

-- Location: LCCOMB_X17_Y12_N8
\GEN1|bin_counter[24]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter[24]~20_combout\ = !\GEN1|Add0~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Add0~48_combout\,
	combout => \GEN1|bin_counter[24]~20_combout\);

-- Location: FF_X17_Y12_N9
\GEN1|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter[24]~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(24));

-- Location: LCCOMB_X18_Y11_N18
\GEN1|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~50_combout\ = (\GEN1|bin_counter\(25) & (\GEN1|Add0~49\ & VCC)) # (!\GEN1|bin_counter\(25) & (!\GEN1|Add0~49\))
-- \GEN1|Add0~51\ = CARRY((!\GEN1|bin_counter\(25) & !\GEN1|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(25),
	datad => VCC,
	cin => \GEN1|Add0~49\,
	combout => \GEN1|Add0~50_combout\,
	cout => \GEN1|Add0~51\);

-- Location: LCCOMB_X17_Y12_N30
\GEN1|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~6_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~50_combout\,
	combout => \GEN1|bin_counter~6_combout\);

-- Location: FF_X17_Y12_N31
\GEN1|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(25));

-- Location: LCCOMB_X18_Y11_N20
\GEN1|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~52_combout\ = (\GEN1|bin_counter\(26) & ((GND) # (!\GEN1|Add0~51\))) # (!\GEN1|bin_counter\(26) & (\GEN1|Add0~51\ $ (GND)))
-- \GEN1|Add0~53\ = CARRY((\GEN1|bin_counter\(26)) # (!\GEN1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(26),
	datad => VCC,
	cin => \GEN1|Add0~51\,
	combout => \GEN1|Add0~52_combout\,
	cout => \GEN1|Add0~53\);

-- Location: LCCOMB_X17_Y12_N20
\GEN1|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~5_combout\ = (\GEN1|Add0~52_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~52_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~5_combout\);

-- Location: FF_X17_Y12_N21
\GEN1|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(26));

-- Location: LCCOMB_X18_Y11_N22
\GEN1|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~54_combout\ = (\GEN1|bin_counter\(27) & (\GEN1|Add0~53\ & VCC)) # (!\GEN1|bin_counter\(27) & (!\GEN1|Add0~53\))
-- \GEN1|Add0~55\ = CARRY((!\GEN1|bin_counter\(27) & !\GEN1|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(27),
	datad => VCC,
	cin => \GEN1|Add0~53\,
	combout => \GEN1|Add0~54_combout\,
	cout => \GEN1|Add0~55\);

-- Location: LCCOMB_X17_Y12_N18
\GEN1|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~4_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~10_combout\,
	datad => \GEN1|Add0~54_combout\,
	combout => \GEN1|bin_counter~4_combout\);

-- Location: FF_X17_Y12_N19
\GEN1|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(27));

-- Location: LCCOMB_X17_Y12_N0
\GEN1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~1_combout\ = (!\GEN1|bin_counter\(25) & (!\GEN1|bin_counter\(26) & (\GEN1|bin_counter\(24) & !\GEN1|bin_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(25),
	datab => \GEN1|bin_counter\(26),
	datac => \GEN1|bin_counter\(24),
	datad => \GEN1|bin_counter\(27),
	combout => \GEN1|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y11_N24
\GEN1|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~56_combout\ = (\GEN1|bin_counter\(28) & ((GND) # (!\GEN1|Add0~55\))) # (!\GEN1|bin_counter\(28) & (\GEN1|Add0~55\ $ (GND)))
-- \GEN1|Add0~57\ = CARRY((\GEN1|bin_counter\(28)) # (!\GEN1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(28),
	datad => VCC,
	cin => \GEN1|Add0~55\,
	combout => \GEN1|Add0~56_combout\,
	cout => \GEN1|Add0~57\);

-- Location: LCCOMB_X19_Y13_N30
\GEN1|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~3_combout\ = (\GEN1|Add0~56_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Add0~56_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~3_combout\);

-- Location: FF_X19_Y13_N31
\GEN1|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(28));

-- Location: LCCOMB_X18_Y11_N26
\GEN1|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~58_combout\ = (\GEN1|bin_counter\(29) & (\GEN1|Add0~57\ & VCC)) # (!\GEN1|bin_counter\(29) & (!\GEN1|Add0~57\))
-- \GEN1|Add0~59\ = CARRY((!\GEN1|bin_counter\(29) & !\GEN1|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(29),
	datad => VCC,
	cin => \GEN1|Add0~57\,
	combout => \GEN1|Add0~58_combout\,
	cout => \GEN1|Add0~59\);

-- Location: LCCOMB_X19_Y13_N28
\GEN1|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~2_combout\ = (\GEN1|Add0~58_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~58_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~2_combout\);

-- Location: FF_X19_Y13_N29
\GEN1|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(29));

-- Location: LCCOMB_X18_Y11_N28
\GEN1|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~60_combout\ = (\GEN1|bin_counter\(30) & ((GND) # (!\GEN1|Add0~59\))) # (!\GEN1|bin_counter\(30) & (\GEN1|Add0~59\ $ (GND)))
-- \GEN1|Add0~61\ = CARRY((\GEN1|bin_counter\(30)) # (!\GEN1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|bin_counter\(30),
	datad => VCC,
	cin => \GEN1|Add0~59\,
	combout => \GEN1|Add0~60_combout\,
	cout => \GEN1|Add0~61\);

-- Location: LCCOMB_X19_Y13_N10
\GEN1|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~1_combout\ = (\GEN1|Add0~60_combout\ & !\GEN1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Add0~60_combout\,
	datac => \GEN1|Equal0~10_combout\,
	combout => \GEN1|bin_counter~1_combout\);

-- Location: FF_X19_Y13_N11
\GEN1|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(30));

-- Location: LCCOMB_X18_Y11_N30
\GEN1|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Add0~62_combout\ = \GEN1|Add0~61\ $ (!\GEN1|bin_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|bin_counter\(31),
	cin => \GEN1|Add0~61\,
	combout => \GEN1|Add0~62_combout\);

-- Location: LCCOMB_X19_Y13_N0
\GEN1|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|bin_counter~0_combout\ = (!\GEN1|Equal0~10_combout\ & \GEN1|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN1|Equal0~10_combout\,
	datac => \GEN1|Add0~62_combout\,
	combout => \GEN1|bin_counter~0_combout\);

-- Location: FF_X19_Y13_N1
\GEN1|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN1|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|bin_counter\(31));

-- Location: LCCOMB_X19_Y13_N8
\GEN1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~0_combout\ = (!\GEN1|bin_counter\(30) & (!\GEN1|bin_counter\(29) & (!\GEN1|bin_counter\(28) & !\GEN1|bin_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|bin_counter\(30),
	datab => \GEN1|bin_counter\(29),
	datac => \GEN1|bin_counter\(28),
	datad => \GEN1|bin_counter\(31),
	combout => \GEN1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\GEN1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~4_combout\ = (\GEN1|Equal0~3_combout\ & (\GEN1|Equal0~2_combout\ & (\GEN1|Equal0~1_combout\ & \GEN1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~3_combout\,
	datab => \GEN1|Equal0~2_combout\,
	datac => \GEN1|Equal0~1_combout\,
	datad => \GEN1|Equal0~0_combout\,
	combout => \GEN1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y12_N4
\GEN1|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|Equal0~10_combout\ = (\GEN1|Equal0~6_combout\ & (\GEN1|Equal0~5_combout\ & (\GEN1|Equal0~9_combout\ & \GEN1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN1|Equal0~6_combout\,
	datab => \GEN1|Equal0~5_combout\,
	datac => \GEN1|Equal0~9_combout\,
	datad => \GEN1|Equal0~4_combout\,
	combout => \GEN1|Equal0~10_combout\);

-- Location: LCCOMB_X4_Y6_N2
\GEN1|terminal_count~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|terminal_count~feeder_combout\ = \GEN1|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|Equal0~10_combout\,
	combout => \GEN1|terminal_count~feeder_combout\);

-- Location: FF_X4_Y6_N3
\GEN1|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \GEN1|terminal_count~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|terminal_count~q\);

-- Location: LCCOMB_X15_Y9_N0
\GEN1|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|strobe~0_combout\ = !\GEN1|strobe~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|strobe~q\,
	combout => \GEN1|strobe~0_combout\);

-- Location: LCCOMB_X1_Y9_N28
\GEN1|strobe~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN1|strobe~feeder_combout\ = \GEN1|strobe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN1|strobe~0_combout\,
	combout => \GEN1|strobe~feeder_combout\);

-- Location: FF_X1_Y9_N29
\GEN1|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|ALT_INV_terminal_count~q\,
	d => \GEN1|strobe~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN1|strobe~q\);

-- Location: CLKCTRL_G3
\GEN1|strobe~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GEN1|strobe~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GEN1|strobe~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X15_Y5_N0
\GEN2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~0_combout\ = \GEN2|bin_counter\(0) $ (VCC)
-- \GEN2|Add0~1\ = CARRY(\GEN2|bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(0),
	datad => VCC,
	combout => \GEN2|Add0~0_combout\,
	cout => \GEN2|Add0~1\);

-- Location: LCCOMB_X15_Y6_N2
\GEN2|bin_counter~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~23_combout\ = (\GEN2|Add0~0_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~0_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~23_combout\);

-- Location: FF_X15_Y6_N3
\GEN2|bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~23_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(0));

-- Location: LCCOMB_X15_Y5_N2
\GEN2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~2_combout\ = (\GEN2|bin_counter\(1) & (\GEN2|Add0~1\ & VCC)) # (!\GEN2|bin_counter\(1) & (!\GEN2|Add0~1\))
-- \GEN2|Add0~3\ = CARRY((!\GEN2|bin_counter\(1) & !\GEN2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(1),
	datad => VCC,
	cin => \GEN2|Add0~1\,
	combout => \GEN2|Add0~2_combout\,
	cout => \GEN2|Add0~3\);

-- Location: LCCOMB_X15_Y6_N8
\GEN2|bin_counter~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~22_combout\ = (\GEN2|Add0~2_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~2_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~22_combout\);

-- Location: FF_X15_Y6_N9
\GEN2|bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(1));

-- Location: LCCOMB_X15_Y5_N4
\GEN2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~4_combout\ = (\GEN2|bin_counter\(2) & ((GND) # (!\GEN2|Add0~3\))) # (!\GEN2|bin_counter\(2) & (\GEN2|Add0~3\ $ (GND)))
-- \GEN2|Add0~5\ = CARRY((\GEN2|bin_counter\(2)) # (!\GEN2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(2),
	datad => VCC,
	cin => \GEN2|Add0~3\,
	combout => \GEN2|Add0~4_combout\,
	cout => \GEN2|Add0~5\);

-- Location: LCCOMB_X15_Y6_N14
\GEN2|bin_counter~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~21_combout\ = (\GEN2|Add0~4_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~4_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~21_combout\);

-- Location: FF_X15_Y6_N15
\GEN2|bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~21_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(2));

-- Location: LCCOMB_X15_Y5_N6
\GEN2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~6_combout\ = (\GEN2|bin_counter\(3) & (\GEN2|Add0~5\ & VCC)) # (!\GEN2|bin_counter\(3) & (!\GEN2|Add0~5\))
-- \GEN2|Add0~7\ = CARRY((!\GEN2|bin_counter\(3) & !\GEN2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(3),
	datad => VCC,
	cin => \GEN2|Add0~5\,
	combout => \GEN2|Add0~6_combout\,
	cout => \GEN2|Add0~7\);

-- Location: LCCOMB_X15_Y6_N28
\GEN2|bin_counter~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~20_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~6_combout\,
	combout => \GEN2|bin_counter~20_combout\);

-- Location: FF_X15_Y6_N29
\GEN2|bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(3));

-- Location: LCCOMB_X15_Y6_N12
\GEN2|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~9_combout\ = (!\GEN2|bin_counter\(0) & (!\GEN2|bin_counter\(1) & (!\GEN2|bin_counter\(2) & !\GEN2|bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(0),
	datab => \GEN2|bin_counter\(1),
	datac => \GEN2|bin_counter\(2),
	datad => \GEN2|bin_counter\(3),
	combout => \GEN2|Equal0~9_combout\);

-- Location: LCCOMB_X15_Y5_N8
\GEN2|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~8_combout\ = (\GEN2|bin_counter\(4) & ((GND) # (!\GEN2|Add0~7\))) # (!\GEN2|bin_counter\(4) & (\GEN2|Add0~7\ $ (GND)))
-- \GEN2|Add0~9\ = CARRY((\GEN2|bin_counter\(4)) # (!\GEN2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(4),
	datad => VCC,
	cin => \GEN2|Add0~7\,
	combout => \GEN2|Add0~8_combout\,
	cout => \GEN2|Add0~9\);

-- Location: LCCOMB_X18_Y4_N24
\GEN2|bin_counter~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~19_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~8_combout\,
	combout => \GEN2|bin_counter~19_combout\);

-- Location: FF_X18_Y4_N25
\GEN2|bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(4));

-- Location: LCCOMB_X15_Y5_N10
\GEN2|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~10_combout\ = (\GEN2|bin_counter\(5) & (\GEN2|Add0~9\ & VCC)) # (!\GEN2|bin_counter\(5) & (!\GEN2|Add0~9\))
-- \GEN2|Add0~11\ = CARRY((!\GEN2|bin_counter\(5) & !\GEN2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(5),
	datad => VCC,
	cin => \GEN2|Add0~9\,
	combout => \GEN2|Add0~10_combout\,
	cout => \GEN2|Add0~11\);

-- Location: LCCOMB_X18_Y4_N14
\GEN2|bin_counter~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~18_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~10_combout\,
	combout => \GEN2|bin_counter~18_combout\);

-- Location: FF_X18_Y4_N15
\GEN2|bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(5));

-- Location: LCCOMB_X15_Y5_N12
\GEN2|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~12_combout\ = (\GEN2|bin_counter\(6) & (\GEN2|Add0~11\ $ (GND))) # (!\GEN2|bin_counter\(6) & ((GND) # (!\GEN2|Add0~11\)))
-- \GEN2|Add0~13\ = CARRY((!\GEN2|Add0~11\) # (!\GEN2|bin_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datad => VCC,
	cin => \GEN2|Add0~11\,
	combout => \GEN2|Add0~12_combout\,
	cout => \GEN2|Add0~13\);

-- Location: LCCOMB_X18_Y4_N10
\GEN2|bin_counter[6]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[6]~31_combout\ = !\GEN2|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~12_combout\,
	combout => \GEN2|bin_counter[6]~31_combout\);

-- Location: FF_X18_Y4_N11
\GEN2|bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[6]~31_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(6));

-- Location: LCCOMB_X15_Y5_N14
\GEN2|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~14_combout\ = (\GEN2|bin_counter\(7) & (\GEN2|Add0~13\ & VCC)) # (!\GEN2|bin_counter\(7) & (!\GEN2|Add0~13\))
-- \GEN2|Add0~15\ = CARRY((!\GEN2|bin_counter\(7) & !\GEN2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(7),
	datad => VCC,
	cin => \GEN2|Add0~13\,
	combout => \GEN2|Add0~14_combout\,
	cout => \GEN2|Add0~15\);

-- Location: LCCOMB_X18_Y4_N4
\GEN2|bin_counter~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~17_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~14_combout\,
	combout => \GEN2|bin_counter~17_combout\);

-- Location: FF_X18_Y4_N5
\GEN2|bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(7));

-- Location: LCCOMB_X15_Y5_N16
\GEN2|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~16_combout\ = (\GEN2|bin_counter\(8) & (\GEN2|Add0~15\ $ (GND))) # (!\GEN2|bin_counter\(8) & ((GND) # (!\GEN2|Add0~15\)))
-- \GEN2|Add0~17\ = CARRY((!\GEN2|Add0~15\) # (!\GEN2|bin_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(8),
	datad => VCC,
	cin => \GEN2|Add0~15\,
	combout => \GEN2|Add0~16_combout\,
	cout => \GEN2|Add0~17\);

-- Location: LCCOMB_X18_Y4_N12
\GEN2|bin_counter[8]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[8]~30_combout\ = !\GEN2|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~16_combout\,
	combout => \GEN2|bin_counter[8]~30_combout\);

-- Location: FF_X18_Y4_N13
\GEN2|bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[8]~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(8));

-- Location: LCCOMB_X15_Y5_N18
\GEN2|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~18_combout\ = (\GEN2|bin_counter\(9) & (!\GEN2|Add0~17\)) # (!\GEN2|bin_counter\(9) & (\GEN2|Add0~17\ & VCC))
-- \GEN2|Add0~19\ = CARRY((\GEN2|bin_counter\(9) & !\GEN2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(9),
	datad => VCC,
	cin => \GEN2|Add0~17\,
	combout => \GEN2|Add0~18_combout\,
	cout => \GEN2|Add0~19\);

-- Location: LCCOMB_X18_Y4_N26
\GEN2|bin_counter[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[9]~29_combout\ = !\GEN2|Add0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~18_combout\,
	combout => \GEN2|bin_counter[9]~29_combout\);

-- Location: FF_X18_Y4_N27
\GEN2|bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[9]~29_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(9));

-- Location: LCCOMB_X15_Y5_N20
\GEN2|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~20_combout\ = (\GEN2|bin_counter\(10) & ((GND) # (!\GEN2|Add0~19\))) # (!\GEN2|bin_counter\(10) & (\GEN2|Add0~19\ $ (GND)))
-- \GEN2|Add0~21\ = CARRY((\GEN2|bin_counter\(10)) # (!\GEN2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(10),
	datad => VCC,
	cin => \GEN2|Add0~19\,
	combout => \GEN2|Add0~20_combout\,
	cout => \GEN2|Add0~21\);

-- Location: LCCOMB_X18_Y4_N30
\GEN2|bin_counter~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~16_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~20_combout\,
	combout => \GEN2|bin_counter~16_combout\);

-- Location: FF_X18_Y4_N31
\GEN2|bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(10));

-- Location: LCCOMB_X15_Y5_N22
\GEN2|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~22_combout\ = (\GEN2|bin_counter\(11) & (!\GEN2|Add0~21\)) # (!\GEN2|bin_counter\(11) & (\GEN2|Add0~21\ & VCC))
-- \GEN2|Add0~23\ = CARRY((\GEN2|bin_counter\(11) & !\GEN2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(11),
	datad => VCC,
	cin => \GEN2|Add0~21\,
	combout => \GEN2|Add0~22_combout\,
	cout => \GEN2|Add0~23\);

-- Location: LCCOMB_X18_Y4_N8
\GEN2|bin_counter[11]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[11]~28_combout\ = !\GEN2|Add0~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~22_combout\,
	combout => \GEN2|bin_counter[11]~28_combout\);

-- Location: FF_X18_Y4_N9
\GEN2|bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[11]~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(11));

-- Location: LCCOMB_X15_Y5_N24
\GEN2|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~24_combout\ = (\GEN2|bin_counter\(12) & ((GND) # (!\GEN2|Add0~23\))) # (!\GEN2|bin_counter\(12) & (\GEN2|Add0~23\ $ (GND)))
-- \GEN2|Add0~25\ = CARRY((\GEN2|bin_counter\(12)) # (!\GEN2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(12),
	datad => VCC,
	cin => \GEN2|Add0~23\,
	combout => \GEN2|Add0~24_combout\,
	cout => \GEN2|Add0~25\);

-- Location: LCCOMB_X15_Y6_N30
\GEN2|bin_counter~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~15_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~24_combout\,
	combout => \GEN2|bin_counter~15_combout\);

-- Location: FF_X15_Y6_N31
\GEN2|bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(12));

-- Location: LCCOMB_X15_Y5_N26
\GEN2|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~26_combout\ = (\GEN2|bin_counter\(13) & (\GEN2|Add0~25\ & VCC)) # (!\GEN2|bin_counter\(13) & (!\GEN2|Add0~25\))
-- \GEN2|Add0~27\ = CARRY((!\GEN2|bin_counter\(13) & !\GEN2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(13),
	datad => VCC,
	cin => \GEN2|Add0~25\,
	combout => \GEN2|Add0~26_combout\,
	cout => \GEN2|Add0~27\);

-- Location: LCCOMB_X15_Y6_N20
\GEN2|bin_counter~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~14_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~26_combout\,
	combout => \GEN2|bin_counter~14_combout\);

-- Location: FF_X15_Y6_N21
\GEN2|bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(13));

-- Location: LCCOMB_X15_Y5_N28
\GEN2|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~28_combout\ = (\GEN2|bin_counter\(14) & (\GEN2|Add0~27\ $ (GND))) # (!\GEN2|bin_counter\(14) & ((GND) # (!\GEN2|Add0~27\)))
-- \GEN2|Add0~29\ = CARRY((!\GEN2|Add0~27\) # (!\GEN2|bin_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(14),
	datad => VCC,
	cin => \GEN2|Add0~27\,
	combout => \GEN2|Add0~28_combout\,
	cout => \GEN2|Add0~29\);

-- Location: LCCOMB_X15_Y6_N24
\GEN2|bin_counter[14]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[14]~27_combout\ = !\GEN2|Add0~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~28_combout\,
	combout => \GEN2|bin_counter[14]~27_combout\);

-- Location: FF_X15_Y6_N25
\GEN2|bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[14]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(14));

-- Location: LCCOMB_X15_Y5_N30
\GEN2|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~30_combout\ = (\GEN2|bin_counter\(15) & (\GEN2|Add0~29\ & VCC)) # (!\GEN2|bin_counter\(15) & (!\GEN2|Add0~29\))
-- \GEN2|Add0~31\ = CARRY((!\GEN2|bin_counter\(15) & !\GEN2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(15),
	datad => VCC,
	cin => \GEN2|Add0~29\,
	combout => \GEN2|Add0~30_combout\,
	cout => \GEN2|Add0~31\);

-- Location: LCCOMB_X15_Y6_N18
\GEN2|bin_counter~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~13_combout\ = (\GEN2|Add0~30_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~30_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~13_combout\);

-- Location: FF_X15_Y6_N19
\GEN2|bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(15));

-- Location: LCCOMB_X15_Y4_N0
\GEN2|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~32_combout\ = (\GEN2|bin_counter\(16) & ((GND) # (!\GEN2|Add0~31\))) # (!\GEN2|bin_counter\(16) & (\GEN2|Add0~31\ $ (GND)))
-- \GEN2|Add0~33\ = CARRY((\GEN2|bin_counter\(16)) # (!\GEN2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(16),
	datad => VCC,
	cin => \GEN2|Add0~31\,
	combout => \GEN2|Add0~32_combout\,
	cout => \GEN2|Add0~33\);

-- Location: LCCOMB_X16_Y4_N10
\GEN2|bin_counter~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~12_combout\ = (\GEN2|Add0~32_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~32_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~12_combout\);

-- Location: FF_X16_Y4_N11
\GEN2|bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(16));

-- Location: LCCOMB_X15_Y4_N2
\GEN2|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~34_combout\ = (\GEN2|bin_counter\(17) & (\GEN2|Add0~33\ & VCC)) # (!\GEN2|bin_counter\(17) & (!\GEN2|Add0~33\))
-- \GEN2|Add0~35\ = CARRY((!\GEN2|bin_counter\(17) & !\GEN2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(17),
	datad => VCC,
	cin => \GEN2|Add0~33\,
	combout => \GEN2|Add0~34_combout\,
	cout => \GEN2|Add0~35\);

-- Location: LCCOMB_X16_Y4_N8
\GEN2|bin_counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~11_combout\ = (\GEN2|Add0~34_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~34_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~11_combout\);

-- Location: FF_X16_Y4_N9
\GEN2|bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(17));

-- Location: LCCOMB_X15_Y4_N4
\GEN2|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~36_combout\ = (\GEN2|bin_counter\(18) & (\GEN2|Add0~35\ $ (GND))) # (!\GEN2|bin_counter\(18) & ((GND) # (!\GEN2|Add0~35\)))
-- \GEN2|Add0~37\ = CARRY((!\GEN2|Add0~35\) # (!\GEN2|bin_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(18),
	datad => VCC,
	cin => \GEN2|Add0~35\,
	combout => \GEN2|Add0~36_combout\,
	cout => \GEN2|Add0~37\);

-- Location: LCCOMB_X16_Y4_N6
\GEN2|bin_counter[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[18]~26_combout\ = !\GEN2|Add0~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~36_combout\,
	combout => \GEN2|bin_counter[18]~26_combout\);

-- Location: FF_X16_Y4_N7
\GEN2|bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[18]~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(18));

-- Location: LCCOMB_X15_Y4_N6
\GEN2|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~38_combout\ = (\GEN2|bin_counter\(19) & (!\GEN2|Add0~37\)) # (!\GEN2|bin_counter\(19) & (\GEN2|Add0~37\ & VCC))
-- \GEN2|Add0~39\ = CARRY((\GEN2|bin_counter\(19) & !\GEN2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(19),
	datad => VCC,
	cin => \GEN2|Add0~37\,
	combout => \GEN2|Add0~38_combout\,
	cout => \GEN2|Add0~39\);

-- Location: LCCOMB_X16_Y4_N28
\GEN2|bin_counter[19]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[19]~25_combout\ = !\GEN2|Add0~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~38_combout\,
	combout => \GEN2|bin_counter[19]~25_combout\);

-- Location: FF_X16_Y4_N29
\GEN2|bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[19]~25_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(19));

-- Location: LCCOMB_X15_Y4_N8
\GEN2|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~40_combout\ = (\GEN2|bin_counter\(20) & ((GND) # (!\GEN2|Add0~39\))) # (!\GEN2|bin_counter\(20) & (\GEN2|Add0~39\ $ (GND)))
-- \GEN2|Add0~41\ = CARRY((\GEN2|bin_counter\(20)) # (!\GEN2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(20),
	datad => VCC,
	cin => \GEN2|Add0~39\,
	combout => \GEN2|Add0~40_combout\,
	cout => \GEN2|Add0~41\);

-- Location: LCCOMB_X15_Y6_N4
\GEN2|bin_counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~10_combout\ = (\GEN2|Add0~40_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Add0~40_combout\,
	datac => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~10_combout\);

-- Location: FF_X15_Y6_N5
\GEN2|bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(20));

-- Location: LCCOMB_X15_Y4_N10
\GEN2|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~42_combout\ = (\GEN2|bin_counter\(21) & (\GEN2|Add0~41\ & VCC)) # (!\GEN2|bin_counter\(21) & (!\GEN2|Add0~41\))
-- \GEN2|Add0~43\ = CARRY((!\GEN2|bin_counter\(21) & !\GEN2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(21),
	datad => VCC,
	cin => \GEN2|Add0~41\,
	combout => \GEN2|Add0~42_combout\,
	cout => \GEN2|Add0~43\);

-- Location: LCCOMB_X15_Y6_N10
\GEN2|bin_counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~9_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~42_combout\,
	combout => \GEN2|bin_counter~9_combout\);

-- Location: FF_X15_Y6_N11
\GEN2|bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(21));

-- Location: LCCOMB_X15_Y4_N12
\GEN2|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~44_combout\ = (\GEN2|bin_counter\(22) & (\GEN2|Add0~43\ $ (GND))) # (!\GEN2|bin_counter\(22) & ((GND) # (!\GEN2|Add0~43\)))
-- \GEN2|Add0~45\ = CARRY((!\GEN2|Add0~43\) # (!\GEN2|bin_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(22),
	datad => VCC,
	cin => \GEN2|Add0~43\,
	combout => \GEN2|Add0~44_combout\,
	cout => \GEN2|Add0~45\);

-- Location: LCCOMB_X16_Y4_N18
\GEN2|bin_counter[22]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter[22]~24_combout\ = !\GEN2|Add0~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|Add0~44_combout\,
	combout => \GEN2|bin_counter[22]~24_combout\);

-- Location: FF_X16_Y4_N19
\GEN2|bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter[22]~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(22));

-- Location: LCCOMB_X15_Y4_N14
\GEN2|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~46_combout\ = (\GEN2|bin_counter\(23) & (\GEN2|Add0~45\ & VCC)) # (!\GEN2|bin_counter\(23) & (!\GEN2|Add0~45\))
-- \GEN2|Add0~47\ = CARRY((!\GEN2|bin_counter\(23) & !\GEN2|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(23),
	datad => VCC,
	cin => \GEN2|Add0~45\,
	combout => \GEN2|Add0~46_combout\,
	cout => \GEN2|Add0~47\);

-- Location: LCCOMB_X15_Y6_N0
\GEN2|bin_counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~8_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~10_combout\,
	datac => \GEN2|Add0~46_combout\,
	combout => \GEN2|bin_counter~8_combout\);

-- Location: FF_X15_Y6_N1
\GEN2|bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(23));

-- Location: LCCOMB_X15_Y6_N22
\GEN2|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~2_combout\ = (!\GEN2|bin_counter\(21) & (!\GEN2|bin_counter\(23) & (!\GEN2|bin_counter\(20) & \GEN2|bin_counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(21),
	datab => \GEN2|bin_counter\(23),
	datac => \GEN2|bin_counter\(20),
	datad => \GEN2|bin_counter\(22),
	combout => \GEN2|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y4_N16
\GEN2|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~48_combout\ = (\GEN2|bin_counter\(24) & ((GND) # (!\GEN2|Add0~47\))) # (!\GEN2|bin_counter\(24) & (\GEN2|Add0~47\ $ (GND)))
-- \GEN2|Add0~49\ = CARRY((\GEN2|bin_counter\(24)) # (!\GEN2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(24),
	datad => VCC,
	cin => \GEN2|Add0~47\,
	combout => \GEN2|Add0~48_combout\,
	cout => \GEN2|Add0~49\);

-- Location: LCCOMB_X16_Y4_N22
\GEN2|bin_counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~7_combout\ = (\GEN2|Add0~48_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~48_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~7_combout\);

-- Location: FF_X16_Y4_N23
\GEN2|bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(24));

-- Location: LCCOMB_X15_Y4_N18
\GEN2|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~50_combout\ = (\GEN2|bin_counter\(25) & (\GEN2|Add0~49\ & VCC)) # (!\GEN2|bin_counter\(25) & (!\GEN2|Add0~49\))
-- \GEN2|Add0~51\ = CARRY((!\GEN2|bin_counter\(25) & !\GEN2|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(25),
	datad => VCC,
	cin => \GEN2|Add0~49\,
	combout => \GEN2|Add0~50_combout\,
	cout => \GEN2|Add0~51\);

-- Location: LCCOMB_X16_Y4_N4
\GEN2|bin_counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~6_combout\ = (\GEN2|Add0~50_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~50_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~6_combout\);

-- Location: FF_X16_Y4_N5
\GEN2|bin_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(25));

-- Location: LCCOMB_X15_Y4_N20
\GEN2|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~52_combout\ = (\GEN2|bin_counter\(26) & ((GND) # (!\GEN2|Add0~51\))) # (!\GEN2|bin_counter\(26) & (\GEN2|Add0~51\ $ (GND)))
-- \GEN2|Add0~53\ = CARRY((\GEN2|bin_counter\(26)) # (!\GEN2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(26),
	datad => VCC,
	cin => \GEN2|Add0~51\,
	combout => \GEN2|Add0~52_combout\,
	cout => \GEN2|Add0~53\);

-- Location: LCCOMB_X16_Y4_N26
\GEN2|bin_counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~5_combout\ = (\GEN2|Add0~52_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~52_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~5_combout\);

-- Location: FF_X16_Y4_N27
\GEN2|bin_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(26));

-- Location: LCCOMB_X15_Y4_N22
\GEN2|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~54_combout\ = (\GEN2|bin_counter\(27) & (\GEN2|Add0~53\ & VCC)) # (!\GEN2|bin_counter\(27) & (!\GEN2|Add0~53\))
-- \GEN2|Add0~55\ = CARRY((!\GEN2|bin_counter\(27) & !\GEN2|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(27),
	datad => VCC,
	cin => \GEN2|Add0~53\,
	combout => \GEN2|Add0~54_combout\,
	cout => \GEN2|Add0~55\);

-- Location: LCCOMB_X16_Y4_N16
\GEN2|bin_counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~4_combout\ = (\GEN2|Add0~54_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~54_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~4_combout\);

-- Location: FF_X16_Y4_N17
\GEN2|bin_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(27));

-- Location: LCCOMB_X16_Y4_N24
\GEN2|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~1_combout\ = (!\GEN2|bin_counter\(26) & (!\GEN2|bin_counter\(25) & (!\GEN2|bin_counter\(24) & !\GEN2|bin_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(26),
	datab => \GEN2|bin_counter\(25),
	datac => \GEN2|bin_counter\(24),
	datad => \GEN2|bin_counter\(27),
	combout => \GEN2|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y4_N24
\GEN2|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~56_combout\ = (\GEN2|bin_counter\(28) & ((GND) # (!\GEN2|Add0~55\))) # (!\GEN2|bin_counter\(28) & (\GEN2|Add0~55\ $ (GND)))
-- \GEN2|Add0~57\ = CARRY((\GEN2|bin_counter\(28)) # (!\GEN2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(28),
	datad => VCC,
	cin => \GEN2|Add0~55\,
	combout => \GEN2|Add0~56_combout\,
	cout => \GEN2|Add0~57\);

-- Location: LCCOMB_X16_Y4_N20
\GEN2|bin_counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~3_combout\ = (\GEN2|Add0~56_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~56_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~3_combout\);

-- Location: FF_X16_Y4_N21
\GEN2|bin_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(28));

-- Location: LCCOMB_X15_Y4_N26
\GEN2|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~58_combout\ = (\GEN2|bin_counter\(29) & (\GEN2|Add0~57\ & VCC)) # (!\GEN2|bin_counter\(29) & (!\GEN2|Add0~57\))
-- \GEN2|Add0~59\ = CARRY((!\GEN2|bin_counter\(29) & !\GEN2|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(29),
	datad => VCC,
	cin => \GEN2|Add0~57\,
	combout => \GEN2|Add0~58_combout\,
	cout => \GEN2|Add0~59\);

-- Location: LCCOMB_X16_Y4_N2
\GEN2|bin_counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~2_combout\ = (\GEN2|Add0~58_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Add0~58_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~2_combout\);

-- Location: FF_X16_Y4_N3
\GEN2|bin_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(29));

-- Location: LCCOMB_X15_Y4_N28
\GEN2|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~60_combout\ = (\GEN2|bin_counter\(30) & ((GND) # (!\GEN2|Add0~59\))) # (!\GEN2|bin_counter\(30) & (\GEN2|Add0~59\ $ (GND)))
-- \GEN2|Add0~61\ = CARRY((\GEN2|bin_counter\(30)) # (!\GEN2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|bin_counter\(30),
	datad => VCC,
	cin => \GEN2|Add0~59\,
	combout => \GEN2|Add0~60_combout\,
	cout => \GEN2|Add0~61\);

-- Location: LCCOMB_X16_Y4_N0
\GEN2|bin_counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~1_combout\ = (\GEN2|Add0~60_combout\ & !\GEN2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Add0~60_combout\,
	datad => \GEN2|Equal0~10_combout\,
	combout => \GEN2|bin_counter~1_combout\);

-- Location: FF_X16_Y4_N1
\GEN2|bin_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(30));

-- Location: LCCOMB_X15_Y4_N30
\GEN2|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Add0~62_combout\ = \GEN2|Add0~61\ $ (!\GEN2|bin_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|bin_counter\(31),
	cin => \GEN2|Add0~61\,
	combout => \GEN2|Add0~62_combout\);

-- Location: LCCOMB_X18_Y4_N6
\GEN2|bin_counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|bin_counter~0_combout\ = (!\GEN2|Equal0~10_combout\ & \GEN2|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|Equal0~10_combout\,
	datad => \GEN2|Add0~62_combout\,
	combout => \GEN2|bin_counter~0_combout\);

-- Location: FF_X18_Y4_N7
\GEN2|bin_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|bin_counter~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|bin_counter\(31));

-- Location: LCCOMB_X16_Y4_N30
\GEN2|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~0_combout\ = (!\GEN2|bin_counter\(29) & (!\GEN2|bin_counter\(28) & (!\GEN2|bin_counter\(31) & !\GEN2|bin_counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(29),
	datab => \GEN2|bin_counter\(28),
	datac => \GEN2|bin_counter\(31),
	datad => \GEN2|bin_counter\(30),
	combout => \GEN2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y4_N12
\GEN2|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~3_combout\ = (\GEN2|bin_counter\(18) & (\GEN2|bin_counter\(19) & (!\GEN2|bin_counter\(17) & !\GEN2|bin_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(18),
	datab => \GEN2|bin_counter\(19),
	datac => \GEN2|bin_counter\(17),
	datad => \GEN2|bin_counter\(16),
	combout => \GEN2|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y4_N14
\GEN2|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~4_combout\ = (\GEN2|Equal0~2_combout\ & (\GEN2|Equal0~1_combout\ & (\GEN2|Equal0~0_combout\ & \GEN2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~2_combout\,
	datab => \GEN2|Equal0~1_combout\,
	datac => \GEN2|Equal0~0_combout\,
	datad => \GEN2|Equal0~3_combout\,
	combout => \GEN2|Equal0~4_combout\);

-- Location: LCCOMB_X15_Y6_N16
\GEN2|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~5_combout\ = (\GEN2|bin_counter\(14) & (!\GEN2|bin_counter\(15) & (!\GEN2|bin_counter\(12) & !\GEN2|bin_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(14),
	datab => \GEN2|bin_counter\(15),
	datac => \GEN2|bin_counter\(12),
	datad => \GEN2|bin_counter\(13),
	combout => \GEN2|Equal0~5_combout\);

-- Location: LCCOMB_X18_Y4_N16
\GEN2|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~6_combout\ = (!\GEN2|bin_counter\(10) & (\GEN2|bin_counter\(11) & (\GEN2|bin_counter\(9) & \GEN2|bin_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(10),
	datab => \GEN2|bin_counter\(11),
	datac => \GEN2|bin_counter\(9),
	datad => \GEN2|bin_counter\(8),
	combout => \GEN2|Equal0~6_combout\);

-- Location: LCCOMB_X15_Y6_N26
\GEN2|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~7_combout\ = (\GEN2|Equal0~5_combout\ & \GEN2|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN2|Equal0~5_combout\,
	datad => \GEN2|Equal0~6_combout\,
	combout => \GEN2|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y4_N2
\GEN2|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~8_combout\ = (\GEN2|bin_counter\(6) & (!\GEN2|bin_counter\(5) & (!\GEN2|bin_counter\(7) & !\GEN2|bin_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|bin_counter\(6),
	datab => \GEN2|bin_counter\(5),
	datac => \GEN2|bin_counter\(7),
	datad => \GEN2|bin_counter\(4),
	combout => \GEN2|Equal0~8_combout\);

-- Location: LCCOMB_X15_Y6_N6
\GEN2|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|Equal0~10_combout\ = (\GEN2|Equal0~9_combout\ & (\GEN2|Equal0~4_combout\ & (\GEN2|Equal0~7_combout\ & \GEN2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN2|Equal0~9_combout\,
	datab => \GEN2|Equal0~4_combout\,
	datac => \GEN2|Equal0~7_combout\,
	datad => \GEN2|Equal0~8_combout\,
	combout => \GEN2|Equal0~10_combout\);

-- Location: FF_X1_Y6_N21
\GEN2|terminal_count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	asdata => \GEN2|Equal0~10_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|terminal_count~q\);

-- Location: LCCOMB_X14_Y6_N16
\GEN2|strobe~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|strobe~0_combout\ = !\GEN2|strobe~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|strobe~q\,
	combout => \GEN2|strobe~0_combout\);

-- Location: LCCOMB_X1_Y6_N0
\GEN2|strobe~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|strobe~feeder_combout\ = \GEN2|strobe~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GEN2|strobe~0_combout\,
	combout => \GEN2|strobe~feeder_combout\);

-- Location: FF_X1_Y6_N1
\GEN2|strobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN2|ALT_INV_terminal_count~q\,
	d => \GEN2|strobe~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|strobe~q\);

-- Location: LCCOMB_X18_Y4_N28
\GEN2|full_cycle~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \GEN2|full_cycle~0_combout\ = (\GEN2|terminal_count~q\ & !\GEN2|strobe~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GEN2|terminal_count~q\,
	datad => \GEN2|strobe~q\,
	combout => \GEN2|full_cycle~0_combout\);

-- Location: FF_X18_Y4_N29
\GEN2|full_cycle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \GEN2|full_cycle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN2|full_cycle~q\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X18_Y4_N20
\INST2|Dintermediate~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Dintermediate~0_combout\ = !\pb[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pb[0]~input_o\,
	combout => \INST2|Dintermediate~0_combout\);

-- Location: FF_X18_Y4_N21
\INST2|Dintermediate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|Dintermediate~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|Dintermediate~q\);

-- Location: LCCOMB_X18_Y4_N18
\INST2|Dfinal~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Dfinal~feeder_combout\ = \INST2|Dintermediate~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST2|Dintermediate~q\,
	combout => \INST2|Dfinal~feeder_combout\);

-- Location: FF_X18_Y4_N19
\INST2|Dfinal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST2|Dfinal~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST2|Dfinal~q\);

-- Location: LCCOMB_X18_Y4_N0
\INST4|DoutR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|DoutR~0_combout\ = (\GEN2|full_cycle~q\ & (!\INST1|current_state.S15~q\ & ((\INST4|DoutR~q\) # (\INST2|Dfinal~q\)))) # (!\GEN2|full_cycle~q\ & (((\INST4|DoutR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S15~q\,
	datab => \GEN2|full_cycle~q\,
	datac => \INST4|DoutR~q\,
	datad => \INST2|Dfinal~q\,
	combout => \INST4|DoutR~0_combout\);

-- Location: FF_X18_Y4_N1
\INST4|DoutR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST4|DoutR~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4|DoutR~q\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X11_Y8_N4
\INST1|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector3~4_combout\ = (\sw[1]~input_o\ & (((\INST1|current_state.S15~q\) # (\INST1|current_state.S7~q\)) # (!\INST1|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST1|WideOr2~0_combout\,
	datac => \INST1|current_state.S15~q\,
	datad => \INST1|current_state.S7~q\,
	combout => \INST1|Selector3~4_combout\);

-- Location: LCCOMB_X1_Y9_N20
\INST1|current_state.reduced~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|current_state.reduced~feeder_combout\ = \INST1|Selector3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|Selector3~4_combout\,
	combout => \INST1|current_state.reduced~feeder_combout\);

-- Location: FF_X1_Y9_N21
\INST1|current_state.reduced\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~q\,
	d => \INST1|current_state.reduced~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.reduced~q\);

-- Location: LCCOMB_X11_Y8_N24
\INST1|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr2~0_combout\ = (!\INST1|current_state.reduced~q\ & !\INST1|current_state.night~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.reduced~q\,
	datad => \INST1|current_state.night~q\,
	combout => \INST1|WideOr2~0_combout\);

-- Location: LCCOMB_X11_Y8_N12
\INST1|WideOr8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr8~1_combout\ = (!\INST1|current_state.S15~q\ & !\INST1|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|current_state.S15~q\,
	datad => \INST1|current_state.S7~q\,
	combout => \INST1|WideOr8~1_combout\);

-- Location: LCCOMB_X11_Y8_N10
\INST1|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector2~0_combout\ = (!\sw[1]~input_o\ & (\sw[0]~input_o\ & ((!\INST1|WideOr8~1_combout\) # (!\INST1|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST1|WideOr2~0_combout\,
	datac => \sw[0]~input_o\,
	datad => \INST1|WideOr8~1_combout\,
	combout => \INST1|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y9_N30
\INST1|current_state.night~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|current_state.night~feeder_combout\ = \INST1|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|Selector2~0_combout\,
	combout => \INST1|current_state.night~feeder_combout\);

-- Location: FF_X1_Y9_N31
\INST1|current_state.night\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~q\,
	d => \INST1|current_state.night~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.night~q\);

-- Location: LCCOMB_X11_Y8_N14
\INST1|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~0_combout\ = (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & ((\INST1|current_state.night~q\) # (\INST1|current_state.reduced~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.night~q\,
	datab => \INST1|current_state.reduced~q\,
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \INST1|Selector0~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X12_Y12_N10
\INST3|Dintermediate~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Dintermediate~0_combout\ = !\pb[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[1]~input_o\,
	combout => \INST3|Dintermediate~0_combout\);

-- Location: FF_X12_Y12_N11
\INST3|Dintermediate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|Dintermediate~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|Dintermediate~q\);

-- Location: LCCOMB_X12_Y12_N22
\INST3|Dfinal~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Dfinal~feeder_combout\ = \INST3|Dintermediate~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST3|Dintermediate~q\,
	combout => \INST3|Dfinal~feeder_combout\);

-- Location: FF_X12_Y12_N23
\INST3|Dfinal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST3|Dfinal~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|Dfinal~q\);

-- Location: LCCOMB_X12_Y12_N8
\INST5|DoutR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DoutR~0_combout\ = (\GEN2|strobe~q\ & (!\INST1|current_state.S7~q\ & ((\INST3|Dfinal~q\) # (\INST5|DoutR~q\)))) # (!\GEN2|strobe~q\ & (((\INST5|DoutR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|Dfinal~q\,
	datab => \GEN2|strobe~q\,
	datac => \INST5|DoutR~q\,
	datad => \INST1|current_state.S7~q\,
	combout => \INST5|DoutR~0_combout\);

-- Location: FF_X12_Y12_N9
\INST5|DoutR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|DoutR~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|DoutR~q\);

-- Location: LCCOMB_X12_Y12_N24
\INST1|next_state.S1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S1~0_combout\ = (!\INST1|current_state.S0~q\ & !\INST5|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S0~q\,
	datac => \INST5|DoutR~q\,
	combout => \INST1|next_state.S1~0_combout\);

-- Location: FF_X12_Y12_N25
\INST1|current_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S1~q\);

-- Location: LCCOMB_X12_Y12_N16
\INST1|next_state.S2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S2~0_combout\ = (\INST1|current_state.S1~q\ & !\INST5|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S1~q\,
	datac => \INST5|DoutR~q\,
	combout => \INST1|next_state.S2~0_combout\);

-- Location: FF_X12_Y12_N17
\INST1|current_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S2~q\);

-- Location: LCCOMB_X12_Y12_N18
\INST1|next_state.S3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S3~0_combout\ = (\INST1|current_state.S2~q\ & !\INST5|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S2~q\,
	datac => \INST5|DoutR~q\,
	combout => \INST1|next_state.S3~0_combout\);

-- Location: FF_X12_Y12_N19
\INST1|current_state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S3~q\);

-- Location: LCCOMB_X12_Y12_N2
\INST1|next_state.S4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S4~0_combout\ = (\INST1|current_state.S3~q\ & !\INST5|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S3~q\,
	datac => \INST5|DoutR~q\,
	combout => \INST1|next_state.S4~0_combout\);

-- Location: FF_X12_Y12_N3
\INST1|current_state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S4~q\);

-- Location: LCCOMB_X12_Y12_N14
\INST1|next_state.S5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S5~0_combout\ = (!\INST5|DoutR~q\ & \INST1|current_state.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|DoutR~q\,
	datac => \INST1|current_state.S4~q\,
	combout => \INST1|next_state.S5~0_combout\);

-- Location: FF_X12_Y12_N15
\INST1|current_state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S5~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S5~q\);

-- Location: LCCOMB_X12_Y12_N28
\Seg1|DOUT[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~4_combout\ = (!\INST1|current_state.S2~q\ & !\INST1|current_state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S2~q\,
	datad => \INST1|current_state.S3~q\,
	combout => \Seg1|DOUT[3]~4_combout\);

-- Location: LCCOMB_X12_Y12_N0
\INST1|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~1_combout\ = (((\INST1|current_state.S4~q\) # (\INST1|current_state.S1~q\)) # (!\Seg1|DOUT[3]~4_combout\)) # (!\INST1|current_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S0~q\,
	datab => \Seg1|DOUT[3]~4_combout\,
	datac => \INST1|current_state.S4~q\,
	datad => \INST1|current_state.S1~q\,
	combout => \INST1|Selector0~1_combout\);

-- Location: LCCOMB_X12_Y12_N26
\INST1|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector0~2_combout\ = (\INST1|Selector0~0_combout\) # ((\INST1|current_state.S5~q\) # ((\INST5|DoutR~q\ & \INST1|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|Selector0~0_combout\,
	datab => \INST1|current_state.S5~q\,
	datac => \INST5|DoutR~q\,
	datad => \INST1|Selector0~1_combout\,
	combout => \INST1|Selector0~2_combout\);

-- Location: FF_X12_Y12_N27
\INST1|current_state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|Selector0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S6~q\);

-- Location: FF_X12_Y12_N21
\INST1|current_state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \INST1|current_state.S6~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S7~q\);

-- Location: LCCOMB_X11_Y8_N0
\INST1|next_state.S8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S8~0_combout\ = (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & \INST1|current_state.S7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \INST1|current_state.S7~q\,
	combout => \INST1|next_state.S8~0_combout\);

-- Location: FF_X11_Y8_N1
\INST1|current_state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S8~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S8~q\);

-- Location: LCCOMB_X17_Y5_N20
\INST1|next_state.S9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S9~0_combout\ = (\INST1|current_state.S8~q\ & !\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S8~q\,
	datad => \INST4|DoutR~q\,
	combout => \INST1|next_state.S9~0_combout\);

-- Location: FF_X17_Y5_N21
\INST1|current_state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S9~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S9~q\);

-- Location: LCCOMB_X17_Y5_N24
\INST1|QQ~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|QQ~1_combout\ = (!\INST1|current_state.S8~q\ & !\INST1|current_state.S9~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S8~q\,
	datad => \INST1|current_state.S9~q\,
	combout => \INST1|QQ~1_combout\);

-- Location: LCCOMB_X17_Y5_N16
\INST1|next_state.S10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S10~0_combout\ = (\INST1|current_state.S9~q\ & !\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S9~q\,
	datad => \INST4|DoutR~q\,
	combout => \INST1|next_state.S10~0_combout\);

-- Location: LCCOMB_X1_Y9_N12
\INST1|current_state.S10~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|current_state.S10~feeder_combout\ = \INST1|next_state.S10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST1|next_state.S10~0_combout\,
	combout => \INST1|current_state.S10~feeder_combout\);

-- Location: FF_X1_Y9_N13
\INST1|current_state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~q\,
	d => \INST1|current_state.S10~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S10~q\);

-- Location: LCCOMB_X17_Y5_N26
\INST1|next_state.S11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S11~0_combout\ = (\INST1|current_state.S10~q\ & !\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|current_state.S10~q\,
	datad => \INST4|DoutR~q\,
	combout => \INST1|next_state.S11~0_combout\);

-- Location: FF_X17_Y5_N27
\INST1|current_state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S11~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S11~q\);

-- Location: LCCOMB_X17_Y5_N12
\INST1|next_state.S12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S12~0_combout\ = (\INST1|current_state.S11~q\ & !\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|current_state.S11~q\,
	datad => \INST4|DoutR~q\,
	combout => \INST1|next_state.S12~0_combout\);

-- Location: FF_X17_Y5_N13
\INST1|current_state.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S12~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S12~q\);

-- Location: LCCOMB_X17_Y5_N22
\INST1|next_state.S13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S13~0_combout\ = (\INST1|current_state.S12~q\ & !\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S12~q\,
	datad => \INST4|DoutR~q\,
	combout => \INST1|next_state.S13~0_combout\);

-- Location: FF_X17_Y5_N23
\INST1|current_state.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S13~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S13~q\);

-- Location: LCCOMB_X17_Y5_N2
\INST1|QQ2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|QQ2~0_combout\ = (!\INST1|current_state.S12~q\ & (!\INST1|current_state.S10~q\ & !\INST1|current_state.S11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S12~q\,
	datab => \INST1|current_state.S10~q\,
	datac => \INST1|current_state.S11~q\,
	combout => \INST1|QQ2~0_combout\);

-- Location: LCCOMB_X17_Y5_N8
\INST1|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|Selector1~0_combout\ = (\INST1|current_state.S13~q\) # ((\INST4|DoutR~q\ & ((!\INST1|QQ2~0_combout\) # (!\INST1|QQ~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|DoutR~q\,
	datab => \INST1|QQ~1_combout\,
	datac => \INST1|current_state.S13~q\,
	datad => \INST1|QQ2~0_combout\,
	combout => \INST1|Selector1~0_combout\);

-- Location: FF_X17_Y5_N9
\INST1|current_state.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S14~q\);

-- Location: FF_X17_Y5_N19
\INST1|current_state.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	asdata => \INST1|current_state.S14~q\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S15~q\);

-- Location: LCCOMB_X11_Y8_N2
\INST1|next_state.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|next_state.S0~0_combout\ = (\sw[0]~input_o\) # ((\sw[1]~input_o\) # (!\INST1|current_state.S15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \INST1|current_state.S15~q\,
	datad => \sw[1]~input_o\,
	combout => \INST1|next_state.S0~0_combout\);

-- Location: FF_X11_Y8_N3
\INST1|current_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GEN1|strobe~clkctrl_outclk\,
	d => \INST1|next_state.S0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|current_state.S0~q\);

-- Location: LCCOMB_X12_Y12_N12
\Seg1|DOUT_TEMP[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT_TEMP[6]~0_combout\ = (!\INST1|current_state.S4~q\ & (\Seg1|DOUT[3]~4_combout\ & (!\INST1|current_state.S5~q\ & !\INST1|current_state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S4~q\,
	datab => \Seg1|DOUT[3]~4_combout\,
	datac => \INST1|current_state.S5~q\,
	datad => \INST1|current_state.S1~q\,
	combout => \Seg1|DOUT_TEMP[6]~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Seg1|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~3_combout\ = (!\INST1|current_state.S6~q\ & !\INST1|current_state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|current_state.S6~q\,
	datad => \INST1|current_state.S7~q\,
	combout => \Seg1|DOUT[3]~3_combout\);

-- Location: LCCOMB_X17_Y5_N10
\INST1|QQ~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|QQ~2_combout\ = (!\INST1|current_state.S8~q\ & (!\INST1|current_state.S10~q\ & (\GEN1|strobe~q\ & !\INST1|current_state.S9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S8~q\,
	datab => \INST1|current_state.S10~q\,
	datac => \GEN1|strobe~q\,
	datad => \INST1|current_state.S9~q\,
	combout => \INST1|QQ~2_combout\);

-- Location: LCCOMB_X15_Y21_N0
\Seg1|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[0]~0_combout\ = !\Seg1|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Seg1|clk_proc:COUNT[0]~q\,
	combout => \Seg1|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X15_Y21_N1
\Seg1|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X15_Y21_N6
\Seg1|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[1]~1_combout\ = (\Seg1|clk_proc:COUNT[1]~q\ & (\Seg1|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Seg1|clk_proc:COUNT[1]~q\ & (\Seg1|clk_proc:COUNT[0]~q\ & VCC))
-- \Seg1|clk_proc:COUNT[1]~2\ = CARRY((\Seg1|clk_proc:COUNT[1]~q\ & \Seg1|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|clk_proc:COUNT[1]~q\,
	datab => \Seg1|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Seg1|clk_proc:COUNT[1]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[1]~2\);

-- Location: FF_X15_Y21_N7
\Seg1|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X15_Y21_N8
\Seg1|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[2]~1_combout\ = (\Seg1|clk_proc:COUNT[2]~q\ & (!\Seg1|clk_proc:COUNT[1]~2\)) # (!\Seg1|clk_proc:COUNT[2]~q\ & ((\Seg1|clk_proc:COUNT[1]~2\) # (GND)))
-- \Seg1|clk_proc:COUNT[2]~2\ = CARRY((!\Seg1|clk_proc:COUNT[1]~2\) # (!\Seg1|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[1]~2\,
	combout => \Seg1|clk_proc:COUNT[2]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[2]~2\);

-- Location: FF_X15_Y21_N9
\Seg1|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X15_Y21_N10
\Seg1|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[3]~1_combout\ = (\Seg1|clk_proc:COUNT[3]~q\ & (\Seg1|clk_proc:COUNT[2]~2\ $ (GND))) # (!\Seg1|clk_proc:COUNT[3]~q\ & (!\Seg1|clk_proc:COUNT[2]~2\ & VCC))
-- \Seg1|clk_proc:COUNT[3]~2\ = CARRY((\Seg1|clk_proc:COUNT[3]~q\ & !\Seg1|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[2]~2\,
	combout => \Seg1|clk_proc:COUNT[3]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[3]~2\);

-- Location: FF_X15_Y21_N11
\Seg1|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X15_Y21_N12
\Seg1|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[4]~1_combout\ = (\Seg1|clk_proc:COUNT[4]~q\ & (!\Seg1|clk_proc:COUNT[3]~2\)) # (!\Seg1|clk_proc:COUNT[4]~q\ & ((\Seg1|clk_proc:COUNT[3]~2\) # (GND)))
-- \Seg1|clk_proc:COUNT[4]~2\ = CARRY((!\Seg1|clk_proc:COUNT[3]~2\) # (!\Seg1|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[3]~2\,
	combout => \Seg1|clk_proc:COUNT[4]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[4]~2\);

-- Location: FF_X15_Y21_N13
\Seg1|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X15_Y21_N14
\Seg1|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[5]~1_combout\ = (\Seg1|clk_proc:COUNT[5]~q\ & (\Seg1|clk_proc:COUNT[4]~2\ $ (GND))) # (!\Seg1|clk_proc:COUNT[5]~q\ & (!\Seg1|clk_proc:COUNT[4]~2\ & VCC))
-- \Seg1|clk_proc:COUNT[5]~2\ = CARRY((\Seg1|clk_proc:COUNT[5]~q\ & !\Seg1|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[4]~2\,
	combout => \Seg1|clk_proc:COUNT[5]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[5]~2\);

-- Location: FF_X15_Y21_N15
\Seg1|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X15_Y21_N16
\Seg1|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[6]~1_combout\ = (\Seg1|clk_proc:COUNT[6]~q\ & (!\Seg1|clk_proc:COUNT[5]~2\)) # (!\Seg1|clk_proc:COUNT[6]~q\ & ((\Seg1|clk_proc:COUNT[5]~2\) # (GND)))
-- \Seg1|clk_proc:COUNT[6]~2\ = CARRY((!\Seg1|clk_proc:COUNT[5]~2\) # (!\Seg1|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[5]~2\,
	combout => \Seg1|clk_proc:COUNT[6]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[6]~2\);

-- Location: FF_X15_Y21_N17
\Seg1|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X15_Y21_N18
\Seg1|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[7]~1_combout\ = (\Seg1|clk_proc:COUNT[7]~q\ & (\Seg1|clk_proc:COUNT[6]~2\ $ (GND))) # (!\Seg1|clk_proc:COUNT[7]~q\ & (!\Seg1|clk_proc:COUNT[6]~2\ & VCC))
-- \Seg1|clk_proc:COUNT[7]~2\ = CARRY((\Seg1|clk_proc:COUNT[7]~q\ & !\Seg1|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[6]~2\,
	combout => \Seg1|clk_proc:COUNT[7]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[7]~2\);

-- Location: FF_X15_Y21_N19
\Seg1|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X15_Y21_N20
\Seg1|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[8]~1_combout\ = (\Seg1|clk_proc:COUNT[8]~q\ & (!\Seg1|clk_proc:COUNT[7]~2\)) # (!\Seg1|clk_proc:COUNT[8]~q\ & ((\Seg1|clk_proc:COUNT[7]~2\) # (GND)))
-- \Seg1|clk_proc:COUNT[8]~2\ = CARRY((!\Seg1|clk_proc:COUNT[7]~2\) # (!\Seg1|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[7]~2\,
	combout => \Seg1|clk_proc:COUNT[8]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[8]~2\);

-- Location: FF_X15_Y21_N21
\Seg1|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X15_Y21_N22
\Seg1|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[9]~1_combout\ = (\Seg1|clk_proc:COUNT[9]~q\ & (\Seg1|clk_proc:COUNT[8]~2\ $ (GND))) # (!\Seg1|clk_proc:COUNT[9]~q\ & (!\Seg1|clk_proc:COUNT[8]~2\ & VCC))
-- \Seg1|clk_proc:COUNT[9]~2\ = CARRY((\Seg1|clk_proc:COUNT[9]~q\ & !\Seg1|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \Seg1|clk_proc:COUNT[8]~2\,
	combout => \Seg1|clk_proc:COUNT[9]~1_combout\,
	cout => \Seg1|clk_proc:COUNT[9]~2\);

-- Location: FF_X15_Y21_N23
\Seg1|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X15_Y21_N24
\Seg1|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|clk_proc:COUNT[10]~1_combout\ = \Seg1|clk_proc:COUNT[9]~2\ $ (\Seg1|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Seg1|clk_proc:COUNT[10]~q\,
	cin => \Seg1|clk_proc:COUNT[9]~2\,
	combout => \Seg1|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X15_Y21_N25
\Seg1|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \Seg1|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Seg1|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X16_Y11_N22
\Seg1|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT_TEMP[6]~2_combout\ = (\Seg1|clk_proc:COUNT[10]~q\ & (((\INST1|current_state.reduced~q\ & \INST1|QQ~2_combout\)) # (!\Seg1|DOUT[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|DOUT[3]~3_combout\,
	datab => \INST1|current_state.reduced~q\,
	datac => \INST1|QQ~2_combout\,
	datad => \Seg1|clk_proc:COUNT[10]~q\,
	combout => \Seg1|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X17_Y5_N18
\INST1|WideOr6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr6~0_combout\ = (!\INST1|current_state.S14~q\ & !\INST1|current_state.S15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.S14~q\,
	datac => \INST1|current_state.S15~q\,
	combout => \INST1|WideOr6~0_combout\);

-- Location: LCCOMB_X16_Y11_N12
\Seg1|DOUT_TEMP[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT_TEMP[6]~1_combout\ = (!\INST1|WideOr6~0_combout\ & (\Seg1|DOUT_TEMP[6]~0_combout\ & (\Seg1|DOUT[3]~3_combout\ & !\Seg1|clk_proc:COUNT[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|WideOr6~0_combout\,
	datab => \Seg1|DOUT_TEMP[6]~0_combout\,
	datac => \Seg1|DOUT[3]~3_combout\,
	datad => \Seg1|clk_proc:COUNT[10]~q\,
	combout => \Seg1|DOUT_TEMP[6]~1_combout\);

-- Location: LCCOMB_X16_Y11_N16
\Seg1|DOUT_TEMP[6]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT_TEMP[6]~3_combout\ = (\INST1|current_state.S0~q\ & ((\Seg1|DOUT_TEMP[6]~1_combout\) # ((\Seg1|DOUT_TEMP[6]~0_combout\ & \Seg1|DOUT_TEMP[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S0~q\,
	datab => \Seg1|DOUT_TEMP[6]~0_combout\,
	datac => \Seg1|DOUT_TEMP[6]~2_combout\,
	datad => \Seg1|DOUT_TEMP[6]~1_combout\,
	combout => \Seg1|DOUT_TEMP[6]~3_combout\);

-- Location: LCCOMB_X17_Y5_N30
\INST1|WideOr8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr8~0_combout\ = (\INST1|current_state.S13~q\) # ((\INST1|current_state.S9~q\) # ((\INST1|current_state.S11~q\) # (\INST1|current_state.S5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S13~q\,
	datab => \INST1|current_state.S9~q\,
	datac => \INST1|current_state.S11~q\,
	datad => \INST1|current_state.S5~q\,
	combout => \INST1|WideOr8~0_combout\);

-- Location: LCCOMB_X12_Y10_N24
\INST1|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr8~combout\ = (\INST1|current_state.S1~q\) # (((\INST1|WideOr8~0_combout\) # (\INST1|current_state.S3~q\)) # (!\INST1|WideOr8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S1~q\,
	datab => \INST1|WideOr8~1_combout\,
	datac => \INST1|WideOr8~0_combout\,
	datad => \INST1|current_state.S3~q\,
	combout => \INST1|WideOr8~combout\);

-- Location: LCCOMB_X1_Y9_N26
\INST1|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr2~combout\ = (\INST1|current_state.S10~q\) # ((\INST1|current_state.night~q\) # (\INST1|current_state.reduced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S10~q\,
	datac => \INST1|current_state.night~q\,
	datad => \INST1|current_state.reduced~q\,
	combout => \INST1|WideOr2~combout\);

-- Location: CLKCTRL_G1
\INST1|WideOr2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST1|WideOr2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST1|WideOr2~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y14_N0
\INST1|state_output[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|state_output\(0) = (GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & ((\INST1|state_output\(0)))) # (!GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & (\INST1|WideOr8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|WideOr8~combout\,
	datac => \INST1|WideOr2~clkctrl_outclk\,
	datad => \INST1|state_output\(0),
	combout => \INST1|state_output\(0));

-- Location: LCCOMB_X16_Y11_N8
\INST1|WideOr6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr6~combout\ = ((\INST1|current_state.S11~q\) # ((!\Seg1|DOUT[3]~4_combout\) # (!\Seg1|DOUT[3]~3_combout\))) # (!\INST1|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|WideOr6~0_combout\,
	datab => \INST1|current_state.S11~q\,
	datac => \Seg1|DOUT[3]~3_combout\,
	datad => \Seg1|DOUT[3]~4_combout\,
	combout => \INST1|WideOr6~combout\);

-- Location: LCCOMB_X16_Y11_N2
\INST1|state_output[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|state_output\(1) = (GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & (\INST1|state_output\(1))) # (!GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & ((\INST1|WideOr6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|state_output\(1),
	datac => \INST1|WideOr6~combout\,
	datad => \INST1|WideOr2~clkctrl_outclk\,
	combout => \INST1|state_output\(1));

-- Location: LCCOMB_X17_Y5_N0
\INST1|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr4~0_combout\ = (!\INST1|current_state.S12~q\ & (!\INST1|current_state.S14~q\ & (!\INST1|current_state.S13~q\ & !\INST1|current_state.S15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S12~q\,
	datab => \INST1|current_state.S14~q\,
	datac => \INST1|current_state.S13~q\,
	datad => \INST1|current_state.S15~q\,
	combout => \INST1|WideOr4~0_combout\);

-- Location: LCCOMB_X16_Y11_N10
\INST1|WideOr4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|WideOr4~combout\ = (\INST1|current_state.S5~q\) # (((\INST1|current_state.S4~q\) # (!\Seg1|DOUT[3]~3_combout\)) # (!\INST1|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S5~q\,
	datab => \INST1|WideOr4~0_combout\,
	datac => \Seg1|DOUT[3]~3_combout\,
	datad => \INST1|current_state.S4~q\,
	combout => \INST1|WideOr4~combout\);

-- Location: LCCOMB_X16_Y11_N28
\INST1|state_output[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|state_output\(2) = (GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & ((\INST1|state_output\(2)))) # (!GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & (\INST1|WideOr4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|WideOr4~combout\,
	datab => \INST1|state_output\(2),
	datad => \INST1|WideOr2~clkctrl_outclk\,
	combout => \INST1|state_output\(2));

-- Location: LCCOMB_X17_Y5_N6
\Seg1|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[0]~2_combout\ = (!\INST1|current_state.S8~q\ & (!\INST1|current_state.S9~q\ & (!\INST1|current_state.S11~q\ & \INST1|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S8~q\,
	datab => \INST1|current_state.S9~q\,
	datac => \INST1|current_state.S11~q\,
	datad => \INST1|WideOr4~0_combout\,
	combout => \Seg1|DOUT[0]~2_combout\);

-- Location: LCCOMB_X16_Y11_N30
\INST1|state_output[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|state_output\(3) = (GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & ((\INST1|state_output\(3)))) # (!GLOBAL(\INST1|WideOr2~clkctrl_outclk\) & (!\Seg1|DOUT[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Seg1|DOUT[0]~2_combout\,
	datac => \INST1|state_output\(3),
	datad => \INST1|WideOr2~clkctrl_outclk\,
	combout => \INST1|state_output\(3));

-- Location: LCCOMB_X1_Y9_N22
\INST1|SM_night\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|SM_night~combout\ = (\INST1|current_state.reduced~q\ & ((\INST1|SM_night~combout\))) # (!\INST1|current_state.reduced~q\ & (\INST1|current_state.night~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.night~q\,
	datac => \INST1|SM_night~combout\,
	datad => \INST1|current_state.reduced~q\,
	combout => \INST1|SM_night~combout\);

-- Location: LCCOMB_X1_Y9_N24
\INST1|SM_reduced\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|SM_reduced~combout\ = (\INST1|current_state.night~q\ & ((\INST1|SM_reduced~combout\))) # (!\INST1|current_state.night~q\ & (\INST1|current_state.reduced~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.night~q\,
	datab => \INST1|current_state.reduced~q\,
	datac => \INST1|SM_reduced~combout\,
	combout => \INST1|SM_reduced~combout\);

-- Location: LCCOMB_X6_Y8_N24
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\INST1|SM_night~combout\) # (\INST1|SM_reduced~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|SM_night~combout\,
	datad => \INST1|SM_reduced~combout\,
	combout => \leds~0_combout\);

-- Location: LCCOMB_X12_Y5_N16
\leds~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~1_combout\ = (\INST5|DoutR~q\) # (\INST4|DoutR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|DoutR~q\,
	datad => \INST4|DoutR~q\,
	combout => \leds~1_combout\);

-- Location: LCCOMB_X16_Y11_N0
\Seg1|DOUT[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[0]~5_combout\ = (\INST1|current_state.S10~q\) # ((!\GEN1|strobe~q\ & (\INST1|current_state.reduced~q\ & !\Seg1|clk_proc:COUNT[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S10~q\,
	datab => \GEN1|strobe~q\,
	datac => \INST1|current_state.reduced~q\,
	datad => \Seg1|clk_proc:COUNT[10]~q\,
	combout => \Seg1|DOUT[0]~5_combout\);

-- Location: LCCOMB_X12_Y12_N20
\Seg1|DOUT[0]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[0]~13_combout\ = (!\INST1|current_state.S6~q\ & (\Seg1|DOUT_TEMP[6]~0_combout\ & (!\INST1|current_state.S7~q\ & \INST1|current_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S6~q\,
	datab => \Seg1|DOUT_TEMP[6]~0_combout\,
	datac => \INST1|current_state.S7~q\,
	datad => \INST1|current_state.S0~q\,
	combout => \Seg1|DOUT[0]~13_combout\);

-- Location: LCCOMB_X16_Y11_N18
\Seg1|DOUT[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[0]~6_combout\ = \Seg1|clk_proc:COUNT[10]~q\ $ ((((!\Seg1|DOUT[0]~5_combout\ & \Seg1|DOUT[0]~2_combout\)) # (!\Seg1|DOUT[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|clk_proc:COUNT[10]~q\,
	datab => \Seg1|DOUT[0]~5_combout\,
	datac => \Seg1|DOUT[0]~13_combout\,
	datad => \Seg1|DOUT[0]~2_combout\,
	combout => \Seg1|DOUT[0]~6_combout\);

-- Location: LCCOMB_X17_Y5_N4
\INST1|QQ2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|QQ2~1_combout\ = (\INST1|QQ~1_combout\ & ((\INST1|current_state.S13~q\) # ((!\INST1|QQ2~0_combout\)))) # (!\INST1|QQ~1_combout\ & (((\GEN2|strobe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S13~q\,
	datab => \INST1|QQ2~0_combout\,
	datac => \GEN2|strobe~q\,
	datad => \INST1|QQ~1_combout\,
	combout => \INST1|QQ2~1_combout\);

-- Location: LCCOMB_X16_Y11_N4
\INST1|QQ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|QQ~0_combout\ = (\INST1|current_state.night~q\) # ((!\INST1|current_state.reduced~q\ & \GEN2|strobe~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|current_state.reduced~q\,
	datac => \GEN2|strobe~q\,
	datad => \INST1|current_state.night~q\,
	combout => \INST1|QQ~0_combout\);

-- Location: LCCOMB_X16_Y11_N14
\Seg1|DOUT[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~7_combout\ = (\Seg1|DOUT[3]~3_combout\ & (\INST1|QQ~0_combout\ & (!\INST1|current_state.S10~q\ & \Seg1|DOUT[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|DOUT[3]~3_combout\,
	datab => \INST1|QQ~0_combout\,
	datac => \INST1|current_state.S10~q\,
	datad => \Seg1|DOUT[0]~2_combout\,
	combout => \Seg1|DOUT[3]~7_combout\);

-- Location: LCCOMB_X16_Y11_N24
\Seg1|DOUT[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~8_combout\ = (\INST1|current_state.S5~q\) # (((\Seg1|DOUT[3]~7_combout\) # (\INST1|current_state.S4~q\)) # (!\Seg1|DOUT[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|current_state.S5~q\,
	datab => \Seg1|DOUT[3]~4_combout\,
	datac => \Seg1|DOUT[3]~7_combout\,
	datad => \INST1|current_state.S4~q\,
	combout => \Seg1|DOUT[3]~8_combout\);

-- Location: LCCOMB_X16_Y11_N26
\Seg1|DOUT[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~9_combout\ = (\Seg1|clk_proc:COUNT[10]~q\ & (((\Seg1|DOUT[3]~8_combout\)))) # (!\Seg1|clk_proc:COUNT[10]~q\ & (\INST1|QQ2~1_combout\ & (\Seg1|DOUT[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|QQ2~1_combout\,
	datab => \Seg1|clk_proc:COUNT[10]~q\,
	datac => \Seg1|DOUT[3]~4_combout\,
	datad => \Seg1|DOUT[3]~8_combout\,
	combout => \Seg1|DOUT[3]~9_combout\);

-- Location: LCCOMB_X16_Y11_N20
\Seg1|DOUT[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~10_combout\ = (!\INST1|current_state.S1~q\ & \INST1|current_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|current_state.S1~q\,
	datad => \INST1|current_state.S0~q\,
	combout => \Seg1|DOUT[3]~10_combout\);

-- Location: LCCOMB_X16_Y11_N6
\Seg1|DOUT[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Seg1|DOUT[3]~11_combout\ = (\Seg1|DOUT[3]~10_combout\ & (\Seg1|DOUT[3]~9_combout\)) # (!\Seg1|DOUT[3]~10_combout\ & (((\Seg1|clk_proc:COUNT[10]~q\ & \GEN2|strobe~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Seg1|DOUT[3]~9_combout\,
	datab => \Seg1|clk_proc:COUNT[10]~q\,
	datac => \GEN2|strobe~q\,
	datad => \Seg1|DOUT[3]~10_combout\,
	combout => \Seg1|DOUT[3]~11_combout\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


