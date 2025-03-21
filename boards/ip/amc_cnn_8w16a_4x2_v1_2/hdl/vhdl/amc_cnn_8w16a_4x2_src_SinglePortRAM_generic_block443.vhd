-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block443.vhd
-- Created: 2024-11-05 16:19:22
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block443
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage87/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block443 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block443;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block443 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"08", X"00", X"ee", X"0c", X"b9", X"10", X"02", X"05", X"b9", X"ee", X"11", X"fe", X"09", X"05",
                                                        X"03", X"fb", X"03", X"fe", X"fb", X"0a", X"cb", X"08", X"fd", X"fe", X"cf", X"f8", X"07", X"fe", X"05", X"01", X"fe", X"fd", X"fe", X"00", X"fd", X"06", X"de", X"05", X"00", X"05",
                                                        X"e8", X"02", X"00", X"00", X"06", X"fa", X"00", X"01", X"ff", X"fe", X"fc", X"02", X"e3", X"08", X"ff", X"ff", X"f1", X"04", X"02", X"01", X"08", X"00", X"01", X"05", X"01", X"fe",
                                                        X"fe", X"ff", X"e8", X"08", X"fd", X"fc", X"fb", X"04", X"07", X"fd", X"04", X"f5", X"fe", X"06", X"fa", X"fc", X"fc", X"f9", X"e3", X"08", X"f6", X"ff", X"f4", X"01", X"01", X"ff",
                                                        X"04", X"f7", X"fc", X"04", X"02", X"fe", X"f8", X"f6", X"ed", X"01", X"fa", X"f4", X"f3", X"06", X"f8", X"05", X"05", X"f9", X"f9", X"fd", X"fc", X"fb", X"03", X"fa", X"e1", X"04",
                                                        X"00", X"f9", X"e7", X"05", X"fe", X"04", X"07", X"fd", X"ff", X"fe", X"00", X"00", X"f9", X"fe", X"ce", X"0b", X"00", X"fc", X"df", X"fe", X"04", X"05", X"09", X"ff", X"fe", X"fe",
                                                        X"00", X"01", X"f9", X"03", X"d4", X"08", X"01", X"06", X"d8", X"fd", X"09", X"03", X"09", X"04", X"05", X"fd", X"01", X"fd", X"f9", X"fe", X"c9", X"08", X"fe", X"fb", X"d5", X"00",
                                                        X"01", X"01", X"06", X"ff", X"02", X"01", X"02", X"fa", X"f8", X"fc", X"d9", X"02", X"00", X"ff", X"e7", X"fe", X"03", X"02", X"05", X"02", X"fe", X"01", X"01", X"ff", X"00", X"fe",
                                                        X"de", X"06", X"03", X"fb", X"ee", X"02", X"07", X"02", X"08", X"07", X"ff", X"04", X"02", X"01", X"fc", X"fe", X"e2", X"05", X"03", X"fb", X"f7", X"09", X"04", X"03", X"05", X"01",
                                                        X"fe", X"06", X"03", X"00", X"fa", X"ff", X"d7", X"02", X"03", X"fb", X"ec", X"07", X"04", X"05", X"07", X"02", X"ff", X"00", X"fc", X"01", X"f9", X"05", X"db", X"05", X"00", X"04",
                                                        X"e0", X"04", X"fe", X"ff", X"03", X"fd", X"01", X"00", X"fb", X"fe", X"f5", X"fb", X"d7", X"05", X"00", X"fa", X"d8", X"03", X"01", X"ff", X"07", X"01", X"fb", X"01", X"00", X"f7",
                                                        X"f3", X"fa", X"d4", X"0c", X"01", X"f8", X"dc", X"02", X"02", X"ff", X"00", X"01", X"01", X"fe", X"ff", X"fe", X"f3", X"fb", X"db", X"09", X"fc", X"00", X"e7", X"03", X"00", X"ff",
                                                        X"04", X"01", X"fc", X"04", X"fe", X"fb", X"fa", X"fe", X"ed", X"05", X"fb", X"fd", X"f3", X"01", X"04", X"fe", X"00", X"f8", X"ff", X"02", X"fd", X"fd", X"fc", X"06", X"ed", X"07",
                                                        X"fb", X"02", X"ed", X"04", X"03", X"02", X"ff", X"fa", X"01", X"03", X"fe", X"fb", X"ff", X"01", X"de", X"06", X"02", X"ff", X"f6", X"02", X"05", X"00", X"06", X"ff", X"01", X"00",
                                                        X"01", X"02", X"f9", X"fc", X"e6", X"01", X"05", X"f5", X"eb", X"0a", X"05", X"04", X"06", X"ff", X"01", X"00", X"09", X"02", X"f7", X"03", X"d8", X"06", X"01", X"02", X"e0", X"02",
                                                        X"06", X"01", X"06", X"fe", X"ff", X"03", X"08", X"00", X"ed", X"fe", X"d2", X"0d", X"03", X"ff", X"d8", X"00", X"0f", X"01", X"07", X"fe", X"01", X"01", X"05", X"fe", X"ed", X"00",
                                                        X"cf", X"09", X"01", X"f7", X"ce", X"01", X"0a", X"05", X"0a", X"01", X"00", X"04", X"03", X"00", X"f2", X"05", X"dd", X"09", X"01", X"02", X"d4", X"fb", X"01", X"05", X"0e", X"02",
                                                        X"01", X"02", X"ff", X"fe", X"f7", X"ff", X"e1", X"09", X"03", X"f9", X"e4", X"01", X"06", X"03", X"08", X"03", X"01", X"fe", X"ff", X"fc", X"fd", X"fb", X"ed", X"09", X"02", X"fa",
                                                        X"f0", X"08", X"0a", X"ff", X"05", X"09", X"01", X"00", X"00", X"fb", X"fa", X"fa", X"e5", X"03", X"ff", X"fc", X"f4", X"0a", X"09", X"01", X"02", X"fe", X"fd", X"ff", X"04", X"fb",
                                                        X"fc", X"fd", X"e9", X"01", X"fe", X"00", X"eb", X"05", X"04", X"01", X"06", X"00", X"00", X"fe", X"fa", X"f9", X"fa", X"05", X"e0", X"06", X"01", X"fc", X"ec", X"02", X"f3", X"f9",
                                                        X"ff", X"00", X"fc", X"fa", X"f7", X"fb", X"f9", X"04", X"e0", X"04", X"02", X"ff", X"db", X"fe", X"05", X"01", X"09", X"02", X"fd", X"fe", X"fe", X"ff", X"fb", X"fc", X"dd", X"09",
                                                        X"fd", X"fa", X"dd", X"fc", X"05", X"00", X"ff", X"02", X"ff", X"fc", X"fe", X"fd", X"fb", X"03", X"e0", X"08", X"02", X"04", X"dc", X"fa", X"0d", X"03", X"01", X"fa", X"02", X"ff",
                                                        X"00", X"00", X"f7", X"fa", X"d7", X"07", X"03", X"fd", X"ee", X"04", X"08", X"02", X"03", X"03", X"03", X"03", X"fe", X"00", X"fb", X"00", X"e3", X"09", X"02", X"fa", X"f2", X"06",
                                                        X"04", X"03", X"07", X"01", X"03", X"0a", X"ff", X"fd", X"fd", X"00", X"f4", X"05", X"07", X"00", X"f5", X"07", X"06", X"05", X"07", X"fe", X"07", X"07", X"07", X"00", X"f9", X"fb",
                                                        X"f0", X"05", X"08", X"02", X"ea", X"02", X"04", X"03", X"08", X"ff", X"06", X"05", X"00", X"00", X"f4", X"04", X"d7", X"0b", X"fe", X"04", X"df", X"00", X"03", X"01", X"07", X"fe",
                                                        X"fd", X"02", X"03", X"fb", X"f1", X"03", X"d4", X"0b", X"ff", X"04", X"d4", X"f6", X"06", X"ff", X"ff", X"fd", X"fc", X"00", X"fc", X"01", X"f3", X"00", X"d6", X"02", X"fd", X"00",
                                                        X"ce", X"f8", X"06", X"fc", X"03", X"fb", X"fe", X"fc", X"01", X"fc", X"f5", X"fc", X"e4", X"06", X"03", X"f9", X"dd", X"fd", X"09", X"fb", X"08", X"fe", X"00", X"fd", X"fe", X"fe",
                                                        X"fa", X"03", X"dc", X"02", X"ff", X"ff", X"e7", X"07", X"05", X"04", X"0c", X"04", X"fc", X"04", X"f8", X"fc", X"fe", X"fb", X"e9", X"04", X"02", X"f0", X"f4", X"06", X"02", X"04",
                                                        X"04", X"fd", X"01", X"05", X"ff", X"01", X"ff", X"f8", X"e8", X"03", X"05", X"f0", X"f1", X"0a", X"01", X"06", X"06", X"02", X"ff", X"04", X"03", X"01", X"03", X"ff", X"dd", X"06",
                                                        X"05", X"f7", X"ee", X"06", X"04", X"04", X"06", X"01", X"fd", X"ff", X"fd", X"03", X"fa", X"02", X"db", X"05", X"02", X"fe", X"e0", X"04", X"09", X"04", X"04", X"fc", X"f9", X"ff",
                                                        X"03", X"00", X"f1", X"fe", X"d3", X"09", X"02", X"f9", X"db", X"fb", X"09", X"00", X"0a", X"fa", X"fc", X"00", X"fc", X"00", X"ee", X"00", X"c8", X"02", X"04", X"ff", X"cf", X"fd",
                                                        X"07", X"00", X"05", X"00", X"00", X"02", X"fc", X"00", X"eb", X"ff", X"d1", X"08", X"ff", X"fa", X"db", X"fc", X"03", X"01", X"04", X"01", X"ff", X"03", X"fe", X"fd", X"fa", X"04",
                                                        X"e2", X"00", X"fd", X"01", X"ed", X"04", X"02", X"00", X"05", X"04", X"fe", X"00", X"f8", X"fa", X"f5", X"ff", X"ec", X"01", X"03", X"f9", X"f1", X"06", X"fe", X"03", X"02", X"fe",
                                                        X"fa", X"02", X"fe", X"fe", X"f8", X"fd", X"ee", X"04", X"02", X"fd", X"fb", X"07", X"ff", X"ff", X"fa", X"00", X"fe", X"03", X"fd", X"ff", X"f2", X"f7", X"e2", X"01", X"02", X"fb",
                                                        X"e8", X"01", X"08", X"fe", X"00", X"fb", X"ff", X"05", X"fb", X"fc", X"f9", X"02", X"e7", X"08", X"fe", X"07", X"de", X"01", X"04", X"01", X"03", X"f9", X"00", X"00", X"fd", X"fe",
                                                        X"f4", X"02", X"d0", X"05", X"fc", X"09", X"d2", X"fd", X"06", X"fd", X"07", X"fd", X"00", X"fd", X"fe", X"f9", X"ef", X"ff", X"d2", X"04", X"00", X"fa", X"cb", X"fb", X"08", X"00",
                                                        X"0b", X"04", X"00", X"fb", X"ff", X"fd", X"f5", X"00", X"d2", X"06", X"05", X"f9", X"ce", X"fd", X"08", X"02", X"09", X"02", X"01", X"ff", X"fe", X"02", X"f9", X"f2", X"dc", X"06",
                                                        X"01", X"f4", X"ec", X"06", X"04", X"01", X"05", X"05", X"ff", X"fe", X"fc", X"ff", X"fe", X"f7", X"de", X"04", X"ff", X"f8", X"f0", X"07", X"08", X"07", X"09", X"05", X"04", X"01",
                                                        X"f9", X"fc", X"f9", X"f9", X"f1", X"08", X"fe", X"f2", X"fc", X"0e", X"01", X"03", X"01", X"05", X"01", X"01", X"fd", X"fb", X"fc", X"05", X"e3", X"07", X"fe", X"03", X"f0", X"09",
                                                        X"03", X"fe", X"05", X"fe", X"fd", X"01", X"ff", X"00", X"fa", X"fe", X"d3", X"0e", X"01", X"00", X"e3", X"06", X"0a", X"05", X"06", X"01", X"02", X"03", X"fd", X"fc", X"f5", X"fd",
                                                        X"d6", X"0c", X"02", X"fa", X"db", X"fe", X"02", X"fd", X"07", X"02", X"02", X"01", X"ff", X"fe", X"f2", X"fe", X"d8", X"10", X"05", X"f8", X"da", X"02", X"0d", X"05", X"03", X"fe",
                                                        X"03", X"ff", X"00", X"fc", X"f7", X"02", X"de", X"0c", X"02", X"f9", X"e2", X"ff", X"04", X"00", X"06", X"03", X"03", X"02", X"04", X"fd", X"f7", X"05", X"db", X"0c", X"fd", X"ff",
                                                        X"ee", X"00", X"01", X"fe", X"01", X"01", X"02", X"ff", X"ff", X"fb", X"f5", X"fc", X"e4", X"06", X"00", X"fd", X"e5", X"fd", X"06", X"fc", X"04", X"ff", X"02", X"01", X"fa", X"fe",
                                                        X"f8", X"fe", X"e8", X"fd", X"fc", X"fc", X"e6", X"02", X"02", X"01", X"06", X"ff", X"fb", X"ff", X"f9", X"ff", X"f7", X"00", X"e3", X"01", X"ff", X"f9", X"e9", X"03", X"00", X"01",
                                                        X"06", X"fa", X"00", X"01", X"fe", X"fe", X"ee", X"01", X"db", X"01", X"03", X"02", X"e4", X"fd", X"0a", X"ff", X"08", X"fa", X"03", X"02", X"02", X"fd", X"f4", X"01", X"d6", X"04",
                                                        X"ff", X"03", X"df", X"ff", X"04", X"fd", X"0d", X"01", X"01", X"fe", X"00", X"ff", X"f4", X"02", X"d6", X"fc", X"fd", X"01", X"d9", X"02", X"04", X"04", X"08", X"fe", X"fc", X"01",
                                                        X"ff", X"00", X"fe", X"fd", X"dc", X"02", X"fe", X"f7", X"e0", X"02", X"00", X"01", X"0e", X"07", X"fe", X"02", X"fa", X"ff", X"fe", X"07", X"e3", X"ff", X"05", X"00", X"e6", X"08",
                                                        X"03", X"03", X"0d", X"06", X"fe", X"02", X"01", X"01", X"f9", X"01", X"f2", X"fb", X"02", X"f8", X"f2", X"08", X"0b", X"03", X"08", X"fe", X"fd", X"07", X"fd", X"03", X"01", X"04",
                                                        X"e3", X"03", X"ff", X"fc", X"ec", X"05", X"04", X"03", X"04", X"ff", X"fe", X"02", X"ff", X"04", X"fc", X"01", X"e1", X"04", X"04", X"f7", X"e8", X"05", X"08", X"03", X"09", X"fc",
                                                        X"fe", X"03", X"09", X"00", X"f3", X"04", X"e1", X"05", X"01", X"fe", X"df", X"fa", X"07", X"02", X"03", X"00", X"ff", X"ff", X"0c", X"01", X"e5", X"fc", X"d7", X"0c", X"04", X"fd",
                                                        X"d6", X"fa", X"08", X"ff", X"05", X"fd", X"00", X"fe", X"05", X"ff", X"e0", X"fb", X"cb", X"0f", X"fe", X"fa", X"d2", X"f8", X"0b", X"02", X"06", X"01", X"02", X"00", X"f7", X"fc",
                                                        X"ee", X"ff", X"d7", X"0c", X"03", X"01", X"d8", X"fb", X"06", X"03", X"05", X"ff", X"04", X"fd", X"f8", X"00", X"f4", X"fa", X"e3", X"0a", X"06", X"fc", X"e3", X"03", X"0a", X"ff",
                                                        X"03", X"02", X"02", X"01", X"fe", X"fd", X"fc", X"01", X"dd", X"0c", X"05", X"00", X"e9", X"06", X"03", X"04", X"04", X"04", X"00", X"04", X"f4", X"fd", X"fb", X"f5", X"dd", X"09",
                                                        X"00", X"f5", X"f5", X"0b", X"05", X"00", X"03", X"00", X"fc", X"02", X"f9", X"fc", X"fb", X"f7", X"e3", X"06", X"02", X"fb", X"f6", X"09", X"04", X"02", X"00", X"fe", X"03", X"ff",
                                                        X"fa", X"f9", X"f9", X"f7", X"d3", X"06", X"fa", X"ff", X"e2", X"04", X"03", X"fe", X"ff", X"fc", X"ff", X"fc", X"ff", X"f7", X"f1", X"f5", X"d1", X"09", X"fe", X"fc", X"d5", X"fc",
                                                        X"07", X"00", X"04", X"fd", X"01", X"fe", X"ff", X"fc", X"f2", X"fd", X"d1", X"08", X"fd", X"fe", X"dc", X"fa", X"fc", X"00", X"01", X"00", X"05", X"00", X"00", X"fe", X"f9", X"fd",
                                                        X"e4", X"0c", X"03", X"fe", X"db", X"fe", X"ff", X"00", X"05", X"00", X"02", X"fe", X"f9", X"01", X"f3", X"fc", X"e8", X"0c", X"00", X"fe", X"e2", X"fb", X"04", X"02", X"07", X"ff",
                                                        X"fe", X"fd", X"fb", X"00", X"00", X"f9", X"e5", X"01", X"00", X"fe", X"ec", X"05", X"06", X"02", X"06", X"01", X"fa", X"03", X"fc", X"00", X"f6", X"f4", X"ed", X"01", X"ff", X"f6",
                                                        X"ec", X"04", X"05", X"03", X"02", X"fb", X"fc", X"04", X"00", X"fc", X"fc", X"f9", X"ec", X"03", X"ff", X"f8", X"f2", X"06", X"fc", X"02", X"06", X"ff", X"01", X"03", X"08", X"fc",
                                                        X"f6", X"04", X"dc", X"05", X"02", X"fd", X"db", X"fc", X"03", X"00", X"0a", X"fe", X"ff", X"fc", X"fe", X"fa", X"f3", X"fa", X"ce", X"04", X"fd", X"fa", X"d5", X"ff", X"00", X"fd",
                                                        X"08", X"fd", X"fd", X"fd", X"fe", X"00", X"f6", X"f7", X"d0", X"01", X"00", X"f5", X"cf", X"fc", X"03", X"04", X"09", X"fd", X"fe", X"ff", X"fb", X"fd", X"f5", X"fe", X"dc", X"03",
                                                        X"fb", X"f8", X"e0", X"fc", X"fc", X"01", X"0b", X"01", X"ff", X"fc", X"fe", X"fa", X"fd", X"03", X"e9", X"fc", X"00", X"04", X"e9", X"fb", X"00", X"fa", X"0d", X"02", X"fc", X"fe",
                                                        X"f5", X"fd", X"fa", X"fa", X"f1", X"fd", X"fe", X"fe", X"e7", X"ff", X"07", X"fb", X"0b", X"f7", X"fe", X"04", X"fa", X"fc", X"fd", X"03", X"00", X"00", X"00", X"00", X"fe", X"06",
                                                        X"00", X"fd", X"06", X"f4", X"fb", X"01", X"f9", X"fe", X"f4", X"01", X"eb", X"fc", X"f8", X"fc", X"eb", X"fd", X"05", X"05", X"0b", X"f5", X"fa", X"00", X"00", X"00", X"fb", X"01",
                                                        X"df", X"02", X"fd", X"00", X"e9", X"fd", X"00", X"ff", X"05", X"f9", X"fa", X"00", X"ff", X"ff", X"f6", X"fe", X"c3", X"06", X"f9", X"03", X"cf", X"f7", X"03", X"fe", X"0a", X"fe",
                                                        X"fa", X"fb", X"fd", X"05", X"f4", X"fb", X"e9", X"08", X"00", X"f9", X"d4", X"fa", X"0f", X"01", X"0e", X"fd", X"fd", X"04", X"ff", X"01", X"f1", X"f4", X"d7", X"05", X"02", X"fc",
                                                        X"d2", X"00", X"06", X"00", X"08", X"fa", X"fc", X"ff", X"fc", X"03", X"f1", X"00", X"e7", X"00", X"00", X"fe", X"e5", X"01", X"0a", X"04", X"09", X"03", X"fe", X"03", X"ff", X"fd",
                                                        X"f7", X"00", X"f1", X"fe", X"fd", X"fd", X"f2", X"02", X"02", X"fe", X"04", X"ff", X"fe", X"fd", X"01", X"fc", X"fd", X"fb", X"f8", X"02", X"fd", X"fc", X"f4", X"07", X"00", X"fd",
                                                        X"03", X"fc", X"fd", X"fd", X"04", X"fe", X"f8", X"ff", X"ee", X"0b", X"01", X"00", X"ed", X"ff", X"00", X"00", X"02", X"fc", X"ff", X"fc", X"00", X"fb", X"fa", X"01", X"e0", X"0a",
                                                        X"ff", X"01", X"e4", X"fb", X"09", X"fc", X"06", X"fa", X"00", X"fd", X"07", X"ff", X"eb", X"f9", X"cb", X"0c", X"02", X"f8", X"cf", X"fe", X"0a", X"00", X"04", X"f5", X"02", X"01",
                                                        X"01", X"02", X"e7", X"ff", X"de", X"0c", X"03", X"ff", X"ce", X"f8", X"0a", X"03", X"09", X"ff", X"04", X"01", X"03", X"fb", X"f3", X"01", X"ec", X"10", X"05", X"fb", X"e9", X"fe",
                                                        X"08", X"fb", X"06", X"fe", X"02", X"02", X"fd", X"fb", X"f7", X"fe", X"e7", X"0f", X"fe", X"f8", X"ea", X"04", X"fd", X"ff", X"00", X"04", X"01", X"03", X"f6", X"fc", X"05", X"ff",
                                                        X"f7", X"0c", X"00", X"f3", X"fd", X"0d", X"fb", X"00", X"00", X"ff", X"01", X"06", X"fd", X"fe", X"05", X"07", X"f5", X"06", X"01", X"fe", X"f7", X"0b", X"fa", X"04", X"fc", X"fc",
                                                        X"00", X"01", X"fe", X"fc", X"01", X"02", X"e4", X"05", X"01", X"03", X"f0", X"08", X"01", X"fb", X"02", X"ff", X"00", X"fe", X"ff", X"ff", X"f1", X"01", X"e1", X"07", X"ff", X"ff",
                                                        X"d9", X"fb", X"06", X"fe", X"04", X"fb", X"fb", X"fd", X"fd", X"00", X"f2", X"fe", X"d8", X"0b", X"fb", X"fa", X"d7", X"fc", X"09", X"01", X"04", X"fe", X"fb", X"ff", X"f2", X"f8",
                                                        X"f1", X"fa", X"cf", X"06", X"fe", X"fc", X"da", X"01", X"02", X"fd", X"01", X"fe", X"ff", X"00", X"ff", X"fc", X"f5", X"fd", X"d2", X"07", X"fd", X"fb", X"e0", X"01", X"03", X"02",
                                                        X"03", X"05", X"f9", X"02", X"05", X"02", X"f0", X"03", X"c2", X"05", X"fd", X"01", X"c9", X"f3", X"0d", X"04", X"06", X"f9", X"fd", X"fc");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fc";
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

