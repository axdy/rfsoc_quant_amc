-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block398.vhd
-- Created: 2023-08-07 19:04:46
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block398
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage46/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block398 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block398;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block398 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"b5", X"e4", X"ed", X"de", X"e2", X"dc", X"25", X"e3", X"ec", X"ce", X"fa", X"f4", X"f4", X"05",
                                                        X"e7", X"fc", X"f0", X"f6", X"f6", X"f2", X"03", X"0d", X"1a", X"eb", X"ec", X"f4", X"04", X"f5", X"13", X"04", X"07", X"f4", X"fd", X"fa", X"f5", X"13", X"fc", X"0e", X"f2", X"01",
                                                        X"fb", X"0a", X"01", X"13", X"e7", X"f8", X"1c", X"04", X"20", X"01", X"0f", X"1b", X"16", X"01", X"eb", X"f7", X"00", X"dd", X"12", X"06", X"e5", X"02", X"f3", X"04", X"dd", X"12",
                                                        X"f6", X"f4", X"1d", X"03", X"f7", X"06", X"13", X"cd", X"15", X"18", X"f4", X"e8", X"19", X"04", X"16", X"10", X"0d", X"0b", X"ed", X"0e", X"00", X"2a", X"e9", X"35", X"15", X"fa",
                                                        X"f0", X"0e", X"0a", X"08", X"d2", X"eb", X"05", X"ea", X"e1", X"21", X"e1", X"0e", X"05", X"32", X"01", X"0a", X"f5", X"29", X"09", X"f2", X"1c", X"02", X"17", X"e7", X"35", X"ff",
                                                        X"f1", X"eb", X"06", X"1f", X"10", X"1a", X"ea", X"20", X"08", X"fb", X"22", X"fc", X"f8", X"dc", X"e1", X"16", X"f8", X"38", X"10", X"d1", X"01", X"fe", X"e5", X"10", X"18", X"f9",
                                                        X"35", X"08", X"f8", X"fc", X"1a", X"0d", X"e7", X"ee", X"f6", X"e1", X"fc", X"02", X"f6", X"e4", X"0c", X"05", X"30", X"00", X"f9", X"1f", X"25", X"31", X"fd", X"f2", X"ff", X"16",
                                                        X"f0", X"f9", X"e2", X"e0", X"e1", X"f9", X"17", X"fa", X"03", X"0e", X"14", X"f8", X"03", X"f3", X"11", X"18", X"f5", X"0b", X"0a", X"2b", X"f1", X"fa", X"b3", X"f4", X"0b", X"f7",
                                                        X"f1", X"e4", X"15", X"d1", X"ff", X"d9", X"f8", X"13", X"0a", X"dd", X"04", X"05", X"28", X"f2", X"07", X"f9", X"3e", X"df", X"06", X"bf", X"03", X"f3", X"08", X"fa", X"10", X"08",
                                                        X"06", X"e5", X"22", X"f4", X"e6", X"05", X"ff", X"0e", X"e0", X"e0", X"03", X"23", X"fc", X"f7", X"fd", X"29", X"06", X"fd", X"f9", X"fe", X"f5", X"07", X"0e", X"13", X"0e", X"0d",
                                                        X"fe", X"ee", X"ef", X"05", X"11", X"ed", X"f5", X"0a", X"29", X"ed", X"00", X"f7", X"f6", X"f9", X"16", X"21", X"09", X"1a", X"f7", X"ef", X"03", X"db", X"07", X"ef", X"d6", X"f1",
                                                        X"0b", X"09", X"16", X"f7", X"ee", X"d3", X"fb", X"2c", X"01", X"fc", X"01", X"26", X"fd", X"f8", X"2e", X"0f", X"08", X"e9", X"f1", X"25", X"17", X"cb", X"f2", X"12", X"f4", X"f7",
                                                        X"e6", X"17", X"21", X"f0", X"3e", X"05", X"05", X"24", X"1e", X"14", X"ec", X"30", X"05", X"fb", X"f9", X"fa", X"12", X"e4", X"f2", X"0b", X"42", X"ff", X"01", X"14", X"ff", X"01",
                                                        X"24", X"f7", X"f6", X"e9", X"06", X"1d", X"f1", X"05", X"06", X"04", X"2a", X"fa", X"f2", X"e6", X"08", X"00", X"e0", X"f9", X"1e", X"3f", X"16", X"10", X"0d", X"15", X"06", X"02",
                                                        X"36", X"f4", X"e9", X"0a", X"0e", X"2c", X"fd", X"fe", X"f5", X"24", X"11", X"09", X"13", X"3a", X"fe", X"0d", X"f2", X"f7", X"08", X"04", X"06", X"f6", X"0e", X"33", X"04", X"16",
                                                        X"09", X"04", X"fa", X"3d", X"03", X"05", X"d4", X"fe", X"fd", X"d1", X"fb", X"0b", X"1e", X"0d", X"06", X"07", X"13", X"0c", X"15", X"fb", X"fc", X"f1", X"ed", X"fb", X"f5", X"02",
                                                        X"0c", X"34", X"f5", X"d7", X"06", X"22", X"03", X"ff", X"ed", X"ef", X"00", X"f2", X"30", X"f1", X"06", X"03", X"1f", X"d9", X"e4", X"db", X"f5", X"3c", X"1c", X"06", X"0a", X"18",
                                                        X"06", X"ea", X"d5", X"f4", X"0d", X"16", X"24", X"1e", X"02", X"1a", X"f1", X"13", X"00", X"00", X"08", X"ea", X"f1", X"f9", X"be", X"14", X"f7", X"e1", X"f4", X"f8", X"0c", X"0a",
                                                        X"11", X"f9", X"15", X"fc", X"e6", X"1c", X"fd", X"08", X"c5", X"f7", X"06", X"0f", X"07", X"e8", X"ed", X"cd", X"15", X"2b", X"fc", X"f3", X"e9", X"df", X"08", X"f0", X"e9", X"f8",
                                                        X"ff", X"fe", X"12", X"ec", X"d0", X"f9", X"f5", X"d4", X"04", X"e5", X"de", X"eb", X"e1", X"f4", X"11", X"fa", X"ee", X"e9", X"2c", X"16", X"f0", X"c1", X"02", X"df", X"19", X"f5",
                                                        X"e8", X"19", X"0c", X"fc", X"10", X"ef", X"e5", X"06", X"e9", X"ed", X"f6", X"2e", X"16", X"11", X"11", X"e4", X"19", X"c6", X"06", X"f6", X"02", X"f6", X"fc", X"e3", X"05", X"fc",
                                                        X"e9", X"ca", X"03", X"12", X"f4", X"e9", X"06", X"1a", X"08", X"eb", X"f7", X"ff", X"fc", X"05", X"fa", X"18", X"10", X"eb", X"00", X"2b", X"0e", X"09", X"e1", X"f2", X"fe", X"08",
                                                        X"f8", X"03", X"05", X"19", X"f3", X"ef", X"03", X"fa", X"0e", X"ee", X"12", X"fd", X"f4", X"fb", X"09", X"08", X"0a", X"07", X"17", X"ff", X"0d", X"09", X"1f", X"25", X"10", X"e8",
                                                        X"01", X"28", X"fd", X"dc", X"25", X"09", X"12", X"0a", X"10", X"16", X"e2", X"20", X"04", X"0a", X"0c", X"47", X"21", X"1f", X"e4", X"30", X"13", X"05", X"11", X"f2", X"fe", X"fa",
                                                        X"d4", X"f8", X"13", X"47", X"01", X"46", X"1a", X"05", X"09", X"27", X"2c", X"0b", X"2f", X"fd", X"f5", X"08", X"34", X"22", X"03", X"24", X"08", X"2c", X"00", X"29", X"06", X"3d",
                                                        X"10", X"07", X"0e", X"1a", X"03", X"18", X"f7", X"16", X"06", X"49", X"ee", X"5e", X"0a", X"21", X"08", X"36", X"f7", X"fb", X"00", X"ee", X"f8", X"e8", X"10", X"f2", X"27", X"ef",
                                                        X"03", X"3d", X"06", X"28", X"fa", X"1c", X"01", X"08", X"dd", X"fa", X"fe", X"19", X"0d", X"f6", X"22", X"21", X"f8", X"37", X"12", X"06", X"13", X"e8", X"f3", X"ee", X"18", X"03",
                                                        X"08", X"f9", X"0b", X"2c", X"ed", X"3b", X"08", X"06", X"0c", X"fa", X"13", X"16", X"f4", X"0c", X"d9", X"0c", X"01", X"03", X"03", X"f1", X"06", X"03", X"0e", X"04", X"0b", X"10",
                                                        X"f1", X"1e", X"eb", X"10", X"0a", X"fa", X"05", X"0f", X"13", X"d6", X"04", X"1c", X"f7", X"e5", X"0a", X"0b", X"fd", X"01", X"e2", X"09", X"d3", X"03", X"ff", X"01", X"e9", X"17",
                                                        X"01", X"05", X"ef", X"c8", X"f5", X"fd", X"e1", X"2e", X"21", X"f4", X"da", X"fb", X"f9", X"db", X"03", X"0a", X"e2", X"eb", X"fc", X"c3", X"e7", X"ef", X"e2", X"d9", X"0b", X"e7",
                                                        X"d8", X"ec", X"fe", X"fc", X"26", X"da", X"ee", X"06", X"01", X"e2", X"eb", X"fb", X"08", X"eb", X"f7", X"d7", X"09", X"fa", X"0d", X"dc", X"21", X"f7", X"e0", X"07", X"e8", X"31",
                                                        X"13", X"eb", X"e7", X"06", X"0c", X"f0", X"e9", X"f9", X"ff", X"e4", X"02", X"ff", X"ec", X"f2", X"fe", X"ca", X"ec", X"00", X"f7", X"11", X"ed", X"f8", X"c3", X"06", X"fc", X"0f",
                                                        X"f2", X"14", X"0b", X"cc", X"ff", X"00", X"fe", X"07", X"e6", X"01", X"f5", X"ed", X"c8", X"00", X"09", X"f7", X"eb", X"fa", X"e7", X"e1", X"fb", X"c8", X"f8", X"04", X"16", X"16",
                                                        X"ff", X"ea", X"cf", X"14", X"f2", X"fe", X"11", X"f7", X"f4", X"1c", X"13", X"f0", X"06", X"f1", X"e6", X"d7", X"f0", X"f4", X"23", X"f6", X"09", X"f6", X"f1", X"e3", X"f0", X"0f",
                                                        X"fb", X"ce", X"08", X"f5", X"e9", X"15", X"f2", X"ec", X"b5", X"05", X"f1", X"0e", X"f7", X"00", X"e6", X"0e", X"fc", X"22", X"fd", X"e7", X"e8", X"e3", X"ec", X"ed", X"d9", X"00",
                                                        X"f4", X"dd", X"e9", X"fb", X"f9", X"cd", X"0e", X"04", X"14", X"02", X"fc", X"fe", X"11", X"09", X"f9", X"fc", X"05", X"05", X"f4", X"d6", X"f3", X"25", X"00", X"e4", X"14", X"03",
                                                        X"e2", X"25", X"03", X"dc", X"05", X"02", X"04", X"ec", X"ef", X"db", X"13", X"07", X"01", X"c5", X"ed", X"fb", X"0b", X"cd", X"ed", X"f4", X"0a", X"00", X"08", X"f7", X"fa", X"15",
                                                        X"11", X"f3", X"04", X"0d", X"ee", X"0a", X"0a", X"03", X"0a", X"15", X"01", X"1f", X"09", X"0e", X"14", X"fd", X"0c", X"2d", X"f6", X"cc", X"f9", X"fb", X"0d", X"02", X"f4", X"f4",
                                                        X"03", X"09", X"00", X"07", X"e5", X"ee", X"f6", X"e0", X"0a", X"38", X"1b", X"09", X"f3", X"2e", X"1c", X"16", X"0f", X"f8", X"f8", X"e0", X"02", X"04", X"19", X"e6", X"ff", X"fe",
                                                        X"fc", X"06", X"e9", X"1e", X"ef", X"06", X"16", X"f9", X"fc", X"0c", X"24", X"04", X"e1", X"e8", X"06", X"50", X"1a", X"28", X"fd", X"19", X"23", X"fd", X"f2", X"0e", X"fc", X"08",
                                                        X"00", X"22", X"fa", X"12", X"fa", X"39", X"04", X"08", X"0e", X"12", X"0a", X"11", X"03", X"0d", X"ec", X"07", X"fd", X"28", X"1c", X"46", X"1b", X"37", X"ff", X"0a", X"2b", X"15",
                                                        X"f8", X"f8", X"31", X"f6", X"fb", X"fc", X"03", X"33", X"fa", X"ee", X"fb", X"01", X"fe", X"07", X"f6", X"28", X"08", X"0c", X"c4", X"06", X"09", X"11", X"e8", X"f8", X"1f", X"ed",
                                                        X"ed", X"45", X"17", X"ed", X"f4", X"2b", X"29", X"ff", X"25", X"02", X"f6", X"fe", X"24", X"08", X"13", X"d7", X"fd", X"1c", X"0f", X"fe", X"07", X"e2", X"f3", X"02", X"bb", X"04",
                                                        X"f3", X"12", X"18", X"de", X"01", X"16", X"f6", X"0a", X"fd", X"ff", X"f3", X"de", X"13", X"11", X"e0", X"f1", X"13", X"ef", X"e9", X"e2", X"fc", X"eb", X"fd", X"19", X"fa", X"fe",
                                                        X"f1", X"15", X"06", X"fc", X"2b", X"fd", X"00", X"1d", X"d5", X"1d", X"e9", X"cb", X"ea", X"f6", X"ed", X"f1", X"ea", X"d6", X"f7", X"03", X"d8", X"ef", X"04", X"fe", X"13", X"e3",
                                                        X"e3", X"07", X"f8", X"24", X"fe", X"e9", X"08", X"ec", X"f1", X"f1", X"e8", X"f3", X"e7", X"f7", X"f9", X"14", X"ee", X"d2", X"23", X"0a", X"ef", X"0a", X"0e", X"de", X"e5", X"fd",
                                                        X"d5", X"fd", X"fa", X"e5", X"ff", X"d5", X"e6", X"e2", X"f1", X"06", X"f9", X"08", X"ee", X"e1", X"ed", X"dc", X"c1", X"06", X"0c", X"f4", X"fa", X"15", X"e6", X"cb", X"0a", X"29",
                                                        X"fb", X"0a", X"ef", X"df", X"eb", X"e8", X"d4", X"f4", X"fe", X"f2", X"06", X"ed", X"f2", X"c8", X"00", X"2a", X"ec", X"f3", X"18", X"1f", X"18", X"f0", X"f6", X"f5", X"07", X"0f",
                                                        X"18", X"03", X"ec", X"1a", X"fb", X"12", X"04", X"fd", X"e3", X"f5", X"01", X"f7", X"e1", X"04", X"03", X"f9", X"00", X"1e", X"dc", X"d7", X"14", X"c6", X"e5", X"0e", X"03", X"ed",
                                                        X"fd", X"fb", X"26", X"14", X"e8", X"16", X"14", X"ea", X"e7", X"e6", X"01", X"0c", X"0d", X"05", X"01", X"ea", X"fe", X"f5", X"da", X"f1", X"04", X"12", X"0c", X"08", X"1f", X"cc",
                                                        X"01", X"e5", X"00", X"f7", X"00", X"fc", X"19", X"ed", X"18", X"fd", X"f4", X"eb", X"d2", X"fd", X"0c", X"c9", X"0f", X"49", X"e6", X"0e", X"f1", X"e4", X"e2", X"fc", X"cb", X"06",
                                                        X"f8", X"0a", X"f1", X"04", X"e5", X"16", X"fb", X"e4", X"fa", X"ff", X"0d", X"e0", X"0c", X"0f", X"35", X"fd", X"ef", X"fe", X"f6", X"03", X"dd", X"fb", X"0d", X"06", X"f9", X"06",
                                                        X"01", X"00", X"f0", X"fb", X"c2", X"0e", X"02", X"09", X"07", X"10", X"08", X"e6", X"fa", X"df", X"09", X"f4", X"04", X"d9", X"03", X"01", X"d4", X"06", X"08", X"1e", X"d5", X"04",
                                                        X"f2", X"1d", X"f9", X"23", X"03", X"08", X"fb", X"0b", X"f9", X"10", X"e8", X"f6", X"1c", X"08", X"e1", X"1f", X"fe", X"14", X"02", X"ea", X"0d", X"f8", X"0b", X"10", X"16", X"10",
                                                        X"df", X"05", X"fb", X"32", X"f0", X"09", X"24", X"26", X"03", X"1a", X"26", X"fe", X"f3", X"21", X"dd", X"02", X"d7", X"09", X"f8", X"e7", X"01", X"ff", X"0d", X"fa", X"ec", X"29",
                                                        X"09", X"11", X"04", X"03", X"0f", X"fc", X"05", X"07", X"08", X"00", X"21", X"ea", X"f3", X"44", X"f4", X"47", X"1f", X"fc", X"0c", X"de", X"18", X"fa", X"2c", X"fd", X"f3", X"04",
                                                        X"06", X"e7", X"0d", X"d1", X"04", X"4b", X"06", X"0b", X"03", X"fe", X"ea", X"f1", X"18", X"04", X"12", X"f5", X"35", X"16", X"dd", X"2e", X"0a", X"d3", X"02", X"f3", X"ea", X"f8",
                                                        X"fa", X"08", X"00", X"02", X"fb", X"08", X"f3", X"e1", X"05", X"fd", X"13", X"32", X"14", X"f7", X"f7", X"f2", X"0d", X"00", X"00", X"06", X"fe", X"0b", X"ec", X"0e", X"1a", X"0a",
                                                        X"17", X"ed", X"fc", X"ec", X"03", X"f1", X"0d", X"03", X"eb", X"fc", X"04", X"10", X"26", X"0e", X"17", X"be", X"06", X"16", X"00", X"f8", X"f0", X"27", X"10", X"f8", X"be", X"fd",
                                                        X"04", X"f8", X"07", X"06", X"fe", X"15", X"13", X"1a", X"fe", X"fd", X"08", X"ef", X"fb", X"14", X"e2", X"e6", X"f8", X"f4", X"eb", X"d1", X"e5", X"ed", X"fe", X"f2", X"dc", X"1d",
                                                        X"05", X"f9", X"01", X"e2", X"30", X"fe", X"f6", X"ee", X"02", X"fe", X"f9", X"05", X"f6", X"e0", X"ee", X"04", X"de", X"ee", X"f4", X"e6", X"d6", X"02", X"e9", X"fd", X"e3", X"e4",
                                                        X"f3", X"d6", X"02", X"32", X"fa", X"f4", X"e7", X"e4", X"fa", X"ec", X"0e", X"f5", X"e8", X"02", X"eb", X"fa", X"03", X"f6", X"02", X"f7", X"ed", X"f2", X"00", X"ee", X"fc", X"05",
                                                        X"ec", X"01", X"ff", X"e8", X"0b", X"0a", X"0c", X"02", X"f8", X"da", X"01", X"0b", X"02", X"06", X"fb", X"ee", X"2d", X"fa", X"1a", X"fb", X"dc", X"ff", X"fe", X"c8", X"11", X"dd",
                                                        X"03", X"04", X"0e", X"03", X"02", X"e9", X"15", X"06", X"fb", X"fc", X"0f", X"26", X"14", X"12", X"02", X"ff", X"ff", X"0e", X"f6", X"37", X"10", X"fc", X"24", X"fd", X"10", X"0c",
                                                        X"0a", X"dd", X"fa", X"11", X"0e", X"3e", X"08", X"06", X"00", X"0d", X"f8", X"02", X"f5", X"fe", X"ff", X"ef", X"ea", X"fe", X"f1", X"f9", X"03", X"1f", X"08", X"15", X"03", X"f3",
                                                        X"f3", X"f6", X"46", X"ea", X"08", X"eb", X"2e", X"15", X"17", X"39", X"f7", X"fe", X"f3", X"0c", X"ee", X"03", X"05", X"fa", X"f8", X"ed", X"f7", X"1c", X"eb", X"2c", X"00", X"25",
                                                        X"0c", X"19", X"fa", X"04", X"26", X"f3", X"11", X"f9", X"fa", X"f5", X"fa", X"10", X"fa", X"ec", X"08", X"fd", X"10", X"58", X"05", X"01", X"e7", X"27", X"21", X"fe", X"4e", X"08",
                                                        X"f2", X"f1", X"fa", X"13", X"1d", X"f4", X"04", X"02", X"01", X"f2", X"27", X"32", X"25", X"fc", X"f1", X"10", X"f6", X"fc", X"0f", X"16", X"18", X"dd", X"fb", X"42", X"0b", X"f0",
                                                        X"f4", X"0c", X"f8", X"ff", X"d7", X"07", X"00", X"0a", X"15", X"0f", X"e6", X"fb", X"02", X"23", X"eb", X"01", X"f9", X"ff", X"ea", X"11", X"19", X"f1", X"ec", X"df", X"f7", X"d2",
                                                        X"ee", X"d8", X"fb", X"d1", X"e7", X"fd", X"1f", X"21", X"f8", X"f8", X"d1", X"fd", X"f6", X"0b", X"18", X"f1", X"02", X"fc", X"0f", X"dc", X"e7", X"f6", X"10", X"e0", X"08", X"f3",
                                                        X"e4", X"fa", X"fd", X"f3", X"1a", X"f0", X"07", X"1f", X"fd", X"22", X"0c", X"ff", X"dc", X"26", X"10", X"06", X"d0", X"02", X"00", X"f0", X"cf", X"15", X"04", X"1c", X"02", X"27",
                                                        X"0e", X"01", X"ed", X"ef", X"f2", X"e5", X"e2", X"00", X"e4", X"05", X"e8", X"1c", X"e3", X"da", X"ff", X"cc", X"00", X"03", X"f6", X"fc", X"0c", X"06", X"16", X"05", X"0e", X"f5",
                                                        X"18", X"eb", X"d1", X"d6", X"e7", X"bf", X"fd", X"ee", X"e9", X"e8", X"07", X"ef", X"d5", X"fa", X"0c", X"13", X"df", X"f7", X"05", X"c3", X"f3", X"00", X"f1", X"f5", X"ff", X"12",
                                                        X"ef", X"f7", X"17", X"0c", X"0b", X"00", X"32", X"18", X"05", X"15", X"15", X"1c", X"e8", X"f7", X"fe", X"e2", X"0c", X"f1", X"dc", X"00", X"1c", X"fd", X"d3", X"19", X"01", X"bb",
                                                        X"0e", X"d0", X"01", X"13", X"f6", X"da", X"10", X"fe", X"0d", X"04", X"0e", X"0b", X"f8", X"0d", X"0d", X"f8", X"04", X"d7", X"f2", X"fb", X"00", X"15", X"03", X"eb", X"d7", X"e3",
                                                        X"05", X"15", X"0f", X"07", X"e3", X"df", X"f7", X"da", X"fe", X"10", X"1b", X"03", X"fa", X"06", X"cc", X"ed", X"f5", X"0c", X"df", X"09", X"16", X"27", X"f9", X"d2", X"00", X"fe",
                                                        X"e0", X"19", X"0a", X"f7", X"04", X"ef", X"ef", X"d8", X"25", X"f3", X"ea", X"2d", X"06", X"e4", X"fd", X"ed", X"e7", X"02", X"08", X"fc");
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

