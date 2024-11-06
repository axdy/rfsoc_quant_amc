-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_MAC11_block11.vhd
-- Created: 2024-11-05 16:19:11
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_MAC11_block11
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Conv Layer 2/Filter Matrix Multiplier1/ParallelMACs 6/MAC11
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_MAC11_block11 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        countWeights                      :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En8
        samplesIn                         :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En13
        );
END amc_cnn_8w16a_4x2_src_MAC11_block11;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_MAC11_block11 IS

  -- Signals
  SIGNAL Multiply_Accumulate_counter_out  : unsigned(4 DOWNTO 0);  -- ufix5
  SIGNAL s                                : std_logic;
  SIGNAL Multiply_Accumulate_and1_out     : std_logic;
  SIGNAL Multiply_Accumulate_and1_out_1   : std_logic;
  SIGNAL switch_compare_1                 : std_logic;
  SIGNAL s_1                              : signed(40 DOWNTO 0);  -- sfix41_En30
  SIGNAL Multiply_Accumulate_not1_out     : std_logic;
  SIGNAL switch_compare_1_1               : std_logic;
  SIGNAL samplesIn_signed                 : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL s_2                              : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL Multiply_Accumulate_input_mux_out : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL countWeights_signed              : signed(7 DOWNTO 0);  -- sfix8_En8
  SIGNAL Multiply_Accumulate_multiply_out : signed(23 DOWNTO 0);  -- sfix24_En21
  SIGNAL Multiply_Accumulate_multiply_out_1 : signed(23 DOWNTO 0);  -- sfix24_En21
  SIGNAL Multiply_Accumulate_out1         : signed(40 DOWNTO 0);  -- sfix41_En30
  SIGNAL Multiply_Accumulate_add_fb_in    : signed(40 DOWNTO 0);  -- sfix41_En30
  SIGNAL Multiply_Accumulate_add_add_cast : signed(41 DOWNTO 0);  -- sfix42_En30
  SIGNAL Multiply_Accumulate_add_add_cast_1 : signed(41 DOWNTO 0);  -- sfix42_En30
  SIGNAL Multiply_Accumulate_add_add_temp : signed(41 DOWNTO 0);  -- sfix42_En30
  SIGNAL Multiply_Accumulate_multiplyAdd_out : signed(40 DOWNTO 0);  -- sfix41_En30
  SIGNAL Multiply_Accumulate_out1_1       : signed(40 DOWNTO 0);  -- sfix41_En30
  SIGNAL Data_Type_Conversion_out1        : signed(15 DOWNTO 0);  -- sfix16_En13

  ATTRIBUTE use_dsp : string;

  ATTRIBUTE use_dsp OF Multiply_Accumulate_multiply_out : SIGNAL IS "yes";

BEGIN
  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 24
  Multiply_Accumulate_counter_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_counter_out <= to_unsigned(16#01#, 5);
      ELSIF enb = '1' THEN
        IF validIn = '1' THEN 
          IF Multiply_Accumulate_counter_out >= to_unsigned(16#18#, 5) THEN 
            Multiply_Accumulate_counter_out <= to_unsigned(16#01#, 5);
          ELSE 
            Multiply_Accumulate_counter_out <= Multiply_Accumulate_counter_out + to_unsigned(16#01#, 5);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_counter_process;


  
  s <= '1' WHEN Multiply_Accumulate_counter_out = to_unsigned(16#01#, 5) ELSE
      '0';

  Multiply_Accumulate_and1_out <= validIn AND s;

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_and1_out_1 <= '0';
      ELSIF enb = '1' THEN
        Multiply_Accumulate_and1_out_1 <= Multiply_Accumulate_and1_out;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  
  switch_compare_1 <= '1' WHEN Multiply_Accumulate_and1_out_1 > '0' ELSE
      '0';

  s_1 <= to_signed(0, 41);

  Multiply_Accumulate_not1_out <=  NOT validIn;

  
  switch_compare_1_1 <= '1' WHEN Multiply_Accumulate_not1_out > '0' ELSE
      '0';

  samplesIn_signed <= signed(samplesIn);

  s_2 <= to_signed(16#0000#, 16);

  
  Multiply_Accumulate_input_mux_out <= samplesIn_signed WHEN switch_compare_1_1 = '0' ELSE
      s_2;

  countWeights_signed <= signed(countWeights);

  Multiply_Accumulate_multiply_out <= Multiply_Accumulate_input_mux_out * countWeights_signed;

  HwModeRegister_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_multiply_out_1 <= to_signed(16#000000#, 24);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_multiply_out_1 <= Multiply_Accumulate_multiply_out;
      END IF;
    END IF;
  END PROCESS HwModeRegister_1_process;


  
  Multiply_Accumulate_add_fb_in <= Multiply_Accumulate_out1 WHEN switch_compare_1 = '0' ELSE
      s_1;

  Multiply_Accumulate_add_add_cast <= resize(Multiply_Accumulate_add_fb_in, 42);
  Multiply_Accumulate_add_add_cast_1 <= resize(Multiply_Accumulate_multiply_out_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 42);
  Multiply_Accumulate_add_add_temp <= Multiply_Accumulate_add_add_cast + Multiply_Accumulate_add_add_cast_1;
  Multiply_Accumulate_multiplyAdd_out <= Multiply_Accumulate_add_add_temp(40 DOWNTO 0);

  Multiply_Accumulate_delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_out1 <= to_signed(0, 41);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_out1 <= Multiply_Accumulate_multiplyAdd_out;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_delay_process;


  HwModeRegister_2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_out1_1 <= to_signed(0, 41);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_out1_1 <= Multiply_Accumulate_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_2_process;


  Data_Type_Conversion_out1 <= Multiply_Accumulate_out1_1(32 DOWNTO 17);

  dataOut <= std_logic_vector(Data_Type_Conversion_out1);

END rtl;

