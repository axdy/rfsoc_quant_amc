-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_BRAM_Storage_Layer_2.vhd
-- Created: 2023-06-15 16:02:54
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_BRAM_Storage_Layer_2
-- Source Path: amc_model_w4a16/DUT HDL/Conv Layer 2/BRAM Storage Layer 2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_4w16a_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_4w16a_src_BRAM_Storage_Layer_2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        vectorIn                          :   IN    vector_of_std_logic_vector16(0 TO 63);  -- int16 [64]
        wr_addr                           :   IN    std_logic_vector(8 DOWNTO 0);  -- ufix9
        wr_en                             :   IN    std_logic;
        rd_addr                           :   IN    std_logic_vector(8 DOWNTO 0);  -- ufix9
        validIn                           :   IN    std_logic;
        vectorOut                         :   OUT   vector_of_std_logic_vector16(0 TO 63);  -- int16 [64]
        validOut                          :   OUT   std_logic
        );
END amc_cnn_4w16a_src_BRAM_Storage_Layer_2;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_BRAM_Storage_Layer_2 IS

  -- Component Declarations
  COMPONENT amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          wr_din                          :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          wr_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          wr_en                           :   IN    std_logic;
          rd_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          wr_dout                         :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          rd_dout                         :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_4w16a_src_DualPortRAM_generic
    USE ENTITY work.amc_cnn_4w16a_src_DualPortRAM_generic(rtl);

  -- Signals
  SIGNAL vectorIn_signed                  : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]
  SIGNAL RAM_0_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM1_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM2_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM3_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM4_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM5_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM6_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM7_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM8_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM9_out1                        : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM10_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM11_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM12_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM13_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM14_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM15_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM16_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM17_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM18_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM19_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM20_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM21_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM22_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM23_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM24_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM25_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM26_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM27_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM28_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM29_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM30_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM31_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM32_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM33_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM34_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM35_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM36_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM37_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM38_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM39_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM40_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM41_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM42_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM43_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM44_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM45_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM46_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM47_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM48_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM49_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM50_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM51_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM52_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM53_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM54_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM55_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM56_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM57_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM58_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM59_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM60_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM61_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM62_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL RAM63_out1                       : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Vector_Concatenate_out1          : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]
  SIGNAL Delay_out1                       : std_logic;

