-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block445.vhd
-- Created: 2023-06-15 16:03:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block445
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage89/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block445 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block445;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block445 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"20", X"e6", X"e3", X"f3", X"22", X"21", X"f8", X"05", X"bb", X"fc", X"0d", X"ff", X"04",
                                                        X"30", X"24", X"f8", X"f4", X"14", X"1a", X"e7", X"26", X"e9", X"fe", X"10", X"0e", X"f7", X"0a", X"03", X"f3", X"0a", X"e9", X"f4", X"ff", X"f2", X"ea", X"fc", X"fb", X"05", X"f0",
                                                        X"02", X"e5", X"f5", X"02", X"0e", X"07", X"c6", X"0d", X"e0", X"db", X"0e", X"2b", X"fe", X"c4", X"0f", X"ea", X"16", X"19", X"ec", X"09", X"eb", X"0d", X"ea", X"06", X"f5", X"13",
                                                        X"f8", X"e4", X"e6", X"d4", X"f2", X"fa", X"04", X"2c", X"f2", X"02", X"00", X"07", X"ed", X"09", X"07", X"03", X"33", X"0d", X"02", X"f7", X"0e", X"0c", X"dd", X"33", X"ff", X"1e",
                                                        X"e4", X"ee", X"f5", X"11", X"f7", X"ff", X"ff", X"17", X"fb", X"1b", X"ef", X"ff", X"ed", X"1b", X"02", X"fa", X"f9", X"ef", X"3b", X"08", X"ea", X"0a", X"0f", X"10", X"17", X"2d",
                                                        X"fd", X"05", X"f1", X"d3", X"f0", X"d8", X"f3", X"f7", X"37", X"08", X"f9", X"0d", X"e9", X"08", X"f2", X"44", X"f5", X"13", X"09", X"db", X"fb", X"db", X"e4", X"f1", X"1f", X"1b",
                                                        X"0c", X"0b", X"0c", X"e6", X"f1", X"18", X"e1", X"02", X"10", X"3e", X"eb", X"18", X"0a", X"f9", X"f3", X"12", X"f0", X"fe", X"f8", X"2e", X"f8", X"11", X"d6", X"ee", X"0c", X"12",
                                                        X"ec", X"02", X"02", X"0f", X"cf", X"f1", X"dc", X"e5", X"fe", X"f6", X"13", X"fe", X"14", X"fd", X"fd", X"d3", X"00", X"fa", X"13", X"04", X"f0", X"04", X"18", X"06", X"eb", X"19",
                                                        X"19", X"c7", X"13", X"fd", X"e6", X"06", X"ed", X"d9", X"11", X"fa", X"d9", X"e9", X"fb", X"00", X"f0", X"26", X"f7", X"1d", X"22", X"0d", X"e7", X"d9", X"ea", X"0e", X"fa", X"ff",
                                                        X"f9", X"ed", X"0d", X"0e", X"fa", X"ff", X"04", X"fa", X"14", X"0b", X"fc", X"0b", X"fc", X"da", X"08", X"fd", X"0d", X"fd", X"1d", X"2c", X"ef", X"0f", X"09", X"26", X"e9", X"08",
                                                        X"12", X"25", X"f1", X"e4", X"0a", X"ee", X"05", X"0e", X"24", X"fe", X"eb", X"0e", X"f4", X"18", X"18", X"0c", X"f2", X"d9", X"01", X"fc", X"f6", X"e0", X"34", X"1e", X"f0", X"f2",
                                                        X"02", X"fe", X"f9", X"05", X"da", X"05", X"14", X"d4", X"fe", X"ee", X"f8", X"f7", X"29", X"f3", X"df", X"07", X"fe", X"20", X"0b", X"f4", X"14", X"fb", X"f1", X"e7", X"f6", X"fe",
                                                        X"fe", X"fd", X"0c", X"ea", X"fe", X"f0", X"d3", X"27", X"f2", X"d2", X"dd", X"fd", X"18", X"fc", X"01", X"ff", X"f8", X"07", X"f2", X"f7", X"ee", X"de", X"ed", X"1f", X"02", X"d8",
                                                        X"0d", X"f6", X"08", X"2f", X"f2", X"ea", X"f1", X"0a", X"c9", X"02", X"ff", X"08", X"e1", X"e1", X"fc", X"e9", X"39", X"fb", X"fb", X"32", X"ff", X"0a", X"ea", X"0d", X"26", X"0c",
                                                        X"ff", X"e4", X"fd", X"fe", X"fb", X"f1", X"e8", X"fd", X"f1", X"26", X"12", X"ed", X"f0", X"0b", X"32", X"13", X"1b", X"11", X"0d", X"11", X"fe", X"30", X"db", X"22", X"f1", X"10",
                                                        X"f4", X"f1", X"e1", X"f9", X"ff", X"f7", X"04", X"25", X"01", X"fb", X"04", X"24", X"08", X"0f", X"15", X"02", X"fd", X"13", X"ea", X"f8", X"50", X"0c", X"fc", X"11", X"f9", X"dd",
                                                        X"ff", X"2b", X"eb", X"09", X"0c", X"25", X"02", X"c8", X"10", X"01", X"04", X"14", X"e4", X"fe", X"e5", X"31", X"f8", X"ea", X"e0", X"fd", X"f6", X"14", X"d5", X"ef", X"00", X"0b",
                                                        X"ef", X"fa", X"0b", X"ea", X"07", X"1e", X"14", X"0a", X"fe", X"f4", X"ef", X"0c", X"f3", X"f5", X"f2", X"0e", X"e1", X"d7", X"ed", X"e1", X"f5", X"f2", X"00", X"da", X"13", X"08",
                                                        X"f5", X"34", X"07", X"f8", X"0d", X"09", X"cb", X"fd", X"d7", X"0a", X"e5", X"32", X"1e", X"02", X"13", X"03", X"05", X"21", X"03", X"ed", X"16", X"ef", X"ea", X"f9", X"fe", X"05",
                                                        X"fc", X"0a", X"eb", X"23", X"16", X"f4", X"0c", X"e3", X"e2", X"07", X"fb", X"02", X"ed", X"03", X"03", X"24", X"08", X"ec", X"02", X"21", X"07", X"1b", X"e9", X"29", X"0e", X"f9",
                                                        X"0f", X"ec", X"22", X"f5", X"0d", X"15", X"02", X"c6", X"12", X"2a", X"f8", X"1a", X"ea", X"ed", X"06", X"14", X"1c", X"11", X"10", X"24", X"15", X"fd", X"13", X"ea", X"fe", X"22",
                                                        X"0b", X"03", X"e7", X"35", X"0c", X"fe", X"07", X"ff", X"0b", X"1b", X"0a", X"f2", X"f0", X"f5", X"f6", X"26", X"12", X"d8", X"f7", X"f7", X"e9", X"ed", X"fb", X"f9", X"25", X"ef",
                                                        X"e5", X"dc", X"f9", X"36", X"fb", X"eb", X"15", X"eb", X"00", X"e2", X"f4", X"e3", X"07", X"0b", X"de", X"e8", X"e1", X"03", X"ed", X"13", X"02", X"cd", X"1a", X"0c", X"13", X"f1",
                                                        X"f9", X"15", X"ea", X"f8", X"fa", X"f2", X"fe", X"e3", X"d2", X"28", X"f7", X"d9", X"22", X"05", X"f6", X"30", X"f1", X"0a", X"f2", X"08", X"c6", X"0c", X"03", X"11", X"dd", X"e2",
                                                        X"fc", X"e1", X"2b", X"0e", X"f2", X"db", X"f9", X"02", X"07", X"0a", X"1f", X"eb", X"04", X"e7", X"f8", X"c7", X"06", X"13", X"0e", X"fc", X"fb", X"09", X"0b", X"ce", X"11", X"fb",
                                                        X"1e", X"07", X"07", X"0e", X"fa", X"d2", X"e6", X"33", X"1b", X"10", X"ef", X"13", X"f9", X"0e", X"fa", X"f7", X"0e", X"23", X"1c", X"0b", X"05", X"04", X"dd", X"23", X"e7", X"0f",
                                                        X"15", X"1b", X"de", X"f6", X"ed", X"fd", X"09", X"25", X"17", X"0a", X"e2", X"1e", X"fb", X"38", X"df", X"fc", X"0e", X"bf", X"15", X"fc", X"f5", X"04", X"0d", X"0d", X"f5", X"12",
                                                        X"02", X"1a", X"ed", X"db", X"d0", X"f6", X"ee", X"dd", X"00", X"e2", X"07", X"fe", X"f8", X"fb", X"de", X"e5", X"d5", X"19", X"01", X"d4", X"ff", X"f5", X"09", X"d1", X"ea", X"e0",
                                                        X"fc", X"f9", X"e2", X"e5", X"dd", X"e1", X"ec", X"30", X"eb", X"01", X"f5", X"f9", X"fc", X"45", X"ed", X"31", X"ec", X"03", X"df", X"ec", X"fb", X"e8", X"10", X"db", X"f6", X"02",
                                                        X"1c", X"f9", X"0a", X"f8", X"f7", X"e1", X"1d", X"f9", X"18", X"e3", X"10", X"f9", X"0b", X"da", X"0e", X"22", X"f7", X"00", X"e1", X"05", X"ee", X"f1", X"e5", X"01", X"0b", X"00",
                                                        X"0e", X"27", X"e3", X"fa", X"10", X"1c", X"0d", X"01", X"f1", X"02", X"e6", X"14", X"f4", X"fa", X"19", X"fe", X"04", X"01", X"ec", X"1f", X"03", X"4e", X"e5", X"0a", X"f3", X"24",
                                                        X"1b", X"0e", X"e6", X"fa", X"18", X"17", X"ee", X"19", X"e3", X"20", X"f2", X"21", X"2c", X"00", X"e8", X"cb", X"fc", X"fc", X"eb", X"f8", X"28", X"00", X"e6", X"f2", X"e5", X"e0",
                                                        X"fa", X"ea", X"dc", X"fa", X"f7", X"32", X"14", X"10", X"08", X"00", X"0c", X"0a", X"e4", X"dd", X"01", X"07", X"fa", X"c5", X"e1", X"fc", X"fb", X"3b", X"02", X"20", X"0a", X"f9",
                                                        X"04", X"ff", X"03", X"0b", X"07", X"2e", X"04", X"e3", X"e8", X"fc", X"03", X"de", X"f6", X"12", X"0b", X"04", X"d4", X"10", X"fc", X"dd", X"eb", X"ed", X"0b", X"ea", X"34", X"fc",
                                                        X"f0", X"da", X"f0", X"1a", X"ee", X"f1", X"e9", X"fc", X"f4", X"18", X"15", X"f5", X"ed", X"fd", X"24", X"07", X"fd", X"49", X"03", X"fa", X"06", X"f5", X"1c", X"f9", X"04", X"fb",
                                                        X"15", X"14", X"fe", X"20", X"e5", X"17", X"fb", X"f3", X"09", X"05", X"fc", X"fd", X"3b", X"0f", X"2a", X"0c", X"f7", X"e1", X"fd", X"37", X"1b", X"1d", X"00", X"03", X"fb", X"cc",
                                                        X"19", X"03", X"0b", X"09", X"ed", X"0c", X"fb", X"02", X"fa", X"15", X"ee", X"13", X"f7", X"15", X"0a", X"fe", X"eb", X"06", X"13", X"20", X"f7", X"09", X"f0", X"27", X"01", X"1c",
                                                        X"f9", X"04", X"10", X"e3", X"0e", X"db", X"ed", X"13", X"e7", X"f8", X"ec", X"f9", X"02", X"25", X"07", X"f8", X"ec", X"fe", X"19", X"ea", X"01", X"2c", X"11", X"fd", X"f2", X"f6",
                                                        X"fa", X"e8", X"fd", X"fc", X"f9", X"db", X"20", X"f4", X"1f", X"22", X"e1", X"d8", X"1e", X"0e", X"d1", X"02", X"e6", X"ee", X"08", X"d6", X"fd", X"e0", X"e3", X"f3", X"10", X"e6",
                                                        X"e7", X"09", X"02", X"fa", X"dc", X"f1", X"de", X"f8", X"ea", X"10", X"ff", X"2a", X"14", X"12", X"ef", X"fc", X"ee", X"20", X"fa", X"fc", X"e8", X"ee", X"11", X"11", X"f9", X"02",
                                                        X"f0", X"2f", X"25", X"14", X"0c", X"c1", X"01", X"11", X"03", X"14", X"23", X"0c", X"fa", X"f7", X"ef", X"e5", X"fd", X"2c", X"2b", X"0d", X"f0", X"e0", X"eb", X"c9", X"e8", X"fe",
                                                        X"28", X"04", X"e5", X"ff", X"e8", X"2a", X"00", X"0a", X"1e", X"13", X"f7", X"19", X"01", X"ec", X"fc", X"ec", X"31", X"1f", X"fb", X"0e", X"e3", X"f4", X"f2", X"14", X"cc", X"fc",
                                                        X"03", X"01", X"fc", X"2b", X"fc", X"02", X"14", X"0c", X"11", X"e8", X"f3", X"d4", X"fc", X"e6", X"09", X"fa", X"fe", X"dc", X"06", X"21", X"ee", X"06", X"de", X"dc", X"f9", X"02",
                                                        X"f1", X"dd", X"fc", X"e4", X"1d", X"f7", X"01", X"d1", X"0e", X"11", X"09", X"f8", X"f4", X"f2", X"fc", X"04", X"f1", X"20", X"e6", X"de", X"16", X"e8", X"f6", X"1a", X"f0", X"01",
                                                        X"ff", X"11", X"d4", X"fa", X"06", X"04", X"15", X"ec", X"fe", X"ee", X"f5", X"fc", X"f9", X"27", X"f7", X"ef", X"08", X"ef", X"f7", X"29", X"00", X"0b", X"e2", X"ed", X"ea", X"fd",
                                                        X"fe", X"15", X"fb", X"01", X"05", X"08", X"02", X"fa", X"23", X"1a", X"00", X"05", X"1f", X"fa", X"f0", X"29", X"2f", X"0f", X"fa", X"ec", X"fb", X"d3", X"04", X"10", X"2a", X"0a",
                                                        X"fd", X"09", X"f0", X"d2", X"f9", X"48", X"f5", X"fe", X"0b", X"00", X"03", X"ed", X"fd", X"0d", X"2b", X"1a", X"09", X"ed", X"f6", X"00", X"f7", X"e9", X"ea", X"09", X"04", X"27",
                                                        X"e1", X"ed", X"19", X"07", X"fb", X"03", X"e9", X"07", X"07", X"28", X"01", X"17", X"e5", X"ee", X"1d", X"f9", X"ec", X"20", X"f2", X"ee", X"03", X"ff", X"09", X"ef", X"d0", X"f8",
                                                        X"0e", X"f1", X"00", X"01", X"e2", X"ef", X"f1", X"00", X"f1", X"e5", X"b0", X"fe", X"f1", X"f4", X"fa", X"fe", X"f9", X"e6", X"07", X"f4", X"24", X"43", X"01", X"1a", X"15", X"01",
                                                        X"e9", X"e5", X"e2", X"fb", X"ef", X"18", X"f6", X"03", X"1f", X"12", X"fd", X"e2", X"ea", X"de", X"04", X"f2", X"f2", X"f4", X"0e", X"00", X"02", X"db", X"0d", X"26", X"e4", X"e9",
                                                        X"ff", X"f6", X"e9", X"04", X"1c", X"13", X"1e", X"22", X"ea", X"10", X"07", X"f9", X"e6", X"32", X"3f", X"fc", X"ed", X"e0", X"02", X"df", X"02", X"04", X"0a", X"10", X"0a", X"fa",
                                                        X"f0", X"3d", X"f9", X"33", X"f8", X"17", X"f2", X"dc", X"fc", X"ed", X"f5", X"02", X"43", X"14", X"ed", X"e2", X"18", X"d8", X"f8", X"fa", X"e6", X"ff", X"0c", X"3f", X"fa", X"f8",
                                                        X"00", X"f0", X"0f", X"05", X"f4", X"eb", X"e9", X"20", X"03", X"fd", X"22", X"e9", X"0e", X"08", X"08", X"03", X"f6", X"fe", X"0b", X"13", X"f0", X"e4", X"db", X"25", X"f4", X"d8",
                                                        X"d8", X"f7", X"09", X"19", X"07", X"f7", X"05", X"f3", X"de", X"fd", X"e5", X"ed", X"05", X"db", X"01", X"e5", X"0f", X"f9", X"06", X"cb", X"f1", X"06", X"f9", X"00", X"09", X"fc",
                                                        X"04", X"02", X"19", X"11", X"e3", X"e3", X"c8", X"f0", X"00", X"e2", X"dd", X"f0", X"13", X"02", X"f1", X"10", X"f0", X"05", X"fa", X"ed", X"fe", X"fc", X"2b", X"00", X"f6", X"e0",
                                                        X"fd", X"1d", X"fb", X"fe", X"2c", X"f4", X"fc", X"fc", X"ed", X"00", X"fc", X"45", X"28", X"f9", X"f4", X"e4", X"f4", X"1a", X"f0", X"05", X"12", X"fd", X"0c", X"ff", X"ef", X"16",
                                                        X"f9", X"36", X"e7", X"16", X"08", X"e4", X"01", X"cd", X"fc", X"05", X"0c", X"13", X"e7", X"0e", X"f4", X"1c", X"09", X"11", X"dd", X"12", X"00", X"da", X"f8", X"e9", X"fc", X"fa",
                                                        X"35", X"04", X"d4", X"e5", X"01", X"16", X"dc", X"12", X"03", X"09", X"02", X"ea", X"e6", X"03", X"13", X"04", X"02", X"1d", X"06", X"f5", X"e5", X"21", X"fc", X"d7", X"09", X"04",
                                                        X"f2", X"28", X"ee", X"32", X"12", X"03", X"f9", X"0c", X"d5", X"ea", X"fe", X"26", X"fd", X"fd", X"e5", X"f7", X"1c", X"fc", X"fd", X"c8", X"0d", X"f6", X"d5", X"0b", X"fa", X"ff",
                                                        X"f4", X"f5", X"18", X"d6", X"cd", X"04", X"f5", X"fe", X"06", X"0d", X"f5", X"e7", X"d2", X"fc", X"24", X"f6", X"e3", X"1b", X"0f", X"f2", X"18", X"ff", X"fc", X"24", X"ef", X"fd",
                                                        X"11", X"01", X"e6", X"f8", X"00", X"fd", X"ee", X"14", X"08", X"35", X"17", X"08", X"13", X"1d", X"f2", X"ef", X"e6", X"fe", X"27", X"f8", X"fc", X"11", X"01", X"0d", X"04", X"16",
                                                        X"f0", X"17", X"ef", X"f3", X"13", X"10", X"fc", X"03", X"22", X"04", X"ee", X"ee", X"d7", X"dc", X"f2", X"34", X"20", X"10", X"f9", X"02", X"fb", X"dd", X"f1", X"f9", X"21", X"e8",
                                                        X"0a", X"f2", X"04", X"1a", X"eb", X"fe", X"0b", X"09", X"12", X"e0", X"f5", X"0f", X"02", X"fe", X"1f", X"19", X"e9", X"f9", X"0e", X"12", X"f2", X"ef", X"04", X"f3", X"e8", X"37",
                                                        X"fa", X"f4", X"f1", X"03", X"d4", X"e9", X"fc", X"fd", X"e2", X"f9", X"e7", X"e2", X"ee", X"03", X"f2", X"d8", X"03", X"0a", X"07", X"f5", X"ea", X"ef", X"ee", X"d1", X"04", X"fa",
                                                        X"00", X"d5", X"1d", X"eb", X"04", X"32", X"f6", X"f9", X"05", X"fb", X"01", X"29", X"0d", X"00", X"fe", X"02", X"fb", X"03", X"e0", X"f7", X"f5", X"d0", X"04", X"fe", X"10", X"fa",
                                                        X"22", X"fa", X"ff", X"fc", X"e9", X"f1", X"f7", X"16", X"f6", X"0d", X"f1", X"22", X"ee", X"fc", X"0b", X"02", X"30", X"16", X"15", X"20", X"f4", X"1a", X"f7", X"2e", X"2b", X"f8",
                                                        X"0c", X"d3", X"f1", X"e2", X"0c", X"03", X"37", X"19", X"11", X"f1", X"f0", X"e4", X"02", X"1c", X"df", X"1a", X"1c", X"1e", X"f8", X"d7", X"ee", X"0e", X"1f", X"fb", X"03", X"06",
                                                        X"f9", X"16", X"fa", X"0c", X"fe", X"0d", X"06", X"14", X"0a", X"0a", X"02", X"f4", X"f8", X"f4", X"0f", X"ed", X"f5", X"fd", X"f5", X"e9", X"e6", X"f0", X"00", X"f2", X"f6", X"0b",
                                                        X"0f", X"08", X"e7", X"ea", X"d0", X"e7", X"fc", X"1c", X"06", X"d0", X"1c", X"f0", X"e6", X"e9", X"f0", X"e4", X"19", X"f6", X"e4", X"e2", X"0c", X"fb", X"eb", X"0e", X"05", X"f4",
                                                        X"ed", X"f7", X"fd", X"d3", X"cf", X"f8", X"1b", X"01", X"f2", X"04", X"ee", X"f5", X"f0", X"1f", X"0d", X"fd", X"0d", X"0c", X"21", X"05", X"ed", X"03", X"1c", X"08", X"0a", X"ea",
                                                        X"f1", X"02", X"17", X"db", X"fc", X"24", X"f0", X"f8", X"20", X"43", X"f7", X"ed", X"f9", X"e6", X"11", X"f0", X"03", X"1f", X"f1", X"ec", X"05", X"11", X"21", X"02", X"18", X"d7",
                                                        X"ed", X"d4", X"18", X"e9", X"42", X"07", X"1e", X"f4", X"fa", X"26", X"17", X"2c", X"2c", X"05", X"07", X"d4", X"11", X"1f", X"fb", X"00", X"2a", X"06", X"02", X"09", X"f7", X"d7",
                                                        X"0a", X"07", X"dc", X"09", X"f8", X"d1", X"07", X"e3", X"07", X"05", X"20", X"00", X"e8", X"ec", X"e0", X"1f", X"0c", X"04", X"26", X"f1", X"f6", X"03", X"ec", X"e7", X"0a", X"15",
                                                        X"0d", X"fc", X"e8", X"dc", X"f8", X"2e", X"0c", X"cc", X"c7", X"f5", X"16", X"de", X"ed", X"09", X"0f", X"11", X"06", X"04", X"ef", X"e1", X"fc", X"dc", X"07", X"cc", X"f3", X"e4",
                                                        X"fe", X"f7", X"fa", X"2b", X"f4", X"10", X"f5", X"f5", X"e9", X"f5", X"e2", X"07", X"ee", X"00", X"3f", X"f8", X"fd", X"0b", X"f8", X"14", X"f5", X"07", X"ec", X"f1", X"f1", X"0f",
                                                        X"e6", X"e7", X"11", X"ff", X"21", X"00", X"06", X"ec", X"03", X"0c", X"12", X"f9", X"1f", X"1d", X"f4", X"17", X"eb", X"df", X"fa", X"29", X"06", X"fc", X"f1", X"42", X"00", X"1b",
                                                        X"1a", X"02", X"1e", X"0e", X"fd", X"14", X"e9", X"c4", X"10", X"5a", X"ee", X"10", X"14", X"2c", X"ef", X"08", X"1d", X"f9", X"0c", X"ef");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ef";
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

