-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block442.vhd
-- Created: 2023-06-15 16:03:11
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block442
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage86/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block442 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block442;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block442 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"cc", X"f1", X"12", X"3a", X"26", X"06", X"37", X"fb", X"26", X"13", X"fe", X"25", X"e8", X"02",
                                                        X"1a", X"f3", X"e4", X"f9", X"0f", X"f7", X"09", X"0b", X"41", X"ed", X"ee", X"ca", X"da", X"2b", X"09", X"0b", X"1c", X"ea", X"fa", X"e1", X"0a", X"24", X"11", X"c5", X"e2", X"d7",
                                                        X"2a", X"06", X"eb", X"0e", X"16", X"f8", X"e5", X"04", X"e7", X"0a", X"00", X"0b", X"11", X"dd", X"f4", X"de", X"f5", X"2c", X"d1", X"05", X"15", X"f1", X"16", X"d5", X"04", X"16",
                                                        X"28", X"23", X"0c", X"11", X"2f", X"d8", X"f1", X"10", X"fd", X"1e", X"ef", X"01", X"eb", X"11", X"e8", X"d6", X"28", X"25", X"2e", X"d6", X"10", X"d7", X"33", X"02", X"ff", X"3b",
                                                        X"d9", X"25", X"32", X"08", X"f7", X"02", X"f9", X"48", X"15", X"cb", X"d6", X"e4", X"fe", X"09", X"f6", X"f6", X"07", X"10", X"20", X"ff", X"e2", X"f3", X"18", X"4e", X"27", X"fb",
                                                        X"ef", X"cb", X"07", X"d8", X"eb", X"46", X"23", X"03", X"fa", X"0f", X"e1", X"0e", X"e0", X"0d", X"f6", X"f2", X"e3", X"e7", X"01", X"3f", X"0c", X"13", X"10", X"0a", X"14", X"fd",
                                                        X"e6", X"ec", X"0f", X"04", X"08", X"e8", X"44", X"df", X"3f", X"2c", X"06", X"07", X"17", X"e9", X"0d", X"f3", X"1a", X"eb", X"e5", X"fb", X"ee", X"c8", X"e0", X"ed", X"18", X"1d",
                                                        X"03", X"04", X"e7", X"fc", X"26", X"05", X"02", X"f4", X"ff", X"4d", X"0b", X"cd", X"e3", X"f3", X"28", X"06", X"f5", X"21", X"d9", X"fb", X"d6", X"0e", X"ef", X"ee", X"20", X"18",
                                                        X"0c", X"ca", X"05", X"e6", X"fd", X"1f", X"e5", X"13", X"24", X"f2", X"f7", X"13", X"0a", X"ea", X"06", X"e8", X"10", X"c6", X"33", X"de", X"2a", X"12", X"ec", X"ff", X"09", X"ed",
                                                        X"17", X"ee", X"fc", X"24", X"2c", X"22", X"1f", X"d2", X"e1", X"ed", X"1a", X"e1", X"14", X"00", X"00", X"04", X"01", X"f5", X"0f", X"e5", X"13", X"fe", X"06", X"e0", X"33", X"d9",
                                                        X"f8", X"da", X"fc", X"fe", X"1a", X"f2", X"0a", X"e3", X"0e", X"f3", X"fb", X"31", X"03", X"dd", X"ff", X"ef", X"0b", X"cc", X"f4", X"f2", X"e2", X"10", X"09", X"f1", X"f2", X"06",
                                                        X"fa", X"44", X"05", X"d1", X"3c", X"e6", X"f3", X"02", X"f9", X"fa", X"ff", X"ff", X"2e", X"0b", X"fe", X"01", X"f7", X"0f", X"0b", X"d2", X"f8", X"fe", X"0c", X"ec", X"08", X"34",
                                                        X"23", X"13", X"ef", X"f2", X"1a", X"e8", X"2f", X"1a", X"06", X"02", X"ff", X"e8", X"35", X"d0", X"ff", X"d7", X"f6", X"ed", X"17", X"1b", X"ec", X"eb", X"ef", X"5a", X"0f", X"dc",
                                                        X"ed", X"d5", X"09", X"b3", X"03", X"06", X"e2", X"01", X"dd", X"f0", X"0d", X"f9", X"0d", X"ec", X"17", X"ef", X"35", X"fa", X"12", X"07", X"e6", X"32", X"26", X"ec", X"e4", X"0d",
                                                        X"22", X"02", X"10", X"ea", X"de", X"cf", X"36", X"ea", X"03", X"c7", X"07", X"32", X"e9", X"03", X"ef", X"dd", X"02", X"06", X"10", X"0d", X"0b", X"e1", X"21", X"f1", X"df", X"e6",
                                                        X"ee", X"0a", X"fd", X"01", X"13", X"0c", X"09", X"cc", X"e8", X"42", X"0a", X"00", X"2a", X"d7", X"1f", X"1a", X"e2", X"2d", X"e4", X"16", X"dd", X"f8", X"ed", X"d6", X"d0", X"e4",
                                                        X"09", X"09", X"22", X"f3", X"f1", X"17", X"ff", X"2f", X"f3", X"02", X"1b", X"01", X"12", X"e8", X"fc", X"1f", X"0e", X"d2", X"0c", X"d0", X"ee", X"df", X"04", X"f3", X"f5", X"12",
                                                        X"0a", X"e2", X"05", X"f8", X"fc", X"ea", X"ff", X"00", X"34", X"eb", X"28", X"d0", X"15", X"d7", X"d9", X"11", X"e1", X"01", X"f5", X"d9", X"f3", X"0c", X"f1", X"08", X"30", X"d9",
                                                        X"19", X"ee", X"16", X"41", X"e5", X"f4", X"f8", X"ee", X"0a", X"ea", X"08", X"0b", X"f1", X"13", X"e7", X"e4", X"e7", X"00", X"fb", X"15", X"e9", X"fd", X"f3", X"fd", X"e3", X"ff",
                                                        X"21", X"18", X"ee", X"ce", X"d4", X"e5", X"26", X"0f", X"0b", X"39", X"d3", X"04", X"f2", X"05", X"f0", X"ec", X"08", X"f6", X"0b", X"12", X"11", X"c9", X"2e", X"32", X"07", X"e5",
                                                        X"0b", X"ea", X"1c", X"07", X"1d", X"f6", X"10", X"42", X"00", X"cd", X"08", X"d4", X"fa", X"da", X"0b", X"31", X"13", X"1c", X"23", X"05", X"d3", X"f6", X"f0", X"12", X"15", X"0b",
                                                        X"ea", X"d5", X"2a", X"f4", X"f8", X"52", X"f7", X"16", X"fe", X"1f", X"fc", X"ec", X"03", X"e9", X"e3", X"e8", X"e0", X"e1", X"1c", X"32", X"f6", X"12", X"fa", X"f7", X"1d", X"fe",
                                                        X"ff", X"dc", X"00", X"31", X"06", X"e2", X"31", X"f6", X"eb", X"c1", X"f6", X"2d", X"dd", X"01", X"14", X"07", X"17", X"07", X"ef", X"f2", X"11", X"e1", X"43", X"f7", X"2d", X"28",
                                                        X"f7", X"28", X"1d", X"fd", X"ed", X"f5", X"fc", X"dc", X"19", X"18", X"18", X"d8", X"12", X"e4", X"e8", X"ce", X"08", X"2c", X"1b", X"01", X"e3", X"e8", X"11", X"f8", X"17", X"24",
                                                        X"05", X"c7", X"14", X"09", X"e5", X"b9", X"1a", X"09", X"06", X"06", X"ef", X"fb", X"f1", X"e8", X"d8", X"0d", X"f7", X"06", X"d4", X"d5", X"ed", X"d6", X"f5", X"18", X"d6", X"e5",
                                                        X"30", X"19", X"f7", X"0a", X"27", X"29", X"20", X"d2", X"ed", X"ea", X"f6", X"e3", X"f2", X"e6", X"0e", X"f1", X"16", X"02", X"27", X"07", X"f7", X"2c", X"fa", X"ea", X"fc", X"d6",
                                                        X"10", X"fe", X"d4", X"2a", X"18", X"f7", X"28", X"ed", X"f9", X"f2", X"15", X"d9", X"05", X"fa", X"20", X"e6", X"f3", X"13", X"f3", X"31", X"13", X"0b", X"26", X"ee", X"e3", X"c7",
                                                        X"14", X"20", X"f5", X"de", X"c7", X"e0", X"1a", X"28", X"e7", X"38", X"d8", X"0e", X"0d", X"21", X"14", X"d6", X"27", X"45", X"05", X"fb", X"27", X"e9", X"1a", X"05", X"ec", X"0e",
                                                        X"04", X"fd", X"16", X"df", X"11", X"dd", X"12", X"e0", X"ee", X"d9", X"38", X"ec", X"32", X"23", X"05", X"f4", X"f0", X"0a", X"ee", X"04", X"f9", X"e3", X"30", X"e7", X"e5", X"de",
                                                        X"14", X"f4", X"20", X"bd", X"0e", X"0e", X"f1", X"0f", X"ef", X"0d", X"dd", X"12", X"08", X"02", X"33", X"0f", X"20", X"e5", X"de", X"39", X"ed", X"0f", X"fc", X"05", X"10", X"13",
                                                        X"17", X"10", X"23", X"4a", X"17", X"1a", X"d4", X"ce", X"dd", X"e1", X"fe", X"0d", X"13", X"01", X"ed", X"f0", X"24", X"e6", X"17", X"ed", X"0e", X"ce", X"25", X"ee", X"0e", X"07",
                                                        X"0c", X"13", X"04", X"f7", X"19", X"0b", X"09", X"14", X"16", X"f5", X"21", X"e6", X"20", X"fa", X"f8", X"1d", X"e5", X"e9", X"0c", X"f4", X"f7", X"f7", X"0c", X"e8", X"fb", X"33",
                                                        X"fc", X"cc", X"e0", X"e9", X"31", X"c4", X"f7", X"ff", X"25", X"f4", X"2d", X"12", X"dd", X"0f", X"fb", X"20", X"27", X"f3", X"e5", X"dd", X"24", X"01", X"06", X"ea", X"e1", X"f8",
                                                        X"39", X"e4", X"0e", X"ee", X"06", X"37", X"07", X"00", X"ee", X"0c", X"e7", X"1d", X"eb", X"0c", X"f8", X"fe", X"ed", X"10", X"2c", X"e4", X"f7", X"21", X"1f", X"e5", X"3a", X"e5",
                                                        X"07", X"0f", X"0a", X"12", X"d4", X"16", X"15", X"ee", X"0b", X"f1", X"18", X"fb", X"f1", X"c3", X"f2", X"e8", X"0d", X"b9", X"f2", X"2e", X"09", X"e6", X"f9", X"13", X"15", X"14",
                                                        X"f6", X"02", X"fe", X"cc", X"10", X"05", X"ea", X"d7", X"e6", X"e5", X"02", X"f6", X"f0", X"f4", X"02", X"ef", X"20", X"ed", X"f3", X"1b", X"44", X"03", X"f3", X"42", X"fa", X"ed",
                                                        X"f7", X"09", X"1b", X"07", X"26", X"26", X"fc", X"4d", X"1b", X"ef", X"39", X"e8", X"10", X"04", X"0c", X"e9", X"18", X"e0", X"0c", X"00", X"0d", X"0f", X"31", X"24", X"e7", X"02",
                                                        X"e2", X"00", X"09", X"cb", X"07", X"09", X"ee", X"03", X"f8", X"f8", X"36", X"06", X"ec", X"ed", X"1d", X"f8", X"2c", X"ed", X"2e", X"05", X"e6", X"ea", X"0a", X"fe", X"f9", X"f6",
                                                        X"fa", X"08", X"11", X"fb", X"1a", X"da", X"d4", X"fb", X"02", X"d0", X"e7", X"fe", X"04", X"f9", X"f1", X"ed", X"f5", X"0d", X"e3", X"3c", X"13", X"e2", X"1a", X"ef", X"eb", X"2a",
                                                        X"f3", X"27", X"e1", X"f8", X"0a", X"f5", X"f2", X"04", X"ff", X"24", X"19", X"e3", X"ef", X"f7", X"f8", X"e0", X"f6", X"28", X"09", X"f7", X"24", X"e0", X"ec", X"ef", X"f3", X"38",
                                                        X"ef", X"07", X"22", X"f8", X"f4", X"ed", X"14", X"d5", X"f2", X"0b", X"f7", X"07", X"f9", X"0e", X"fb", X"29", X"1b", X"f8", X"06", X"f3", X"e4", X"ef", X"f8", X"34", X"03", X"07",
                                                        X"c8", X"05", X"ea", X"03", X"1d", X"ff", X"2b", X"ea", X"3f", X"fb", X"25", X"37", X"03", X"20", X"e5", X"d9", X"02", X"e7", X"15", X"de", X"13", X"04", X"1d", X"e5", X"cc", X"e1",
                                                        X"2b", X"1e", X"16", X"47", X"d4", X"fe", X"25", X"e9", X"eb", X"f8", X"d8", X"fa", X"12", X"dd", X"fc", X"f4", X"f5", X"c5", X"f6", X"2a", X"d3", X"f7", X"ec", X"25", X"15", X"04",
                                                        X"10", X"41", X"0d", X"d8", X"27", X"dd", X"2c", X"de", X"ef", X"44", X"02", X"20", X"05", X"06", X"1d", X"0b", X"ff", X"e3", X"01", X"c1", X"08", X"e7", X"29", X"c9", X"f9", X"2f",
                                                        X"28", X"01", X"00", X"04", X"fd", X"ef", X"12", X"0d", X"f2", X"d8", X"45", X"ff", X"e2", X"37", X"f1", X"07", X"f3", X"fa", X"00", X"19", X"f8", X"cb", X"ee", X"33", X"1f", X"f6",
                                                        X"07", X"e4", X"07", X"1a", X"ef", X"26", X"22", X"f5", X"19", X"ef", X"fd", X"00", X"f7", X"fe", X"2d", X"ea", X"2a", X"e5", X"17", X"18", X"09", X"13", X"ff", X"fa", X"ed", X"05",
                                                        X"ee", X"e4", X"d9", X"3a", X"11", X"03", X"39", X"eb", X"15", X"f6", X"12", X"0f", X"f6", X"f0", X"09", X"eb", X"1c", X"16", X"05", X"2e", X"1f", X"02", X"1e", X"e8", X"fb", X"b2",
                                                        X"fc", X"02", X"1e", X"f8", X"c9", X"fa", X"0a", X"e3", X"10", X"f8", X"e7", X"ce", X"4c", X"e7", X"df", X"e8", X"e1", X"2a", X"26", X"f4", X"e2", X"00", X"f8", X"07", X"06", X"46",
                                                        X"44", X"d7", X"f1", X"f5", X"fd", X"d0", X"ef", X"3c", X"19", X"0e", X"07", X"04", X"1a", X"07", X"21", X"4e", X"f6", X"fc", X"23", X"ed", X"28", X"d2", X"e1", X"d1", X"f9", X"fe",
                                                        X"19", X"f3", X"da", X"e3", X"e1", X"32", X"2a", X"00", X"34", X"d3", X"0b", X"fd", X"f0", X"10", X"ef", X"f0", X"f3", X"e8", X"0a", X"f1", X"0c", X"34", X"11", X"ff", X"e7", X"e9",
                                                        X"16", X"0f", X"ea", X"2f", X"f4", X"f8", X"dc", X"0c", X"fa", X"02", X"ef", X"10", X"1d", X"e1", X"38", X"ef", X"1b", X"ce", X"f0", X"4a", X"2a", X"17", X"27", X"1d", X"ec", X"16",
                                                        X"1f", X"57", X"2f", X"da", X"09", X"e7", X"fd", X"ce", X"ec", X"18", X"29", X"fc", X"1e", X"ef", X"f7", X"f7", X"e1", X"3d", X"0e", X"ff", X"19", X"dc", X"14", X"e3", X"f7", X"e3",
                                                        X"e5", X"06", X"0b", X"e5", X"10", X"0d", X"16", X"ea", X"25", X"e4", X"e7", X"e1", X"fd", X"12", X"16", X"48", X"e4", X"04", X"fd", X"09", X"02", X"fd", X"fb", X"39", X"f6", X"df",
                                                        X"1a", X"df", X"f1", X"d2", X"f9", X"f9", X"ee", X"11", X"18", X"f4", X"0b", X"ee", X"22", X"f1", X"1e", X"0d", X"02", X"04", X"df", X"f5", X"0e", X"0d", X"e8", X"f4", X"d7", X"f7",
                                                        X"f8", X"0e", X"06", X"3c", X"fe", X"e5", X"03", X"ee", X"08", X"3b", X"13", X"04", X"fd", X"11", X"f2", X"da", X"e3", X"00", X"f0", X"f4", X"10", X"d6", X"f0", X"f5", X"ef", X"34",
                                                        X"fd", X"2f", X"e3", X"ef", X"16", X"f3", X"00", X"f0", X"06", X"f2", X"01", X"0d", X"dc", X"e2", X"0b", X"49", X"e9", X"e7", X"dc", X"05", X"16", X"07", X"f5", X"e2", X"f9", X"2c",
                                                        X"e9", X"da", X"e5", X"da", X"0f", X"bc", X"d5", X"e8", X"10", X"f1", X"32", X"ff", X"08", X"f3", X"23", X"fa", X"1a", X"e0", X"42", X"d4", X"02", X"2d", X"08", X"3a", X"e6", X"05",
                                                        X"ec", X"f3", X"06", X"ea", X"24", X"2e", X"14", X"ee", X"d2", X"e9", X"1d", X"06", X"fc", X"2f", X"0a", X"12", X"19", X"0b", X"0a", X"0e", X"f3", X"1d", X"e8", X"c9", X"09", X"e4",
                                                        X"12", X"e2", X"fd", X"2f", X"f4", X"1c", X"d5", X"0b", X"15", X"00", X"12", X"0c", X"f0", X"c9", X"29", X"d8", X"f1", X"bd", X"fa", X"e8", X"e0", X"f6", X"02", X"00", X"0b", X"ef",
                                                        X"fd", X"4c", X"fd", X"e9", X"fc", X"f0", X"0a", X"0b", X"e9", X"03", X"fa", X"ec", X"d5", X"08", X"1b", X"04", X"f7", X"0a", X"08", X"f6", X"e8", X"fb", X"14", X"f7", X"e7", X"03",
                                                        X"ea", X"0a", X"03", X"0d", X"05", X"e0", X"fc", X"10", X"0b", X"fa", X"43", X"d6", X"fc", X"d4", X"06", X"fa", X"f8", X"03", X"08", X"ef", X"de", X"11", X"27", X"04", X"eb", X"cf",
                                                        X"e5", X"07", X"18", X"d1", X"f8", X"12", X"20", X"0a", X"04", X"08", X"0e", X"fc", X"09", X"4a", X"08", X"e7", X"f5", X"de", X"e7", X"d7", X"e3", X"09", X"1d", X"f4", X"2b", X"01",
                                                        X"1a", X"20", X"01", X"12", X"f7", X"d6", X"10", X"e7", X"e7", X"1b", X"d5", X"30", X"2c", X"1d", X"1d", X"f2", X"09", X"06", X"fa", X"29", X"1e", X"d2", X"ec", X"ee", X"e9", X"20",
                                                        X"12", X"29", X"f9", X"18", X"31", X"f9", X"d5", X"29", X"f9", X"18", X"1a", X"de", X"f2", X"05", X"fa", X"06", X"f6", X"0b", X"f7", X"0e", X"05", X"f3", X"eb", X"f7", X"24", X"28",
                                                        X"f7", X"cd", X"f2", X"e6", X"21", X"c8", X"ef", X"51", X"1d", X"ea", X"f2", X"fc", X"16", X"f6", X"e1", X"e8", X"02", X"04", X"3c", X"e5", X"25", X"b9", X"0c", X"fb", X"27", X"1a",
                                                        X"de", X"fb", X"26", X"d6", X"e4", X"47", X"23", X"c9", X"26", X"e8", X"fe", X"f0", X"f1", X"33", X"de", X"f9", X"f7", X"ed", X"f5", X"ff", X"da", X"1a", X"f3", X"f9", X"36", X"ee",
                                                        X"06", X"b3", X"f2", X"0f", X"ec", X"e6", X"09", X"02", X"09", X"f0", X"f3", X"53", X"00", X"ef", X"1c", X"f2", X"f2", X"c3", X"f8", X"df", X"20", X"06", X"17", X"1f", X"f7", X"e4",
                                                        X"e6", X"ea", X"08", X"f6", X"f3", X"e5", X"22", X"d8", X"ec", X"49", X"dd", X"f6", X"ec", X"fc", X"e8", X"0e", X"08", X"42", X"07", X"ee", X"44", X"ea", X"11", X"c8", X"09", X"fd",
                                                        X"f1", X"0c", X"df", X"09", X"16", X"11", X"e1", X"42", X"0d", X"c7", X"2e", X"e2", X"31", X"e6", X"fa", X"fa", X"0c", X"04", X"1b", X"fc", X"12", X"df", X"17", X"22", X"0f", X"e9",
                                                        X"fe", X"d4", X"2d", X"02", X"cf", X"ea", X"24", X"f6", X"13", X"ec", X"ea", X"ee", X"f4", X"44", X"02", X"de", X"dc", X"e1", X"f1", X"1e", X"07", X"38", X"0e", X"04", X"e6", X"fd",
                                                        X"06", X"13", X"31", X"fb", X"f9", X"de", X"09", X"e0", X"f3", X"f1", X"f6", X"15", X"18", X"e0", X"18", X"f9", X"00", X"ed", X"ef", X"2d", X"f0", X"c3", X"e2", X"d2", X"1b", X"14",
                                                        X"06", X"33", X"19", X"f7", X"26", X"00", X"fe", X"24", X"db", X"d3", X"08", X"cf", X"2a", X"fb", X"e9", X"2f", X"f5", X"2a", X"02", X"17", X"21", X"df", X"0a", X"ed", X"03", X"d5",
                                                        X"10", X"e5", X"e7", X"02", X"fb", X"e1", X"fc", X"fd", X"c4", X"0d", X"07", X"18", X"df", X"e8", X"0c", X"31", X"ea", X"f8", X"e1", X"f9", X"e8", X"be", X"f9", X"25", X"13", X"04",
                                                        X"f2", X"fe", X"ef", X"14", X"fa", X"17", X"ef", X"dc", X"ee", X"f1", X"e1", X"c3", X"fb", X"53", X"e7", X"f6", X"f5", X"ee", X"d9", X"e6", X"fd", X"30", X"e6", X"fa", X"d9", X"f2",
                                                        X"e1", X"4c", X"f2", X"20", X"0b", X"01", X"25", X"fd", X"ee", X"01", X"fa", X"2e", X"08", X"b9", X"15", X"f9", X"15", X"d1", X"ff", X"ef", X"f6", X"0f", X"01", X"ed", X"f0", X"e5",
                                                        X"f4", X"14", X"01", X"de", X"1f", X"06", X"25", X"f8", X"e4", X"3d", X"08", X"08", X"1d", X"17", X"f6", X"15", X"07", X"21", X"00", X"e2", X"d1", X"d6", X"f3", X"24", X"ff", X"36",
                                                        X"f5", X"18", X"e0", X"ec", X"1c", X"fa", X"fa", X"1c", X"19", X"b2", X"eb", X"f2", X"e7", X"f1", X"fb", X"32", X"07", X"06", X"34", X"04");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"04";
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

