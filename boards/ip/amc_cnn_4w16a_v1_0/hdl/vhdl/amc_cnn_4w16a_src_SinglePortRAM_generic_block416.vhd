-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block416.vhd
-- Created: 2023-06-15 16:03:08
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block416
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage62/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block416 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block416;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block416 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"d5", X"1e", X"15", X"61", X"f5", X"10", X"25", X"f8", X"db", X"19", X"fc", X"22", X"f0", X"07",
                                                        X"c1", X"f2", X"09", X"cd", X"1e", X"dd", X"02", X"06", X"c5", X"01", X"de", X"ee", X"fe", X"23", X"f2", X"f0", X"d2", X"f4", X"cf", X"13", X"06", X"d1", X"ed", X"0d", X"e3", X"ed",
                                                        X"0f", X"dc", X"e3", X"4c", X"d9", X"0a", X"24", X"1a", X"02", X"08", X"f4", X"f6", X"fe", X"ef", X"e8", X"14", X"04", X"42", X"dc", X"fc", X"26", X"01", X"16", X"e7", X"0f", X"d5",
                                                        X"13", X"10", X"e5", X"13", X"09", X"f2", X"c3", X"04", X"0b", X"da", X"24", X"f3", X"21", X"25", X"10", X"1b", X"fc", X"42", X"0f", X"f9", X"e3", X"ff", X"0b", X"f3", X"e8", X"3d",
                                                        X"19", X"07", X"27", X"fb", X"04", X"ff", X"0e", X"0d", X"0d", X"f4", X"b4", X"13", X"e3", X"09", X"16", X"45", X"fd", X"d2", X"24", X"ee", X"04", X"ee", X"16", X"32", X"09", X"0c",
                                                        X"39", X"00", X"f0", X"20", X"fd", X"ef", X"03", X"15", X"ef", X"33", X"fd", X"f1", X"e3", X"f7", X"f3", X"f1", X"39", X"fa", X"0d", X"ef", X"0d", X"dd", X"15", X"00", X"1a", X"20",
                                                        X"20", X"ea", X"ee", X"1f", X"f2", X"e4", X"bc", X"f7", X"d2", X"24", X"ef", X"0f", X"d1", X"f2", X"dc", X"dd", X"d9", X"ee", X"fc", X"5b", X"f6", X"03", X"04", X"0e", X"1a", X"ef",
                                                        X"ec", X"fb", X"cf", X"01", X"10", X"11", X"17", X"fe", X"f2", X"ee", X"f5", X"2c", X"02", X"f6", X"14", X"1d", X"e6", X"ea", X"d1", X"e7", X"ed", X"ec", X"e9", X"d6", X"13", X"04",
                                                        X"f0", X"02", X"b7", X"e9", X"cf", X"2b", X"fc", X"09", X"03", X"02", X"41", X"21", X"14", X"d5", X"04", X"0b", X"fb", X"11", X"1a", X"02", X"c8", X"f2", X"0f", X"29", X"d1", X"13",
                                                        X"f4", X"e4", X"28", X"0a", X"e1", X"0b", X"13", X"07", X"bf", X"f6", X"0c", X"1c", X"d2", X"f9", X"f3", X"e0", X"fe", X"e9", X"de", X"e7", X"23", X"1e", X"fa", X"11", X"df", X"d7",
                                                        X"36", X"3c", X"18", X"f5", X"16", X"10", X"2f", X"fb", X"c9", X"cc", X"10", X"dc", X"00", X"12", X"14", X"11", X"e3", X"18", X"fd", X"44", X"d5", X"0f", X"16", X"14", X"02", X"fe",
                                                        X"07", X"e9", X"fa", X"0f", X"1e", X"ed", X"f2", X"e8", X"02", X"29", X"cf", X"f3", X"dc", X"f0", X"d2", X"dc", X"cf", X"3c", X"ff", X"1f", X"e8", X"f9", X"26", X"06", X"08", X"49",
                                                        X"e9", X"04", X"06", X"2a", X"d4", X"13", X"22", X"01", X"f0", X"21", X"cd", X"da", X"c1", X"18", X"f3", X"19", X"d2", X"01", X"0a", X"e2", X"d2", X"02", X"27", X"e1", X"04", X"43",
                                                        X"d9", X"f4", X"0b", X"00", X"12", X"ed", X"fb", X"0a", X"fb", X"f5", X"de", X"04", X"e4", X"1d", X"ef", X"cd", X"d1", X"0f", X"1c", X"1e", X"02", X"23", X"de", X"03", X"2c", X"ea",
                                                        X"15", X"03", X"ee", X"5c", X"ff", X"de", X"f0", X"ef", X"1c", X"c7", X"f5", X"1b", X"0a", X"f9", X"1b", X"09", X"f7", X"0a", X"26", X"25", X"ef", X"21", X"e2", X"f8", X"02", X"e3",
                                                        X"f7", X"c7", X"c9", X"03", X"f3", X"e8", X"fb", X"0a", X"0e", X"d1", X"06", X"f2", X"21", X"e8", X"14", X"21", X"01", X"1f", X"16", X"d8", X"15", X"19", X"09", X"f4", X"01", X"e0",
                                                        X"00", X"2b", X"00", X"e3", X"f5", X"10", X"f7", X"4a", X"fb", X"12", X"26", X"e4", X"f8", X"f4", X"1f", X"1c", X"fd", X"27", X"20", X"f0", X"d0", X"da", X"f5", X"24", X"05", X"f8",
                                                        X"f4", X"d9", X"ee", X"e7", X"01", X"31", X"f1", X"04", X"1d", X"fa", X"16", X"3d", X"08", X"f1", X"1e", X"ff", X"fb", X"f6", X"df", X"16", X"fd", X"1c", X"13", X"f4", X"f0", X"0a",
                                                        X"2d", X"fc", X"00", X"bd", X"ea", X"00", X"2b", X"f6", X"00", X"02", X"0f", X"fe", X"08", X"2d", X"e5", X"08", X"04", X"b6", X"fe", X"38", X"fb", X"16", X"fe", X"ec", X"ee", X"08",
                                                        X"0d", X"07", X"06", X"fb", X"0c", X"fa", X"fd", X"18", X"fe", X"e8", X"20", X"15", X"38", X"fe", X"26", X"df", X"12", X"1c", X"f7", X"d6", X"ee", X"f9", X"31", X"25", X"e9", X"3d",
                                                        X"11", X"0d", X"22", X"ec", X"c4", X"fd", X"04", X"d8", X"ef", X"28", X"cd", X"ed", X"1b", X"de", X"10", X"30", X"d7", X"f8", X"ee", X"2c", X"07", X"2b", X"eb", X"f3", X"04", X"da",
                                                        X"e2", X"05", X"d3", X"3c", X"fe", X"1a", X"eb", X"0a", X"3e", X"0e", X"f2", X"ef", X"d8", X"30", X"05", X"0f", X"31", X"e9", X"14", X"2c", X"e6", X"09", X"e2", X"14", X"21", X"ea",
                                                        X"00", X"da", X"da", X"ea", X"0e", X"0f", X"3e", X"f6", X"f7", X"ef", X"e7", X"23", X"eb", X"f5", X"26", X"f9", X"cb", X"19", X"e6", X"e4", X"08", X"ef", X"1a", X"04", X"1e", X"d7",
                                                        X"e9", X"37", X"ed", X"13", X"e1", X"df", X"cf", X"df", X"ee", X"10", X"ff", X"3e", X"bf", X"d9", X"33", X"bc", X"f3", X"05", X"f1", X"06", X"e1", X"ea", X"05", X"13", X"1e", X"da",
                                                        X"ed", X"0f", X"25", X"e0", X"fb", X"03", X"f9", X"5a", X"eb", X"01", X"2c", X"05", X"ca", X"e7", X"e5", X"ec", X"05", X"ff", X"e9", X"fe", X"ed", X"c9", X"10", X"15", X"e3", X"27",
                                                        X"01", X"05", X"df", X"d5", X"fa", X"47", X"02", X"18", X"d2", X"e3", X"f5", X"0b", X"04", X"35", X"fb", X"fb", X"fc", X"0b", X"d7", X"ec", X"ec", X"2f", X"00", X"2d", X"32", X"e8",
                                                        X"f9", X"10", X"00", X"4b", X"e9", X"08", X"4a", X"25", X"f4", X"1e", X"00", X"fd", X"ef", X"f7", X"c2", X"eb", X"10", X"eb", X"0b", X"19", X"ff", X"f5", X"00", X"0a", X"03", X"d9",
                                                        X"09", X"16", X"04", X"f1", X"1e", X"02", X"08", X"21", X"ff", X"c5", X"e5", X"e2", X"3b", X"dd", X"1f", X"b9", X"ea", X"46", X"00", X"ff", X"d9", X"e4", X"05", X"f4", X"03", X"38",
                                                        X"14", X"f4", X"4d", X"0d", X"fc", X"09", X"fc", X"4d", X"0a", X"30", X"08", X"fb", X"e4", X"df", X"fb", X"f6", X"e9", X"05", X"d2", X"e9", X"1d", X"e7", X"f3", X"04", X"f1", X"e1",
                                                        X"e8", X"e8", X"12", X"ec", X"0f", X"f3", X"e4", X"f5", X"e6", X"13", X"df", X"09", X"13", X"e9", X"eb", X"3b", X"c6", X"f5", X"cb", X"10", X"fa", X"f8", X"eb", X"14", X"ea", X"e3",
                                                        X"b6", X"e1", X"36", X"44", X"f8", X"07", X"ec", X"f8", X"05", X"1e", X"01", X"0b", X"1d", X"f4", X"ef", X"07", X"fb", X"0a", X"ea", X"00", X"f2", X"1a", X"06", X"da", X"f0", X"f3",
                                                        X"ee", X"33", X"00", X"12", X"07", X"f3", X"fe", X"19", X"21", X"4f", X"16", X"d0", X"06", X"fd", X"1a", X"ee", X"16", X"0a", X"ca", X"00", X"3c", X"19", X"0d", X"00", X"10", X"ef",
                                                        X"0e", X"2f", X"f3", X"0b", X"e9", X"c7", X"15", X"d0", X"18", X"f6", X"11", X"1a", X"15", X"dc", X"0d", X"0a", X"f5", X"1f", X"da", X"00", X"07", X"f1", X"10", X"26", X"cb", X"0b",
                                                        X"da", X"ee", X"10", X"01", X"e5", X"05", X"fc", X"f4", X"e1", X"e9", X"0d", X"21", X"19", X"f2", X"db", X"1d", X"30", X"e9", X"13", X"f1", X"02", X"fc", X"ee", X"f4", X"07", X"f0",
                                                        X"d4", X"17", X"07", X"00", X"f1", X"05", X"ff", X"1e", X"18", X"d9", X"d7", X"22", X"f4", X"de", X"af", X"e8", X"25", X"0c", X"ef", X"e7", X"e5", X"1f", X"2b", X"ff", X"de", X"09",
                                                        X"f1", X"46", X"f1", X"1c", X"09", X"f8", X"07", X"13", X"f9", X"c6", X"e8", X"e1", X"b4", X"fe", X"11", X"cc", X"ea", X"18", X"e6", X"e8", X"26", X"e1", X"cb", X"e1", X"ef", X"00",
                                                        X"1a", X"f4", X"dc", X"16", X"ca", X"f2", X"ff", X"3e", X"f1", X"29", X"f5", X"0f", X"c8", X"d4", X"09", X"fb", X"e9", X"e2", X"2a", X"0a", X"2a", X"e3", X"09", X"bf", X"ed", X"13",
                                                        X"17", X"f4", X"e9", X"0d", X"01", X"18", X"de", X"0a", X"f2", X"01", X"e6", X"fd", X"1d", X"09", X"fb", X"38", X"1b", X"ef", X"f4", X"c5", X"fc", X"18", X"ff", X"df", X"f4", X"da",
                                                        X"00", X"f5", X"e9", X"4c", X"fe", X"30", X"e6", X"eb", X"f6", X"4e", X"07", X"07", X"e6", X"00", X"1c", X"f4", X"f5", X"d3", X"d6", X"34", X"fc", X"e6", X"06", X"ee", X"eb", X"fe",
                                                        X"f3", X"dd", X"19", X"e6", X"06", X"05", X"e9", X"ef", X"12", X"33", X"f3", X"13", X"03", X"00", X"30", X"0d", X"f1", X"d7", X"1b", X"0f", X"13", X"0a", X"ed", X"d2", X"e4", X"09",
                                                        X"fc", X"12", X"18", X"db", X"e1", X"c1", X"06", X"0d", X"f2", X"fe", X"ec", X"fa", X"cb", X"ee", X"d7", X"0e", X"fd", X"f1", X"e3", X"e9", X"1b", X"fb", X"ec", X"c9", X"19", X"de",
                                                        X"ed", X"e8", X"0d", X"13", X"ec", X"4d", X"06", X"d0", X"13", X"f3", X"29", X"dd", X"e8", X"26", X"db", X"fd", X"48", X"11", X"d7", X"15", X"fc", X"3c", X"04", X"ed", X"e6", X"fb",
                                                        X"15", X"e7", X"e7", X"3f", X"c7", X"08", X"2f", X"f5", X"23", X"d7", X"20", X"13", X"f6", X"0a", X"bb", X"d4", X"d3", X"19", X"16", X"bf", X"f2", X"f0", X"d4", X"02", X"f6", X"1f",
                                                        X"05", X"d4", X"0d", X"24", X"b3", X"f9", X"f8", X"fc", X"fe", X"e8", X"e8", X"0a", X"0f", X"f7", X"f4", X"11", X"10", X"0a", X"15", X"04", X"f6", X"0a", X"27", X"c7", X"03", X"14",
                                                        X"0c", X"0a", X"24", X"08", X"2f", X"d4", X"e6", X"24", X"0f", X"4b", X"f4", X"fb", X"e8", X"52", X"e4", X"51", X"dc", X"ef", X"38", X"fa", X"ef", X"03", X"eb", X"35", X"f2", X"f0",
                                                        X"e2", X"e9", X"f9", X"c5", X"03", X"e2", X"13", X"0d", X"fd", X"12", X"07", X"f9", X"13", X"e2", X"f2", X"e7", X"e5", X"ea", X"fc", X"d6", X"0a", X"ed", X"d9", X"0d", X"e9", X"e6",
                                                        X"f9", X"03", X"e1", X"03", X"10", X"32", X"1c", X"04", X"cf", X"11", X"11", X"2d", X"15", X"f0", X"0b", X"d2", X"04", X"eb", X"f0", X"da", X"0f", X"33", X"1b", X"f3", X"fa", X"10",
                                                        X"0c", X"35", X"f7", X"e1", X"18", X"06", X"18", X"fb", X"d4", X"35", X"f4", X"11", X"eb", X"0d", X"ec", X"2f", X"04", X"10", X"e7", X"09", X"22", X"e8", X"32", X"e2", X"12", X"d2",
                                                        X"ed", X"df", X"04", X"08", X"fa", X"32", X"ff", X"f0", X"c9", X"f3", X"37", X"fa", X"c8", X"23", X"fc", X"1f", X"fc", X"2e", X"d6", X"f7", X"cb", X"f4", X"f8", X"d5", X"df", X"fa",
                                                        X"0f", X"01", X"23", X"d3", X"f7", X"42", X"f5", X"12", X"d7", X"e8", X"0b", X"30", X"0c", X"08", X"08", X"fa", X"22", X"07", X"dc", X"f6", X"05", X"4c", X"f5", X"1e", X"e8", X"f9",
                                                        X"02", X"e6", X"f7", X"13", X"0c", X"12", X"d9", X"02", X"d3", X"1d", X"1c", X"fc", X"11", X"2d", X"02", X"f9", X"28", X"c4", X"ff", X"d5", X"07", X"13", X"21", X"d9", X"ee", X"ce",
                                                        X"06", X"0c", X"f8", X"1b", X"ef", X"f9", X"2f", X"08", X"05", X"c3", X"d0", X"e0", X"fd", X"fd", X"c7", X"d8", X"fe", X"0b", X"02", X"ed", X"f8", X"ef", X"fb", X"22", X"fd", X"32",
                                                        X"fa", X"15", X"23", X"05", X"e2", X"ed", X"c4", X"d8", X"f4", X"fa", X"ed", X"f4", X"da", X"0e", X"ff", X"cf", X"f5", X"ff", X"02", X"1b", X"fc", X"fd", X"ee", X"50", X"e7", X"26",
                                                        X"d2", X"ea", X"04", X"cb", X"e6", X"2c", X"f4", X"04", X"20", X"03", X"10", X"df", X"19", X"1a", X"fc", X"2a", X"bf", X"e9", X"1c", X"f4", X"e4", X"1b", X"17", X"f5", X"11", X"10",
                                                        X"e9", X"15", X"09", X"df", X"07", X"f5", X"0d", X"ff", X"dc", X"ed", X"13", X"24", X"da", X"10", X"3d", X"e9", X"2c", X"ee", X"22", X"22", X"f8", X"0f", X"14", X"f2", X"23", X"13",
                                                        X"11", X"d2", X"f6", X"d9", X"dc", X"02", X"d7", X"01", X"18", X"08", X"00", X"dd", X"09", X"ec", X"fc", X"16", X"f8", X"f5", X"11", X"14", X"3a", X"11", X"f1", X"f1", X"29", X"d5",
                                                        X"fd", X"d7", X"06", X"f9", X"e8", X"30", X"01", X"f8", X"e0", X"e7", X"f7", X"16", X"f2", X"f8", X"d3", X"00", X"fe", X"f8", X"c9", X"00", X"22", X"42", X"0e", X"21", X"e7", X"14",
                                                        X"fc", X"f9", X"3a", X"07", X"f8", X"c1", X"ea", X"d4", X"32", X"e6", X"13", X"02", X"e1", X"ee", X"00", X"fa", X"16", X"09", X"07", X"23", X"25", X"37", X"fd", X"2a", X"b1", X"05",
                                                        X"1b", X"3d", X"ef", X"db", X"1f", X"fe", X"04", X"05", X"db", X"dc", X"f7", X"ea", X"03", X"13", X"cc", X"f5", X"f7", X"dc", X"0e", X"cf", X"eb", X"e4", X"32", X"d7", X"e2", X"d6",
                                                        X"fb", X"4c", X"f8", X"fc", X"02", X"00", X"f0", X"0d", X"f2", X"f4", X"ff", X"f9", X"2e", X"ed", X"f7", X"11", X"1d", X"52", X"fe", X"07", X"21", X"f2", X"ef", X"45", X"f3", X"09",
                                                        X"e9", X"01", X"06", X"e4", X"35", X"e9", X"0a", X"0f", X"07", X"1f", X"12", X"fa", X"e5", X"f8", X"fd", X"d5", X"26", X"ec", X"2c", X"e5", X"f7", X"d6", X"23", X"10", X"ed", X"14",
                                                        X"ca", X"e4", X"0e", X"f9", X"08", X"d6", X"15", X"f3", X"00", X"05", X"0c", X"f6", X"26", X"14", X"f0", X"01", X"e7", X"f0", X"f1", X"36", X"15", X"ff", X"13", X"fc", X"3a", X"ec",
                                                        X"05", X"e1", X"fe", X"c8", X"f8", X"e0", X"da", X"fc", X"28", X"2b", X"17", X"ee", X"fd", X"f9", X"36", X"07", X"dc", X"02", X"d3", X"1e", X"ee", X"28", X"f7", X"0a", X"2e", X"3a",
                                                        X"fd", X"1d", X"e9", X"10", X"30", X"09", X"2d", X"ec", X"0d", X"2d", X"f4", X"d7", X"c6", X"f1", X"cf", X"de", X"19", X"c9", X"dd", X"09", X"f9", X"0b", X"23", X"0b", X"ea", X"48",
                                                        X"fb", X"3a", X"0a", X"f5", X"dd", X"f1", X"e3", X"e8", X"c8", X"fb", X"dd", X"29", X"07", X"00", X"f8", X"62", X"d5", X"3c", X"c6", X"e6", X"df", X"2c", X"0e", X"ee", X"f6", X"d9",
                                                        X"24", X"f9", X"0a", X"16", X"df", X"e9", X"e5", X"fa", X"ce", X"eb", X"ea", X"00", X"fc", X"3f", X"f9", X"e8", X"30", X"f8", X"c6", X"f1", X"f0", X"0d", X"f4", X"fe", X"fc", X"eb",
                                                        X"e2", X"12", X"e2", X"e2", X"01", X"de", X"fe", X"e4", X"17", X"27", X"18", X"4e", X"04", X"33", X"10", X"fa", X"0c", X"28", X"09", X"d9", X"01", X"0f", X"fb", X"16", X"0e", X"e6",
                                                        X"f9", X"3f", X"03", X"05", X"bf", X"02", X"1e", X"e1", X"0f", X"07", X"f4", X"0f", X"2c", X"27", X"d3", X"fc", X"ef", X"d9", X"f0", X"d8", X"38", X"eb", X"dc", X"06", X"07", X"15",
                                                        X"14", X"d8", X"0c", X"fe", X"2a", X"e1", X"01", X"e1", X"f4", X"f2", X"c8", X"ff", X"02", X"1a", X"f2", X"09", X"14", X"ed", X"1d", X"f3", X"d6", X"e0", X"e2", X"19", X"d6", X"39",
                                                        X"36", X"05", X"fb", X"bf", X"12", X"f0", X"1a", X"f7", X"3d", X"f7", X"fd", X"dc", X"f9", X"54", X"f6", X"52", X"fd", X"0f", X"e0", X"53", X"fd", X"d8", X"26", X"0d", X"07", X"f6",
                                                        X"de", X"f1", X"08", X"1c", X"f0", X"2f", X"ff", X"0d", X"d1", X"36", X"0d", X"55", X"d9", X"fa", X"f0", X"e7", X"fd", X"d9", X"0e", X"fd", X"0c", X"dc", X"f6", X"e7", X"ff", X"d1",
                                                        X"0f", X"0c", X"01", X"dc", X"23", X"01", X"c9", X"e0", X"21", X"1f", X"07", X"26", X"3f", X"fc", X"f5", X"f3", X"f1", X"26", X"1d", X"09", X"17", X"f3", X"1e", X"11", X"16", X"dd",
                                                        X"e6", X"ee", X"d6", X"f5", X"de", X"23", X"ef", X"fb", X"e4", X"ec", X"ea", X"e2", X"0c", X"f4", X"da", X"db", X"f6", X"02", X"41", X"f0", X"e3", X"12", X"0a", X"28", X"1a", X"1b",
                                                        X"ea", X"0e", X"dd", X"0e", X"03", X"27", X"06", X"1b", X"e8", X"fd", X"2f", X"c7", X"09", X"28", X"fb", X"15", X"42", X"20", X"01", X"dc", X"13", X"02", X"ee", X"0e", X"d3", X"fc",
                                                        X"f9", X"c1", X"f2", X"c5", X"e8", X"0f", X"f6", X"0e", X"10", X"11", X"d8", X"14", X"fb", X"22", X"0c", X"e8", X"c6", X"18", X"f8", X"f0", X"0f", X"ed", X"de", X"0f", X"c1", X"28",
                                                        X"f3", X"52", X"fc", X"dd", X"0e", X"dd", X"c9", X"ea", X"02", X"3f", X"18", X"e0", X"f4", X"29", X"fb", X"03", X"fa", X"24", X"f5", X"1b", X"2e", X"eb", X"eb", X"c7", X"01", X"2b",
                                                        X"d1", X"f8", X"06", X"06", X"de", X"07", X"e8", X"f1", X"0b", X"df", X"ea", X"ec", X"27", X"f4", X"e3", X"3f", X"e6", X"14", X"ea", X"20");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"20";
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

