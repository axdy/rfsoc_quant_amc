-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block404.vhd
-- Created: 2023-08-07 19:04:47
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block404
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage51/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block404 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block404;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block404 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"ae", X"fb", X"05", X"f6", X"e2", X"e8", X"0a", X"f6", X"00", X"d5", X"f7", X"fe", X"da", X"1f",
                                                        X"29", X"f3", X"f3", X"f9", X"00", X"ff", X"e5", X"ec", X"1f", X"fe", X"09", X"f4", X"09", X"06", X"f9", X"f0", X"ff", X"fb", X"1b", X"01", X"00", X"f8", X"36", X"1f", X"12", X"14",
                                                        X"fb", X"ea", X"e5", X"f5", X"fa", X"1a", X"fe", X"11", X"f4", X"f2", X"01", X"01", X"f5", X"f2", X"ea", X"e0", X"fc", X"ee", X"e6", X"02", X"14", X"eb", X"f7", X"0c", X"f3", X"f2",
                                                        X"08", X"f2", X"e7", X"fb", X"0b", X"db", X"04", X"2f", X"04", X"0a", X"ea", X"d7", X"24", X"f0", X"c3", X"13", X"fd", X"fa", X"24", X"f6", X"15", X"ec", X"01", X"04", X"0c", X"1a",
                                                        X"e6", X"de", X"16", X"fb", X"43", X"f5", X"09", X"01", X"dd", X"e1", X"31", X"e9", X"06", X"25", X"f8", X"e7", X"11", X"e5", X"fc", X"f8", X"22", X"fa", X"fe", X"03", X"05", X"31",
                                                        X"ed", X"fe", X"11", X"1f", X"fd", X"01", X"1e", X"18", X"f6", X"ff", X"0e", X"fd", X"f5", X"ea", X"f6", X"f2", X"f2", X"02", X"fa", X"d8", X"fb", X"0a", X"e3", X"e7", X"ec", X"e0",
                                                        X"cc", X"fb", X"05", X"fe", X"28", X"24", X"e8", X"f0", X"0f", X"c7", X"ec", X"ff", X"05", X"15", X"23", X"f7", X"1e", X"f1", X"00", X"f8", X"c6", X"ea", X"32", X"15", X"ff", X"ca",
                                                        X"f4", X"ea", X"06", X"ef", X"21", X"f4", X"f9", X"fb", X"08", X"f2", X"1e", X"03", X"f6", X"20", X"02", X"33", X"13", X"fb", X"eb", X"f5", X"fb", X"03", X"14", X"0b", X"f1", X"01",
                                                        X"cb", X"12", X"08", X"20", X"ff", X"eb", X"0e", X"08", X"04", X"0c", X"12", X"13", X"e6", X"f3", X"01", X"0b", X"d7", X"1e", X"1f", X"02", X"1c", X"0f", X"f5", X"1a", X"26", X"2d",
                                                        X"f0", X"0b", X"dc", X"03", X"fa", X"1d", X"f7", X"1f", X"0b", X"f9", X"ef", X"da", X"ef", X"1a", X"1b", X"d3", X"17", X"ee", X"c1", X"10", X"06", X"0c", X"12", X"04", X"15", X"f3",
                                                        X"06", X"fc", X"03", X"fe", X"dc", X"00", X"e0", X"fc", X"11", X"e2", X"11", X"fd", X"ed", X"f7", X"11", X"d5", X"f2", X"de", X"14", X"00", X"f4", X"2b", X"f8", X"0c", X"32", X"0b",
                                                        X"0b", X"e0", X"17", X"15", X"ef", X"c9", X"0f", X"45", X"05", X"09", X"f7", X"0d", X"03", X"fd", X"cc", X"fa", X"fb", X"e4", X"1e", X"e6", X"17", X"cc", X"0e", X"e2", X"ef", X"fb",
                                                        X"1e", X"0d", X"17", X"07", X"f8", X"04", X"02", X"e1", X"fb", X"00", X"01", X"33", X"e8", X"d9", X"f3", X"ff", X"0f", X"ff", X"f5", X"f8", X"db", X"00", X"06", X"13", X"dc", X"d4",
                                                        X"01", X"e6", X"0a", X"be", X"fa", X"fc", X"e4", X"d8", X"fd", X"f3", X"2a", X"f8", X"f8", X"fb", X"1d", X"16", X"dc", X"dc", X"fb", X"d3", X"dc", X"fa", X"1c", X"29", X"f2", X"eb",
                                                        X"23", X"fe", X"fa", X"f0", X"1e", X"e4", X"f5", X"ee", X"00", X"f4", X"fe", X"04", X"ef", X"cc", X"05", X"00", X"dd", X"f8", X"f9", X"0b", X"ee", X"ec", X"11", X"03", X"f4", X"0d",
                                                        X"fc", X"fb", X"02", X"02", X"02", X"fd", X"1c", X"fd", X"f4", X"f6", X"fb", X"1b", X"17", X"bb", X"1c", X"cf", X"f3", X"f0", X"e7", X"bf", X"1e", X"f5", X"f6", X"09", X"05", X"f4",
                                                        X"f0", X"c9", X"d9", X"ae", X"09", X"24", X"f0", X"06", X"dc", X"f0", X"da", X"f1", X"cc", X"f1", X"0b", X"e9", X"ef", X"ea", X"11", X"1e", X"07", X"18", X"03", X"eb", X"1a", X"e7",
                                                        X"fb", X"eb", X"db", X"f6", X"fd", X"f6", X"0e", X"16", X"e7", X"0e", X"01", X"cc", X"f8", X"16", X"fc", X"03", X"f2", X"06", X"f9", X"02", X"f4", X"10", X"0c", X"ef", X"ec", X"cb",
                                                        X"08", X"df", X"ed", X"e1", X"15", X"13", X"ff", X"fb", X"0b", X"f7", X"00", X"0e", X"09", X"0c", X"1f", X"e3", X"f3", X"f0", X"05", X"15", X"f1", X"df", X"07", X"14", X"3c", X"03",
                                                        X"12", X"fb", X"d2", X"39", X"1e", X"0c", X"f4", X"37", X"0c", X"fe", X"0b", X"e9", X"e9", X"ef", X"33", X"fc", X"f4", X"f4", X"10", X"02", X"db", X"d4", X"08", X"f9", X"fb", X"23",
                                                        X"fd", X"25", X"0f", X"f6", X"3b", X"f2", X"fc", X"e2", X"27", X"2b", X"e1", X"0e", X"19", X"18", X"e6", X"0c", X"26", X"2d", X"f7", X"f3", X"fd", X"e8", X"fb", X"19", X"dd", X"14",
                                                        X"12", X"36", X"16", X"e5", X"05", X"2d", X"e6", X"ec", X"05", X"fd", X"ca", X"ef", X"22", X"16", X"f8", X"20", X"18", X"c8", X"f7", X"54", X"08", X"04", X"34", X"0a", X"0d", X"f4",
                                                        X"f5", X"fb", X"08", X"f6", X"e1", X"f4", X"04", X"43", X"10", X"18", X"f3", X"02", X"10", X"19", X"00", X"19", X"fb", X"06", X"fc", X"de", X"ee", X"27", X"17", X"35", X"08", X"f1",
                                                        X"08", X"14", X"07", X"29", X"e6", X"0d", X"d3", X"04", X"fc", X"0d", X"16", X"ee", X"f5", X"c1", X"02", X"08", X"e9", X"f6", X"26", X"30", X"0a", X"f6", X"f5", X"fc", X"00", X"0f",
                                                        X"2d", X"19", X"19", X"bc", X"f1", X"20", X"f4", X"14", X"16", X"13", X"0d", X"f4", X"d9", X"f3", X"eb", X"01", X"ae", X"0a", X"cb", X"ca", X"f3", X"cf", X"e8", X"f0", X"f9", X"ea",
                                                        X"ec", X"0c", X"d3", X"03", X"f5", X"1f", X"18", X"f6", X"e1", X"db", X"0b", X"24", X"e9", X"02", X"d4", X"c5", X"f5", X"06", X"27", X"ec", X"fe", X"0d", X"17", X"e5", X"12", X"0a",
                                                        X"f3", X"bb", X"f1", X"e7", X"18", X"c9", X"f3", X"fa", X"07", X"06", X"0c", X"d8", X"00", X"04", X"d4", X"d3", X"fd", X"b7", X"f3", X"ee", X"dc", X"e7", X"0d", X"fb", X"d0", X"08",
                                                        X"f0", X"e8", X"e4", X"ce", X"f1", X"ce", X"f3", X"1c", X"ff", X"ec", X"f0", X"00", X"e8", X"f1", X"fa", X"f7", X"f2", X"05", X"13", X"dc", X"0a", X"10", X"02", X"f1", X"e8", X"07",
                                                        X"ea", X"e5", X"f2", X"fc", X"23", X"04", X"f3", X"d9", X"e8", X"f9", X"db", X"39", X"12", X"e4", X"ee", X"1b", X"e7", X"fd", X"fa", X"fe", X"ae", X"fe", X"03", X"ff", X"35", X"12",
                                                        X"d7", X"c8", X"fa", X"e7", X"1a", X"f3", X"f0", X"df", X"e9", X"f1", X"2c", X"fe", X"06", X"05", X"30", X"dc", X"d8", X"cb", X"08", X"d0", X"0b", X"01", X"e9", X"0a", X"e7", X"09",
                                                        X"ce", X"0a", X"0a", X"f0", X"28", X"dd", X"f7", X"d8", X"f5", X"1d", X"f3", X"e0", X"e1", X"09", X"f2", X"fd", X"25", X"05", X"05", X"fd", X"fa", X"ea", X"1e", X"f1", X"0a", X"03",
                                                        X"07", X"f8", X"05", X"dc", X"15", X"f0", X"f3", X"04", X"11", X"1b", X"31", X"11", X"20", X"fa", X"06", X"26", X"11", X"f5", X"d1", X"01", X"0a", X"f7", X"b3", X"ff", X"00", X"fb",
                                                        X"d8", X"d8", X"fa", X"c1", X"02", X"41", X"f3", X"07", X"da", X"d7", X"f8", X"f7", X"ed", X"f4", X"12", X"e7", X"1e", X"eb", X"ff", X"20", X"0c", X"24", X"e5", X"18", X"ee", X"18",
                                                        X"f2", X"f6", X"00", X"11", X"05", X"02", X"cf", X"f0", X"e2", X"34", X"0f", X"cd", X"f4", X"fb", X"dc", X"de", X"f3", X"e5", X"da", X"fa", X"00", X"06", X"19", X"fc", X"f7", X"d1",
                                                        X"06", X"ef", X"e6", X"17", X"fb", X"eb", X"23", X"0a", X"b9", X"f9", X"fe", X"d7", X"ed", X"20", X"d1", X"14", X"fd", X"e8", X"07", X"ff", X"28", X"0f", X"e6", X"e8", X"3d", X"f9",
                                                        X"03", X"f7", X"17", X"06", X"ea", X"e8", X"f2", X"14", X"09", X"ff", X"14", X"f0", X"06", X"f7", X"0b", X"f6", X"00", X"fb", X"ea", X"db", X"07", X"0a", X"08", X"fd", X"fa", X"09",
                                                        X"fa", X"0c", X"d9", X"01", X"d2", X"02", X"05", X"f0", X"ff", X"02", X"05", X"02", X"00", X"ef", X"0e", X"01", X"17", X"fe", X"1c", X"0b", X"2c", X"fc", X"04", X"ed", X"ed", X"15",
                                                        X"e6", X"30", X"f6", X"00", X"f5", X"06", X"04", X"24", X"09", X"ff", X"fb", X"fd", X"03", X"ef", X"2f", X"4e", X"1f", X"fc", X"18", X"f9", X"e6", X"17", X"f0", X"df", X"dd", X"f4",
                                                        X"e2", X"f6", X"fa", X"06", X"e7", X"18", X"f2", X"4c", X"03", X"42", X"fa", X"f6", X"07", X"0f", X"05", X"08", X"fa", X"ec", X"08", X"e9", X"28", X"e6", X"dc", X"2d", X"0c", X"26",
                                                        X"07", X"13", X"f2", X"22", X"20", X"04", X"07", X"f8", X"05", X"21", X"00", X"0b", X"24", X"f3", X"fe", X"e8", X"18", X"17", X"f5", X"3d", X"eb", X"00", X"3e", X"ee", X"00", X"ed",
                                                        X"11", X"f3", X"2e", X"ed", X"06", X"4a", X"05", X"20", X"16", X"09", X"f9", X"06", X"5b", X"05", X"04", X"ec", X"10", X"14", X"10", X"4b", X"10", X"56", X"1a", X"0e", X"38", X"18",
                                                        X"0e", X"16", X"3f", X"00", X"05", X"f9", X"3e", X"3e", X"30", X"2c", X"0b", X"35", X"17", X"09", X"09", X"41", X"2b", X"ef", X"de", X"01", X"02", X"f4", X"dd", X"1a", X"08", X"f9",
                                                        X"ff", X"4e", X"25", X"16", X"22", X"41", X"f0", X"f9", X"56", X"06", X"ff", X"11", X"dd", X"3d", X"14", X"20", X"1c", X"49", X"0a", X"27", X"30", X"48", X"37", X"0a", X"d0", X"01",
                                                        X"04", X"0d", X"25", X"09", X"1a", X"ef", X"0c", X"2b", X"22", X"12", X"13", X"24", X"f5", X"08", X"39", X"f8", X"07", X"d5", X"e8", X"11", X"f9", X"1f", X"f2", X"db", X"fe", X"1e",
                                                        X"1c", X"2f", X"ef", X"ef", X"2a", X"f3", X"18", X"d7", X"32", X"20", X"f3", X"d4", X"05", X"e6", X"e2", X"1b", X"1e", X"22", X"09", X"02", X"54", X"10", X"07", X"00", X"26", X"e1",
                                                        X"0a", X"0f", X"fe", X"f8", X"01", X"1d", X"ea", X"f8", X"23", X"fa", X"0c", X"fc", X"17", X"07", X"fb", X"0e", X"0b", X"41", X"f6", X"d2", X"fa", X"00", X"13", X"09", X"1a", X"04",
                                                        X"30", X"0b", X"0b", X"18", X"22", X"0f", X"36", X"04", X"ff", X"2d", X"fa", X"fc", X"08", X"26", X"e6", X"f4", X"43", X"ee", X"fb", X"f5", X"0d", X"d9", X"f2", X"e1", X"fc", X"09",
                                                        X"0d", X"13", X"ef", X"f8", X"0e", X"ff", X"ca", X"ef", X"fe", X"06", X"e0", X"0e", X"34", X"05", X"fd", X"eb", X"09", X"09", X"1c", X"e7", X"ff", X"ee", X"44", X"04", X"04", X"0a",
                                                        X"33", X"ea", X"fc", X"f1", X"1f", X"12", X"ec", X"0f", X"09", X"15", X"18", X"fa", X"f8", X"ed", X"19", X"03", X"1d", X"28", X"ef", X"20", X"05", X"09", X"e7", X"f7", X"1f", X"0a",
                                                        X"e6", X"0a", X"44", X"01", X"f7", X"e9", X"03", X"e8", X"2b", X"d5", X"18", X"5a", X"f1", X"06", X"ed", X"36", X"21", X"fa", X"e7", X"fa", X"0c", X"f3", X"22", X"00", X"ef", X"35",
                                                        X"f6", X"1f", X"13", X"1d", X"18", X"30", X"e1", X"05", X"d3", X"f1", X"f4", X"ee", X"41", X"ee", X"20", X"1e", X"07", X"62", X"0a", X"0a", X"fc", X"3b", X"e2", X"f4", X"53", X"f6",
                                                        X"f4", X"02", X"45", X"14", X"05", X"2d", X"05", X"20", X"f8", X"08", X"05", X"04", X"fd", X"fe", X"33", X"f9", X"02", X"1b", X"f6", X"fe", X"22", X"09", X"03", X"4d", X"f2", X"06",
                                                        X"00", X"42", X"1d", X"06", X"1c", X"05", X"f5", X"fa", X"e6", X"1f", X"11", X"5d", X"fd", X"30", X"f3", X"2a", X"29", X"2d", X"11", X"15", X"d3", X"00", X"11", X"f7", X"14", X"0c",
                                                        X"19", X"3b", X"01", X"ee", X"13", X"1e", X"08", X"2e", X"fc", X"ee", X"29", X"e4", X"01", X"fa", X"01", X"f7", X"02", X"e9", X"00", X"08", X"02", X"12", X"15", X"fa", X"27", X"ed",
                                                        X"f1", X"f3", X"04", X"fb", X"f0", X"03", X"f0", X"26", X"f1", X"f6", X"00", X"0e", X"f7", X"fe", X"e1", X"f4", X"ee", X"fd", X"ef", X"f5", X"fe", X"17", X"26", X"f8", X"fc", X"ef",
                                                        X"ed", X"17", X"ef", X"02", X"19", X"f2", X"38", X"00", X"01", X"06", X"25", X"1f", X"18", X"33", X"08", X"20", X"fe", X"f9", X"0a", X"2f", X"06", X"02", X"0a", X"00", X"fd", X"1d",
                                                        X"dc", X"06", X"ed", X"04", X"05", X"c3", X"02", X"04", X"0a", X"17", X"f2", X"f7", X"24", X"02", X"f4", X"e9", X"1b", X"10", X"07", X"16", X"0a", X"fe", X"fe", X"1a", X"e2", X"05",
                                                        X"19", X"f3", X"c4", X"fc", X"07", X"03", X"1f", X"0e", X"0c", X"f8", X"11", X"2d", X"07", X"00", X"f6", X"04", X"2a", X"e3", X"d8", X"e4", X"f9", X"e2", X"e4", X"28", X"00", X"d6",
                                                        X"0e", X"48", X"0a", X"f6", X"e0", X"1d", X"35", X"fb", X"09", X"0d", X"02", X"1a", X"38", X"0b", X"d6", X"ea", X"06", X"36", X"07", X"0e", X"e7", X"15", X"1d", X"0b", X"24", X"f2",
                                                        X"f3", X"f9", X"d2", X"d3", X"f9", X"d3", X"f8", X"cf", X"e8", X"03", X"f1", X"c8", X"ff", X"f9", X"ab", X"ed", X"ea", X"e6", X"2c", X"db", X"0c", X"f5", X"0b", X"ec", X"f2", X"02",
                                                        X"d9", X"26", X"0c", X"07", X"13", X"f9", X"ed", X"16", X"18", X"df", X"0a", X"c1", X"fe", X"33", X"fd", X"f4", X"f9", X"fc", X"ff", X"ec", X"1d", X"05", X"f3", X"e6", X"15", X"ca",
                                                        X"20", X"1b", X"0c", X"13", X"0e", X"07", X"f6", X"13", X"e6", X"08", X"ea", X"00", X"fa", X"f1", X"09", X"21", X"00", X"bd", X"0a", X"23", X"1e", X"02", X"04", X"e4", X"1a", X"09",
                                                        X"e4", X"ef", X"09", X"ff", X"03", X"fb", X"f9", X"ea", X"10", X"c3", X"e8", X"01", X"df", X"00", X"e4", X"f1", X"d8", X"06", X"00", X"f1", X"1e", X"1d", X"f5", X"ce", X"f3", X"1b",
                                                        X"0a", X"f8", X"e7", X"f6", X"e8", X"e8", X"e4", X"04", X"09", X"04", X"08", X"d0", X"24", X"fa", X"03", X"19", X"0d", X"09", X"ea", X"08", X"14", X"15", X"04", X"03", X"19", X"df",
                                                        X"d6", X"db", X"02", X"f9", X"08", X"b4", X"f1", X"f4", X"03", X"f3", X"e5", X"12", X"f5", X"03", X"16", X"ec", X"16", X"0d", X"ca", X"e4", X"03", X"11", X"f4", X"f7", X"e3", X"cf",
                                                        X"f2", X"06", X"bc", X"03", X"1a", X"f4", X"de", X"15", X"d1", X"de", X"07", X"29", X"f6", X"ed", X"23", X"ed", X"07", X"f3", X"0b", X"07", X"fc", X"fb", X"03", X"dc", X"fd", X"dc",
                                                        X"04", X"0d", X"07", X"06", X"f4", X"ed", X"e3", X"f1", X"17", X"ff", X"00", X"00", X"19", X"00", X"13", X"09", X"0d", X"26", X"05", X"04", X"f7", X"ed", X"ef", X"fa", X"c8", X"ff",
                                                        X"04", X"dd", X"cd", X"ef", X"fe", X"fb", X"09", X"ee", X"17", X"0c", X"f4", X"e9", X"f3", X"f8", X"21", X"ff", X"0a", X"e5", X"0f", X"ee", X"f3", X"f5", X"05", X"e4", X"f2", X"0e",
                                                        X"dd", X"f5", X"ed", X"ef", X"de", X"ff", X"0f", X"e5", X"e4", X"01", X"f3", X"0c", X"04", X"bf", X"0b", X"15", X"06", X"f4", X"1e", X"00", X"ca", X"f9", X"10", X"f6", X"e1", X"18",
                                                        X"e9", X"cb", X"fb", X"3b", X"f0", X"16", X"f9", X"14", X"ef", X"ec", X"f1", X"0c", X"fe", X"f5", X"15", X"f5", X"08", X"cb", X"f0", X"0b", X"f4", X"f6", X"11", X"f3", X"0b", X"01",
                                                        X"0e", X"f3", X"f7", X"dd", X"01", X"12", X"f4", X"e2", X"ff", X"b2", X"06", X"fe", X"d8", X"d1", X"e6", X"f4", X"c2", X"02", X"01", X"12", X"d2", X"00", X"1b", X"f0", X"08", X"23",
                                                        X"0e", X"e7", X"0c", X"17", X"12", X"e6", X"21", X"01", X"12", X"f2", X"cd", X"1f", X"d3", X"ca", X"07", X"f3", X"ec", X"ed", X"19", X"db", X"0a", X"fc", X"aa", X"01", X"02", X"ec",
                                                        X"fd", X"d0", X"ec", X"dc", X"10", X"12", X"f7", X"f3", X"ff", X"f5", X"e0", X"f1", X"1d", X"0b", X"ff", X"ed", X"1f", X"f8", X"da", X"cc", X"f0", X"02", X"00", X"e6", X"11", X"c1",
                                                        X"f2", X"ef", X"e8", X"fa", X"06", X"eb", X"fe", X"fa", X"20", X"2d", X"01", X"da", X"f9", X"eb", X"ef", X"21", X"00", X"f8", X"0c", X"f9", X"ed", X"0b", X"27", X"11", X"ee", X"c9",
                                                        X"f6", X"d4", X"fd", X"ef", X"10", X"f2", X"18", X"f8", X"ba", X"f9", X"19", X"1f", X"e2", X"12", X"04", X"c6", X"0b", X"02", X"e6", X"fd", X"ff", X"05", X"e4", X"f8", X"14", X"15",
                                                        X"12", X"f6", X"04", X"ff", X"f6", X"26", X"13", X"e3", X"16", X"f7", X"ed", X"f0", X"01", X"f7", X"d2", X"fc", X"07", X"11", X"0a", X"1e", X"2c", X"04", X"09", X"ed", X"0c", X"15",
                                                        X"fb", X"1f", X"0a", X"f8", X"38", X"fd", X"06", X"f3", X"f1", X"ef", X"d8", X"d1", X"02", X"08", X"0c", X"fa", X"f9", X"e3", X"0f", X"f6");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f6";
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

