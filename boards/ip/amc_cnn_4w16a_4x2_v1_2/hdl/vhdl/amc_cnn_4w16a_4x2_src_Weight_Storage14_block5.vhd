-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16_4x2/amc_cnn_4w16a_4x2_src_Weight_Storage14_block5.vhd
-- Created: 2024-11-05 20:03:35
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_4x2_src_Weight_Storage14_block5
-- Source Path: amc_model_w4a16_4x2/DUT HDL/Conv Layer 2/Filter Matrix Multiplier1/ParallelMACs 13/Weight Storage14
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_4x2_src_Weight_Storage14_block5 IS
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        count_Weights                     :   IN    std_logic_vector(4 DOWNTO 0);  -- ufix5
        weightsOut                        :   OUT   std_logic_vector(3 DOWNTO 0)  -- sfix4_En5
        );
END amc_cnn_4w16a_4x2_src_Weight_Storage14_block5;


ARCHITECTURE rtl OF amc_cnn_4w16a_4x2_src_Weight_Storage14_block5 IS

  -- Component Declarations
  COMPONENT amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block159
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
  FOR ALL : amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block159
    USE ENTITY work.amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block159(rtl);

  -- Signals
  SIGNAL Constant_out1                    : signed(3 DOWNTO 0);  -- sfix4_En5
  SIGNAL Constant1_out1                   : std_logic;
  SIGNAL Single_Port_RAM_System_out1      : std_logic_vector(3 DOWNTO 0);  -- ufix4

BEGIN
  u_Single_Port_RAM_System : amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block159
    GENERIC MAP( AddrWidth => 5,
                 DataWidth => 4
                 )
    PORT MAP( clk => clk,
              enb => enb,
              din => std_logic_vector(Constant_out1),
              addr => count_Weights,
              we => Constant1_out1,
              dout => Single_Port_RAM_System_out1
              );

  Constant_out1 <= to_signed(16#0#, 4);

  Constant1_out1 <= '0';

  weightsOut <= Single_Port_RAM_System_out1;

END rtl;

