-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_Dense_Layer_2.vhd
-- Created: 2024-11-05 16:19:09
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_Dense_Layer_2
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_8w16a_4x2_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_8w16a_4x2_src_Dense_Layer_2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
        validIn                           :   IN    std_logic;
        dataOut                           :   OUT   vector_of_std_logic_vector16(0 TO 7);  -- sfix16_En8 [8]
        validOut                          :   OUT   std_logic
        );
END amc_cnn_8w16a_4x2_src_Dense_Layer_2;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_Dense_Layer_2 IS

  -- Component Declarations
  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_0
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_0
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En8
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_1
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_2
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_3
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_3
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_4
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_4
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_5
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_5
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_6
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_6
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_Weight_Storage_7
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          count_Weights                   :   IN    std_logic_vector(6 DOWNTO 0);  -- ufix7
          Out1                            :   OUT   std_logic_vector(7 DOWNTO 0)  -- sfix8_En6
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_src_adder_7
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In1                             :   IN    std_logic_vector(7 DOWNTO 0);  -- sfix8_En6
          In2                             :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
          In3                             :   IN    std_logic;
          dataOut                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En8
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_0
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_0(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_0
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_0(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_1
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_1(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_1
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_1(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_2
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_2(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_2
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_2(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_3
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_3(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_3
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_3(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_4
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_4(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_4
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_4(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_5
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_5(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_5
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_5(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_6
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_6(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_6
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_6(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_Weight_Storage_7
    USE ENTITY work.amc_cnn_8w16a_4x2_src_Weight_Storage_7(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_src_adder_7
    USE ENTITY work.amc_cnn_8w16a_4x2_src_adder_7(rtl);

  -- Signals
  SIGNAL count_Weights                    : unsigned(6 DOWNTO 0);  -- ufix7
  SIGNAL Weight_Storage_0_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL dataIn_signed                    : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL Delay_out1                       : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL Delay1_out1                      : std_logic;
  SIGNAL adder_0_out2                     : std_logic;
  SIGNAL Weight_Storage_1_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_2_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_3_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_4_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_5_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_6_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Weight_Storage_7_out1            : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Vector_Concatenate_out1          : vector_of_std_logic_vector16(0 TO 7);  -- ufix16 [8]

BEGIN
  -- make a look up table with matlab function block for weight storage - make sure to map to BRAMs

  u_Weight_Storage_0 : amc_cnn_8w16a_4x2_src_Weight_Storage_0
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_0_out1  -- sfix8_En6
              );

  u_adder_0 : amc_cnn_8w16a_4x2_src_adder_0
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_0_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(0),  -- sfix16_En8
              validOut => adder_0_out2
              );

  u_Weight_Storage_1 : amc_cnn_8w16a_4x2_src_Weight_Storage_1
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_1_out1  -- sfix8_En6
              );

  u_adder_1 : amc_cnn_8w16a_4x2_src_adder_1
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_1_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(1)  -- sfix16_En8
              );

  u_Weight_Storage_2 : amc_cnn_8w16a_4x2_src_Weight_Storage_2
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_2_out1  -- sfix8_En6
              );

  u_adder_2 : amc_cnn_8w16a_4x2_src_adder_2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_2_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(2)  -- sfix16_En8
              );

  u_Weight_Storage_3 : amc_cnn_8w16a_4x2_src_Weight_Storage_3
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_3_out1  -- sfix8_En6
              );

  u_adder_3 : amc_cnn_8w16a_4x2_src_adder_3
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_3_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(3)  -- sfix16_En8
              );

  u_Weight_Storage_4 : amc_cnn_8w16a_4x2_src_Weight_Storage_4
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_4_out1  -- sfix8_En6
              );

  u_adder_4 : amc_cnn_8w16a_4x2_src_adder_4
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_4_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(4)  -- sfix16_En8
              );

  u_Weight_Storage_5 : amc_cnn_8w16a_4x2_src_Weight_Storage_5
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_5_out1  -- sfix8_En6
              );

  u_adder_5 : amc_cnn_8w16a_4x2_src_adder_5
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_5_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(5)  -- sfix16_En8
              );

  u_Weight_Storage_6 : amc_cnn_8w16a_4x2_src_Weight_Storage_6
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_6_out1  -- sfix8_En6
              );

  u_adder_6 : amc_cnn_8w16a_4x2_src_adder_6
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_6_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(6)  -- sfix16_En8
              );

  u_Weight_Storage_7 : amc_cnn_8w16a_4x2_src_Weight_Storage_7
    PORT MAP( clk => clk,
              enb => enb,
              count_Weights => std_logic_vector(count_Weights),  -- ufix7
              Out1 => Weight_Storage_7_out1  -- sfix8_En6
              );

  u_adder_7 : amc_cnn_8w16a_4x2_src_adder_7
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In1 => Weight_Storage_7_out1,  -- sfix8_En6
              In2 => std_logic_vector(Delay_out1),  -- sfix16_En9
              In3 => Delay1_out1,
              dataOut => Vector_Concatenate_out1(7)  -- sfix16_En8
              );

  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 127
  HDL_Counter1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        count_Weights <= to_unsigned(16#00#, 7);
      ELSIF enb = '1' AND validIn = '1' THEN
        count_Weights <= count_Weights + to_unsigned(16#01#, 7);
      END IF;
    END IF;
  END PROCESS HDL_Counter1_process;


  dataIn_signed <= signed(dataIn);

  Delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay_out1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        Delay_out1 <= dataIn_signed;
      END IF;
    END IF;
  END PROCESS Delay_process;


  Delay1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay1_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay1_out1 <= validIn;
      END IF;
    END IF;
  END PROCESS Delay1_process;



  validOut <= adder_0_out2;

  dataOut <= Vector_Concatenate_out1;

END rtl;

