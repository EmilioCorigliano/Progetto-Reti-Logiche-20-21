-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Aug 25 00:41:39 2021
-- Host        : DESKTOP-PB3IH3G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/emili/Documents/SCUOLA/POLITECNICO/3ANNO/Progetto_reti_logiche/Progetto-Reti-Logiche-20-21/project_reti_logiche/project_reti_logiche.sim/sim_2/synth/func/xsim/project_tb5_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_cur_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state_reg[3]_i_11_n_1\ : STD_LOGIC;
  signal \FSM_sequential_cur_state_reg[3]_i_11_n_2\ : STD_LOGIC;
  signal \FSM_sequential_cur_state_reg[3]_i_11_n_3\ : STD_LOGIC;
  signal \FSM_sequential_cur_state_reg[3]_i_8_n_3\ : STD_LOGIC;
  signal MaxMin_end : STD_LOGIC;
  signal cur_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal muxSL_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_address_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_10_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_11_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_12_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_3_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_3_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_3_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[11]_inst_i_9_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_10_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_11_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_12_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_13_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_14_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_3_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_3_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_3_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_6_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_6_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_6_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_9_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_10_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_11_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_3_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_3_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_3_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_10_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_11_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_12_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_2_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_2_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_2_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_3_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_3_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_3_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[7]_inst_i_9_n_0\ : STD_LOGIC;
  signal o_address_tmp0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_address_tmp00_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \o_data_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_4_n_1\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_4_n_2\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_4_n_3\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[3]_inst_i_9_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_5_n_1\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_5_n_2\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_5_n_3\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_8_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[6]_inst_i_9_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal o_done_OBUF : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pixel_new0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r1_load : STD_LOGIC;
  signal \r1_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \r1_out_reg_n_0_[7]\ : STD_LOGIC;
  signal rC1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rC1_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \rC1_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \rC1_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \rC1_out[7]_i_4_n_0\ : STD_LOGIC;
  signal rC1_out_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rC2_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rC2_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \rC2_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \rC2_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \rC2_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \rC2_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \rC2_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \rC2_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \rC2_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \rC2_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \rC2_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \rC2_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \rC2_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \rC2_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \rC2_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \rC2_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \rC2_out[8]_i_5_n_0\ : STD_LOGIC;
  signal rC2_out_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rC2_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rC2_out_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rC2_out_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rC2_out_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rC2_out_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rC2_sel : STD_LOGIC;
  signal \rC3_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rC3_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \rC3_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \rC3_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \rC3_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \rC3_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \rC3_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \rC3_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \rC3_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \rC3_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \rC3_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \rC3_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \rC3_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \rC3_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \rC3_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \rC3_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \rC3_out[8]_i_5_n_0\ : STD_LOGIC;
  signal rC3_out_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rC3_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rC3_out_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rC3_out_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rC3_out_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rC3_out_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rMax_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rMax_load : STD_LOGIC;
  signal rMax_mux : STD_LOGIC;
  signal rMax_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rMax_out[7]_i_10_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_11_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_8_n_0\ : STD_LOGIC;
  signal \rMax_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \rMax_out_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \rMax_out_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \rMax_out_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal rMin_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rMin_load : STD_LOGIC;
  signal rMin_mux : STD_LOGIC;
  signal rMin_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rMin_out[7]_i_10_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_11_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_5_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_8_n_0\ : STD_LOGIC;
  signal \rMin_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \rMin_out_reg[7]_i_3_n_1\ : STD_LOGIC;
  signal \rMin_out_reg[7]_i_3_n_2\ : STD_LOGIC;
  signal \rMin_out_reg[7]_i_3_n_3\ : STD_LOGIC;
  signal \rN_out[0]_i_10_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_6_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_7_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_8_n_0\ : STD_LOGIC;
  signal \rN_out[0]_i_9_n_0\ : STD_LOGIC;
  signal \rN_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \rN_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \rN_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \rN_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_6_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_7_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_8_n_0\ : STD_LOGIC;
  signal \rN_out[4]_i_9_n_0\ : STD_LOGIC;
  signal \rN_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \rN_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \rN_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \rN_out[8]_i_5_n_0\ : STD_LOGIC;
  signal rN_out_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rN_out_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \rN_out_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \rN_out_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rN_out_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rN_out_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rSL_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rSL_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \rSL_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \rSL_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \rSL_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \rSL_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \rSL_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_10_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_11_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_12_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_13_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_14_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_15_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_16_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_17_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_18_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_5_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_6_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_8_n_0\ : STD_LOGIC;
  signal \rSL_out[3]_i_9_n_0\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_3_n_1\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_3_n_3\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_4_n_1\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_4_n_2\ : STD_LOGIC;
  signal \rSL_out_reg[3]_i_4_n_3\ : STD_LOGIC;
  signal \NLW_FSM_sequential_cur_state_reg[3]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_cur_state_reg[3]_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_FSM_sequential_cur_state_reg[3]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_o_address_OBUF[15]_inst_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_address_OBUF[15]_inst_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_address_OBUF[15]_inst_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_o_data_OBUF[6]_inst_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rC2_out_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rC3_out_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rMax_out_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rMin_out_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rN_out_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rSL_out_reg[3]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[2]_i_1\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[0]\ : label is "prepare_maxmin_phase:0100,compute_n:0011,read_rows:0010,end_computation:1010,read_columns:0001,wait_begin:0000,write_pixel:1001,prepare_computation:0111,compute_sl:0110,read_pixel:1000,iSTATE:1011,compute_maxmin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[1]\ : label is "prepare_maxmin_phase:0100,compute_n:0011,read_rows:0010,end_computation:1010,read_columns:0001,wait_begin:0000,write_pixel:1001,prepare_computation:0111,compute_sl:0110,read_pixel:1000,iSTATE:1011,compute_maxmin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[2]\ : label is "prepare_maxmin_phase:0100,compute_n:0011,read_rows:0010,end_computation:1010,read_columns:0001,wait_begin:0000,write_pixel:1001,prepare_computation:0111,compute_sl:0110,read_pixel:1000,iSTATE:1011,compute_maxmin:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[3]\ : label is "prepare_maxmin_phase:0100,compute_n:0011,read_rows:0010,end_computation:1010,read_columns:0001,wait_begin:0000,write_pixel:1001,prepare_computation:0111,compute_sl:0110,read_pixel:1000,iSTATE:1011,compute_maxmin:0101";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \o_address_OBUF[11]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[11]_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[11]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \o_address_OBUF[15]_inst_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of \o_address_OBUF[15]_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[15]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \o_address_OBUF[15]_inst_i_5\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD of \o_address_OBUF[15]_inst_i_6\ : label is 35;
  attribute SOFT_HLUTNM of \o_address_OBUF[15]_inst_i_7\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD of \o_address_OBUF[3]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[3]_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[3]_inst_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[7]_inst_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[7]_inst_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \o_address_OBUF[7]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \o_data_OBUF[1]_inst_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_data_OBUF[2]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \o_data_OBUF[3]_inst_i_3\ : label is "soft_lutpair8";
  attribute ADDER_THRESHOLD of \o_data_OBUF[3]_inst_i_4\ : label is 35;
  attribute SOFT_HLUTNM of \o_data_OBUF[3]_inst_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_data_OBUF[6]_inst_i_3\ : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD of \o_data_OBUF[6]_inst_i_5\ : label is 35;
  attribute SOFT_HLUTNM of \o_data_OBUF[7]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of o_en_OBUF_inst_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of o_we_OBUF_inst_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rC1_out[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rC1_out[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rC1_out[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rC1_out[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rC1_out[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rC1_out[7]_i_4\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD of \rC2_out_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \rC2_out_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rC2_out_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rC2_out_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rC3_out_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \rC3_out_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rC3_out_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rC3_out_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \rMax_out[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rMax_out[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rMax_out[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rMax_out[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \rMax_out[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rMax_out[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rMax_out[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rMax_out[7]_i_2\ : label is "soft_lutpair15";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \rMax_out_reg[7]_i_3\ : label is 11;
  attribute SOFT_HLUTNM of \rMin_out[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rMin_out[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \rMin_out[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rMin_out[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rMin_out[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rMin_out[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rMin_out[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rMin_out[7]_i_2\ : label is "soft_lutpair11";
  attribute COMPARATOR_THRESHOLD of \rMin_out_reg[7]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \rN_out_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \rN_out_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rN_out_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rN_out_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \rSL_out[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rSL_out[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rSL_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rSL_out[3]_i_2\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD of \rSL_out_reg[3]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \rSL_out_reg[3]_i_4\ : label is 35;
begin
\FSM_sequential_cur_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80BF"
    )
        port map (
      I0 => i_start_IBUF,
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => cur_state(0),
      O => next_state(0)
    );
\FSM_sequential_cur_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \FSM_sequential_cur_state[3]_i_5_n_0\,
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(1),
      I4 => \FSM_sequential_cur_state[1]_i_2_n_0\,
      O => next_state(1)
    );
\FSM_sequential_cur_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F44FF444444FF4"
    )
        port map (
      I0 => \FSM_sequential_cur_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_cur_state[1]_i_4_n_0\,
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(3),
      I5 => i_start_IBUF,
      O => \FSM_sequential_cur_state[1]_i_2_n_0\
    );
\FSM_sequential_cur_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_cur_state[1]_i_5_n_0\,
      I1 => rC3_out_reg(10),
      I2 => rC3_out_reg(11),
      I3 => rC3_out_reg(5),
      I4 => rC3_out_reg(15),
      I5 => \FSM_sequential_cur_state[1]_i_6_n_0\,
      O => \FSM_sequential_cur_state[1]_i_3_n_0\
    );
\FSM_sequential_cur_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000000D"
    )
        port map (
      I0 => rC3_out_reg(9),
      I1 => rC3_out_reg(10),
      I2 => rC3_out_reg(6),
      I3 => rC3_out_reg(1),
      I4 => rC3_out_reg(13),
      I5 => rC3_out_reg(3),
      O => \FSM_sequential_cur_state[1]_i_4_n_0\
    );
\FSM_sequential_cur_state[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rC3_out_reg(8),
      I1 => rC3_out_reg(14),
      I2 => rC3_out_reg(2),
      I3 => rC3_out_reg(4),
      O => \FSM_sequential_cur_state[1]_i_5_n_0\
    );
\FSM_sequential_cur_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => rC3_out_reg(0),
      I3 => rC3_out_reg(7),
      I4 => cur_state(0),
      I5 => rC3_out_reg(12),
      O => \FSM_sequential_cur_state[1]_i_6_n_0\
    );
\FSM_sequential_cur_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14105050"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => \FSM_sequential_cur_state[3]_i_5_n_0\,
      I4 => cur_state(0),
      O => next_state(2)
    );
\FSM_sequential_cur_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => \FSM_sequential_cur_state[3]_i_3_n_0\,
      I3 => \FSM_sequential_cur_state[3]_i_4_n_0\,
      O => \FSM_sequential_cur_state[3]_i_1_n_0\
    );
\FSM_sequential_cur_state[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => rN_out_reg(6),
      I1 => rN_out_reg(4),
      I2 => rN_out_reg(7),
      I3 => rN_out_reg(0),
      I4 => \FSM_sequential_cur_state[3]_i_14_n_0\,
      O => \FSM_sequential_cur_state[3]_i_10_n_0\
    );
\FSM_sequential_cur_state[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rN_out_reg(15),
      I1 => rC2_out_reg(15),
      O => \FSM_sequential_cur_state[3]_i_12_n_0\
    );
\FSM_sequential_cur_state[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rC2_out_reg(13),
      I1 => rN_out_reg(13),
      I2 => rN_out_reg(12),
      I3 => rC2_out_reg(12),
      I4 => rN_out_reg(14),
      I5 => rC2_out_reg(14),
      O => \FSM_sequential_cur_state[3]_i_13_n_0\
    );
\FSM_sequential_cur_state[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rN_out_reg(1),
      I1 => rN_out_reg(13),
      I2 => rN_out_reg(3),
      I3 => rN_out_reg(8),
      O => \FSM_sequential_cur_state[3]_i_14_n_0\
    );
\FSM_sequential_cur_state[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rC2_out_reg(9),
      I1 => rN_out_reg(9),
      I2 => rN_out_reg(10),
      I3 => rC2_out_reg(10),
      I4 => rN_out_reg(11),
      I5 => rC2_out_reg(11),
      O => \FSM_sequential_cur_state[3]_i_15_n_0\
    );
\FSM_sequential_cur_state[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rC2_out_reg(7),
      I1 => rN_out_reg(7),
      I2 => rN_out_reg(6),
      I3 => rC2_out_reg(6),
      I4 => rN_out_reg(8),
      I5 => rC2_out_reg(8),
      O => \FSM_sequential_cur_state[3]_i_16_n_0\
    );
\FSM_sequential_cur_state[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rC2_out_reg(3),
      I1 => rN_out_reg(3),
      I2 => rN_out_reg(5),
      I3 => rC2_out_reg(5),
      I4 => rN_out_reg(4),
      I5 => rC2_out_reg(4),
      O => \FSM_sequential_cur_state[3]_i_17_n_0\
    );
\FSM_sequential_cur_state[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rC2_out_reg(0),
      I1 => rN_out_reg(0),
      I2 => rN_out_reg(2),
      I3 => rC2_out_reg(2),
      I4 => rN_out_reg(1),
      I5 => rC2_out_reg(1),
      O => \FSM_sequential_cur_state[3]_i_18_n_0\
    );
\FSM_sequential_cur_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEEAAAA62662222"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      I2 => cur_state(2),
      I3 => \FSM_sequential_cur_state[3]_i_5_n_0\,
      I4 => cur_state(0),
      I5 => i_start_IBUF,
      O => next_state(3)
    );
\FSM_sequential_cur_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444F44444444"
    )
        port map (
      I0 => \FSM_sequential_cur_state[3]_i_6_n_0\,
      I1 => \FSM_sequential_cur_state[3]_i_7_n_0\,
      I2 => rC1_out_reg(5),
      I3 => rC1_out_reg(6),
      I4 => rC1_out_reg(7),
      I5 => \rC1_out[7]_i_3_n_0\,
      O => \FSM_sequential_cur_state[3]_i_3_n_0\
    );
\FSM_sequential_cur_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAFF003FFFFC"
    )
        port map (
      I0 => MaxMin_end,
      I1 => cur_state(3),
      I2 => i_start_IBUF,
      I3 => cur_state(0),
      I4 => cur_state(1),
      I5 => cur_state(2),
      O => \FSM_sequential_cur_state[3]_i_4_n_0\
    );
\FSM_sequential_cur_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_cur_state[3]_i_9_n_0\,
      I1 => rN_out_reg(5),
      I2 => rN_out_reg(14),
      I3 => rN_out_reg(10),
      I4 => rN_out_reg(12),
      I5 => \FSM_sequential_cur_state[3]_i_10_n_0\,
      O => \FSM_sequential_cur_state[3]_i_5_n_0\
    );
\FSM_sequential_cur_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r1_out_reg_n_0_[6]\,
      I1 => \r1_out_reg_n_0_[4]\,
      I2 => \r1_out_reg_n_0_[1]\,
      I3 => \r1_out_reg_n_0_[3]\,
      O => \FSM_sequential_cur_state[3]_i_6_n_0\
    );
\FSM_sequential_cur_state[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r1_out_reg_n_0_[7]\,
      I1 => \r1_out_reg_n_0_[5]\,
      I2 => \r1_out_reg_n_0_[0]\,
      I3 => \r1_out_reg_n_0_[2]\,
      O => \FSM_sequential_cur_state[3]_i_7_n_0\
    );
\FSM_sequential_cur_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rN_out_reg(9),
      I1 => rN_out_reg(11),
      I2 => rN_out_reg(2),
      I3 => rN_out_reg(15),
      O => \FSM_sequential_cur_state[3]_i_9_n_0\
    );
\FSM_sequential_cur_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(0),
      Q => cur_state(0)
    );
\FSM_sequential_cur_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(1),
      Q => cur_state(1)
    );
\FSM_sequential_cur_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(2),
      Q => cur_state(2)
    );
\FSM_sequential_cur_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(3),
      Q => cur_state(3)
    );
\FSM_sequential_cur_state_reg[3]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_cur_state_reg[3]_i_11_n_0\,
      CO(2) => \FSM_sequential_cur_state_reg[3]_i_11_n_1\,
      CO(1) => \FSM_sequential_cur_state_reg[3]_i_11_n_2\,
      CO(0) => \FSM_sequential_cur_state_reg[3]_i_11_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_sequential_cur_state_reg[3]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_cur_state[3]_i_15_n_0\,
      S(2) => \FSM_sequential_cur_state[3]_i_16_n_0\,
      S(1) => \FSM_sequential_cur_state[3]_i_17_n_0\,
      S(0) => \FSM_sequential_cur_state[3]_i_18_n_0\
    );
\FSM_sequential_cur_state_reg[3]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_cur_state_reg[3]_i_11_n_0\,
      CO(3 downto 2) => \NLW_FSM_sequential_cur_state_reg[3]_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => MaxMin_end,
      CO(0) => \FSM_sequential_cur_state_reg[3]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_FSM_sequential_cur_state_reg[3]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \FSM_sequential_cur_state[3]_i_12_n_0\,
      S(0) => \FSM_sequential_cur_state[3]_i_13_n_0\
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(0),
      I3 => cur_state(3),
      I4 => o_address_tmp0(0),
      I5 => \o_address_OBUF[0]_inst_i_2_n_0\,
      O => o_address_OBUF(0)
    );
\o_address_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AC0F000A0C00"
    )
        port map (
      I0 => o_address_tmp00_in(0),
      I1 => in5(0),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(3),
      I5 => cur_state(0),
      O => \o_address_OBUF[0]_inst_i_2_n_0\
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(10),
      I2 => o_address_tmp00_in(10),
      I3 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I4 => in5(10),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(11),
      I2 => o_address_tmp00_in(11),
      I3 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I4 => in5(11),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(11)
    );
