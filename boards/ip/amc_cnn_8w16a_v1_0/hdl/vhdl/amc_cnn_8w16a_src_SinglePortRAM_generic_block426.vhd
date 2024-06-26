-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block426.vhd
-- Created: 2023-08-07 19:04:49
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block426
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage71/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block426 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block426;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block426 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"1a", X"e0", X"05", X"07", X"0b", X"1a", X"23", X"f8", X"ff", X"30", X"fc", X"00", X"f7", X"15",
                                                        X"1b", X"0d", X"f0", X"00", X"ff", X"08", X"0e", X"2d", X"0c", X"41", X"f7", X"33", X"ee", X"12", X"19", X"1b", X"fd", X"f9", X"39", X"f2", X"06", X"e3", X"2a", X"29", X"05", X"c4",
                                                        X"09", X"2a", X"1d", X"21", X"22", X"2a", X"f4", X"fb", X"32", X"f3", X"fe", X"ed", X"d1", X"05", X"eb", X"46", X"03", X"15", X"1e", X"f8", X"e5", X"15", X"11", X"fe", X"dc", X"ff",
                                                        X"f8", X"02", X"2e", X"ed", X"eb", X"49", X"1f", X"4a", X"08", X"fc", X"0f", X"2d", X"e6", X"fe", X"4a", X"01", X"f9", X"0b", X"e7", X"3b", X"f5", X"03", X"04", X"16", X"10", X"1c",
                                                        X"08", X"3f", X"f0", X"fe", X"dd", X"ff", X"ec", X"ff", X"49", X"ee", X"0e", X"fd", X"14", X"ee", X"01", X"f1", X"30", X"e4", X"e9", X"04", X"50", X"ff", X"f7", X"0c", X"32", X"18",
                                                        X"e6", X"0e", X"03", X"2f", X"06", X"1f", X"e1", X"29", X"2f", X"18", X"4c", X"00", X"f5", X"fb", X"1c", X"04", X"2e", X"e1", X"0c", X"eb", X"fc", X"00", X"28", X"11", X"1c", X"0f",
                                                        X"35", X"f1", X"02", X"f2", X"0a", X"00", X"24", X"c5", X"ff", X"41", X"f4", X"01", X"02", X"2b", X"10", X"f9", X"f3", X"ef", X"08", X"12", X"15", X"d3", X"1e", X"d7", X"ff", X"e5",
                                                        X"ec", X"15", X"11", X"30", X"fa", X"0d", X"28", X"e4", X"0a", X"03", X"24", X"2b", X"0b", X"be", X"fd", X"1f", X"06", X"16", X"f1", X"df", X"17", X"f5", X"0d", X"f7", X"00", X"e4",
                                                        X"02", X"f4", X"1a", X"34", X"ec", X"f1", X"00", X"07", X"e3", X"d9", X"10", X"01", X"b6", X"f9", X"05", X"fa", X"eb", X"13", X"dc", X"ee", X"f1", X"de", X"0d", X"e2", X"e4", X"09",
                                                        X"17", X"eb", X"28", X"08", X"12", X"13", X"f3", X"d8", X"06", X"b7", X"fc", X"0f", X"e4", X"f6", X"03", X"d1", X"02", X"f2", X"d2", X"ff", X"ff", X"f5", X"e0", X"1c", X"f8", X"da",
                                                        X"06", X"2d", X"e7", X"fd", X"23", X"fd", X"f6", X"fd", X"00", X"09", X"00", X"00", X"1b", X"c4", X"1b", X"db", X"10", X"aa", X"ff", X"e8", X"cd", X"e6", X"fe", X"e4", X"cf", X"f8",
                                                        X"0c", X"11", X"0b", X"f7", X"f9", X"c1", X"f9", X"f2", X"e4", X"df", X"d9", X"d9", X"14", X"ec", X"bc", X"fc", X"02", X"f5", X"fd", X"cc", X"f7", X"da", X"07", X"9d", X"e3", X"eb",
                                                        X"f6", X"c9", X"ed", X"dd", X"e9", X"02", X"06", X"06", X"df", X"e3", X"08", X"06", X"16", X"fc", X"09", X"f9", X"d2", X"ed", X"05", X"db", X"04", X"fb", X"07", X"d4", X"00", X"fd",
                                                        X"d3", X"a6", X"ea", X"9d", X"fd", X"e9", X"e2", X"e9", X"e7", X"e4", X"f4", X"0b", X"0c", X"08", X"2b", X"e8", X"0c", X"fe", X"0a", X"ea", X"03", X"ed", X"f2", X"ea", X"f8", X"da",
                                                        X"e7", X"fc", X"fb", X"f0", X"d8", X"ed", X"da", X"0f", X"15", X"ec", X"05", X"d5", X"fb", X"da", X"f6", X"e0", X"ce", X"09", X"0b", X"de", X"cb", X"10", X"fb", X"d2", X"e9", X"f3",
                                                        X"ec", X"f5", X"fe", X"e2", X"dc", X"ef", X"e1", X"fb", X"03", X"00", X"e8", X"df", X"f0", X"e8", X"01", X"bd", X"ec", X"fb", X"de", X"18", X"0b", X"f2", X"a9", X"ff", X"01", X"e9",
                                                        X"1c", X"d8", X"10", X"b7", X"1c", X"b1", X"07", X"e9", X"ed", X"e1", X"1b", X"06", X"d1", X"02", X"ff", X"0e", X"fe", X"f5", X"d4", X"1d", X"0d", X"0d", X"fd", X"f0", X"0e", X"d8",
                                                        X"e9", X"02", X"c8", X"ee", X"ee", X"f1", X"04", X"fb", X"e2", X"ee", X"11", X"24", X"da", X"fd", X"da", X"bf", X"0b", X"fd", X"f6", X"04", X"fa", X"fa", X"f2", X"08", X"d6", X"25",
                                                        X"fe", X"e7", X"05", X"ff", X"c9", X"d6", X"00", X"0e", X"13", X"07", X"f8", X"04", X"ec", X"ce", X"db", X"bc", X"0b", X"0d", X"0a", X"fc", X"f7", X"cb", X"cd", X"f7", X"24", X"f3",
                                                        X"eb", X"0a", X"02", X"0a", X"0c", X"2c", X"fc", X"d7", X"dc", X"fd", X"13", X"1b", X"00", X"0d", X"d5", X"11", X"f2", X"0a", X"e0", X"08", X"ec", X"f5", X"ed", X"11", X"03", X"e1",
                                                        X"12", X"e8", X"ec", X"11", X"ae", X"f8", X"fe", X"fd", X"e5", X"dd", X"e5", X"2d", X"f6", X"da", X"eb", X"03", X"fa", X"07", X"0b", X"02", X"11", X"fc", X"f1", X"06", X"3e", X"18",
                                                        X"e1", X"e5", X"e5", X"26", X"f2", X"ee", X"d9", X"e6", X"eb", X"07", X"b0", X"06", X"07", X"ee", X"d1", X"dd", X"f7", X"c9", X"e8", X"39", X"06", X"10", X"f9", X"e4", X"ef", X"fd",
                                                        X"ef", X"fd", X"06", X"19", X"19", X"11", X"10", X"b8", X"ee", X"2f", X"fc", X"13", X"e8", X"f9", X"0a", X"fe", X"1b", X"01", X"0d", X"1d", X"db", X"ff", X"e0", X"c5", X"de", X"2b",
                                                        X"01", X"f9", X"1c", X"f7", X"f2", X"ea", X"dc", X"f8", X"fe", X"e7", X"fc", X"fb", X"16", X"36", X"07", X"ee", X"fe", X"05", X"e0", X"e2", X"ea", X"04", X"03", X"f8", X"fc", X"08",
                                                        X"d4", X"dd", X"ec", X"e7", X"1a", X"ef", X"ed", X"f7", X"ee", X"f7", X"06", X"f4", X"fa", X"05", X"f2", X"f7", X"21", X"fa", X"08", X"18", X"06", X"f7", X"06", X"f9", X"16", X"d8",
                                                        X"e4", X"e3", X"cf", X"f0", X"00", X"11", X"f3", X"16", X"0d", X"b3", X"13", X"ec", X"f5", X"fb", X"fd", X"06", X"ed", X"e5", X"ce", X"0f", X"f4", X"1f", X"06", X"ff", X"ec", X"b6",
                                                        X"fb", X"d9", X"0f", X"ec", X"0a", X"e4", X"1c", X"f7", X"d8", X"fd", X"06", X"22", X"fb", X"f9", X"fd", X"e8", X"f4", X"f4", X"e6", X"d3", X"f8", X"fe", X"fa", X"ca", X"de", X"00",
                                                        X"fb", X"e6", X"d1", X"f5", X"06", X"cc", X"f9", X"cc", X"07", X"ff", X"0e", X"de", X"01", X"f0", X"d9", X"fe", X"05", X"f7", X"fb", X"f1", X"14", X"ff", X"f5", X"ce", X"e8", X"eb",
                                                        X"d5", X"f3", X"08", X"fa", X"b9", X"f9", X"00", X"10", X"1e", X"d5", X"d7", X"be", X"0c", X"0b", X"fc", X"f9", X"ff", X"f5", X"0e", X"fc", X"b4", X"fa", X"00", X"ef", X"d6", X"e0",
                                                        X"16", X"c6", X"0d", X"17", X"04", X"f8", X"f2", X"e4", X"03", X"ed", X"d6", X"fe", X"08", X"fe", X"06", X"15", X"1e", X"1d", X"01", X"c5", X"fb", X"e1", X"07", X"10", X"0d", X"ed",
                                                        X"be", X"f1", X"f6", X"f9", X"10", X"d5", X"f6", X"28", X"07", X"05", X"d9", X"f5", X"df", X"e9", X"e3", X"f7", X"ba", X"00", X"f2", X"e6", X"06", X"2b", X"0b", X"d7", X"05", X"1a",
                                                        X"d8", X"fc", X"1a", X"25", X"dd", X"fe", X"f3", X"02", X"ed", X"0c", X"ff", X"e0", X"e0", X"2f", X"0d", X"e0", X"f7", X"de", X"d9", X"ed", X"04", X"f3", X"30", X"f7", X"f1", X"20",
                                                        X"dd", X"e0", X"0b", X"1d", X"06", X"19", X"fa", X"06", X"fc", X"f8", X"18", X"08", X"32", X"f5", X"0f", X"ef", X"2c", X"fa", X"20", X"1c", X"03", X"ee", X"03", X"f9", X"ec", X"07",
                                                        X"fb", X"0b", X"48", X"04", X"f8", X"10", X"1c", X"de", X"e1", X"f7", X"ff", X"13", X"0f", X"11", X"0b", X"d7", X"0c", X"ff", X"2a", X"05", X"01", X"e8", X"1d", X"eb", X"ec", X"c3",
                                                        X"1b", X"30", X"f0", X"06", X"06", X"f1", X"fb", X"05", X"2a", X"01", X"fa", X"10", X"07", X"23", X"1b", X"2c", X"0e", X"4f", X"fc", X"09", X"f1", X"de", X"f7", X"0d", X"ed", X"0e",
                                                        X"12", X"ee", X"ed", X"33", X"e4", X"27", X"16", X"f3", X"0d", X"18", X"04", X"0a", X"fa", X"0e", X"44", X"00", X"05", X"0d", X"cc", X"31", X"f3", X"f8", X"05", X"41", X"00", X"ff",
                                                        X"03", X"36", X"34", X"15", X"ec", X"ee", X"01", X"0c", X"1b", X"04", X"ea", X"19", X"04", X"d6", X"02", X"27", X"0d", X"0d", X"e4", X"03", X"01", X"02", X"02", X"db", X"0b", X"18",
                                                        X"16", X"cb", X"f9", X"31", X"16", X"2c", X"20", X"21", X"ef", X"01", X"d4", X"02", X"06", X"f8", X"26", X"23", X"ed", X"51", X"fe", X"22", X"19", X"f2", X"06", X"34", X"ff", X"11",
                                                        X"e3", X"00", X"03", X"e9", X"13", X"0b", X"e4", X"e5", X"fd", X"58", X"14", X"1f", X"2e", X"4e", X"1c", X"03", X"5d", X"01", X"f7", X"21", X"ee", X"dd", X"27", X"1f", X"1e", X"f2",
                                                        X"ff", X"14", X"0c", X"fb", X"f5", X"fc", X"dc", X"fb", X"ef", X"01", X"ff", X"3f", X"e9", X"0e", X"f0", X"f9", X"09", X"06", X"33", X"35", X"0a", X"ff", X"06", X"fc", X"16", X"df",
                                                        X"31", X"17", X"ff", X"cf", X"0d", X"42", X"f6", X"19", X"19", X"1d", X"e3", X"05", X"14", X"f6", X"06", X"06", X"fc", X"2b", X"0d", X"2e", X"f9", X"dc", X"0f", X"05", X"e3", X"ec",
                                                        X"d8", X"09", X"e1", X"fb", X"f7", X"10", X"1d", X"e5", X"06", X"d9", X"08", X"fb", X"00", X"12", X"1e", X"f0", X"11", X"02", X"1d", X"fb", X"f4", X"f1", X"d5", X"e8", X"18", X"19",
                                                        X"f5", X"bf", X"f7", X"12", X"ec", X"2a", X"de", X"f0", X"be", X"fe", X"0f", X"f0", X"1e", X"ec", X"e0", X"d3", X"0b", X"27", X"de", X"f3", X"26", X"e8", X"1c", X"01", X"02", X"08",
                                                        X"fd", X"09", X"0a", X"26", X"e9", X"bd", X"f2", X"34", X"f5", X"02", X"e3", X"0a", X"09", X"f5", X"2c", X"ff", X"f6", X"23", X"0b", X"ef", X"ed", X"12", X"15", X"bd", X"f9", X"f8",
                                                        X"ec", X"d9", X"1b", X"08", X"e6", X"06", X"12", X"e2", X"0f", X"05", X"10", X"2c", X"09", X"25", X"e2", X"09", X"d5", X"41", X"f2", X"00", X"c7", X"ee", X"e4", X"04", X"dc", X"23",
                                                        X"fc", X"d0", X"01", X"0c", X"14", X"f8", X"fc", X"24", X"03", X"ed", X"2a", X"f7", X"ff", X"0e", X"1a", X"c8", X"09", X"1a", X"ff", X"c5", X"00", X"08", X"f6", X"e1", X"e0", X"f7",
                                                        X"f5", X"fe", X"f0", X"eb", X"1b", X"d5", X"e2", X"cc", X"f2", X"e2", X"09", X"04", X"e1", X"20", X"16", X"06", X"37", X"0d", X"fc", X"dc", X"18", X"03", X"ea", X"bc", X"09", X"1a",
                                                        X"1e", X"f7", X"0a", X"04", X"03", X"f5", X"c7", X"06", X"fa", X"15", X"fd", X"1b", X"d7", X"29", X"15", X"17", X"12", X"0d", X"f9", X"fc", X"1e", X"02", X"cd", X"04", X"03", X"cf",
                                                        X"e4", X"f3", X"1d", X"37", X"f4", X"20", X"e4", X"ee", X"27", X"16", X"ef", X"00", X"f8", X"f6", X"18", X"f6", X"e6", X"32", X"ef", X"3f", X"0d", X"07", X"f9", X"0e", X"ea", X"12",
                                                        X"fc", X"0f", X"29", X"f3", X"f4", X"10", X"fc", X"fa", X"0f", X"0d", X"fb", X"cf", X"01", X"f9", X"e2", X"f2", X"0a", X"09", X"d8", X"ee", X"ff", X"fd", X"d9", X"3a", X"04", X"39",
                                                        X"02", X"27", X"fb", X"ff", X"2d", X"f0", X"15", X"0a", X"e2", X"0d", X"13", X"04", X"e9", X"f0", X"f6", X"46", X"fa", X"f2", X"f8", X"04", X"00", X"21", X"09", X"fc", X"1b", X"f7",
                                                        X"f3", X"ec", X"f4", X"24", X"03", X"d5", X"19", X"e3", X"fe", X"0f", X"ff", X"e4", X"29", X"f6", X"31", X"f3", X"f9", X"01", X"f3", X"05", X"17", X"2b", X"f5", X"08", X"1d", X"12",
                                                        X"0c", X"48", X"24", X"08", X"1f", X"01", X"07", X"06", X"0a", X"26", X"11", X"d2", X"ff", X"f3", X"14", X"15", X"f4", X"13", X"21", X"09", X"f7", X"f2", X"ff", X"26", X"36", X"39",
                                                        X"ea", X"4c", X"12", X"f0", X"10", X"f5", X"df", X"2c", X"09", X"f6", X"fa", X"fd", X"12", X"00", X"0e", X"f0", X"fc", X"2e", X"fc", X"01", X"fd", X"12", X"13", X"ed", X"f6", X"01",
                                                        X"58", X"04", X"0f", X"0b", X"26", X"eb", X"f2", X"3d", X"f5", X"0c", X"0d", X"0a", X"ec", X"e3", X"da", X"02", X"0e", X"f1", X"0a", X"fe", X"cb", X"f1", X"0a", X"1e", X"08", X"0b",
                                                        X"09", X"f1", X"2c", X"e0", X"0c", X"10", X"f8", X"f7", X"f8", X"f2", X"2e", X"f3", X"0f", X"bb", X"09", X"0e", X"f4", X"09", X"f3", X"36", X"de", X"f4", X"1e", X"f3", X"fc", X"07",
                                                        X"07", X"eb", X"cd", X"b6", X"f3", X"3e", X"fe", X"07", X"ec", X"e7", X"0b", X"fc", X"05", X"f6", X"07", X"ef", X"28", X"2c", X"1c", X"20", X"0d", X"f3", X"f6", X"17", X"2d", X"fb",
                                                        X"2a", X"0a", X"1d", X"ed", X"fa", X"f9", X"21", X"19", X"e8", X"ed", X"09", X"08", X"f8", X"00", X"d5", X"f5", X"dd", X"03", X"e2", X"0d", X"fe", X"e9", X"06", X"d9", X"23", X"ef",
                                                        X"fe", X"48", X"13", X"07", X"0a", X"0f", X"14", X"f3", X"bf", X"02", X"06", X"f7", X"f0", X"de", X"df", X"25", X"16", X"1c", X"1c", X"fe", X"f9", X"2c", X"e8", X"0a", X"f7", X"f8",
                                                        X"f9", X"03", X"2b", X"08", X"d5", X"30", X"0e", X"e7", X"09", X"11", X"ee", X"38", X"1a", X"02", X"f9", X"f0", X"04", X"ef", X"f2", X"2f", X"37", X"2b", X"0b", X"19", X"fd", X"f2",
                                                        X"30", X"27", X"f5", X"d9", X"1d", X"10", X"ff", X"05", X"f0", X"17", X"0b", X"cc", X"05", X"d2", X"04", X"f9", X"2c", X"27", X"0c", X"f5", X"1d", X"fa", X"f7", X"d3", X"3e", X"db",
                                                        X"eb", X"cd", X"0a", X"eb", X"01", X"fc", X"03", X"d3", X"ef", X"f2", X"29", X"f1", X"fe", X"1f", X"e2", X"05", X"fe", X"f6", X"f5", X"2f", X"f4", X"03", X"0e", X"29", X"05", X"05",
                                                        X"d8", X"03", X"11", X"0e", X"09", X"21", X"f1", X"19", X"ed", X"c2", X"f9", X"f6", X"df", X"da", X"0c", X"f7", X"df", X"fb", X"f2", X"09", X"cb", X"03", X"29", X"22", X"f7", X"ff",
                                                        X"09", X"1d", X"f3", X"1e", X"00", X"07", X"aa", X"02", X"fd", X"e9", X"fc", X"e7", X"d5", X"1e", X"0f", X"be", X"eb", X"28", X"f8", X"27", X"01", X"0b", X"de", X"fa", X"f7", X"08",
                                                        X"dd", X"21", X"14", X"ee", X"f1", X"ba", X"ef", X"ea", X"db", X"0c", X"20", X"f2", X"da", X"ff", X"f8", X"09", X"d2", X"0a", X"12", X"2e", X"f2", X"18", X"ff", X"fe", X"12", X"19",
                                                        X"e2", X"ff", X"ce", X"f7", X"02", X"eb", X"ef", X"e5", X"da", X"fc", X"17", X"21", X"fc", X"0c", X"f9", X"0c", X"01", X"fe", X"a4", X"fb", X"ef", X"e5", X"28", X"df", X"ff", X"ae",
                                                        X"fd", X"e7", X"e8", X"ee", X"e1", X"d6", X"f9", X"00", X"e7", X"07", X"fe", X"10", X"0e", X"d4", X"19", X"b1", X"f3", X"32", X"15", X"0d", X"f6", X"1f", X"f1", X"f8", X"ac", X"fe",
                                                        X"fe", X"e2", X"13", X"d5", X"ff", X"04", X"11", X"32", X"eb", X"d6", X"11", X"d0", X"f9", X"e8", X"ce", X"f3", X"0d", X"f2", X"f5", X"36", X"e5", X"f9", X"00", X"1f", X"1f", X"e5",
                                                        X"05", X"f6", X"15", X"f5", X"07", X"ff", X"f6", X"eb", X"31", X"f2", X"29", X"ce", X"14", X"4a", X"fb", X"ee", X"f6", X"09", X"dd", X"02", X"f9", X"f3", X"f9", X"20", X"d1", X"12",
                                                        X"de", X"d3", X"18", X"d7", X"f4", X"06", X"21", X"dd", X"f9", X"e7", X"0a", X"fa", X"f2", X"f1", X"12", X"df", X"fd", X"e6", X"1d", X"fb", X"f6", X"0d", X"de", X"17", X"17", X"f7",
                                                        X"fa", X"14", X"0c", X"fb", X"0d", X"01", X"24", X"1e", X"01", X"57", X"fa", X"0e", X"0b", X"eb", X"16", X"ff", X"58", X"f2", X"07", X"d6", X"e9", X"06", X"ed", X"e4", X"ff", X"f2",
                                                        X"0c", X"0a", X"d6", X"32", X"fe", X"08", X"d0", X"f7", X"00", X"fa", X"e5", X"22", X"0a", X"3b", X"1e", X"1b", X"09", X"24", X"32", X"1a", X"16", X"02", X"ec", X"04", X"0f", X"f0",
                                                        X"24", X"2f", X"fd", X"31", X"f5", X"06", X"01", X"13", X"25", X"2b", X"14", X"00", X"56", X"08", X"08", X"15", X"f2", X"2a", X"e1", X"16", X"fb", X"cc", X"09", X"28", X"f3", X"f0",
                                                        X"01", X"05", X"57", X"fd", X"00", X"0b", X"d3", X"34", X"24", X"24", X"0b", X"33", X"0b", X"1b", X"0d", X"3b", X"0b", X"18", X"05", X"f9", X"00", X"18", X"34", X"36", X"21", X"05",
                                                        X"16", X"52", X"1b", X"08", X"11", X"53", X"21", X"13", X"da", X"00", X"fc", X"17", X"0a", X"dc", X"ed", X"12", X"08", X"60", X"12", X"fe", X"11", X"de", X"3b", X"fc", X"15", X"fa",
                                                        X"01", X"ec", X"fc", X"30", X"26", X"1a", X"fe", X"48", X"15", X"06", X"fe", X"25", X"f3", X"fa", X"d8", X"0d", X"00", X"03", X"08", X"01", X"39", X"d1", X"ff", X"60", X"00", X"04",
                                                        X"2e", X"21", X"11", X"1c", X"20", X"09", X"01", X"fe", X"31", X"25", X"eb", X"52", X"05", X"62", X"02", X"2d", X"ed", X"43", X"02", X"03");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"03";
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

