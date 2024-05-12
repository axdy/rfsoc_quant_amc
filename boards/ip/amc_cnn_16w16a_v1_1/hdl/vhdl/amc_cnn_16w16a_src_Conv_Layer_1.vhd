-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_Conv_Layer_1.vhd
-- Created: 2023-08-04 11:27:08
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_Conv_Layer_1
-- Source Path: amc_model_w16a16/DUT HDL/Conv Layer 1
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_16w16a_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_16w16a_src_Conv_Layer_1 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dataIn                            :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
        validIn                           :   IN    std_logic;
        enable                            :   IN    std_logic;
        ready_nx_layer                    :   IN    std_logic;
        dataOut                           :   OUT   vector_of_std_logic_vector16(0 TO 63);  -- int16 [64]
        validOut                          :   OUT   std_logic
        );
END amc_cnn_16w16a_src_Conv_Layer_1;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_Conv_Layer_1 IS

  -- Component Declarations
  COMPONENT amc_cnn_16w16a_src_Buffer_and_Sliding_Window_State_Machine
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          validIn                         :   IN    std_logic;
          enable                          :   IN    std_logic;
          ready_nx_layer                  :   IN    std_logic;
          wr_addr                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          wr_en                           :   OUT   std_logic;
          rd_addr                         :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_16w16a_src_SimpleDualPortRAM_generic
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          wr_din                          :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          wr_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          wr_en                           :   IN    std_logic;
          rd_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          rd_dout                         :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  COMPONENT amc_cnn_16w16a_src_Layer_1_Mat_Vec_Multiplier
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          dataIn                          :   IN    std_logic_vector(15 DOWNTO 0);  -- int16
          valid                           :   IN    std_logic;
          dataOut                         :   OUT   vector_of_std_logic_vector16(0 TO 63);  -- sfix16_En8 [64]
          validOut                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_16w16a_src_ReLU
    PORT( in_rsvd                         :   IN    vector_of_std_logic_vector16(0 TO 63);  -- sfix16_En8 [64]
          out_rsvd                        :   OUT   vector_of_std_logic_vector16(0 TO 63)  -- int16 [64]
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_16w16a_src_Buffer_and_Sliding_Window_State_Machine
    USE ENTITY work.amc_cnn_16w16a_src_Buffer_and_Sliding_Window_State_Machine(rtl);

  FOR ALL : amc_cnn_16w16a_src_SimpleDualPortRAM_generic
    USE ENTITY work.amc_cnn_16w16a_src_SimpleDualPortRAM_generic(rtl);

  FOR ALL : amc_cnn_16w16a_src_Layer_1_Mat_Vec_Multiplier
    USE ENTITY work.amc_cnn_16w16a_src_Layer_1_Mat_Vec_Multiplier(rtl);

  FOR ALL : amc_cnn_16w16a_src_ReLU
    USE ENTITY work.amc_cnn_16w16a_src_ReLU(rtl);

  -- Signals
  SIGNAL dataIn_signed                    : signed(15 DOWNTO 0);  -- int16
  SIGNAL dataIn_1                         : signed(15 DOWNTO 0);  -- int16
  SIGNAL validIn_1                        : std_logic;
  SIGNAL Pipeline_Delay2_out1             : std_logic;
  SIGNAL wr_addr                          : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL wr_en                            : std_logic;
  SIGNAL rd_addr                          : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL validOut_1                       : std_logic;
  SIGNAL gemm_l1_out                      : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL gemm_l1_out_signed               : signed(15 DOWNTO 0);  -- int16
  SIGNAL gemm_sampleIn                    : signed(15 DOWNTO 0);  -- int16
  SIGNAL Pipeline_Delay4_reg              : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Pipeline_Delay4_reg_next         : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL gemm_sampleInValid               : std_logic;
  SIGNAL serialOut                        : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]
  SIGNAL validOut_l1                      : std_logic;
  SIGNAL serialOut_signed                 : vector_of_signed16(0 TO 63);  -- sfix16_En8 [64]
  SIGNAL din                              : vector_of_signed16(0 TO 63);  -- sfix16_En8 [64]
  SIGNAL din_1                            : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]
  SIGNAL out_rsvd                         : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]
  SIGNAL out_signed                       : vector_of_signed16(0 TO 63);  -- int16 [64]
  SIGNAL din_2                            : vector_of_signed16(0 TO 63);  -- int16 [64]
  SIGNAL Pipeline_Delay5_reg              : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL Pipeline_Delay5_reg_next         : std_logic_vector(0 TO 1);  -- ufix1 [2]
  SIGNAL validIn_2                        : std_logic;

