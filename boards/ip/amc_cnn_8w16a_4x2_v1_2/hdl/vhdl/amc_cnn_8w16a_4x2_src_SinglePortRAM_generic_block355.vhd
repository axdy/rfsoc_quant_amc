-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block355.vhd
-- Created: 2024-11-05 16:19:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block355
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage121/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block355 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block355;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block355 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"05", X"02", X"02", X"07", X"ee", X"03", X"00", X"fb", X"03", X"00", X"00", X"07", X"fc", X"0b",
                                                        X"fc", X"00", X"f8", X"ff", X"02", X"04", X"f1", X"01", X"02", X"02", X"ff", X"ff", X"ff", X"ff", X"00", X"fe", X"00", X"01", X"09", X"01", X"00", X"ff", X"ea", X"06", X"fc", X"fe",
                                                        X"02", X"fb", X"04", X"02", X"fd", X"00", X"fe", X"ff", X"11", X"fe", X"02", X"00", X"f2", X"02", X"fe", X"fe", X"fe", X"fa", X"01", X"01", X"01", X"02", X"fd", X"00", X"01", X"01",
                                                        X"00", X"02", X"f8", X"02", X"04", X"fe", X"ff", X"fc", X"02", X"01", X"01", X"f8", X"ff", X"03", X"07", X"00", X"f9", X"05", X"f3", X"02", X"05", X"00", X"01", X"ff", X"ff", X"01",
                                                        X"02", X"07", X"06", X"02", X"fb", X"fc", X"00", X"04", X"ee", X"03", X"02", X"05", X"06", X"ff", X"fa", X"00", X"01", X"02", X"02", X"04", X"01", X"fd", X"fc", X"06", X"e8", X"03",
                                                        X"04", X"fc", X"03", X"02", X"f8", X"05", X"03", X"01", X"02", X"01", X"01", X"00", X"ff", X"00", X"eb", X"02", X"01", X"00", X"0a", X"03", X"f9", X"ff", X"ff", X"03", X"02", X"04",
                                                        X"06", X"04", X"01", X"05", X"f6", X"00", X"01", X"04", X"08", X"01", X"fa", X"04", X"01", X"03", X"02", X"04", X"ff", X"02", X"02", X"04", X"fd", X"fe", X"03", X"fd", X"07", X"f8",
                                                        X"03", X"02", X"06", X"04", X"02", X"ff", X"02", X"03", X"05", X"05", X"e9", X"06", X"ff", X"fc", X"05", X"fb", X"01", X"00", X"05", X"02", X"00", X"fe", X"04", X"05", X"fa", X"fe",
                                                        X"ed", X"08", X"fd", X"fd", X"03", X"f7", X"00", X"02", X"05", X"01", X"00", X"01", X"fe", X"ff", X"fc", X"03", X"ee", X"04", X"04", X"fe", X"fa", X"fd", X"04", X"fe", X"ff", X"02",
                                                        X"01", X"02", X"08", X"02", X"fb", X"00", X"ee", X"05", X"05", X"ff", X"03", X"f8", X"0b", X"02", X"03", X"02", X"05", X"04", X"fe", X"02", X"fd", X"00", X"f2", X"02", X"ff", X"01",
                                                        X"06", X"f9", X"00", X"fe", X"ff", X"07", X"02", X"06", X"02", X"04", X"03", X"07", X"f7", X"02", X"02", X"03", X"07", X"01", X"04", X"04", X"01", X"02", X"fe", X"05", X"fe", X"01",
                                                        X"08", X"06", X"f7", X"00", X"05", X"fd", X"06", X"ff", X"00", X"00", X"00", X"01", X"ff", X"03", X"09", X"03", X"fe", X"05", X"f8", X"03", X"02", X"fd", X"05", X"02", X"00", X"08",
                                                        X"03", X"05", X"03", X"05", X"05", X"00", X"fe", X"04", X"f6", X"0c", X"05", X"fc", X"05", X"01", X"04", X"01", X"03", X"ff", X"02", X"01", X"05", X"00", X"fe", X"07", X"ea", X"07",
                                                        X"01", X"ff", X"fe", X"fa", X"05", X"03", X"02", X"fc", X"ff", X"fe", X"00", X"01", X"f9", X"07", X"ed", X"ff", X"03", X"01", X"fd", X"fc", X"01", X"00", X"00", X"fd", X"00", X"00",
                                                        X"02", X"01", X"f8", X"04", X"ee", X"02", X"04", X"00", X"02", X"fe", X"01", X"03", X"07", X"01", X"03", X"fd", X"02", X"fe", X"ff", X"06", X"e7", X"08", X"06", X"06", X"07", X"03",
                                                        X"05", X"04", X"00", X"02", X"01", X"01", X"01", X"01", X"03", X"05", X"ef", X"06", X"02", X"03", X"08", X"fe", X"fa", X"01", X"fd", X"0b", X"02", X"05", X"fc", X"ff", X"05", X"08",
                                                        X"f6", X"01", X"00", X"04", X"06", X"fb", X"02", X"fc", X"fe", X"fc", X"fe", X"01", X"ff", X"fd", X"07", X"08", X"f1", X"04", X"00", X"04", X"02", X"fb", X"00", X"01", X"fc", X"06",
                                                        X"ff", X"06", X"04", X"03", X"00", X"05", X"ec", X"06", X"ff", X"01", X"06", X"fc", X"fe", X"01", X"fe", X"ff", X"01", X"03", X"01", X"03", X"02", X"08", X"f0", X"fe", X"04", X"01",
                                                        X"ff", X"fc", X"02", X"02", X"04", X"05", X"02", X"fe", X"02", X"00", X"00", X"07", X"ee", X"07", X"00", X"03", X"fc", X"f8", X"ff", X"ff", X"04", X"02", X"02", X"fb", X"00", X"01",
                                                        X"02", X"07", X"eb", X"04", X"00", X"ff", X"fb", X"f5", X"00", X"01", X"02", X"01", X"fe", X"ff", X"ff", X"04", X"01", X"05", X"ed", X"00", X"03", X"01", X"03", X"f9", X"01", X"fe",
                                                        X"ff", X"02", X"03", X"02", X"fc", X"04", X"02", X"03", X"ee", X"ff", X"fb", X"05", X"05", X"f9", X"fb", X"04", X"fe", X"00", X"fc", X"03", X"fa", X"fe", X"02", X"03", X"f1", X"06",
                                                        X"04", X"fe", X"fd", X"fa", X"fe", X"04", X"07", X"fb", X"02", X"ff", X"02", X"fb", X"01", X"04", X"f4", X"fd", X"ff", X"00", X"02", X"fe", X"fb", X"02", X"05", X"fc", X"ff", X"00",
                                                        X"09", X"fe", X"fe", X"08", X"f0", X"00", X"03", X"02", X"fd", X"fb", X"ff", X"00", X"00", X"fc", X"01", X"00", X"ff", X"00", X"fd", X"0a", X"f0", X"02", X"01", X"02", X"03", X"fa",
                                                        X"fc", X"fe", X"fc", X"ff", X"02", X"03", X"0c", X"00", X"ff", X"07", X"f5", X"00", X"03", X"fd", X"08", X"fd", X"03", X"01", X"fd", X"00", X"03", X"ff", X"04", X"02", X"01", X"01",
                                                        X"f8", X"00", X"01", X"fe", X"07", X"02", X"04", X"ff", X"00", X"fe", X"02", X"01", X"fb", X"fe", X"05", X"02", X"ef", X"00", X"01", X"00", X"0a", X"fd", X"f9", X"02", X"03", X"02",
                                                        X"ff", X"01", X"fb", X"03", X"03", X"05", X"f6", X"fd", X"01", X"01", X"0c", X"fb", X"fe", X"01", X"07", X"fc", X"ff", X"03", X"00", X"fd", X"02", X"07", X"f4", X"05", X"02", X"ff",
                                                        X"07", X"ff", X"ff", X"00", X"02", X"00", X"00", X"02", X"00", X"01", X"fe", X"07", X"f9", X"fd", X"fd", X"05", X"07", X"fc", X"fe", X"02", X"fd", X"f6", X"01", X"01", X"fb", X"06",
                                                        X"00", X"00", X"f4", X"0e", X"ff", X"ff", X"fe", X"fe", X"ff", X"03", X"f9", X"f7", X"fd", X"02", X"03", X"01", X"ff", X"04", X"e7", X"03", X"04", X"00", X"f9", X"f5", X"06", X"03",
                                                        X"03", X"04", X"00", X"fe", X"06", X"ff", X"01", X"03", X"ee", X"04", X"fe", X"04", X"fc", X"f8", X"02", X"ff", X"06", X"01", X"05", X"fb", X"fd", X"02", X"00", X"0e", X"fa", X"04",
                                                        X"fe", X"05", X"fb", X"f9", X"04", X"fe", X"09", X"00", X"03", X"01", X"fe", X"fc", X"00", X"03", X"f2", X"fb", X"01", X"fb", X"04", X"fd", X"fc", X"fc", X"05", X"03", X"06", X"03",
                                                        X"fb", X"01", X"ff", X"08", X"f2", X"01", X"00", X"04", X"04", X"03", X"00", X"05", X"fe", X"ff", X"00", X"05", X"01", X"03", X"04", X"05", X"ec", X"fb", X"ff", X"00", X"07", X"fd",
                                                        X"05", X"01", X"04", X"01", X"ff", X"04", X"04", X"06", X"01", X"08", X"f3", X"05", X"fe", X"03", X"06", X"fe", X"07", X"07", X"fd", X"fe", X"05", X"00", X"04", X"04", X"03", X"01",
                                                        X"f2", X"03", X"01", X"ff", X"03", X"fb", X"03", X"01", X"fe", X"ff", X"04", X"01", X"05", X"00", X"05", X"fd", X"f9", X"09", X"02", X"fe", X"03", X"f6", X"06", X"ff", X"f9", X"fd",
                                                        X"03", X"ff", X"04", X"01", X"fe", X"06", X"f8", X"03", X"fd", X"09", X"02", X"f9", X"00", X"fd", X"fc", X"fc", X"ff", X"04", X"01", X"01", X"fb", X"ff", X"f2", X"05", X"00", X"fd",
                                                        X"07", X"ff", X"fe", X"ff", X"fc", X"02", X"fb", X"03", X"01", X"05", X"fd", X"01", X"ea", X"fe", X"fe", X"ff", X"04", X"fd", X"fe", X"08", X"04", X"03", X"fe", X"04", X"03", X"00",
                                                        X"ff", X"02", X"eb", X"fb", X"04", X"00", X"09", X"01", X"fe", X"00", X"fd", X"00", X"01", X"ff", X"02", X"02", X"00", X"08", X"ee", X"02", X"fe", X"00", X"fe", X"fd", X"03", X"01",
                                                        X"f8", X"01", X"ff", X"00", X"fd", X"05", X"ff", X"06", X"ec", X"05", X"fd", X"06", X"ff", X"ff", X"fa", X"fe", X"00", X"fb", X"fe", X"02", X"0b", X"03", X"fa", X"02", X"f2", X"06",
                                                        X"02", X"00", X"03", X"f9", X"00", X"fd", X"01", X"f9", X"fe", X"fc", X"09", X"fe", X"01", X"08", X"ea", X"02", X"00", X"06", X"01", X"f8", X"02", X"00", X"03", X"04", X"ff", X"ff",
                                                        X"fa", X"01", X"fb", X"fc", X"ee", X"03", X"fd", X"02", X"fe", X"f9", X"fc", X"01", X"03", X"01", X"fc", X"00", X"0a", X"ff", X"fd", X"01", X"ec", X"01", X"02", X"fe", X"02", X"fb",
                                                        X"02", X"03", X"ff", X"06", X"03", X"05", X"05", X"ff", X"00", X"01", X"ee", X"ff", X"04", X"02", X"04", X"fc", X"ff", X"01", X"01", X"03", X"04", X"02", X"04", X"06", X"fc", X"03",
                                                        X"fa", X"00", X"fe", X"02", X"06", X"03", X"09", X"02", X"fd", X"fd", X"fd", X"04", X"07", X"ff", X"fd", X"03", X"f5", X"fd", X"ff", X"00", X"06", X"00", X"02", X"00", X"fc", X"ff",
                                                        X"03", X"05", X"00", X"01", X"fe", X"03", X"f0", X"07", X"02", X"fe", X"04", X"00", X"fe", X"05", X"00", X"00", X"01", X"03", X"01", X"fd", X"f9", X"01", X"e6", X"fd", X"05", X"fb",
                                                        X"fe", X"fb", X"01", X"05", X"ff", X"00", X"01", X"ff", X"0a", X"01", X"fe", X"0c", X"e3", X"03", X"01", X"06", X"04", X"fa", X"04", X"01", X"fc", X"fe", X"06", X"01", X"04", X"fc",
                                                        X"00", X"07", X"f0", X"04", X"02", X"fe", X"fc", X"f8", X"00", X"00", X"fb", X"04", X"03", X"00", X"04", X"02", X"03", X"00", X"f0", X"fa", X"04", X"01", X"05", X"f9", X"fd", X"02",
                                                        X"fe", X"08", X"02", X"00", X"f9", X"fb", X"ff", X"fe", X"ed", X"fe", X"03", X"fe", X"12", X"ff", X"00", X"00", X"01", X"f9", X"06", X"02", X"f9", X"ff", X"02", X"02", X"f4", X"fe",
                                                        X"00", X"00", X"04", X"00", X"ff", X"01", X"ff", X"ff", X"02", X"03", X"f9", X"fc", X"fc", X"03", X"e7", X"00", X"fd", X"02", X"02", X"f9", X"ff", X"fe", X"00", X"fe", X"03", X"fd",
                                                        X"ff", X"00", X"02", X"01", X"e8", X"fd", X"01", X"fd", X"ff", X"fa", X"fd", X"fc", X"01", X"00", X"01", X"01", X"fd", X"01", X"fa", X"01", X"eb", X"00", X"01", X"fb", X"03", X"fe",
                                                        X"06", X"ff", X"08", X"f9", X"03", X"ff", X"00", X"03", X"f8", X"02", X"df", X"fd", X"02", X"fc", X"02", X"fb", X"05", X"03", X"05", X"fa", X"01", X"03", X"06", X"01", X"fb", X"04",
                                                        X"e4", X"00", X"04", X"00", X"fe", X"f8", X"fc", X"ff", X"04", X"03", X"01", X"00", X"fc", X"ff", X"00", X"06", X"ef", X"05", X"fd", X"04", X"02", X"fa", X"fb", X"01", X"01", X"ff",
                                                        X"ff", X"02", X"fd", X"fd", X"00", X"00", X"ee", X"01", X"ff", X"01", X"09", X"fc", X"fb", X"00", X"fe", X"fb", X"02", X"00", X"02", X"04", X"fc", X"00", X"f8", X"01", X"fc", X"fe",
                                                        X"08", X"fa", X"01", X"ff", X"ff", X"fb", X"fc", X"00", X"01", X"05", X"01", X"02", X"f6", X"01", X"ff", X"03", X"0b", X"f9", X"05", X"03", X"fa", X"fa", X"00", X"ff", X"01", X"ff",
                                                        X"ff", X"08", X"f4", X"fa", X"fd", X"02", X"07", X"fa", X"02", X"00", X"01", X"ff", X"fd", X"03", X"03", X"fd", X"05", X"08", X"ec", X"07", X"ff", X"04", X"0e", X"ff", X"fe", X"03",
                                                        X"05", X"fc", X"03", X"02", X"03", X"02", X"01", X"06", X"f3", X"03", X"06", X"02", X"07", X"fe", X"03", X"02", X"ff", X"02", X"02", X"06", X"09", X"00", X"02", X"03", X"f8", X"02",
                                                        X"05", X"00", X"00", X"fc", X"fc", X"02", X"fd", X"00", X"04", X"03", X"01", X"05", X"01", X"04", X"00", X"01", X"fe", X"04", X"06", X"fb", X"05", X"00", X"04", X"02", X"ff", X"fd",
                                                        X"fe", X"00", X"ff", X"03", X"fb", X"04", X"ff", X"fd", X"0c", X"01", X"04", X"fd", X"02", X"01", X"fd", X"04", X"fe", X"01", X"02", X"0b", X"fe", X"fd", X"ff", X"02", X"05", X"fd",
                                                        X"00", X"fe", X"ff", X"f7", X"fc", X"03", X"fe", X"fb", X"ff", X"01", X"fc", X"00", X"03", X"03", X"0c", X"02", X"fb", X"00", X"fa", X"fe", X"01", X"00", X"04", X"01", X"ff", X"09",
                                                        X"f2", X"fc", X"00", X"01", X"06", X"00", X"03", X"01", X"01", X"04", X"00", X"06", X"04", X"ff", X"01", X"04", X"f7", X"02", X"04", X"00", X"08", X"00", X"fb", X"00", X"03", X"06",
                                                        X"03", X"00", X"04", X"02", X"00", X"0e", X"ea", X"01", X"02", X"04", X"fc", X"fa", X"00", X"01", X"06", X"00", X"04", X"03", X"07", X"04", X"05", X"09", X"eb", X"fd", X"fe", X"01",
                                                        X"03", X"ff", X"f9", X"02", X"00", X"ff", X"00", X"04", X"04", X"07", X"01", X"09", X"f7", X"03", X"03", X"05", X"05", X"fd", X"01", X"01", X"02", X"07", X"02", X"04", X"fc", X"07",
                                                        X"02", X"fb", X"fd", X"ff", X"02", X"02", X"0e", X"02", X"06", X"02", X"03", X"01", X"fe", X"02", X"fd", X"02", X"fe", X"fe", X"f4", X"07", X"02", X"fb", X"07", X"00", X"04", X"ff",
                                                        X"06", X"f7", X"02", X"03", X"fd", X"ff", X"fd", X"fe", X"f6", X"08", X"fe", X"fe", X"0a", X"00", X"fd", X"02", X"01", X"03", X"fe", X"03", X"04", X"01", X"03", X"02", X"ed", X"04",
                                                        X"01", X"ff", X"09", X"fc", X"fa", X"03", X"04", X"03", X"04", X"04", X"02", X"ff", X"fd", X"04", X"f4", X"00", X"04", X"fe", X"06", X"fe", X"fb", X"06", X"00", X"00", X"03", X"05",
                                                        X"fc", X"00", X"07", X"06", X"e6", X"07", X"05", X"07", X"01", X"00", X"fe", X"06", X"05", X"06", X"06", X"00", X"fe", X"03", X"02", X"01", X"f1", X"fe", X"ff", X"05", X"09", X"ff",
                                                        X"fe", X"00", X"06", X"fd", X"00", X"03", X"fb", X"02", X"fe", X"fe", X"f0", X"02", X"00", X"fe", X"08", X"ff", X"03", X"00", X"01", X"fa", X"03", X"04", X"02", X"fe", X"ff", X"05",
                                                        X"f2", X"01", X"01", X"07", X"09", X"fe", X"04", X"02", X"fd", X"fd", X"00", X"03", X"fd", X"fb", X"01", X"08", X"f5", X"f9", X"ff", X"05", X"09", X"00", X"fd", X"ff", X"fb", X"fd",
                                                        X"fb", X"02", X"fd", X"02", X"05", X"0b", X"f9", X"f6", X"fd", X"05", X"03", X"fe", X"ff", X"00", X"00", X"02", X"01", X"04", X"fd", X"fc", X"04", X"01", X"f7", X"01", X"00", X"fb",
                                                        X"06", X"fe", X"fa", X"02", X"fd", X"02", X"01", X"fe", X"03", X"ff", X"01", X"06", X"f3", X"fd", X"04", X"01", X"01", X"fb", X"02", X"fc", X"07", X"ff", X"05", X"fc", X"05", X"02",
                                                        X"fd", X"08", X"ef", X"03", X"01", X"05", X"01", X"f4", X"07", X"02", X"01", X"f9", X"ff", X"00", X"05", X"03", X"fb", X"05", X"f2", X"04", X"01", X"fe", X"04", X"f7", X"01", X"ff",
                                                        X"ff", X"01", X"ff", X"02", X"0a", X"03", X"ff", X"07", X"f5", X"00", X"02", X"00", X"04", X"fb", X"01", X"05", X"01", X"fb", X"05", X"01", X"09", X"fd", X"ff", X"05", X"f2", X"ff",
                                                        X"03", X"02", X"08", X"01", X"fe", X"fd", X"02", X"f9", X"03", X"00", X"04", X"00", X"02", X"03", X"fb", X"ff", X"02", X"00", X"0b", X"00", X"02", X"fc", X"fc", X"fa", X"04", X"03",
                                                        X"fc", X"fe", X"fd", X"fc", X"f5", X"00", X"fd", X"fd", X"07", X"00", X"00", X"00", X"fc", X"f7", X"03", X"01", X"06", X"fd", X"03", X"03", X"f6", X"02", X"01", X"00", X"05", X"fd",
                                                        X"ff", X"03", X"00", X"fb", X"03", X"01", X"00", X"00", X"fe", X"02", X"ed", X"02", X"02", X"00", X"ff", X"fb", X"fc", X"00", X"01", X"fd", X"04", X"02", X"09", X"fb", X"fc", X"ff",
                                                        X"ec", X"fb", X"01", X"ff", X"07", X"fa", X"fd", X"fe", X"06", X"f7", X"ff", X"fd", X"ff", X"ff", X"ff", X"00", X"ec", X"07", X"fe", X"00", X"fe", X"fb", X"fb", X"fe", X"07", X"fb",
                                                        X"fe", X"fd", X"f8", X"ff", X"ff", X"01", X"f2", X"00", X"fb", X"ff", X"04", X"fe", X"fa", X"02", X"04", X"fd", X"fd", X"00", X"00", X"01", X"08", X"04", X"f1", X"00", X"05", X"ff",
                                                        X"0e", X"07", X"f8", X"07", X"05", X"02", X"ff", X"05", X"fa", X"ff", X"07", X"02", X"f8", X"ff", X"02", X"03", X"09", X"03", X"fa", X"ff", X"fe", X"fe", X"02", X"03", X"f4", X"ff",
                                                        X"00", X"05", X"f6", X"07", X"00", X"00", X"08", X"01", X"01", X"01", X"02", X"02", X"02", X"03", X"06", X"ff", X"ff", X"00", X"e4", X"fa", X"00", X"fd", X"06", X"fd", X"fc", X"02",
                                                        X"02", X"02", X"04", X"00", X"0b", X"fd", X"03", X"05", X"ea", X"ff", X"00", X"01", X"07", X"fe", X"00", X"ff", X"03", X"01", X"03", X"fa");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fa";
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