\o_address_OBUF[11]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(9),
      I1 => rN_out_reg(9),
      I2 => rC3_out_reg(10),
      I3 => rN_out_reg(10),
      O => \o_address_OBUF[11]_inst_i_10_n_0\
    );
\o_address_OBUF[11]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(8),
      I1 => rN_out_reg(8),
      I2 => rC3_out_reg(9),
      I3 => rN_out_reg(9),
      O => \o_address_OBUF[11]_inst_i_11_n_0\
    );
\o_address_OBUF[11]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(7),
      I1 => rN_out_reg(7),
      I2 => rC3_out_reg(8),
      I3 => rN_out_reg(8),
      O => \o_address_OBUF[11]_inst_i_12_n_0\
    );
\o_address_OBUF[11]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[7]_inst_i_4_n_0\,
      CO(3) => \o_address_OBUF[11]_inst_i_2_n_0\,
      CO(2) => \o_address_OBUF[11]_inst_i_2_n_1\,
      CO(1) => \o_address_OBUF[11]_inst_i_2_n_2\,
      CO(0) => \o_address_OBUF[11]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \o_address_OBUF[11]_inst_i_5_n_0\,
      DI(2) => \o_address_OBUF[11]_inst_i_6_n_0\,
      DI(1) => \o_address_OBUF[11]_inst_i_7_n_0\,
      DI(0) => \o_address_OBUF[11]_inst_i_8_n_0\,
      O(3 downto 0) => o_address_tmp0(11 downto 8),
      S(3) => \o_address_OBUF[11]_inst_i_9_n_0\,
      S(2) => \o_address_OBUF[11]_inst_i_10_n_0\,
      S(1) => \o_address_OBUF[11]_inst_i_11_n_0\,
      S(0) => \o_address_OBUF[11]_inst_i_12_n_0\
    );
\o_address_OBUF[11]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[7]_inst_i_2_n_0\,
      CO(3) => \o_address_OBUF[11]_inst_i_3_n_0\,
      CO(2) => \o_address_OBUF[11]_inst_i_3_n_1\,
      CO(1) => \o_address_OBUF[11]_inst_i_3_n_2\,
      CO(0) => \o_address_OBUF[11]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => o_address_tmp00_in(11 downto 8),
      S(3 downto 0) => rC3_out_reg(11 downto 8)
    );
\o_address_OBUF[11]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[7]_inst_i_3_n_0\,
      CO(3) => \o_address_OBUF[11]_inst_i_4_n_0\,
      CO(2) => \o_address_OBUF[11]_inst_i_4_n_1\,
      CO(1) => \o_address_OBUF[11]_inst_i_4_n_2\,
      CO(0) => \o_address_OBUF[11]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(11 downto 8),
      S(3 downto 0) => rC2_out_reg(11 downto 8)
    );
