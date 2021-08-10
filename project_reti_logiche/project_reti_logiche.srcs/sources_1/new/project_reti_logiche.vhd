----------------------------------------------------------------------------------
-- University: Politecnico di Milano
-- Student: Corigliano Emilio
-- 
-- Create Date: 05.08.2021 16:26:46
-- Design Name: 
-- Module Name: project_reti_logiche - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- used for arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- interface of the circuit
entity project_reti_logiche is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_data : in std_logic_vector(7 downto 0);
        o_address : out std_logic_vector(15 downto 0);
        o_done : out std_logic;
        o_en : out std_logic;
        o_we : out std_logic;
        o_data : out std_logic_vector (7 downto 0)
    );
end project_reti_logiche;

-- interface of the component, with the signals accessibles from the processes
architecture Behavioral of project_reti_logiche is
component datapath is
    port (
        i_clk : in std_logic;
        i_rst : in std_logic;
        i_start : in std_logic;
        i_data : in std_logic_vector(7 downto 0);
        r1_load : in std_logic;
        rN_load : in std_logic;
        rN_sel : in std_logic;
        rC1_load : in std_logic;
        rC1_sel : in std_logic;
        rC2_load : in std_logic;
        rC2_sel : in std_logic;
        rSL_load : in std_logic;
        o_address : out std_logic_vector(15 downto 0);
        o_done : out std_logic;
        o_en : out std_logic;
        o_we : out std_logic;
        o_data : out std_logic_vector (7 downto 0)        
    );
end component;

-- registers and signals definition
signal r1_out : std_logic_vector (7 downto 0);
signal rN_in : std_logic_vector (15 downto 0);
signal rN_out : std_logic_vector (15 downto 0);
signal rC1_in : std_logic_vector (7 downto 0);
signal rC1_out : std_logic_vector (7 downto 0);

signal rMax_in : std_logic_vector (7 downto 0);
signal rMax_out : std_logic_vector (7 downto 0);
signal rMax_load : std_logic;
signal rMax_mux : std_logic;
signal rMin_in : std_logic_vector (7 downto 0);
signal rMin_out : std_logic_vector (7 downto 0);
signal rMin_load : std_logic;
signal rMin_mux : std_logic;
signal rC2_in : std_logic_vector (15 downto 0);
signal rC2_out : std_logic_vector (15 downto 0);
signal o_address_tmp0 : std_logic_vector (15 downto 0);

signal muxSL_in : std_logic_vector (7 downto 0);
signal rSL_in : std_logic_vector (3 downto 0);
signal rSL_out : std_logic_vector (3 downto 0);

signal r3_out : std_logic_vector (7 downto 0);
signal rC3_in : std_logic_vector (15 downto 0);
signal rC3_out : std_logic_vector (15 downto 0);
signal o_address_tmp : std_logic_vector (15 downto 0);

-- input handled by the FSM
-- phase 1: compute the dimension of the image N
signal r1_load : std_logic;
signal rN_load : std_logic;
signal rN_sel : std_logic;
signal rC1_load : std_logic;
signal rC1_sel : std_logic;
signal N_end : std_logic;

-- phase 2: get the max and min pixel value of the image
signal rMax_sel : std_logic;
signal rMin_sel : std_logic;
signal rC2_load : std_logic;
signal rC2_sel : std_logic;
signal phase1_sel : std_logic_vector (1 downto 0);
signal MaxMin_end : std_logic;

-- phase 3: compute the shift level
signal rSL_load : std_logic;
signal rSL_sel : std_logic;
signal phase2_sel : std_logic_vector (1 downto 0);
signal SL_end : std_logic;

-- phase 4: compute all the pixel values
signal r3_load : std_logic;
signal phase3_sel : std_logic;
signal pixel_new : std_logic_vector (8 downto 0);
signal rC3_load : std_logic;
signal rC3_sel : std_logic;
signal computation_end : std_logic;

