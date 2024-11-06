-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16_4x2/amc_cnn_4w16a_4x2_src_adder58_block.vhd
-- Created: 2024-11-05 20:03:48
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_4x2_src_adder58_block
-- Source Path: amc_model_w4a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/adder58
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_4w16a_4x2_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_4w16a_4x2_src_adder58_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        In1                               :   IN    std_logic_vector(3 DOWNTO 0);  -- sfix4_En5
        In2                               :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En11
        In3                               :   IN    std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En10
        );
END amc_cnn_4w16a_4x2_src_adder58_block;


ARCHITECTURE rtl OF amc_cnn_4w16a_4x2_src_adder58_block IS

  -- Signals
  SIGNAL Multiply_Accumulate_in2_buff_in_pipe_reg : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Multiply_Accumulate_in2_buff_in_pipe_reg_next : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL In3_1                            : std_logic;
  SIGNAL Multiply_Accumulate_counter_out  : unsigned(10 DOWNTO 0);  -- ufix11
  SIGNAL s                                : std_logic;
  SIGNAL Multiply_Accumulate_and1_out     : std_logic;
  SIGNAL Multiply_Accumulate_and1_out_1   : std_logic;
  SIGNAL switch_compare_1                 : std_logic;
  SIGNAL s_1                              : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Multiply_Accumulate_not1_out     : std_logic;
  SIGNAL switch_compare_1_1               : std_logic;
  SIGNAL In2_signed                       : signed(15 DOWNTO 0);  -- sfix16_En11
  SIGNAL Multiply_Accumulate_in0_buff_in_pipe_reg : vector_of_signed16(0 TO 1);  -- sfix16 [2]
  SIGNAL Multiply_Accumulate_in0_buff_in_pipe_reg_next : vector_of_signed16(0 TO 1);  -- sfix16_En11 [2]
  SIGNAL In2_1                            : signed(15 DOWNTO 0);  -- sfix16_En11
  SIGNAL s_2                              : signed(15 DOWNTO 0);  -- sfix16_En11
  SIGNAL Multiply_Accumulate_input_mux_out : signed(15 DOWNTO 0);  -- sfix16_En11
  SIGNAL In1_signed                       : signed(3 DOWNTO 0);  -- sfix4_En5
  SIGNAL Multiply_Accumulate_in1_buff_in_pipe_reg : vector_of_signed4(0 TO 1);  -- sfix4 [2]
  SIGNAL Multiply_Accumulate_in1_buff_in_pipe_reg_next : vector_of_signed4(0 TO 1);  -- sfix4_En5 [2]
  SIGNAL In1_1                            : signed(3 DOWNTO 0);  -- sfix4_En5
  SIGNAL Multiply_Accumulate_multiply_out : signed(19 DOWNTO 0);  -- sfix20_En16
  SIGNAL Multiply_Accumulate_multiply_out_1 : signed(19 DOWNTO 0);  -- sfix20_En16
  SIGNAL Multiply_Accumulate_out1         : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Multiply_Accumulate_add_fb_in    : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Multiply_Accumulate_add_add_cast : signed(57 DOWNTO 0);  -- sfix58_En38
  SIGNAL Multiply_Accumulate_add_add_cast_1 : signed(57 DOWNTO 0);  -- sfix58_En38
  SIGNAL Multiply_Accumulate_add_add_temp : signed(57 DOWNTO 0);  -- sfix58_En38
  SIGNAL Multiply_Accumulate_multiplyAdd_out : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Multiply_Accumulate_out1_1       : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Multiply_Accumulate_out3_buff_out_pipe_reg : vector_of_signed57(0 TO 1);  -- sfix57 [2]
  SIGNAL Multiply_Accumulate_out3_buff_out_pipe_reg_next : vector_of_signed57(0 TO 1);  -- sfix57_En38 [2]
  SIGNAL Multiply_Accumulate_out1_2       : signed(56 DOWNTO 0);  -- sfix57_En38
  SIGNAL Data_Type_Conversion_out1        : signed(15 DOWNTO 0);  -- sfix16_En10

  ATTRIBUTE use_dsp : string;

  ATTRIBUTE use_dsp OF Multiply_Accumulate_multiply_out : SIGNAL IS "yes";