\o_address_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(10),
      I1 => rC3_out_reg(10),
      O => \o_address_OBUF[11]_inst_i_5_n_0\
    );
\o_address_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(9),
      I1 => rC3_out_reg(9),
      O => \o_address_OBUF[11]_inst_i_6_n_0\
    );
\o_address_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(8),
      I1 => rC3_out_reg(8),
      O => \o_address_OBUF[11]_inst_i_7_n_0\
    );
\o_address_OBUF[11]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(7),
      I1 => rC3_out_reg(7),
      O => \o_address_OBUF[11]_inst_i_8_n_0\
    );
\o_address_OBUF[11]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(10),
      I1 => rN_out_reg(10),
      I2 => rC3_out_reg(11),
      I3 => rN_out_reg(11),
      O => \o_address_OBUF[11]_inst_i_9_n_0\
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(12),
      I2 => in5(12),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp0(12),
      I5 => \o_address_OBUF[15]_inst_i_5_n_0\,
      O => o_address_OBUF(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(13),
      I2 => in5(13),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp00_in(13),
      I5 => \o_address_OBUF[15]_inst_i_2_n_0\,
      O => o_address_OBUF(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(14),
      I2 => in5(14),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp0(14),
      I5 => \o_address_OBUF[15]_inst_i_5_n_0\,
      O => o_address_OBUF(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(15),
      I2 => o_address_tmp0(15),
      I3 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I4 => in5(15),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(15)
    );
\o_address_OBUF[15]_inst_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(11),
      I1 => rC3_out_reg(11),
      O => \o_address_OBUF[15]_inst_i_10_n_0\
    );
\o_address_OBUF[15]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(14),
      I1 => rN_out_reg(14),
      I2 => rC3_out_reg(15),
      I3 => rN_out_reg(15),
      O => \o_address_OBUF[15]_inst_i_11_n_0\
    );
\o_address_OBUF[15]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(13),
      I1 => rN_out_reg(13),
      I2 => rC3_out_reg(14),
      I3 => rN_out_reg(14),
      O => \o_address_OBUF[15]_inst_i_12_n_0\
    );
\o_address_OBUF[15]_inst_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(12),
      I1 => rN_out_reg(12),
      I2 => rC3_out_reg(13),
      I3 => rN_out_reg(13),
      O => \o_address_OBUF[15]_inst_i_13_n_0\
    );
\o_address_OBUF[15]_inst_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(11),
      I1 => rN_out_reg(11),
      I2 => rC3_out_reg(12),
      I3 => rN_out_reg(12),
      O => \o_address_OBUF[15]_inst_i_14_n_0\
    );
\o_address_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7EF"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(0),
      O => \o_address_OBUF[15]_inst_i_2_n_0\
    );
\o_address_OBUF[15]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[11]_inst_i_3_n_0\,
      CO(3) => \NLW_o_address_OBUF[15]_inst_i_3_CO_UNCONNECTED\(3),
      CO(2) => \o_address_OBUF[15]_inst_i_3_n_1\,
      CO(1) => \o_address_OBUF[15]_inst_i_3_n_2\,
      CO(0) => \o_address_OBUF[15]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => o_address_tmp00_in(15 downto 12),
      S(3 downto 0) => rC3_out_reg(15 downto 12)
    );
\o_address_OBUF[15]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[11]_inst_i_2_n_0\,
      CO(3) => \NLW_o_address_OBUF[15]_inst_i_4_CO_UNCONNECTED\(3),
      CO(2) => \o_address_OBUF[15]_inst_i_4_n_1\,
      CO(1) => \o_address_OBUF[15]_inst_i_4_n_2\,
      CO(0) => \o_address_OBUF[15]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \o_address_OBUF[15]_inst_i_8_n_0\,
      DI(1) => \o_address_OBUF[15]_inst_i_9_n_0\,
      DI(0) => \o_address_OBUF[15]_inst_i_10_n_0\,
      O(3 downto 0) => o_address_tmp0(15 downto 12),
      S(3) => \o_address_OBUF[15]_inst_i_11_n_0\,
      S(2) => \o_address_OBUF[15]_inst_i_12_n_0\,
      S(1) => \o_address_OBUF[15]_inst_i_13_n_0\,
      S(0) => \o_address_OBUF[15]_inst_i_14_n_0\
    );
\o_address_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      I2 => cur_state(0),
      I3 => cur_state(3),
      O => \o_address_OBUF[15]_inst_i_5_n_0\
    );
\o_address_OBUF[15]_inst_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[11]_inst_i_4_n_0\,
      CO(3) => \NLW_o_address_OBUF[15]_inst_i_6_CO_UNCONNECTED\(3),
      CO(2) => \o_address_OBUF[15]_inst_i_6_n_1\,
      CO(1) => \o_address_OBUF[15]_inst_i_6_n_2\,
      CO(0) => \o_address_OBUF[15]_inst_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(15 downto 12),
      S(3 downto 0) => rC2_out_reg(15 downto 12)
    );
\o_address_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \o_address_OBUF[15]_inst_i_7_n_0\
    );
\o_address_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(13),
      I1 => rC3_out_reg(13),
      O => \o_address_OBUF[15]_inst_i_8_n_0\
    );
\o_address_OBUF[15]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(12),
      I1 => rC3_out_reg(12),
      O => \o_address_OBUF[15]_inst_i_9_n_0\
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(1),
      I2 => o_address_tmp00_in(1),
      I3 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I4 => in5(1),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(2),
      I2 => o_address_tmp0(2),
      I3 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I4 => in5(2),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(3),
      I2 => o_address_tmp00_in(3),
      I3 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I4 => in5(3),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(3)
    );
\o_address_OBUF[3]_inst_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rC3_out_reg(1),
      O => \o_address_OBUF[3]_inst_i_10_n_0\
    );
\o_address_OBUF[3]_inst_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rC2_out_reg(1),
      O => \o_address_OBUF[3]_inst_i_11_n_0\
    );
\o_address_OBUF[3]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_address_OBUF[3]_inst_i_2_n_0\,
      CO(2) => \o_address_OBUF[3]_inst_i_2_n_1\,
      CO(1) => \o_address_OBUF[3]_inst_i_2_n_2\,
      CO(0) => \o_address_OBUF[3]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \o_address_OBUF[3]_inst_i_5_n_0\,
      DI(2) => rN_out_reg(1),
      DI(1 downto 0) => rC3_out_reg(1 downto 0),
      O(3 downto 0) => o_address_tmp0(3 downto 0),
      S(3) => \o_address_OBUF[3]_inst_i_6_n_0\,
      S(2) => \o_address_OBUF[3]_inst_i_7_n_0\,
      S(1) => \o_address_OBUF[3]_inst_i_8_n_0\,
      S(0) => \o_address_OBUF[3]_inst_i_9_n_0\
    );
\o_address_OBUF[3]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_address_OBUF[3]_inst_i_3_n_0\,
      CO(2) => \o_address_OBUF[3]_inst_i_3_n_1\,
      CO(1) => \o_address_OBUF[3]_inst_i_3_n_2\,
      CO(0) => \o_address_OBUF[3]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => rC3_out_reg(1),
      DI(0) => '0',
      O(3 downto 0) => o_address_tmp00_in(3 downto 0),
      S(3 downto 2) => rC3_out_reg(3 downto 2),
      S(1) => \o_address_OBUF[3]_inst_i_10_n_0\,
      S(0) => rC3_out_reg(0)
    );
\o_address_OBUF[3]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_address_OBUF[3]_inst_i_4_n_0\,
      CO(2) => \o_address_OBUF[3]_inst_i_4_n_1\,
      CO(1) => \o_address_OBUF[3]_inst_i_4_n_2\,
      CO(0) => \o_address_OBUF[3]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => rC2_out_reg(1),
      DI(0) => '0',
      O(3 downto 0) => in5(3 downto 0),
      S(3 downto 2) => rC2_out_reg(3 downto 2),
      S(1) => \o_address_OBUF[3]_inst_i_11_n_0\,
      S(0) => rC2_out_reg(0)
    );
\o_address_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(2),
      I1 => rC3_out_reg(2),
      O => \o_address_OBUF[3]_inst_i_5_n_0\
    );
\o_address_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(2),
      I1 => rN_out_reg(2),
      I2 => rC3_out_reg(3),
      I3 => rN_out_reg(3),
      O => \o_address_OBUF[3]_inst_i_6_n_0\
    );
\o_address_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rN_out_reg(1),
      I1 => rC3_out_reg(2),
      I2 => rN_out_reg(2),
      O => \o_address_OBUF[3]_inst_i_7_n_0\
    );
\o_address_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rN_out_reg(1),
      I1 => rC3_out_reg(1),
      O => \o_address_OBUF[3]_inst_i_8_n_0\
    );
\o_address_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rC3_out_reg(0),
      I1 => rN_out_reg(0),
      O => \o_address_OBUF[3]_inst_i_9_n_0\
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(4),
      I2 => o_address_tmp0(4),
      I3 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I4 => in5(4),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(5),
      I2 => o_address_tmp0(5),
      I3 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I4 => in5(5),
      I5 => \o_address_OBUF[15]_inst_i_7_n_0\,
      O => o_address_OBUF(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(6),
      I2 => in5(6),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp00_in(6),
      I5 => \o_address_OBUF[15]_inst_i_2_n_0\,
      O => o_address_OBUF(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(7),
      I2 => in5(7),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp0(7),
      I5 => \o_address_OBUF[15]_inst_i_5_n_0\,
      O => o_address_OBUF(7)
    );
\o_address_OBUF[7]_inst_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(5),
      I1 => rN_out_reg(5),
      I2 => rC3_out_reg(6),
      I3 => rN_out_reg(6),
      O => \o_address_OBUF[7]_inst_i_10_n_0\
    );
\o_address_OBUF[7]_inst_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(4),
      I1 => rN_out_reg(4),
      I2 => rC3_out_reg(5),
      I3 => rN_out_reg(5),
      O => \o_address_OBUF[7]_inst_i_11_n_0\
    );
\o_address_OBUF[7]_inst_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(3),
      I1 => rN_out_reg(3),
      I2 => rC3_out_reg(4),
      I3 => rN_out_reg(4),
      O => \o_address_OBUF[7]_inst_i_12_n_0\
    );
