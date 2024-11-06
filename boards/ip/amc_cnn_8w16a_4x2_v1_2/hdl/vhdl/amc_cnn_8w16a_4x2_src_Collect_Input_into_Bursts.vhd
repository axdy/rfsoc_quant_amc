-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_Collect_Input_into_Bursts.vhd
-- Created: 2024-11-05 16:19:09
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_Collect_Input_into_Bursts
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Collect Input into Bursts
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_Collect_Input_into_Bursts IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        validOut                          :   OUT   std_logic
        );
END amc_cnn_8w16a_4x2_src_Collect_Input_into_Bursts;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_Collect_Input_into_Bursts IS

  -- Component Declarations
  COMPONENT amc_cnn_8w16a_4x2_src_Ping_Pong_Buffer_Controller
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          validIn                         :   IN    std_logic;
          wr_en0                          :   OUT   std_logic;
          wr_en1                          :   OUT   std_logic;
          bufferSelect                    :   OUT   std_logic;
          ram0_addr                       :   OUT   std_logic_vector(8 DOWNTO 0);  -- ufix9
          ram1_addr                       :   OUT   std_logic_vector(8 DOWNTO 0);  -- ufix9
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_SinglePortRAM_generic
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          din                             :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          addr                            :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          we                              :   IN    std_logic;
          dout                            :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          din                             :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          addr                            :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          we                              :   IN    std_logic;
          dout                            :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_8w16a_4x2_src_Ping_Pong_Buffer_Controller
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Ping_Pong_Buffer_Controller(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_SinglePortRAM_generic
    USE ENTITY work.amc_cnn_8w16a_4x2_src_SinglePortRAM_generic(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block
    USE ENTITY work.amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block(rtl);

  -- Signals
  SIGNAL wr_en0                           : std_logic;
  SIGNAL wr_en1                           : std_logic;
  SIGNAL bufferSelect                     : std_logic;
  SIGNAL ram0_addr                        : std_logic_vector(8 DOWNTO 0);  -- ufix9
  SIGNAL ram1_addr                        : std_logic_vector(8 DOWNTO 0);  -- ufix9
  SIGNAL validOut_1                       : std_logic;
  SIGNAL Delay_out1                       : std_logic;
  SIGNAL bufferSelect_1                   : std_logic;
  SIGNAL pp1_out                          : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL pp1_out_signed                   : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL pp0_out                          : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL pp0_out_signed                   : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL dataOut_tmp                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay1_out1                      : std_logic;

BEGIN
  u_Ping_Pong_Buffer_Controller : amc_cnn_8w16a_4x2_src_Ping_Pong_Buffer_Controller
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              validIn => validIn,
              wr_en0 => wr_en0,
              wr_en1 => wr_en1,
              bufferSelect => bufferSelect,
              ram0_addr => ram0_addr,  -- ufix9
              ram1_addr => ram1_addr,  -- ufix9
              validOut => validOut_1
              );

  u_Ping_Pong_Buffer_1 : amc_cnn_8w16a_4x2_src_SinglePortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              din => dataIn,
              addr => ram1_addr,
              we => wr_en1,
              dout => pp1_out
              );

  u_Ping_Pong_Buffer_0 : amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              din => dataIn,
              addr => ram0_addr,
              we => wr_en0,
              dout => pp0_out
              );

  Delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay_out1 <= bufferSelect;
      END IF;
    END IF;
  END PROCESS Delay_process;


  bufferSelect_1 <=  NOT Delay_out1;

  pp1_out_signed <= signed(pp1_out);

  pp0_out_signed <= signed(pp0_out);

  
  dataOut_tmp <= pp1_out_signed WHEN bufferSelect_1 = '0' ELSE
      pp0_out_signed;

  dataOut <= std_logic_vector(dataOut_tmp);

  Delay1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay1_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay1_out1 <= validOut_1;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  validOut <= Delay1_out1;

END rtl;

