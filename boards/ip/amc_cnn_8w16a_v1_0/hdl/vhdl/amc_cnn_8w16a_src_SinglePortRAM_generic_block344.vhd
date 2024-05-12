-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block344.vhd
-- Created: 2023-08-07 19:04:39
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block344
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage111/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block344 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block344;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block344 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"fe", X"de", X"e8", X"a9", X"49", X"07", X"3f", X"26", X"04", X"26", X"e4", X"12", X"09", X"ce",
                                                        X"08", X"f3", X"19", X"fa", X"f7", X"fb", X"d0", X"ff", X"2a", X"ef", X"fd", X"f6", X"e9", X"f5", X"17", X"0b", X"05", X"e2", X"03", X"00", X"18", X"fd", X"01", X"e6", X"d0", X"e2",
                                                        X"03", X"20", X"e1", X"f7", X"02", X"00", X"dd", X"f4", X"0a", X"0d", X"13", X"f4", X"26", X"21", X"e9", X"b0", X"0b", X"09", X"de", X"f1", X"fe", X"e0", X"d6", X"f0", X"0e", X"11",
                                                        X"04", X"f8", X"e7", X"0a", X"f1", X"c3", X"1f", X"2a", X"f5", X"f3", X"00", X"15", X"d9", X"e7", X"1d", X"fe", X"25", X"09", X"fd", X"fe", X"06", X"ec", X"11", X"10", X"de", X"f2",
                                                        X"f7", X"18", X"fa", X"e1", X"ec", X"fa", X"07", X"2e", X"1f", X"09", X"f1", X"0d", X"14", X"01", X"e8", X"f2", X"00", X"0a", X"e1", X"de", X"31", X"00", X"08", X"e2", X"fc", X"0b",
                                                        X"d1", X"db", X"1b", X"20", X"fe", X"01", X"d2", X"f3", X"ff", X"ea", X"25", X"ed", X"1c", X"07", X"07", X"f6", X"e3", X"c5", X"16", X"02", X"f9", X"06", X"0d", X"dd", X"01", X"ea",
                                                        X"24", X"03", X"f9", X"e5", X"db", X"fa", X"f0", X"23", X"14", X"e7", X"fa", X"ff", X"dd", X"1d", X"f9", X"ef", X"1d", X"07", X"ef", X"0a", X"20", X"01", X"16", X"22", X"0c", X"ed",
                                                        X"e0", X"f8", X"dc", X"14", X"1a", X"f4", X"22", X"08", X"fe", X"ee", X"26", X"2f", X"eb", X"1f", X"16", X"ca", X"07", X"0a", X"00", X"f9", X"fe", X"f5", X"12", X"01", X"0b", X"06",
                                                        X"28", X"2c", X"ec", X"16", X"f5", X"c6", X"f1", X"e6", X"11", X"e6", X"fc", X"04", X"c5", X"09", X"10", X"ff", X"01", X"fe", X"23", X"33", X"f2", X"c7", X"e4", X"fe", X"cd", X"26",
                                                        X"1e", X"04", X"19", X"02", X"07", X"0a", X"0a", X"23", X"1d", X"fb", X"f0", X"33", X"0a", X"01", X"17", X"0f", X"39", X"0b", X"e6", X"fa", X"01", X"fd", X"fa", X"58", X"f4", X"e8",
                                                        X"ef", X"f9", X"fa", X"05", X"17", X"26", X"09", X"f0", X"d1", X"0b", X"ed", X"e4", X"3a", X"31", X"03", X"f7", X"f3", X"15", X"19", X"06", X"ed", X"e5", X"f3", X"f4", X"ec", X"06",
                                                        X"03", X"f5", X"d2", X"fc", X"f3", X"ff", X"0b", X"de", X"e4", X"fc", X"d9", X"0a", X"e9", X"e3", X"0f", X"02", X"ff", X"da", X"d3", X"13", X"f2", X"f6", X"12", X"12", X"e7", X"04",
                                                        X"fc", X"1f", X"22", X"f2", X"ea", X"f9", X"13", X"ea", X"f6", X"e7", X"dd", X"cf", X"12", X"10", X"fb", X"f4", X"08", X"05", X"f0", X"e2", X"00", X"f6", X"12", X"fc", X"27", X"19",
                                                        X"ed", X"e9", X"2e", X"e2", X"f6", X"fd", X"ff", X"f7", X"d8", X"f5", X"db", X"00", X"14", X"2b", X"fe", X"2b", X"dd", X"c6", X"0f", X"da", X"e6", X"f6", X"f9", X"33", X"e9", X"e0",
                                                        X"f7", X"f3", X"0d", X"1f", X"f1", X"02", X"02", X"f1", X"0e", X"e4", X"ff", X"d4", X"ef", X"19", X"d6", X"e3", X"14", X"0b", X"08", X"1c", X"11", X"e6", X"18", X"04", X"0d", X"f9",
                                                        X"fa", X"f7", X"02", X"10", X"f7", X"01", X"16", X"eb", X"08", X"0b", X"03", X"f7", X"f5", X"27", X"27", X"2d", X"06", X"f2", X"e9", X"db", X"e0", X"eb", X"d4", X"f1", X"0b", X"f3",
                                                        X"f5", X"01", X"e5", X"e1", X"03", X"14", X"12", X"e6", X"0d", X"f5", X"ed", X"01", X"4b", X"ef", X"fb", X"ea", X"0e", X"ee", X"17", X"05", X"0e", X"d2", X"e9", X"fb", X"12", X"19",
                                                        X"00", X"f8", X"35", X"08", X"ea", X"fb", X"f0", X"2b", X"24", X"02", X"f3", X"df", X"13", X"df", X"de", X"00", X"22", X"07", X"bc", X"09", X"1a", X"ee", X"32", X"0d", X"d3", X"f5",
                                                        X"f0", X"43", X"fd", X"fd", X"f1", X"d2", X"11", X"ff", X"df", X"02", X"0d", X"07", X"3c", X"1b", X"27", X"f3", X"f8", X"e7", X"dd", X"f9", X"0c", X"12", X"06", X"0f", X"f2", X"14",
                                                        X"05", X"f3", X"0a", X"e3", X"1e", X"3c", X"f9", X"23", X"fe", X"15", X"2f", X"01", X"21", X"fc", X"28", X"05", X"fa", X"0e", X"25", X"2d", X"06", X"d5", X"04", X"22", X"ef", X"fb",
                                                        X"ee", X"15", X"09", X"fe", X"0b", X"ff", X"e8", X"d9", X"e8", X"00", X"f6", X"13", X"ef", X"0b", X"04", X"e7", X"0d", X"fa", X"f5", X"f0", X"05", X"fe", X"f6", X"06", X"f3", X"06",
                                                        X"f8", X"cf", X"f5", X"24", X"e4", X"f1", X"0e", X"13", X"19", X"0a", X"db", X"02", X"f2", X"e5", X"34", X"00", X"27", X"d8", X"eb", X"3d", X"14", X"04", X"e6", X"dd", X"ea", X"e5",
                                                        X"d4", X"01", X"fa", X"eb", X"1a", X"11", X"f8", X"1f", X"fa", X"06", X"de", X"ef", X"f0", X"1e", X"ec", X"f4", X"fb", X"02", X"02", X"06", X"ed", X"06", X"e2", X"cc", X"08", X"e4",
                                                        X"01", X"06", X"e7", X"25", X"d4", X"d5", X"37", X"1d", X"0d", X"f0", X"0b", X"0b", X"05", X"b3", X"fa", X"39", X"de", X"0e", X"f6", X"12", X"0b", X"e7", X"3d", X"09", X"05", X"37",
                                                        X"47", X"dd", X"e2", X"db", X"2e", X"1f", X"0b", X"15", X"e7", X"30", X"e3", X"e0", X"16", X"00", X"1a", X"fe", X"fe", X"e6", X"10", X"1e", X"0c", X"fb", X"16", X"fd", X"df", X"fd",
                                                        X"df", X"e3", X"1c", X"ff", X"02", X"1e", X"f1", X"1b", X"e2", X"19", X"29", X"2f", X"ed", X"fc", X"13", X"10", X"d1", X"ef", X"37", X"fb", X"fe", X"0e", X"00", X"16", X"1b", X"f2",
                                                        X"11", X"1e", X"f7", X"02", X"eb", X"1f", X"e6", X"04", X"e9", X"ec", X"e5", X"03", X"d5", X"d9", X"e1", X"c2", X"0d", X"26", X"ee", X"f9", X"d5", X"e6", X"f8", X"f7", X"c3", X"04",
                                                        X"fc", X"f2", X"0b", X"f1", X"14", X"de", X"ff", X"30", X"eb", X"f3", X"04", X"10", X"eb", X"15", X"09", X"ed", X"08", X"e1", X"25", X"30", X"bf", X"27", X"fd", X"e4", X"fd", X"fd",
                                                        X"11", X"0b", X"30", X"f3", X"d4", X"08", X"0c", X"f4", X"22", X"ff", X"22", X"cb", X"fa", X"d5", X"ff", X"f3", X"eb", X"1f", X"fe", X"f0", X"b8", X"09", X"fd", X"1d", X"38", X"48",
                                                        X"22", X"19", X"fa", X"3e", X"01", X"f6", X"f6", X"de", X"00", X"02", X"f8", X"16", X"05", X"24", X"f9", X"1f", X"ec", X"fd", X"ee", X"4b", X"09", X"fd", X"17", X"ff", X"1a", X"11",
                                                        X"d1", X"ff", X"08", X"12", X"e4", X"03", X"01", X"e9", X"fb", X"1b", X"0d", X"f4", X"1a", X"05", X"27", X"10", X"34", X"fa", X"01", X"f3", X"25", X"06", X"19", X"04", X"fd", X"ed",
                                                        X"dc", X"fa", X"f1", X"f0", X"19", X"f1", X"da", X"f8", X"fa", X"d5", X"00", X"18", X"14", X"13", X"e4", X"db", X"ec", X"e9", X"00", X"ed", X"ef", X"de", X"3d", X"fe", X"0a", X"f9",
                                                        X"11", X"ec", X"14", X"f1", X"f7", X"e2", X"e5", X"00", X"07", X"12", X"ef", X"e2", X"23", X"11", X"f5", X"fd", X"dd", X"e9", X"02", X"1d", X"37", X"22", X"e9", X"f5", X"03", X"f2",
                                                        X"ef", X"f6", X"18", X"f6", X"17", X"13", X"db", X"23", X"e9", X"1a", X"0f", X"d6", X"03", X"14", X"f3", X"4f", X"e5", X"e5", X"e0", X"fe", X"33", X"f9", X"19", X"ee", X"21", X"c2",
                                                        X"1d", X"f6", X"05", X"04", X"fd", X"08", X"ef", X"ec", X"e1", X"ef", X"1a", X"25", X"25", X"25", X"14", X"c3", X"19", X"f9", X"d4", X"f2", X"04", X"f5", X"ee", X"e7", X"de", X"eb",
                                                        X"fb", X"0f", X"0a", X"f7", X"2e", X"20", X"fc", X"d5", X"fc", X"00", X"e6", X"52", X"e5", X"fa", X"e1", X"f2", X"fc", X"06", X"e9", X"15", X"d4", X"cf", X"19", X"26", X"02", X"f7",
                                                        X"01", X"e8", X"e5", X"01", X"2f", X"02", X"14", X"06", X"19", X"e2", X"0e", X"16", X"13", X"3d", X"e6", X"ee", X"f2", X"17", X"0c", X"e9", X"47", X"03", X"04", X"f0", X"ea", X"0c",
                                                        X"f6", X"f3", X"13", X"c2", X"e7", X"f9", X"09", X"13", X"00", X"0f", X"c2", X"04", X"f6", X"fc", X"e9", X"4f", X"e5", X"f1", X"05", X"d2", X"e6", X"e3", X"ca", X"2b", X"f6", X"13",
                                                        X"e2", X"f1", X"0b", X"05", X"2c", X"32", X"20", X"32", X"f5", X"eb", X"0e", X"e9", X"e4", X"e7", X"fe", X"19", X"13", X"04", X"fd", X"e8", X"2b", X"0e", X"fe", X"1a", X"00", X"c1",
                                                        X"db", X"fc", X"18", X"12", X"0b", X"fc", X"ff", X"ef", X"04", X"fd", X"41", X"0c", X"e7", X"e1", X"fd", X"27", X"f0", X"f6", X"d6", X"e3", X"03", X"16", X"3b", X"02", X"f5", X"09",
                                                        X"22", X"45", X"30", X"d1", X"ea", X"d3", X"ec", X"10", X"ec", X"e7", X"1b", X"1a", X"19", X"ef", X"f3", X"00", X"f1", X"20", X"30", X"0e", X"fd", X"05", X"0d", X"0b", X"12", X"eb",
                                                        X"26", X"ed", X"cf", X"03", X"04", X"f6", X"e2", X"28", X"1e", X"de", X"03", X"f0", X"fa", X"02", X"1b", X"19", X"fd", X"f8", X"14", X"ee", X"09", X"f6", X"e2", X"ee", X"27", X"07",
                                                        X"f9", X"0d", X"e0", X"06", X"09", X"f3", X"db", X"fa", X"39", X"fd", X"0a", X"09", X"11", X"0d", X"13", X"f8", X"fd", X"ca", X"f3", X"fb", X"f9", X"16", X"e3", X"f2", X"1c", X"08",
                                                        X"12", X"f0", X"ee", X"11", X"d1", X"1a", X"09", X"d4", X"07", X"03", X"db", X"ed", X"e0", X"e6", X"07", X"06", X"0f", X"1c", X"08", X"e1", X"10", X"c8", X"33", X"cd", X"d3", X"dc",
                                                        X"f6", X"3d", X"f5", X"ea", X"0b", X"fe", X"0d", X"0f", X"1c", X"2b", X"fb", X"fd", X"21", X"25", X"fa", X"e2", X"d1", X"fa", X"ce", X"ed", X"53", X"f6", X"06", X"00", X"09", X"dd",
                                                        X"f1", X"e4", X"11", X"44", X"10", X"ef", X"ee", X"2f", X"d8", X"f6", X"f9", X"f1", X"00", X"01", X"fa", X"02", X"06", X"cf", X"0d", X"e2", X"f2", X"f5", X"f8", X"32", X"d6", X"e2",
                                                        X"e2", X"f2", X"f9", X"19", X"05", X"05", X"06", X"c4", X"1f", X"2e", X"03", X"ee", X"02", X"f0", X"07", X"e4", X"2a", X"fc", X"18", X"15", X"ee", X"31", X"f8", X"2c", X"00", X"29",
                                                        X"ef", X"00", X"ef", X"ef", X"e7", X"0a", X"cf", X"fe", X"f6", X"d8", X"f2", X"fc", X"04", X"e6", X"05", X"e1", X"f1", X"f7", X"df", X"00", X"ef", X"0c", X"20", X"11", X"02", X"fb",
                                                        X"ee", X"3f", X"03", X"3c", X"07", X"bd", X"0f", X"fd", X"e7", X"f1", X"3d", X"fd", X"e7", X"fc", X"fa", X"f9", X"0f", X"2d", X"f4", X"35", X"0c", X"19", X"fc", X"f6", X"21", X"c4",
                                                        X"e8", X"1f", X"1d", X"02", X"16", X"05", X"33", X"13", X"e4", X"0b", X"f4", X"c2", X"f4", X"f3", X"e5", X"f6", X"2b", X"f5", X"bc", X"eb", X"16", X"01", X"2a", X"25", X"df", X"21",
                                                        X"0e", X"22", X"eb", X"fa", X"e6", X"23", X"13", X"06", X"ef", X"fb", X"05", X"08", X"1d", X"28", X"20", X"1b", X"fc", X"30", X"07", X"13", X"d5", X"f2", X"26", X"f7", X"d2", X"ef",
                                                        X"f1", X"e5", X"dc", X"1a", X"14", X"de", X"f6", X"47", X"01", X"fd", X"d9", X"cb", X"ec", X"12", X"fd", X"fd", X"ff", X"ef", X"19", X"3f", X"e4", X"03", X"fe", X"f4", X"dd", X"01",
                                                        X"db", X"0d", X"fc", X"db", X"24", X"fb", X"ff", X"e1", X"ed", X"ec", X"02", X"29", X"ed", X"ec", X"f5", X"ee", X"11", X"18", X"e4", X"fc", X"05", X"09", X"13", X"0d", X"30", X"eb",
                                                        X"df", X"f5", X"03", X"f4", X"00", X"f1", X"de", X"f5", X"de", X"f4", X"38", X"01", X"14", X"01", X"03", X"ec", X"fd", X"da", X"15", X"0d", X"01", X"f7", X"d5", X"25", X"f6", X"e4",
                                                        X"ed", X"fc", X"05", X"2c", X"f8", X"f9", X"15", X"1a", X"26", X"07", X"ed", X"fe", X"11", X"ea", X"f3", X"fa", X"d5", X"f6", X"0b", X"e0", X"1b", X"20", X"f1", X"ee", X"1b", X"05",
                                                        X"df", X"f3", X"fa", X"14", X"e7", X"f6", X"44", X"f7", X"10", X"06", X"f8", X"24", X"14", X"ca", X"06", X"e9", X"0b", X"e1", X"fc", X"34", X"e4", X"cb", X"35", X"e7", X"06", X"05",
                                                        X"ef", X"e4", X"05", X"31", X"0a", X"1e", X"f3", X"00", X"fe", X"0d", X"dd", X"01", X"30", X"fa", X"f0", X"14", X"05", X"f9", X"23", X"d1", X"ff", X"c4", X"f2", X"fb", X"18", X"e0",
                                                        X"04", X"f9", X"eb", X"f4", X"07", X"ef", X"0d", X"e5", X"0a", X"19", X"0f", X"1c", X"f9", X"ee", X"d9", X"03", X"11", X"01", X"fd", X"07", X"fa", X"10", X"e0", X"3b", X"0b", X"10",
                                                        X"00", X"31", X"fa", X"e1", X"d4", X"10", X"12", X"0a", X"f2", X"fd", X"fd", X"f8", X"f7", X"11", X"16", X"0c", X"fc", X"ce", X"e7", X"0c", X"19", X"22", X"09", X"09", X"c6", X"02",
                                                        X"fd", X"eb", X"0e", X"46", X"e1", X"e5", X"fa", X"18", X"f3", X"ff", X"1d", X"23", X"0a", X"03", X"c1", X"0f", X"04", X"32", X"3f", X"56", X"ee", X"fb", X"f0", X"d5", X"d6", X"10",
                                                        X"10", X"11", X"1a", X"09", X"0c", X"03", X"09", X"02", X"ee", X"20", X"07", X"f1", X"fb", X"13", X"ea", X"05", X"16", X"dd", X"07", X"ed", X"ef", X"00", X"ff", X"f1", X"16", X"10",
                                                        X"30", X"1d", X"f8", X"fb", X"1f", X"f4", X"f5", X"10", X"10", X"05", X"10", X"fe", X"ff", X"df", X"0d", X"e7", X"27", X"00", X"eb", X"08", X"06", X"10", X"1c", X"13", X"ea", X"f7",
                                                        X"4c", X"00", X"fb", X"f8", X"c9", X"10", X"05", X"27", X"19", X"e5", X"0c", X"09", X"09", X"15", X"e7", X"dd", X"42", X"fc", X"f9", X"db", X"0e", X"0c", X"f1", X"e9", X"f8", X"c9",
                                                        X"05", X"eb", X"02", X"1c", X"15", X"e6", X"43", X"ee", X"0f", X"fa", X"0e", X"0a", X"1c", X"cf", X"29", X"34", X"f9", X"e8", X"f0", X"e1", X"d6", X"e2", X"da", X"04", X"11", X"f2",
                                                        X"f8", X"0f", X"19", X"e7", X"15", X"ca", X"00", X"f5", X"07", X"02", X"e3", X"f3", X"ca", X"f9", X"11", X"1e", X"2e", X"d8", X"e2", X"c5", X"10", X"1f", X"ec", X"fb", X"f3", X"e5",
                                                        X"cf", X"de", X"4e", X"f7", X"0e", X"10", X"f1", X"cb", X"e0", X"ff", X"08", X"32", X"07", X"eb", X"da", X"f6", X"fc", X"e7", X"3a", X"f2", X"f8", X"1a", X"14", X"f0", X"fc", X"20",
                                                        X"19", X"06", X"1b", X"f0", X"de", X"fa", X"e1", X"f4", X"07", X"03", X"f1", X"17", X"fb", X"2c", X"de", X"1e", X"14", X"16", X"fa", X"f7", X"e0", X"22", X"fb", X"07", X"e4", X"fc",
                                                        X"f8", X"e7", X"ef", X"fc", X"f4", X"da", X"05", X"d4", X"05", X"00", X"04", X"d8", X"e2", X"fd", X"f1", X"08", X"08", X"f8", X"fc", X"ff", X"f0", X"06", X"e8", X"0e", X"e2", X"fb",
                                                        X"e4", X"01", X"0d", X"04", X"fd", X"0d", X"1d", X"fa", X"27", X"28", X"e0", X"d2", X"ee", X"0d", X"ed", X"ea", X"e0", X"0c", X"25", X"f9", X"01", X"06", X"03", X"11", X"06", X"25",
                                                        X"ed", X"de", X"f2", X"fd", X"01", X"05", X"03", X"c7", X"0e", X"0b", X"cc", X"f7", X"ff", X"08", X"48", X"18", X"26", X"0f", X"ed", X"fb", X"f5", X"0f", X"d1", X"12", X"31", X"12",
                                                        X"e7", X"f1", X"f6", X"17", X"35", X"f0", X"27", X"2f", X"14", X"0e", X"fe", X"11", X"fc", X"e2", X"21", X"0a", X"31", X"05", X"f1", X"f7", X"10", X"f4", X"21", X"0a", X"ed", X"f2",
                                                        X"f0", X"f2", X"10", X"fb", X"07", X"fe", X"ee", X"06", X"05", X"08", X"ff", X"36", X"00", X"e9", X"14", X"00", X"e7", X"fd", X"20", X"17", X"2f", X"ed", X"20", X"fc", X"ef", X"01",
                                                        X"f8", X"13", X"ee", X"d6", X"f2", X"d3", X"01", X"04", X"18", X"f6", X"de", X"dd", X"3d", X"fa", X"0d", X"08", X"f2", X"e8", X"f5", X"01", X"12", X"1e", X"ea", X"02", X"e9", X"d3",
                                                        X"e7", X"f2", X"dd", X"f9", X"14", X"f2", X"09", X"f8", X"0d", X"11", X"f9", X"bb", X"dd", X"03", X"d5", X"0c", X"04", X"e5", X"e7", X"09", X"13", X"07", X"1f", X"16", X"f6", X"fb",
                                                        X"17", X"3b", X"e9", X"ff", X"db", X"fe", X"d3", X"ed", X"21", X"05", X"10", X"10", X"fb", X"d1", X"fc", X"dd", X"1d", X"42", X"08", X"ef", X"fd", X"e5", X"16", X"f0", X"36", X"0c",
                                                        X"15", X"2b", X"f5", X"e0", X"00", X"e8", X"1b", X"db", X"d6", X"ee", X"d6", X"fe", X"f2", X"f4", X"e2", X"f1", X"04", X"0a", X"f1", X"ed", X"15", X"d2", X"0c", X"f9", X"fe", X"ea",
                                                        X"1e", X"37", X"e4", X"e2", X"f4", X"fa", X"fb", X"fe", X"16", X"10", X"da", X"e5", X"07", X"22", X"05", X"f2", X"f6", X"0e", X"ec", X"ef");
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