\o_address_OBUF[7]_inst_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[3]_inst_i_3_n_0\,
      CO(3) => \o_address_OBUF[7]_inst_i_2_n_0\,
      CO(2) => \o_address_OBUF[7]_inst_i_2_n_1\,
      CO(1) => \o_address_OBUF[7]_inst_i_2_n_2\,
      CO(0) => \o_address_OBUF[7]_inst_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => o_address_tmp00_in(7 downto 4),
      S(3 downto 0) => rC3_out_reg(7 downto 4)
    );
\o_address_OBUF[7]_inst_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[3]_inst_i_4_n_0\,
      CO(3) => \o_address_OBUF[7]_inst_i_3_n_0\,
      CO(2) => \o_address_OBUF[7]_inst_i_3_n_1\,
      CO(1) => \o_address_OBUF[7]_inst_i_3_n_2\,
      CO(0) => \o_address_OBUF[7]_inst_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in5(7 downto 4),
      S(3 downto 0) => rC2_out_reg(7 downto 4)
    );
\o_address_OBUF[7]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_address_OBUF[3]_inst_i_2_n_0\,
      CO(3) => \o_address_OBUF[7]_inst_i_4_n_0\,
      CO(2) => \o_address_OBUF[7]_inst_i_4_n_1\,
      CO(1) => \o_address_OBUF[7]_inst_i_4_n_2\,
      CO(0) => \o_address_OBUF[7]_inst_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \o_address_OBUF[7]_inst_i_5_n_0\,
      DI(2) => \o_address_OBUF[7]_inst_i_6_n_0\,
      DI(1) => \o_address_OBUF[7]_inst_i_7_n_0\,
      DI(0) => \o_address_OBUF[7]_inst_i_8_n_0\,
      O(3 downto 0) => o_address_tmp0(7 downto 4),
      S(3) => \o_address_OBUF[7]_inst_i_9_n_0\,
      S(2) => \o_address_OBUF[7]_inst_i_10_n_0\,
      S(1) => \o_address_OBUF[7]_inst_i_11_n_0\,
      S(0) => \o_address_OBUF[7]_inst_i_12_n_0\
    );
\o_address_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(6),
      I1 => rC3_out_reg(6),
      O => \o_address_OBUF[7]_inst_i_5_n_0\
    );
\o_address_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(5),
      I1 => rC3_out_reg(5),
      O => \o_address_OBUF[7]_inst_i_6_n_0\
    );
\o_address_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(4),
      I1 => rC3_out_reg(4),
      O => \o_address_OBUF[7]_inst_i_7_n_0\
    );
\o_address_OBUF[7]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rN_out_reg(3),
      I1 => rC3_out_reg(3),
      O => \o_address_OBUF[7]_inst_i_8_n_0\
    );
\o_address_OBUF[7]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => rC3_out_reg(6),
      I1 => rN_out_reg(6),
      I2 => rC3_out_reg(7),
      I3 => rN_out_reg(7),
      O => \o_address_OBUF[7]_inst_i_9_n_0\
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_5_n_0\,
      I1 => o_address_tmp0(8),
      I2 => in5(8),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp00_in(8),
      I5 => \o_address_OBUF[15]_inst_i_2_n_0\,
      O => o_address_OBUF(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \o_address_OBUF[15]_inst_i_2_n_0\,
      I1 => o_address_tmp00_in(9),
      I2 => in5(9),
      I3 => \o_address_OBUF[15]_inst_i_7_n_0\,
      I4 => o_address_tmp0(9),
      I5 => \o_address_OBUF[15]_inst_i_5_n_0\,
      O => o_address_OBUF(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => rSL_out(1),
      I4 => rSL_out(0),
      I5 => pixel_new0(0),
      O => o_data_OBUF(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFEAAAAAAAE"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => pixel_new0(1),
      I2 => rSL_out(0),
      I3 => rSL_out(1),
      I4 => \o_data_OBUF[1]_inst_i_2_n_0\,
      I5 => pixel_new0(0),
      O => o_data_OBUF(1)
    );
\o_data_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rSL_out(2),
      I1 => rSL_out(3),
      O => \o_data_OBUF[1]_inst_i_2_n_0\
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \o_data_OBUF[2]_inst_i_2_n_0\,
      O => o_data_OBUF(2)
    );
\o_data_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FCA000000CA"
    )
        port map (
      I0 => pixel_new0(2),
      I1 => pixel_new0(1),
      I2 => rSL_out(0),
      I3 => rSL_out(1),
      I4 => \o_data_OBUF[1]_inst_i_2_n_0\,
      I5 => pixel_new0(0),
      O => \o_data_OBUF[2]_inst_i_2_n_0\
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFEFEEEFEE"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \o_data_OBUF[3]_inst_i_2_n_0\,
      I2 => \o_data_OBUF[3]_inst_i_3_n_0\,
      I3 => pixel_new0(0),
      I4 => \o_data_OBUF[3]_inst_i_5_n_0\,
      I5 => pixel_new0(1),
      O => o_data_OBUF(3)
    );
\o_data_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000200000002"
    )
        port map (
      I0 => pixel_new0(3),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => rSL_out(1),
      I4 => rSL_out(0),
      I5 => pixel_new0(2),
      O => \o_data_OBUF[3]_inst_i_2_n_0\
    );
\o_data_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => rSL_out(3),
      I1 => rSL_out(2),
      I2 => rSL_out(1),
      I3 => rSL_out(0),
      O => \o_data_OBUF[3]_inst_i_3_n_0\
    );
\o_data_OBUF[3]_inst_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \o_data_OBUF[3]_inst_i_4_n_0\,
      CO(2) => \o_data_OBUF[3]_inst_i_4_n_1\,
      CO(1) => \o_data_OBUF[3]_inst_i_4_n_2\,
      CO(0) => \o_data_OBUF[3]_inst_i_4_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => i_data_IBUF(3 downto 0),
      O(3 downto 0) => pixel_new0(3 downto 0),
      S(3) => \o_data_OBUF[3]_inst_i_6_n_0\,
      S(2) => \o_data_OBUF[3]_inst_i_7_n_0\,
      S(1) => \o_data_OBUF[3]_inst_i_8_n_0\,
      S(0) => \o_data_OBUF[3]_inst_i_9_n_0\
    );
\o_data_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => rSL_out(3),
      I1 => rSL_out(2),
      I2 => rSL_out(0),
      I3 => rSL_out(1),
      O => \o_data_OBUF[3]_inst_i_5_n_0\
    );
\o_data_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => rMin_out(3),
      O => \o_data_OBUF[3]_inst_i_6_n_0\
    );
\o_data_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => rMin_out(2),
      O => \o_data_OBUF[3]_inst_i_7_n_0\
    );
\o_data_OBUF[3]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => rMin_out(1),
      O => \o_data_OBUF[3]_inst_i_8_n_0\
    );
\o_data_OBUF[3]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => rMin_out(0),
      O => \o_data_OBUF[3]_inst_i_9_n_0\
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAB"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => rSL_out(1),
      I2 => rSL_out(0),
      I3 => \o_data_OBUF[6]_inst_i_4_n_0\,
      I4 => \o_data_OBUF[4]_inst_i_2_n_0\,
      O => o_data_OBUF(4)
    );
\o_data_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AFC00000A0C0"
    )
        port map (
      I0 => pixel_new0(1),
      I1 => pixel_new0(3),
      I2 => rSL_out(0),
      I3 => rSL_out(1),
      I4 => \o_data_OBUF[1]_inst_i_2_n_0\,
      I5 => pixel_new0(2),
      O => \o_data_OBUF[4]_inst_i_2_n_0\
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAABBABB"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => rSL_out(1),
      I2 => rSL_out(0),
      I3 => \o_data_OBUF[6]_inst_i_3_n_0\,
      I4 => \o_data_OBUF[6]_inst_i_4_n_0\,
      I5 => \o_data_OBUF[5]_inst_i_2_n_0\,
      O => o_data_OBUF(5)
    );
\o_data_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0203000002000000"
    )
        port map (
      I0 => pixel_new0(2),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => rSL_out(0),
      I4 => rSL_out(1),
      I5 => pixel_new0(3),
      O => \o_data_OBUF[5]_inst_i_2_n_0\
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEFEFEEFFEEEE"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \o_data_OBUF[6]_inst_i_2_n_0\,
      I2 => \o_data_OBUF[6]_inst_i_3_n_0\,
      I3 => \o_data_OBUF[6]_inst_i_4_n_0\,
      I4 => rSL_out(1),
      I5 => rSL_out(0),
      O => o_data_OBUF(6)
    );
\o_data_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300005500000055"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_4_n_0\,
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => rSL_out(1),
      I4 => rSL_out(0),
      I5 => pixel_new0(3),
      O => \o_data_OBUF[6]_inst_i_2_n_0\
    );
\o_data_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDFD"
    )
        port map (
      I0 => pixel_new0(5),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => pixel_new0(1),
      O => \o_data_OBUF[6]_inst_i_3_n_0\
    );
\o_data_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDFD"
    )
        port map (
      I0 => pixel_new0(4),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => pixel_new0(0),
      O => \o_data_OBUF[6]_inst_i_4_n_0\
    );
\o_data_OBUF[6]_inst_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \o_data_OBUF[3]_inst_i_4_n_0\,
      CO(3) => \NLW_o_data_OBUF[6]_inst_i_5_CO_UNCONNECTED\(3),
      CO(2) => \o_data_OBUF[6]_inst_i_5_n_1\,
      CO(1) => \o_data_OBUF[6]_inst_i_5_n_2\,
      CO(0) => \o_data_OBUF[6]_inst_i_5_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => i_data_IBUF(6 downto 4),
      O(3 downto 0) => pixel_new0(7 downto 4),
      S(3) => \o_data_OBUF[6]_inst_i_6_n_0\,
      S(2) => \o_data_OBUF[6]_inst_i_7_n_0\,
      S(1) => \o_data_OBUF[6]_inst_i_8_n_0\,
      S(0) => \o_data_OBUF[6]_inst_i_9_n_0\
    );
\o_data_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => rMin_out(7),
      O => \o_data_OBUF[6]_inst_i_6_n_0\
    );
\o_data_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => rMin_out(6),
      O => \o_data_OBUF[6]_inst_i_7_n_0\
    );
\o_data_OBUF[6]_inst_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => rMin_out(5),
      O => \o_data_OBUF[6]_inst_i_8_n_0\
    );
\o_data_OBUF[6]_inst_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => rMin_out(4),
      O => \o_data_OBUF[6]_inst_i_9_n_0\
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
\o_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_2_n_0\,
      I1 => \o_data_OBUF[7]_inst_i_3_n_0\,
      O => o_data_OBUF(7)
    );