-- states of the FSM
type States is (
    WAIT_BEGIN, READ_COLUMNS, READ_ROWS, COMPUTE_N,
    PREPARE_MAXMIN_PHASE, COMPUTE_MAXMIN,
    PREPARE_SL_PHASE, COMPUTE_SL,
    PREPARE_COMPUTATION, READ_PIXEL, WRITE_PIXEL
);
signal cur_state, next_state : States;

begin   
    -- handling the reset and the changing of the state on the front of the clock
    process(i_clk)
    begin
        if(i_rst = '1') then
            cur_state <= WAIT_BEGIN;
        elsif (i_clk'event and i_clk = '1') then
            cur_state <= next_state;
        end if;
    end process;
    
    -- o_address
    with cur_state select
        o_address <= "0000000000000000" when READ_COLUMNS,
                    "0000000000000001" when READ_ROWS,
                    o_address_tmp0 when PREPARE_MAXMIN_PHASE,
                    o_address_tmp0 when COMPUTE_MAXMIN,
                    o_address_tmp when PREPARE_COMPUTATION,
                    o_address_tmp when READ_PIXEL,
                    o_address_tmp when WRITE_PIXEL,
                    "XXXXXXXXXXXXXXXX" when others;
    
    -- |PHASE 1|
    -- register r1
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            r1_out <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if(r1_load = '1') then
                r1_out <= i_data;
            end if;
        end if;
    end process;
    
    -- mux before rN
    with rN_sel select
        rN_in <= "0000000000000000" when '0',
                std_logic_vector(unsigned(rN_out) + unsigned(r1_out)) when '1',
                "XXXXXXXXXXXXXXXX" when others;
    
    -- register rN
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rN_out <= "0000000000000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rN_load = '1' and N_end = '0') then
                rN_out <= rN_in;
            end if;
        end if;
    end process;
    
    -- mux before rC1
    with rC1_sel select
        rC1_in <= i_data when '0',
                std_logic_vector(unsigned(rC1_out) - "00000001") when '1',
                "XXXXXXXX" when others;
    
    -- register rC1
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rC1_out <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rC1_load = '1') then
                rC1_out <= rC1_in;
            end if;
        end if;
    end process;
    
    -- signal N_end
    process(rC1_out)
    begin
        if(rC1_out = "00000000") then
            N_end <= '1';
        else
            N_end <= '0';
        end if;
    end process;
    
    -- |PHASE 2|
    -- register o_address
    o_address_tmp0 <= std_logic_vector(unsigned(rC2_out) + "0000000000000010");
        
    -- mux load rMin
    process(i_data, rMin_out)
    begin
        if(i_data < rMin_out) then
            rMin_mux <= '1';
        else
            rMin_mux <= '0';
        end if;
    end process;
    
    with phase1_sel select
        rMin_load <= rMin_mux when "00",
                '0' when "01",
                '1' when "10",
                'X' when others;
    
    -- mux before rMin
    with rMin_sel select
        rMin_in <= "11111111" when '0',
                i_data when '1',
                "XXXXXXXX" when others;
    
    -- register rMin
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rMin_out <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rMin_load = '1') then
                rMin_out <= rMin_in;
            end if;
        end if;
    end process;
    
    -- mux load rMax
    process(i_data, rMax_out)
    begin
        if(i_data > rMax_out) then
            rMax_mux <= '1';
        else
            rMax_mux <= '0';
        end if;
    end process;
    
    with phase1_sel select
        rMax_load <= rMax_mux when "00",
                '0' when "01",
                '1' when "10",
                'X' when others;
                
    -- mux before rMax
    with rMax_sel select
        rMax_in <= "00000000" when '0',
                i_data when '1',
                "XXXXXXXX" when others;
    
    -- register rMax
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rMax_out <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rMax_load = '1') then
                rMax_out <= rMax_in;
            end if;
        end if;
    end process;
    
    -- mux before rC2
    with rC2_sel select
        rC2_in <= "0000000000000000" when '0',
                std_logic_vector(unsigned(rC2_out) + "0000000000000001") when '1',
                "XXXXXXXXXXXXXXXX" when others;
                
    -- register rC2
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rC2_out <= "0000000000000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rC2_load = '1') then
                rC2_out <= rC2_in;
            end if;
        end if;
    end process;
    
    -- signal MaxMin_end
    process(rC2_out)
    begin
        if(rC2_out = rN_out) then
            MaxMin_end <= '1';
        else
            MaxMin_end <= '0';
        end if;
    end process;
    
    -- |PHASE 3|
    -- input mux SL
    process(rMax_out, rMin_out, rSL_out)
    begin
        muxSL_in <= std_logic_vector(unsigned(rMax_out) - unsigned(rMin_out) + "00000001");
        
        if ((muxSL_in and std_logic_vector(unsigned(shift_right("10000000", to_integer(unsigned(rSL_out) - unsigned("0001")))))) = "00000000") then
            SL_end <= '0';
        elsif ((muxSL_in and shift_right("10000000", to_integer(unsigned(rSL_out))-1)) \= "00000000") then
