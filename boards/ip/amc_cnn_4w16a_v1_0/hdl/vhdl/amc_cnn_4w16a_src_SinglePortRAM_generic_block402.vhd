-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block402.vhd
-- Created: 2023-06-15 16:03:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block402
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage5/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block402 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block402;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block402 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"c2", X"0c", X"05", X"28", X"e6", X"d0", X"33", X"f4", X"da", X"fb", X"ff", X"fd", X"fe", X"e8",
                                                        X"50", X"29", X"d7", X"e6", X"fc", X"3c", X"0e", X"f1", X"d5", X"17", X"f6", X"0a", X"09", X"01", X"33", X"e8", X"36", X"d7", X"1e", X"ce", X"f0", X"ef", X"00", X"0e", X"1a", X"0a",
                                                        X"f8", X"14", X"e4", X"0a", X"10", X"0e", X"13", X"e6", X"f1", X"07", X"d0", X"05", X"d5", X"0b", X"0f", X"0c", X"0e", X"fa", X"02", X"d5", X"13", X"0b", X"f8", X"1a", X"11", X"11",
                                                        X"cb", X"3f", X"f1", X"01", X"e9", X"11", X"e0", X"04", X"f7", X"18", X"d7", X"00", X"ed", X"0c", X"00", X"e8", X"00", X"cb", X"e8", X"1b", X"fa", X"f6", X"d2", X"18", X"fa", X"42",
                                                        X"ea", X"df", X"f6", X"07", X"28", X"de", X"b0", X"0f", X"fe", X"3f", X"f9", X"18", X"19", X"08", X"e2", X"e5", X"f2", X"ef", X"e7", X"17", X"2f", X"ec", X"e2", X"dd", X"ed", X"30",
                                                        X"1d", X"09", X"24", X"0d", X"08", X"55", X"e6", X"1b", X"dc", X"ed", X"07", X"0e", X"d9", X"02", X"f7", X"22", X"0b", X"04", X"0a", X"d3", X"fd", X"01", X"03", X"ef", X"ee", X"02",
                                                        X"08", X"ee", X"0c", X"f6", X"f8", X"ef", X"04", X"2c", X"f3", X"02", X"01", X"26", X"08", X"ea", X"e3", X"da", X"16", X"ee", X"bc", X"3c", X"02", X"ee", X"0a", X"e3", X"d1", X"05",
                                                        X"f4", X"f0", X"2b", X"e5", X"2a", X"06", X"f7", X"fd", X"ee", X"f2", X"10", X"08", X"f0", X"f8", X"11", X"49", X"09", X"2c", X"f1", X"1e", X"2f", X"e8", X"00", X"24", X"e2", X"0e",
                                                        X"f3", X"d1", X"dd", X"e9", X"ed", X"d4", X"e3", X"dd", X"12", X"0e", X"32", X"e9", X"d7", X"fe", X"15", X"1c", X"ee", X"fd", X"53", X"db", X"04", X"e5", X"e4", X"db", X"19", X"fc",
                                                        X"21", X"e1", X"d5", X"02", X"e4", X"e7", X"fc", X"30", X"fd", X"ed", X"1d", X"10", X"f0", X"0f", X"11", X"ec", X"1f", X"2e", X"f5", X"e2", X"f2", X"fb", X"0d", X"ff", X"14", X"d8",
                                                        X"01", X"cf", X"e1", X"30", X"d1", X"db", X"02", X"1b", X"06", X"24", X"21", X"2e", X"fd", X"d8", X"02", X"f9", X"21", X"3f", X"e0", X"14", X"0b", X"e2", X"1c", X"21", X"0e", X"fd",
                                                        X"d5", X"0e", X"f5", X"e3", X"10", X"07", X"c9", X"01", X"f2", X"10", X"13", X"09", X"17", X"1a", X"14", X"ef", X"e4", X"ca", X"ff", X"01", X"26", X"07", X"cf", X"bd", X"ef", X"0d",
                                                        X"e9", X"01", X"f9", X"16", X"03", X"02", X"f0", X"1d", X"e0", X"e9", X"fb", X"00", X"1d", X"32", X"e8", X"e6", X"e2", X"00", X"2e", X"11", X"e5", X"fd", X"f2", X"30", X"05", X"f6",
                                                        X"be", X"07", X"14", X"d0", X"ed", X"fc", X"dd", X"fc", X"29", X"ec", X"d3", X"e3", X"cd", X"1f", X"06", X"3a", X"f6", X"17", X"ef", X"02", X"ea", X"0e", X"1a", X"15", X"15", X"d2",
                                                        X"18", X"01", X"d0", X"13", X"e2", X"13", X"c4", X"0a", X"19", X"4a", X"db", X"fb", X"08", X"1d", X"f7", X"03", X"10", X"e7", X"dc", X"fe", X"fd", X"24", X"0c", X"14", X"e7", X"50",
                                                        X"05", X"04", X"12", X"f1", X"f4", X"f1", X"2c", X"f4", X"ee", X"20", X"f9", X"27", X"0a", X"14", X"1b", X"30", X"f3", X"39", X"34", X"01", X"d7", X"dd", X"fc", X"eb", X"cc", X"f4",
                                                        X"e8", X"2c", X"09", X"0d", X"0c", X"eb", X"f5", X"e8", X"ee", X"ed", X"f6", X"ea", X"f8", X"db", X"fd", X"ca", X"e9", X"f2", X"f4", X"15", X"d6", X"10", X"04", X"f0", X"25", X"08",
                                                        X"21", X"01", X"05", X"09", X"05", X"11", X"05", X"00", X"e2", X"01", X"fd", X"29", X"fc", X"16", X"e7", X"ec", X"d6", X"09", X"04", X"0d", X"e1", X"30", X"02", X"ef", X"18", X"0d",
                                                        X"06", X"24", X"ff", X"f4", X"2e", X"ef", X"06", X"10", X"ff", X"f2", X"f8", X"22", X"09", X"0d", X"49", X"ee", X"12", X"09", X"06", X"2e", X"00", X"fb", X"41", X"02", X"f9", X"fa",
                                                        X"16", X"fa", X"0f", X"fa", X"e7", X"d1", X"e5", X"e1", X"d0", X"de", X"de", X"0e", X"2a", X"f2", X"df", X"0d", X"fb", X"db", X"ec", X"fb", X"17", X"f3", X"dc", X"3a", X"e2", X"15",
                                                        X"0a", X"f6", X"06", X"1f", X"fd", X"f4", X"11", X"d7", X"e7", X"05", X"06", X"e6", X"07", X"d4", X"e7", X"c6", X"ec", X"f7", X"06", X"04", X"cf", X"21", X"ee", X"3b", X"10", X"11",
                                                        X"f9", X"f1", X"25", X"42", X"d7", X"11", X"cb", X"0b", X"26", X"f7", X"d5", X"ec", X"04", X"27", X"0d", X"0a", X"36", X"16", X"29", X"3c", X"f0", X"19", X"e0", X"f8", X"e7", X"27",
                                                        X"eb", X"12", X"18", X"ec", X"ee", X"2f", X"fb", X"19", X"ec", X"c8", X"fc", X"f3", X"08", X"ff", X"24", X"ef", X"e8", X"07", X"06", X"04", X"e3", X"f9", X"d0", X"18", X"df", X"ca",
                                                        X"e5", X"ed", X"1d", X"03", X"f7", X"04", X"18", X"05", X"d9", X"11", X"14", X"20", X"e6", X"1d", X"e7", X"fc", X"ed", X"2c", X"00", X"f2", X"e6", X"18", X"1f", X"f7", X"11", X"13",
                                                        X"ff", X"0b", X"18", X"17", X"35", X"0d", X"ef", X"e8", X"09", X"12", X"15", X"fb", X"0d", X"00", X"ca", X"fb", X"dc", X"3b", X"e9", X"fc", X"e8", X"f4", X"ef", X"2c", X"d5", X"21",
                                                        X"18", X"02", X"fb", X"e9", X"c1", X"ec", X"07", X"f2", X"ca", X"14", X"10", X"f6", X"00", X"11", X"1c", X"e2", X"07", X"ef", X"31", X"d7", X"f0", X"3c", X"e8", X"ea", X"e0", X"13",
                                                        X"0c", X"43", X"01", X"d9", X"22", X"13", X"02", X"f4", X"f8", X"dc", X"e3", X"05", X"ea", X"26", X"1c", X"00", X"e9", X"1f", X"e2", X"c6", X"f4", X"ee", X"fa", X"e4", X"e3", X"f9",
                                                        X"1b", X"35", X"14", X"f9", X"db", X"0b", X"1a", X"25", X"0a", X"f8", X"e7", X"04", X"f4", X"f5", X"d5", X"e2", X"f6", X"1f", X"ee", X"2b", X"cb", X"03", X"1b", X"1f", X"e2", X"e8",
                                                        X"dc", X"fd", X"29", X"05", X"12", X"fe", X"f1", X"cd", X"ec", X"27", X"38", X"06", X"de", X"1a", X"f6", X"de", X"06", X"0a", X"df", X"03", X"02", X"11", X"e2", X"db", X"e6", X"ea",
                                                        X"3a", X"ea", X"04", X"3f", X"cc", X"cf", X"e5", X"fe", X"2f", X"18", X"12", X"0f", X"2b", X"41", X"08", X"e5", X"e5", X"04", X"f4", X"d3", X"ea", X"36", X"ec", X"0a", X"f1", X"03",
                                                        X"fe", X"fa", X"09", X"f0", X"f8", X"16", X"f3", X"f7", X"fa", X"36", X"ef", X"ec", X"0a", X"02", X"4e", X"00", X"f6", X"e1", X"2c", X"e5", X"cb", X"c5", X"2d", X"ed", X"e8", X"dc",
                                                        X"da", X"f3", X"02", X"09", X"20", X"eb", X"ec", X"f5", X"f5", X"2d", X"f3", X"03", X"fb", X"17", X"18", X"0e", X"d5", X"2a", X"19", X"12", X"18", X"22", X"d3", X"e2", X"06", X"d4",
                                                        X"f6", X"f9", X"2c", X"0d", X"d2", X"31", X"db", X"ec", X"0b", X"14", X"13", X"09", X"12", X"ce", X"04", X"3e", X"0b", X"f5", X"ee", X"fb", X"0f", X"2c", X"f8", X"cb", X"e5", X"17",
                                                        X"27", X"01", X"f8", X"0f", X"f2", X"f9", X"de", X"31", X"c7", X"13", X"fe", X"fd", X"e5", X"0e", X"16", X"fe", X"2d", X"e7", X"f8", X"d3", X"d7", X"e0", X"ef", X"ef", X"ff", X"fe",
                                                        X"e2", X"fa", X"ff", X"38", X"f3", X"08", X"f7", X"fa", X"1f", X"fb", X"bd", X"cf", X"14", X"2c", X"1a", X"0a", X"14", X"db", X"e5", X"30", X"d1", X"17", X"ea", X"f3", X"25", X"e9",
                                                        X"ed", X"38", X"01", X"31", X"dc", X"03", X"22", X"de", X"f2", X"30", X"d2", X"f8", X"dd", X"ed", X"fa", X"db", X"dc", X"04", X"f9", X"e5", X"d2", X"17", X"d7", X"26", X"e8", X"27",
                                                        X"01", X"1e", X"38", X"05", X"17", X"f4", X"f8", X"28", X"e8", X"25", X"fe", X"12", X"fd", X"0b", X"f9", X"d0", X"14", X"18", X"f2", X"05", X"e2", X"de", X"dc", X"f4", X"ef", X"f3",
                                                        X"c9", X"06", X"0c", X"ef", X"03", X"1a", X"1d", X"1e", X"0b", X"09", X"eb", X"f4", X"18", X"19", X"0c", X"ff", X"0d", X"02", X"0e", X"d1", X"fa", X"fb", X"ef", X"0b", X"02", X"f2",
                                                        X"c7", X"00", X"18", X"ee", X"d6", X"23", X"15", X"f0", X"ff", X"5e", X"d7", X"f1", X"e3", X"fd", X"09", X"05", X"e4", X"19", X"d7", X"1f", X"12", X"31", X"20", X"ea", X"eb", X"df",
                                                        X"03", X"29", X"16", X"ec", X"f6", X"18", X"d0", X"17", X"04", X"f5", X"03", X"06", X"e1", X"e3", X"e3", X"e3", X"d3", X"f5", X"05", X"0b", X"1f", X"05", X"14", X"18", X"0f", X"f2",
                                                        X"cd", X"f7", X"22", X"f2", X"14", X"3f", X"da", X"fd", X"e3", X"0c", X"5d", X"fe", X"11", X"32", X"16", X"27", X"0c", X"ed", X"f8", X"ec", X"ff", X"e4", X"f2", X"ec", X"ed", X"2c",
                                                        X"14", X"23", X"ff", X"ef", X"e2", X"e6", X"04", X"f2", X"06", X"e7", X"0a", X"56", X"f7", X"fb", X"f9", X"fe", X"1e", X"1f", X"dc", X"d0", X"e4", X"fb", X"ce", X"e6", X"27", X"14",
                                                        X"f1", X"15", X"d9", X"cd", X"26", X"0c", X"2b", X"05", X"d5", X"04", X"01", X"0f", X"e8", X"e2", X"c5", X"02", X"e9", X"2e", X"f2", X"2e", X"d6", X"f5", X"f3", X"0d", X"d4", X"ef",
                                                        X"de", X"22", X"14", X"30", X"d2", X"fd", X"e1", X"ba", X"ec", X"cb", X"eb", X"f2", X"30", X"eb", X"01", X"d1", X"e8", X"36", X"f5", X"53", X"21", X"1c", X"27", X"d1", X"04", X"2c",
                                                        X"10", X"14", X"eb", X"1d", X"fc", X"dc", X"e2", X"cd", X"d0", X"45", X"1a", X"06", X"f5", X"03", X"fc", X"ea", X"3b", X"fa", X"02", X"14", X"04", X"03", X"07", X"12", X"04", X"13",
                                                        X"15", X"28", X"28", X"39", X"01", X"45", X"eb", X"fb", X"dc", X"02", X"f0", X"d3", X"f9", X"2e", X"ea", X"0e", X"dd", X"04", X"f5", X"c6", X"18", X"fb", X"f9", X"18", X"06", X"f0",
                                                        X"0a", X"fe", X"d4", X"2f", X"12", X"e6", X"cc", X"f5", X"20", X"41", X"f6", X"34", X"1c", X"0c", X"01", X"fc", X"1e", X"e5", X"e4", X"ee", X"db", X"10", X"db", X"18", X"e4", X"f5",
                                                        X"e0", X"1e", X"fd", X"20", X"1e", X"10", X"ed", X"f5", X"fd", X"33", X"ff", X"0d", X"10", X"03", X"fe", X"bc", X"ff", X"ea", X"0d", X"00", X"e9", X"01", X"2a", X"15", X"05", X"2a",
                                                        X"da", X"ef", X"2e", X"03", X"dc", X"f0", X"06", X"d4", X"26", X"fc", X"16", X"ec", X"0a", X"18", X"e9", X"dc", X"0b", X"e4", X"29", X"f0", X"18", X"2b", X"ed", X"f2", X"f4", X"0f",
                                                        X"08", X"19", X"e6", X"ec", X"17", X"f6", X"ef", X"ef", X"cb", X"ec", X"e7", X"21", X"e1", X"e9", X"f5", X"fd", X"13", X"23", X"f1", X"1d", X"de", X"02", X"dd", X"20", X"1f", X"e7",
                                                        X"eb", X"23", X"f7", X"1f", X"28", X"fd", X"44", X"fc", X"1c", X"fa", X"07", X"1f", X"f0", X"e1", X"46", X"fc", X"e1", X"1f", X"f6", X"da", X"29", X"ef", X"ea", X"f9", X"02", X"20",
                                                        X"05", X"05", X"fd", X"0c", X"2c", X"d1", X"f4", X"2e", X"d8", X"d4", X"15", X"f6", X"2d", X"15", X"c8", X"db", X"05", X"1f", X"e9", X"e2", X"c9", X"f2", X"db", X"cd", X"e2", X"2d",
                                                        X"24", X"e7", X"3a", X"1e", X"e5", X"fa", X"cb", X"2b", X"f2", X"dc", X"e5", X"f2", X"11", X"08", X"d0", X"c5", X"e9", X"17", X"34", X"f6", X"28", X"ed", X"cd", X"22", X"f7", X"d8",
                                                        X"de", X"15", X"01", X"ca", X"e2", X"0e", X"e8", X"fe", X"fe", X"0f", X"f0", X"da", X"08", X"02", X"da", X"fa", X"18", X"18", X"05", X"4e", X"fd", X"1d", X"f3", X"00", X"f2", X"03",
                                                        X"32", X"f7", X"db", X"df", X"ea", X"4e", X"dd", X"e7", X"d8", X"ce", X"f6", X"d4", X"09", X"f6", X"16", X"1a", X"26", X"ee", X"f3", X"f4", X"f5", X"16", X"e7", X"0d", X"09", X"62",
                                                        X"09", X"fa", X"18", X"f7", X"ed", X"09", X"4a", X"ec", X"d3", X"4d", X"f5", X"f4", X"20", X"19", X"29", X"d8", X"fe", X"e3", X"1c", X"04", X"ea", X"fe", X"27", X"ea", X"fc", X"04",
                                                        X"e5", X"14", X"0f", X"14", X"18", X"01", X"fc", X"f1", X"d2", X"ee", X"f0", X"ea", X"28", X"ef", X"df", X"16", X"ef", X"29", X"01", X"0d", X"1a", X"33", X"f9", X"de", X"ff", X"f3",
                                                        X"f6", X"fb", X"e6", X"f1", X"de", X"d7", X"fa", X"ff", X"dd", X"f4", X"fa", X"e1", X"e6", X"24", X"f7", X"14", X"06", X"f1", X"fb", X"e3", X"e1", X"e0", X"f5", X"f4", X"41", X"0c",
                                                        X"20", X"17", X"fd", X"2c", X"32", X"01", X"ff", X"f0", X"28", X"d8", X"07", X"eb", X"0f", X"e3", X"2b", X"0d", X"dc", X"fa", X"ef", X"11", X"30", X"f7", X"16", X"0e", X"26", X"17",
                                                        X"d5", X"c1", X"ea", X"26", X"39", X"ee", X"da", X"e0", X"ec", X"23", X"23", X"f4", X"37", X"f6", X"fa", X"0a", X"f8", X"f9", X"09", X"fe", X"08", X"f2", X"d9", X"f3", X"e0", X"2a",
                                                        X"fb", X"f0", X"20", X"ff", X"ed", X"1e", X"ed", X"02", X"e2", X"00", X"13", X"ea", X"1f", X"2d", X"e1", X"e5", X"f7", X"e0", X"1d", X"14", X"f6", X"00", X"2a", X"23", X"eb", X"e5",
                                                        X"1f", X"f6", X"13", X"25", X"e0", X"27", X"f9", X"12", X"1c", X"1a", X"1b", X"dc", X"e4", X"de", X"f2", X"df", X"fc", X"12", X"e0", X"44", X"ee", X"19", X"17", X"eb", X"03", X"07",
                                                        X"ed", X"10", X"08", X"c6", X"f3", X"f6", X"10", X"09", X"f8", X"18", X"d4", X"e4", X"dd", X"eb", X"05", X"fa", X"ef", X"ef", X"da", X"2b", X"e5", X"e2", X"f5", X"fe", X"06", X"bc",
                                                        X"eb", X"25", X"27", X"09", X"16", X"f9", X"cf", X"ff", X"02", X"27", X"fe", X"0d", X"fb", X"07", X"e5", X"24", X"fe", X"2d", X"0b", X"10", X"fb", X"14", X"e5", X"fe", X"d9", X"3f",
                                                        X"d6", X"47", X"c9", X"26", X"16", X"cb", X"ea", X"d2", X"e1", X"ee", X"01", X"0b", X"e7", X"fd", X"dc", X"f4", X"02", X"50", X"d4", X"09", X"01", X"00", X"f7", X"21", X"fc", X"01",
                                                        X"f7", X"eb", X"d8", X"e1", X"ec", X"27", X"eb", X"36", X"d9", X"10", X"f7", X"24", X"eb", X"0f", X"27", X"dd", X"04", X"e8", X"fd", X"de", X"da", X"1b", X"fb", X"1f", X"d6", X"17",
                                                        X"2d", X"eb", X"ed", X"33", X"db", X"f9", X"1b", X"00", X"0c", X"df", X"c7", X"01", X"02", X"04", X"f9", X"ff", X"d9", X"26", X"0a", X"21", X"21", X"0b", X"0c", X"f9", X"0d", X"ff",
                                                        X"f0", X"ce", X"0d", X"28", X"09", X"0a", X"f2", X"09", X"f3", X"f9", X"1e", X"1c", X"11", X"eb", X"0e", X"f1", X"0e", X"25", X"e5", X"28", X"07", X"0e", X"09", X"fd", X"e4", X"12",
                                                        X"cf", X"f0", X"dd", X"de", X"f3", X"e7", X"d6", X"db", X"04", X"02", X"ef", X"00", X"04", X"0e", X"11", X"16", X"e9", X"ef", X"ee", X"ee", X"e8", X"11", X"1c", X"f2", X"fd", X"23",
                                                        X"43", X"e1", X"e0", X"23", X"e7", X"17", X"f3", X"ec", X"fd", X"f6", X"eb", X"13", X"f2", X"fa", X"f2", X"fe", X"25", X"f3", X"f9", X"10", X"c9", X"e4", X"02", X"0b", X"ec", X"15",
                                                        X"f1", X"06", X"10", X"da", X"e9", X"14", X"2a", X"eb", X"0d", X"dc", X"df", X"db", X"0b", X"0d", X"fe", X"e2", X"d3", X"0f", X"ed", X"e4", X"f9", X"fb", X"0b", X"f3", X"05", X"34",
                                                        X"02", X"38", X"14", X"ec", X"3a", X"18", X"e9", X"16", X"13", X"d4", X"f0", X"0a", X"1e", X"de", X"17", X"0c", X"ee", X"fb", X"16", X"e5", X"3c", X"ef", X"ec", X"0a", X"20", X"0d",
                                                        X"e3", X"f5", X"14", X"f9", X"15", X"01", X"f8", X"e1", X"ff", X"ff", X"e8", X"22", X"03", X"07", X"ec", X"00", X"ed", X"03", X"f5", X"ef", X"d7", X"01", X"e2", X"f8", X"fb", X"fc",
                                                        X"04", X"13", X"0f", X"ef", X"e8", X"db", X"e0", X"0f", X"e6", X"0e", X"ec", X"c7", X"14", X"de", X"f5", X"f3", X"1c", X"ee", X"2f", X"0f", X"f6", X"16", X"ed", X"f1", X"fc", X"15",
                                                        X"dc", X"4e", X"13", X"20", X"29", X"18", X"dd", X"05", X"1a", X"fb", X"dd", X"2d", X"e8", X"10", X"ed", X"1c", X"f0", X"da", X"f6", X"28", X"33", X"f8", X"16", X"12", X"0b", X"e8",
                                                        X"d1", X"f0", X"f5", X"ed", X"11", X"e7", X"39", X"2e", X"11", X"ef", X"ee", X"f7", X"0b", X"10", X"17", X"d0", X"eb", X"48", X"cf", X"20", X"d9", X"0f", X"19", X"02", X"f3", X"e5",
                                                        X"e4", X"f4", X"e3", X"eb", X"2f", X"d8", X"bf", X"ee", X"f8", X"e4", X"d7", X"20", X"3f", X"3b", X"f1", X"3d", X"0e", X"fe", X"e2", X"fb");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fb";
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

