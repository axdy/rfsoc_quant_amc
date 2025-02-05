-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block422.vhd
-- Created: 2023-06-15 16:03:09
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block422
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage68/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block422 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block422;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block422 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"2b", X"c6", X"d5", X"20", X"f0", X"4a", X"d8", X"19", X"1f", X"f7", X"34", X"2c", X"3a", X"28",
                                                        X"d7", X"f3", X"f9", X"f6", X"fb", X"df", X"06", X"16", X"cd", X"fe", X"0b", X"23", X"18", X"0f", X"da", X"fc", X"fc", X"f7", X"f2", X"e6", X"04", X"f7", X"0e", X"fd", X"f0", X"fa",
                                                        X"ea", X"00", X"f3", X"0e", X"13", X"0a", X"25", X"e6", X"eb", X"25", X"19", X"e2", X"07", X"e6", X"36", X"fc", X"f2", X"d2", X"f7", X"01", X"f5", X"f6", X"21", X"1d", X"08", X"11",
                                                        X"10", X"06", X"f9", X"e1", X"23", X"f1", X"1b", X"05", X"ed", X"0f", X"d8", X"fa", X"f8", X"09", X"f9", X"0a", X"0a", X"dd", X"01", X"13", X"eb", X"fb", X"1f", X"05", X"e7", X"d3",
                                                        X"ef", X"f3", X"25", X"1c", X"05", X"01", X"fe", X"29", X"f2", X"e0", X"00", X"15", X"ff", X"f8", X"1b", X"15", X"fb", X"e8", X"f1", X"07", X"18", X"cb", X"ee", X"d1", X"07", X"3c",
                                                        X"d3", X"3d", X"00", X"20", X"13", X"27", X"fe", X"04", X"e8", X"e8", X"1b", X"d8", X"fb", X"e6", X"e9", X"33", X"07", X"14", X"23", X"ff", X"fc", X"e1", X"11", X"0d", X"c9", X"e2",
                                                        X"e7", X"fd", X"04", X"18", X"f1", X"27", X"09", X"f1", X"39", X"2c", X"f8", X"03", X"f1", X"0c", X"f3", X"f1", X"08", X"03", X"fe", X"cf", X"ea", X"39", X"3d", X"fe", X"f9", X"f8",
                                                        X"d1", X"d6", X"1a", X"ef", X"0b", X"0b", X"00", X"1d", X"ec", X"26", X"f4", X"de", X"06", X"10", X"cb", X"bf", X"e4", X"e8", X"ec", X"f6", X"fa", X"12", X"00", X"07", X"f0", X"c1",
                                                        X"f2", X"f4", X"1f", X"e8", X"eb", X"33", X"d6", X"16", X"de", X"ef", X"22", X"0a", X"fd", X"26", X"f1", X"f3", X"f4", X"fd", X"f2", X"fc", X"d1", X"c6", X"fc", X"31", X"f9", X"fc",
                                                        X"09", X"1c", X"08", X"f1", X"f6", X"2b", X"e4", X"05", X"08", X"16", X"e3", X"bb", X"ff", X"f8", X"e6", X"11", X"1f", X"01", X"15", X"f7", X"fc", X"35", X"e5", X"37", X"d5", X"2d",
                                                        X"08", X"2e", X"06", X"e9", X"1f", X"23", X"e4", X"fa", X"f8", X"e7", X"02", X"f2", X"f9", X"30", X"e1", X"0e", X"21", X"1b", X"f4", X"dc", X"f2", X"fc", X"e1", X"e1", X"1b", X"f1",
                                                        X"f2", X"39", X"f3", X"14", X"d8", X"17", X"06", X"2b", X"f6", X"fd", X"18", X"f9", X"ff", X"f1", X"eb", X"0d", X"00", X"fd", X"ee", X"01", X"fe", X"f3", X"e6", X"2f", X"fa", X"23",
                                                        X"e5", X"15", X"00", X"fc", X"e6", X"04", X"1a", X"bd", X"fa", X"f7", X"21", X"fa", X"d8", X"bd", X"0d", X"25", X"fc", X"f1", X"fe", X"03", X"0b", X"0d", X"05", X"1c", X"f2", X"04",
                                                        X"32", X"f8", X"01", X"d7", X"e7", X"f8", X"ef", X"f2", X"33", X"1e", X"fb", X"3c", X"de", X"ca", X"f4", X"f7", X"ea", X"02", X"d9", X"32", X"f0", X"00", X"e3", X"d9", X"1d", X"0e",
                                                        X"13", X"1e", X"01", X"09", X"f2", X"0b", X"d9", X"03", X"0a", X"1b", X"e6", X"34", X"15", X"02", X"08", X"fa", X"11", X"f5", X"fa", X"be", X"02", X"0a", X"f6", X"fc", X"07", X"f9",
                                                        X"f5", X"3c", X"05", X"14", X"ff", X"ed", X"1c", X"fd", X"f6", X"f5", X"f0", X"2e", X"e7", X"17", X"20", X"bc", X"11", X"e3", X"f5", X"03", X"d9", X"ea", X"e3", X"00", X"e7", X"df",
                                                        X"d7", X"53", X"e3", X"23", X"04", X"2b", X"11", X"1e", X"09", X"f9", X"f2", X"e6", X"04", X"22", X"0c", X"1b", X"e4", X"2f", X"19", X"1e", X"09", X"1f", X"e9", X"1d", X"04", X"1d",
                                                        X"06", X"e8", X"12", X"07", X"00", X"fc", X"fe", X"eb", X"15", X"de", X"ef", X"c1", X"e6", X"ee", X"22", X"fd", X"15", X"fb", X"dd", X"37", X"01", X"fe", X"07", X"f6", X"2a", X"e1",
                                                        X"e8", X"f8", X"f2", X"ef", X"02", X"e4", X"09", X"0b", X"e6", X"1d", X"fb", X"05", X"09", X"14", X"10", X"05", X"ff", X"c9", X"f6", X"e4", X"05", X"eb", X"0d", X"19", X"f9", X"09",
                                                        X"f3", X"ef", X"f8", X"ef", X"f8", X"03", X"fb", X"e7", X"fa", X"13", X"f6", X"0a", X"03", X"09", X"2a", X"e3", X"fa", X"f9", X"ff", X"19", X"e7", X"f9", X"06", X"dc", X"19", X"3b",
                                                        X"e3", X"09", X"08", X"f9", X"fe", X"d6", X"e6", X"de", X"0d", X"2a", X"25", X"0f", X"24", X"00", X"25", X"0e", X"ef", X"18", X"ee", X"00", X"f1", X"10", X"f1", X"19", X"06", X"27",
                                                        X"fc", X"30", X"2c", X"f3", X"ff", X"28", X"25", X"0c", X"de", X"e7", X"02", X"00", X"fe", X"f1", X"f2", X"3f", X"ef", X"02", X"05", X"fd", X"00", X"30", X"03", X"f2", X"e7", X"f5",
                                                        X"e4", X"f9", X"26", X"c6", X"dc", X"13", X"38", X"f9", X"e2", X"f2", X"f7", X"d2", X"fb", X"f2", X"34", X"f3", X"0c", X"0a", X"05", X"cd", X"f6", X"f7", X"2e", X"05", X"e5", X"32",
                                                        X"06", X"1b", X"e7", X"d5", X"fd", X"10", X"f1", X"0f", X"10", X"e1", X"db", X"27", X"08", X"e2", X"0c", X"ec", X"e6", X"07", X"04", X"eb", X"09", X"33", X"12", X"f7", X"e4", X"08",
                                                        X"f3", X"de", X"41", X"f9", X"06", X"ce", X"dc", X"c2", X"09", X"f5", X"f0", X"11", X"e4", X"ec", X"18", X"16", X"03", X"2f", X"dd", X"18", X"fc", X"21", X"02", X"2f", X"e7", X"20",
                                                        X"0e", X"f6", X"ea", X"cd", X"f3", X"d7", X"f2", X"34", X"ca", X"34", X"f0", X"ef", X"0b", X"39", X"27", X"08", X"0d", X"fa", X"05", X"ef", X"f4", X"0d", X"e2", X"2b", X"d0", X"10",
                                                        X"fc", X"ce", X"08", X"0f", X"18", X"12", X"f1", X"ee", X"f7", X"13", X"05", X"09", X"e9", X"22", X"f0", X"1b", X"e8", X"20", X"dc", X"ee", X"fd", X"0f", X"02", X"fd", X"f7", X"1e",
                                                        X"e5", X"ee", X"db", X"4d", X"02", X"fe", X"12", X"1c", X"f2", X"f3", X"0c", X"13", X"08", X"13", X"e2", X"2c", X"12", X"1c", X"fa", X"f9", X"2d", X"f0", X"23", X"ed", X"ef", X"dd",
                                                        X"01", X"f2", X"ff", X"fb", X"fd", X"1b", X"f2", X"db", X"e4", X"dd", X"4e", X"08", X"e5", X"04", X"04", X"df", X"06", X"e0", X"10", X"f2", X"ef", X"0c", X"18", X"3b", X"f6", X"32",
                                                        X"ed", X"f6", X"f5", X"b8", X"ff", X"fd", X"fc", X"ee", X"1c", X"04", X"24", X"f1", X"f5", X"18", X"d9", X"ea", X"ee", X"0d", X"dc", X"ff", X"15", X"1a", X"f0", X"f7", X"ee", X"02",
                                                        X"0f", X"16", X"03", X"fb", X"fe", X"00", X"08", X"1b", X"f3", X"ee", X"f3", X"2d", X"31", X"2c", X"e1", X"f1", X"fc", X"f4", X"02", X"e8", X"f8", X"41", X"e9", X"21", X"03", X"dd",
                                                        X"1b", X"fa", X"0e", X"06", X"f3", X"f1", X"05", X"01", X"f2", X"e6", X"fe", X"37", X"f7", X"12", X"11", X"fc", X"ff", X"00", X"19", X"ff", X"e9", X"05", X"e7", X"f9", X"d7", X"29",
                                                        X"ea", X"07", X"19", X"fe", X"1a", X"29", X"16", X"17", X"d6", X"0b", X"e3", X"f7", X"dc", X"0c", X"fd", X"00", X"f0", X"36", X"ec", X"da", X"df", X"ff", X"04", X"e2", X"e4", X"04",
                                                        X"0a", X"0d", X"1e", X"15", X"01", X"e4", X"f7", X"de", X"18", X"fa", X"ca", X"33", X"e1", X"f5", X"fc", X"f7", X"43", X"19", X"ef", X"06", X"ec", X"df", X"ef", X"00", X"3f", X"00",
                                                        X"01", X"d8", X"08", X"22", X"e2", X"e6", X"1b", X"17", X"23", X"fb", X"e6", X"c3", X"ed", X"e3", X"1b", X"13", X"19", X"ba", X"02", X"d5", X"06", X"e9", X"06", X"fa", X"33", X"eb",
                                                        X"ef", X"04", X"e8", X"f8", X"ff", X"1c", X"08", X"fa", X"09", X"38", X"16", X"16", X"dd", X"f0", X"2e", X"fc", X"fa", X"18", X"03", X"3d", X"e1", X"1a", X"20", X"cb", X"14", X"30",
                                                        X"2c", X"e7", X"0b", X"fb", X"0b", X"f2", X"04", X"ca", X"ee", X"1a", X"dd", X"0c", X"02", X"ef", X"01", X"01", X"0a", X"16", X"03", X"f7", X"e2", X"12", X"e3", X"01", X"f6", X"10",
                                                        X"01", X"f4", X"16", X"4e", X"f5", X"cd", X"15", X"09", X"e9", X"fa", X"da", X"13", X"00", X"34", X"01", X"1e", X"25", X"f8", X"10", X"c5", X"cc", X"ed", X"e0", X"db", X"31", X"16",
                                                        X"f9", X"10", X"0c", X"c7", X"1c", X"d4", X"0a", X"d5", X"fa", X"d4", X"e1", X"0e", X"e4", X"e3", X"04", X"02", X"fe", X"21", X"0f", X"fd", X"fa", X"07", X"38", X"02", X"dc", X"e9",
                                                        X"f2", X"0e", X"ed", X"1d", X"18", X"29", X"13", X"18", X"16", X"13", X"00", X"14", X"10", X"13", X"10", X"b5", X"fe", X"f1", X"06", X"00", X"02", X"f2", X"0a", X"fb", X"dc", X"1a",
                                                        X"0e", X"f4", X"e4", X"09", X"e6", X"1d", X"0b", X"17", X"22", X"fd", X"da", X"fb", X"e6", X"f9", X"d1", X"2a", X"e2", X"17", X"cf", X"14", X"ea", X"27", X"0e", X"22", X"fb", X"04",
                                                        X"01", X"ec", X"21", X"f1", X"00", X"18", X"f8", X"3a", X"19", X"fa", X"eb", X"f2", X"0a", X"08", X"0a", X"02", X"de", X"ea", X"d9", X"f7", X"09", X"de", X"c1", X"37", X"ea", X"14",
                                                        X"f2", X"b9", X"17", X"1c", X"f2", X"02", X"07", X"f1", X"f4", X"f2", X"02", X"2e", X"ea", X"f4", X"0c", X"02", X"08", X"30", X"f2", X"eb", X"10", X"e9", X"20", X"f8", X"13", X"21",
                                                        X"04", X"da", X"fc", X"1d", X"2a", X"f7", X"e4", X"1d", X"ea", X"f3", X"f9", X"0c", X"09", X"fd", X"de", X"fb", X"0a", X"01", X"05", X"e8", X"31", X"e8", X"0e", X"b9", X"eb", X"06",
                                                        X"d6", X"f8", X"30", X"1b", X"dd", X"e3", X"e6", X"09", X"ef", X"f2", X"f2", X"13", X"1c", X"c3", X"0e", X"2f", X"ee", X"e2", X"2c", X"0f", X"ea", X"ff", X"04", X"e7", X"f7", X"33",
                                                        X"e4", X"f4", X"e1", X"00", X"f1", X"26", X"02", X"fc", X"f0", X"f6", X"3c", X"e9", X"d1", X"1c", X"fc", X"17", X"ed", X"19", X"eb", X"18", X"fe", X"0e", X"f6", X"09", X"03", X"ee",
                                                        X"34", X"e5", X"ff", X"14", X"f6", X"14", X"fc", X"21", X"0a", X"2f", X"03", X"00", X"02", X"0f", X"e7", X"eb", X"28", X"e3", X"de", X"ee", X"df", X"06", X"e6", X"f6", X"01", X"e9",
                                                        X"f7", X"f4", X"01", X"e0", X"fc", X"f7", X"e8", X"0d", X"0a", X"f2", X"e5", X"ff", X"22", X"f1", X"e0", X"d8", X"fc", X"13", X"ce", X"0a", X"0b", X"01", X"10", X"26", X"0c", X"2b",
                                                        X"0d", X"06", X"42", X"ed", X"d9", X"e9", X"ed", X"f4", X"d5", X"f7", X"1b", X"04", X"fc", X"39", X"18", X"e2", X"de", X"f5", X"fb", X"f9", X"cf", X"dc", X"d3", X"f9", X"ec", X"fc",
                                                        X"1d", X"14", X"19", X"ec", X"df", X"13", X"f9", X"fa", X"31", X"df", X"c4", X"35", X"02", X"09", X"15", X"fe", X"fe", X"0b", X"d9", X"0e", X"dd", X"cc", X"11", X"28", X"e6", X"01",
                                                        X"f0", X"05", X"f1", X"2c", X"f2", X"e2", X"05", X"0d", X"f8", X"fa", X"fd", X"1d", X"0a", X"23", X"f6", X"0f", X"e1", X"15", X"0c", X"0a", X"19", X"09", X"f8", X"e0", X"e7", X"ee",
                                                        X"1b", X"f7", X"fd", X"32", X"0f", X"0f", X"3b", X"d2", X"1b", X"ca", X"04", X"20", X"e7", X"fe", X"11", X"f9", X"ef", X"0e", X"fc", X"16", X"d9", X"18", X"39", X"0a", X"05", X"01",
                                                        X"e0", X"23", X"f1", X"ed", X"13", X"02", X"10", X"05", X"0f", X"03", X"2f", X"10", X"e6", X"05", X"e7", X"dc", X"01", X"e9", X"1a", X"ff", X"d0", X"fc", X"0a", X"13", X"01", X"20",
                                                        X"fd", X"01", X"f1", X"f7", X"fb", X"fd", X"d4", X"fa", X"09", X"10", X"e9", X"31", X"1a", X"05", X"eb", X"02", X"47", X"fa", X"11", X"ba", X"f4", X"c8", X"db", X"e7", X"1e", X"21",
                                                        X"f9", X"05", X"fc", X"20", X"e9", X"07", X"f6", X"e3", X"fd", X"3f", X"c8", X"d7", X"d1", X"0f", X"15", X"21", X"0b", X"00", X"1d", X"db", X"ed", X"db", X"f5", X"0d", X"e7", X"fb",
                                                        X"f4", X"de", X"e8", X"02", X"ed", X"0f", X"0a", X"00", X"09", X"c7", X"e1", X"36", X"f0", X"08", X"15", X"25", X"fe", X"3f", X"f1", X"21", X"e2", X"f1", X"fa", X"f6", X"d9", X"22",
                                                        X"e9", X"1b", X"18", X"32", X"1b", X"15", X"07", X"cf", X"36", X"06", X"f2", X"fc", X"02", X"f6", X"d3", X"2a", X"fb", X"ff", X"e3", X"15", X"1d", X"11", X"12", X"07", X"e9", X"13",
                                                        X"f7", X"f2", X"f4", X"ec", X"f8", X"ea", X"0f", X"0d", X"f8", X"19", X"01", X"c1", X"f3", X"18", X"e0", X"ee", X"f8", X"e7", X"fa", X"07", X"09", X"e6", X"eb", X"f3", X"01", X"04",
                                                        X"d7", X"04", X"f2", X"02", X"12", X"e8", X"1c", X"fd", X"f1", X"10", X"0c", X"0f", X"06", X"03", X"41", X"fb", X"f8", X"43", X"d4", X"f3", X"e0", X"db", X"2d", X"06", X"09", X"2c",
                                                        X"11", X"ea", X"f6", X"e8", X"23", X"08", X"de", X"17", X"dc", X"cc", X"df", X"f4", X"fc", X"06", X"1d", X"12", X"09", X"31", X"f8", X"1d", X"fe", X"07", X"d9", X"31", X"09", X"ce",
                                                        X"fb", X"e6", X"ec", X"07", X"2b", X"0b", X"17", X"d0", X"0f", X"02", X"d4", X"09", X"02", X"c9", X"1c", X"15", X"0f", X"09", X"fc", X"10", X"ec", X"e5", X"fb", X"32", X"e4", X"43",
                                                        X"23", X"1b", X"11", X"c1", X"ff", X"09", X"2c", X"20", X"f1", X"f3", X"0c", X"de", X"ff", X"29", X"d8", X"fb", X"e2", X"21", X"fd", X"1a", X"05", X"c4", X"f2", X"00", X"ef", X"ee",
                                                        X"2b", X"19", X"f1", X"e9", X"f4", X"21", X"04", X"11", X"f2", X"f0", X"db", X"2d", X"f2", X"0d", X"0b", X"07", X"fd", X"f7", X"05", X"e1", X"06", X"ed", X"ee", X"f6", X"dc", X"ed",
                                                        X"09", X"0a", X"eb", X"fa", X"19", X"0b", X"00", X"13", X"14", X"00", X"e5", X"13", X"41", X"f1", X"c2", X"12", X"f3", X"07", X"0e", X"0f", X"17", X"09", X"ec", X"12", X"fd", X"cf",
                                                        X"fd", X"f6", X"36", X"f6", X"11", X"f8", X"e5", X"fa", X"02", X"f1", X"22", X"21", X"e3", X"1c", X"1c", X"00", X"fa", X"f6", X"f1", X"05", X"ef", X"fc", X"03", X"27", X"e4", X"f1",
                                                        X"ef", X"08", X"19", X"ee", X"ce", X"cd", X"02", X"12", X"21", X"0a", X"f3", X"1e", X"04", X"02", X"fb", X"fb", X"fd", X"fa", X"39", X"fc", X"1b", X"fc", X"f4", X"ec", X"d6", X"2c",
                                                        X"15", X"cb", X"09", X"e3", X"e0", X"ff", X"ed", X"03", X"e9", X"0e", X"ff", X"2f", X"f5", X"2a", X"01", X"26", X"34", X"51", X"f8", X"03", X"05", X"de", X"eb", X"e6", X"f7", X"fd",
                                                        X"06", X"e9", X"ea", X"1b", X"e9", X"1b", X"2a", X"f9", X"fd", X"18", X"ff", X"15", X"e8", X"00", X"fa", X"11", X"fa", X"ed", X"0a", X"24", X"31", X"fe", X"12", X"d9", X"f6", X"cd",
                                                        X"e6", X"fe", X"ef", X"f2", X"d9", X"13", X"03", X"d3", X"07", X"eb", X"45", X"ea", X"06", X"e4", X"fa", X"e4", X"e2", X"01", X"29", X"1d", X"01", X"f1", X"f0", X"f1", X"e4", X"ed",
                                                        X"1b", X"f6", X"dc", X"15", X"e8", X"22", X"15", X"ec", X"26", X"09", X"d3", X"15", X"29", X"e8", X"e4", X"ff", X"47", X"02", X"10", X"e8", X"f3", X"fe", X"0a", X"00", X"f5", X"fe",
                                                        X"20", X"0e", X"0e", X"f6", X"ed", X"01", X"ff", X"05", X"db", X"e1", X"ff", X"fa", X"1b", X"03", X"05", X"0b", X"e0", X"ec", X"f5", X"31", X"0a", X"f2", X"e1", X"08", X"28", X"ec",
                                                        X"24", X"22", X"03", X"06", X"09", X"ff", X"18", X"ee", X"e6", X"c7", X"cf", X"3a", X"0c", X"22", X"16", X"da", X"1a", X"dd", X"27", X"18", X"ff", X"08", X"15", X"f8", X"03", X"05",
                                                        X"ea", X"10", X"d5", X"f9", X"e3", X"28", X"1a", X"eb", X"25", X"0c", X"dd", X"03", X"0a", X"f0", X"e9", X"fe", X"ed", X"17", X"15", X"e9", X"dc", X"48", X"03", X"39", X"e6", X"f8",
                                                        X"1d", X"06", X"f1", X"35", X"19", X"f1", X"03", X"03", X"fd", X"eb", X"e3", X"dc", X"e1", X"e3", X"de", X"de", X"28", X"09", X"0a", X"f7", X"14", X"04", X"dc", X"16", X"4c", X"0a",
                                                        X"15", X"ed", X"02", X"d2", X"cd", X"d6", X"07", X"27", X"ec", X"21", X"0c", X"0b", X"00", X"fb", X"fd", X"f4", X"f4", X"41", X"eb", X"14", X"fb", X"eb", X"02", X"0e", X"d7", X"08",
                                                        X"e6", X"ed", X"0b", X"00", X"e9", X"02", X"f9", X"3a", X"fb", X"fd", X"14", X"f1", X"f4", X"09", X"f5", X"f6", X"0c", X"04", X"ea", X"28", X"f4", X"36", X"f8", X"b6", X"03", X"19",
                                                        X"06", X"11", X"0d", X"fa", X"07", X"d7", X"fb", X"2a", X"07", X"08", X"d9", X"3b", X"46", X"bc", X"1f", X"0a", X"28", X"fb", X"f9", X"e0");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"e0";
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

