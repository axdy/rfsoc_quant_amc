-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16_4x2/amc_cnn_4w16a_4x2_src_adder_5.vhd
-- Created: 2024-11-05 20:03:34
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_4x2_src_adder_5
-- Source Path: amc_model_w4a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2/adder 5
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_4x2_src_adder_5 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In1                               :   IN    std_logic_vector(3 DOWNTO 0);  -- sfix4_En3
        In2                               :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
        In3                               :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En9
        );
END amc_cnn_4w16a_4x2_src_adder_5;


ARCHITECTURE rtl OF amc_cnn_4w16a_4x2_src_adder_5 IS

  -- Signals
  SIGNAL Multiply_Accumulate1_counter_out : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL s                                : std_logic;
  SIGNAL Multiply_Accumulate1_and1_out    : std_logic;
  SIGNAL Multiply_Accumulate1_and1_out_1  : std_logic;
  SIGNAL switch_compare_1                 : std_logic;
  SIGNAL s_1                              : signed(38 DOWNTO 0);  -- sfix39_En26
  SIGNAL Multiply_Accumulate1_not1_out    : std_logic;
  SIGNAL switch_compare_1_1               : std_logic;
  SIGNAL In2_signed                       : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL s_2                              : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL Multiply_Accumulate1_input_mux_out : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL In1_signed                       : signed(3 DOWNTO 0);  -- sfix4_En3
  SIGNAL Multiply_Accumulate1_multiply_out : signed(19 DOWNTO 0);  -- sfix20_En12
  SIGNAL Multiply_Accumulate1_multiply_out_1 : signed(19 DOWNTO 0);  -- sfix20_En12
  SIGNAL Multiply_Accumulate1_out1        : signed(38 DOWNTO 0);  -- sfix39_En26
  SIGNAL Multiply_Accumulate1_add_fb_in   : signed(38 DOWNTO 0);  -- sfix39_En26
  SIGNAL Multiply_Accumulate1_add_add_cast : signed(39 DOWNTO 0);  -- sfix40_En26
  SIGNAL Multiply_Accumulate1_add_add_cast_1 : signed(39 DOWNTO 0);  -- sfix40_En26
  SIGNAL Multiply_Accumulate1_add_add_temp : signed(39 DOWNTO 0);  -- sfix40_En26
  SIGNAL Multiply_Accumulate1_multiplyAdd_out : signed(38 DOWNTO 0);  -- sfix39_En26
  SIGNAL Multiply_Accumulate1_out1_1      : signed(38 DOWNTO 0);  -- sfix39_En26
  SIGNAL Data_Type_Conversion_out1        : signed(15 DOWNTO 0);  -- sfix16_En9

  ATTRIBUTE use_dsp : string;

  ATTRIBUTE use_dsp OF Multiply_Accumulate1_multiply_out : SIGNAL IS "yes";

BEGIN
  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 128
  Multiply_Accumulate1_counter_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate1_counter_out <= to_unsigned(16#01#, 8);
      ELSIF enb = '1' THEN
        IF In3 = '1' THEN 
          IF Multiply_Accumulate1_counter_out >= to_unsigned(16#80#, 8) THEN 
            Multiply_Accumulate1_counter_out <= to_unsigned(16#01#, 8);
          ELSE 
            Multiply_Accumulate1_counter_out <= Multiply_Accumulate1_counter_out + to_unsigned(16#01#, 8);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate1_counter_process;


  
  s <= '1' WHEN Multiply_Accumulate1_counter_out = to_unsigned(16#01#, 8) ELSE
      '0';

  Multiply_Accumulate1_and1_out <= In3 AND s;

  HwModeRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate1_and1_out_1 <= '0';
      ELSIF enb = '1' THEN
        Multiply_Accumulate1_and1_out_1 <= Multiply_Accumulate1_and1_out;
      END IF;
    END IF;
  END PROCESS HwModeRegister_process;


  
  switch_compare_1 <= '1' WHEN Multiply_Accumulate1_and1_out_1 > '0' ELSE
      '0';

  s_1 <= to_signed(0, 39);

  Multiply_Accumulate1_not1_out <=  NOT In3;

  
  switch_compare_1_1 <= '1' WHEN Multiply_Accumulate1_not1_out > '0' ELSE
      '0';

  In2_signed <= signed(In2);

  s_2 <= to_signed(16#0000#, 16);

  
  Multiply_Accumulate1_input_mux_out <= In2_signed WHEN switch_compare_1_1 = '0' ELSE
      s_2;

  In1_signed <= signed(In1);

  Multiply_Accumulate1_multiply_out <= Multiply_Accumulate1_input_mux_out * In1_signed;

  HwModeRegister_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate1_multiply_out_1 <= to_signed(16#00000#, 20);
      ELSIF enb = '1' THEN
        Multiply_Accumulate1_multiply_out_1 <= Multiply_Accumulate1_multiply_out;
      END IF;
    END IF;
  END PROCESS HwModeRegister_1_process;


  
  Multiply_Accumulate1_add_fb_in <= Multiply_Accumulate1_out1 WHEN switch_compare_1 = '0' ELSE
      s_1;

  Multiply_Accumulate1_add_add_cast <= resize(Multiply_Accumulate1_add_fb_in, 40);
  Multiply_Accumulate1_add_add_cast_1 <= resize(Multiply_Accumulate1_multiply_out_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 40);
  Multiply_Accumulate1_add_add_temp <= Multiply_Accumulate1_add_add_cast + Multiply_Accumulate1_add_add_cast_1;
  Multiply_Accumulate1_multiplyAdd_out <= Multiply_Accumulate1_add_add_temp(38 DOWNTO 0);

  Multiply_Accumulate1_delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate1_out1 <= to_signed(0, 39);
      ELSIF enb = '1' THEN
        Multiply_Accumulate1_out1 <= Multiply_Accumulate1_multiplyAdd_out;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate1_delay_process;


  HwModeRegister_2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate1_out1_1 <= to_signed(0, 39);
      ELSIF enb = '1' THEN
        Multiply_Accumulate1_out1_1 <= Multiply_Accumulate1_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_2_process;


  Data_Type_Conversion_out1 <= Multiply_Accumulate1_out1_1(32 DOWNTO 17);

  dataOut <= std_logic_vector(Data_Type_Conversion_out1);

END rtl;

