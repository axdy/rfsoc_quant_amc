-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block362.vhd
-- Created: 2024-11-05 16:19:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block362
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage13/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block362 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block362;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block362 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"02", X"fe", X"01", X"ff", X"01", X"00", X"02", X"ff", X"01", X"02", X"fd", X"02", X"00",
                                                        X"fe", X"02", X"ff", X"02", X"00", X"fd", X"ff", X"02", X"ff", X"02", X"fe", X"01", X"02", X"fe", X"01", X"fe", X"01", X"02", X"fe", X"00", X"01", X"ff", X"00", X"01", X"00", X"01",
                                                        X"ff", X"01", X"fe", X"fe", X"fe", X"00", X"fd", X"02", X"fe", X"02", X"fd", X"00", X"00", X"ff", X"fd", X"02", X"01", X"ff", X"02", X"02", X"00", X"00", X"01", X"fe", X"00", X"fe",
                                                        X"ff", X"fe", X"fe", X"fe", X"fd", X"fe", X"01", X"01", X"02", X"00", X"ff", X"00", X"ff", X"00", X"fd", X"00", X"fe", X"01", X"00", X"ff", X"fe", X"03", X"00", X"00", X"fe", X"02",
                                                        X"ff", X"02", X"02", X"fe", X"02", X"fd", X"fe", X"ff", X"00", X"01", X"02", X"fe", X"01", X"03", X"01", X"fe", X"01", X"02", X"01", X"fe", X"01", X"00", X"00", X"fd", X"fe", X"02",
                                                        X"fe", X"00", X"01", X"fe", X"ff", X"ff", X"02", X"01", X"ff", X"01", X"fe", X"ff", X"fe", X"01", X"00", X"00", X"01", X"ff", X"01", X"fe", X"01", X"fd", X"fe", X"fe", X"fe", X"02",
                                                        X"00", X"00", X"02", X"00", X"03", X"fe", X"01", X"00", X"fe", X"01", X"fd", X"02", X"ff", X"00", X"fd", X"fe", X"01", X"01", X"ff", X"02", X"ff", X"02", X"fd", X"01", X"ff", X"ff",
                                                        X"fe", X"02", X"00", X"01", X"02", X"ff", X"ff", X"fe", X"01", X"fe", X"fd", X"ff", X"02", X"02", X"01", X"00", X"ff", X"fe", X"fe", X"ff", X"fd", X"01", X"02", X"00", X"00", X"01",
                                                        X"ff", X"01", X"fe", X"ff", X"fd", X"ff", X"01", X"fe", X"01", X"fe", X"01", X"ff", X"ff", X"00", X"03", X"ff", X"00", X"02", X"00", X"ff", X"ff", X"01", X"fd", X"03", X"fd", X"02",
                                                        X"fd", X"02", X"fd", X"02", X"fe", X"fe", X"01", X"fe", X"fe", X"00", X"fe", X"fe", X"fe", X"00", X"03", X"fd", X"ff", X"fe", X"fe", X"01", X"01", X"02", X"01", X"fe", X"fe", X"02",
                                                        X"ff", X"fd", X"ff", X"fd", X"fe", X"fe", X"02", X"fd", X"ff", X"fe", X"fd", X"fd", X"00", X"00", X"02", X"fe", X"00", X"02", X"02", X"fe", X"ff", X"01", X"fd", X"fd", X"ff", X"fd",
                                                        X"fd", X"ff", X"02", X"00", X"fe", X"00", X"01", X"fd", X"02", X"ff", X"00", X"ff", X"02", X"ff", X"fe", X"02", X"fe", X"fe", X"02", X"02", X"fe", X"00", X"ff", X"ff", X"01", X"00",
                                                        X"03", X"fd", X"fe", X"fe", X"01", X"01", X"fe", X"01", X"02", X"02", X"ff", X"fe", X"ff", X"fe", X"00", X"ff", X"fd", X"ff", X"01", X"fd", X"ff", X"02", X"00", X"00", X"02", X"00",
                                                        X"00", X"fe", X"fe", X"fd", X"02", X"fe", X"ff", X"ff", X"02", X"01", X"fd", X"fd", X"01", X"02", X"ff", X"00", X"00", X"00", X"fd", X"ff", X"01", X"fd", X"ff", X"ff", X"00", X"00",
                                                        X"fd", X"00", X"00", X"fe", X"01", X"fd", X"ff", X"fe", X"fe", X"ff", X"ff", X"fe", X"00", X"02", X"ff", X"00", X"01", X"fe", X"fe", X"02", X"02", X"fe", X"fe", X"03", X"00", X"fe",
                                                        X"fe", X"ff", X"00", X"ff", X"ff", X"01", X"02", X"fe", X"fe", X"02", X"fe", X"ff", X"ff", X"fe", X"00", X"fd", X"00", X"02", X"fd", X"fe", X"01", X"fd", X"00", X"01", X"01", X"02",
                                                        X"02", X"fe", X"02", X"00", X"fd", X"fe", X"ff", X"02", X"00", X"ff", X"fe", X"01", X"00", X"ff", X"01", X"00", X"ff", X"01", X"01", X"02", X"02", X"fe", X"00", X"ff", X"02", X"ff",
                                                        X"01", X"ff", X"fd", X"fe", X"fe", X"00", X"01", X"fd", X"fe", X"fe", X"02", X"fd", X"ff", X"01", X"00", X"01", X"02", X"fe", X"fd", X"ff", X"01", X"02", X"fe", X"fd", X"00", X"ff",
                                                        X"fe", X"ff", X"fe", X"00", X"00", X"fd", X"fe", X"01", X"02", X"fd", X"01", X"02", X"00", X"ff", X"00", X"ff", X"ff", X"fe", X"fe", X"ff", X"fd", X"01", X"ff", X"00", X"fe", X"ff",
                                                        X"01", X"00", X"ff", X"01", X"fd", X"ff", X"00", X"fd", X"01", X"fd", X"ff", X"02", X"00", X"02", X"fe", X"02", X"ff", X"00", X"00", X"02", X"fe", X"ff", X"00", X"01", X"fe", X"fe",
                                                        X"00", X"00", X"02", X"00", X"03", X"00", X"02", X"00", X"02", X"02", X"01", X"01", X"ff", X"fe", X"fd", X"01", X"01", X"ff", X"ff", X"01", X"ff", X"fe", X"ff", X"02", X"01", X"00",
                                                        X"fe", X"fe", X"01", X"fe", X"00", X"ff", X"02", X"fe", X"02", X"00", X"00", X"ff", X"00", X"ff", X"fe", X"fe", X"01", X"fd", X"01", X"01", X"ff", X"fe", X"fd", X"00", X"fe", X"02",
                                                        X"ff", X"02", X"fd", X"00", X"01", X"fe", X"00", X"01", X"02", X"00", X"fe", X"fd", X"02", X"ff", X"00", X"00", X"00", X"ff", X"ff", X"fd", X"02", X"ff", X"02", X"01", X"fd", X"02",
                                                        X"02", X"00", X"ff", X"fe", X"01", X"fe", X"00", X"ff", X"ff", X"01", X"01", X"ff", X"ff", X"00", X"ff", X"01", X"02", X"00", X"fd", X"fd", X"01", X"02", X"ff", X"00", X"fd", X"00",
                                                        X"ff", X"fe", X"ff", X"00", X"02", X"02", X"01", X"03", X"fe", X"01", X"02", X"01", X"01", X"ff", X"fe", X"01", X"ff", X"fd", X"fe", X"fe", X"02", X"fd", X"fe", X"fe", X"03", X"02",
                                                        X"02", X"01", X"00", X"ff", X"00", X"01", X"fe", X"01", X"fd", X"00", X"ff", X"fd", X"ff", X"00", X"fe", X"02", X"00", X"01", X"02", X"fe", X"ff", X"00", X"02", X"00", X"fe", X"01",
                                                        X"fe", X"02", X"fe", X"ff", X"02", X"00", X"02", X"fe", X"00", X"fe", X"02", X"01", X"02", X"00", X"00", X"01", X"fe", X"ff", X"fd", X"03", X"00", X"ff", X"00", X"fd", X"03", X"ff",
                                                        X"00", X"01", X"02", X"fe", X"ff", X"01", X"02", X"fd", X"fd", X"fe", X"00", X"01", X"ff", X"03", X"fe", X"fe", X"fe", X"00", X"fe", X"02", X"fd", X"ff", X"ff", X"ff", X"fe", X"01",
                                                        X"ff", X"ff", X"01", X"02", X"fe", X"00", X"01", X"ff", X"00", X"01", X"fd", X"ff", X"ff", X"ff", X"ff", X"01", X"ff", X"00", X"ff", X"00", X"ff", X"01", X"00", X"fe", X"03", X"fe",
                                                        X"ff", X"01", X"fe", X"02", X"01", X"fe", X"01", X"ff", X"00", X"01", X"02", X"00", X"fd", X"01", X"ff", X"fe", X"fe", X"00", X"fe", X"01", X"02", X"fe", X"fd", X"fe", X"01", X"fd",
                                                        X"00", X"02", X"ff", X"01", X"02", X"fe", X"02", X"ff", X"02", X"fe", X"02", X"02", X"00", X"00", X"fe", X"fd", X"00", X"fd", X"01", X"01", X"01", X"00", X"01", X"ff", X"ff", X"02",
                                                        X"00", X"fe", X"fe", X"fe", X"ff", X"ff", X"fd", X"ff", X"02", X"fe", X"ff", X"01", X"02", X"fe", X"00", X"00", X"ff", X"00", X"01", X"01", X"ff", X"01", X"00", X"02", X"fe", X"fe",
                                                        X"ff", X"fe", X"fd", X"fe", X"fd", X"03", X"03", X"00", X"00", X"00", X"01", X"ff", X"00", X"02", X"02", X"fd", X"01", X"01", X"00", X"fd", X"fe", X"ff", X"00", X"ff", X"00", X"fd",
                                                        X"01", X"02", X"00", X"fd", X"fe", X"fe", X"fe", X"fe", X"01", X"02", X"fe", X"01", X"fe", X"fd", X"02", X"00", X"fd", X"fd", X"fe", X"ff", X"ff", X"03", X"00", X"ff", X"00", X"ff",
                                                        X"01", X"03", X"fd", X"02", X"02", X"00", X"02", X"00", X"fe", X"ff", X"ff", X"fe", X"ff", X"fe", X"ff", X"02", X"00", X"01", X"fd", X"ff", X"fd", X"02", X"fd", X"01", X"fe", X"02",
                                                        X"ff", X"fe", X"fe", X"01", X"01", X"fe", X"00", X"fe", X"00", X"fd", X"ff", X"02", X"00", X"fd", X"02", X"02", X"00", X"fd", X"fe", X"fe", X"02", X"ff", X"fe", X"02", X"fe", X"ff",
                                                        X"02", X"02", X"00", X"02", X"00", X"02", X"00", X"fe", X"fd", X"fd", X"fe", X"02", X"01", X"01", X"fd", X"02", X"fe", X"fe", X"01", X"fe", X"fe", X"ff", X"fd", X"ff", X"01", X"01",
                                                        X"02", X"01", X"01", X"fd", X"02", X"fd", X"fd", X"fe", X"ff", X"fe", X"fe", X"fd", X"02", X"00", X"fe", X"ff", X"ff", X"02", X"fd", X"00", X"fe", X"fe", X"fe", X"01", X"ff", X"fe",
                                                        X"ff", X"01", X"01", X"01", X"ff", X"fe", X"ff", X"fe", X"ff", X"02", X"ff", X"fe", X"00", X"ff", X"02", X"00", X"02", X"01", X"02", X"ff", X"00", X"fe", X"01", X"01", X"fd", X"ff",
                                                        X"03", X"00", X"fe", X"01", X"ff", X"fd", X"00", X"ff", X"ff", X"01", X"00", X"02", X"03", X"02", X"fd", X"fe", X"02", X"fe", X"02", X"ff", X"00", X"01", X"fd", X"00", X"fe", X"02",
                                                        X"01", X"fe", X"02", X"02", X"00", X"00", X"fe", X"ff", X"ff", X"fe", X"01", X"fe", X"00", X"fe", X"01", X"02", X"01", X"fe", X"00", X"02", X"00", X"fd", X"ff", X"fd", X"01", X"fe",
                                                        X"03", X"fd", X"02", X"ff", X"ff", X"01", X"02", X"ff", X"fe", X"02", X"fe", X"ff", X"ff", X"fe", X"01", X"00", X"00", X"01", X"fe", X"00", X"fe", X"03", X"fd", X"ff", X"02", X"ff",
                                                        X"fe", X"01", X"01", X"02", X"01", X"ff", X"ff", X"ff", X"fe", X"fd", X"02", X"ff", X"ff", X"02", X"ff", X"01", X"00", X"01", X"ff", X"fe", X"00", X"fe", X"00", X"02", X"02", X"01",
                                                        X"00", X"02", X"fd", X"01", X"00", X"01", X"fd", X"00", X"fe", X"ff", X"00", X"00", X"ff", X"00", X"01", X"01", X"fe", X"fe", X"01", X"01", X"02", X"ff", X"fe", X"02", X"01", X"fe",
                                                        X"02", X"fe", X"00", X"fd", X"00", X"00", X"ff", X"01", X"00", X"01", X"00", X"01", X"fe", X"01", X"ff", X"00", X"ff", X"fe", X"00", X"00", X"fe", X"00", X"01", X"fe", X"00", X"fd",
                                                        X"00", X"fe", X"fe", X"02", X"00", X"00", X"fe", X"fe", X"fe", X"00", X"01", X"00", X"fe", X"02", X"ff", X"02", X"02", X"ff", X"02", X"03", X"02", X"01", X"01", X"02", X"ff", X"02",
                                                        X"fe", X"02", X"01", X"fd", X"fe", X"02", X"02", X"02", X"fe", X"01", X"fd", X"ff", X"01", X"fe", X"02", X"02", X"02", X"fd", X"fd", X"fe", X"fd", X"fe", X"fe", X"fe", X"02", X"02",
                                                        X"fd", X"00", X"02", X"03", X"fe", X"fe", X"fd", X"ff", X"fd", X"ff", X"fe", X"02", X"ff", X"00", X"00", X"01", X"01", X"02", X"ff", X"03", X"00", X"fe", X"fe", X"01", X"fe", X"02",
                                                        X"ff", X"ff", X"01", X"02", X"fe", X"01", X"01", X"fd", X"fe", X"ff", X"00", X"02", X"00", X"fd", X"fe", X"02", X"01", X"00", X"00", X"fd", X"fe", X"01", X"02", X"02", X"00", X"01",
                                                        X"02", X"ff", X"01", X"01", X"01", X"fd", X"ff", X"fd", X"fe", X"01", X"00", X"ff", X"02", X"00", X"fd", X"fd", X"01", X"01", X"ff", X"02", X"fd", X"00", X"02", X"ff", X"fe", X"01",
                                                        X"ff", X"01", X"01", X"00", X"02", X"02", X"fd", X"ff", X"fe", X"01", X"00", X"03", X"02", X"02", X"00", X"02", X"ff", X"02", X"fd", X"ff", X"ff", X"01", X"02", X"fe", X"02", X"fe",
                                                        X"02", X"ff", X"fd", X"00", X"ff", X"02", X"fe", X"fd", X"fd", X"ff", X"fd", X"fe", X"03", X"fe", X"fe", X"fe", X"03", X"01", X"ff", X"02", X"02", X"00", X"00", X"00", X"fd", X"00",
                                                        X"03", X"00", X"01", X"ff", X"03", X"fe", X"00", X"02", X"01", X"02", X"fd", X"01", X"01", X"fe", X"fe", X"01", X"fe", X"00", X"01", X"ff", X"ff", X"02", X"01", X"fe", X"02", X"01",
                                                        X"01", X"fd", X"fd", X"ff", X"02", X"fe", X"01", X"fd", X"ff", X"02", X"ff", X"fd", X"ff", X"ff", X"fd", X"ff", X"fe", X"02", X"01", X"fe", X"fe", X"01", X"00", X"02", X"fd", X"fd",
                                                        X"02", X"00", X"01", X"ff", X"02", X"00", X"fe", X"fe", X"02", X"ff", X"01", X"ff", X"02", X"ff", X"01", X"fd", X"03", X"fe", X"fe", X"02", X"02", X"00", X"fe", X"fe", X"ff", X"01",
                                                        X"ff", X"fe", X"03", X"01", X"ff", X"00", X"00", X"ff", X"ff", X"02", X"01", X"01", X"01", X"fe", X"fe", X"ff", X"03", X"ff", X"fe", X"ff", X"fe", X"ff", X"fe", X"00", X"00", X"01",
                                                        X"00", X"00", X"02", X"ff", X"fe", X"fd", X"02", X"ff", X"00", X"fd", X"02", X"fe", X"fd", X"01", X"fe", X"00", X"fd", X"02", X"01", X"00", X"ff", X"02", X"fe", X"01", X"fe", X"fe",
                                                        X"ff", X"ff", X"ff", X"02", X"01", X"02", X"fe", X"02", X"fe", X"fd", X"fd", X"ff", X"ff", X"02", X"02", X"ff", X"00", X"00", X"02", X"00", X"fd", X"00", X"01", X"fd", X"01", X"fe",
                                                        X"02", X"fe", X"00", X"00", X"ff", X"01", X"01", X"fd", X"ff", X"00", X"00", X"fd", X"03", X"02", X"ff", X"02", X"01", X"01", X"ff", X"ff", X"fe", X"01", X"ff", X"00", X"00", X"fe",
                                                        X"02", X"fe", X"fe", X"00", X"01", X"fe", X"01", X"02", X"02", X"ff", X"00", X"01", X"00", X"ff", X"ff", X"02", X"ff", X"02", X"fd", X"01", X"00", X"00", X"00", X"01", X"00", X"01",
                                                        X"ff", X"fe", X"02", X"00", X"00", X"ff", X"ff", X"ff", X"02", X"ff", X"fd", X"02", X"01", X"fe", X"fe", X"00", X"ff", X"01", X"fe", X"01", X"fd", X"fe", X"ff", X"fe", X"ff", X"00",
                                                        X"00", X"01", X"02", X"ff", X"00", X"00", X"02", X"02", X"02", X"00", X"03", X"01", X"02", X"ff", X"ff", X"01", X"fe", X"fe", X"01", X"fe", X"ff", X"fe", X"02", X"00", X"ff", X"02",
                                                        X"02", X"02", X"fe", X"00", X"02", X"ff", X"01", X"01", X"01", X"00", X"fd", X"fd", X"00", X"fd", X"00", X"ff", X"00", X"00", X"02", X"fe", X"02", X"ff", X"fe", X"ff", X"ff", X"02",
                                                        X"ff", X"02", X"ff", X"fd", X"fd", X"00", X"00", X"01", X"fd", X"ff", X"00", X"02", X"02", X"02", X"fe", X"00", X"02", X"fe", X"fe", X"01", X"fe", X"00", X"00", X"00", X"fe", X"ff",
                                                        X"fd", X"fe", X"ff", X"ff", X"00", X"fd", X"00", X"ff", X"00", X"00", X"fd", X"02", X"03", X"00", X"fd", X"02", X"01", X"fd", X"fe", X"ff", X"01", X"00", X"fd", X"ff", X"00", X"02",
                                                        X"fe", X"ff", X"fe", X"02", X"ff", X"02", X"01", X"fe", X"fd", X"fd", X"01", X"fe", X"fe", X"00", X"00", X"fe", X"fe", X"02", X"ff", X"fe", X"01", X"01", X"00", X"ff", X"fe", X"ff",
                                                        X"01", X"ff", X"00", X"fd", X"ff", X"fe", X"00", X"fe", X"ff", X"02", X"fe", X"fd", X"01", X"00", X"02", X"02", X"01", X"fe", X"02", X"fe", X"01", X"fd", X"00", X"fe", X"00", X"01",
                                                        X"fe", X"01", X"fe", X"fd", X"01", X"ff", X"00", X"fe", X"02", X"fe", X"fe", X"fe", X"ff", X"fd", X"02", X"01", X"00", X"02", X"02", X"fe", X"ff", X"01", X"00", X"fd", X"01", X"ff",
                                                        X"01", X"01", X"02", X"02", X"01", X"ff", X"00", X"fd", X"02", X"01", X"fd", X"fe", X"00", X"ff", X"fd", X"00", X"ff", X"02", X"ff", X"01", X"03", X"ff", X"fe", X"00", X"ff", X"03",
                                                        X"02", X"02", X"ff", X"01", X"03", X"fe", X"01", X"fe", X"02", X"ff", X"00", X"fe", X"fd", X"ff", X"ff", X"fd", X"02", X"00", X"01", X"02", X"00", X"00", X"00", X"ff", X"02", X"fe",
                                                        X"01", X"02", X"ff", X"00", X"ff", X"01", X"fe", X"ff", X"ff", X"00", X"ff", X"fd", X"ff", X"ff", X"fd", X"00", X"00", X"02", X"fe", X"fe", X"fe", X"01", X"03", X"fe", X"ff", X"fe",
                                                        X"ff", X"fe", X"01", X"00", X"01", X"ff", X"ff", X"fe", X"ff", X"fe", X"01", X"ff", X"fd", X"fd", X"00", X"01", X"fe", X"ff", X"ff", X"00", X"fe", X"02", X"fe", X"00", X"ff", X"fe",
                                                        X"ff", X"02", X"ff", X"02", X"02", X"00", X"ff", X"ff", X"fe", X"00", X"ff", X"fe", X"00", X"00", X"ff", X"00", X"00", X"fe", X"ff", X"02", X"02", X"02", X"ff", X"01", X"01", X"ff",
                                                        X"fd", X"01", X"02", X"00", X"02", X"00", X"fe", X"02", X"02", X"fd", X"00", X"02", X"01", X"03", X"00", X"02", X"01", X"fd", X"00", X"fd", X"00", X"fd", X"fd", X"00", X"fd", X"fd",
                                                        X"01", X"01", X"01", X"fd", X"fe", X"ff", X"01", X"ff", X"fd", X"03", X"01", X"01", X"fd", X"fd", X"00", X"fe", X"fe", X"02", X"00", X"02", X"02", X"ff", X"02", X"00", X"fe", X"01",
                                                        X"ff", X"fe", X"fd", X"ff", X"00", X"01", X"02", X"fe", X"01", X"01", X"fe", X"02", X"fd", X"ff", X"02", X"00", X"00", X"fe", X"03", X"01", X"ff", X"00", X"fd", X"00", X"00", X"00",
                                                        X"00", X"ff", X"00", X"01", X"00", X"02", X"ff", X"00", X"02", X"fd", X"02", X"ff", X"ff", X"ff", X"00", X"01", X"fe", X"01", X"ff", X"ff");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ff";
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

