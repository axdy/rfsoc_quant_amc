-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block402.vhd
-- Created: 2023-08-07 19:04:46
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block402
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage5/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block402 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block402;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block402 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"f9", X"ef", X"fb", X"d9", X"ba", X"ce", X"c7", X"a0", X"ef", X"03", X"ea", X"fd", X"cf", X"c8",
                                                        X"e4", X"e5", X"a2", X"04", X"ef", X"f6", X"2c", X"da", X"f8", X"a4", X"e0", X"dc", X"ee", X"ec", X"dc", X"df", X"dd", X"e2", X"a5", X"f6", X"17", X"f4", X"26", X"d3", X"24", X"fc",
                                                        X"00", X"d1", X"ed", X"e7", X"cb", X"ec", X"f5", X"e3", X"04", X"07", X"fa", X"df", X"e5", X"da", X"1c", X"fc", X"ef", X"07", X"03", X"ea", X"d8", X"fd", X"fe", X"d9", X"cb", X"f9",
                                                        X"06", X"fd", X"0e", X"e7", X"d9", X"ea", X"03", X"bb", X"f1", X"e9", X"d2", X"ef", X"1e", X"e7", X"d3", X"0c", X"f0", X"d2", X"17", X"dc", X"cc", X"cd", X"f3", X"f8", X"f2", X"ee",
                                                        X"07", X"06", X"d6", X"05", X"af", X"e8", X"00", X"ed", X"ce", X"1b", X"d3", X"de", X"04", X"d7", X"01", X"fa", X"1c", X"cf", X"f4", X"e7", X"ec", X"14", X"0f", X"07", X"e3", X"20",
                                                        X"0e", X"ea", X"e9", X"df", X"dd", X"e6", X"12", X"e4", X"ee", X"dc", X"b1", X"ff", X"05", X"f3", X"c8", X"f5", X"fa", X"25", X"15", X"fe", X"e8", X"07", X"f6", X"06", X"da", X"e1",
                                                        X"ee", X"f6", X"f9", X"03", X"28", X"e6", X"f5", X"e1", X"0e", X"1d", X"f9", X"f3", X"e3", X"e7", X"19", X"d9", X"fb", X"0d", X"10", X"e7", X"d7", X"ee", X"08", X"04", X"19", X"fe",
                                                        X"1a", X"00", X"11", X"08", X"06", X"e4", X"fa", X"0c", X"1a", X"f6", X"23", X"0d", X"05", X"0c", X"1d", X"a4", X"ff", X"fb", X"ba", X"e9", X"e6", X"df", X"e9", X"e4", X"f4", X"f9",
                                                        X"2c", X"d5", X"cb", X"2d", X"09", X"fb", X"e1", X"fc", X"d0", X"f3", X"08", X"06", X"0e", X"f2", X"07", X"fa", X"2c", X"25", X"f9", X"d1", X"05", X"0e", X"fc", X"f1", X"0d", X"3b",
                                                        X"1d", X"14", X"17", X"f2", X"07", X"ec", X"fb", X"f4", X"ed", X"31", X"ee", X"c5", X"03", X"e1", X"0f", X"d9", X"ec", X"05", X"10", X"13", X"f3", X"03", X"08", X"18", X"eb", X"f3",
                                                        X"fb", X"41", X"fd", X"02", X"e7", X"e3", X"f9", X"fd", X"43", X"00", X"07", X"12", X"26", X"06", X"eb", X"33", X"00", X"d0", X"05", X"f0", X"e0", X"fd", X"ff", X"f6", X"29", X"ed",
                                                        X"f3", X"e2", X"23", X"f2", X"f8", X"e7", X"04", X"e1", X"f7", X"0c", X"fa", X"e7", X"fd", X"f3", X"20", X"0e", X"07", X"f3", X"f7", X"14", X"dd", X"c5", X"07", X"07", X"12", X"00",
                                                        X"08", X"f7", X"e4", X"de", X"49", X"02", X"f5", X"fd", X"f4", X"30", X"f4", X"f5", X"f0", X"d4", X"14", X"f4", X"ec", X"11", X"17", X"f6", X"45", X"01", X"fd", X"1c", X"27", X"d9",
                                                        X"e1", X"25", X"18", X"eb", X"f0", X"14", X"e1", X"dc", X"0e", X"f6", X"dd", X"fc", X"05", X"e8", X"1c", X"25", X"02", X"fb", X"f1", X"db", X"0b", X"0b", X"f4", X"33", X"22", X"fd",
                                                        X"d1", X"04", X"ed", X"df", X"00", X"ec", X"e0", X"e3", X"0a", X"32", X"eb", X"0b", X"ea", X"02", X"ea", X"07", X"43", X"f9", X"fa", X"0e", X"f0", X"17", X"19", X"e7", X"e8", X"3a",
                                                        X"f7", X"09", X"dd", X"cc", X"03", X"f9", X"e9", X"eb", X"ff", X"06", X"f8", X"0c", X"e1", X"b7", X"f0", X"ba", X"fa", X"03", X"14", X"20", X"fb", X"f7", X"2c", X"0d", X"05", X"0f",
                                                        X"0a", X"f0", X"cd", X"f1", X"e9", X"d9", X"ee", X"07", X"11", X"c9", X"df", X"ee", X"c5", X"fd", X"0b", X"ce", X"d8", X"20", X"dd", X"27", X"fe", X"bf", X"fb", X"ed", X"ea", X"0b",
                                                        X"2f", X"d2", X"23", X"eb", X"0f", X"00", X"f6", X"14", X"d7", X"f3", X"f7", X"cc", X"ff", X"fe", X"ff", X"0c", X"e3", X"e4", X"b6", X"fa", X"f4", X"18", X"f9", X"e4", X"03", X"11",
                                                        X"0d", X"b6", X"fd", X"14", X"d9", X"c9", X"e1", X"dc", X"ea", X"fc", X"10", X"f2", X"30", X"e3", X"06", X"cc", X"01", X"ee", X"06", X"eb", X"18", X"1d", X"0f", X"d9", X"af", X"f6",
                                                        X"01", X"f1", X"f2", X"e9", X"f3", X"e2", X"02", X"db", X"e6", X"ec", X"fb", X"ca", X"f3", X"d8", X"f6", X"f8", X"fa", X"fa", X"e6", X"28", X"d3", X"b7", X"19", X"ca", X"fa", X"f6",
                                                        X"e4", X"e5", X"ea", X"fe", X"f8", X"e0", X"04", X"09", X"ee", X"13", X"ca", X"17", X"f0", X"d3", X"f4", X"f4", X"ff", X"e2", X"f4", X"e0", X"f0", X"f0", X"06", X"f9", X"00", X"eb",
                                                        X"d5", X"0d", X"11", X"d4", X"04", X"e1", X"ec", X"e8", X"f5", X"e3", X"b5", X"fa", X"09", X"f8", X"22", X"d6", X"fc", X"d7", X"e5", X"a9", X"f0", X"e0", X"06", X"0e", X"1d", X"e6",
                                                        X"a3", X"09", X"04", X"f7", X"e9", X"00", X"fa", X"14", X"fc", X"f8", X"13", X"f5", X"e3", X"f3", X"d3", X"e6", X"df", X"19", X"fe", X"05", X"18", X"cd", X"cb", X"b9", X"13", X"d2",
                                                        X"f1", X"ed", X"d1", X"d9", X"04", X"ec", X"df", X"12", X"f7", X"e9", X"eb", X"eb", X"e7", X"a9", X"0b", X"f5", X"09", X"00", X"f4", X"22", X"e6", X"d1", X"b1", X"f6", X"e7", X"0e",
                                                        X"08", X"eb", X"21", X"bb", X"fb", X"f8", X"f7", X"f1", X"d2", X"ef", X"07", X"03", X"15", X"fc", X"0d", X"eb", X"ea", X"14", X"ca", X"22", X"05", X"0a", X"eb", X"04", X"e5", X"ca",
                                                        X"01", X"e5", X"26", X"f6", X"f0", X"fd", X"d9", X"1d", X"22", X"eb", X"11", X"b0", X"f5", X"ec", X"19", X"ea", X"e6", X"01", X"cf", X"f2", X"0c", X"05", X"d5", X"16", X"d2", X"c4",
                                                        X"00", X"0c", X"de", X"0a", X"fa", X"12", X"20", X"f6", X"cc", X"e0", X"09", X"e4", X"1f", X"f3", X"13", X"16", X"05", X"2d", X"01", X"f8", X"fa", X"cc", X"29", X"fd", X"18", X"04",
                                                        X"fd", X"08", X"d5", X"11", X"0a", X"c5", X"0f", X"c8", X"fb", X"f6", X"eb", X"e6", X"f9", X"e0", X"b5", X"05", X"07", X"e6", X"4d", X"c9", X"0a", X"d3", X"15", X"d9", X"f8", X"09",
                                                        X"ff", X"2d", X"04", X"02", X"1a", X"06", X"f1", X"08", X"ef", X"05", X"22", X"31", X"01", X"3b", X"00", X"eb", X"f9", X"03", X"02", X"0a", X"b6", X"0d", X"01", X"20", X"de", X"d0",
                                                        X"23", X"d2", X"08", X"2c", X"09", X"f4", X"f6", X"cd", X"0e", X"fd", X"b5", X"eb", X"07", X"eb", X"1d", X"d8", X"2a", X"cf", X"10", X"35", X"0e", X"fe", X"0c", X"f4", X"29", X"fe",
                                                        X"1c", X"00", X"ed", X"0e", X"0b", X"07", X"dd", X"f9", X"f3", X"34", X"07", X"07", X"da", X"ee", X"16", X"fe", X"b1", X"00", X"fd", X"d7", X"14", X"c6", X"00", X"16", X"15", X"43",
                                                        X"fc", X"ff", X"d0", X"1b", X"e7", X"01", X"2c", X"01", X"eb", X"0c", X"fa", X"19", X"fb", X"14", X"0f", X"1d", X"0d", X"f2", X"05", X"d8", X"db", X"00", X"17", X"ff", X"16", X"f5",
                                                        X"e1", X"28", X"03", X"eb", X"f9", X"cd", X"0d", X"14", X"02", X"13", X"e9", X"18", X"fa", X"f0", X"08", X"fa", X"ec", X"d9", X"19", X"18", X"fe", X"3e", X"f3", X"00", X"07", X"20",
                                                        X"22", X"09", X"ef", X"fa", X"fa", X"da", X"2a", X"e8", X"1a", X"1e", X"09", X"01", X"0e", X"06", X"ff", X"e9", X"11", X"eb", X"d5", X"ff", X"f5", X"f5", X"eb", X"0f", X"3c", X"e0",
                                                        X"f1", X"c8", X"04", X"fd", X"e9", X"48", X"f1", X"e7", X"11", X"06", X"f2", X"0c", X"16", X"e1", X"e3", X"c6", X"ed", X"ce", X"f7", X"e0", X"01", X"e6", X"29", X"f2", X"4c", X"11",
                                                        X"02", X"ea", X"11", X"e5", X"ed", X"35", X"00", X"00", X"f4", X"03", X"02", X"20", X"f9", X"f6", X"e0", X"00", X"fa", X"07", X"f8", X"e8", X"27", X"f8", X"f4", X"38", X"1b", X"eb",
                                                        X"01", X"d1", X"e5", X"fc", X"bc", X"02", X"fe", X"14", X"15", X"dc", X"10", X"c5", X"f0", X"35", X"fc", X"e7", X"09", X"35", X"f3", X"f5", X"c5", X"f6", X"f3", X"de", X"c4", X"f1",
                                                        X"e1", X"d4", X"13", X"d4", X"dd", X"06", X"e7", X"0a", X"e6", X"f9", X"e0", X"06", X"01", X"ec", X"0b", X"f8", X"03", X"c8", X"09", X"25", X"ff", X"f5", X"f2", X"c1", X"04", X"f5",
                                                        X"e7", X"12", X"10", X"ee", X"cc", X"09", X"07", X"c9", X"07", X"ef", X"ff", X"e8", X"07", X"c8", X"10", X"ef", X"05", X"fe", X"e5", X"03", X"29", X"fc", X"14", X"b5", X"08", X"f3",
                                                        X"f0", X"e7", X"e9", X"fe", X"ee", X"fa", X"fe", X"e4", X"05", X"0c", X"e5", X"f7", X"d6", X"2b", X"0d", X"18", X"f0", X"f7", X"09", X"0d", X"10", X"e4", X"ec", X"0e", X"e4", X"05",
                                                        X"12", X"ef", X"18", X"d0", X"f4", X"c9", X"e7", X"02", X"0a", X"f6", X"fd", X"0c", X"17", X"02", X"f8", X"ee", X"f0", X"25", X"e3", X"bb", X"16", X"f2", X"f1", X"15", X"d2", X"ec",
                                                        X"2b", X"f8", X"b9", X"e6", X"03", X"08", X"d6", X"d1", X"ec", X"36", X"06", X"0e", X"12", X"07", X"e3", X"ff", X"f5", X"02", X"c5", X"fa", X"f8", X"13", X"1f", X"1d", X"f7", X"c7",
                                                        X"03", X"14", X"06", X"fa", X"ff", X"10", X"1f", X"f2", X"4c", X"fa", X"ee", X"00", X"18", X"14", X"d8", X"18", X"fa", X"c9", X"06", X"e1", X"07", X"fd", X"11", X"0d", X"2a", X"0d",
                                                        X"fe", X"20", X"11", X"0b", X"03", X"cc", X"f4", X"29", X"06", X"0d", X"df", X"de", X"fd", X"fb", X"f1", X"fe", X"16", X"fe", X"d3", X"1e", X"17", X"07", X"01", X"03", X"01", X"ed",
                                                        X"0d", X"e6", X"f3", X"fc", X"33", X"f5", X"e9", X"f6", X"32", X"dc", X"df", X"13", X"09", X"08", X"11", X"09", X"fb", X"0f", X"0d", X"fe", X"b9", X"f8", X"fd", X"1f", X"09", X"36",
                                                        X"11", X"11", X"03", X"13", X"ff", X"1b", X"d4", X"18", X"12", X"f5", X"31", X"fa", X"0d", X"fc", X"e0", X"fd", X"04", X"0d", X"07", X"41", X"09", X"fd", X"fc", X"2c", X"0e", X"f9",
                                                        X"d3", X"09", X"f2", X"e9", X"4c", X"e7", X"06", X"1f", X"fa", X"3a", X"13", X"13", X"06", X"0b", X"f4", X"09", X"d2", X"dc", X"e4", X"1f", X"de", X"03", X"00", X"ff", X"11", X"28",
                                                        X"01", X"13", X"05", X"31", X"09", X"fa", X"43", X"fc", X"0c", X"fc", X"34", X"c9", X"17", X"1d", X"08", X"0e", X"fd", X"fc", X"00", X"31", X"15", X"1d", X"0a", X"eb", X"11", X"29",
                                                        X"37", X"1d", X"01", X"4d", X"fe", X"0e", X"ff", X"25", X"09", X"d7", X"1c", X"fa", X"f3", X"f0", X"11", X"11", X"22", X"0f", X"05", X"14", X"05", X"ee", X"ee", X"01", X"f9", X"f3",
                                                        X"e6", X"1a", X"f6", X"ff", X"00", X"d9", X"da", X"42", X"27", X"11", X"17", X"15", X"07", X"21", X"11", X"22", X"0d", X"f9", X"12", X"fd", X"02", X"1b", X"23", X"fd", X"11", X"3a",
                                                        X"10", X"37", X"fd", X"13", X"d8", X"2a", X"2d", X"f5", X"42", X"06", X"fb", X"e7", X"dd", X"2e", X"1b", X"19", X"fb", X"26", X"f9", X"06", X"ec", X"38", X"2d", X"1f", X"f1", X"02",
                                                        X"01", X"df", X"17", X"fd", X"e4", X"de", X"eb", X"25", X"12", X"ff", X"e5", X"34", X"f8", X"01", X"17", X"01", X"f3", X"d1", X"3f", X"de", X"e8", X"db", X"ff", X"e0", X"e8", X"13",
                                                        X"1d", X"47", X"ee", X"0e", X"dd", X"0f", X"13", X"f5", X"0d", X"03", X"f6", X"43", X"14", X"20", X"ed", X"09", X"ed", X"09", X"07", X"03", X"39", X"f9", X"19", X"e8", X"e5", X"1b",
                                                        X"20", X"41", X"19", X"54", X"fa", X"0e", X"0b", X"2c", X"04", X"f2", X"ee", X"ff", X"02", X"fd", X"03", X"0e", X"29", X"f7", X"13", X"03", X"00", X"09", X"0e", X"ea", X"23", X"00",
                                                        X"41", X"eb", X"06", X"2d", X"1c", X"24", X"1b", X"07", X"fe", X"c1", X"f4", X"1c", X"f1", X"37", X"14", X"f5", X"05", X"f9", X"fb", X"e1", X"0b", X"f9", X"eb", X"36", X"fc", X"11",
                                                        X"fd", X"1a", X"29", X"25", X"05", X"02", X"e0", X"fb", X"05", X"f4", X"18", X"02", X"30", X"dc", X"05", X"cd", X"0f", X"1b", X"12", X"48", X"e0", X"ef", X"f2", X"f1", X"fb", X"f4",
                                                        X"dd", X"2c", X"2e", X"ea", X"01", X"54", X"20", X"f9", X"2e", X"eb", X"0b", X"fa", X"da", X"e9", X"ff", X"12", X"c6", X"0e", X"e3", X"29", X"f4", X"12", X"f5", X"f4", X"e2", X"39",
                                                        X"34", X"03", X"c4", X"e7", X"ef", X"f9", X"16", X"f4", X"24", X"f1", X"03", X"cf", X"f7", X"15", X"f7", X"1c", X"26", X"05", X"14", X"01", X"07", X"f6", X"3e", X"1d", X"18", X"f7",
                                                        X"09", X"2c", X"11", X"1d", X"ff", X"3c", X"eb", X"fd", X"29", X"03", X"1a", X"ec", X"23", X"04", X"28", X"f2", X"1c", X"12", X"1f", X"ff", X"23", X"02", X"2d", X"f8", X"df", X"ed",
                                                        X"07", X"eb", X"f8", X"e1", X"e4", X"31", X"1f", X"55", X"13", X"20", X"dd", X"1f", X"22", X"fb", X"e7", X"04", X"e8", X"00", X"1b", X"34", X"fe", X"f0", X"06", X"3b", X"18", X"0f",
                                                        X"0e", X"2d", X"e4", X"f2", X"43", X"09", X"0b", X"cf", X"ec", X"ff", X"f5", X"f4", X"0f", X"10", X"17", X"2c", X"0f", X"f7", X"f0", X"02", X"09", X"f3", X"09", X"f4", X"35", X"19",
                                                        X"e3", X"45", X"24", X"3c", X"ef", X"f7", X"09", X"e6", X"f7", X"02", X"ee", X"f0", X"f5", X"10", X"eb", X"1b", X"d7", X"25", X"07", X"d3", X"15", X"fd", X"34", X"3e", X"eb", X"ff",
                                                        X"54", X"0d", X"f1", X"d9", X"37", X"2c", X"2c", X"bc", X"eb", X"33", X"fb", X"fb", X"e3", X"32", X"05", X"03", X"4c", X"04", X"f8", X"1b", X"1f", X"db", X"03", X"2e", X"00", X"46",
                                                        X"f0", X"2c", X"f1", X"33", X"2f", X"17", X"12", X"fa", X"10", X"f2", X"07", X"ee", X"23", X"2e", X"03", X"e2", X"13", X"13", X"04", X"fd", X"1f", X"0d", X"4e", X"12", X"f4", X"04",
                                                        X"46", X"1b", X"41", X"1e", X"fb", X"e3", X"f0", X"15", X"ed", X"4b", X"f4", X"f8", X"5e", X"09", X"11", X"ef", X"ff", X"fa", X"0e", X"fe", X"fb", X"f9", X"ff", X"02", X"e5", X"33",
                                                        X"08", X"01", X"1f", X"03", X"02", X"fe", X"11", X"06", X"39", X"e9", X"1c", X"58", X"01", X"31", X"fa", X"de", X"24", X"0a", X"31", X"05", X"f9", X"1f", X"d6", X"e3", X"2e", X"e9",
                                                        X"fd", X"de", X"00", X"0a", X"db", X"0b", X"1b", X"00", X"47", X"fa", X"12", X"e2", X"11", X"36", X"e5", X"13", X"0c", X"39", X"0c", X"06", X"f3", X"00", X"25", X"09", X"4b", X"11",
                                                        X"fc", X"f9", X"1b", X"ee", X"08", X"e7", X"0c", X"4f", X"13", X"03", X"e9", X"1c", X"36", X"fc", X"43", X"07", X"fb", X"fa", X"4b", X"19", X"11", X"d5", X"0f", X"14", X"0d", X"29",
                                                        X"f3", X"12", X"ea", X"e6", X"cc", X"f8", X"18", X"ed", X"f9", X"fe", X"12", X"21", X"0a", X"29", X"fd", X"18", X"1f", X"0f", X"10", X"09", X"59", X"e7", X"11", X"0c", X"05", X"fe",
                                                        X"fa", X"f3", X"fa", X"e2", X"f0", X"1f", X"3c", X"41", X"fa", X"05", X"ed", X"05", X"17", X"e4", X"3c", X"15", X"06", X"3f", X"1d", X"3e", X"17", X"fa", X"db", X"f4", X"28", X"f3",
                                                        X"02", X"e8", X"0b", X"fd", X"01", X"20", X"20", X"46", X"0f", X"08", X"10", X"02", X"ec", X"10", X"22", X"01", X"ed", X"07", X"fb", X"f0", X"fc", X"ea", X"33", X"16", X"f3", X"56",
                                                        X"ff", X"0d", X"d6", X"02", X"e8", X"fd", X"e3", X"ea", X"fb", X"0d", X"08", X"d6", X"22", X"3c", X"fb", X"63", X"08", X"0f", X"2b", X"1d", X"08", X"00", X"1b", X"07", X"04", X"cf",
                                                        X"1c", X"10", X"1a", X"d3", X"15", X"29", X"01", X"12", X"fd", X"17", X"2f", X"f7", X"f3", X"12", X"1a", X"fe", X"d5", X"0d", X"eb", X"3b", X"ff", X"28", X"f0", X"ff", X"ef", X"24",
                                                        X"e3", X"f1", X"24", X"05", X"fa", X"e8", X"1a", X"e4", X"ff", X"33", X"f5", X"24", X"fc", X"00", X"f9", X"21", X"fc", X"00", X"de", X"ea", X"fd", X"ea", X"1c", X"f1", X"18", X"e8",
                                                        X"00", X"fc", X"f8", X"f7", X"fb", X"2e", X"f3", X"fa", X"c6", X"f8", X"0a", X"17", X"0f", X"38", X"02", X"32", X"00", X"e2", X"08", X"ff", X"0e", X"10", X"37", X"0f", X"41", X"f4",
                                                        X"06", X"fa", X"da", X"f4", X"f2", X"39", X"04", X"16", X"0b", X"28", X"d0", X"3a", X"fc", X"ea", X"34", X"f2", X"f4", X"da", X"25", X"e3", X"0d", X"13", X"14", X"42", X"eb", X"10",
                                                        X"eb", X"e9", X"26", X"fd", X"3e", X"f5", X"fa", X"0a", X"29", X"29", X"e8", X"e2", X"08", X"dd", X"fa", X"2b", X"fa", X"f6", X"dc", X"12");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"12";
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