BEGIN
  u_Buffer_and_Sliding_Window_State_Machine : amc_cnn_16w16a_src_Buffer_and_Sliding_Window_State_Machine
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              validIn => validIn_1,
              enable => Pipeline_Delay2_out1,
              ready_nx_layer => ready_nx_layer,
              wr_addr => wr_addr,  -- uint8
              wr_en => wr_en,
              rd_addr => rd_addr,  -- uint8
              validOut => validOut_1
              );

  u_Simple_Dual_Port_RAM_System : amc_cnn_16w16a_src_SimpleDualPortRAM_generic
    GENERIC MAP( AddrWidth => 8,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => std_logic_vector(dataIn_1),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              rd_dout => gemm_l1_out
              );

  u_Layer_1_Mat_Vec_Multiplier : amc_cnn_16w16a_src_Layer_1_Mat_Vec_Multiplier
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              dataIn => std_logic_vector(gemm_sampleIn),  -- int16
              valid => gemm_sampleInValid,
              dataOut => serialOut,  -- sfix16_En8 [64]
              validOut => validOut_l1
              );

  u_ReLU : amc_cnn_16w16a_src_ReLU
    PORT MAP( in_rsvd => din_1,  -- sfix16_En8 [64]
              out_rsvd => out_rsvd  -- int16 [64]
              );

  dataIn_signed <= signed(dataIn);

  Pipeline_Delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        dataIn_1 <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        dataIn_1 <= dataIn_signed;
      END IF;
    END IF;
  END PROCESS Pipeline_Delay_process;


  Pipeline_Delay1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        validIn_1 <= '0';
      ELSIF enb = '1' THEN
        validIn_1 <= validIn;
      END IF;
    END IF;
  END PROCESS Pipeline_Delay1_process;


  Pipeline_Delay2_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Pipeline_Delay2_out1 <= '0';
      ELSIF enb = '1' THEN
        Pipeline_Delay2_out1 <= enable;
      END IF;
    END IF;
  END PROCESS Pipeline_Delay2_process;


  gemm_l1_out_signed <= signed(gemm_l1_out);

  Pipeline_Delay3_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        gemm_sampleIn <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        gemm_sampleIn <= gemm_l1_out_signed;
      END IF;
    END IF;
  END PROCESS Pipeline_Delay3_process;


  Pipeline_Delay4_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Pipeline_Delay4_reg(0) <= '0';
        Pipeline_Delay4_reg(1) <= '0';
      ELSIF enb = '1' THEN
        Pipeline_Delay4_reg(0) <= Pipeline_Delay4_reg_next(0);
        Pipeline_Delay4_reg(1) <= Pipeline_Delay4_reg_next(1);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay4_process;

  gemm_sampleInValid <= Pipeline_Delay4_reg(1);
  Pipeline_Delay4_reg_next(0) <= validOut_1;
  Pipeline_Delay4_reg_next(1) <= Pipeline_Delay4_reg(0);

  outputgen3: FOR k IN 0 TO 63 GENERATE
    serialOut_signed(k) <= signed(serialOut(k));
  END GENERATE;

  Pipeline_Delay9_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        din(0) <= to_signed(16#0000#, 16);
        din(1) <= to_signed(16#0000#, 16);
        din(2) <= to_signed(16#0000#, 16);
        din(3) <= to_signed(16#0000#, 16);
        din(4) <= to_signed(16#0000#, 16);
        din(5) <= to_signed(16#0000#, 16);
        din(6) <= to_signed(16#0000#, 16);
        din(7) <= to_signed(16#0000#, 16);
        din(8) <= to_signed(16#0000#, 16);
        din(9) <= to_signed(16#0000#, 16);
        din(10) <= to_signed(16#0000#, 16);
        din(11) <= to_signed(16#0000#, 16);
        din(12) <= to_signed(16#0000#, 16);
        din(13) <= to_signed(16#0000#, 16);
        din(14) <= to_signed(16#0000#, 16);
        din(15) <= to_signed(16#0000#, 16);
        din(16) <= to_signed(16#0000#, 16);
        din(17) <= to_signed(16#0000#, 16);
        din(18) <= to_signed(16#0000#, 16);
        din(19) <= to_signed(16#0000#, 16);
        din(20) <= to_signed(16#0000#, 16);
        din(21) <= to_signed(16#0000#, 16);
        din(22) <= to_signed(16#0000#, 16);
        din(23) <= to_signed(16#0000#, 16);
        din(24) <= to_signed(16#0000#, 16);
        din(25) <= to_signed(16#0000#, 16);
        din(26) <= to_signed(16#0000#, 16);
        din(27) <= to_signed(16#0000#, 16);
        din(28) <= to_signed(16#0000#, 16);
        din(29) <= to_signed(16#0000#, 16);
        din(30) <= to_signed(16#0000#, 16);
        din(31) <= to_signed(16#0000#, 16);
        din(32) <= to_signed(16#0000#, 16);
        din(33) <= to_signed(16#0000#, 16);
        din(34) <= to_signed(16#0000#, 16);
        din(35) <= to_signed(16#0000#, 16);
        din(36) <= to_signed(16#0000#, 16);
        din(37) <= to_signed(16#0000#, 16);
        din(38) <= to_signed(16#0000#, 16);
        din(39) <= to_signed(16#0000#, 16);
        din(40) <= to_signed(16#0000#, 16);
        din(41) <= to_signed(16#0000#, 16);
        din(42) <= to_signed(16#0000#, 16);
        din(43) <= to_signed(16#0000#, 16);
        din(44) <= to_signed(16#0000#, 16);
        din(45) <= to_signed(16#0000#, 16);
        din(46) <= to_signed(16#0000#, 16);
        din(47) <= to_signed(16#0000#, 16);
        din(48) <= to_signed(16#0000#, 16);
        din(49) <= to_signed(16#0000#, 16);
        din(50) <= to_signed(16#0000#, 16);
        din(51) <= to_signed(16#0000#, 16);
        din(52) <= to_signed(16#0000#, 16);
        din(53) <= to_signed(16#0000#, 16);
        din(54) <= to_signed(16#0000#, 16);
        din(55) <= to_signed(16#0000#, 16);
        din(56) <= to_signed(16#0000#, 16);
        din(57) <= to_signed(16#0000#, 16);
        din(58) <= to_signed(16#0000#, 16);
        din(59) <= to_signed(16#0000#, 16);
        din(60) <= to_signed(16#0000#, 16);
        din(61) <= to_signed(16#0000#, 16);
        din(62) <= to_signed(16#0000#, 16);
        din(63) <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        din(0) <= serialOut_signed(0);
        din(1) <= serialOut_signed(1);
        din(2) <= serialOut_signed(2);
        din(3) <= serialOut_signed(3);
        din(4) <= serialOut_signed(4);
        din(5) <= serialOut_signed(5);
        din(6) <= serialOut_signed(6);
        din(7) <= serialOut_signed(7);
        din(8) <= serialOut_signed(8);
        din(9) <= serialOut_signed(9);
        din(10) <= serialOut_signed(10);
        din(11) <= serialOut_signed(11);
        din(12) <= serialOut_signed(12);
        din(13) <= serialOut_signed(13);
        din(14) <= serialOut_signed(14);
        din(15) <= serialOut_signed(15);
        din(16) <= serialOut_signed(16);
        din(17) <= serialOut_signed(17);
        din(18) <= serialOut_signed(18);
        din(19) <= serialOut_signed(19);
        din(20) <= serialOut_signed(20);
        din(21) <= serialOut_signed(21);
        din(22) <= serialOut_signed(22);
        din(23) <= serialOut_signed(23);
        din(24) <= serialOut_signed(24);
        din(25) <= serialOut_signed(25);
        din(26) <= serialOut_signed(26);
        din(27) <= serialOut_signed(27);
        din(28) <= serialOut_signed(28);
        din(29) <= serialOut_signed(29);
        din(30) <= serialOut_signed(30);
        din(31) <= serialOut_signed(31);
        din(32) <= serialOut_signed(32);
        din(33) <= serialOut_signed(33);
        din(34) <= serialOut_signed(34);
        din(35) <= serialOut_signed(35);
        din(36) <= serialOut_signed(36);
        din(37) <= serialOut_signed(37);
        din(38) <= serialOut_signed(38);
        din(39) <= serialOut_signed(39);
        din(40) <= serialOut_signed(40);
        din(41) <= serialOut_signed(41);
        din(42) <= serialOut_signed(42);
        din(43) <= serialOut_signed(43);
        din(44) <= serialOut_signed(44);
        din(45) <= serialOut_signed(45);
        din(46) <= serialOut_signed(46);
        din(47) <= serialOut_signed(47);
        din(48) <= serialOut_signed(48);
        din(49) <= serialOut_signed(49);
        din(50) <= serialOut_signed(50);
        din(51) <= serialOut_signed(51);
        din(52) <= serialOut_signed(52);
        din(53) <= serialOut_signed(53);
        din(54) <= serialOut_signed(54);
        din(55) <= serialOut_signed(55);
        din(56) <= serialOut_signed(56);
        din(57) <= serialOut_signed(57);
        din(58) <= serialOut_signed(58);
        din(59) <= serialOut_signed(59);
        din(60) <= serialOut_signed(60);
        din(61) <= serialOut_signed(61);
        din(62) <= serialOut_signed(62);
        din(63) <= serialOut_signed(63);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay9_process;


  outputgen2: FOR k IN 0 TO 63 GENERATE
    din_1(k) <= std_logic_vector(din(k));
  END GENERATE;

  outputgen1: FOR k IN 0 TO 63 GENERATE
    out_signed(k) <= signed(out_rsvd(k));
  END GENERATE;

  Pipeline_Delay6_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        din_2(0) <= to_signed(16#0000#, 16);
        din_2(1) <= to_signed(16#0000#, 16);
        din_2(2) <= to_signed(16#0000#, 16);
        din_2(3) <= to_signed(16#0000#, 16);
        din_2(4) <= to_signed(16#0000#, 16);
        din_2(5) <= to_signed(16#0000#, 16);
        din_2(6) <= to_signed(16#0000#, 16);
        din_2(7) <= to_signed(16#0000#, 16);
        din_2(8) <= to_signed(16#0000#, 16);
        din_2(9) <= to_signed(16#0000#, 16);
        din_2(10) <= to_signed(16#0000#, 16);
        din_2(11) <= to_signed(16#0000#, 16);
        din_2(12) <= to_signed(16#0000#, 16);
        din_2(13) <= to_signed(16#0000#, 16);
        din_2(14) <= to_signed(16#0000#, 16);
        din_2(15) <= to_signed(16#0000#, 16);
        din_2(16) <= to_signed(16#0000#, 16);
        din_2(17) <= to_signed(16#0000#, 16);
        din_2(18) <= to_signed(16#0000#, 16);
        din_2(19) <= to_signed(16#0000#, 16);
        din_2(20) <= to_signed(16#0000#, 16);
        din_2(21) <= to_signed(16#0000#, 16);
        din_2(22) <= to_signed(16#0000#, 16);
        din_2(23) <= to_signed(16#0000#, 16);
        din_2(24) <= to_signed(16#0000#, 16);
        din_2(25) <= to_signed(16#0000#, 16);
        din_2(26) <= to_signed(16#0000#, 16);
        din_2(27) <= to_signed(16#0000#, 16);
        din_2(28) <= to_signed(16#0000#, 16);
        din_2(29) <= to_signed(16#0000#, 16);
        din_2(30) <= to_signed(16#0000#, 16);
        din_2(31) <= to_signed(16#0000#, 16);
        din_2(32) <= to_signed(16#0000#, 16);
        din_2(33) <= to_signed(16#0000#, 16);
        din_2(34) <= to_signed(16#0000#, 16);
        din_2(35) <= to_signed(16#0000#, 16);
        din_2(36) <= to_signed(16#0000#, 16);
        din_2(37) <= to_signed(16#0000#, 16);
        din_2(38) <= to_signed(16#0000#, 16);
        din_2(39) <= to_signed(16#0000#, 16);
        din_2(40) <= to_signed(16#0000#, 16);
        din_2(41) <= to_signed(16#0000#, 16);
        din_2(42) <= to_signed(16#0000#, 16);
        din_2(43) <= to_signed(16#0000#, 16);
        din_2(44) <= to_signed(16#0000#, 16);
        din_2(45) <= to_signed(16#0000#, 16);
        din_2(46) <= to_signed(16#0000#, 16);
        din_2(47) <= to_signed(16#0000#, 16);
        din_2(48) <= to_signed(16#0000#, 16);
        din_2(49) <= to_signed(16#0000#, 16);
        din_2(50) <= to_signed(16#0000#, 16);
        din_2(51) <= to_signed(16#0000#, 16);
        din_2(52) <= to_signed(16#0000#, 16);
        din_2(53) <= to_signed(16#0000#, 16);
        din_2(54) <= to_signed(16#0000#, 16);
        din_2(55) <= to_signed(16#0000#, 16);
        din_2(56) <= to_signed(16#0000#, 16);
        din_2(57) <= to_signed(16#0000#, 16);
        din_2(58) <= to_signed(16#0000#, 16);
        din_2(59) <= to_signed(16#0000#, 16);
        din_2(60) <= to_signed(16#0000#, 16);
        din_2(61) <= to_signed(16#0000#, 16);
        din_2(62) <= to_signed(16#0000#, 16);
        din_2(63) <= to_signed(16#0000#, 16);
      ELSIF enb = '1' THEN
        din_2(0) <= out_signed(0);
        din_2(1) <= out_signed(1);
        din_2(2) <= out_signed(2);
        din_2(3) <= out_signed(3);
        din_2(4) <= out_signed(4);
        din_2(5) <= out_signed(5);
        din_2(6) <= out_signed(6);
        din_2(7) <= out_signed(7);
        din_2(8) <= out_signed(8);
        din_2(9) <= out_signed(9);
        din_2(10) <= out_signed(10);
        din_2(11) <= out_signed(11);
        din_2(12) <= out_signed(12);
        din_2(13) <= out_signed(13);
        din_2(14) <= out_signed(14);
        din_2(15) <= out_signed(15);
        din_2(16) <= out_signed(16);
        din_2(17) <= out_signed(17);
        din_2(18) <= out_signed(18);
        din_2(19) <= out_signed(19);
        din_2(20) <= out_signed(20);
        din_2(21) <= out_signed(21);
        din_2(22) <= out_signed(22);
        din_2(23) <= out_signed(23);
        din_2(24) <= out_signed(24);
        din_2(25) <= out_signed(25);
        din_2(26) <= out_signed(26);
        din_2(27) <= out_signed(27);
        din_2(28) <= out_signed(28);
        din_2(29) <= out_signed(29);
        din_2(30) <= out_signed(30);
        din_2(31) <= out_signed(31);
        din_2(32) <= out_signed(32);
        din_2(33) <= out_signed(33);
        din_2(34) <= out_signed(34);
        din_2(35) <= out_signed(35);
        din_2(36) <= out_signed(36);
        din_2(37) <= out_signed(37);
        din_2(38) <= out_signed(38);
        din_2(39) <= out_signed(39);
        din_2(40) <= out_signed(40);
        din_2(41) <= out_signed(41);
        din_2(42) <= out_signed(42);
        din_2(43) <= out_signed(43);
        din_2(44) <= out_signed(44);
        din_2(45) <= out_signed(45);
        din_2(46) <= out_signed(46);
        din_2(47) <= out_signed(47);
        din_2(48) <= out_signed(48);
        din_2(49) <= out_signed(49);
        din_2(50) <= out_signed(50);
        din_2(51) <= out_signed(51);
        din_2(52) <= out_signed(52);
        din_2(53) <= out_signed(53);
        din_2(54) <= out_signed(54);
        din_2(55) <= out_signed(55);
        din_2(56) <= out_signed(56);
        din_2(57) <= out_signed(57);
        din_2(58) <= out_signed(58);
        din_2(59) <= out_signed(59);
        din_2(60) <= out_signed(60);
        din_2(61) <= out_signed(61);
        din_2(62) <= out_signed(62);
        din_2(63) <= out_signed(63);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay6_process;


  outputgen: FOR k IN 0 TO 63 GENERATE
    dataOut(k) <= std_logic_vector(din_2(k));
  END GENERATE;

  Pipeline_Delay5_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Pipeline_Delay5_reg(0) <= '0';
        Pipeline_Delay5_reg(1) <= '0';
      ELSIF enb = '1' THEN
        Pipeline_Delay5_reg(0) <= Pipeline_Delay5_reg_next(0);
        Pipeline_Delay5_reg(1) <= Pipeline_Delay5_reg_next(1);
      END IF;
    END IF;
  END PROCESS Pipeline_Delay5_process;

  validIn_2 <= Pipeline_Delay5_reg(1);
  Pipeline_Delay5_reg_next(0) <= validOut_l1;
  Pipeline_Delay5_reg_next(1) <= Pipeline_Delay5_reg(0);

  validOut <= validIn_2;

END rtl;

