import math
from random import randrange

def equalize(old_pixel, min_pixel, sl):
	new_pixel = (old_pixel-min_pixel)<<sl
	if(new_pixel>255):
		return 255;
	else:
		return new_pixel;
		
def find_min_val(pixels):
	return min(pixels);

def find_sl(pixels):
	return 8 - math.floor(math.log(max(pixels)-min(pixels)+1, 2))

mem = """
0 4 \\ Byte più significativo numero colonne
1 3 \\ Byte meno significativo numero colonne
2 0 \\ primo Byte immagine
3 23
4 46
5 69
6 92
7 115
8 139
9 162
10 185
11 208
12 231
13 255 \\ ultimo Byte immagine
14 0 \\ primo Byte immagine equalizzata (risultato)
15 23
16 46
17 68
18 92
19 115 
20 139
21 162
22 185
23 208
24 231
25 255
""";

mem = mem.split('\n');
mem = list(filter(lambda x: (x != ""), mem))
mem = [int(line.split(' ')[1]) for line in mem];

print(mem)


C = mem[0];
R = mem[1];
N = C*R;

#print([hex(x) for x in mem]);

model_ram_type = "{} => std_logic_vector(to_unsigned( {}, 8)),\n\t\t\t\t\t\t";
ram_type = '(' + ''.join([model_ram_type.format(i, mem[i]) for i in range(2+N)]) + "others => (others =>'0'));\n"
		
model_asserts = "assert RAM({}) = std_logic_vector(to_unsigned( {} , 8)) report \"TEST FALLITO (WORKING ZONE). Expected  {}  found \" & integer'image(to_integer(unsigned(RAM({}))))  severity failure;\n\t"
asserts = ''.join([model_asserts.format(i, mem[i], mem[i], i ) for i in range(2+N, len(mem))]);

testbanch = f"""
-- {[hex(x) for x in mem]}

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity project_tb is
end project_tb;

architecture projecttb of project_tb is
constant c_CLOCK_PERIOD         : time := 15 ns;
signal   tb_done                : std_logic;
signal   mem_address            : std_logic_vector (15 downto 0) := (others => '0');
signal   tb_rst                 : std_logic := '0';
signal   tb_start               : std_logic := '0';
signal   tb_clk                 : std_logic := '0';
signal   mem_o_data,mem_i_data  : std_logic_vector (7 downto 0);
signal   enable_wire            : std_logic;
signal   mem_we                 : std_logic;

type ram_type is array (65535 downto 0) of std_logic_vector(7 downto 0);

signal RAM: ram_type := {ram_type}                     

component project_reti_logiche is
port (
      i_clk         : in  std_logic;
      i_rst         : in  std_logic;
      i_start       : in  std_logic;
      i_data        : in  std_logic_vector(7 downto 0);
      o_address     : out std_logic_vector(15 downto 0);
      o_done        : out std_logic;
      o_en          : out std_logic;
      o_we          : out std_logic;
      o_data        : out std_logic_vector (7 downto 0)
      );
end component project_reti_logiche;


begin
UUT: project_reti_logiche
port map (
          i_clk      	=> tb_clk,
          i_rst      	=> tb_rst,
          i_start       => tb_start,
          i_data    	=> mem_o_data,
          o_address  	=> mem_address,
          o_done      	=> tb_done,
          o_en   	    => enable_wire,
          o_we 		    => mem_we,
          o_data    	=> mem_i_data
          );

p_CLK_GEN : process is
begin
    wait for c_CLOCK_PERIOD/2;
    tb_clk <= not tb_clk;
end process p_CLK_GEN;


MEM : process(tb_clk)
begin
    if tb_clk'event and tb_clk = '1' then
        if enable_wire = '1' then
            if mem_we = '1' then
                RAM(conv_integer(mem_address))  <= mem_i_data;
                mem_o_data                      <= mem_i_data after 1 ns;
            else
                mem_o_data <= RAM(conv_integer(mem_address)) after 1 ns;
            end if;
        end if;
    end if;
end process;


test : process is
begin 
    wait for 100 ns;
    wait for c_CLOCK_PERIOD;
    tb_rst <= '1';
    wait for c_CLOCK_PERIOD;
    wait for 100 ns;
    tb_rst <= '0';
    wait for c_CLOCK_PERIOD;
    wait for 100 ns;
    tb_start <= '1';
    wait for c_CLOCK_PERIOD;
    wait until tb_done = '1';
    wait for c_CLOCK_PERIOD;
    tb_start <= '0';
    wait until tb_done = '0';
    wait for 100 ns;
    
    {asserts}
	
    assert false report "Simulation Ended! TEST PASSATO" severity failure;
end process test;

end projecttb;
"""

f = open("Testbench-example5.vhd", "w")
f.write(testbanch)
f.close()

