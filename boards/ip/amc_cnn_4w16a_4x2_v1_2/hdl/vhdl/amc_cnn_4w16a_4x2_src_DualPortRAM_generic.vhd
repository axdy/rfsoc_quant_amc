-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16_4x2/amc_cnn_4w16a_4x2_src_DualPortRAM_generic.vhd
-- Created: 2024-11-05 20:03:35
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_4x2_src_DualPortRAM_generic
-- Source Path: amc_model_w4a16_4x2/DUT HDL/Conv Layer 2/BRAM Storage Layer 2/DualPortRAM_generic
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_4x2_src_DualPortRAM_generic IS
  GENERIC( AddrWidth                      : integer := 1;
           DataWidth                      : integer := 1
           );
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        wr_din                            :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
        wr_addr                           :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        wr_en                             :   IN    std_logic;  -- ufix1
        rd_addr                           :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        wr_dout                           :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
        rd_dout                           :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
        );
END amc_cnn_4w16a_4x2_src_DualPortRAM_generic;


ARCHITECTURE rtl OF amc_cnn_4w16a_4x2_src_DualPortRAM_generic IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (OTHERS => (OTHERS => '0'));
  SIGNAL dout_b                           : std_logic_vector(DataWidth - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL dout_a                           : std_logic_vector(DataWidth - 1 DOWNTO 0) := (OTHERS => '0');
  SIGNAL wr_addr_unsigned                 : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width
  SIGNAL rd_addr_unsigned                 : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width

BEGIN
  wr_addr_unsigned <= unsigned(wr_addr);

  rd_addr_unsigned <= unsigned(rd_addr);

  DualPortRAM_generic_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF wr_en = '1' THEN
          ram(to_integer(wr_addr_unsigned)) <= wr_din;
          dout_a <= wr_din;
        ELSE
          dout_a <= ram(to_integer(wr_addr_unsigned));
        END IF;
        dout_b <= ram(to_integer(rd_addr_unsigned));
      END IF;
    END IF;
  END PROCESS DualPortRAM_generic_process;

  rd_dout <= dout_b;
  wr_dout <= dout_a;

END rtl;

