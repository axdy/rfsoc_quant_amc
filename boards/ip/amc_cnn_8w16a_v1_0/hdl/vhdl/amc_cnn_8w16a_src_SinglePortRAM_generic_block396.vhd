-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block396.vhd
-- Created: 2023-08-07 19:04:45
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block396
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage44/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block396 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block396;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block396 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"09", X"0d", X"08", X"0b", X"43", X"0c", X"e7", X"f9", X"0d", X"6c", X"0e", X"fb", X"1e", X"41",
                                                        X"1d", X"f3", X"fe", X"e9", X"ff", X"e9", X"e1", X"4c", X"f7", X"24", X"14", X"31", X"fe", X"0f", X"f1", X"fa", X"12", X"e7", X"e0", X"0d", X"03", X"19", X"30", X"e2", X"26", X"25",
                                                        X"0d", X"1e", X"18", X"fd", X"00", X"3f", X"ff", X"ff", X"e6", X"05", X"fd", X"f9", X"0c", X"2d", X"df", X"09", X"ee", X"3d", X"00", X"05", X"e6", X"2c", X"0a", X"0d", X"07", X"fb",
                                                        X"12", X"e5", X"f7", X"e6", X"de", X"06", X"ef", X"04", X"f3", X"f5", X"21", X"1d", X"02", X"07", X"f1", X"07", X"02", X"04", X"ea", X"2a", X"02", X"26", X"09", X"b0", X"f5", X"ea",
                                                        X"0c", X"dc", X"e0", X"0d", X"04", X"0b", X"e2", X"00", X"07", X"db", X"f0", X"1d", X"09", X"1e", X"e3", X"ee", X"e9", X"f7", X"1c", X"f1", X"f5", X"ed", X"02", X"25", X"e5", X"e0",
                                                        X"ff", X"bd", X"00", X"15", X"e8", X"03", X"02", X"ea", X"ef", X"f5", X"04", X"11", X"de", X"f1", X"26", X"fc", X"fd", X"b9", X"ff", X"e0", X"02", X"09", X"f4", X"e2", X"f4", X"05",
                                                        X"ca", X"f4", X"f5", X"18", X"f9", X"f6", X"0d", X"e9", X"06", X"b8", X"f2", X"0c", X"09", X"d0", X"e6", X"0e", X"cc", X"f7", X"f5", X"1b", X"da", X"eb", X"f0", X"ce", X"f7", X"d0",
                                                        X"ef", X"de", X"15", X"de", X"d9", X"ff", X"eb", X"e3", X"f9", X"00", X"21", X"e3", X"02", X"18", X"fe", X"0c", X"08", X"f0", X"da", X"16", X"06", X"0d", X"db", X"01", X"f5", X"05",
                                                        X"1f", X"14", X"22", X"19", X"f4", X"fb", X"f3", X"ef", X"ed", X"24", X"0b", X"03", X"14", X"ff", X"03", X"fa", X"d7", X"03", X"e6", X"12", X"00", X"2d", X"e4", X"e6", X"f1", X"fa",
                                                        X"14", X"03", X"16", X"fd", X"07", X"e5", X"10", X"05", X"fd", X"2c", X"ff", X"35", X"07", X"05", X"27", X"f4", X"1d", X"06", X"dc", X"ed", X"fe", X"ec", X"19", X"f7", X"da", X"db",
                                                        X"f0", X"f1", X"17", X"07", X"f5", X"eb", X"e6", X"ff", X"3a", X"eb", X"ff", X"fb", X"ef", X"24", X"06", X"19", X"0b", X"cc", X"eb", X"fe", X"1a", X"f4", X"f4", X"f9", X"29", X"f1",
                                                        X"06", X"02", X"12", X"f4", X"d9", X"16", X"f3", X"09", X"07", X"ff", X"ea", X"25", X"d8", X"fb", X"2b", X"06", X"e4", X"f1", X"26", X"0f", X"14", X"e3", X"00", X"f1", X"03", X"f2",
                                                        X"19", X"0d", X"eb", X"02", X"19", X"fb", X"ed", X"e4", X"19", X"f5", X"d7", X"11", X"05", X"e7", X"00", X"02", X"f4", X"e9", X"21", X"e8", X"19", X"fc", X"f8", X"13", X"d9", X"f6",
                                                        X"0b", X"0a", X"05", X"f3", X"f1", X"03", X"23", X"2a", X"23", X"08", X"19", X"10", X"ed", X"0e", X"ea", X"24", X"17", X"01", X"fb", X"f0", X"15", X"1a", X"e5", X"e2", X"f5", X"12",
                                                        X"32", X"02", X"07", X"ee", X"f4", X"e3", X"31", X"22", X"f7", X"2a", X"0e", X"2c", X"eb", X"07", X"01", X"f5", X"08", X"0a", X"f2", X"ea", X"ef", X"e5", X"0f", X"0f", X"fb", X"0c",
                                                        X"d9", X"0e", X"f3", X"fc", X"e4", X"05", X"e8", X"f6", X"07", X"12", X"0e", X"27", X"e0", X"e0", X"00", X"00", X"f4", X"16", X"fa", X"f6", X"0f", X"02", X"06", X"f4", X"fe", X"17",
                                                        X"0d", X"07", X"1e", X"2a", X"01", X"17", X"fe", X"10", X"fc", X"20", X"1b", X"f1", X"0b", X"f3", X"0b", X"2a", X"ef", X"06", X"33", X"25", X"fb", X"e8", X"f2", X"0e", X"f9", X"dd",
                                                        X"17", X"f2", X"eb", X"fc", X"dc", X"ec", X"e3", X"f8", X"e8", X"29", X"07", X"43", X"10", X"12", X"f4", X"2a", X"24", X"00", X"c8", X"01", X"fd", X"24", X"0c", X"03", X"19", X"4a",
                                                        X"f6", X"36", X"16", X"f8", X"28", X"24", X"e7", X"f7", X"39", X"03", X"f9", X"1b", X"03", X"e6", X"2a", X"fa", X"fa", X"15", X"0a", X"0f", X"fa", X"15", X"08", X"00", X"22", X"00",
                                                        X"fb", X"d7", X"e3", X"f6", X"27", X"31", X"03", X"ea", X"f5", X"12", X"de", X"0d", X"f3", X"01", X"0f", X"00", X"fa", X"16", X"0e", X"d4", X"ee", X"36", X"08", X"c8", X"e6", X"f7",
                                                        X"e3", X"d0", X"2c", X"f1", X"bf", X"eb", X"03", X"07", X"e4", X"2b", X"06", X"1a", X"f0", X"c5", X"f4", X"e1", X"fd", X"ff", X"06", X"f1", X"e9", X"ff", X"f1", X"ea", X"0e", X"17",
                                                        X"dd", X"b9", X"f9", X"2e", X"ed", X"ee", X"d7", X"14", X"15", X"0f", X"28", X"eb", X"fd", X"f6", X"06", X"0a", X"d1", X"19", X"14", X"08", X"ea", X"f1", X"e4", X"d7", X"ff", X"02",
                                                        X"14", X"fe", X"f7", X"09", X"fc", X"12", X"ee", X"1c", X"f4", X"ba", X"01", X"0e", X"fc", X"1a", X"0b", X"0a", X"13", X"fc", X"ee", X"ef", X"d6", X"e3", X"dd", X"d5", X"f4", X"df",
                                                        X"d1", X"25", X"18", X"ff", X"08", X"05", X"dd", X"fd", X"eb", X"11", X"db", X"41", X"10", X"d7", X"f9", X"30", X"e4", X"04", X"fa", X"fd", X"d8", X"00", X"df", X"f4", X"0a", X"f8",
                                                        X"05", X"e9", X"0f", X"d6", X"fd", X"3a", X"fa", X"1c", X"f3", X"ea", X"1b", X"02", X"f9", X"ef", X"fb", X"15", X"11", X"23", X"2e", X"05", X"03", X"e6", X"ef", X"0d", X"2d", X"04",
                                                        X"ed", X"0f", X"1e", X"f9", X"fe", X"1d", X"09", X"dc", X"0c", X"0c", X"f8", X"20", X"07", X"18", X"19", X"3c", X"36", X"f4", X"20", X"ea", X"e7", X"19", X"45", X"12", X"2c", X"ea",
                                                        X"07", X"3c", X"1f", X"1d", X"26", X"0d", X"1c", X"f0", X"32", X"f6", X"fe", X"1e", X"28", X"20", X"14", X"0b", X"fe", X"28", X"02", X"00", X"20", X"23", X"ef", X"02", X"51", X"ea",
                                                        X"f7", X"14", X"0e", X"30", X"2b", X"da", X"f1", X"1c", X"16", X"f8", X"30", X"41", X"e5", X"f9", X"1d", X"ee", X"ed", X"e2", X"15", X"0e", X"f6", X"f4", X"0d", X"ef", X"00", X"0c",
                                                        X"fb", X"ee", X"f8", X"fa", X"18", X"00", X"f1", X"24", X"e3", X"22", X"e5", X"32", X"ff", X"29", X"fb", X"ed", X"f7", X"e8", X"12", X"f9", X"2e", X"f2", X"f4", X"e4", X"28", X"e9",
                                                        X"cf", X"e1", X"ef", X"13", X"05", X"fe", X"23", X"e8", X"f2", X"fe", X"11", X"05", X"06", X"eb", X"ec", X"0c", X"03", X"09", X"03", X"01", X"f9", X"01", X"00", X"29", X"ff", X"fe",
                                                        X"37", X"08", X"fc", X"14", X"f4", X"28", X"1a", X"f5", X"fe", X"20", X"fb", X"22", X"15", X"0e", X"2a", X"f6", X"f7", X"fd", X"fa", X"e0", X"d9", X"f9", X"16", X"ee", X"02", X"d6",
                                                        X"e8", X"00", X"f5", X"08", X"ec", X"0e", X"35", X"ff", X"0d", X"11", X"27", X"ff", X"e6", X"25", X"09", X"dd", X"f3", X"0c", X"27", X"20", X"f3", X"f6", X"f5", X"ff", X"15", X"e9",
                                                        X"f3", X"23", X"ef", X"f4", X"fb", X"2a", X"f0", X"06", X"e4", X"e0", X"ff", X"10", X"12", X"fe", X"07", X"23", X"33", X"08", X"d6", X"e4", X"02", X"d0", X"f5", X"f3", X"1e", X"f4",
                                                        X"06", X"f4", X"f0", X"fb", X"fe", X"22", X"30", X"0a", X"16", X"16", X"0e", X"11", X"07", X"de", X"f3", X"27", X"05", X"f7", X"bb", X"01", X"0c", X"f8", X"0f", X"db", X"f4", X"f2",
                                                        X"ef", X"2b", X"f4", X"da", X"e9", X"e5", X"eb", X"0b", X"eb", X"fe", X"02", X"11", X"0f", X"0e", X"e6", X"c7", X"06", X"d5", X"16", X"f9", X"fe", X"f6", X"fe", X"15", X"be", X"fe",
                                                        X"e3", X"0c", X"2b", X"e3", X"f3", X"da", X"fc", X"fb", X"dd", X"f3", X"fa", X"f8", X"d3", X"02", X"b1", X"f1", X"fc", X"15", X"d2", X"e6", X"f0", X"cc", X"f6", X"d7", X"02", X"eb",
                                                        X"e9", X"ba", X"fa", X"0e", X"b8", X"09", X"12", X"e4", X"fa", X"03", X"f6", X"b0", X"05", X"9d", X"05", X"f1", X"ee", X"ea", X"ee", X"08", X"04", X"1b", X"f3", X"e3", X"be", X"ea",
                                                        X"d8", X"de", X"f2", X"b2", X"fa", X"f0", X"0d", X"d4", X"e7", X"09", X"e9", X"02", X"01", X"16", X"11", X"e9", X"e7", X"b9", X"02", X"f3", X"09", X"eb", X"f7", X"e0", X"0c", X"12",
                                                        X"fc", X"ec", X"ef", X"fe", X"fa", X"f1", X"0f", X"c5", X"f5", X"d8", X"f6", X"0b", X"04", X"09", X"ee", X"f5", X"fd", X"f2", X"11", X"04", X"eb", X"f1", X"f2", X"f6", X"fe", X"10",
                                                        X"dd", X"0b", X"1a", X"f3", X"fd", X"fd", X"d7", X"f5", X"fb", X"09", X"dc", X"0c", X"18", X"1d", X"e5", X"42", X"0b", X"03", X"10", X"ea", X"1b", X"06", X"44", X"00", X"f5", X"28",
                                                        X"30", X"0c", X"0e", X"fc", X"04", X"df", X"16", X"12", X"29", X"e3", X"0a", X"ff", X"2d", X"f6", X"06", X"12", X"fe", X"18", X"10", X"51", X"1d", X"47", X"17", X"0c", X"f7", X"11",
                                                        X"fd", X"04", X"49", X"0b", X"09", X"13", X"f3", X"2c", X"f6", X"19", X"1a", X"47", X"13", X"fa", X"06", X"2a", X"13", X"f7", X"cf", X"05", X"fb", X"31", X"16", X"e9", X"ec", X"ec",
                                                        X"ff", X"21", X"0e", X"0d", X"e8", X"31", X"19", X"08", X"f5", X"f9", X"0c", X"00", X"10", X"1f", X"fb", X"17", X"03", X"df", X"07", X"08", X"34", X"13", X"09", X"02", X"0a", X"f4",
                                                        X"10", X"17", X"27", X"27", X"fe", X"cf", X"ee", X"54", X"f7", X"13", X"22", X"f8", X"0a", X"03", X"11", X"0c", X"01", X"2f", X"1e", X"13", X"14", X"de", X"ef", X"f9", X"10", X"02",
                                                        X"e6", X"f6", X"0a", X"0c", X"e9", X"f9", X"03", X"0d", X"ce", X"1c", X"16", X"de", X"0f", X"fa", X"ea", X"e9", X"fc", X"e0", X"f6", X"04", X"c1", X"ee", X"f7", X"0b", X"08", X"08",
                                                        X"f3", X"ec", X"03", X"da", X"e5", X"f5", X"e2", X"eb", X"04", X"15", X"eb", X"0e", X"f7", X"10", X"17", X"f3", X"cd", X"c1", X"04", X"a7", X"eb", X"f4", X"f6", X"da", X"f4", X"12",
                                                        X"c2", X"11", X"07", X"fe", X"dd", X"13", X"d0", X"03", X"f3", X"d7", X"d9", X"ea", X"19", X"e9", X"ef", X"1a", X"c9", X"05", X"ea", X"04", X"ff", X"03", X"db", X"c8", X"ff", X"11",
                                                        X"f4", X"eb", X"f1", X"d8", X"01", X"0f", X"e5", X"04", X"ed", X"0f", X"cc", X"d2", X"f8", X"eb", X"ec", X"e6", X"fa", X"f2", X"e8", X"ed", X"d0", X"09", X"03", X"02", X"fe", X"1e",
                                                        X"01", X"0c", X"fa", X"00", X"ed", X"b8", X"0f", X"ee", X"1c", X"e9", X"06", X"06", X"db", X"13", X"f6", X"f4", X"f5", X"fd", X"e5", X"e4", X"f9", X"33", X"f3", X"ea", X"25", X"f3",
                                                        X"cf", X"07", X"37", X"0e", X"02", X"fb", X"dc", X"f2", X"e4", X"48", X"02", X"ee", X"fb", X"00", X"fe", X"0a", X"e9", X"04", X"ec", X"ff", X"fd", X"f5", X"06", X"ef", X"21", X"1e",
                                                        X"f4", X"52", X"f2", X"10", X"10", X"f4", X"1f", X"09", X"16", X"e8", X"f7", X"25", X"f9", X"25", X"fc", X"ed", X"05", X"fa", X"05", X"01", X"00", X"21", X"f9", X"16", X"0b", X"f3",
                                                        X"ff", X"eb", X"06", X"34", X"f6", X"ee", X"f6", X"42", X"10", X"01", X"26", X"26", X"2f", X"08", X"fc", X"10", X"07", X"e9", X"3a", X"42", X"e7", X"04", X"0d", X"50", X"26", X"0b",
                                                        X"ed", X"24", X"00", X"f5", X"0d", X"06", X"09", X"06", X"e9", X"e3", X"f5", X"e2", X"0e", X"59", X"08", X"16", X"38", X"37", X"f2", X"03", X"e0", X"07", X"16", X"f2", X"11", X"e6",
                                                        X"28", X"10", X"22", X"2d", X"10", X"11", X"f6", X"f5", X"df", X"00", X"38", X"00", X"f4", X"f5", X"f3", X"16", X"28", X"d5", X"fe", X"0f", X"01", X"f5", X"04", X"d4", X"19", X"fe",
                                                        X"c1", X"0d", X"13", X"16", X"e9", X"11", X"da", X"1d", X"03", X"17", X"e3", X"0a", X"26", X"19", X"e6", X"14", X"ec", X"f2", X"f7", X"04", X"ee", X"1f", X"0a", X"03", X"fb", X"05",
                                                        X"dc", X"fd", X"0a", X"f0", X"e8", X"f8", X"b7", X"f3", X"ed", X"02", X"11", X"f2", X"ea", X"ea", X"08", X"d6", X"08", X"f1", X"fc", X"0b", X"db", X"fa", X"e9", X"f7", X"f4", X"df",
                                                        X"f8", X"cc", X"07", X"03", X"09", X"c7", X"f5", X"03", X"e3", X"f4", X"e7", X"06", X"0d", X"fe", X"f2", X"ee", X"1e", X"cd", X"d2", X"0a", X"ed", X"ab", X"e1", X"f4", X"de", X"d1",
                                                        X"fb", X"09", X"c1", X"fd", X"fe", X"f9", X"dd", X"f7", X"df", X"ca", X"fb", X"ad", X"eb", X"ed", X"fd", X"0c", X"e7", X"06", X"14", X"01", X"fb", X"f5", X"e2", X"e9", X"16", X"df",
                                                        X"07", X"b9", X"f9", X"e7", X"17", X"e2", X"e6", X"04", X"2b", X"11", X"fc", X"f5", X"1c", X"d5", X"18", X"0d", X"fd", X"fa", X"f7", X"f5", X"f0", X"cc", X"e6", X"04", X"e2", X"f2",
                                                        X"05", X"10", X"f9", X"d9", X"18", X"d5", X"f9", X"1c", X"f3", X"13", X"23", X"da", X"15", X"fd", X"21", X"f8", X"f7", X"0d", X"3c", X"d9", X"07", X"e6", X"17", X"44", X"15", X"06",
                                                        X"fd", X"ea", X"ea", X"12", X"ec", X"ff", X"17", X"f0", X"20", X"21", X"e6", X"cd", X"f7", X"35", X"10", X"fc", X"1c", X"46", X"1e", X"f5", X"fd", X"f0", X"11", X"dc", X"e2", X"43",
                                                        X"16", X"d8", X"0a", X"e9", X"04", X"fc", X"fa", X"fd", X"08", X"f3", X"51", X"09", X"16", X"2b", X"36", X"13", X"f2", X"48", X"f6", X"15", X"ef", X"0e", X"0e", X"1d", X"da", X"0e",
                                                        X"1c", X"ed", X"0b", X"ee", X"da", X"01", X"13", X"37", X"01", X"30", X"f9", X"10", X"2a", X"34", X"18", X"06", X"d8", X"fc", X"f1", X"f8", X"18", X"fb", X"fa", X"26", X"f0", X"0f",
                                                        X"13", X"f8", X"14", X"16", X"1d", X"fe", X"b7", X"0a", X"f0", X"22", X"12", X"12", X"24", X"24", X"03", X"27", X"09", X"0e", X"df", X"2b", X"e3", X"09", X"cf", X"ff", X"f4", X"04",
                                                        X"fb", X"fb", X"ec", X"d5", X"f2", X"41", X"09", X"f4", X"ff", X"1d", X"11", X"f5", X"2f", X"00", X"f2", X"10", X"fc", X"03", X"14", X"1c", X"05", X"e9", X"ed", X"01", X"03", X"f8",
                                                        X"e4", X"0a", X"22", X"e9", X"03", X"11", X"2c", X"f7", X"26", X"fd", X"06", X"c2", X"dd", X"f9", X"ef", X"19", X"17", X"0e", X"f4", X"f1", X"f7", X"18", X"f3", X"f6", X"29", X"19",
                                                        X"f1", X"26", X"0d", X"0c", X"19", X"f8", X"03", X"f4", X"dc", X"f2", X"01", X"14", X"f5", X"06", X"06", X"d1", X"07", X"e3", X"10", X"f9", X"ef", X"03", X"18", X"17", X"3d", X"ff",
                                                        X"ea", X"f2", X"2e", X"0c", X"e1", X"15", X"02", X"df", X"00", X"f0", X"07", X"f5", X"0e", X"06", X"ef", X"e6", X"1c", X"1b", X"07", X"16", X"25", X"1a", X"fc", X"00", X"f3", X"ef",
                                                        X"0f", X"21", X"f8", X"04", X"de", X"f1", X"fa", X"1d", X"c8", X"f6", X"1b", X"16", X"ea", X"ee", X"15", X"0d", X"06", X"d8", X"07", X"ec", X"fa", X"00", X"f7", X"02", X"d3", X"15",
                                                        X"02", X"1a", X"fa", X"da", X"1c", X"09", X"1e", X"2e", X"17", X"f6", X"db", X"f6", X"fb", X"f0", X"22", X"e1", X"ea", X"fe", X"0c", X"d1", X"1c", X"00", X"1b", X"ff", X"02", X"09",
                                                        X"db", X"01", X"00", X"10", X"e5", X"f5", X"17", X"06", X"f5", X"e4", X"ec", X"06", X"1c", X"2c", X"f8", X"04", X"d7", X"fa", X"f2", X"f0", X"f2", X"08", X"10", X"de", X"fd", X"41",
                                                        X"f2", X"f9", X"fc", X"d3", X"da", X"1b", X"e6", X"06", X"0f", X"17", X"e3", X"f0", X"10", X"ef", X"fe", X"12", X"ec", X"f1", X"12", X"f7", X"ee", X"0b", X"da", X"ee", X"08", X"f4",
                                                        X"0b", X"04", X"04", X"c6", X"08", X"46", X"e9", X"00", X"19", X"24", X"11", X"fd", X"c2", X"00", X"ec", X"08", X"ca", X"0d", X"01", X"ee", X"f8", X"36", X"02", X"0d", X"db", X"d0",
                                                        X"ee", X"13", X"f7", X"0e", X"f8", X"1c", X"0a", X"e9", X"ce", X"f8", X"eb", X"f7", X"e6", X"07", X"19", X"d9", X"f8", X"15", X"30", X"fc", X"13", X"0d", X"dc", X"2f", X"22", X"f9",
                                                        X"f9", X"f7", X"03", X"07", X"f1", X"00", X"1a", X"fb", X"11", X"fa", X"fe", X"04", X"d7", X"de", X"10", X"2e", X"f5", X"26", X"15", X"fb", X"e7", X"1e", X"15", X"03", X"f1", X"ee",
                                                        X"fa", X"fc", X"2a", X"1f", X"17", X"1e", X"0c", X"d2", X"08", X"13", X"fe", X"f1", X"26", X"17", X"ef", X"f5", X"fd", X"ef", X"01", X"12", X"d2", X"31", X"fe", X"bb", X"11", X"02",
                                                        X"ec", X"20", X"ef", X"04", X"27", X"07", X"fd", X"f7", X"1f", X"1b", X"f9", X"d3", X"f1", X"d8", X"ea", X"04", X"16", X"1f", X"10", X"0c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0c";
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

