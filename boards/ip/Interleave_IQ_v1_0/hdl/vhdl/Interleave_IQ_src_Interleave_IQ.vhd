-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/interleaver/Interleave_IQ_src_Interleave_IQ.vhd
-- Created: 2023-02-02 13:09:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 1e-05
-- Target subsystem base rate: 1e-05
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        1e-05
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- dataOut                       ce_out        1e-05
-- validOut                      ce_out        1e-05
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Interleave_IQ_src_Interleave_IQ
-- Source Path: interleaver/Interleave IQ
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Interleave_IQ_src_Interleave_IQ IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(31 DOWNTO 0);  -- uint32
        validIn                           :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        dataOut                           :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
        validOut                          :   OUT   std_logic
        );
END Interleave_IQ_src_Interleave_IQ;


ARCHITECTURE rtl OF Interleave_IQ_src_Interleave_IQ IS

  -- Component Declarations
  COMPONENT Interleave_IQ_src_zero_nonvalids
    PORT( In1                             :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          valid                           :   IN    std_logic;
          realIn                          :   OUT   std_logic_vector(15 DOWNTO 0)  -- int16
          );
  END COMPONENT;

  COMPONENT Interleave_IQ_src_zero_nonvalid1
    PORT( dataIn                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          valid                           :   IN    std_logic;
          imagIn                          :   OUT   std_logic_vector(15 DOWNTO 0)  -- int16
          );
  END COMPONENT;

  COMPONENT Interleave_IQ_src_Interleave_IQ_block
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Real_rsvd                       :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          Imag                            :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          validIn                         :   IN    std_logic;
          interleavedOut                  :   OUT   std_logic_vector(15 DOWNTO 0);  -- int16
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Interleave_IQ_src_zero_nonvalids
    USE ENTITY work.Interleave_IQ_src_zero_nonvalids(rtl);

  FOR ALL : Interleave_IQ_src_zero_nonvalid1
    USE ENTITY work.Interleave_IQ_src_zero_nonvalid1(rtl);

  FOR ALL : Interleave_IQ_src_Interleave_IQ_block
    USE ENTITY work.Interleave_IQ_src_Interleave_IQ_block(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL dataIn_unsigned                  : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Delay_out1                       : unsigned(31 DOWNTO 0);  -- uint32
  SIGNAL Real_Slice_out1                  : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Data_Type_Conversion_out1        : signed(15 DOWNTO 0);  -- int16
  SIGNAL valid                            : std_logic;
  SIGNAL realIn                           : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Imag_Slice_out1                  : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Data_Type_Conversion1_out1       : signed(15 DOWNTO 0);  -- int16
  SIGNAL realIn_1                         : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Interleave_IQ_out1               : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL validIn_1                        : std_logic;
  SIGNAL Interleave_IQ_out1_signed        : signed(15 DOWNTO 0);  -- int16
  SIGNAL Delay2_out1                      : signed(15 DOWNTO 0);  -- int16
  SIGNAL Delay3_out1                      : std_logic;

BEGIN
  u_zero_nonvalids : Interleave_IQ_src_zero_nonvalids
    PORT MAP( In1 => std_logic_vector(Data_Type_Conversion_out1),  -- int16
              valid => valid,
              realIn => realIn  -- int16
              );

  u_zero_nonvalid1 : Interleave_IQ_src_zero_nonvalid1
    PORT MAP( dataIn => std_logic_vector(Data_Type_Conversion1_out1),  -- int16
              valid => valid,
              imagIn => realIn_1  -- int16
              );

  u_Interleave_IQ : Interleave_IQ_src_Interleave_IQ_block
    PORT MAP( clk => clk,
              reset => reset,
              enb => clk_enable,
              Real_rsvd => realIn,  -- int16
              Imag => realIn_1,  -- int16
              validIn => valid,
              interleavedOut => Interleave_IQ_out1,  -- int16
              validOut => validIn_1
              );

  dataIn_unsigned <= unsigned(dataIn);

  enb <= clk_enable;

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= to_unsigned(0, 32);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_out1 <= dataIn_unsigned;
      END IF;
    END IF;
  END PROCESS Delay_process;


  Real_Slice_out1 <= Delay_out1(15 DOWNTO 0);

  Data_Type_Conversion_out1 <= signed(Real_Slice_out1);

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      valid <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        valid <= validIn;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  Imag_Slice_out1 <= Delay_out1(31 DOWNTO 16);

  Data_Type_Conversion1_out1 <= signed(Imag_Slice_out1);

  Interleave_IQ_out1_signed <= signed(Interleave_IQ_out1);

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_out1 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay2_out1 <= Interleave_IQ_out1_signed;
      END IF;
    END IF;
  END PROCESS Delay2_process;


  dataOut <= std_logic_vector(Delay2_out1);

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay3_out1 <= validIn_1;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  ce_out <= clk_enable;

  validOut <= Delay3_out1;

END rtl;