\o_data_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFCFCF5F5F0F0"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_4_n_0\,
      I1 => \o_data_OBUF[7]_inst_i_5_n_0\,
      I2 => \o_data_OBUF[7]_inst_i_6_n_0\,
      I3 => \o_data_OBUF[6]_inst_i_3_n_0\,
      I4 => rSL_out(1),
      I5 => rSL_out(0),
      O => \o_data_OBUF[7]_inst_i_2_n_0\
    );
\o_data_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"005533F0FF5533F0"
    )
        port map (
      I0 => \o_data_OBUF[7]_inst_i_4_n_0\,
      I1 => \o_data_OBUF[6]_inst_i_3_n_0\,
      I2 => \o_data_OBUF[7]_inst_i_5_n_0\,
      I3 => rSL_out(1),
      I4 => rSL_out(0),
      I5 => \o_data_OBUF[6]_inst_i_4_n_0\,
      O => \o_data_OBUF[7]_inst_i_3_n_0\
    );
\o_data_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDFD"
    )
        port map (
      I0 => pixel_new0(6),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => pixel_new0(2),
      O => \o_data_OBUF[7]_inst_i_4_n_0\
    );
\o_data_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3202"
    )
        port map (
      I0 => pixel_new0(7),
      I1 => rSL_out(3),
      I2 => rSL_out(2),
      I3 => pixel_new0(3),
      O => \o_data_OBUF[7]_inst_i_5_n_0\
    );
\o_data_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011100000001000"
    )
        port map (
      I0 => rSL_out(1),
      I1 => rSL_out(0),
      I2 => pixel_new0(0),
      I3 => rSL_out(3),
      I4 => rSL_out(2),
      I5 => pixel_new0(4),
      O => \o_data_OBUF[7]_inst_i_6_n_0\
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_done_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(1),
      O => o_done_OBUF
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_OBUF_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cur_state(1),
      O => o_en_OBUF
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
o_we_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(0),
      O => o_we_OBUF
    );
\r1_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(0),
      I3 => cur_state(1),
      O => r1_load
    );
\r1_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(0),
      Q => \r1_out_reg_n_0_[0]\
    );
\r1_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(1),
      Q => \r1_out_reg_n_0_[1]\
    );
\r1_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(2),
      Q => \r1_out_reg_n_0_[2]\
    );
\r1_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(3),
      Q => \r1_out_reg_n_0_[3]\
    );
\r1_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(4),
      Q => \r1_out_reg_n_0_[4]\
    );
\r1_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(5),
      Q => \r1_out_reg_n_0_[5]\
    );
\r1_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(6),
      Q => \r1_out_reg_n_0_[6]\
    );
\r1_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_load,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(7),
      Q => \r1_out_reg_n_0_[7]\
    );
\rC1_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => rC1_out_reg(0),
      I1 => cur_state(0),
      I2 => i_data_IBUF(0),
      O => rC1_in(0)
    );
\rC1_out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => rC1_out_reg(0),
      I1 => rC1_out_reg(1),
      I2 => cur_state(0),
      I3 => i_data_IBUF(1),
      O => rC1_in(1)
    );
\rC1_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => rC1_out_reg(0),
      I1 => rC1_out_reg(1),
      I2 => rC1_out_reg(2),
      I3 => \rC1_out[7]_i_4_n_0\,
      I4 => i_data_IBUF(2),
      O => rC1_in(2)
    );
\rC1_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FFFFFE010000"
    )
        port map (
      I0 => rC1_out_reg(2),
      I1 => rC1_out_reg(1),
      I2 => rC1_out_reg(0),
      I3 => rC1_out_reg(3),
      I4 => \rC1_out[7]_i_4_n_0\,
      I5 => i_data_IBUF(3),
      O => rC1_in(3)
    );
\rC1_out[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => rC1_out_reg(4),
      I1 => \rC1_out[4]_i_2_n_0\,
      I2 => cur_state(0),
      I3 => i_data_IBUF(4),
      O => rC1_in(4)
    );
\rC1_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rC1_out_reg(3),
      I1 => rC1_out_reg(0),
      I2 => rC1_out_reg(1),
      I3 => rC1_out_reg(2),
      O => \rC1_out[4]_i_2_n_0\
    );
\rC1_out[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => rC1_out_reg(5),
      I1 => \rC1_out[7]_i_3_n_0\,
      I2 => cur_state(0),
      I3 => i_data_IBUF(5),
      O => rC1_in(5)
    );
\rC1_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => rC1_out_reg(6),
      I1 => rC1_out_reg(5),
      I2 => \rC1_out[7]_i_3_n_0\,
      I3 => \rC1_out[7]_i_4_n_0\,
      I4 => i_data_IBUF(6),
      O => rC1_in(6)
    );
\rC1_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(3),
      I2 => cur_state(1),
      O => \rC1_out[7]_i_1_n_0\
    );
\rC1_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9AFFFFAA9A0000"
    )
        port map (
      I0 => rC1_out_reg(7),
      I1 => rC1_out_reg(6),
      I2 => \rC1_out[7]_i_3_n_0\,
      I3 => rC1_out_reg(5),
      I4 => \rC1_out[7]_i_4_n_0\,
      I5 => i_data_IBUF(7),
      O => rC1_in(7)
    );
\rC1_out[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => rC1_out_reg(2),
      I1 => rC1_out_reg(1),
      I2 => rC1_out_reg(0),
      I3 => rC1_out_reg(3),
      I4 => rC1_out_reg(4),
      O => \rC1_out[7]_i_3_n_0\
    );
\rC1_out[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(2),
      O => \rC1_out[7]_i_4_n_0\
    );
\rC1_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(0),
      Q => rC1_out_reg(0)
    );
\rC1_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(1),
      Q => rC1_out_reg(1)
    );
\rC1_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(2),
      Q => rC1_out_reg(2)
    );
\rC1_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(3),
      Q => rC1_out_reg(3)
    );
\rC1_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(4),
      Q => rC1_out_reg(4)
    );
\rC1_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(5),
      Q => rC1_out_reg(5)
    );
\rC1_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(6),
      Q => rC1_out_reg(6)
    );
\rC1_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC1_out[7]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => rC1_in(7),
      Q => rC1_out_reg(7)
    );
\rC2_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2C"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[0]_i_1_n_0\
    );
\rC2_out[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(1),
      O => rC2_sel
    );
\rC2_out[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(3),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[0]_i_4_n_0\
    );
\rC2_out[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(2),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[0]_i_5_n_0\
    );
\rC2_out[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(1),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[0]_i_6_n_0\
    );
\rC2_out[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rC2_out_reg(0),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[0]_i_7_n_0\
    );
\rC2_out[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(15),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[12]_i_2_n_0\
    );
\rC2_out[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(14),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[12]_i_3_n_0\
    );
\rC2_out[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(13),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[12]_i_4_n_0\
    );
\rC2_out[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(12),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[12]_i_5_n_0\
    );
\rC2_out[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(7),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[4]_i_2_n_0\
    );
\rC2_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(6),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[4]_i_3_n_0\
    );
\rC2_out[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(5),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[4]_i_4_n_0\
    );
\rC2_out[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(4),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[4]_i_5_n_0\
    );
\rC2_out[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(11),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[8]_i_2_n_0\
    );
\rC2_out[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(10),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[8]_i_3_n_0\
    );
\rC2_out[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(9),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[8]_i_4_n_0\
    );
\rC2_out[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rC2_out_reg(8),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => \rC2_out[8]_i_5_n_0\
    );
\rC2_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[0]_i_2_n_7\,
      Q => rC2_out_reg(0)
    );
\rC2_out_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rC2_out_reg[0]_i_2_n_0\,
      CO(2) => \rC2_out_reg[0]_i_2_n_1\,
      CO(1) => \rC2_out_reg[0]_i_2_n_2\,
      CO(0) => \rC2_out_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => rC2_sel,
      O(3) => \rC2_out_reg[0]_i_2_n_4\,
      O(2) => \rC2_out_reg[0]_i_2_n_5\,
      O(1) => \rC2_out_reg[0]_i_2_n_6\,
      O(0) => \rC2_out_reg[0]_i_2_n_7\,
      S(3) => \rC2_out[0]_i_4_n_0\,
      S(2) => \rC2_out[0]_i_5_n_0\,
      S(1) => \rC2_out[0]_i_6_n_0\,
      S(0) => \rC2_out[0]_i_7_n_0\
    );
\rC2_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[8]_i_1_n_5\,
      Q => rC2_out_reg(10)
    );
\rC2_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[8]_i_1_n_4\,
      Q => rC2_out_reg(11)
    );
\rC2_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[12]_i_1_n_7\,
      Q => rC2_out_reg(12)
    );
\rC2_out_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC2_out_reg[8]_i_1_n_0\,
      CO(3) => \NLW_rC2_out_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rC2_out_reg[12]_i_1_n_1\,
      CO(1) => \rC2_out_reg[12]_i_1_n_2\,
      CO(0) => \rC2_out_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rC2_out_reg[12]_i_1_n_4\,
      O(2) => \rC2_out_reg[12]_i_1_n_5\,
      O(1) => \rC2_out_reg[12]_i_1_n_6\,
      O(0) => \rC2_out_reg[12]_i_1_n_7\,
      S(3) => \rC2_out[12]_i_2_n_0\,
      S(2) => \rC2_out[12]_i_3_n_0\,
      S(1) => \rC2_out[12]_i_4_n_0\,
      S(0) => \rC2_out[12]_i_5_n_0\
    );
\rC2_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[12]_i_1_n_6\,
      Q => rC2_out_reg(13)
    );
\rC2_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[12]_i_1_n_5\,
      Q => rC2_out_reg(14)
    );
\rC2_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[12]_i_1_n_4\,
      Q => rC2_out_reg(15)
    );
\rC2_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[0]_i_2_n_6\,
      Q => rC2_out_reg(1)
    );
\rC2_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[0]_i_2_n_5\,
      Q => rC2_out_reg(2)
    );
\rC2_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[0]_i_2_n_4\,
      Q => rC2_out_reg(3)
    );
\rC2_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[4]_i_1_n_7\,
      Q => rC2_out_reg(4)
    );
