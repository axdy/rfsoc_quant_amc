-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block399.vhd
-- Created: 2023-06-15 16:03:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block399
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage47/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block399 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block399;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block399 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"1d", X"32", X"0e", X"eb", X"ec", X"4b", X"e3", X"1f", X"17", X"07", X"0c", X"51", X"ef", X"10",
                                                        X"fd", X"0a", X"0b", X"49", X"fd", X"f4", X"eb", X"e9", X"eb", X"0d", X"dd", X"09", X"fe", X"07", X"19", X"16", X"f2", X"01", X"18", X"02", X"ed", X"c4", X"10", X"fe", X"da", X"13",
                                                        X"3f", X"3f", X"24", X"4c", X"07", X"e9", X"22", X"eb", X"c7", X"f1", X"e8", X"34", X"f3", X"28", X"1a", X"1a", X"f4", X"a0", X"e2", X"bb", X"fb", X"eb", X"ef", X"0d", X"28", X"17",
                                                        X"e7", X"e8", X"ff", X"2b", X"47", X"fb", X"22", X"a3", X"0f", X"f3", X"05", X"18", X"1c", X"0a", X"07", X"22", X"29", X"35", X"fe", X"00", X"bd", X"03", X"0f", X"24", X"e2", X"21",
                                                        X"da", X"08", X"e7", X"21", X"15", X"1e", X"32", X"e5", X"fe", X"04", X"fe", X"02", X"ca", X"a1", X"03", X"22", X"0d", X"ec", X"d2", X"10", X"4d", X"0a", X"30", X"12", X"fa", X"ff",
                                                        X"32", X"16", X"ef", X"f3", X"1b", X"fd", X"04", X"ff", X"31", X"e7", X"03", X"2f", X"20", X"0d", X"0e", X"0f", X"1e", X"e8", X"22", X"98", X"09", X"2b", X"f4", X"03", X"f4", X"1f",
                                                        X"07", X"f5", X"04", X"2a", X"ed", X"f2", X"0a", X"02", X"2f", X"f5", X"14", X"c7", X"fa", X"18", X"fb", X"05", X"27", X"11", X"09", X"f8", X"04", X"3e", X"0f", X"09", X"02", X"2c",
                                                        X"03", X"f3", X"c3", X"ef", X"d6", X"14", X"ff", X"e6", X"fd", X"45", X"fc", X"f8", X"cc", X"0f", X"e0", X"47", X"1e", X"d6", X"e8", X"ee", X"04", X"03", X"34", X"f3", X"ed", X"df",
                                                        X"ef", X"04", X"37", X"f0", X"1b", X"3b", X"14", X"f0", X"13", X"fb", X"f9", X"04", X"e6", X"0e", X"2f", X"20", X"e1", X"2a", X"fb", X"0a", X"fc", X"b1", X"f7", X"ed", X"bf", X"ef",
                                                        X"dd", X"f6", X"12", X"28", X"f5", X"e8", X"fd", X"1f", X"c9", X"11", X"e5", X"11", X"17", X"ed", X"14", X"f7", X"0e", X"18", X"0e", X"18", X"ff", X"fb", X"fc", X"f3", X"47", X"04",
                                                        X"32", X"2d", X"01", X"34", X"05", X"ea", X"f9", X"f3", X"f2", X"0b", X"fa", X"39", X"12", X"1a", X"20", X"ec", X"1b", X"cc", X"fc", X"f5", X"c7", X"02", X"0b", X"0f", X"1a", X"16",
                                                        X"e6", X"ce", X"05", X"f5", X"3e", X"32", X"f7", X"a3", X"1a", X"33", X"e8", X"11", X"ea", X"0f", X"1b", X"3b", X"f8", X"0f", X"0f", X"fd", X"07", X"ee", X"0a", X"16", X"03", X"f4",
                                                        X"cf", X"17", X"1a", X"fb", X"e9", X"e7", X"1a", X"de", X"f7", X"3a", X"4c", X"05", X"4c", X"a9", X"0e", X"e2", X"cf", X"e7", X"d7", X"e8", X"32", X"3c", X"e2", X"3e", X"01", X"10",
                                                        X"fe", X"1c", X"02", X"dd", X"05", X"e0", X"10", X"03", X"25", X"fd", X"fd", X"f3", X"37", X"ce", X"02", X"11", X"02", X"16", X"f4", X"e2", X"14", X"4f", X"dd", X"23", X"c6", X"22",
                                                        X"41", X"24", X"12", X"2f", X"fe", X"f5", X"3e", X"05", X"0e", X"e5", X"0a", X"e3", X"e6", X"25", X"1a", X"09", X"4a", X"16", X"19", X"28", X"db", X"5a", X"16", X"0f", X"df", X"b3",
                                                        X"03", X"cd", X"2c", X"02", X"ee", X"25", X"f0", X"12", X"ef", X"0a", X"f7", X"2b", X"03", X"ff", X"fc", X"b3", X"f3", X"db", X"f1", X"e7", X"0d", X"f3", X"1b", X"02", X"13", X"19",
                                                        X"24", X"42", X"1f", X"10", X"08", X"b4", X"04", X"16", X"f5", X"e7", X"08", X"f3", X"2d", X"fb", X"2e", X"0a", X"fa", X"0c", X"ff", X"08", X"c5", X"39", X"0e", X"d3", X"d8", X"0c",
                                                        X"1f", X"e2", X"11", X"23", X"1b", X"bb", X"e7", X"0f", X"30", X"14", X"25", X"1d", X"f7", X"db", X"eb", X"f4", X"d0", X"10", X"17", X"08", X"14", X"d3", X"14", X"30", X"dd", X"02",
                                                        X"d3", X"2f", X"e6", X"43", X"b9", X"ed", X"26", X"10", X"d8", X"e2", X"19", X"ea", X"ec", X"3a", X"31", X"16", X"2e", X"db", X"1d", X"f4", X"18", X"04", X"11", X"11", X"0f", X"20",
                                                        X"19", X"d6", X"e4", X"cc", X"3c", X"de", X"e4", X"af", X"00", X"1c", X"c4", X"fb", X"dd", X"f6", X"11", X"4d", X"09", X"fe", X"dc", X"0f", X"cb", X"10", X"34", X"d4", X"04", X"dd",
                                                        X"13", X"10", X"1f", X"0b", X"44", X"16", X"0a", X"43", X"e3", X"ed", X"20", X"1c", X"ea", X"c8", X"fd", X"32", X"01", X"ff", X"14", X"db", X"e2", X"20", X"fe", X"bc", X"df", X"03",
                                                        X"d1", X"f9", X"2a", X"2b", X"12", X"fd", X"17", X"28", X"46", X"2d", X"e2", X"07", X"f7", X"32", X"09", X"46", X"4e", X"fa", X"14", X"d3", X"00", X"12", X"f3", X"0b", X"2e", X"05",
                                                        X"e8", X"1f", X"44", X"d7", X"fb", X"0c", X"25", X"13", X"fc", X"c6", X"fb", X"da", X"22", X"f2", X"16", X"fc", X"0c", X"36", X"da", X"14", X"f3", X"34", X"1e", X"ff", X"e6", X"e1",
                                                        X"f3", X"24", X"11", X"27", X"d9", X"e0", X"15", X"06", X"29", X"1c", X"f2", X"d6", X"13", X"06", X"2e", X"ff", X"17", X"d8", X"e6", X"08", X"33", X"12", X"35", X"ff", X"1f", X"26",
                                                        X"fd", X"d9", X"f5", X"1c", X"dc", X"df", X"07", X"de", X"27", X"1a", X"e7", X"f1", X"1d", X"fb", X"d8", X"fd", X"06", X"15", X"d2", X"e6", X"e7", X"0c", X"f3", X"ec", X"ef", X"fc",
                                                        X"3a", X"25", X"22", X"de", X"0a", X"33", X"e0", X"02", X"f4", X"0f", X"39", X"9c", X"1c", X"0d", X"d5", X"f9", X"ea", X"33", X"1f", X"16", X"05", X"07", X"08", X"19", X"1e", X"01",
                                                        X"2d", X"1c", X"08", X"11", X"cf", X"fc", X"0a", X"13", X"ec", X"ff", X"07", X"eb", X"fe", X"3c", X"4b", X"06", X"e5", X"ac", X"05", X"2c", X"c8", X"e2", X"20", X"f1", X"17", X"07",
                                                        X"25", X"2d", X"1b", X"e2", X"c9", X"07", X"f9", X"36", X"0c", X"09", X"ca", X"02", X"10", X"26", X"fc", X"0e", X"28", X"38", X"f0", X"22", X"f1", X"00", X"13", X"08", X"21", X"d6",
                                                        X"d5", X"eb", X"e4", X"ce", X"1c", X"03", X"23", X"d4", X"e8", X"e8", X"1a", X"f9", X"3e", X"f6", X"12", X"0c", X"e0", X"f8", X"c9", X"13", X"23", X"25", X"37", X"bc", X"dc", X"ea",
                                                        X"13", X"0f", X"f2", X"1d", X"20", X"01", X"10", X"00", X"f3", X"f7", X"1e", X"2c", X"fb", X"dc", X"f9", X"12", X"23", X"1e", X"09", X"02", X"02", X"e4", X"d7", X"ff", X"2e", X"07",
                                                        X"f8", X"07", X"fe", X"c2", X"ed", X"36", X"f7", X"16", X"f5", X"f0", X"0f", X"35", X"14", X"0a", X"1b", X"f6", X"21", X"fe", X"1d", X"2b", X"e7", X"0b", X"34", X"0f", X"51", X"ce",
                                                        X"06", X"da", X"0b", X"fb", X"e8", X"07", X"ef", X"2f", X"e7", X"ef", X"e0", X"0b", X"24", X"19", X"03", X"f4", X"03", X"f8", X"ff", X"ef", X"22", X"f6", X"1f", X"11", X"10", X"49",
                                                        X"f7", X"da", X"4c", X"07", X"f2", X"b4", X"ed", X"dc", X"02", X"24", X"e7", X"fe", X"f9", X"f8", X"05", X"da", X"10", X"4a", X"25", X"ee", X"09", X"f0", X"08", X"13", X"f4", X"f5",
                                                        X"08", X"db", X"24", X"fc", X"09", X"f8", X"f6", X"1f", X"0f", X"f6", X"ff", X"da", X"07", X"14", X"fb", X"19", X"04", X"0a", X"3b", X"f4", X"2b", X"24", X"df", X"fd", X"4f", X"fe",
                                                        X"2e", X"b6", X"04", X"db", X"27", X"ec", X"da", X"16", X"fd", X"2d", X"fd", X"ec", X"2a", X"12", X"cf", X"f8", X"d7", X"c5", X"07", X"d5", X"0d", X"0b", X"15", X"14", X"f1", X"22",
                                                        X"05", X"2c", X"fa", X"13", X"1c", X"f5", X"ee", X"b5", X"0d", X"ef", X"ce", X"18", X"08", X"19", X"31", X"1e", X"45", X"2b", X"f7", X"f4", X"42", X"03", X"e4", X"c2", X"1a", X"1d",
                                                        X"2f", X"f7", X"fe", X"0a", X"1f", X"38", X"21", X"2a", X"14", X"15", X"29", X"17", X"f4", X"b1", X"f9", X"e8", X"cf", X"f8", X"f2", X"1e", X"f2", X"16", X"ee", X"bd", X"fd", X"ea",
                                                        X"e2", X"06", X"21", X"bb", X"15", X"04", X"0c", X"0c", X"e9", X"23", X"d7", X"0f", X"f2", X"f2", X"e6", X"10", X"2d", X"0b", X"25", X"06", X"fa", X"19", X"f5", X"f8", X"13", X"e9",
                                                        X"e1", X"f6", X"0a", X"23", X"cc", X"32", X"22", X"09", X"26", X"ad", X"e3", X"eb", X"f9", X"fa", X"33", X"e7", X"1e", X"1f", X"e2", X"b4", X"fb", X"df", X"14", X"ff", X"04", X"a8",
                                                        X"23", X"f9", X"e1", X"01", X"ec", X"fa", X"07", X"20", X"32", X"00", X"03", X"d4", X"23", X"11", X"29", X"1a", X"de", X"cf", X"01", X"ed", X"ca", X"fd", X"2c", X"02", X"f3", X"fd",
                                                        X"e0", X"3a", X"2e", X"0e", X"25", X"e4", X"10", X"fa", X"e2", X"04", X"c7", X"e7", X"10", X"20", X"04", X"1f", X"f0", X"ec", X"2b", X"13", X"eb", X"f0", X"0e", X"1f", X"28", X"03",
                                                        X"02", X"13", X"ca", X"23", X"f9", X"f2", X"23", X"e5", X"d9", X"16", X"20", X"0b", X"10", X"f0", X"c2", X"00", X"0d", X"17", X"ca", X"13", X"1b", X"34", X"dc", X"db", X"05", X"fd",
                                                        X"1b", X"a3", X"fc", X"1b", X"c8", X"26", X"d1", X"f6", X"2a", X"fd", X"08", X"f0", X"d5", X"06", X"f7", X"1e", X"db", X"b1", X"fa", X"3e", X"21", X"f5", X"26", X"0f", X"e5", X"42",
                                                        X"e2", X"d3", X"ea", X"05", X"01", X"01", X"1e", X"24", X"ea", X"d8", X"21", X"17", X"e2", X"05", X"06", X"18", X"33", X"37", X"0a", X"3f", X"37", X"06", X"20", X"da", X"00", X"de",
                                                        X"ed", X"fc", X"f9", X"2f", X"18", X"fc", X"ff", X"c4", X"c2", X"f5", X"57", X"24", X"e0", X"d1", X"fb", X"e2", X"02", X"f7", X"03", X"0e", X"0a", X"11", X"1f", X"d7", X"eb", X"34",
                                                        X"d0", X"f7", X"16", X"ef", X"19", X"e3", X"df", X"fe", X"e0", X"f9", X"24", X"27", X"1a", X"b1", X"e6", X"f4", X"04", X"f5", X"1f", X"ae", X"0e", X"1b", X"06", X"11", X"02", X"fd",
                                                        X"00", X"e5", X"07", X"07", X"eb", X"3c", X"47", X"f3", X"ec", X"05", X"f5", X"04", X"d7", X"da", X"0e", X"0c", X"16", X"16", X"20", X"14", X"ff", X"36", X"12", X"05", X"fb", X"32",
                                                        X"03", X"01", X"16", X"f9", X"18", X"0d", X"15", X"d7", X"17", X"1a", X"ea", X"37", X"ec", X"f9", X"15", X"fe", X"0d", X"cf", X"35", X"1b", X"fd", X"12", X"32", X"17", X"fe", X"c4",
                                                        X"f4", X"d1", X"1e", X"05", X"4e", X"be", X"05", X"eb", X"d6", X"de", X"0b", X"05", X"22", X"00", X"31", X"d0", X"05", X"18", X"fd", X"05", X"2b", X"23", X"16", X"34", X"13", X"03",
                                                        X"0e", X"e6", X"f9", X"ed", X"1a", X"cb", X"be", X"df", X"ef", X"04", X"0a", X"20", X"0f", X"da", X"c4", X"f3", X"24", X"14", X"16", X"fc", X"22", X"ca", X"e8", X"3c", X"00", X"fa",
                                                        X"2a", X"2c", X"13", X"22", X"da", X"23", X"09", X"ef", X"42", X"f4", X"e9", X"34", X"15", X"45", X"2b", X"09", X"ff", X"0c", X"e4", X"f1", X"27", X"fe", X"3a", X"d3", X"02", X"f2",
                                                        X"d9", X"12", X"18", X"fa", X"1c", X"11", X"d8", X"b9", X"05", X"33", X"da", X"29", X"13", X"21", X"0a", X"08", X"fc", X"2f", X"22", X"e1", X"16", X"00", X"ee", X"e4", X"ef", X"02",
                                                        X"1a", X"ee", X"3c", X"f3", X"22", X"f7", X"07", X"07", X"f2", X"eb", X"d5", X"fe", X"07", X"9c", X"1c", X"24", X"2a", X"1f", X"33", X"e7", X"fc", X"30", X"04", X"ed", X"fd", X"1a",
                                                        X"e7", X"f7", X"ec", X"38", X"f9", X"e8", X"fb", X"f0", X"df", X"0e", X"eb", X"25", X"27", X"57", X"de", X"2f", X"22", X"1d", X"0b", X"bc", X"1c", X"f6", X"df", X"0f", X"df", X"2b",
                                                        X"54", X"36", X"32", X"d2", X"d7", X"ef", X"f2", X"03", X"07", X"fa", X"10", X"03", X"f7", X"e9", X"c1", X"f0", X"33", X"ff", X"0f", X"28", X"ec", X"27", X"d4", X"1e", X"c5", X"00",
                                                        X"25", X"f5", X"12", X"e3", X"fd", X"04", X"2e", X"3b", X"f1", X"35", X"0d", X"36", X"f3", X"fe", X"2c", X"e3", X"00", X"b9", X"cc", X"06", X"e9", X"05", X"30", X"03", X"23", X"26",
                                                        X"01", X"f9", X"2a", X"e9", X"e7", X"08", X"07", X"dc", X"ea", X"f6", X"2b", X"10", X"f7", X"22", X"28", X"21", X"1d", X"1d", X"01", X"e4", X"02", X"d1", X"fa", X"00", X"d9", X"0b",
                                                        X"fa", X"eb", X"f4", X"ee", X"10", X"cb", X"e2", X"54", X"d7", X"df", X"c5", X"23", X"05", X"e7", X"d6", X"f6", X"db", X"fc", X"3b", X"2f", X"1e", X"36", X"fa", X"09", X"0a", X"fa",
                                                        X"d6", X"14", X"2b", X"2e", X"01", X"e9", X"30", X"fb", X"1d", X"dc", X"f9", X"21", X"de", X"cc", X"cd", X"ef", X"02", X"33", X"09", X"d8", X"c9", X"fd", X"e9", X"f1", X"45", X"fd",
                                                        X"16", X"d5", X"fc", X"ee", X"3f", X"09", X"04", X"38", X"00", X"de", X"08", X"17", X"08", X"dd", X"f4", X"f8", X"2e", X"18", X"fc", X"3e", X"16", X"0e", X"d3", X"b2", X"16", X"13",
                                                        X"dc", X"fc", X"e3", X"e1", X"05", X"f6", X"eb", X"d3", X"e5", X"39", X"f0", X"ff", X"fc", X"e8", X"fa", X"01", X"23", X"fb", X"12", X"ec", X"0d", X"38", X"18", X"30", X"f0", X"3d",
                                                        X"09", X"03", X"14", X"01", X"12", X"e7", X"c8", X"eb", X"f3", X"18", X"ee", X"f6", X"e1", X"2d", X"0c", X"37", X"2f", X"ff", X"30", X"bd", X"10", X"c8", X"00", X"14", X"c6", X"1f",
                                                        X"2f", X"20", X"09", X"c3", X"f7", X"1f", X"35", X"f4", X"de", X"cd", X"fb", X"22", X"fe", X"d8", X"1e", X"0f", X"d9", X"0f", X"eb", X"15", X"08", X"02", X"14", X"1c", X"fa", X"c4",
                                                        X"f4", X"0a", X"08", X"22", X"f4", X"f4", X"0f", X"34", X"0e", X"3e", X"ee", X"20", X"e8", X"fb", X"0d", X"de", X"fb", X"e0", X"d3", X"f5", X"ac", X"1e", X"e4", X"15", X"29", X"0c",
                                                        X"03", X"26", X"18", X"10", X"19", X"31", X"19", X"d0", X"15", X"21", X"d8", X"14", X"08", X"14", X"01", X"c4", X"f1", X"f7", X"d0", X"fc", X"e9", X"c4", X"f9", X"3f", X"c6", X"22",
                                                        X"f6", X"e8", X"e2", X"f7", X"f3", X"36", X"e9", X"4c", X"21", X"0f", X"e1", X"af", X"f8", X"39", X"03", X"f0", X"0d", X"f5", X"05", X"1b", X"0a", X"56", X"ea", X"09", X"ef", X"05",
                                                        X"de", X"b8", X"16", X"db", X"15", X"0c", X"04", X"0f", X"3f", X"0a", X"fa", X"da", X"12", X"22", X"f6", X"ed", X"fa", X"ee", X"0b", X"f6", X"e7", X"07", X"1e", X"2e", X"10", X"1b",
                                                        X"09", X"15", X"cf", X"33", X"d7", X"fb", X"06", X"fc", X"0e", X"e6", X"df", X"18", X"16", X"ee", X"f7", X"09", X"01", X"dc", X"f4", X"29", X"45", X"15", X"ec", X"20", X"00", X"18",
                                                        X"d8", X"1b", X"bb", X"23", X"f5", X"e9", X"0d", X"c3", X"f4", X"09", X"09", X"00", X"45", X"ab", X"12", X"4a", X"dc", X"dd", X"17", X"f6", X"0d", X"2c", X"0e", X"39", X"f3", X"47",
                                                        X"46", X"f8", X"f3", X"d3", X"13", X"d9", X"c7", X"ec", X"cd", X"d9", X"03", X"20", X"f6", X"24", X"f9", X"3e", X"d9", X"0f", X"18", X"ea", X"fb", X"ee", X"0e", X"fc", X"12", X"fc",
                                                        X"f8", X"11", X"0b", X"e2", X"e3", X"f3", X"cf", X"12", X"db", X"cb", X"1c", X"56", X"26", X"e9", X"cf", X"d6", X"16", X"2f", X"28", X"ec", X"bf", X"ea", X"49", X"0c", X"2e", X"b8",
                                                        X"0a", X"e8", X"2c", X"f1", X"12", X"11", X"f6", X"1f", X"fa", X"bd", X"d9", X"22", X"f7", X"fa", X"43", X"f8", X"05", X"e7", X"06", X"ff", X"fe", X"0b", X"e3", X"42", X"2a", X"e2",
                                                        X"ee", X"15", X"f6", X"01", X"4c", X"a5", X"f7", X"f1", X"d8", X"f8", X"d1", X"0e", X"f0", X"14", X"db", X"fe", X"e7", X"1c", X"3a", X"fb", X"f8", X"14", X"f5", X"42", X"ff", X"fd",
                                                        X"2c", X"e0", X"e6", X"00", X"0e", X"1e", X"dc", X"e5", X"e3", X"1a", X"07", X"33", X"06", X"c9", X"24", X"ed", X"d4", X"18", X"23", X"00", X"0a", X"f9", X"01", X"18", X"e7", X"0c",
                                                        X"0e", X"1a", X"0c", X"10", X"1d", X"14", X"f6", X"1d", X"de", X"1c", X"24", X"c4", X"19", X"f9", X"46", X"03", X"24", X"e9", X"f6", X"33", X"08", X"fa", X"12", X"e2", X"e1", X"0d",
                                                        X"ef", X"d3", X"f4", X"1a", X"49", X"20", X"f3", X"2c", X"12", X"41", X"2b", X"1c", X"d1", X"19", X"0c", X"f8", X"06", X"31", X"0f", X"db", X"1d", X"0a", X"dd", X"af", X"f7", X"f9",
                                                        X"d0", X"ea", X"33", X"02", X"45", X"1b", X"29", X"e7", X"e8", X"52", X"3c", X"0f", X"d8", X"a1", X"f1", X"1b", X"28", X"0c", X"f8", X"20");
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

