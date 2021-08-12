
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity project_tb3 is
end project_tb3;

architecture projecttb of project_tb3 is
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

			 -- Expected Output  6 -> 0                         
			 -- Expected Output  7 -> 255                         
			 -- Expected Output  8 -> 64                         
			 -- Expected Output  9 -> 172  
signal RAM: ram_type := (0 => std_logic_vector(to_unsigned(  2  , 8)), 
                          1 => std_logic_vector(to_unsigned(  2  , 8)), 
                          2 => std_logic_vector(to_unsigned(  46  , 8)),  
                          3 => std_logic_vector(to_unsigned(  131  , 8)), 
                          4 => std_logic_vector(to_unsigned(  62  , 8)), 
                          5 => std_logic_vector(to_unsigned(  89  , 8)), 
                          others => (others =>'0'));    

signal RAM1: ram_type := (0 => std_logic_vector(to_unsigned( 3 , 8)),
						1 => std_logic_vector(to_unsigned( 4 , 8)),
						2 => std_logic_vector(to_unsigned( 216 , 8)),
						3 => std_logic_vector(to_unsigned( 16 , 8)),
						4 => std_logic_vector(to_unsigned( 59 , 8)),
						5 => std_logic_vector(to_unsigned( 132 , 8)),
						6 => std_logic_vector(to_unsigned( 102 , 8)),
						7 => std_logic_vector(to_unsigned( 92 , 8)),
						8 => std_logic_vector(to_unsigned( 200 , 8)),
						9 => std_logic_vector(to_unsigned( 67 , 8)),
						10 => std_logic_vector(to_unsigned( 94 , 8)),
						11 => std_logic_vector(to_unsigned( 88 , 8)),
						12 => std_logic_vector(to_unsigned( 118 , 8)),
						13 => std_logic_vector(to_unsigned( 47 , 8)), 
                        others => (others =>'0'));  		 

			 

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

    -- Immagine originale =  [46, 131, 62, 89]  
    -- Immagine di output =  [0, 255, 64, 172]
	
    -- END FIRST IMAGE
    assert RAM(6) = std_logic_vector(to_unsigned( 0 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  0  found " & integer'image(to_integer(unsigned(RAM(6))))  severity failure;
    assert RAM(7) = std_logic_vector(to_unsigned( 255 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  255  found " & integer'image(to_integer(unsigned(RAM(7))))  severity failure;
    assert RAM(8) = std_logic_vector(to_unsigned( 64 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  64  found " & integer'image(to_integer(unsigned(RAM(8))))  severity failure;
    assert RAM(9) = std_logic_vector(to_unsigned( 172 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  172  found " & integer'image(to_integer(unsigned(RAM(9))))  severity failure;

    wait for 100 ns;
    wait for c_CLOCK_PERIOD;

	-- SETTING MEMORY FOR SECOND IMAGE
	RAM <= RAM1;
	

----	[
----		'0x3', '0x4', 
----		'0xd8', '0x10', '0x3b', '0x84', '0x66', '0x5c', '0xc8', '0x43', '0x5e', '0x58', '0x76', '0x2f', 
----		'0xff', '0x0', '0x56', '0xe8', '0xac', '0x98', '0xff', '0x66', '0x9c', '0x90', '0xcc', '0x3e'
----	]
	
--    wait for 100 ns;
--	wait for c_CLOCK_PERIOD;
--    tb_start <= '1';
--    wait for c_CLOCK_PERIOD;
--    wait until tb_done = '1';
--    wait for c_CLOCK_PERIOD;
--    tb_start <= '0';
--    wait until tb_done = '0';
--    wait for 100 ns;

--	assert RAM(14) = std_logic_vector(to_unsigned( 255 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  255  found " & integer'image(to_integer(unsigned(RAM(14))))  severity failure;
--	assert RAM(15) = std_logic_vector(to_unsigned( 0 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  0  found " & integer'image(to_integer(unsigned(RAM(15))))  severity failure;
--	assert RAM(16) = std_logic_vector(to_unsigned( 86 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  86  found " & integer'image(to_integer(unsigned(RAM(16))))  severity failure;
--	assert RAM(17) = std_logic_vector(to_unsigned( 232 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  232  found " & integer'image(to_integer(unsigned(RAM(17))))  severity failure;
--	assert RAM(18) = std_logic_vector(to_unsigned( 172 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  172  found " & integer'image(to_integer(unsigned(RAM(18))))  severity failure;
--	assert RAM(19) = std_logic_vector(to_unsigned( 152 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  152  found " & integer'image(to_integer(unsigned(RAM(19))))  severity failure;
--	assert RAM(20) = std_logic_vector(to_unsigned( 255 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  255  found " & integer'image(to_integer(unsigned(RAM(20))))  severity failure;
--	assert RAM(21) = std_logic_vector(to_unsigned( 102 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  102  found " & integer'image(to_integer(unsigned(RAM(21))))  severity failure;
--	assert RAM(22) = std_logic_vector(to_unsigned( 156 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  156  found " & integer'image(to_integer(unsigned(RAM(22))))  severity failure;
--	assert RAM(23) = std_logic_vector(to_unsigned( 144 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  144  found " & integer'image(to_integer(unsigned(RAM(23))))  severity failure;
--	assert RAM(24) = std_logic_vector(to_unsigned( 204 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  204  found " & integer'image(to_integer(unsigned(RAM(24))))  severity failure;
--	assert RAM(25) = std_logic_vector(to_unsigned( 62 , 8)) report "TEST FALLITO (WORKING ZONE). Expected  62  found " & integer'image(to_integer(unsigned(RAM(25))))  severity failure;
		
    assert false report "Simulation Ended! TEST PASSATO" severity failure;
end process test;

end projecttb; 