\rC2_out_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC2_out_reg[0]_i_2_n_0\,
      CO(3) => \rC2_out_reg[4]_i_1_n_0\,
      CO(2) => \rC2_out_reg[4]_i_1_n_1\,
      CO(1) => \rC2_out_reg[4]_i_1_n_2\,
      CO(0) => \rC2_out_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rC2_out_reg[4]_i_1_n_4\,
      O(2) => \rC2_out_reg[4]_i_1_n_5\,
      O(1) => \rC2_out_reg[4]_i_1_n_6\,
      O(0) => \rC2_out_reg[4]_i_1_n_7\,
      S(3) => \rC2_out[4]_i_2_n_0\,
      S(2) => \rC2_out[4]_i_3_n_0\,
      S(1) => \rC2_out[4]_i_4_n_0\,
      S(0) => \rC2_out[4]_i_5_n_0\
    );
\rC2_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[4]_i_1_n_6\,
      Q => rC2_out_reg(5)
    );
\rC2_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[4]_i_1_n_5\,
      Q => rC2_out_reg(6)
    );
\rC2_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[4]_i_1_n_4\,
      Q => rC2_out_reg(7)
    );
\rC2_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[8]_i_1_n_7\,
      Q => rC2_out_reg(8)
    );
\rC2_out_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC2_out_reg[4]_i_1_n_0\,
      CO(3) => \rC2_out_reg[8]_i_1_n_0\,
      CO(2) => \rC2_out_reg[8]_i_1_n_1\,
      CO(1) => \rC2_out_reg[8]_i_1_n_2\,
      CO(0) => \rC2_out_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rC2_out_reg[8]_i_1_n_4\,
      O(2) => \rC2_out_reg[8]_i_1_n_5\,
      O(1) => \rC2_out_reg[8]_i_1_n_6\,
      O(0) => \rC2_out_reg[8]_i_1_n_7\,
      S(3) => \rC2_out[8]_i_2_n_0\,
      S(2) => \rC2_out[8]_i_3_n_0\,
      S(1) => \rC2_out[8]_i_4_n_0\,
      S(0) => \rC2_out[8]_i_5_n_0\
    );
\rC2_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC2_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC2_out_reg[8]_i_1_n_6\,
      Q => rC2_out_reg(9)
    );
\rC3_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(3),
      O => \rC3_out[0]_i_1_n_0\
    );
\rC3_out[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(3),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(3),
      O => \rC3_out[0]_i_3_n_0\
    );
\rC3_out[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(2),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(2),
      O => \rC3_out[0]_i_4_n_0\
    );
\rC3_out[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04F7"
    )
        port map (
      I0 => rC3_out_reg(1),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rN_out_reg(1),
      O => \rC3_out[0]_i_5_n_0\
    );
\rC3_out[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(0),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(0),
      O => \rC3_out[0]_i_6_n_0\
    );
\rC3_out[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(15),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(15),
      O => \rC3_out[12]_i_2_n_0\
    );
\rC3_out[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(14),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(14),
      O => \rC3_out[12]_i_3_n_0\
    );
\rC3_out[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(13),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(13),
      O => \rC3_out[12]_i_4_n_0\
    );
\rC3_out[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(12),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(12),
      O => \rC3_out[12]_i_5_n_0\
    );
\rC3_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(7),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(7),
      O => \rC3_out[4]_i_2_n_0\
    );
\rC3_out[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(6),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(6),
      O => \rC3_out[4]_i_3_n_0\
    );
\rC3_out[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(5),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(5),
      O => \rC3_out[4]_i_4_n_0\
    );
\rC3_out[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(4),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(4),
      O => \rC3_out[4]_i_5_n_0\
    );
\rC3_out[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(11),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(11),
      O => \rC3_out[8]_i_2_n_0\
    );
\rC3_out[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(10),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(10),
      O => \rC3_out[8]_i_3_n_0\
    );
\rC3_out[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(9),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(9),
      O => \rC3_out[8]_i_4_n_0\
    );
\rC3_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515D"
    )
        port map (
      I0 => rN_out_reg(8),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => rC3_out_reg(8),
      O => \rC3_out[8]_i_5_n_0\
    );
\rC3_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[0]_i_2_n_7\,
      Q => rC3_out_reg(0)
    );
\rC3_out_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rC3_out_reg[0]_i_2_n_0\,
      CO(2) => \rC3_out_reg[0]_i_2_n_1\,
      CO(1) => \rC3_out_reg[0]_i_2_n_2\,
      CO(0) => \rC3_out_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \rC3_out_reg[0]_i_2_n_4\,
      O(2) => \rC3_out_reg[0]_i_2_n_5\,
      O(1) => \rC3_out_reg[0]_i_2_n_6\,
      O(0) => \rC3_out_reg[0]_i_2_n_7\,
      S(3) => \rC3_out[0]_i_3_n_0\,
      S(2) => \rC3_out[0]_i_4_n_0\,
      S(1) => \rC3_out[0]_i_5_n_0\,
      S(0) => \rC3_out[0]_i_6_n_0\
    );
\rC3_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[8]_i_1_n_5\,
      Q => rC3_out_reg(10)
    );
\rC3_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[8]_i_1_n_4\,
      Q => rC3_out_reg(11)
    );
\rC3_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[12]_i_1_n_7\,
      Q => rC3_out_reg(12)
    );
\rC3_out_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC3_out_reg[8]_i_1_n_0\,
      CO(3) => \NLW_rC3_out_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rC3_out_reg[12]_i_1_n_1\,
      CO(1) => \rC3_out_reg[12]_i_1_n_2\,
      CO(0) => \rC3_out_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \rC3_out_reg[12]_i_1_n_4\,
      O(2) => \rC3_out_reg[12]_i_1_n_5\,
      O(1) => \rC3_out_reg[12]_i_1_n_6\,
      O(0) => \rC3_out_reg[12]_i_1_n_7\,
      S(3) => \rC3_out[12]_i_2_n_0\,
      S(2) => \rC3_out[12]_i_3_n_0\,
      S(1) => \rC3_out[12]_i_4_n_0\,
      S(0) => \rC3_out[12]_i_5_n_0\
    );
\rC3_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[12]_i_1_n_6\,
      Q => rC3_out_reg(13)
    );
\rC3_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[12]_i_1_n_5\,
      Q => rC3_out_reg(14)
    );
\rC3_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[12]_i_1_n_4\,
      Q => rC3_out_reg(15)
    );
\rC3_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[0]_i_2_n_6\,
      Q => rC3_out_reg(1)
    );
\rC3_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[0]_i_2_n_5\,
      Q => rC3_out_reg(2)
    );
\rC3_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[0]_i_2_n_4\,
      Q => rC3_out_reg(3)
    );
\rC3_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[4]_i_1_n_7\,
      Q => rC3_out_reg(4)
    );
\rC3_out_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC3_out_reg[0]_i_2_n_0\,
      CO(3) => \rC3_out_reg[4]_i_1_n_0\,
      CO(2) => \rC3_out_reg[4]_i_1_n_1\,
      CO(1) => \rC3_out_reg[4]_i_1_n_2\,
      CO(0) => \rC3_out_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \rC3_out_reg[4]_i_1_n_4\,
      O(2) => \rC3_out_reg[4]_i_1_n_5\,
      O(1) => \rC3_out_reg[4]_i_1_n_6\,
      O(0) => \rC3_out_reg[4]_i_1_n_7\,
      S(3) => \rC3_out[4]_i_2_n_0\,
      S(2) => \rC3_out[4]_i_3_n_0\,
      S(1) => \rC3_out[4]_i_4_n_0\,
      S(0) => \rC3_out[4]_i_5_n_0\
    );
\rC3_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[4]_i_1_n_6\,
      Q => rC3_out_reg(5)
    );
\rC3_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[4]_i_1_n_5\,
      Q => rC3_out_reg(6)
    );
\rC3_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[4]_i_1_n_4\,
      Q => rC3_out_reg(7)
    );
\rC3_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[8]_i_1_n_7\,
      Q => rC3_out_reg(8)
    );
\rC3_out_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rC3_out_reg[4]_i_1_n_0\,
      CO(3) => \rC3_out_reg[8]_i_1_n_0\,
      CO(2) => \rC3_out_reg[8]_i_1_n_1\,
      CO(1) => \rC3_out_reg[8]_i_1_n_2\,
      CO(0) => \rC3_out_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \rC3_out_reg[8]_i_1_n_4\,
      O(2) => \rC3_out_reg[8]_i_1_n_5\,
      O(1) => \rC3_out_reg[8]_i_1_n_6\,
      O(0) => \rC3_out_reg[8]_i_1_n_7\,
      S(3) => \rC3_out[8]_i_2_n_0\,
      S(2) => \rC3_out[8]_i_3_n_0\,
      S(1) => \rC3_out[8]_i_4_n_0\,
      S(0) => \rC3_out[8]_i_5_n_0\
    );
\rC3_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rC3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rC3_out_reg[8]_i_1_n_6\,
      Q => rC3_out_reg(9)
    );
\rMax_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => cur_state(0),
      O => rMax_in(0)
    );
\rMax_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => cur_state(0),
      O => rMax_in(1)
    );
\rMax_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => cur_state(0),
      O => rMax_in(2)
    );
\rMax_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => cur_state(0),
      O => rMax_in(3)
    );
\rMax_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => cur_state(0),
      O => rMax_in(4)
    );
\rMax_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => cur_state(0),
      O => rMax_in(5)
    );
\rMax_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => cur_state(0),
      O => rMax_in(6)
    );
\rMax_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => cur_state(0),
      I1 => rMax_mux,
      I2 => cur_state(2),
      I3 => cur_state(1),
      O => rMax_load
    );
\rMax_out[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rMax_out(2),
      I1 => i_data_IBUF(2),
      I2 => rMax_out(3),
      I3 => i_data_IBUF(3),
      O => \rMax_out[7]_i_10_n_0\
    );
\rMax_out[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rMax_out(0),
      I1 => i_data_IBUF(0),
      I2 => rMax_out(1),
      I3 => i_data_IBUF(1),
      O => \rMax_out[7]_i_11_n_0\
    );
\rMax_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => cur_state(0),
      O => rMax_in(7)
    );
\rMax_out[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => rMax_out(6),
      I2 => rMax_out(7),
      I3 => i_data_IBUF(7),
      O => \rMax_out[7]_i_4_n_0\
    );
\rMax_out[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => rMax_out(4),
      I2 => rMax_out(5),
      I3 => i_data_IBUF(5),
      O => \rMax_out[7]_i_5_n_0\
    );
