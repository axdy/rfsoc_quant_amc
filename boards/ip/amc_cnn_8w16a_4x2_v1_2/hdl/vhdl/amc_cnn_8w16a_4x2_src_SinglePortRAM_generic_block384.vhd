-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block384.vhd
-- Created: 2024-11-05 16:19:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block384
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage33/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block384 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block384;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block384 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"0a", X"0e", X"eb", X"fe", X"ea", X"03", X"0b", X"f4", X"01", X"00", X"fc", X"0c", X"08", X"eb",
                                                        X"0d", X"f5", X"05", X"0d", X"f9", X"f7", X"ff", X"02", X"05", X"f5", X"09", X"03", X"f7", X"05", X"fd", X"ec", X"06", X"f3", X"08", X"07", X"fa", X"f9", X"f7", X"fc", X"03", X"f4",
                                                        X"0a", X"ff", X"f5", X"03", X"fd", X"e6", X"05", X"f9", X"05", X"04", X"f8", X"f4", X"ff", X"00", X"07", X"f5", X"0d", X"04", X"f0", X"04", X"01", X"e9", X"09", X"f6", X"01", X"05",
                                                        X"f8", X"f5", X"f5", X"ff", X"06", X"fc", X"06", X"07", X"ef", X"07", X"fd", X"eb", X"07", X"fd", X"fc", X"09", X"fd", X"e8", X"fb", X"ff", X"09", X"ec", X"09", X"0a", X"e9", X"08",
                                                        X"03", X"ee", X"06", X"fd", X"ff", X"07", X"00", X"eb", X"05", X"03", X"0d", X"f5", X"05", X"08", X"ef", X"09", X"00", X"ef", X"03", X"fc", X"02", X"08", X"f8", X"f2", X"fd", X"fd",
                                                        X"04", X"f8", X"0b", X"09", X"ef", X"05", X"fb", X"ea", X"04", X"ff", X"03", X"07", X"fb", X"f6", X"04", X"fc", X"03", X"f9", X"10", X"04", X"f0", X"06", X"f9", X"e8", X"01", X"fd",
                                                        X"09", X"05", X"f4", X"f4", X"f6", X"f9", X"02", X"f4", X"06", X"05", X"f2", X"05", X"fc", X"ea", X"04", X"fa", X"08", X"0a", X"f4", X"f1", X"f7", X"fd", X"04", X"f3", X"0b", X"05",
                                                        X"f2", X"03", X"02", X"e9", X"05", X"f7", X"0a", X"08", X"f2", X"f9", X"f2", X"01", X"07", X"f7", X"04", X"04", X"ff", X"0a", X"03", X"f0", X"09", X"fa", X"06", X"0d", X"f2", X"f7",
                                                        X"ec", X"fc", X"03", X"f5", X"06", X"06", X"f7", X"07", X"01", X"ee", X"04", X"f8", X"01", X"0b", X"f5", X"f4", X"fb", X"fe", X"0a", X"f2", X"06", X"09", X"fa", X"07", X"02", X"ee",
                                                        X"0a", X"f7", X"ff", X"08", X"f5", X"f3", X"fb", X"fe", X"05", X"f2", X"09", X"07", X"fa", X"08", X"04", X"f2", X"04", X"f9", X"07", X"05", X"f5", X"f9", X"f1", X"ff", X"04", X"f5",
                                                        X"08", X"02", X"f4", X"07", X"03", X"f1", X"04", X"fb", X"05", X"09", X"f9", X"f8", X"ef", X"00", X"05", X"f9", X"0b", X"01", X"f6", X"07", X"00", X"ed", X"05", X"f9", X"05", X"08",
                                                        X"f6", X"f9", X"f7", X"01", X"08", X"f4", X"07", X"fe", X"f7", X"03", X"02", X"f0", X"06", X"fc", X"03", X"08", X"f6", X"f9", X"02", X"fd", X"06", X"f7", X"0c", X"04", X"f6", X"04",
                                                        X"fc", X"e5", X"03", X"fd", X"04", X"08", X"f9", X"f6", X"ff", X"ff", X"09", X"f2", X"0e", X"06", X"ef", X"08", X"fb", X"e9", X"06", X"fa", X"03", X"06", X"fb", X"f4", X"fa", X"01",
                                                        X"06", X"f3", X"0e", X"05", X"f1", X"06", X"fa", X"e7", X"05", X"fd", X"fa", X"05", X"fa", X"f0", X"f6", X"fe", X"0b", X"f1", X"08", X"09", X"f1", X"06", X"fd", X"ef", X"06", X"fe",
                                                        X"01", X"03", X"f6", X"ed", X"fa", X"ff", X"08", X"ee", X"09", X"09", X"ee", X"08", X"fd", X"ec", X"04", X"00", X"fd", X"07", X"f8", X"f3", X"ff", X"02", X"08", X"ef", X"0c", X"05",
                                                        X"f0", X"05", X"fd", X"ed", X"06", X"fe", X"03", X"07", X"fd", X"fa", X"fe", X"fd", X"02", X"fa", X"07", X"06", X"f0", X"07", X"fd", X"ec", X"05", X"fc", X"09", X"07", X"fa", X"ff",
                                                        X"fd", X"fd", X"00", X"fc", X"0c", X"04", X"f3", X"03", X"f9", X"ef", X"06", X"f7", X"06", X"08", X"f8", X"fd", X"f8", X"fa", X"03", X"f6", X"05", X"00", X"f3", X"07", X"f9", X"eb",
                                                        X"06", X"fa", X"05", X"08", X"f5", X"f6", X"f5", X"01", X"02", X"f3", X"0a", X"02", X"f5", X"04", X"fe", X"eb", X"04", X"f7", X"03", X"09", X"f0", X"f6", X"f2", X"03", X"06", X"f1",
                                                        X"00", X"02", X"f8", X"08", X"02", X"ed", X"06", X"f9", X"07", X"09", X"f7", X"f9", X"f9", X"01", X"06", X"f6", X"05", X"03", X"fe", X"07", X"04", X"f3", X"05", X"fc", X"05", X"0b",
                                                        X"f7", X"f9", X"f3", X"07", X"07", X"f1", X"07", X"03", X"01", X"08", X"02", X"f1", X"08", X"f9", X"06", X"06", X"f8", X"fd", X"f7", X"00", X"04", X"f1", X"07", X"04", X"f8", X"08",
                                                        X"ff", X"ed", X"03", X"fc", X"03", X"05", X"f8", X"00", X"f2", X"fe", X"ff", X"fc", X"08", X"00", X"fb", X"02", X"ff", X"e8", X"04", X"fb", X"03", X"07", X"fc", X"f7", X"fe", X"00",
                                                        X"01", X"f7", X"0e", X"fc", X"f7", X"ff", X"f9", X"eb", X"01", X"f9", X"02", X"07", X"fa", X"f4", X"fd", X"ff", X"04", X"f8", X"0a", X"ff", X"f4", X"06", X"fc", X"ed", X"02", X"fb",
                                                        X"00", X"04", X"fe", X"ed", X"fb", X"ff", X"03", X"f7", X"0c", X"03", X"ee", X"06", X"f8", X"ea", X"02", X"fc", X"ff", X"09", X"ff", X"ee", X"f8", X"03", X"05", X"ef", X"0b", X"05",
                                                        X"f0", X"04", X"00", X"ec", X"05", X"ff", X"fe", X"06", X"00", X"f2", X"f7", X"ff", X"04", X"f6", X"0e", X"07", X"ef", X"06", X"fe", X"ed", X"04", X"01", X"07", X"08", X"fb", X"e8",
                                                        X"fc", X"fe", X"08", X"eb", X"0c", X"07", X"f0", X"08", X"03", X"e7", X"08", X"ff", X"04", X"04", X"fb", X"ef", X"ff", X"fe", X"04", X"f1", X"08", X"04", X"f3", X"06", X"ff", X"ea",
                                                        X"03", X"fd", X"07", X"05", X"f8", X"f5", X"fc", X"03", X"07", X"f9", X"08", X"03", X"f3", X"04", X"ff", X"e7", X"05", X"fc", X"08", X"04", X"f4", X"fc", X"f7", X"02", X"05", X"f8",
                                                        X"09", X"02", X"f3", X"03", X"fc", X"ed", X"05", X"fb", X"01", X"07", X"f6", X"fc", X"f1", X"ff", X"03", X"f9", X"08", X"02", X"f6", X"05", X"fb", X"ed", X"00", X"f8", X"02", X"0c",
                                                        X"ef", X"f6", X"ee", X"03", X"05", X"ef", X"09", X"04", X"f5", X"07", X"ff", X"ec", X"02", X"f7", X"07", X"07", X"f9", X"f7", X"ee", X"03", X"04", X"f3", X"07", X"05", X"fa", X"04",
                                                        X"05", X"f0", X"07", X"f7", X"05", X"09", X"f6", X"ee", X"f5", X"fb", X"0a", X"eb", X"04", X"04", X"ff", X"06", X"00", X"ed", X"08", X"f9", X"04", X"06", X"f6", X"f2", X"f0", X"ff",
                                                        X"09", X"f0", X"07", X"07", X"00", X"09", X"05", X"f1", X"0b", X"f9", X"05", X"08", X"f1", X"ff", X"ed", X"ff", X"09", X"f4", X"08", X"02", X"ff", X"05", X"03", X"ee", X"08", X"f9",
                                                        X"05", X"08", X"f4", X"fe", X"f3", X"fe", X"04", X"fa", X"04", X"fc", X"f4", X"07", X"01", X"ec", X"04", X"f8", X"05", X"03", X"f5", X"fa", X"f6", X"ff", X"06", X"f8", X"0b", X"00",
                                                        X"f7", X"03", X"fe", X"f0", X"07", X"f8", X"00", X"05", X"fa", X"f6", X"fb", X"00", X"05", X"f2", X"0e", X"04", X"f3", X"06", X"fa", X"ec", X"04", X"fb", X"02", X"05", X"f8", X"f2",
                                                        X"fd", X"00", X"03", X"ed", X"0c", X"02", X"ee", X"07", X"fd", X"ee", X"04", X"f9", X"00", X"06", X"fb", X"e7", X"f8", X"03", X"09", X"e5", X"0c", X"0a", X"ec", X"09", X"02", X"ed",
                                                        X"04", X"fa", X"fb", X"07", X"f8", X"ed", X"f7", X"01", X"07", X"eb", X"0a", X"04", X"ec", X"08", X"ff", X"f0", X"01", X"01", X"ff", X"04", X"fa", X"ef", X"fb", X"fe", X"06", X"f0",
                                                        X"08", X"06", X"ed", X"07", X"01", X"ee", X"04", X"fc", X"ff", X"07", X"f8", X"ef", X"f8", X"02", X"08", X"ec", X"06", X"05", X"f2", X"06", X"00", X"ea", X"02", X"01", X"fe", X"04",
                                                        X"fa", X"f6", X"02", X"ff", X"07", X"f4", X"0e", X"08", X"f9", X"04", X"fc", X"e8", X"06", X"fd", X"03", X"0a", X"fa", X"fa", X"01", X"fe", X"02", X"f8", X"0c", X"06", X"fb", X"05",
                                                        X"fc", X"e7", X"04", X"fd", X"09", X"06", X"f8", X"f6", X"f6", X"fc", X"02", X"f0", X"0e", X"02", X"f7", X"05", X"fd", X"e8", X"09", X"fc", X"0b", X"01", X"f5", X"f8", X"f6", X"fb",
                                                        X"08", X"f3", X"07", X"01", X"f6", X"06", X"00", X"ee", X"09", X"fc", X"0b", X"06", X"f1", X"f6", X"f7", X"01", X"06", X"f4", X"09", X"05", X"f7", X"04", X"03", X"f2", X"08", X"f9",
                                                        X"04", X"06", X"f3", X"ea", X"f1", X"03", X"05", X"ed", X"08", X"05", X"fc", X"04", X"01", X"f0", X"07", X"fa", X"06", X"04", X"f6", X"f1", X"ed", X"02", X"09", X"e9", X"09", X"08",
                                                        X"f6", X"04", X"01", X"f8", X"0a", X"fe", X"05", X"05", X"f7", X"f8", X"ed", X"00", X"06", X"f8", X"0a", X"06", X"fc", X"03", X"00", X"f1", X"07", X"f8", X"00", X"04", X"f7", X"f1",
                                                        X"fa", X"05", X"04", X"ef", X"07", X"05", X"f6", X"00", X"fd", X"ee", X"06", X"fa", X"0a", X"06", X"f7", X"f3", X"fc", X"fe", X"07", X"ef", X"07", X"05", X"fb", X"06", X"00", X"ee",
                                                        X"06", X"f8", X"05", X"05", X"f8", X"f3", X"fe", X"03", X"06", X"f0", X"07", X"00", X"f5", X"02", X"ff", X"ec", X"02", X"f9", X"02", X"04", X"f7", X"fd", X"fa", X"ff", X"08", X"fa",
                                                        X"0c", X"02", X"f0", X"03", X"fb", X"e8", X"05", X"fa", X"03", X"07", X"fb", X"f3", X"f7", X"00", X"05", X"f8", X"11", X"05", X"ef", X"04", X"00", X"ec", X"04", X"fd", X"fd", X"02",
                                                        X"fd", X"fb", X"f9", X"03", X"07", X"fb", X"03", X"05", X"ec", X"04", X"02", X"ef", X"06", X"fd", X"ff", X"04", X"f9", X"ec", X"f8", X"02", X"0a", X"f2", X"05", X"07", X"ec", X"03",
                                                        X"02", X"ec", X"08", X"01", X"fd", X"04", X"fa", X"f7", X"fb", X"f9", X"07", X"f4", X"06", X"05", X"f0", X"05", X"fd", X"eb", X"08", X"00", X"02", X"06", X"f9", X"f7", X"fe", X"00",
                                                        X"07", X"f6", X"07", X"01", X"ef", X"05", X"fb", X"e8", X"07", X"fe", X"08", X"03", X"f9", X"ff", X"f8", X"00", X"03", X"f7", X"09", X"ff", X"f2", X"04", X"fe", X"ea", X"05", X"f9",
                                                        X"04", X"05", X"f9", X"fb", X"f7", X"fe", X"08", X"f5", X"0d", X"02", X"ed", X"04", X"f9", X"ec", X"06", X"f8", X"0a", X"06", X"ef", X"f5", X"f2", X"ff", X"06", X"f3", X"0d", X"05",
                                                        X"f7", X"02", X"00", X"f1", X"07", X"fc", X"05", X"07", X"f5", X"fc", X"f4", X"01", X"04", X"f7", X"04", X"01", X"fc", X"02", X"04", X"f0", X"06", X"f9", X"03", X"06", X"ed", X"f5",
                                                        X"f3", X"fd", X"03", X"ef", X"00", X"fd", X"fb", X"06", X"00", X"f2", X"05", X"f9", X"05", X"08", X"f4", X"f7", X"f4", X"05", X"05", X"f1", X"03", X"01", X"fa", X"07", X"04", X"f0",
                                                        X"06", X"fa", X"07", X"0b", X"f3", X"fc", X"e5", X"05", X"08", X"ef", X"03", X"05", X"f9", X"04", X"03", X"ef", X"05", X"f8", X"03", X"09", X"f6", X"00", X"f6", X"05", X"02", X"f8",
                                                        X"02", X"03", X"f6", X"03", X"01", X"ec", X"06", X"f7", X"ff", X"03", X"f8", X"fe", X"01", X"ff", X"03", X"f9", X"07", X"02", X"f4", X"05", X"fe", X"ec", X"04", X"f7", X"05", X"08",
                                                        X"fe", X"fa", X"fa", X"fc", X"01", X"f1", X"0b", X"04", X"f1", X"02", X"ff", X"ee", X"04", X"f7", X"04", X"02", X"fd", X"f4", X"fd", X"fe", X"02", X"ee", X"0e", X"06", X"ee", X"00",
                                                        X"fa", X"ed", X"05", X"fa", X"03", X"05", X"fe", X"ec", X"f8", X"00", X"07", X"ec", X"0b", X"06", X"ec", X"01", X"fe", X"e9", X"02", X"fc", X"01", X"02", X"f7", X"e5", X"f4", X"fb",
                                                        X"06", X"e8", X"0b", X"07", X"ea", X"06", X"fb", X"ed", X"06", X"fc", X"01", X"04", X"fb", X"ef", X"f9", X"fe", X"05", X"f5", X"0a", X"0a", X"eb", X"07", X"00", X"ee", X"03", X"fe",
                                                        X"ff", X"07", X"fe", X"f5", X"fe", X"fe", X"04", X"f3", X"0f", X"09", X"ea", X"07", X"fd", X"ee", X"04", X"fa", X"01", X"04", X"f8", X"ff", X"ff", X"fe", X"08", X"f4", X"07", X"05",
                                                        X"f0", X"04", X"02", X"ee", X"03", X"fc", X"07", X"09", X"f8", X"fa", X"f7", X"fe", X"08", X"f1", X"07", X"02", X"f2", X"01", X"fe", X"e8", X"00", X"f5", X"06", X"08", X"f3", X"f6",
                                                        X"f2", X"fc", X"03", X"f3", X"05", X"02", X"f4", X"06", X"fe", X"ea", X"05", X"fa", X"06", X"08", X"f2", X"ef", X"f2", X"fc", X"03", X"ef", X"08", X"02", X"f9", X"03", X"ff", X"eb",
                                                        X"06", X"f5", X"02", X"09", X"f2", X"f6", X"f9", X"00", X"07", X"f2", X"06", X"06", X"fc", X"04", X"05", X"f2", X"08", X"fa", X"01", X"09", X"f5", X"fa", X"f4", X"fe", X"03", X"f5",
                                                        X"07", X"01", X"fb", X"08", X"05", X"f0", X"05", X"fa", X"fe", X"08", X"f8", X"f1", X"f5", X"00", X"08", X"f0", X"06", X"05", X"f9", X"05", X"01", X"f2", X"08", X"fe", X"01", X"09",
                                                        X"f8", X"f4", X"f4", X"02", X"09", X"f4", X"0b", X"04", X"f5", X"07", X"02", X"ee", X"07", X"ff", X"03", X"05", X"f7", X"f7", X"fb", X"02", X"05", X"f7", X"0b", X"00", X"f9", X"07",
                                                        X"01", X"e7", X"03", X"f8", X"04", X"04", X"f5", X"fc", X"ff", X"fb", X"02", X"f0", X"09", X"01", X"fc", X"06", X"fd", X"e7", X"07", X"f9", X"04", X"08", X"f4", X"f4", X"fc", X"01",
                                                        X"06", X"eb", X"0a", X"fc", X"f2", X"04", X"00", X"e7", X"03", X"fa", X"06", X"04", X"f5", X"ed", X"01", X"00", X"03", X"e8", X"0c", X"07", X"f1", X"05", X"fc", X"eb", X"01", X"fc",
                                                        X"fe", X"03", X"fa", X"ef", X"f4", X"fc", X"07", X"ee", X"0b", X"08", X"ee", X"06", X"ff", X"eb", X"05", X"fd", X"fe", X"03", X"f9", X"ec", X"f9", X"ff", X"07", X"f1", X"09", X"0a",
                                                        X"ee", X"08", X"03", X"ef", X"0a", X"ff", X"00", X"07", X"f7", X"ec", X"fa", X"fa", X"07", X"f0", X"09", X"06", X"f0", X"08", X"04", X"f3", X"0a", X"fb", X"fe", X"05", X"f6", X"f0",
                                                        X"fb", X"fa", X"08", X"f9", X"08", X"04", X"f0", X"04", X"01", X"ea", X"07", X"fd", X"05", X"02", X"f7", X"f9", X"03", X"fe", X"07", X"f4", X"09", X"05", X"f1", X"08", X"fa", X"e8",
                                                        X"05", X"fb", X"02", X"06", X"f8", X"fd", X"fa", X"fd", X"05", X"fa", X"08", X"04", X"ee", X"04", X"fa", X"ea", X"08", X"f7", X"ff", X"08", X"f5", X"fb", X"f7", X"01", X"07", X"f0",
                                                        X"08", X"00", X"f6", X"06", X"00", X"ee", X"04", X"f6", X"0a", X"04", X"f6", X"f1", X"f3", X"00", X"08", X"ef", X"09", X"06", X"f6", X"04", X"02", X"e8", X"08", X"f8", X"0a", X"06",
                                                        X"f4", X"ee", X"f2", X"fd", X"04", X"ec", X"09", X"00", X"f7", X"07", X"03", X"f0", X"06", X"f8", X"08", X"08", X"f4", X"ef", X"fa", X"ff", X"02", X"e9", X"06", X"05", X"f8", X"05",
                                                        X"ff", X"ed", X"06", X"f7", X"04", X"08", X"ee", X"f2", X"f9", X"01", X"05", X"f0", X"03", X"00", X"f9", X"05", X"02", X"ed", X"06", X"f5", X"05", X"08", X"ee", X"f2", X"fc", X"fd",
                                                        X"02", X"ee", X"08", X"01", X"f5", X"08", X"03", X"ee", X"04", X"f9", X"01", X"08", X"f5", X"fa", X"f2", X"00", X"05", X"f1", X"02", X"01", X"f8", X"02", X"00", X"ed", X"05", X"f9",
                                                        X"02", X"05", X"f3", X"f4", X"f7", X"00", X"05", X"ea", X"08", X"ff", X"f4", X"03", X"fe", X"ea", X"05", X"f4", X"04", X"06", X"fb", X"f4", X"ff", X"ff", X"04", X"ee", X"0c", X"01",
                                                        X"f0", X"04", X"fb", X"ea", X"07", X"f7", X"ff", X"05", X"f6", X"ee", X"01", X"02", X"08", X"ed", X"0c", X"04", X"f0", X"02", X"fa", X"eb", X"08", X"f9", X"06", X"09", X"f9", X"f2",
                                                        X"00", X"fd", X"09", X"f3", X"0d", X"05", X"f0", X"03", X"ff", X"e9", X"03", X"fe", X"fe", X"05", X"fd", X"eb", X"fa", X"fe", X"04", X"f1", X"09", X"0a", X"ea", X"0a", X"02", X"ec",
                                                        X"04", X"fb", X"fa", X"04", X"fb", X"e9", X"f6", X"fe", X"09", X"ec", X"0a", X"08", X"eb", X"06", X"02", X"ef", X"04", X"fd", X"fc", X"05", X"f7", X"fa", X"fb", X"fd", X"08", X"f5",
                                                        X"08", X"05", X"ed", X"04", X"02", X"e6", X"02", X"ff", X"fe", X"0b", X"f9", X"fe", X"f7", X"fc", X"04", X"f6", X"06", X"05", X"f1", X"07", X"fd", X"e7", X"04", X"fd", X"02", X"0b",
                                                        X"fa", X"00", X"f5", X"fb", X"00", X"f7", X"09", X"fe", X"f1", X"03", X"ff", X"e5", X"02", X"f9", X"06", X"05", X"f2", X"fb", X"f5", X"fc", X"07", X"f1", X"0a", X"00", X"f8", X"08",
                                                        X"fe", X"e4", X"07", X"f6", X"13", X"0f", X"f2", X"f0", X"e5", X"04", X"08", X"ec", X"01", X"00", X"01", X"0b", X"04", X"e0", X"0a", X"f2");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f2";
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