BEGIN
  u_RAM_0 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(0),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM_0_out1,
              rd_dout => Vector_Concatenate_out1(0)
              );

  u_RAM1 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(1),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM1_out1,
              rd_dout => Vector_Concatenate_out1(1)
              );

  u_RAM2 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(2),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM2_out1,
              rd_dout => Vector_Concatenate_out1(2)
              );

  u_RAM3 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(3),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM3_out1,
              rd_dout => Vector_Concatenate_out1(3)
              );

  u_RAM4 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(4),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM4_out1,
              rd_dout => Vector_Concatenate_out1(4)
              );

  u_RAM5 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(5),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM5_out1,
              rd_dout => Vector_Concatenate_out1(5)
              );

  u_RAM6 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(6),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM6_out1,
              rd_dout => Vector_Concatenate_out1(6)
              );

  u_RAM7 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(7),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM7_out1,
              rd_dout => Vector_Concatenate_out1(7)
              );

  u_RAM8 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(8),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM8_out1,
              rd_dout => Vector_Concatenate_out1(8)
              );

  u_RAM9 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(9),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM9_out1,
              rd_dout => Vector_Concatenate_out1(9)
              );

  u_RAM10 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(10),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM10_out1,
              rd_dout => Vector_Concatenate_out1(10)
              );

  u_RAM11 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(11),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM11_out1,
              rd_dout => Vector_Concatenate_out1(11)
              );

  u_RAM12 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(12),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM12_out1,
              rd_dout => Vector_Concatenate_out1(12)
              );

  u_RAM13 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(13),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM13_out1,
              rd_dout => Vector_Concatenate_out1(13)
              );

  u_RAM14 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(14),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM14_out1,
              rd_dout => Vector_Concatenate_out1(14)
              );

  u_RAM15 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(15),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM15_out1,
              rd_dout => Vector_Concatenate_out1(15)
              );

  u_RAM16 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(16),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM16_out1,
              rd_dout => Vector_Concatenate_out1(16)
              );

  u_RAM17 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(17),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM17_out1,
              rd_dout => Vector_Concatenate_out1(17)
              );

  u_RAM18 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(18),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM18_out1,
              rd_dout => Vector_Concatenate_out1(18)
              );

  u_RAM19 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(19),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM19_out1,
              rd_dout => Vector_Concatenate_out1(19)
              );

  u_RAM20 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(20),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM20_out1,
              rd_dout => Vector_Concatenate_out1(20)
              );

  u_RAM21 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(21),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM21_out1,
              rd_dout => Vector_Concatenate_out1(21)
              );

  u_RAM22 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(22),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM22_out1,
              rd_dout => Vector_Concatenate_out1(22)
              );

  u_RAM23 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(23),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM23_out1,
              rd_dout => Vector_Concatenate_out1(23)
              );

  u_RAM24 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(24),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM24_out1,
              rd_dout => Vector_Concatenate_out1(24)
              );

  u_RAM25 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(25),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM25_out1,
              rd_dout => Vector_Concatenate_out1(25)
              );

  u_RAM26 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(26),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM26_out1,
              rd_dout => Vector_Concatenate_out1(26)
              );

  u_RAM27 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(27),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM27_out1,
              rd_dout => Vector_Concatenate_out1(27)
              );

  u_RAM28 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(28),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM28_out1,
              rd_dout => Vector_Concatenate_out1(28)
              );

  u_RAM29 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(29),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM29_out1,
              rd_dout => Vector_Concatenate_out1(29)
              );

  u_RAM30 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(30),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM30_out1,
              rd_dout => Vector_Concatenate_out1(30)
              );

  u_RAM31 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(31),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM31_out1,
              rd_dout => Vector_Concatenate_out1(31)
              );

  u_RAM32 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(32),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM32_out1,
              rd_dout => Vector_Concatenate_out1(32)
              );

  u_RAM33 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(33),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM33_out1,
              rd_dout => Vector_Concatenate_out1(33)
              );

  u_RAM34 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(34),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM34_out1,
              rd_dout => Vector_Concatenate_out1(34)
              );

  u_RAM35 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(35),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM35_out1,
              rd_dout => Vector_Concatenate_out1(35)
              );

  u_RAM36 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(36),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM36_out1,
              rd_dout => Vector_Concatenate_out1(36)
              );

  u_RAM37 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(37),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM37_out1,
              rd_dout => Vector_Concatenate_out1(37)
              );

  u_RAM38 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(38),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM38_out1,
              rd_dout => Vector_Concatenate_out1(38)
              );

  u_RAM39 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(39),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM39_out1,
              rd_dout => Vector_Concatenate_out1(39)
              );

  u_RAM40 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(40),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM40_out1,
              rd_dout => Vector_Concatenate_out1(40)
              );

  u_RAM41 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(41),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM41_out1,
              rd_dout => Vector_Concatenate_out1(41)
              );

  u_RAM42 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(42),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM42_out1,
              rd_dout => Vector_Concatenate_out1(42)
              );

  u_RAM43 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(43),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM43_out1,
              rd_dout => Vector_Concatenate_out1(43)
              );

  u_RAM44 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(44),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM44_out1,
              rd_dout => Vector_Concatenate_out1(44)
              );

  u_RAM45 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(45),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM45_out1,
              rd_dout => Vector_Concatenate_out1(45)
              );

  u_RAM46 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(46),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM46_out1,
              rd_dout => Vector_Concatenate_out1(46)
              );

  u_RAM47 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(47),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM47_out1,
              rd_dout => Vector_Concatenate_out1(47)
              );

  u_RAM48 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(48),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM48_out1,
              rd_dout => Vector_Concatenate_out1(48)
              );

  u_RAM49 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(49),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM49_out1,
              rd_dout => Vector_Concatenate_out1(49)
              );

  u_RAM50 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(50),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM50_out1,
              rd_dout => Vector_Concatenate_out1(50)
              );

  u_RAM51 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(51),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM51_out1,
              rd_dout => Vector_Concatenate_out1(51)
              );

  u_RAM52 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(52),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM52_out1,
              rd_dout => Vector_Concatenate_out1(52)
              );

  u_RAM53 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(53),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM53_out1,
              rd_dout => Vector_Concatenate_out1(53)
              );

  u_RAM54 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(54),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM54_out1,
              rd_dout => Vector_Concatenate_out1(54)
              );

  u_RAM55 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(55),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM55_out1,
              rd_dout => Vector_Concatenate_out1(55)
              );

  u_RAM56 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(56),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM56_out1,
              rd_dout => Vector_Concatenate_out1(56)
              );

  u_RAM57 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(57),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM57_out1,
              rd_dout => Vector_Concatenate_out1(57)
              );

  u_RAM58 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(58),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM58_out1,
              rd_dout => Vector_Concatenate_out1(58)
              );

  u_RAM59 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(59),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM59_out1,
              rd_dout => Vector_Concatenate_out1(59)
              );

  u_RAM60 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(60),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM60_out1,
              rd_dout => Vector_Concatenate_out1(60)
              );

  u_RAM61 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(61),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM61_out1,
              rd_dout => Vector_Concatenate_out1(61)
              );

  u_RAM62 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(62),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM62_out1,
              rd_dout => Vector_Concatenate_out1(62)
              );

  u_RAM63 : amc_cnn_4w16a_src_DualPortRAM_generic
    GENERIC MAP( AddrWidth => 9,
                 DataWidth => 16
                 )
    PORT MAP( clk => clk,
              enb => enb,
              wr_din => vectorIn_signed(63),
              wr_addr => wr_addr,
              wr_en => wr_en,
              rd_addr => rd_addr,
              wr_dout => RAM63_out1,
              rd_dout => Vector_Concatenate_out1(63)
              );

  vectorIn_signed <= vectorIn;


  Delay_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        Delay_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay_out1 <= validIn;
      END IF;
    END IF;
  END PROCESS Delay_process;


  validOut <= Delay_out1;

  vectorOut <= Vector_Concatenate_out1;

END rtl;

