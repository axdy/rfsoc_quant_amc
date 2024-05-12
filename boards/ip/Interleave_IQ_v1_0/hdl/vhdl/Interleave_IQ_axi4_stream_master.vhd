-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/interleaver/Interleave_IQ_axi4_stream_master.vhd
-- Created: 2023-02-02 13:09:19
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Interleave_IQ_axi4_stream_master
-- Source Path: Interleave_IQ/Interleave_IQ_axi4_stream_master
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Interleave_IQ_axi4_stream_master IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        AXI4_Stream_Master_TREADY         :   IN    std_logic;  -- ufix1
        user_data                         :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        user_valid                        :   IN    std_logic;  -- ufix1
        write_packet_size_axi4_stream_master :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Stream_Master_TDATA          :   OUT   std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Stream_Master_TVALID         :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Master_TLAST          :   OUT   std_logic;  -- ufix1
        auto_ready                        :   OUT   std_logic  -- ufix1
        );
END Interleave_IQ_axi4_stream_master;


ARCHITECTURE rtl OF Interleave_IQ_axi4_stream_master IS

  -- Component Declarations
  COMPONENT Interleave_IQ_fifo_data_OUT
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic_vector(15 DOWNTO 0);  -- ufix16
          Empty                           :   OUT   std_logic;  -- ufix1
          AFull                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT Interleave_IQ_fifo_TLAST_OUT
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic;  -- ufix1
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Interleave_IQ_fifo_data_OUT
    USE ENTITY work.Interleave_IQ_fifo_data_OUT(rtl);

  FOR ALL : Interleave_IQ_fifo_TLAST_OUT
    USE ENTITY work.Interleave_IQ_fifo_TLAST_OUT(rtl);

  -- Signals
  SIGNAL fifo_afull_data                  : std_logic;  -- ufix1
  SIGNAL internal_ready                   : std_logic;  -- ufix1
  SIGNAL internal_ready_delayed           : std_logic;  -- ufix1
  SIGNAL fifo_push                        : std_logic;  -- ufix1
  SIGNAL AXI4_Stream_Master_TDATA_tmp     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL fifo_empty_data                  : std_logic;  -- ufix1
  SIGNAL write_packet_size_axi4_stream_master_unsigned : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL const_1                          : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL tlast_size_value                 : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL auto_tlast                       : std_logic;  -- ufix1
  SIGNAL tlast_counter_out                : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL relop_relop1                     : std_logic;

BEGIN
  u_Interleave_IQ_fifo_data_OUT_inst : Interleave_IQ_fifo_data_OUT
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => user_data,  -- ufix16
              Push => fifo_push,  -- ufix1
              Pop => AXI4_Stream_Master_TREADY,  -- ufix1
              Out_rsvd => AXI4_Stream_Master_TDATA_tmp,  -- ufix16
              Empty => fifo_empty_data,  -- ufix1
              AFull => fifo_afull_data  -- ufix1
              );

  u_Interleave_IQ_fifo_TLAST_OUT_inst : Interleave_IQ_fifo_TLAST_OUT
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => auto_tlast,  -- ufix1
              Push => fifo_push,  -- ufix1
              Pop => AXI4_Stream_Master_TREADY,  -- ufix1
              Out_rsvd => AXI4_Stream_Master_TLAST  -- ufix1
              );

  internal_ready <=  NOT fifo_afull_data;

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      internal_ready_delayed <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        internal_ready_delayed <= internal_ready;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  fifo_push <= internal_ready_delayed AND user_valid;

  AXI4_Stream_Master_TVALID <=  NOT fifo_empty_data;

  write_packet_size_axi4_stream_master_unsigned <= unsigned(write_packet_size_axi4_stream_master);

  const_1 <= to_unsigned(1, 32);

  tlast_size_value <= write_packet_size_axi4_stream_master_unsigned - const_1;

  -- Free running, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  tlast_counter_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      tlast_counter_out <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF auto_tlast = '1' THEN 
          tlast_counter_out <= to_unsigned(0, 32);
        ELSIF fifo_push = '1' THEN 
          tlast_counter_out <= tlast_counter_out + to_unsigned(1, 32);
        END IF;
      END IF;
    END IF;
  END PROCESS tlast_counter_process;


  
  relop_relop1 <= '1' WHEN tlast_counter_out = tlast_size_value ELSE
      '0';

  auto_tlast <= fifo_push AND relop_relop1;

  auto_ready <= internal_ready;

  AXI4_Stream_Master_TDATA <= AXI4_Stream_Master_TDATA_tmp;

END rtl;