--        if(muxSL_in(TO_INTEGER(unsigned(rSL_out))) = '0') then
            SL_end <= '1';
        else
            SL_end <= 'X';
        end if;
    end process;
    
    -- mux load rSL
    with phase2_sel select
        rSL_load <= not(SL_end) when "00",
                '0' when "01",
                '1' when "10",
                'X' when others;
    
    -- mux before rSL
    with rSL_sel select
        rSL_in <= "0000" when '0',
                std_logic_vector(unsigned(rSL_out) + "0001") when '1',
                "XXXX" when others;
    
    -- register rSL
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rSL_out <= "0000";
        elsif (i_clk'event and i_clk = '1') then
            if(rSL_load = '1') then
                rSL_out <= rSL_in;
            end if;
        end if;
    end process;
    
    -- |PHASE 4|
    -- register r3
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            r3_out <= "00000000";
        elsif (i_clk'event and i_clk = '1') then
            if(phase3_sel = '1') then
                r3_out <= i_data;
            end if;
        end if;
    end process;
    
    -- mux o_data
    process(r3_out, rMin_out, rSL_out)
    begin
        pixel_new <= std_logic_vector("000000000" + shift_left(unsigned(r3_out) - unsigned(rMin_out), to_integer(unsigned(rSL_out))));
    
        if(unsigned(pixel_new) > 255 ) then
            o_data <= "11111111";
        else
            o_data <= pixel_new(7 downto 0);
        end if;
    end process;
    
    -- mux before rC3 (uguale a rC2)
    with rC3_sel select
        rC3_in <= rN_out when '0',
                std_logic_vector(unsigned(rC3_out) - "0000000000000001") when '1',
                "XXXXXXXXXXXXXXXX" when others;
    
    -- register rC3
    process(i_clk, i_rst)
    begin
        if(i_rst = '1') then
            rC3_out <= "0000000000000000";
        elsif (i_clk'event and i_clk = '1') then
            if(rC3_load = '1') then
                rC3_out <= rC3_in;
            end if;
        end if;
    end process;
    
    -- signal o_address_tmp
    with phase3_sel select
        o_address_tmp <= std_logic_vector(unsigned(rC3_out) + "0000000000000010") when '0',
                std_logic_vector(unsigned(rC3_out) + unsigned(rN_out) + "0000000000000010") when '1',
                "XXXXXXXXXXXXXXXX" when others;    
    
    -- signal computation_end
    process(rC3_out)
    begin
        if(unsigned(rC3_out) = "0000000000000000") then
            computation_end <= '1';
        else
            computation_end <='0';
        end if;
    end process;
    
    -- signal rC3_load
    process(phase3_sel, rC3_out)
    begin
        rC3_load <= (phase3_sel or not(rC3_sel));
    end process;
    
    -- |FSM PROCESS|
    process(cur_state, i_start, N_end, MaxMin_end, SL_end, computation_end)
    begin
        next_state <= cur_state;
        case cur_state is
            when WAIT_BEGIN =>
                if i_start = '1' then
                    o_done <= '0';
                    next_state <= READ_COLUMNS;
                end if;
            
            when READ_COLUMNS =>
                next_state <= READ_ROWS;
                
            when READ_ROWS =>
                next_state <= COMPUTE_N;
                     
            when COMPUTE_N =>
                if N_end = '1' then
                    next_state <= PREPARE_MAXMIN_PHASE;
                end if;
           
            when PREPARE_MAXMIN_PHASE =>  
                next_state <= COMPUTE_MAXMIN;
                
            when COMPUTE_MAXMIN =>
                if MaxMin_end = '1' then
                    next_state <= PREPARE_SL_PHASE;
                end if;
            
            when PREPARE_SL_PHASE =>  
                next_state <= COMPUTE_SL;
                
            when COMPUTE_SL =>
                if SL_end = '1' then
                    next_state <= PREPARE_COMPUTATION;
                end if;
                
            when PREPARE_COMPUTATION =>
                next_state <= READ_PIXEL;
                
            when READ_PIXEL =>
                next_state <= WRITE_PIXEL;
                
            when WRITE_PIXEL =>
                if computation_end = '1' then
                    next_state <= WAIT_BEGIN;
                    o_done <= '1';
                else
                    next_state <= READ_PIXEL;
                end if;
                
        end case;  
    end process;
    
    process(cur_state)
    begin
        -- default values
        -- output
        o_en <= '0';
        o_we <= '0';
        o_data <= "00000000";
        
        -- phase 1
        r1_load <= '0';
        rN_load <= '0';
        rN_sel <= '0';
        rC1_load <= '0';
        rC1_sel <= '0';
        
        -- phase 2
        rMax_sel <= '0';
        rMin_sel <= '0';
        rC2_load <= '0';
        rC2_sel <= '0';
        phase1_sel <= "01";
        
        -- phase 3
        rSL_sel <= '0';
        phase2_sel <= "01";
        
        -- phase 4
        r3_load <= '0';
        phase3_sel <= '0';
        pixel_new <= "000000000";
        rC3_sel <= '0';
        
        -- signals handled by the FSM
        case cur_state is
            when WAIT_BEGIN =>
                o_en <= '1';              
            
            when READ_COLUMNS =>
                o_en <= '1';
                r1_load <= '1';
                rN_sel <= '0';
                rN_load <= '1';
                
            when READ_ROWS =>
                r1_load <= '0';
                rN_sel <= '1';
                rN_load <= '1';
                
                rC1_sel <= '0';
                rC1_load <= '1';
                     
            when COMPUTE_N =>
                rN_sel <= '1';
                rN_load <= '1';
                
                rC1_sel <= '1';
                rC1_load <= '1';
                
                rC2_sel <='0';
                rC2_load <='1';
                
            when PREPARE_MAXMIN_PHASE =>
                o_en <= '1';
                
                phase1_sel <= "10";
                rMin_sel <= '0';
                rMax_sel <= '0';
                
                rC2_sel <='1';
                rC2_load <='1';
                
            when COMPUTE_MAXMIN =>
                o_en <= '1';
                
                phase1_sel <= "00";
                rMin_sel <= '1';
                rMax_sel <= '1';
                
                phase2_sel <= "10";
                rC2_sel <='1';
                rC2_load <='1';
            
            when PREPARE_SL_PHASE =>
                rSL_sel <= '0';
                phase2_sel <= "10";
                
            when COMPUTE_SL =>
                rSL_sel <= '1';
                phase2_sel <= "00";
                
            when PREPARE_COMPUTATION =>
                rC3_sel <='0';
                
            when READ_PIXEL =>
                o_en <= '1';
                o_we <= '0';
                
                rC3_sel <='1';
                r3_load <='1';
                phase3_sel <= '0';
                
            when WRITE_PIXEL =>
                o_en <= '1';
                o_we <= '1';
                
                r3_load <='0';
                phase3_sel <= '1';
           
        end case;  
    end process;
end Behavioral;


-- maybe can be deleted tmp_done, PREPARE_COMPUTATION, aggiusta 0 per SL