-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_Dense_Layer_2_block.vhd
-- Created: 2024-11-05 16:19:09
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_Dense_Layer_2_block
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 2
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_8w16a_4x2_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_8w16a_4x2_src_Dense_Layer_2_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
        validOut                          :   OUT   std_logic
        );
END amc_cnn_8w16a_4x2_src_Dense_Layer_2_block;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_Dense_Layer_2_block IS

  -- Component Declarations
  COMPONENT amc_cnn_8w16a_4x2_src_Dense_Layer_2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          dataIn                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          validIn                         :   IN    std_logic;
          dataOut                         :   OUT   vector_of_std_logic_vector16(0 TO 7);  -- sfix16_En8 [8]
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Output_Buffer3
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          vectorIn                        :   IN    vector_of_std_logic_vector16(0 TO 7);  -- sfix16_En8 [8]
          validIn                         :   IN    std_logic;
          samplesOut                      :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          validOut                        :   OUT   std_logic;
          done                            :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_8w16a_4x2_src_Dense_Layer_2
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Dense_Layer_2(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Output_Buffer3
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Output_Buffer3(rtl);

  -- Signals
  SIGNAL samplesOut                       : vector_of_std_logic_vector16(0 TO 7);  -- ufix16 [8]
  SIGNAL validOut_l4                      : std_logic;
  SIGNAL samplesOut_1                     : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL validOut_1                       : std_logic;
  SIGNAL done                             : std_logic;
  SIGNAL samplesOut_signed                : signed(15 DOWNTO 0);  -- sfix16_En8
  SIGNAL Pipeline_Delay13_reg             : vector_of_signed16(0 TO 1);  -- sfix16 [2]
  SIGNAL Pipeline_Delay13_reg_next        : vector_of_signed16(0 TO 1);  -- sfix16_En8 [2]
  SIGNAL Pipeline_Delay13_out1            : signed(15 DOWNTO 0);  -- sfix16_En8
  SIGNAL Pipeline_Delay14_reg             : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Pipeline_Delay14_reg_next        : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Pipeline_Delay14_out1            : std_logic;

BEGIN
  u_Dense_Layer_2 : amc_cnn_8w16a_4x2_src_Dense_Layer_2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              dataIn => dataIn,  -- sfix16_En9
              validIn => validIn,
              dataOut => samplesOut,  -- sfix16_En8 [8]
              validOut => validOut_l4
              );

  u_Output_Buffer3 : amc_cnn_8w16a_4x2_src_Output_Buffer3
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              vectorIn => samplesOut,  -- sfix16_En8 [8]
              validIn => validOut_l4,
              samplesOut => samplesOut_1,  -- sfix16_En8
              validOut => validOut_1,
              done => done
              );

  samplesOut_signed <= signed(samplesOut_1);

  Pipeline_Delay13_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Pipeline_Delay13_reg(0) <= to_signed(16#0000#, 16);
        Pipeline_Delay13_reg(1) <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Pipeline_Delay13_reg(0) <= Pipeline_Delay13_reg_next(0);
        Pipeline_Delay13_reg(1) <= Pipeline_Delay13_reg_next(1);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay13_process;

  Pipeline_Delay13_out1 <= Pipeline_Delay13_reg(1);
  Pipeline_Delay13_reg_next(0) <= samplesOut_signed;
  Pipeline_Delay13_reg_next(1) <= Pipeline_Delay13_reg(0);

  dataOut <= std_logic_vector(Pipeline_Delay13_out1);

  Pipeline_Delay14_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Pipeline_Delay14_reg(0) <= '0';
        Pipeline_Delay14_reg(1) <= '0';
      ELSIF enb = '1' THEN
        Pipeline_Delay14_reg(0) <= Pipeline_Delay14_reg_next(0);
        Pipeline_Delay14_reg(1) <= Pipeline_Delay14_reg_next(1);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay14_process;

  Pipeline_Delay14_out1 <= Pipeline_Delay14_reg(1);
  Pipeline_Delay14_reg_next(0) <= validOut_1;
  Pipeline_Delay14_reg_next(1) <= Pipeline_Delay14_reg(0);

  validOut <= Pipeline_Delay14_out1;

END rtl;