\rMax_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => rMax_out(2),
      I2 => rMax_out(3),
      I3 => i_data_IBUF(3),
      O => \rMax_out[7]_i_6_n_0\
    );
\rMax_out[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => rMax_out(0),
      I2 => rMax_out(1),
      I3 => i_data_IBUF(1),
      O => \rMax_out[7]_i_7_n_0\
    );
\rMax_out[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rMax_out(6),
      I1 => i_data_IBUF(6),
      I2 => rMax_out(7),
      I3 => i_data_IBUF(7),
      O => \rMax_out[7]_i_8_n_0\
    );
\rMax_out[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rMax_out(4),
      I1 => i_data_IBUF(4),
      I2 => rMax_out(5),
      I3 => i_data_IBUF(5),
      O => \rMax_out[7]_i_9_n_0\
    );
\rMax_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(0),
      Q => rMax_out(0)
    );
\rMax_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(1),
      Q => rMax_out(1)
    );
\rMax_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(2),
      Q => rMax_out(2)
    );
\rMax_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(3),
      Q => rMax_out(3)
    );
\rMax_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(4),
      Q => rMax_out(4)
    );
\rMax_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(5),
      Q => rMax_out(5)
    );
\rMax_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(6),
      Q => rMax_out(6)
    );
\rMax_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMax_load,
      CLR => i_rst_IBUF,
      D => rMax_in(7),
      Q => rMax_out(7)
    );
\rMax_out_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rMax_mux,
      CO(2) => \rMax_out_reg[7]_i_3_n_1\,
      CO(1) => \rMax_out_reg[7]_i_3_n_2\,
      CO(0) => \rMax_out_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \rMax_out[7]_i_4_n_0\,
      DI(2) => \rMax_out[7]_i_5_n_0\,
      DI(1) => \rMax_out[7]_i_6_n_0\,
      DI(0) => \rMax_out[7]_i_7_n_0\,
      O(3 downto 0) => \NLW_rMax_out_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \rMax_out[7]_i_8_n_0\,
      S(2) => \rMax_out[7]_i_9_n_0\,
      S(1) => \rMax_out[7]_i_10_n_0\,
      S(0) => \rMax_out[7]_i_11_n_0\
    );
\rMin_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => cur_state(0),
      O => rMin_in(0)
    );
\rMin_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => cur_state(0),
      O => rMin_in(1)
    );
\rMin_out[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => cur_state(0),
      O => rMin_in(2)
    );
\rMin_out[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => cur_state(0),
      O => rMin_in(3)
    );
\rMin_out[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => cur_state(0),
      O => rMin_in(4)
    );
\rMin_out[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => cur_state(0),
      O => rMin_in(5)
    );
\rMin_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => cur_state(0),
      O => rMin_in(6)
    );
\rMin_out[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => cur_state(0),
      I1 => rMin_mux,
      I2 => cur_state(2),
      I3 => cur_state(1),
      O => rMin_load
    );
\rMin_out[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => rMin_out(2),
      I2 => i_data_IBUF(3),
      I3 => rMin_out(3),
      O => \rMin_out[7]_i_10_n_0\
    );
\rMin_out[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => rMin_out(0),
      I2 => i_data_IBUF(1),
      I3 => rMin_out(1),
      O => \rMin_out[7]_i_11_n_0\
    );
\rMin_out[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => cur_state(0),
      O => rMin_in(7)
    );
\rMin_out[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40F4"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => rMin_out(6),
      I2 => rMin_out(7),
      I3 => i_data_IBUF(7),
      O => \rMin_out[7]_i_4_n_0\
    );
\rMin_out[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rMin_out(4),
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(5),
      I3 => rMin_out(5),
      O => \rMin_out[7]_i_5_n_0\
    );
\rMin_out[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rMin_out(2),
      I1 => i_data_IBUF(2),
      I2 => i_data_IBUF(3),
      I3 => rMin_out(3),
      O => \rMin_out[7]_i_6_n_0\
    );
\rMin_out[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => rMin_out(0),
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(1),
      I3 => rMin_out(1),
      O => \rMin_out[7]_i_7_n_0\
    );
\rMin_out[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rMin_out(7),
      I1 => i_data_IBUF(7),
      I2 => i_data_IBUF(6),
      I3 => rMin_out(6),
      O => \rMin_out[7]_i_8_n_0\
    );
\rMin_out[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => rMin_out(4),
      I2 => i_data_IBUF(5),
      I3 => rMin_out(5),
      O => \rMin_out[7]_i_9_n_0\
    );
\rMin_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(0),
      Q => rMin_out(0)
    );
\rMin_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(1),
      Q => rMin_out(1)
    );
\rMin_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(2),
      Q => rMin_out(2)
    );
\rMin_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(3),
      Q => rMin_out(3)
    );
\rMin_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(4),
      Q => rMin_out(4)
    );
\rMin_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(5),
      Q => rMin_out(5)
    );
\rMin_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(6),
      Q => rMin_out(6)
    );
\rMin_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => rMin_load,
      CLR => i_rst_IBUF,
      D => rMin_in(7),
      Q => rMin_out(7)
    );
\rMin_out_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rMin_mux,
      CO(2) => \rMin_out_reg[7]_i_3_n_1\,
      CO(1) => \rMin_out_reg[7]_i_3_n_2\,
      CO(0) => \rMin_out_reg[7]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \rMin_out[7]_i_4_n_0\,
      DI(2) => \rMin_out[7]_i_5_n_0\,
      DI(1) => \rMin_out[7]_i_6_n_0\,
      DI(0) => \rMin_out[7]_i_7_n_0\,
      O(3 downto 0) => \NLW_rMin_out_reg[7]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \rMin_out[7]_i_8_n_0\,
      S(2) => \rMin_out[7]_i_9_n_0\,
      S(1) => \rMin_out[7]_i_10_n_0\,
      S(0) => \rMin_out[7]_i_11_n_0\
    );
\rN_out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => \FSM_sequential_cur_state[3]_i_3_n_0\,
      O => \rN_out[0]_i_1_n_0\
    );
\rN_out[0]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => \r1_out_reg_n_0_[0]\,
      I1 => rN_out_reg(0),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(1),
      O => \rN_out[0]_i_10_n_0\
    );
\rN_out[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[3]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[0]_i_3_n_0\
    );
\rN_out[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[2]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[0]_i_4_n_0\
    );
\rN_out[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[1]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[0]_i_5_n_0\
    );
\rN_out[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[0]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[0]_i_6_n_0\
    );
\rN_out[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => \r1_out_reg_n_0_[3]\,
      I1 => rN_out_reg(3),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(1),
      O => \rN_out[0]_i_7_n_0\
    );
\rN_out[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000200"
    )
        port map (
      I0 => \r1_out_reg_n_0_[2]\,
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(1),
      I4 => rN_out_reg(2),
      O => \rN_out[0]_i_8_n_0\
    );
\rN_out[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => \r1_out_reg_n_0_[1]\,
      I1 => rN_out_reg(1),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(1),
      O => \rN_out[0]_i_9_n_0\
    );
\rN_out[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => rN_out_reg(15),
      O => \rN_out[12]_i_2_n_0\
    );
\rN_out[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rN_out_reg(14),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[12]_i_3_n_0\
    );
\rN_out[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => rN_out_reg(13),
      O => \rN_out[12]_i_4_n_0\
    );
\rN_out[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rN_out_reg(12),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[12]_i_5_n_0\
    );
\rN_out[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[7]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[4]_i_2_n_0\
    );
\rN_out[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[6]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[4]_i_3_n_0\
    );
\rN_out[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[5]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[4]_i_4_n_0\
    );
\rN_out[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \r1_out_reg_n_0_[4]\,
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[4]_i_5_n_0\
    );
\rN_out[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00060000"
    )
        port map (
      I0 => \r1_out_reg_n_0_[7]\,
      I1 => rN_out_reg(7),
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(1),
      O => \rN_out[4]_i_6_n_0\
    );
\rN_out[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000200"
    )
        port map (
      I0 => \r1_out_reg_n_0_[6]\,
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(1),
      I4 => rN_out_reg(6),
      O => \rN_out[4]_i_7_n_0\
    );
\rN_out[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000200"
    )
        port map (
      I0 => \r1_out_reg_n_0_[5]\,
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(1),
      I4 => rN_out_reg(5),
      O => \rN_out[4]_i_8_n_0\
    );
\rN_out[4]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000200"
    )
        port map (
      I0 => \r1_out_reg_n_0_[4]\,
      I1 => cur_state(2),
      I2 => cur_state(3),
      I3 => cur_state(1),
      I4 => rN_out_reg(4),
      O => \rN_out[4]_i_9_n_0\
    );
\rN_out[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rN_out_reg(11),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[8]_i_2_n_0\
    );
\rN_out[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rN_out_reg(10),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[8]_i_3_n_0\
    );
\rN_out[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => rN_out_reg(9),
      O => \rN_out[8]_i_4_n_0\
    );
\rN_out[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => rN_out_reg(8),
      I1 => cur_state(1),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => \rN_out[8]_i_5_n_0\
    );
\rN_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[0]_i_2_n_7\,
      Q => rN_out_reg(0)
    );
\rN_out_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rN_out_reg[0]_i_2_n_0\,
      CO(2) => \rN_out_reg[0]_i_2_n_1\,
      CO(1) => \rN_out_reg[0]_i_2_n_2\,
      CO(0) => \rN_out_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \rN_out[0]_i_3_n_0\,
      DI(2) => \rN_out[0]_i_4_n_0\,
      DI(1) => \rN_out[0]_i_5_n_0\,
      DI(0) => \rN_out[0]_i_6_n_0\,
      O(3) => \rN_out_reg[0]_i_2_n_4\,
      O(2) => \rN_out_reg[0]_i_2_n_5\,
      O(1) => \rN_out_reg[0]_i_2_n_6\,
      O(0) => \rN_out_reg[0]_i_2_n_7\,
      S(3) => \rN_out[0]_i_7_n_0\,
      S(2) => \rN_out[0]_i_8_n_0\,
      S(1) => \rN_out[0]_i_9_n_0\,
      S(0) => \rN_out[0]_i_10_n_0\
    );
\rN_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[8]_i_1_n_5\,
      Q => rN_out_reg(10)
    );
\rN_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[8]_i_1_n_4\,
      Q => rN_out_reg(11)
    );
