library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity Adder is port (
	
	hex_A : in std_logic_vector(3 downto 0);
	hex_B : in std_logic_vector(3 downto 0);
	sum : out std_logic_vector (7 downto 0);
);
end Adder;

architecture Behavioural of Adder is 

begin 
with 
A <= "0000";
sum (7 downto 0)<= std_logic_vector(unsigned(A & hex_A) + unsigned(A & hex_B)); --this how we add stuff & puts 0000 at the start of the bits we give the adder


end architecture Behavioural; 