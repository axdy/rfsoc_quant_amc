-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block431.vhd
-- Created: 2023-08-07 19:04:50
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block431
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage76/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block431 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block431;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block431 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"b3", X"f3", X"fb", X"c1", X"48", X"2e", X"1d", X"27", X"bf", X"14", X"01", X"f7", X"3a", X"f6",
                                                        X"f2", X"e4", X"54", X"df", X"13", X"02", X"02", X"dd", X"d7", X"f6", X"0f", X"b7", X"fd", X"14", X"cf", X"09", X"dd", X"fd", X"1d", X"f4", X"05", X"50", X"dc", X"de", X"d1", X"09",
                                                        X"13", X"c9", X"08", X"00", X"0c", X"3f", X"eb", X"f0", X"e9", X"17", X"09", X"46", X"dc", X"00", X"09", X"29", X"fe", X"d2", X"ed", X"ff", X"dd", X"f3", X"e7", X"fd", X"fd", X"22",
                                                        X"ea", X"29", X"02", X"38", X"e6", X"2d", X"f6", X"21", X"e8", X"fe", X"ff", X"15", X"0d", X"03", X"dc", X"18", X"e5", X"fa", X"37", X"ee", X"fa", X"27", X"ce", X"dc", X"f5", X"e9",
                                                        X"15", X"e7", X"35", X"00", X"f4", X"ea", X"f0", X"dd", X"ff", X"3b", X"20", X"03", X"04", X"31", X"f6", X"f6", X"49", X"bc", X"24", X"03", X"c3", X"f2", X"f9", X"18", X"24", X"0e",
                                                        X"26", X"df", X"06", X"e6", X"e9", X"fa", X"ea", X"2f", X"e6", X"f9", X"03", X"ef", X"0a", X"07", X"0e", X"01", X"e5", X"f0", X"17", X"21", X"d8", X"fc", X"d0", X"f3", X"f6", X"03",
                                                        X"27", X"ed", X"13", X"20", X"11", X"ba", X"d7", X"f8", X"17", X"c3", X"fa", X"d8", X"03", X"08", X"01", X"00", X"32", X"13", X"19", X"46", X"04", X"d3", X"f0", X"14", X"12", X"0a",
                                                        X"ee", X"07", X"ea", X"16", X"e1", X"ff", X"07", X"08", X"fe", X"05", X"de", X"f9", X"ed", X"e4", X"0a", X"d6", X"ef", X"e4", X"f5", X"02", X"07", X"f9", X"c4", X"fb", X"eb", X"19",
                                                        X"e2", X"33", X"f3", X"f0", X"00", X"2c", X"01", X"e5", X"18", X"e8", X"1f", X"23", X"1b", X"f2", X"f9", X"01", X"46", X"13", X"27", X"f7", X"d4", X"dd", X"c8", X"0a", X"30", X"c3",
                                                        X"2b", X"0f", X"e3", X"f4", X"f1", X"01", X"26", X"0e", X"1b", X"4e", X"cd", X"eb", X"ea", X"ed", X"18", X"e2", X"f9", X"06", X"e5", X"30", X"07", X"ff", X"2a", X"e0", X"07", X"07",
                                                        X"da", X"15", X"0a", X"09", X"15", X"24", X"fe", X"0c", X"2e", X"f5", X"08", X"fb", X"ff", X"07", X"15", X"bd", X"05", X"c6", X"f7", X"f7", X"f4", X"21", X"07", X"de", X"51", X"e9",
                                                        X"05", X"23", X"f0", X"0f", X"0c", X"da", X"15", X"ee", X"e4", X"06", X"08", X"4a", X"f4", X"04", X"f1", X"ea", X"17", X"05", X"19", X"e4", X"cb", X"eb", X"1e", X"c7", X"d7", X"08",
                                                        X"db", X"14", X"de", X"ed", X"54", X"01", X"07", X"0f", X"1a", X"17", X"cc", X"26", X"06", X"c3", X"f4", X"ef", X"ec", X"f5", X"0d", X"01", X"dd", X"09", X"fd", X"05", X"e2", X"ee",
                                                        X"29", X"2b", X"e7", X"0c", X"ec", X"f3", X"03", X"e2", X"0d", X"0e", X"00", X"f7", X"00", X"08", X"05", X"50", X"e5", X"f5", X"04", X"fa", X"ef", X"ee", X"f8", X"f2", X"37", X"09",
                                                        X"e3", X"0c", X"dd", X"07", X"4a", X"1b", X"23", X"56", X"df", X"ec", X"dd", X"ed", X"1c", X"ce", X"ff", X"01", X"2e", X"03", X"ed", X"e9", X"46", X"3a", X"d7", X"d8", X"00", X"f3",
                                                        X"fc", X"ff", X"39", X"e1", X"2d", X"05", X"11", X"07", X"0f", X"20", X"e4", X"f1", X"03", X"c6", X"0b", X"1b", X"fd", X"05", X"fc", X"fc", X"f1", X"0b", X"12", X"f5", X"1a", X"13",
                                                        X"02", X"fb", X"fc", X"bd", X"17", X"31", X"f7", X"d8", X"ea", X"06", X"c6", X"e3", X"27", X"02", X"1d", X"16", X"ee", X"c6", X"db", X"1a", X"13", X"ba", X"08", X"00", X"d5", X"fa",
                                                        X"f9", X"f0", X"eb", X"f5", X"f1", X"00", X"1a", X"c9", X"0d", X"22", X"1a", X"e8", X"f6", X"f1", X"f2", X"32", X"fb", X"02", X"d8", X"00", X"fe", X"12", X"ed", X"09", X"f8", X"1b",
                                                        X"fd", X"29", X"dd", X"fa", X"0a", X"24", X"18", X"fe", X"c7", X"10", X"ed", X"00", X"01", X"34", X"22", X"2c", X"ed", X"be", X"fc", X"f3", X"09", X"fc", X"1c", X"06", X"1c", X"00",
                                                        X"e6", X"e4", X"4b", X"dd", X"fe", X"ec", X"d5", X"1b", X"0c", X"ee", X"ea", X"e9", X"1e", X"f9", X"0b", X"05", X"eb", X"e7", X"26", X"26", X"f5", X"4d", X"f1", X"f8", X"fb", X"0d",
                                                        X"0e", X"e0", X"29", X"12", X"d6", X"e3", X"20", X"06", X"1c", X"fa", X"14", X"c5", X"ff", X"c2", X"18", X"fa", X"1e", X"2e", X"0f", X"f1", X"cc", X"e4", X"09", X"f0", X"e6", X"0c",
                                                        X"d7", X"f2", X"08", X"31", X"ed", X"fd", X"f3", X"44", X"d2", X"e3", X"23", X"fa", X"28", X"01", X"15", X"de", X"1b", X"c5", X"06", X"fd", X"fd", X"06", X"cf", X"30", X"04", X"ed",
                                                        X"03", X"e0", X"02", X"18", X"0c", X"f1", X"ee", X"e5", X"16", X"ee", X"f1", X"ed", X"db", X"14", X"f8", X"f9", X"e0", X"f4", X"fd", X"02", X"ff", X"fb", X"ff", X"2b", X"11", X"04",
                                                        X"f1", X"f8", X"f7", X"f2", X"05", X"e9", X"bd", X"03", X"e1", X"21", X"f1", X"56", X"f6", X"22", X"de", X"17", X"de", X"f0", X"16", X"f9", X"21", X"0a", X"b6", X"12", X"ed", X"19",
                                                        X"22", X"02", X"f7", X"0f", X"ea", X"1c", X"dc", X"e8", X"20", X"d7", X"31", X"0e", X"02", X"13", X"e7", X"01", X"3d", X"53", X"e9", X"e9", X"f3", X"31", X"00", X"ff", X"2b", X"cb",
                                                        X"e2", X"f8", X"20", X"05", X"f4", X"15", X"f1", X"19", X"e5", X"1b", X"ed", X"18", X"0a", X"08", X"e6", X"09", X"ea", X"fb", X"c9", X"f3", X"27", X"1c", X"23", X"bd", X"cf", X"1d",
                                                        X"0c", X"b1", X"d7", X"f2", X"13", X"ee", X"df", X"e8", X"e0", X"f4", X"0b", X"ff", X"ef", X"ee", X"f7", X"00", X"1a", X"0d", X"d7", X"f4", X"16", X"15", X"db", X"f5", X"f0", X"eb",
                                                        X"00", X"4e", X"d6", X"ee", X"db", X"05", X"03", X"e6", X"f8", X"ea", X"de", X"4b", X"e8", X"f3", X"21", X"1b", X"fc", X"27", X"fd", X"0d", X"e3", X"08", X"ef", X"12", X"ed", X"fe",
                                                        X"e0", X"d8", X"0e", X"01", X"05", X"0e", X"f8", X"0a", X"2a", X"f0", X"0c", X"50", X"02", X"31", X"f8", X"fa", X"f5", X"fe", X"fe", X"fd", X"b2", X"0b", X"e6", X"08", X"23", X"1f",
                                                        X"02", X"36", X"e3", X"df", X"ea", X"e3", X"e9", X"f1", X"27", X"12", X"fe", X"05", X"cf", X"ef", X"2e", X"2d", X"e2", X"12", X"ec", X"fb", X"fc", X"e7", X"23", X"f8", X"ff", X"f7",
                                                        X"22", X"01", X"f3", X"e8", X"f4", X"33", X"1c", X"e5", X"ff", X"0a", X"f2", X"0b", X"3f", X"13", X"05", X"0b", X"1d", X"ec", X"09", X"f5", X"13", X"f4", X"04", X"c8", X"fc", X"bf",
                                                        X"f1", X"08", X"f8", X"ff", X"f8", X"eb", X"07", X"ec", X"19", X"1e", X"0b", X"cb", X"ea", X"ca", X"0f", X"cd", X"09", X"fa", X"ee", X"3e", X"e8", X"e8", X"37", X"eb", X"1b", X"22",
                                                        X"06", X"e4", X"05", X"f5", X"0e", X"08", X"ed", X"e4", X"1c", X"ea", X"eb", X"fe", X"24", X"0c", X"fd", X"20", X"db", X"e4", X"f2", X"2f", X"ff", X"10", X"0c", X"f8", X"e0", X"07",
                                                        X"f2", X"09", X"b0", X"09", X"e0", X"0c", X"0d", X"25", X"1f", X"de", X"06", X"15", X"02", X"f2", X"f6", X"11", X"3a", X"fe", X"00", X"06", X"ea", X"0d", X"0b", X"17", X"2b", X"04",
                                                        X"e3", X"28", X"f2", X"f1", X"fa", X"08", X"f3", X"fb", X"aa", X"09", X"f6", X"00", X"f1", X"23", X"e8", X"10", X"e7", X"ef", X"f5", X"10", X"2c", X"d2", X"1d", X"07", X"f5", X"20",
                                                        X"00", X"f4", X"48", X"12", X"15", X"2a", X"e5", X"16", X"dd", X"10", X"32", X"df", X"ed", X"fd", X"e1", X"ff", X"1a", X"18", X"0e", X"f4", X"de", X"06", X"fa", X"07", X"f9", X"ef",
                                                        X"1f", X"00", X"fd", X"f4", X"e9", X"e4", X"19", X"21", X"03", X"c8", X"10", X"da", X"2d", X"c4", X"f2", X"00", X"d6", X"39", X"d5", X"f9", X"f8", X"f7", X"07", X"24", X"ed", X"fe",
                                                        X"ce", X"f1", X"25", X"fa", X"07", X"ef", X"dc", X"e8", X"05", X"ff", X"43", X"fb", X"0c", X"27", X"fe", X"ee", X"ec", X"e0", X"10", X"eb", X"0c", X"f3", X"0e", X"3c", X"16", X"ee",
                                                        X"16", X"ec", X"fc", X"f9", X"eb", X"27", X"16", X"1d", X"f3", X"cf", X"07", X"00", X"06", X"14", X"e8", X"02", X"bf", X"03", X"e7", X"01", X"39", X"f6", X"e1", X"2e", X"f8", X"ef",
                                                        X"f0", X"df", X"05", X"eb", X"1f", X"0d", X"e1", X"f8", X"ed", X"f2", X"3d", X"22", X"17", X"1d", X"c8", X"1f", X"f4", X"fd", X"fb", X"f6", X"05", X"0b", X"b9", X"24", X"f9", X"e4",
                                                        X"3c", X"03", X"f2", X"d3", X"f4", X"3f", X"f9", X"f4", X"0f", X"dd", X"fb", X"10", X"f4", X"05", X"10", X"10", X"d9", X"23", X"f3", X"ff", X"eb", X"d8", X"f0", X"14", X"19", X"19",
                                                        X"08", X"15", X"ed", X"ed", X"16", X"13", X"09", X"0d", X"14", X"d0", X"09", X"2c", X"d6", X"f9", X"e9", X"16", X"f3", X"e9", X"0f", X"fd", X"22", X"18", X"f9", X"f7", X"bf", X"cc",
                                                        X"16", X"1b", X"db", X"ee", X"e2", X"09", X"f0", X"04", X"ec", X"07", X"12", X"10", X"e2", X"e7", X"e8", X"0d", X"14", X"3b", X"ea", X"01", X"d4", X"1d", X"09", X"fb", X"c5", X"08",
                                                        X"04", X"34", X"df", X"ec", X"d1", X"11", X"fa", X"ce", X"12", X"de", X"e5", X"fc", X"1f", X"fd", X"06", X"0a", X"ee", X"0c", X"31", X"00", X"f3", X"1c", X"f1", X"36", X"ee", X"ef",
                                                        X"00", X"d4", X"00", X"fb", X"32", X"0a", X"db", X"10", X"0b", X"49", X"2e", X"0c", X"d8", X"d4", X"dd", X"f7", X"fe", X"f0", X"22", X"0e", X"fd", X"0c", X"df", X"e3", X"4b", X"0b",
                                                        X"01", X"fa", X"f9", X"06", X"f9", X"02", X"31", X"e0", X"08", X"01", X"26", X"fa", X"f8", X"07", X"e9", X"09", X"f1", X"3d", X"f7", X"d9", X"fd", X"10", X"13", X"e2", X"0f", X"09",
                                                        X"d1", X"db", X"0a", X"fb", X"f5", X"16", X"ff", X"ee", X"0a", X"29", X"09", X"10", X"25", X"3b", X"0c", X"ee", X"37", X"ee", X"28", X"24", X"cf", X"03", X"cf", X"be", X"fe", X"e0",
                                                        X"d6", X"01", X"e7", X"24", X"dd", X"da", X"d8", X"fe", X"11", X"17", X"05", X"b7", X"f5", X"1b", X"22", X"d9", X"10", X"fe", X"ed", X"36", X"da", X"f8", X"24", X"1f", X"fc", X"2b",
                                                        X"d0", X"2a", X"cb", X"ea", X"fb", X"10", X"ec", X"f7", X"04", X"ef", X"04", X"02", X"20", X"14", X"ec", X"22", X"18", X"4d", X"e5", X"12", X"f7", X"e4", X"fe", X"fb", X"09", X"d4",
                                                        X"0e", X"0f", X"e1", X"02", X"f3", X"06", X"01", X"0b", X"f2", X"46", X"ec", X"1b", X"fe", X"e0", X"fc", X"e3", X"2c", X"1d", X"26", X"0c", X"ef", X"00", X"26", X"fc", X"0a", X"41",
                                                        X"f2", X"bf", X"d9", X"fb", X"15", X"d7", X"30", X"0f", X"dc", X"fb", X"03", X"e5", X"0d", X"ff", X"f4", X"1e", X"eb", X"32", X"f3", X"f0", X"0e", X"da", X"04", X"f6", X"d6", X"fa",
                                                        X"07", X"fc", X"f2", X"2f", X"10", X"c2", X"fa", X"e3", X"e4", X"00", X"de", X"2d", X"f9", X"fe", X"f8", X"e5", X"f9", X"2a", X"ce", X"dd", X"d3", X"e6", X"2a", X"0a", X"ee", X"ff",
                                                        X"e5", X"3f", X"fc", X"fa", X"4d", X"fe", X"14", X"36", X"e2", X"10", X"cc", X"c7", X"13", X"d8", X"f1", X"ee", X"e3", X"2a", X"f2", X"0e", X"36", X"0c", X"08", X"22", X"05", X"22",
                                                        X"04", X"37", X"02", X"e7", X"ea", X"e3", X"22", X"f9", X"dc", X"03", X"eb", X"fb", X"f1", X"f4", X"03", X"04", X"f9", X"c3", X"ea", X"ce", X"e6", X"e2", X"df", X"f0", X"27", X"f1",
                                                        X"f6", X"0f", X"f5", X"0c", X"36", X"f3", X"e1", X"42", X"da", X"1f", X"eb", X"f1", X"19", X"db", X"f8", X"03", X"13", X"04", X"f1", X"fe", X"36", X"1a", X"24", X"25", X"e5", X"17",
                                                        X"e7", X"f9", X"1d", X"cc", X"19", X"19", X"0b", X"12", X"04", X"f0", X"07", X"22", X"f4", X"1d", X"00", X"0b", X"f5", X"f4", X"e5", X"dd", X"00", X"fc", X"24", X"01", X"fd", X"2f",
                                                        X"05", X"07", X"e2", X"01", X"10", X"e0", X"e2", X"08", X"f2", X"f6", X"09", X"df", X"35", X"f6", X"1b", X"06", X"fb", X"ef", X"dc", X"bd", X"27", X"fb", X"e1", X"e8", X"ea", X"ea",
                                                        X"ef", X"ea", X"15", X"fe", X"19", X"1b", X"f1", X"00", X"d1", X"d2", X"13", X"36", X"0a", X"fe", X"f8", X"2a", X"f6", X"e7", X"cf", X"f9", X"0f", X"11", X"df", X"db", X"e0", X"f5",
                                                        X"17", X"b3", X"fa", X"ef", X"f6", X"1b", X"d7", X"f1", X"cc", X"fe", X"ea", X"1b", X"fd", X"fa", X"1e", X"38", X"f5", X"e6", X"fa", X"e8", X"db", X"16", X"18", X"0a", X"07", X"19",
                                                        X"ee", X"fb", X"03", X"02", X"ff", X"05", X"ee", X"0c", X"f1", X"ec", X"1a", X"0e", X"1b", X"07", X"02", X"fe", X"f4", X"05", X"53", X"17", X"04", X"3a", X"d2", X"17", X"fd", X"06",
                                                        X"32", X"04", X"12", X"06", X"b9", X"0b", X"ec", X"f4", X"22", X"21", X"2a", X"c8", X"e7", X"cf", X"f4", X"fb", X"14", X"ee", X"fe", X"ed", X"18", X"fc", X"f6", X"f3", X"f8", X"28",
                                                        X"d7", X"1c", X"00", X"05", X"f1", X"e5", X"1b", X"1c", X"f0", X"f3", X"1b", X"f7", X"0e", X"33", X"ee", X"be", X"0f", X"02", X"0b", X"ec", X"f4", X"05", X"e5", X"31", X"fb", X"03",
                                                        X"42", X"ea", X"11", X"fd", X"1c", X"f8", X"c9", X"fc", X"17", X"fb", X"f9", X"00", X"d4", X"0b", X"d9", X"f8", X"37", X"f5", X"1a", X"3e", X"e7", X"e1", X"f8", X"1f", X"12", X"d4",
                                                        X"ee", X"06", X"d9", X"01", X"fa", X"e5", X"f2", X"05", X"f3", X"2a", X"e5", X"22", X"bf", X"fa", X"10", X"c2", X"09", X"f0", X"ff", X"dc", X"0c", X"01", X"20", X"fb", X"f8", X"09",
                                                        X"1e", X"39", X"fa", X"db", X"e0", X"0e", X"f8", X"df", X"e2", X"f9", X"0c", X"10", X"c8", X"0a", X"e0", X"f5", X"4a", X"4c", X"de", X"03", X"f4", X"1c", X"09", X"fb", X"1f", X"e4",
                                                        X"29", X"06", X"fd", X"17", X"e9", X"16", X"12", X"19", X"09", X"fb", X"e7", X"05", X"f5", X"da", X"36", X"f1", X"28", X"ff", X"fe", X"16", X"f4", X"e9", X"ef", X"07", X"d8", X"cb",
                                                        X"f5", X"f0", X"e2", X"05", X"15", X"f1", X"f3", X"f1", X"e9", X"f7", X"03", X"10", X"1e", X"c1", X"1e", X"0c", X"06", X"3a", X"e5", X"d5", X"f9", X"2a", X"e8", X"e4", X"e7", X"e7",
                                                        X"18", X"1f", X"db", X"b4", X"ff", X"f2", X"33", X"f8", X"e1", X"0c", X"f3", X"18", X"d0", X"eb", X"c7", X"e6", X"0f", X"3d", X"ff", X"cb", X"03", X"1e", X"10", X"2c", X"e7", X"f5",
                                                        X"06", X"11", X"cb", X"f1", X"39", X"fd", X"f4", X"f9", X"f2", X"0d", X"0c", X"c4", X"fc", X"d8", X"02", X"ea", X"0e", X"0b", X"16", X"0d", X"34", X"01", X"ee", X"23", X"11", X"36",
                                                        X"f7", X"08", X"fa", X"d9", X"ff", X"f8", X"f9", X"fd", X"1d", X"14", X"f8", X"02", X"d6", X"fb", X"03", X"fb", X"f5", X"da", X"d9", X"ed", X"ed", X"d3", X"ee", X"cf", X"38", X"07",
                                                        X"f5", X"08", X"f7", X"ef", X"39", X"25", X"1b", X"3c", X"e4", X"46", X"ed", X"04", X"29", X"d6", X"14", X"0e", X"bc", X"12", X"02", X"ef", X"03", X"0b", X"0f", X"e7", X"f5", X"22",
                                                        X"ea", X"0f", X"01", X"26", X"16", X"10", X"ed", X"fd", X"ff", X"0c", X"d5", X"d6", X"27", X"ee", X"13", X"db", X"ea", X"f5", X"e0", X"0b", X"0a", X"f6", X"de", X"f8", X"1e", X"29",
                                                        X"dd", X"f7", X"ee", X"11", X"19", X"29", X"08", X"05", X"09", X"3f", X"f4", X"f5", X"50", X"ee", X"10", X"15", X"04", X"d3", X"f8", X"c6", X"02", X"d2", X"e3", X"f8", X"e9", X"1a",
                                                        X"db", X"f2", X"1c", X"f9", X"0a", X"00", X"fb", X"e0", X"0c", X"db", X"09", X"08", X"e9", X"ee", X"e1", X"01", X"fb", X"ee", X"c2", X"05", X"dd", X"0a", X"04", X"34", X"f6", X"14",
                                                        X"f9", X"fb", X"ee", X"0a", X"0e", X"11", X"15", X"0e", X"ca", X"13", X"e7", X"0b", X"19", X"5b", X"df", X"2e", X"ce", X"e3", X"e8", X"df", X"02", X"ea", X"19", X"0b", X"d2", X"18",
                                                        X"e9", X"ea", X"50", X"44", X"ed", X"2e", X"ff", X"2e", X"e9", X"f9", X"1e", X"ca", X"06", X"21", X"0a", X"06", X"f3", X"1d", X"fa", X"0c", X"dd", X"c8", X"04", X"2d", X"ea", X"e8",
                                                        X"14", X"10", X"20", X"f5", X"25", X"dc", X"39", X"14", X"d0", X"bc", X"d7", X"c8", X"20", X"fa", X"f7", X"e0", X"0a", X"3f", X"bc", X"fa");
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