\rN_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[12]_i_1_n_7\,
      Q => rN_out_reg(12)
    );
\rN_out_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rN_out_reg[8]_i_1_n_0\,
      CO(3) => \NLW_rN_out_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \rN_out_reg[12]_i_1_n_1\,
      CO(1) => \rN_out_reg[12]_i_1_n_2\,
      CO(0) => \rN_out_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rN_out_reg[12]_i_1_n_4\,
      O(2) => \rN_out_reg[12]_i_1_n_5\,
      O(1) => \rN_out_reg[12]_i_1_n_6\,
      O(0) => \rN_out_reg[12]_i_1_n_7\,
      S(3) => \rN_out[12]_i_2_n_0\,
      S(2) => \rN_out[12]_i_3_n_0\,
      S(1) => \rN_out[12]_i_4_n_0\,
      S(0) => \rN_out[12]_i_5_n_0\
    );
\rN_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[12]_i_1_n_6\,
      Q => rN_out_reg(13)
    );
\rN_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[12]_i_1_n_5\,
      Q => rN_out_reg(14)
    );
\rN_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[12]_i_1_n_4\,
      Q => rN_out_reg(15)
    );
\rN_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[0]_i_2_n_6\,
      Q => rN_out_reg(1)
    );
\rN_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[0]_i_2_n_5\,
      Q => rN_out_reg(2)
    );
\rN_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[0]_i_2_n_4\,
      Q => rN_out_reg(3)
    );
\rN_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[4]_i_1_n_7\,
      Q => rN_out_reg(4)
    );
\rN_out_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rN_out_reg[0]_i_2_n_0\,
      CO(3) => \rN_out_reg[4]_i_1_n_0\,
      CO(2) => \rN_out_reg[4]_i_1_n_1\,
      CO(1) => \rN_out_reg[4]_i_1_n_2\,
      CO(0) => \rN_out_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \rN_out[4]_i_2_n_0\,
      DI(2) => \rN_out[4]_i_3_n_0\,
      DI(1) => \rN_out[4]_i_4_n_0\,
      DI(0) => \rN_out[4]_i_5_n_0\,
      O(3) => \rN_out_reg[4]_i_1_n_4\,
      O(2) => \rN_out_reg[4]_i_1_n_5\,
      O(1) => \rN_out_reg[4]_i_1_n_6\,
      O(0) => \rN_out_reg[4]_i_1_n_7\,
      S(3) => \rN_out[4]_i_6_n_0\,
      S(2) => \rN_out[4]_i_7_n_0\,
      S(1) => \rN_out[4]_i_8_n_0\,
      S(0) => \rN_out[4]_i_9_n_0\
    );
\rN_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[4]_i_1_n_6\,
      Q => rN_out_reg(5)
    );
\rN_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[4]_i_1_n_5\,
      Q => rN_out_reg(6)
    );
\rN_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[4]_i_1_n_4\,
      Q => rN_out_reg(7)
    );
\rN_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[8]_i_1_n_7\,
      Q => rN_out_reg(8)
    );
\rN_out_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rN_out_reg[4]_i_1_n_0\,
      CO(3) => \rN_out_reg[8]_i_1_n_0\,
      CO(2) => \rN_out_reg[8]_i_1_n_1\,
      CO(1) => \rN_out_reg[8]_i_1_n_2\,
      CO(0) => \rN_out_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rN_out_reg[8]_i_1_n_4\,
      O(2) => \rN_out_reg[8]_i_1_n_5\,
      O(1) => \rN_out_reg[8]_i_1_n_6\,
      O(0) => \rN_out_reg[8]_i_1_n_7\,
      S(3) => \rN_out[8]_i_2_n_0\,
      S(2) => \rN_out[8]_i_3_n_0\,
      S(1) => \rN_out[8]_i_4_n_0\,
      S(0) => \rN_out[8]_i_5_n_0\
    );
\rN_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rN_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rN_out_reg[8]_i_1_n_6\,
      Q => rN_out_reg(9)
    );
\rSL_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33FF32FF00FF00"
    )
        port map (
      I0 => \rSL_out[3]_i_5_n_0\,
      I1 => muxSL_in(6),
      I2 => muxSL_in(5),
      I3 => muxSL_in(7),
      I4 => muxSL_in(0),
      I5 => \rSL_out[0]_i_2_n_0\,
      O => \rSL_out[0]_i_1_n_0\
    );
\rSL_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBABAABBBBABAB"
    )
        port map (
      I0 => muxSL_in(5),
      I1 => muxSL_in(4),
      I2 => muxSL_in(2),
      I3 => muxSL_in(1),
      I4 => muxSL_in(3),
      I5 => \rSL_out[0]_i_3_n_0\,
      O => \rSL_out[0]_i_2_n_0\
    );
\rSL_out[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => muxSL_in(7),
      I1 => muxSL_in(5),
      I2 => muxSL_in(6),
      O => \rSL_out[0]_i_3_n_0\
    );
\rSL_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4445444544454444"
    )
        port map (
      I0 => muxSL_in(7),
      I1 => \rSL_out[1]_i_2_n_0\,
      I2 => muxSL_in(3),
      I3 => muxSL_in(4),
      I4 => muxSL_in(1),
      I5 => muxSL_in(2),
      O => \rSL_out[1]_i_1_n_0\
    );
\rSL_out[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => muxSL_in(6),
      I1 => muxSL_in(5),
      O => \rSL_out[1]_i_2_n_0\
    );
\rSL_out[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => muxSL_in(6),
      I1 => muxSL_in(5),
      I2 => muxSL_in(7),
      I3 => \rSL_out[3]_i_5_n_0\,
      O => \rSL_out[2]_i_1_n_0\
    );
\rSL_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(2),
      O => \rSL_out[3]_i_1_n_0\
    );
\rSL_out[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rMin_out(1),
      I1 => rMax_out(1),
      O => \rSL_out[3]_i_10_n_0\
    );
\rSL_out[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rMax_out(0),
      I1 => rMin_out(0),
      O => \rSL_out[3]_i_11_n_0\
    );
\rSL_out[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rMax_out(5),
      I1 => rMin_out(5),
      O => \rSL_out[3]_i_12_n_0\
    );
\rSL_out[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rMax_out(4),
      I1 => rMin_out(4),
      O => \rSL_out[3]_i_13_n_0\
    );
\rSL_out[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rMax_out(3),
      I1 => rMin_out(3),
      O => \rSL_out[3]_i_14_n_0\
    );
\rSL_out[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => rMax_out(6),
      I1 => rMin_out(6),
      I2 => rMax_out(7),
      I3 => rMin_out(7),
      O => \rSL_out[3]_i_15_n_0\
    );
\rSL_out[3]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rMin_out(5),
      I1 => rMax_out(5),
      I2 => rMax_out(6),
      I3 => rMin_out(6),
      O => \rSL_out[3]_i_16_n_0\
    );
\rSL_out[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rMin_out(4),
      I1 => rMax_out(4),
      I2 => rMax_out(5),
      I3 => rMin_out(5),
      O => \rSL_out[3]_i_17_n_0\
    );
\rSL_out[3]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rMin_out(3),
      I1 => rMax_out(3),
      I2 => rMax_out(4),
      I3 => rMin_out(4),
      O => \rSL_out[3]_i_18_n_0\
    );
\rSL_out[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => muxSL_in(0),
      I1 => muxSL_in(7),
      I2 => muxSL_in(5),
      I3 => muxSL_in(6),
      I4 => \rSL_out[3]_i_5_n_0\,
      O => \rSL_out[3]_i_2_n_0\
    );
\rSL_out[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => muxSL_in(3),
      I1 => muxSL_in(4),
      I2 => muxSL_in(1),
      I3 => muxSL_in(2),
      O => \rSL_out[3]_i_5_n_0\
    );
\rSL_out[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rMax_out(2),
      I1 => rMin_out(2),
      O => \rSL_out[3]_i_6_n_0\
    );
\rSL_out[3]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rMin_out(1),
      O => p_0_in(1)
    );
\rSL_out[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => rMin_out(2),
      I1 => rMax_out(2),
      I2 => rMax_out(3),
      I3 => rMin_out(3),
      O => \rSL_out[3]_i_8_n_0\
    );
\rSL_out[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rMin_out(1),
      I1 => rMax_out(2),
      I2 => rMin_out(2),
      O => \rSL_out[3]_i_9_n_0\
    );
\rSL_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rSL_out[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rSL_out[0]_i_1_n_0\,
      Q => rSL_out(0)
    );
\rSL_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rSL_out[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rSL_out[1]_i_1_n_0\,
      Q => rSL_out(1)
    );
\rSL_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rSL_out[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rSL_out[2]_i_1_n_0\,
      Q => rSL_out(2)
    );
\rSL_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \rSL_out[3]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \rSL_out[3]_i_2_n_0\,
      Q => rSL_out(3)
    );
\rSL_out_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rSL_out_reg[3]_i_3_n_0\,
      CO(2) => \rSL_out_reg[3]_i_3_n_1\,
      CO(1) => \rSL_out_reg[3]_i_3_n_2\,
      CO(0) => \rSL_out_reg[3]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \rSL_out[3]_i_6_n_0\,
      DI(2) => p_0_in(1),
      DI(1) => rMin_out(1),
      DI(0) => rMax_out(0),
      O(3 downto 0) => muxSL_in(3 downto 0),
      S(3) => \rSL_out[3]_i_8_n_0\,
      S(2) => \rSL_out[3]_i_9_n_0\,
      S(1) => \rSL_out[3]_i_10_n_0\,
      S(0) => \rSL_out[3]_i_11_n_0\
    );
\rSL_out_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \rSL_out_reg[3]_i_3_n_0\,
      CO(3) => \NLW_rSL_out_reg[3]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \rSL_out_reg[3]_i_4_n_1\,
      CO(1) => \rSL_out_reg[3]_i_4_n_2\,
      CO(0) => \rSL_out_reg[3]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rSL_out[3]_i_12_n_0\,
      DI(1) => \rSL_out[3]_i_13_n_0\,
      DI(0) => \rSL_out[3]_i_14_n_0\,
      O(3 downto 0) => muxSL_in(7 downto 4),
      S(3) => \rSL_out[3]_i_15_n_0\,
      S(2) => \rSL_out[3]_i_16_n_0\,
      S(1) => \rSL_out[3]_i_17_n_0\,
      S(0) => \rSL_out[3]_i_18_n_0\
    );
end STRUCTURE;
