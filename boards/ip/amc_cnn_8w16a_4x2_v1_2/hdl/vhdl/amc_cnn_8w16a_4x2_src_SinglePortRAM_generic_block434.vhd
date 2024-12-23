-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block434.vhd
-- Created: 2024-11-05 16:19:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block434
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage79/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block434 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block434;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block434 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"cc", X"f4", X"00", X"f6", X"03", X"00", X"04", X"f6", X"0b", X"13", X"e0", X"fb", X"fd", X"f3",
                                                        X"01", X"fe", X"f0", X"00", X"f7", X"f4", X"fe", X"03", X"00", X"f8", X"01", X"09", X"f2", X"ff", X"03", X"fb", X"01", X"fd", X"f8", X"03", X"fc", X"fd", X"10", X"00", X"05", X"f8",
                                                        X"00", X"07", X"fd", X"04", X"03", X"fa", X"05", X"02", X"f2", X"fe", X"03", X"04", X"05", X"fe", X"03", X"ff", X"ff", X"07", X"f7", X"fd", X"03", X"f8", X"03", X"00", X"ef", X"ff",
                                                        X"fd", X"08", X"07", X"01", X"01", X"05", X"ff", X"0a", X"01", X"00", X"05", X"fa", X"03", X"fb", X"e6", X"fd", X"fc", X"fd", X"f9", X"00", X"f7", X"ff", X"fb", X"04", X"ef", X"fc",
                                                        X"fe", X"f6", X"fc", X"fc", X"dd", X"fc", X"fc", X"03", X"fb", X"02", X"f8", X"00", X"02", X"08", X"f6", X"fb", X"ff", X"f4", X"fe", X"f9", X"d7", X"fc", X"00", X"fc", X"fe", X"fd",
                                                        X"fc", X"f5", X"05", X"0a", X"ec", X"f8", X"f7", X"f5", X"fb", X"fc", X"e0", X"01", X"04", X"fc", X"09", X"fc", X"fd", X"f8", X"0a", X"0e", X"f2", X"01", X"fc", X"f5", X"00", X"fc",
                                                        X"f0", X"01", X"04", X"f7", X"09", X"ff", X"ff", X"f3", X"0d", X"14", X"f8", X"01", X"ff", X"ee", X"fd", X"ff", X"f7", X"04", X"00", X"fe", X"fb", X"fe", X"00", X"f6", X"07", X"0d",
                                                        X"f9", X"04", X"ff", X"f9", X"02", X"fe", X"f9", X"04", X"fe", X"01", X"06", X"03", X"fe", X"fb", X"09", X"0f", X"fc", X"06", X"04", X"f4", X"02", X"fb", X"f4", X"05", X"fc", X"fc",
                                                        X"04", X"fe", X"ff", X"f8", X"04", X"07", X"f9", X"fe", X"ff", X"f4", X"fd", X"fb", X"f5", X"03", X"fc", X"fb", X"ff", X"f8", X"fc", X"01", X"05", X"05", X"00", X"ff", X"00", X"f5",
                                                        X"fc", X"01", X"e6", X"04", X"fc", X"f9", X"fd", X"06", X"ff", X"f7", X"ff", X"0c", X"fd", X"05", X"fa", X"f7", X"ff", X"fe", X"d4", X"04", X"fc", X"fe", X"ff", X"ff", X"ff", X"f9",
                                                        X"fe", X"0e", X"f7", X"03", X"01", X"fc", X"fc", X"ff", X"d5", X"01", X"fd", X"02", X"00", X"05", X"fd", X"fe", X"fc", X"0e", X"f0", X"03", X"f9", X"fa", X"fe", X"fd", X"ea", X"00",
                                                        X"ff", X"04", X"03", X"04", X"fa", X"ff", X"08", X"0f", X"f6", X"02", X"f8", X"f9", X"fc", X"fc", X"f3", X"02", X"07", X"00", X"02", X"fe", X"fe", X"01", X"0d", X"0f", X"f9", X"00",
                                                        X"fc", X"f5", X"ff", X"fc", X"f8", X"06", X"01", X"fd", X"03", X"00", X"01", X"f9", X"01", X"0b", X"fc", X"01", X"00", X"fd", X"fb", X"01", X"f1", X"ff", X"04", X"03", X"06", X"02",
                                                        X"fe", X"fe", X"02", X"09", X"fc", X"02", X"ff", X"f7", X"03", X"fc", X"f3", X"04", X"03", X"00", X"fe", X"03", X"02", X"fe", X"f8", X"08", X"fe", X"ff", X"ff", X"f2", X"04", X"fc",
                                                        X"ea", X"fb", X"fe", X"f9", X"fa", X"fd", X"01", X"fa", X"ff", X"09", X"f7", X"00", X"04", X"f7", X"03", X"fc", X"dc", X"02", X"fc", X"fd", X"04", X"ff", X"fe", X"01", X"fe", X"09",
                                                        X"fa", X"01", X"00", X"f9", X"00", X"02", X"df", X"fc", X"fe", X"f9", X"fd", X"03", X"fe", X"f2", X"01", X"0c", X"f0", X"ff", X"01", X"f8", X"fe", X"02", X"e5", X"ff", X"01", X"f9",
                                                        X"fa", X"03", X"ff", X"fc", X"07", X"0d", X"f3", X"04", X"05", X"f8", X"03", X"02", X"f4", X"fa", X"01", X"00", X"fd", X"02", X"01", X"00", X"02", X"08", X"f6", X"fd", X"03", X"f5",
                                                        X"03", X"ff", X"fb", X"fb", X"ff", X"fd", X"08", X"05", X"01", X"ff", X"03", X"08", X"f5", X"fd", X"08", X"f8", X"09", X"00", X"f7", X"01", X"fe", X"00", X"08", X"fa", X"fe", X"fe",
                                                        X"01", X"04", X"f5", X"ff", X"0a", X"f6", X"01", X"fe", X"ec", X"fb", X"fb", X"01", X"fe", X"fd", X"ff", X"ff", X"01", X"09", X"ee", X"fb", X"04", X"f6", X"03", X"fa", X"e9", X"fe",
                                                        X"fc", X"fa", X"fc", X"02", X"fd", X"f4", X"05", X"0e", X"fe", X"fd", X"02", X"fa", X"01", X"ff", X"e1", X"01", X"f8", X"fe", X"fd", X"04", X"00", X"fd", X"fd", X"0a", X"f4", X"00",
                                                        X"fe", X"f3", X"fe", X"01", X"e9", X"02", X"fe", X"01", X"04", X"ff", X"04", X"ff", X"06", X"0c", X"f6", X"01", X"fe", X"f7", X"05", X"ff", X"ec", X"04", X"fe", X"04", X"fe", X"07",
                                                        X"03", X"04", X"00", X"08", X"fb", X"03", X"fc", X"fc", X"01", X"00", X"eb", X"02", X"03", X"04", X"ff", X"ff", X"ff", X"03", X"07", X"06", X"f3", X"03", X"00", X"f8", X"ff", X"ff",
                                                        X"ed", X"03", X"05", X"fe", X"07", X"ff", X"01", X"f7", X"07", X"07", X"f4", X"04", X"fe", X"f9", X"fc", X"fe", X"f8", X"02", X"07", X"02", X"05", X"fe", X"03", X"01", X"0a", X"0b",
                                                        X"f5", X"03", X"02", X"f9", X"fe", X"00", X"e0", X"05", X"05", X"f8", X"fd", X"05", X"04", X"f6", X"03", X"0e", X"f8", X"03", X"fb", X"fb", X"fd", X"01", X"db", X"00", X"ff", X"f9",
                                                        X"ff", X"fc", X"fe", X"fe", X"04", X"10", X"f8", X"01", X"04", X"fa", X"ff", X"02", X"eb", X"01", X"fb", X"fe", X"ff", X"05", X"fe", X"01", X"f8", X"0d", X"fb", X"01", X"02", X"f8",
                                                        X"fd", X"00", X"f9", X"03", X"fe", X"fa", X"f9", X"05", X"fe", X"f3", X"fb", X"0a", X"f3", X"08", X"07", X"07", X"fe", X"fc", X"f8", X"01", X"fa", X"fc", X"fb", X"08", X"06", X"f6",
                                                        X"f9", X"06", X"f4", X"01", X"07", X"02", X"ff", X"fd", X"fe", X"03", X"ff", X"02", X"fa", X"04", X"04", X"f9", X"fe", X"09", X"02", X"fe", X"01", X"fe", X"00", X"f8", X"04", X"03",
                                                        X"03", X"04", X"0b", X"ff", X"02", X"fd", X"07", X"08", X"01", X"01", X"07", X"fb", X"fe", X"00", X"f7", X"03", X"fd", X"05", X"fc", X"02", X"f9", X"ff", X"06", X"07", X"f4", X"03",
                                                        X"04", X"ee", X"fb", X"fc", X"e6", X"01", X"fd", X"03", X"f8", X"00", X"fd", X"00", X"04", X"0a", X"f3", X"00", X"00", X"fa", X"f9", X"00", X"e1", X"02", X"00", X"01", X"f7", X"fe",
                                                        X"fd", X"03", X"02", X"07", X"f5", X"fd", X"fa", X"ff", X"fb", X"fb", X"eb", X"04", X"ff", X"fc", X"fe", X"ff", X"00", X"fd", X"02", X"0e", X"01", X"00", X"fd", X"f7", X"ff", X"00",
                                                        X"f4", X"01", X"02", X"f7", X"05", X"ff", X"ff", X"fa", X"06", X"10", X"fc", X"00", X"fa", X"f5", X"00", X"00", X"f9", X"fc", X"fd", X"f7", X"09", X"03", X"02", X"f7", X"03", X"0c",
                                                        X"fa", X"ff", X"01", X"f9", X"03", X"00", X"f3", X"fd", X"fb", X"fa", X"ff", X"fb", X"05", X"fb", X"07", X"0c", X"fb", X"ff", X"fc", X"fb", X"04", X"fe", X"ee", X"03", X"fe", X"01",
                                                        X"fa", X"fd", X"00", X"00", X"fe", X"09", X"01", X"01", X"fc", X"f9", X"00", X"01", X"ee", X"ff", X"fe", X"07", X"f9", X"02", X"03", X"06", X"01", X"0a", X"fb", X"00", X"05", X"f7",
                                                        X"04", X"01", X"f2", X"05", X"04", X"0a", X"f9", X"03", X"04", X"03", X"02", X"0e", X"fd", X"01", X"00", X"f4", X"05", X"fd", X"ee", X"fd", X"06", X"fd", X"07", X"fd", X"02", X"00",
                                                        X"05", X"0e", X"f6", X"00", X"fe", X"f6", X"02", X"ff", X"e9", X"fc", X"02", X"ff", X"fa", X"04", X"fe", X"fe", X"06", X"0b", X"f0", X"ff", X"fe", X"f9", X"ff", X"00", X"f6", X"fc",
                                                        X"02", X"00", X"01", X"05", X"03", X"fa", X"01", X"0b", X"fd", X"02", X"02", X"ff", X"ff", X"00", X"f8", X"fe", X"00", X"fc", X"01", X"01", X"01", X"f9", X"00", X"08", X"f5", X"01",
                                                        X"ff", X"f7", X"ff", X"03", X"fd", X"01", X"fe", X"f8", X"fe", X"02", X"03", X"f5", X"04", X"0a", X"fc", X"03", X"fd", X"f4", X"07", X"03", X"fa", X"00", X"fb", X"fa", X"00", X"ff",
                                                        X"04", X"f9", X"02", X"0b", X"fc", X"03", X"ff", X"fb", X"04", X"01", X"ee", X"00", X"fb", X"f8", X"08", X"fc", X"01", X"f7", X"05", X"09", X"fa", X"00", X"fc", X"f4", X"07", X"fd",
                                                        X"ee", X"fb", X"fe", X"ff", X"00", X"00", X"03", X"f8", X"05", X"08", X"f8", X"ff", X"02", X"f6", X"00", X"00", X"de", X"fe", X"00", X"02", X"00", X"f8", X"fe", X"f9", X"06", X"06",
                                                        X"f8", X"fd", X"fe", X"f9", X"01", X"fe", X"d9", X"fd", X"01", X"ff", X"fa", X"f6", X"fe", X"04", X"ff", X"0a", X"fa", X"fd", X"ff", X"f7", X"01", X"ff", X"eb", X"fc", X"03", X"ff",
                                                        X"02", X"fa", X"00", X"ff", X"03", X"0f", X"f8", X"03", X"08", X"f7", X"00", X"02", X"f6", X"fc", X"02", X"fd", X"06", X"fe", X"fd", X"fd", X"0a", X"09", X"f2", X"fe", X"00", X"f8",
                                                        X"02", X"fd", X"f4", X"00", X"fc", X"00", X"fc", X"06", X"00", X"fd", X"04", X"0a", X"fc", X"04", X"01", X"f8", X"05", X"ff", X"e5", X"ff", X"fb", X"fd", X"0c", X"07", X"ff", X"ff",
                                                        X"05", X"0e", X"f5", X"01", X"fd", X"fb", X"fc", X"ff", X"e7", X"03", X"f7", X"03", X"01", X"ff", X"01", X"00", X"ff", X"08", X"01", X"02", X"fd", X"f4", X"ff", X"01", X"eb", X"fe",
                                                        X"03", X"07", X"f9", X"fd", X"fd", X"07", X"06", X"0b", X"f1", X"fc", X"fb", X"f7", X"03", X"ff", X"e7", X"01", X"fd", X"06", X"fe", X"ff", X"fe", X"07", X"02", X"06", X"f5", X"01",
                                                        X"fb", X"fa", X"ff", X"ff", X"e3", X"01", X"fe", X"05", X"05", X"fd", X"fd", X"05", X"01", X"0a", X"f5", X"ff", X"fd", X"fe", X"fc", X"04", X"e2", X"05", X"02", X"02", X"f6", X"06",
                                                        X"04", X"01", X"fc", X"0a", X"fd", X"00", X"02", X"ff", X"fe", X"04", X"e8", X"04", X"02", X"fd", X"01", X"02", X"03", X"ff", X"fe", X"0a", X"fa", X"01", X"04", X"fe", X"fd", X"05",
                                                        X"fb", X"06", X"01", X"ff", X"f8", X"08", X"06", X"fc", X"fa", X"04", X"fc", X"06", X"03", X"fc", X"02", X"03", X"fc", X"05", X"fe", X"03", X"00", X"01", X"01", X"fe", X"00", X"06",
                                                        X"fb", X"01", X"05", X"ff", X"fe", X"02", X"f1", X"03", X"01", X"06", X"f9", X"02", X"01", X"03", X"fe", X"08", X"f9", X"00", X"00", X"f5", X"02", X"fc", X"f5", X"07", X"00", X"01",
                                                        X"fc", X"fd", X"fe", X"00", X"02", X"09", X"fd", X"06", X"ff", X"f6", X"fe", X"ff", X"ec", X"01", X"ff", X"03", X"ff", X"06", X"00", X"06", X"00", X"09", X"fb", X"fe", X"fa", X"f7",
                                                        X"fd", X"fe", X"ef", X"07", X"fd", X"fd", X"00", X"03", X"02", X"fe", X"ff", X"06", X"01", X"ff", X"ff", X"fb", X"fe", X"04", X"e5", X"00", X"02", X"02", X"fe", X"02", X"00", X"05",
                                                        X"05", X"09", X"f6", X"ff", X"fc", X"f8", X"04", X"04", X"e8", X"00", X"01", X"ff", X"fa", X"ff", X"03", X"fc", X"04", X"0e", X"fb", X"01", X"fe", X"01", X"02", X"02", X"f5", X"ff",
                                                        X"05", X"06", X"01", X"02", X"04", X"01", X"08", X"06", X"f9", X"00", X"fd", X"f7", X"06", X"03", X"f1", X"04", X"00", X"fb", X"05", X"ff", X"ff", X"f8", X"05", X"0d", X"f9", X"02",
                                                        X"fe", X"fa", X"04", X"fd", X"ee", X"00", X"00", X"06", X"00", X"fc", X"fd", X"00", X"04", X"05", X"f9", X"00", X"03", X"fc", X"fd", X"fc", X"f1", X"03", X"fc", X"06", X"fd", X"fc",
                                                        X"01", X"fe", X"06", X"09", X"00", X"ff", X"00", X"fd", X"00", X"fe", X"f2", X"02", X"ff", X"00", X"f9", X"fe", X"01", X"ff", X"fe", X"07", X"00", X"01", X"fd", X"fc", X"01", X"fd",
                                                        X"f0", X"fc", X"03", X"fa", X"04", X"04", X"02", X"f9", X"06", X"0e", X"f9", X"01", X"fb", X"f9", X"00", X"fc", X"ec", X"fd", X"05", X"fe", X"f6", X"01", X"02", X"ff", X"05", X"0d",
                                                        X"f5", X"fd", X"00", X"f8", X"00", X"02", X"fa", X"01", X"01", X"fa", X"fe", X"04", X"03", X"fd", X"02", X"0e", X"02", X"03", X"00", X"fa", X"ff", X"04", X"f6", X"00", X"fd", X"fe",
                                                        X"05", X"05", X"fe", X"fd", X"07", X"0c", X"fa", X"02", X"fe", X"f5", X"01", X"00", X"f7", X"01", X"01", X"f9", X"05", X"fc", X"ff", X"f6", X"02", X"0c", X"00", X"08", X"01", X"f9",
                                                        X"06", X"01", X"f5", X"fb", X"01", X"fd", X"05", X"fa", X"04", X"fc", X"06", X"0f", X"f6", X"01", X"00", X"fb", X"05", X"ff", X"f4", X"02", X"01", X"06", X"ff", X"03", X"05", X"02",
                                                        X"03", X"0a", X"05", X"fd", X"05", X"f3", X"03", X"fb", X"f5", X"fe", X"fd", X"f7", X"ff", X"02", X"ff", X"fb", X"02", X"08", X"02", X"ff", X"fc", X"f2", X"00", X"00", X"f0", X"fe",
                                                        X"fd", X"02", X"fa", X"00", X"ff", X"00", X"fd", X"08", X"fb", X"00", X"00", X"fd", X"03", X"02", X"e7", X"fb", X"fe", X"fe", X"fd", X"fc", X"01", X"f9", X"00", X"0d", X"f2", X"ff",
                                                        X"00", X"f4", X"02", X"ff", X"e8", X"fc", X"02", X"01", X"f9", X"09", X"03", X"02", X"fd", X"07", X"fb", X"fe", X"05", X"f9", X"06", X"03", X"ed", X"ff", X"fb", X"0b", X"ff", X"ff",
                                                        X"fe", X"09", X"03", X"06", X"f8", X"fb", X"fc", X"f8", X"00", X"fd", X"02", X"03", X"fe", X"06", X"01", X"fc", X"ff", X"00", X"01", X"09", X"f9", X"fe", X"02", X"f5", X"03", X"ff",
                                                        X"04", X"02", X"fe", X"fe", X"08", X"fd", X"02", X"01", X"0a", X"08", X"02", X"fb", X"ff", X"f8", X"06", X"fc", X"f5", X"03", X"fc", X"00", X"04", X"fe", X"02", X"fb", X"07", X"09",
                                                        X"ff", X"ff", X"02", X"f7", X"03", X"01", X"f0", X"00", X"fc", X"03", X"fe", X"00", X"fc", X"f8", X"07", X"0e", X"ef", X"01", X"00", X"f9", X"00", X"fd", X"e4", X"00", X"00", X"ff",
                                                        X"f9", X"fc", X"00", X"f3", X"04", X"0a", X"ee", X"03", X"07", X"fa", X"02", X"fc", X"e6", X"01", X"02", X"f6", X"fc", X"03", X"00", X"f5", X"04", X"11", X"ed", X"03", X"fe", X"f7",
                                                        X"fe", X"fd", X"ee", X"05", X"05", X"fc", X"ff", X"05", X"02", X"f9", X"03", X"10", X"f4", X"06", X"04", X"fc", X"00", X"01", X"e8", X"05", X"01", X"02", X"06", X"02", X"ff", X"07",
                                                        X"00", X"0a", X"fd", X"fd", X"fa", X"f9", X"00", X"01", X"f0", X"07", X"fe", X"ff", X"0a", X"00", X"01", X"ff", X"06", X"0d", X"ff", X"03", X"fc", X"f8", X"03", X"00", X"f7", X"06",
                                                        X"02", X"07", X"01", X"ff", X"ff", X"02", X"09", X"0e", X"fb", X"02", X"fe", X"f8", X"02", X"fc", X"f5", X"03", X"fa", X"05", X"fc", X"01", X"fe", X"03", X"fe", X"0a", X"f9", X"04",
                                                        X"fe", X"f5", X"01", X"fb", X"e9", X"01", X"01", X"07", X"f8", X"fb", X"01", X"05", X"ff", X"0a", X"f3", X"fa", X"fe", X"f7", X"fc", X"fc", X"f0", X"02", X"fd", X"02", X"f7", X"04",
                                                        X"fa", X"03", X"fa", X"08", X"f8", X"00", X"f8", X"f7", X"fa", X"00", X"dc", X"07", X"00", X"ff", X"fc", X"00", X"fc", X"03", X"02", X"0c", X"fa", X"01", X"ff", X"f9", X"fd", X"01",
                                                        X"e8", X"01", X"03", X"fc", X"04", X"ff", X"03", X"fc", X"02", X"10", X"00", X"01", X"00", X"f7", X"fe", X"05", X"ed", X"00", X"04", X"06", X"fc", X"03", X"01", X"06", X"08", X"0e",
                                                        X"fb", X"07", X"ff", X"f9", X"05", X"06", X"df", X"00", X"05", X"08", X"09", X"fa", X"01", X"0c", X"07", X"0b", X"f6", X"02", X"f8", X"fc", X"02", X"03", X"e4", X"fd", X"03", X"03",
                                                        X"05", X"f9", X"02", X"04", X"01", X"08", X"fd", X"00", X"fc", X"f8", X"02", X"fd", X"ec", X"fb", X"fe", X"01", X"fa", X"f9", X"02", X"ff", X"0c", X"07", X"f6", X"00", X"fe", X"f7",
                                                        X"00", X"fa", X"ed", X"fd", X"f9", X"04", X"f5", X"06", X"02", X"fa", X"ff", X"0a", X"fb", X"fc", X"fe", X"f7", X"01", X"f9", X"f4", X"ff", X"fe", X"fd", X"fa", X"00", X"ff", X"f7",
                                                        X"00", X"0c", X"f6", X"fd", X"00", X"fa", X"fe", X"fd", X"ef", X"ff", X"fb", X"ff", X"00", X"00", X"ff", X"f8", X"00", X"0b", X"f3", X"00", X"04", X"03", X"fe", X"fe", X"fd", X"08",
                                                        X"fb", X"fd", X"05", X"ff", X"04", X"fe", X"ff", X"09", X"04", X"01", X"05", X"f9", X"00", X"fc", X"f3", X"06", X"fc", X"f8", X"fe", X"fc", X"ff", X"fc", X"00", X"05", X"fb", X"fd",
                                                        X"03", X"fb", X"fc", X"f9", X"e0", X"02", X"fe", X"f3", X"00", X"02", X"fd", X"f8", X"04", X"0d", X"fb", X"01", X"09", X"ec", X"fc", X"fe");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fe";
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