BEGIN
  Multiply_Accumulate_in2_buff_in_pipe_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_in2_buff_in_pipe_reg(0) <= '0';
        Multiply_Accumulate_in2_buff_in_pipe_reg(1) <= '0';
      ELSIF enb = '1' THEN
        Multiply_Accumulate_in2_buff_in_pipe_reg(0) <= Multiply_Accumulate_in2_buff_in_pipe_reg_next(0);
        Multiply_Accumulate_in2_buff_in_pipe_reg(1) <= Multiply_Accumulate_in2_buff_in_pipe_reg_next(1);
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_in2_buff_in_pipe_process;

  In3_1 <= Multiply_Accumulate_in2_buff_in_pipe_reg(1);
  Multiply_Accumulate_in2_buff_in_pipe_reg_next(0) <= In3;
  Multiply_Accumulate_in2_buff_in_pipe_reg_next(1) <= Multiply_Accumulate_in2_buff_in_pipe_reg(0);

  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 1984
  Multiply_Accumulate_counter_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_counter_out <= to_unsigned(16#001#, 11);
      ELSIF enb = '1' THEN
        IF In3_1 = '1' THEN 
          IF Multiply_Accumulate_counter_out >= to_unsigned(16#7C0#, 11) THEN 
            Multiply_Accumulate_counter_out <= to_unsigned(16#001#, 11);
          ELSE 
            Multiply_Accumulate_counter_out <= Multiply_Accumulate_counter_out + to_unsigned(16#001#, 11);
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_counter_process;


  
  s <= '1' WHEN Multiply_Accumulate_counter_out = to_unsigned(16#001#, 11) ELSE
      '0';

  Multiply_Accumulate_and1_out <= In3_1 AND s;

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

  s_1 <= to_signed(0, 57);

  Multiply_Accumulate_not1_out <=  NOT In3_1;

  
  switch_compare_1_1 <= '1' WHEN Multiply_Accumulate_not1_out > '0' ELSE
      '0';

  In2_signed <= signed(In2);

  Multiply_Accumulate_in0_buff_in_pipe_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_in0_buff_in_pipe_reg(0) <= to_signed(16#0000#, 16);
        Multiply_Accumulate_in0_buff_in_pipe_reg(1) <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_in0_buff_in_pipe_reg(0) <= Multiply_Accumulate_in0_buff_in_pipe_reg_next(0);
        Multiply_Accumulate_in0_buff_in_pipe_reg(1) <= Multiply_Accumulate_in0_buff_in_pipe_reg_next(1);
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_in0_buff_in_pipe_process;

  In2_1 <= Multiply_Accumulate_in0_buff_in_pipe_reg(1);
  Multiply_Accumulate_in0_buff_in_pipe_reg_next(0) <= In2_signed;
  Multiply_Accumulate_in0_buff_in_pipe_reg_next(1) <= Multiply_Accumulate_in0_buff_in_pipe_reg(0);

  s_2 <= to_signed(16#0000#, 16);

  
  Multiply_Accumulate_input_mux_out <= In2_1 WHEN switch_compare_1_1 = '0' ELSE
      s_2;

  In1_signed <= signed(In1);

  Multiply_Accumulate_in1_buff_in_pipe_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_in1_buff_in_pipe_reg(0) <= to_signed(16#0#, 4);
        Multiply_Accumulate_in1_buff_in_pipe_reg(1) <= to_signed(16#0#, 4);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_in1_buff_in_pipe_reg(0) <= Multiply_Accumulate_in1_buff_in_pipe_reg_next(0);
        Multiply_Accumulate_in1_buff_in_pipe_reg(1) <= Multiply_Accumulate_in1_buff_in_pipe_reg_next(1);
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_in1_buff_in_pipe_process;

  In1_1 <= Multiply_Accumulate_in1_buff_in_pipe_reg(1);
  Multiply_Accumulate_in1_buff_in_pipe_reg_next(0) <= In1_signed;
  Multiply_Accumulate_in1_buff_in_pipe_reg_next(1) <= Multiply_Accumulate_in1_buff_in_pipe_reg(0);

  Multiply_Accumulate_multiply_out <= Multiply_Accumulate_input_mux_out * In1_1;

  HwModeRegister_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_multiply_out_1 <= to_signed(16#00000#, 20);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_multiply_out_1 <= Multiply_Accumulate_multiply_out;
      END IF;
    END IF;
  END PROCESS HwModeRegister_1_process;


  
  Multiply_Accumulate_add_fb_in <= Multiply_Accumulate_out1 WHEN switch_compare_1 = '0' ELSE
      s_1;

  Multiply_Accumulate_add_add_cast <= resize(Multiply_Accumulate_add_fb_in, 58);
  Multiply_Accumulate_add_add_cast_1 <= resize(Multiply_Accumulate_multiply_out_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 58);
  Multiply_Accumulate_add_add_temp <= Multiply_Accumulate_add_add_cast + Multiply_Accumulate_add_add_cast_1;
  Multiply_Accumulate_multiplyAdd_out <= Multiply_Accumulate_add_add_temp(56 DOWNTO 0);

  Multiply_Accumulate_delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_out1 <= to_signed(0, 57);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_out1 <= Multiply_Accumulate_multiplyAdd_out;
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_delay_process;


  HwModeRegister_2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_out1_1 <= to_signed(0, 57);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_out1_1 <= Multiply_Accumulate_out1;
      END IF;
    END IF;
  END PROCESS HwModeRegister_2_process;


  Multiply_Accumulate_out3_buff_out_pipe_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Multiply_Accumulate_out3_buff_out_pipe_reg(0) <= to_signed(0, 57);
        Multiply_Accumulate_out3_buff_out_pipe_reg(1) <= to_signed(0, 57);
      ELSIF enb = '1' THEN
        Multiply_Accumulate_out3_buff_out_pipe_reg(0) <= Multiply_Accumulate_out3_buff_out_pipe_reg_next(0);
        Multiply_Accumulate_out3_buff_out_pipe_reg(1) <= Multiply_Accumulate_out3_buff_out_pipe_reg_next(1);
      END IF;
    END IF;
  END PROCESS Multiply_Accumulate_out3_buff_out_pipe_process;

  Multiply_Accumulate_out1_2 <= Multiply_Accumulate_out3_buff_out_pipe_reg(1);
  Multiply_Accumulate_out3_buff_out_pipe_reg_next(0) <= Multiply_Accumulate_out1_1;
  Multiply_Accumulate_out3_buff_out_pipe_reg_next(1) <= Multiply_Accumulate_out3_buff_out_pipe_reg(0);

  Data_Type_Conversion_out1 <= Multiply_Accumulate_out1_2(43 DOWNTO 28);

  dataOut <= std_logic_vector(Data_Type_Conversion_out1);

END rtl;

