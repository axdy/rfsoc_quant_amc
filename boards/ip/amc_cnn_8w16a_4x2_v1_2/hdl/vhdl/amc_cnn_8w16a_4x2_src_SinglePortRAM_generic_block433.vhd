-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block433.vhd
-- Created: 2024-11-05 16:19:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block433
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage78/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block433 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block433;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block433 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"f9", X"0b", X"f0", X"eb", X"08", X"fc", X"0c", X"f2", X"00", X"0b", X"f2", X"0c", X"01", X"e3",
                                                        X"0d", X"ef", X"fb", X"0c", X"f1", X"e9", X"0c", X"02", X"07", X"ec", X"ff", X"07", X"f7", X"0a", X"02", X"eb", X"05", X"f2", X"fa", X"04", X"ef", X"ef", X"09", X"ff", X"06", X"f4",
                                                        X"01", X"08", X"fb", X"09", X"00", X"e8", X"08", X"f3", X"fd", X"06", X"f3", X"f2", X"03", X"01", X"09", X"f3", X"fb", X"08", X"fc", X"07", X"00", X"eb", X"0a", X"ef", X"fc", X"07",
                                                        X"f5", X"f0", X"06", X"01", X"02", X"f8", X"fb", X"04", X"f8", X"06", X"fd", X"e5", X"08", X"f3", X"f7", X"06", X"f6", X"f6", X"01", X"00", X"04", X"f3", X"fa", X"07", X"f5", X"06",
                                                        X"ff", X"e3", X"07", X"f1", X"f8", X"04", X"f8", X"f4", X"09", X"fd", X"0a", X"f5", X"f6", X"04", X"fa", X"07", X"fe", X"e8", X"05", X"f1", X"fa", X"04", X"f6", X"ee", X"11", X"fe",
                                                        X"05", X"ee", X"fd", X"07", X"fa", X"09", X"fe", X"e9", X"07", X"ef", X"fc", X"08", X"f8", X"ee", X"08", X"02", X"0a", X"ea", X"01", X"0a", X"f5", X"09", X"02", X"ea", X"07", X"f4",
                                                        X"fd", X"09", X"fb", X"f2", X"05", X"03", X"07", X"ed", X"ff", X"08", X"f7", X"07", X"03", X"e8", X"06", X"f1", X"fd", X"0a", X"f9", X"ee", X"fe", X"03", X"04", X"ee", X"fd", X"09",
                                                        X"f4", X"0b", X"01", X"e8", X"04", X"f0", X"00", X"07", X"f7", X"f4", X"04", X"02", X"07", X"f2", X"fb", X"07", X"f4", X"09", X"fe", X"e4", X"07", X"ef", X"ff", X"07", X"f8", X"f9",
                                                        X"fe", X"fc", X"05", X"f7", X"fa", X"07", X"f8", X"04", X"ff", X"e8", X"08", X"ef", X"fc", X"08", X"f4", X"f3", X"05", X"fb", X"06", X"f0", X"fa", X"06", X"fb", X"02", X"00", X"e4",
                                                        X"03", X"f0", X"fe", X"04", X"f8", X"f2", X"03", X"fa", X"06", X"f1", X"00", X"08", X"f7", X"07", X"fc", X"e9", X"08", X"f4", X"ff", X"04", X"fa", X"ec", X"06", X"fb", X"07", X"eb",
                                                        X"03", X"09", X"f4", X"09", X"fd", X"e6", X"08", X"f0", X"01", X"06", X"f9", X"f1", X"05", X"fd", X"05", X"f0", X"00", X"0b", X"f3", X"07", X"02", X"e5", X"08", X"f5", X"fb", X"06",
                                                        X"fc", X"e7", X"08", X"fe", X"09", X"ef", X"fe", X"09", X"f3", X"07", X"fd", X"e9", X"06", X"f5", X"f8", X"06", X"f8", X"f0", X"08", X"00", X"05", X"f7", X"fc", X"09", X"f4", X"09",
                                                        X"ff", X"e9", X"06", X"f6", X"fa", X"02", X"f5", X"f2", X"01", X"fe", X"09", X"f8", X"fb", X"07", X"f7", X"08", X"fe", X"eb", X"09", X"f4", X"f4", X"04", X"f8", X"f9", X"0b", X"fe",
                                                        X"04", X"f5", X"fb", X"0b", X"f8", X"04", X"01", X"e9", X"06", X"f4", X"f5", X"07", X"fb", X"fb", X"03", X"ff", X"06", X"f7", X"ff", X"07", X"f8", X"08", X"ff", X"e2", X"07", X"f6",
                                                        X"f7", X"05", X"f5", X"fa", X"09", X"02", X"07", X"f8", X"01", X"08", X"f5", X"08", X"fe", X"e7", X"06", X"f2", X"f7", X"05", X"f6", X"f8", X"0a", X"02", X"08", X"f4", X"fe", X"07",
                                                        X"f4", X"04", X"02", X"eb", X"07", X"f1", X"fb", X"08", X"f9", X"eb", X"08", X"01", X"0a", X"ed", X"02", X"09", X"fa", X"0a", X"01", X"e8", X"09", X"f3", X"01", X"0a", X"f7", X"eb",
                                                        X"09", X"01", X"06", X"f2", X"ff", X"0b", X"f8", X"0b", X"00", X"f0", X"06", X"f5", X"f9", X"08", X"fc", X"f3", X"06", X"ff", X"05", X"f2", X"f9", X"07", X"f9", X"0d", X"02", X"f0",
                                                        X"05", X"f7", X"fe", X"08", X"fb", X"f8", X"05", X"fd", X"02", X"f9", X"ff", X"04", X"f6", X"09", X"02", X"eb", X"04", X"f7", X"fa", X"08", X"f8", X"f8", X"04", X"ff", X"05", X"fa",
                                                        X"fe", X"08", X"f6", X"09", X"fd", X"eb", X"06", X"f3", X"f7", X"05", X"fc", X"f8", X"01", X"fa", X"06", X"fd", X"fb", X"06", X"f7", X"05", X"00", X"ee", X"04", X"f5", X"fb", X"06",
                                                        X"fb", X"f5", X"09", X"fd", X"03", X"f8", X"fe", X"07", X"f8", X"09", X"00", X"ea", X"03", X"f4", X"00", X"0a", X"f8", X"f0", X"03", X"02", X"03", X"ec", X"f9", X"07", X"fe", X"0a",
                                                        X"01", X"ee", X"04", X"f9", X"fb", X"07", X"f9", X"f0", X"01", X"03", X"05", X"ef", X"fe", X"09", X"fc", X"0c", X"fe", X"f1", X"08", X"f7", X"01", X"08", X"fa", X"ee", X"08", X"02",
                                                        X"05", X"ea", X"fe", X"0b", X"01", X"09", X"ff", X"f0", X"04", X"fb", X"fe", X"06", X"00", X"f4", X"02", X"ff", X"07", X"fa", X"fd", X"0a", X"fb", X"07", X"03", X"f3", X"09", X"f9",
                                                        X"fe", X"09", X"fd", X"f3", X"06", X"04", X"09", X"f6", X"01", X"0a", X"fa", X"08", X"04", X"ec", X"0a", X"f6", X"02", X"05", X"fa", X"f7", X"05", X"00", X"06", X"f9", X"02", X"07",
                                                        X"fc", X"08", X"00", X"e8", X"07", X"f8", X"fb", X"03", X"fc", X"f8", X"00", X"fe", X"05", X"f9", X"fa", X"05", X"f8", X"04", X"00", X"ec", X"09", X"f4", X"f7", X"03", X"f9", X"fc",
                                                        X"02", X"fe", X"08", X"f8", X"ff", X"05", X"f8", X"0a", X"fe", X"e9", X"08", X"f5", X"f7", X"05", X"f9", X"f1", X"08", X"ff", X"05", X"f4", X"01", X"07", X"f7", X"06", X"fe", X"e9",
                                                        X"06", X"f6", X"fc", X"08", X"fb", X"eb", X"04", X"00", X"07", X"ed", X"00", X"09", X"f8", X"0a", X"ff", X"e9", X"09", X"f7", X"01", X"06", X"f9", X"ee", X"0a", X"00", X"09", X"f1",
                                                        X"02", X"09", X"f5", X"0a", X"04", X"eb", X"07", X"f6", X"fb", X"07", X"fb", X"f2", X"01", X"02", X"09", X"f3", X"fd", X"08", X"f7", X"09", X"00", X"ec", X"04", X"f5", X"fa", X"06",
                                                        X"f8", X"fc", X"ff", X"03", X"05", X"f8", X"fe", X"05", X"f8", X"09", X"fd", X"e9", X"07", X"f2", X"fc", X"07", X"fa", X"f9", X"fd", X"02", X"07", X"fc", X"fc", X"08", X"f8", X"09",
                                                        X"ff", X"e7", X"06", X"f3", X"fc", X"09", X"f7", X"fc", X"00", X"02", X"05", X"f6", X"f9", X"07", X"f4", X"09", X"fc", X"e3", X"05", X"f2", X"fe", X"06", X"fb", X"f2", X"03", X"ff",
                                                        X"06", X"f8", X"00", X"07", X"f9", X"05", X"fb", X"e6", X"04", X"f2", X"fc", X"0a", X"fa", X"f7", X"06", X"01", X"06", X"f8", X"f9", X"05", X"f9", X"0a", X"fc", X"e5", X"04", X"f6",
                                                        X"f6", X"0b", X"f9", X"ec", X"05", X"fe", X"02", X"ef", X"fc", X"09", X"f9", X"0c", X"fc", X"ef", X"04", X"f7", X"ff", X"09", X"f9", X"e9", X"06", X"01", X"05", X"ef", X"fe", X"09",
                                                        X"f9", X"0b", X"fd", X"ee", X"06", X"f7", X"fc", X"01", X"f9", X"ef", X"0c", X"fe", X"09", X"ed", X"04", X"0b", X"f6", X"07", X"01", X"ef", X"08", X"f5", X"fb", X"07", X"f7", X"fa",
                                                        X"07", X"02", X"07", X"f3", X"fb", X"08", X"f4", X"04", X"01", X"e9", X"05", X"f6", X"f8", X"0a", X"f9", X"f9", X"02", X"ff", X"04", X"f6", X"00", X"04", X"f6", X"07", X"00", X"eb",
                                                        X"02", X"f1", X"fc", X"04", X"f5", X"f6", X"fe", X"fa", X"05", X"f9", X"fb", X"03", X"fb", X"08", X"00", X"e7", X"06", X"f2", X"fe", X"04", X"f6", X"f6", X"05", X"00", X"01", X"fa",
                                                        X"fb", X"03", X"fb", X"04", X"fc", X"eb", X"06", X"f4", X"01", X"07", X"f7", X"f2", X"05", X"02", X"02", X"f4", X"fd", X"05", X"fb", X"0a", X"ff", X"e8", X"05", X"f7", X"fd", X"06",
                                                        X"fb", X"f0", X"08", X"01", X"04", X"f1", X"fe", X"0a", X"fa", X"0b", X"03", X"ec", X"07", X"f4", X"00", X"06", X"fb", X"eb", X"07", X"03", X"06", X"f0", X"00", X"0a", X"fe", X"08",
                                                        X"01", X"ee", X"06", X"f8", X"02", X"06", X"fb", X"f0", X"05", X"fe", X"06", X"f7", X"fd", X"08", X"fb", X"08", X"01", X"ec", X"07", X"f5", X"fa", X"04", X"f9", X"f5", X"04", X"fe",
                                                        X"01", X"fb", X"fa", X"07", X"f6", X"09", X"ff", X"ec", X"06", X"f2", X"fe", X"06", X"f6", X"f6", X"05", X"ff", X"01", X"f8", X"fd", X"03", X"f9", X"08", X"fb", X"eb", X"07", X"f3",
                                                        X"fc", X"02", X"fb", X"f6", X"03", X"fe", X"04", X"f6", X"fc", X"06", X"f5", X"08", X"fb", X"e7", X"03", X"f4", X"f7", X"05", X"f5", X"f9", X"03", X"fd", X"07", X"f9", X"00", X"04",
                                                        X"fb", X"07", X"04", X"eb", X"04", X"f2", X"f9", X"06", X"f8", X"ea", X"08", X"01", X"07", X"ee", X"fc", X"0a", X"f9", X"07", X"02", X"e9", X"06", X"f3", X"ff", X"08", X"f8", X"e4",
                                                        X"0a", X"01", X"08", X"ea", X"02", X"0d", X"f5", X"0b", X"ff", X"eb", X"08", X"f5", X"02", X"07", X"fb", X"ed", X"06", X"ff", X"06", X"f1", X"00", X"0a", X"fb", X"0b", X"fe", X"f2",
                                                        X"06", X"f5", X"ff", X"08", X"fb", X"f5", X"08", X"ff", X"06", X"f9", X"01", X"06", X"fd", X"07", X"04", X"eb", X"05", X"f8", X"fa", X"07", X"fa", X"f9", X"05", X"04", X"09", X"f9",
                                                        X"fa", X"08", X"f7", X"08", X"02", X"ed", X"02", X"f5", X"ff", X"09", X"f9", X"fa", X"03", X"00", X"05", X"00", X"fd", X"07", X"fd", X"08", X"02", X"eb", X"07", X"f6", X"f7", X"09",
                                                        X"f8", X"fd", X"03", X"fe", X"06", X"03", X"00", X"09", X"fb", X"08", X"ff", X"e8", X"05", X"f6", X"fc", X"08", X"fb", X"f4", X"08", X"03", X"03", X"fa", X"00", X"09", X"f9", X"0a",
                                                        X"fc", X"eb", X"07", X"f5", X"fa", X"08", X"f9", X"f6", X"05", X"01", X"07", X"fc", X"fe", X"0a", X"fa", X"08", X"fd", X"ed", X"07", X"f9", X"00", X"0c", X"fc", X"f2", X"05", X"00",
                                                        X"08", X"fa", X"fa", X"09", X"fb", X"07", X"02", X"f1", X"08", X"fb", X"01", X"0a", X"fb", X"f9", X"0b", X"08", X"04", X"fc", X"fe", X"08", X"fb", X"0a", X"02", X"f0", X"0a", X"f7",
                                                        X"fc", X"0a", X"fd", X"fa", X"01", X"05", X"07", X"fe", X"fb", X"0c", X"f8", X"0b", X"00", X"f2", X"05", X"f7", X"fd", X"08", X"f9", X"f5", X"04", X"01", X"06", X"fb", X"fd", X"0a",
                                                        X"ff", X"09", X"03", X"f0", X"05", X"f9", X"fc", X"09", X"fc", X"f9", X"05", X"03", X"09", X"f8", X"ff", X"0b", X"01", X"09", X"00", X"ee", X"06", X"f9", X"fd", X"09", X"fb", X"fa",
                                                        X"03", X"02", X"04", X"f7", X"00", X"08", X"fa", X"0c", X"03", X"e9", X"09", X"f5", X"f9", X"06", X"fb", X"00", X"08", X"fe", X"04", X"f9", X"fd", X"06", X"fa", X"09", X"01", X"ea",
                                                        X"07", X"f5", X"fb", X"09", X"fa", X"f4", X"07", X"05", X"07", X"f0", X"ff", X"0b", X"f8", X"07", X"01", X"f0", X"0a", X"f4", X"02", X"0a", X"fa", X"f6", X"07", X"04", X"07", X"f6",
                                                        X"fe", X"0b", X"fd", X"0d", X"02", X"f0", X"06", X"fa", X"03", X"09", X"fb", X"f0", X"05", X"01", X"09", X"f5", X"00", X"0d", X"ff", X"0a", X"03", X"f2", X"09", X"fa", X"00", X"08",
                                                        X"fe", X"f5", X"03", X"00", X"08", X"fe", X"03", X"0b", X"f9", X"0c", X"ff", X"ed", X"09", X"fb", X"fe", X"06", X"f8", X"f7", X"0a", X"fe", X"07", X"f7", X"fd", X"09", X"fb", X"07",
                                                        X"fe", X"ec", X"05", X"f5", X"fd", X"09", X"fe", X"fc", X"04", X"01", X"07", X"fa", X"f9", X"06", X"fb", X"09", X"01", X"e9", X"06", X"f0", X"f9", X"06", X"f5", X"f9", X"00", X"fe",
                                                        X"06", X"fa", X"fb", X"05", X"fc", X"0a", X"02", X"ec", X"05", X"f4", X"fc", X"08", X"f6", X"f7", X"00", X"fe", X"05", X"f7", X"01", X"05", X"f7", X"06", X"fc", X"e8", X"08", X"f6",
                                                        X"02", X"05", X"f9", X"f3", X"05", X"fc", X"06", X"f8", X"fe", X"09", X"f7", X"08", X"01", X"ec", X"04", X"f1", X"fb", X"04", X"f9", X"f0", X"08", X"04", X"07", X"f6", X"fe", X"07",
                                                        X"f9", X"08", X"01", X"ef", X"08", X"f4", X"fc", X"08", X"f6", X"ed", X"08", X"02", X"07", X"ed", X"00", X"08", X"fb", X"0a", X"fe", X"ed", X"04", X"f5", X"fb", X"0a", X"f8", X"f1",
                                                        X"08", X"00", X"07", X"f4", X"00", X"0a", X"f8", X"06", X"ff", X"ed", X"05", X"f8", X"00", X"09", X"fa", X"ee", X"04", X"fe", X"07", X"f2", X"ff", X"09", X"f9", X"07", X"02", X"ef",
                                                        X"08", X"f3", X"fc", X"09", X"fb", X"fa", X"00", X"00", X"07", X"f5", X"fb", X"05", X"f5", X"0a", X"ff", X"ea", X"03", X"f2", X"f4", X"03", X"fc", X"fa", X"04", X"fe", X"06", X"fd",
                                                        X"fa", X"04", X"f9", X"04", X"00", X"ea", X"06", X"f5", X"fb", X"05", X"f4", X"f6", X"00", X"fd", X"04", X"fa", X"f5", X"07", X"fc", X"05", X"fe", X"e6", X"04", X"f6", X"fd", X"05",
                                                        X"f6", X"f1", X"08", X"fa", X"06", X"f6", X"ff", X"03", X"f4", X"07", X"01", X"e7", X"06", X"f5", X"00", X"09", X"fa", X"ea", X"0a", X"01", X"05", X"f2", X"ff", X"09", X"f8", X"08",
                                                        X"ff", X"eb", X"07", X"f4", X"fc", X"04", X"f7", X"ec", X"07", X"fd", X"07", X"ed", X"fd", X"08", X"fb", X"0c", X"02", X"ec", X"04", X"f1", X"fb", X"06", X"fb", X"f3", X"09", X"01",
                                                        X"06", X"ed", X"fa", X"09", X"f7", X"06", X"fc", X"ef", X"02", X"f3", X"f7", X"05", X"fa", X"f4", X"03", X"fe", X"07", X"f3", X"fc", X"08", X"f6", X"09", X"00", X"ea", X"02", X"f1",
                                                        X"f6", X"04", X"f7", X"f6", X"00", X"02", X"06", X"f3", X"fc", X"0a", X"f5", X"05", X"01", X"e9", X"04", X"f1", X"f9", X"07", X"f3", X"f6", X"fe", X"fe", X"07", X"fa", X"f9", X"07",
                                                        X"fb", X"07", X"00", X"e8", X"08", X"ef", X"fc", X"05", X"f9", X"f7", X"ff", X"03", X"07", X"fa", X"f6", X"05", X"f9", X"06", X"01", X"e7", X"08", X"f1", X"fb", X"0c", X"f7", X"f3",
                                                        X"05", X"03", X"05", X"f4", X"fa", X"04", X"f9", X"08", X"00", X"eb", X"05", X"f2", X"fd", X"09", X"f9", X"ec", X"04", X"01", X"06", X"ed", X"01", X"07", X"f7", X"09", X"01", X"eb",
                                                        X"09", X"f4", X"ff", X"0a", X"f8", X"f0", X"08", X"01", X"07", X"ee", X"fe", X"0c", X"f9", X"0a", X"04", X"eb", X"08", X"f3", X"fd", X"09", X"f8", X"ee", X"02", X"04", X"07", X"f4",
                                                        X"fe", X"09", X"fc", X"08", X"01", X"ee", X"04", X"f6", X"fe", X"09", X"fb", X"fc", X"00", X"00", X"08", X"f9", X"f9", X"03", X"f6", X"0a", X"fe", X"e6", X"09", X"f5", X"fe", X"0a",
                                                        X"f5", X"fd", X"05", X"ff", X"06", X"f4", X"fb", X"02", X"f8", X"0a", X"fe", X"e8", X"05", X"f1", X"fd", X"09", X"f7", X"fb", X"03", X"ff", X"08", X"f7", X"fe", X"0b", X"f6", X"0a",
                                                        X"fe", X"e9", X"08", X"f3", X"ff", X"08", X"fa", X"f6", X"02", X"ff", X"02", X"fa", X"fe", X"0b", X"fa", X"09", X"fd", X"ea", X"04", X"ef", X"fd", X"06", X"fb", X"ed", X"03", X"02",
                                                        X"04", X"f0", X"01", X"08", X"f6", X"0c", X"fd", X"ea", X"07", X"f4", X"ff", X"0c", X"fe", X"ef", X"08", X"00", X"09", X"f1", X"03", X"0d", X"f8", X"0d", X"ff", X"eb", X"07", X"f4",
                                                        X"00", X"0b", X"fe", X"f4", X"0b", X"02", X"09", X"f1", X"04", X"0a", X"ff", X"0c", X"01", X"ef", X"05", X"f8", X"fc", X"07", X"fb", X"f3", X"0b", X"00", X"07", X"ff", X"01", X"0d",
                                                        X"f9", X"08", X"04", X"ed", X"09", X"f6", X"f9", X"08", X"f7", X"fc", X"0a", X"fe", X"06", X"fb", X"01", X"06", X"fe", X"0a", X"02", X"eb", X"06", X"f4", X"fb", X"08", X"f7", X"fa",
                                                        X"07", X"ff", X"08", X"fe", X"fe", X"05", X"f4", X"07", X"03", X"eb", X"06", X"f5", X"fb", X"05", X"f9", X"fb", X"05", X"ff", X"06", X"fe", X"fd", X"06", X"f9", X"05", X"03", X"ef",
                                                        X"08", X"f4", X"f9", X"08", X"f8", X"f9", X"0c", X"01", X"0a", X"ff", X"fc", X"08", X"f8", X"06", X"03", X"ec", X"07", X"f4", X"fa", X"08", X"f3", X"f4", X"0c", X"01", X"08", X"f4",
                                                        X"fb", X"07", X"fe", X"09", X"01", X"ea", X"09", X"f6", X"fe", X"07", X"f7", X"ec", X"05", X"01", X"08", X"f0", X"fd", X"08", X"f9", X"08", X"02", X"ee", X"05", X"f6", X"03", X"0d",
                                                        X"f6", X"ec", X"07", X"02", X"07", X"f2", X"00", X"0a", X"fb", X"09", X"05", X"ec", X"05", X"f2", X"f9", X"0d", X"f7", X"f3", X"09", X"fc", X"06", X"f8", X"01", X"08", X"fb", X"0c",
                                                        X"04", X"e8", X"07", X"f4", X"fb", X"10", X"f8", X"f8", X"08", X"ff", X"09", X"f5", X"00", X"0b", X"f4", X"0c", X"04", X"e4", X"09", X"f1");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f1";
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

