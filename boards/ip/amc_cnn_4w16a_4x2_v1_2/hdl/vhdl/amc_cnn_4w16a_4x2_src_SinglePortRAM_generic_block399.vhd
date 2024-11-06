-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16_4x2/amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block399.vhd
-- Created: 2024-11-05 20:03:43
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block399
-- Source Path: amc_model_w4a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage47/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block399 IS
  GENERIC( AddrWidth                      : integer := 1;
           DataWidth                      : integer := 1
           );
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        din                               :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
        addr                              :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        we                                :   IN    std_logic;  -- ufix1
        dout                              :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
        );
END amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block399;


ARCHITECTURE rtl OF amc_cnn_4w16a_4x2_src_SinglePortRAM_generic_block399 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0",
                                                        X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"0", X"d", X"4", X"0", X"e", X"f", X"3", X"a", X"1", X"0", X"2", X"1", X"d", X"2", X"1", X"4", X"d", X"f", X"1", X"0", X"e", X"1", X"0", X"d", X"1", X"1", X"0", X"0", X"0", X"0", X"0", X"e", X"e", X"0", X"0", X"1", X"c", X"f", X"2",
                                                        X"f", X"0", X"0", X"f", X"f", X"e", X"e", X"0", X"2", X"f", X"2", X"f", X"f", X"f", X"f", X"0", X"b", X"1", X"2", X"0", X"0", X"f", X"d", X"0", X"0", X"0", X"1", X"1", X"1", X"e", X"e", X"1", X"c", X"0", X"1", X"1", X"3", X"1", X"f", X"1", X"2", X"0", X"f", X"4", X"d", X"e", X"e", X"0", X"c", X"0", X"1",
                                                        X"1", X"1", X"e", X"0", X"1", X"2", X"f", X"0", X"1", X"0", X"1", X"f", X"f", X"b", X"1", X"2", X"0", X"f", X"2", X"f", X"3", X"f", X"f", X"0", X"1", X"2", X"0", X"d", X"0", X"a", X"0", X"2", X"0", X"f", X"f", X"f", X"1", X"0", X"e", X"0", X"2", X"f", X"e", X"0", X"2", X"d", X"0", X"0", X"1", X"0", X"1",
                                                        X"0", X"1", X"f", X"e", X"e", X"0", X"3", X"0", X"f", X"3", X"e", X"f", X"0", X"1", X"0", X"f", X"0", X"2", X"1", X"e", X"e", X"d", X"1", X"f", X"f", X"3", X"c", X"f", X"f", X"1", X"0", X"e", X"0", X"1", X"4", X"f", X"e", X"1", X"f", X"d", X"f", X"2", X"c", X"f", X"f", X"2", X"e", X"e", X"1", X"0", X"2",
                                                        X"e", X"e", X"2", X"f", X"e", X"e", X"f", X"d", X"0", X"0", X"2", X"f", X"e", X"f", X"0", X"2", X"0", X"0", X"1", X"f", X"f", X"0", X"f", X"c", X"1", X"f", X"1", X"d", X"e", X"f", X"f", X"1", X"f", X"1", X"f", X"0", X"0", X"0", X"f", X"a", X"0", X"0", X"2", X"e", X"1", X"d", X"1", X"0", X"d", X"3", X"f",
                                                        X"1", X"0", X"f", X"f", X"b", X"2", X"3", X"0", X"0", X"0", X"e", X"2", X"e", X"d", X"4", X"f", X"f", X"1", X"f", X"f", X"a", X"1", X"3", X"1", X"1", X"0", X"f", X"0", X"e", X"0", X"0", X"0", X"f", X"2", X"e", X"0", X"e", X"0", X"0", X"1", X"2", X"f", X"f", X"0", X"0", X"0", X"e", X"2", X"0", X"0", X"d",
                                                        X"f", X"a", X"0", X"f", X"1", X"1", X"0", X"f", X"0", X"1", X"1", X"d", X"0", X"3", X"f", X"f", X"1", X"e", X"0", X"0", X"0", X"0", X"0", X"1", X"2", X"3", X"f", X"d", X"6", X"0", X"e", X"f", X"2", X"f", X"f", X"0", X"1", X"f", X"f", X"0", X"0", X"3", X"e", X"f", X"1", X"1", X"0", X"e", X"3", X"d", X"0",
                                                        X"1", X"1", X"f", X"0", X"1", X"1", X"1", X"d", X"0", X"1", X"0", X"e", X"e", X"2", X"a", X"0", X"2", X"2", X"2", X"f", X"1", X"1", X"3", X"f", X"0", X"1", X"0", X"e", X"0", X"1", X"b", X"1", X"1", X"2", X"1", X"0", X"d", X"1", X"2", X"0", X"2", X"2", X"1", X"e", X"1", X"f", X"b", X"1", X"f", X"0", X"f",
                                                        X"f", X"c", X"e", X"2", X"0", X"3", X"0", X"f", X"f", X"2", X"d", X"a", X"1", X"1", X"0", X"1", X"2", X"d", X"1", X"c", X"c", X"2", X"e", X"1", X"f", X"1", X"f", X"a", X"2", X"3", X"1", X"0", X"0", X"f", X"1", X"0", X"e", X"1", X"f", X"0", X"d", X"0", X"2", X"c", X"1", X"1", X"1", X"0", X"1", X"1", X"0",
                                                        X"e", X"c", X"d", X"2", X"3", X"e", X"e", X"2", X"d", X"0", X"f", X"2", X"1", X"f", X"2", X"1", X"5", X"f", X"a", X"1", X"e", X"f", X"e", X"2", X"e", X"f", X"1", X"2", X"2", X"f", X"2", X"1", X"4", X"f", X"b", X"1", X"0", X"e", X"e", X"2", X"e", X"f", X"0", X"0", X"3", X"f", X"3", X"1", X"1", X"0", X"e",
                                                        X"0", X"2", X"f", X"d", X"1", X"c", X"0", X"f", X"0", X"3", X"0", X"1", X"0", X"4", X"1", X"1", X"2", X"1", X"e", X"e", X"1", X"a", X"0", X"2", X"0", X"1", X"0", X"f", X"0", X"0", X"e", X"2", X"2", X"1", X"f", X"e", X"1", X"c", X"1", X"0", X"1", X"1", X"f", X"f", X"1", X"0", X"d", X"1", X"f", X"0", X"1",
                                                        X"f", X"f", X"c", X"1", X"2", X"0", X"1", X"f", X"d", X"1", X"0", X"e", X"0", X"3", X"0", X"0", X"0", X"0", X"d", X"0", X"0", X"0", X"e", X"0", X"d", X"1", X"f", X"e", X"f", X"f", X"e", X"0", X"0", X"f", X"b", X"0", X"1", X"0", X"f", X"0", X"e", X"3", X"e", X"d", X"f", X"2", X"1", X"1", X"1", X"0", X"c",
                                                        X"1", X"2", X"f", X"e", X"f", X"e", X"2", X"f", X"d", X"f", X"1", X"f", X"0", X"0", X"1", X"c", X"1", X"1", X"1", X"0", X"0", X"e", X"0", X"0", X"f", X"0", X"0", X"f", X"e", X"f", X"1", X"d", X"0", X"1", X"1", X"1", X"0", X"0", X"0", X"f", X"d", X"0", X"2", X"f", X"1", X"e", X"2", X"b", X"0", X"0", X"1",
                                                        X"3", X"f", X"0", X"1", X"2", X"e", X"e", X"1", X"e", X"0", X"f", X"1", X"a", X"f", X"0", X"2", X"1", X"f", X"0", X"1", X"2", X"e", X"e", X"4", X"d", X"f", X"e", X"2", X"b", X"0", X"0", X"1", X"1", X"0", X"f", X"2", X"0", X"f", X"1", X"0", X"4", X"e", X"e", X"f", X"d", X"0", X"1", X"1", X"0", X"0", X"0",
                                                        X"0", X"0", X"e", X"1", X"2", X"2", X"e", X"f", X"f", X"a", X"1", X"2", X"1", X"e", X"1", X"e", X"f", X"f", X"e", X"1", X"f", X"2", X"0", X"0", X"3", X"e", X"0", X"0", X"1", X"f", X"1", X"f", X"f", X"f", X"e", X"0", X"e", X"1", X"0", X"f", X"2", X"e", X"0", X"1", X"2", X"f", X"1", X"0", X"0", X"0", X"d",
                                                        X"0", X"2", X"1", X"1", X"0", X"1", X"c", X"1", X"1", X"2", X"e", X"f", X"f", X"0", X"0", X"e", X"0", X"1", X"f", X"1", X"0", X"2", X"e", X"0", X"f", X"3", X"d", X"0", X"0", X"0", X"1", X"d", X"0", X"0", X"1", X"e", X"f", X"2", X"c", X"0", X"1", X"2", X"e", X"d", X"f", X"d", X"f", X"d", X"2", X"f", X"f",
                                                        X"f", X"0", X"1", X"d", X"f", X"2", X"1", X"0", X"0", X"e", X"f", X"1", X"d", X"1", X"0", X"1", X"f", X"0", X"1", X"f", X"0", X"2", X"1", X"f", X"1", X"f", X"e", X"e", X"d", X"0", X"2", X"f", X"0", X"f", X"1", X"d", X"0", X"1", X"2", X"0", X"f", X"0", X"0", X"0", X"f", X"f", X"e", X"1", X"0", X"e", X"1",
                                                        X"d", X"0", X"0", X"1", X"1", X"0", X"0", X"1", X"f", X"0", X"f", X"2", X"1", X"0", X"c", X"2", X"e", X"1", X"f", X"0", X"1", X"f", X"f", X"2", X"0", X"0", X"d", X"2", X"0", X"f", X"f", X"2", X"0", X"0", X"1", X"0", X"1", X"0", X"f", X"1", X"0", X"e", X"0", X"1", X"0", X"f", X"0", X"0", X"1", X"0", X"1",
                                                        X"f", X"1", X"0", X"c", X"1", X"2", X"0", X"2", X"2", X"2", X"f", X"0", X"0", X"a", X"1", X"1", X"1", X"1", X"0", X"e", X"1", X"1", X"0", X"f", X"0", X"1", X"e", X"f", X"1", X"c", X"0", X"0", X"f", X"2", X"0", X"e", X"1", X"f", X"f", X"f", X"3", X"d", X"f", X"f", X"f", X"b", X"1", X"1", X"0", X"2", X"1",
                                                        X"d", X"1", X"f", X"0", X"f", X"3", X"f", X"e", X"f", X"2", X"d", X"1", X"1", X"1", X"1", X"0", X"f", X"2", X"0", X"f", X"1", X"2", X"1", X"d", X"e", X"0", X"d", X"0", X"0", X"0", X"0", X"0", X"e", X"1", X"0", X"e", X"1", X"1", X"2", X"e", X"f", X"3", X"f", X"1", X"0", X"0", X"f", X"f", X"f", X"2", X"2",
                                                        X"f", X"0", X"1", X"1", X"e", X"e", X"1", X"b", X"1", X"0", X"f", X"0", X"0", X"1", X"3", X"1", X"f", X"f", X"f", X"0", X"0", X"0", X"1", X"c", X"1", X"0", X"1", X"0", X"f", X"1", X"2", X"2", X"0", X"d", X"0", X"e", X"0", X"0", X"3", X"d", X"0", X"1", X"1", X"1", X"0", X"f", X"3", X"4", X"e", X"e", X"2",
                                                        X"1", X"0", X"0", X"f", X"e", X"1", X"2", X"2", X"1", X"1", X"0", X"1", X"0", X"f", X"f", X"3", X"0", X"e", X"f", X"0", X"c", X"0", X"0", X"0", X"1", X"0", X"f", X"0", X"0", X"e", X"2", X"1", X"f", X"e", X"f", X"0", X"c", X"f", X"2", X"1", X"1", X"0", X"f", X"0", X"e", X"d", X"f", X"0", X"0", X"f", X"0",
                                                        X"f", X"e", X"f", X"0", X"1", X"3", X"f", X"0", X"f", X"f", X"d", X"e", X"1", X"2", X"0", X"0", X"0", X"d", X"0", X"1", X"3", X"f", X"f", X"f", X"0", X"1", X"d", X"f", X"d", X"e", X"1", X"1", X"0", X"d", X"1", X"0", X"1", X"0", X"0", X"0", X"0", X"0", X"e", X"2", X"1", X"d", X"f", X"0", X"0", X"f", X"1",
                                                        X"1", X"2", X"0", X"0", X"0", X"0", X"0", X"f", X"0", X"0", X"3", X"f", X"f", X"0", X"b", X"0", X"1", X"2", X"0", X"e", X"1", X"f", X"2", X"0", X"f", X"2", X"1", X"f", X"e", X"1", X"c", X"f", X"1", X"1", X"f", X"e", X"1", X"e", X"0", X"f", X"0", X"2", X"0", X"f", X"d", X"2", X"b", X"f", X"1", X"1", X"2",
                                                        X"e", X"f", X"f", X"2", X"1", X"f", X"2", X"1", X"1", X"e", X"1", X"b", X"0", X"1", X"1", X"f", X"1", X"f", X"0", X"f", X"e", X"e", X"2", X"0", X"1", X"e", X"2", X"b", X"0", X"1", X"2", X"f", X"f", X"d", X"1", X"0", X"d", X"1", X"2", X"0", X"1", X"f", X"0", X"d", X"0", X"2", X"2", X"f", X"1", X"0", X"2",
                                                        X"2", X"d", X"2", X"1", X"1", X"f", X"e", X"1", X"b", X"0", X"1", X"3", X"0", X"f", X"0", X"f", X"1", X"e", X"2", X"f", X"0", X"0", X"0", X"2", X"d", X"0", X"1", X"2", X"0", X"f", X"e", X"0", X"4", X"d", X"3", X"f", X"e", X"f", X"0", X"2", X"c", X"0", X"1", X"0", X"0", X"f", X"f", X"f", X"0", X"d", X"0",
                                                        X"4", X"f", X"e", X"0", X"0", X"a", X"0", X"0", X"1", X"f", X"0", X"d", X"1", X"0", X"f", X"e", X"f", X"1", X"e", X"0", X"f", X"b", X"1", X"0", X"1", X"0", X"0", X"e", X"1", X"1", X"0", X"d", X"1", X"4", X"d", X"0", X"f", X"c", X"0", X"2", X"1", X"1", X"1", X"d", X"f", X"e", X"e", X"f", X"0", X"2", X"f",
                                                        X"0", X"0", X"c", X"1", X"2", X"0", X"2", X"f", X"f", X"1", X"1", X"d", X"2", X"2", X"0", X"e", X"f", X"2", X"f", X"0", X"0", X"0", X"1", X"f", X"0", X"0", X"1", X"e", X"3", X"1", X"0", X"f", X"e", X"3", X"1", X"1", X"0", X"0", X"2", X"0", X"2", X"0", X"2", X"0", X"1", X"0", X"d", X"f", X"f", X"4", X"d",
                                                        X"0", X"1", X"0", X"1", X"f", X"0", X"3", X"1", X"0", X"0", X"2", X"2", X"f", X"0", X"2", X"c", X"1", X"f", X"1", X"0", X"1", X"0", X"2", X"1", X"f", X"e", X"1", X"0", X"1", X"e", X"1", X"b", X"1", X"2", X"0", X"f", X"f", X"f", X"1", X"f", X"0", X"f", X"1", X"e", X"f", X"f", X"0", X"b", X"f", X"1", X"2",
                                                        X"1", X"e", X"f", X"1", X"f", X"e", X"d", X"3", X"1", X"0", X"d", X"f", X"a", X"0", X"0", X"0", X"1", X"0", X"d", X"1", X"f", X"0", X"f", X"1", X"0", X"d", X"f", X"f", X"d", X"0", X"f", X"f", X"2", X"0", X"d", X"f", X"e", X"c", X"4", X"0", X"1", X"f", X"f", X"f", X"d", X"0", X"1", X"f", X"2", X"f", X"f",
                                                        X"1", X"f", X"e", X"3", X"0", X"2", X"e", X"f", X"1", X"e", X"0", X"2", X"0", X"1", X"0", X"0", X"0", X"f", X"e", X"1", X"0", X"3", X"c", X"0", X"2", X"c", X"f", X"2", X"1", X"0", X"f", X"1", X"3", X"3", X"0", X"f", X"0", X"d", X"f", X"0", X"3", X"f", X"f", X"1", X"2", X"0", X"0", X"0", X"2", X"1", X"f",
                                                        X"f", X"e", X"c", X"0", X"e", X"4", X"e", X"f", X"2", X"1", X"2", X"d", X"1", X"1", X"1", X"e", X"0", X"e", X"d", X"0", X"f", X"1", X"e", X"0", X"1", X"1", X"0", X"f", X"0", X"f", X"e", X"c", X"d", X"e", X"0", X"1", X"e", X"f", X"c", X"f", X"1", X"1", X"e", X"f", X"0", X"f", X"0", X"e", X"d", X"0", X"2",
                                                        X"f", X"e", X"2", X"c", X"f", X"1", X"2", X"e", X"f", X"e", X"0", X"1", X"e", X"f", X"1", X"0", X"0", X"e", X"1", X"f", X"0", X"0", X"1", X"f", X"e", X"0", X"0", X"2", X"e", X"0", X"1", X"0", X"f", X"f", X"1", X"d", X"1", X"0", X"1", X"0", X"0", X"0", X"0", X"0", X"e", X"2", X"1", X"d", X"f", X"1", X"1",
                                                        X"0", X"1", X"1", X"1", X"2", X"f", X"f", X"0", X"0", X"d", X"1", X"2", X"f", X"f", X"0", X"2", X"c", X"0", X"1", X"1", X"1", X"0", X"f", X"e", X"0", X"d", X"1", X"0", X"0", X"0", X"0", X"3", X"c", X"f", X"0", X"0", X"1", X"0", X"e", X"f", X"f", X"c", X"0", X"f", X"1", X"e", X"0", X"1", X"b", X"0", X"0",
                                                        X"0", X"1", X"f", X"1", X"1", X"0", X"d", X"0", X"e", X"f", X"f", X"0", X"2", X"c", X"0", X"0", X"1", X"f", X"f", X"f", X"1", X"1", X"e", X"1", X"2", X"0", X"f", X"f", X"e", X"b", X"0", X"0", X"1", X"f", X"f", X"f", X"1", X"1", X"e", X"f", X"0", X"1", X"e", X"e", X"e", X"c", X"f", X"f", X"1", X"e", X"f",
                                                        X"e", X"f", X"1", X"d", X"1", X"0", X"3", X"f", X"f", X"0", X"b", X"0", X"1", X"1", X"f", X"0", X"f", X"f", X"0", X"d", X"1", X"1", X"f", X"0", X"f", X"2", X"b", X"0", X"1", X"4", X"1", X"e", X"1", X"0", X"1", X"e", X"1", X"1", X"0", X"e", X"e", X"1", X"c", X"0", X"f", X"2", X"0", X"e", X"0", X"f", X"3",
                                                        X"e", X"2", X"0", X"0", X"f", X"e", X"3", X"d", X"0", X"0", X"1", X"1", X"e", X"1", X"0", X"3", X"f", X"e", X"4", X"f", X"f", X"f", X"2", X"d", X"0", X"0", X"2", X"1", X"e", X"0", X"1", X"1", X"0", X"f", X"0", X"1", X"0", X"f", X"0", X"d", X"0", X"1", X"f", X"1", X"f", X"0", X"2", X"2", X"f", X"b", X"f",
                                                        X"0", X"e", X"f", X"e", X"c", X"0", X"2", X"0", X"0", X"0", X"f", X"2", X"1", X"0", X"0", X"e", X"1", X"e", X"f", X"e", X"b", X"0", X"1", X"f", X"2", X"0", X"c", X"3", X"0", X"f", X"3", X"2", X"1", X"e", X"0", X"0", X"a", X"1", X"2", X"1", X"1", X"1", X"d", X"2", X"0", X"f", X"3", X"1", X"1", X"f", X"0",
                                                        X"1", X"c", X"1", X"f", X"1", X"0", X"0", X"f", X"1", X"1", X"0", X"1", X"f", X"0", X"0", X"e", X"2", X"d", X"0", X"1", X"1", X"f", X"f", X"0", X"f", X"f", X"e", X"f", X"e", X"e", X"1", X"e", X"3", X"d", X"e", X"1", X"2", X"0", X"e", X"0", X"1", X"1", X"0", X"b", X"1", X"e", X"1", X"a", X"2", X"a", X"d",
                                                        X"1", X"3", X"0", X"d", X"1", X"1", X"f", X"f");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f";
  SIGNAL addr_unsigned                    : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width

BEGIN
  addr_unsigned <= unsigned(addr);

  SinglePortRAM_generic_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF we = '1' THEN
          ram(to_integer(addr_unsigned)) <= din;
          data_int <= din;
        ELSE
          data_int <= ram(to_integer(addr_unsigned));
        END IF;
      END IF;
    END IF;
  END PROCESS SinglePortRAM_generic_process;

  dout <= data_int;

END rtl;
