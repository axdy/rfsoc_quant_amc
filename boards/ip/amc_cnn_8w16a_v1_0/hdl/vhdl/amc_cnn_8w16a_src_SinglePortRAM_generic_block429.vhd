-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block429.vhd
-- Created: 2023-08-07 19:04:50
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block429
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage74/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block429 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block429;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block429 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"0d", X"fb", X"0e", X"e8", X"ea", X"f8", X"f3", X"ff", X"07", X"b5", X"06", X"f7", X"d8", X"04",
                                                        X"ef", X"df", X"c6", X"00", X"fe", X"09", X"28", X"09", X"d2", X"a9", X"de", X"ec", X"f7", X"f1", X"f2", X"e1", X"13", X"fb", X"db", X"f5", X"fb", X"fc", X"cb", X"05", X"df", X"f2",
                                                        X"05", X"04", X"00", X"fc", X"ec", X"da", X"fd", X"e2", X"ff", X"02", X"f8", X"f0", X"13", X"0b", X"11", X"19", X"0a", X"db", X"f3", X"ff", X"f2", X"f7", X"ec", X"eb", X"ca", X"03",
                                                        X"ff", X"ef", X"eb", X"bc", X"e8", X"d4", X"03", X"0d", X"0d", X"f6", X"f3", X"ce", X"ea", X"ea", X"be", X"00", X"03", X"f6", X"cf", X"03", X"d5", X"b1", X"ff", X"ac", X"0b", X"e4",
                                                        X"f7", X"f0", X"f2", X"dc", X"0a", X"08", X"07", X"ec", X"e4", X"0f", X"bd", X"c4", X"ef", X"0f", X"e0", X"fe", X"f9", X"bf", X"e7", X"f1", X"9b", X"f5", X"04", X"1f", X"28", X"04",
                                                        X"e1", X"ef", X"19", X"13", X"eb", X"dc", X"cf", X"c6", X"e1", X"fc", X"a4", X"07", X"fb", X"08", X"e9", X"cd", X"0d", X"15", X"fd", X"fa", X"f7", X"01", X"02", X"f3", X"ed", X"f7",
                                                        X"b3", X"08", X"0f", X"16", X"e0", X"d8", X"d8", X"f6", X"ef", X"15", X"dd", X"00", X"df", X"f3", X"05", X"07", X"08", X"00", X"00", X"e5", X"fa", X"e8", X"01", X"0b", X"fc", X"e8",
                                                        X"da", X"fb", X"e2", X"0b", X"0b", X"04", X"f1", X"00", X"05", X"ff", X"2f", X"f3", X"f5", X"c2", X"ff", X"11", X"08", X"fd", X"13", X"d7", X"e2", X"f4", X"16", X"fe", X"f7", X"f8",
                                                        X"dd", X"22", X"07", X"26", X"0b", X"cc", X"ed", X"e9", X"e8", X"cc", X"e6", X"06", X"2a", X"fe", X"00", X"08", X"f3", X"d2", X"0c", X"b9", X"f8", X"e2", X"01", X"e9", X"1a", X"dc",
                                                        X"0f", X"fc", X"d4", X"ec", X"fb", X"06", X"1c", X"dc", X"de", X"cd", X"f3", X"dc", X"fc", X"02", X"f5", X"0f", X"f1", X"ee", X"24", X"01", X"ff", X"d7", X"e4", X"df", X"1b", X"fb",
                                                        X"f4", X"c1", X"f8", X"f4", X"04", X"db", X"03", X"ff", X"e7", X"ff", X"f8", X"07", X"f4", X"00", X"fb", X"f2", X"fe", X"e6", X"fb", X"f7", X"e8", X"0c", X"06", X"fd", X"a3", X"f0",
                                                        X"f4", X"ec", X"06", X"e6", X"df", X"15", X"fe", X"00", X"ed", X"f6", X"f3", X"f1", X"fd", X"ee", X"f7", X"06", X"fd", X"05", X"05", X"12", X"ec", X"e2", X"06", X"ca", X"eb", X"0a",
                                                        X"0a", X"f2", X"e9", X"11", X"d2", X"f7", X"fa", X"0e", X"e4", X"05", X"da", X"b7", X"0f", X"f2", X"ea", X"f4", X"d8", X"09", X"fb", X"f1", X"c1", X"03", X"f8", X"e0", X"ff", X"d8",
                                                        X"e2", X"10", X"ed", X"d1", X"f8", X"ee", X"00", X"f0", X"ee", X"fc", X"ee", X"fc", X"fe", X"e8", X"05", X"04", X"1f", X"03", X"f8", X"cf", X"03", X"ea", X"d8", X"e5", X"ef", X"ef",
                                                        X"ca", X"f2", X"07", X"0f", X"d9", X"e9", X"0d", X"fb", X"fc", X"ce", X"e9", X"fb", X"f3", X"23", X"14", X"ed", X"ba", X"08", X"04", X"fe", X"e3", X"df", X"19", X"ea", X"fb", X"eb",
                                                        X"03", X"e5", X"17", X"d6", X"ee", X"f9", X"ff", X"fe", X"fd", X"03", X"fa", X"01", X"1a", X"c3", X"f8", X"ec", X"fe", X"ee", X"16", X"f3", X"0c", X"fb", X"e0", X"fb", X"03", X"f8",
                                                        X"06", X"e1", X"f1", X"e5", X"0c", X"22", X"ff", X"ee", X"14", X"24", X"f5", X"f5", X"d2", X"fe", X"04", X"e7", X"37", X"1a", X"03", X"14", X"07", X"f1", X"05", X"f8", X"f9", X"11",
                                                        X"ff", X"f9", X"f6", X"fe", X"08", X"14", X"c8", X"f4", X"e3", X"04", X"fe", X"c7", X"fb", X"ed", X"08", X"d2", X"e7", X"01", X"13", X"f5", X"01", X"1b", X"1d", X"1e", X"fd", X"48",
                                                        X"ea", X"e4", X"07", X"fe", X"d7", X"22", X"1a", X"0c", X"f0", X"f0", X"fa", X"14", X"1c", X"f2", X"fd", X"07", X"07", X"d5", X"0b", X"f9", X"02", X"e0", X"ec", X"ff", X"2a", X"fd",
                                                        X"fc", X"f9", X"da", X"1f", X"09", X"f8", X"fb", X"13", X"fe", X"fe", X"2c", X"1a", X"0a", X"0d", X"c9", X"00", X"f7", X"fe", X"27", X"f6", X"f2", X"fd", X"0b", X"3f", X"09", X"10",
                                                        X"06", X"1b", X"ef", X"10", X"2c", X"ff", X"fb", X"f3", X"16", X"ee", X"03", X"e2", X"00", X"47", X"05", X"21", X"24", X"0f", X"f1", X"ff", X"2b", X"f0", X"0b", X"f6", X"cc", X"31",
                                                        X"ec", X"dd", X"0e", X"0e", X"13", X"13", X"23", X"dd", X"00", X"01", X"e3", X"fc", X"03", X"ec", X"06", X"26", X"24", X"11", X"f8", X"2d", X"09", X"14", X"ec", X"46", X"16", X"ef",
                                                        X"d9", X"fc", X"f5", X"f5", X"fa", X"f5", X"1d", X"19", X"1c", X"f4", X"07", X"eb", X"17", X"f7", X"10", X"f8", X"26", X"02", X"04", X"f8", X"27", X"3b", X"e4", X"3e", X"01", X"25",
                                                        X"16", X"fe", X"fa", X"34", X"fd", X"f6", X"47", X"fb", X"07", X"17", X"f7", X"fa", X"ea", X"49", X"fb", X"0e", X"11", X"15", X"27", X"e1", X"0b", X"1b", X"56", X"f4", X"f6", X"1a",
                                                        X"f7", X"1c", X"16", X"23", X"fe", X"3f", X"09", X"15", X"03", X"29", X"09", X"14", X"ed", X"fb", X"ff", X"fc", X"21", X"1d", X"07", X"36", X"06", X"da", X"fb", X"1f", X"00", X"f9",
                                                        X"f0", X"0e", X"29", X"ea", X"05", X"11", X"0c", X"d8", X"27", X"cb", X"fe", X"eb", X"fe", X"ff", X"ee", X"0d", X"fe", X"16", X"2c", X"f1", X"0c", X"07", X"07", X"d7", X"34", X"18",
                                                        X"f2", X"35", X"ff", X"fa", X"0d", X"f6", X"0d", X"07", X"2d", X"02", X"0b", X"e0", X"f4", X"e2", X"05", X"ff", X"f9", X"19", X"fe", X"00", X"fb", X"f1", X"e4", X"ff", X"f6", X"0e",
                                                        X"01", X"09", X"3c", X"10", X"11", X"f4", X"ff", X"1b", X"02", X"22", X"0c", X"18", X"d0", X"0b", X"12", X"01", X"f9", X"f2", X"d8", X"01", X"0b", X"cd", X"f3", X"37", X"11", X"0a",
                                                        X"21", X"ff", X"f1", X"f4", X"f7", X"f1", X"ed", X"14", X"25", X"e6", X"e4", X"2f", X"09", X"f8", X"11", X"12", X"0e", X"0d", X"e5", X"f1", X"e9", X"05", X"f5", X"e6", X"24", X"01",
                                                        X"da", X"f2", X"ff", X"43", X"07", X"11", X"f0", X"19", X"ef", X"f5", X"1e", X"05", X"08", X"de", X"06", X"1a", X"01", X"f6", X"fc", X"34", X"fb", X"ed", X"ea", X"16", X"17", X"fd",
                                                        X"22", X"fd", X"f9", X"0a", X"00", X"f5", X"f3", X"06", X"19", X"fd", X"f9", X"13", X"0e", X"22", X"f1", X"fd", X"c2", X"02", X"02", X"e9", X"04", X"11", X"fe", X"c6", X"1a", X"fe",
                                                        X"f8", X"fa", X"d7", X"e9", X"ea", X"ff", X"39", X"f3", X"0c", X"e6", X"0f", X"f0", X"e7", X"37", X"16", X"0b", X"fe", X"0c", X"e2", X"0a", X"db", X"ff", X"3f", X"f5", X"01", X"02",
                                                        X"33", X"f7", X"ef", X"09", X"fe", X"f0", X"13", X"11", X"1e", X"e6", X"1d", X"f9", X"d6", X"fd", X"fc", X"f7", X"21", X"fa", X"f3", X"d5", X"fe", X"03", X"e0", X"08", X"f3", X"e1",
                                                        X"07", X"f6", X"18", X"f4", X"f5", X"fc", X"df", X"fa", X"f2", X"0f", X"f9", X"dc", X"f7", X"f5", X"eb", X"16", X"05", X"fb", X"1c", X"f2", X"fd", X"e7", X"1f", X"12", X"ec", X"3d",
                                                        X"12", X"e2", X"f7", X"ec", X"eb", X"f0", X"03", X"f7", X"01", X"f4", X"0e", X"1a", X"f9", X"e6", X"f7", X"39", X"fe", X"09", X"00", X"14", X"e9", X"e2", X"e4", X"14", X"05", X"eb",
                                                        X"fd", X"09", X"02", X"16", X"22", X"d7", X"ff", X"22", X"01", X"06", X"e2", X"11", X"0e", X"f5", X"16", X"01", X"f5", X"fe", X"23", X"e9", X"13", X"22", X"0d", X"09", X"f4", X"1a",
                                                        X"03", X"11", X"1c", X"0a", X"f4", X"08", X"00", X"ff", X"06", X"e0", X"fe", X"25", X"0b", X"12", X"eb", X"24", X"d5", X"fb", X"07", X"fd", X"26", X"fb", X"11", X"06", X"0f", X"36",
                                                        X"0e", X"5b", X"f4", X"02", X"04", X"1b", X"1a", X"1d", X"21", X"17", X"0b", X"fe", X"03", X"f8", X"d7", X"02", X"2b", X"e7", X"0e", X"3d", X"fa", X"07", X"f0", X"44", X"fc", X"10",
                                                        X"00", X"f9", X"11", X"ea", X"ff", X"3c", X"34", X"48", X"19", X"1f", X"ff", X"11", X"3b", X"51", X"05", X"f6", X"23", X"fa", X"0a", X"e9", X"41", X"f1", X"20", X"1b", X"0b", X"39",
                                                        X"19", X"20", X"2d", X"26", X"18", X"f9", X"f0", X"ee", X"06", X"16", X"37", X"f6", X"e7", X"2a", X"08", X"46", X"12", X"29", X"e9", X"37", X"16", X"11", X"f6", X"f8", X"0d", X"f3",
                                                        X"23", X"0f", X"22", X"24", X"f8", X"1c", X"11", X"01", X"e3", X"07", X"24", X"06", X"1e", X"02", X"ff", X"03", X"0d", X"e6", X"15", X"e3", X"0f", X"51", X"0f", X"08", X"e1", X"f0",
                                                        X"01", X"0c", X"25", X"04", X"f4", X"06", X"2b", X"dd", X"12", X"20", X"eb", X"ef", X"ef", X"02", X"f6", X"30", X"ee", X"ff", X"15", X"fa", X"f8", X"10", X"20", X"09", X"33", X"00",
                                                        X"02", X"12", X"e6", X"0b", X"09", X"f7", X"fd", X"f8", X"3d", X"ff", X"f3", X"f2", X"de", X"d5", X"f5", X"df", X"f5", X"09", X"f3", X"fc", X"2e", X"ec", X"f1", X"fa", X"f1", X"db",
                                                        X"f8", X"0b", X"12", X"e7", X"00", X"ee", X"f4", X"ed", X"ff", X"05", X"d8", X"05", X"f3", X"0e", X"da", X"ff", X"ef", X"06", X"11", X"ce", X"00", X"f9", X"fa", X"d1", X"f7", X"03",
                                                        X"f0", X"f5", X"d9", X"fa", X"f5", X"fc", X"04", X"f2", X"1e", X"11", X"e4", X"34", X"00", X"e6", X"ff", X"f4", X"f1", X"f4", X"f4", X"e6", X"dd", X"06", X"01", X"fe", X"f2", X"ee",
                                                        X"d4", X"c1", X"ff", X"27", X"f7", X"fc", X"f3", X"1a", X"15", X"e4", X"1f", X"f8", X"0a", X"dd", X"f5", X"e1", X"01", X"f8", X"fa", X"bb", X"f2", X"fc", X"df", X"d0", X"d6", X"fa",
                                                        X"c7", X"fc", X"f8", X"12", X"db", X"13", X"f0", X"e1", X"07", X"f5", X"fa", X"f4", X"0b", X"0c", X"12", X"dd", X"e0", X"05", X"0b", X"f1", X"12", X"0a", X"ef", X"0d", X"f6", X"c1",
                                                        X"07", X"e6", X"11", X"fc", X"dc", X"02", X"e8", X"fc", X"0b", X"0a", X"10", X"13", X"01", X"fc", X"05", X"ca", X"09", X"eb", X"ec", X"df", X"04", X"fd", X"bd", X"ff", X"0c", X"ea",
                                                        X"e2", X"17", X"c7", X"ef", X"0b", X"07", X"14", X"ef", X"1c", X"fb", X"eb", X"f7", X"ea", X"02", X"fd", X"13", X"db", X"1e", X"cc", X"35", X"02", X"1b", X"f6", X"f7", X"f6", X"dd",
                                                        X"0a", X"03", X"24", X"fe", X"fc", X"08", X"e5", X"15", X"e9", X"d7", X"06", X"b7", X"fa", X"fc", X"ef", X"fd", X"09", X"03", X"1d", X"fd", X"f0", X"13", X"26", X"e8", X"f5", X"15",
                                                        X"fb", X"ce", X"f2", X"fd", X"1e", X"09", X"dd", X"fe", X"cf", X"f2", X"fe", X"0b", X"da", X"e5", X"e6", X"f5", X"e6", X"f1", X"f3", X"f1", X"26", X"dc", X"07", X"18", X"04", X"01",
                                                        X"01", X"f0", X"34", X"f5", X"df", X"d8", X"ff", X"e0", X"0b", X"0e", X"1f", X"f4", X"e3", X"fe", X"2e", X"02", X"fe", X"f8", X"04", X"26", X"16", X"20", X"03", X"c6", X"e6", X"0e",
                                                        X"e6", X"21", X"f3", X"05", X"0c", X"ff", X"ff", X"fb", X"fe", X"2d", X"02", X"c5", X"0f", X"17", X"fe", X"00", X"e4", X"da", X"f9", X"fa", X"15", X"f2", X"09", X"e1", X"09", X"ff",
                                                        X"cd", X"e8", X"04", X"13", X"e4", X"02", X"00", X"0f", X"0d", X"f6", X"16", X"f5", X"fe", X"03", X"1d", X"e4", X"16", X"ca", X"07", X"28", X"fa", X"fa", X"d6", X"e3", X"00", X"fa",
                                                        X"f4", X"ff", X"fa", X"e7", X"03", X"28", X"dc", X"e2", X"08", X"f8", X"ed", X"06", X"26", X"0a", X"14", X"fe", X"d8", X"fd", X"0b", X"f5", X"fa", X"d2", X"14", X"26", X"02", X"f3",
                                                        X"fa", X"0b", X"1c", X"ed", X"dd", X"f7", X"22", X"14", X"09", X"e9", X"f9", X"36", X"d5", X"2e", X"13", X"e6", X"ff", X"fa", X"e4", X"33", X"eb", X"f2", X"1c", X"02", X"08", X"fe",
                                                        X"18", X"ea", X"eb", X"ce", X"0b", X"11", X"f8", X"06", X"f6", X"ee", X"14", X"fc", X"b4", X"05", X"fc", X"09", X"df", X"09", X"e8", X"31", X"f8", X"24", X"f8", X"f7", X"dc", X"0e",
                                                        X"e8", X"f7", X"08", X"06", X"09", X"fb", X"09", X"19", X"2d", X"ff", X"0f", X"ef", X"fc", X"03", X"09", X"e7", X"18", X"16", X"38", X"f9", X"07", X"13", X"e9", X"0c", X"db", X"ea",
                                                        X"f7", X"f4", X"e8", X"e8", X"11", X"e6", X"ec", X"fd", X"e0", X"fd", X"07", X"f7", X"fe", X"0d", X"f0", X"2d", X"f6", X"0c", X"fe", X"fc", X"0d", X"ef", X"24", X"01", X"2f", X"0b",
                                                        X"05", X"f1", X"f3", X"29", X"db", X"ee", X"14", X"e9", X"fa", X"0f", X"01", X"08", X"fc", X"00", X"fe", X"09", X"fe", X"f5", X"0a", X"ea", X"1c", X"19", X"f2", X"e6", X"07", X"0a",
                                                        X"26", X"36", X"0a", X"00", X"3c", X"fa", X"ef", X"15", X"da", X"13", X"01", X"52", X"ff", X"2c", X"0b", X"22", X"ee", X"0c", X"fe", X"f8", X"f0", X"fd", X"f2", X"03", X"1a", X"f1",
                                                        X"20", X"09", X"19", X"38", X"0d", X"18", X"ff", X"21", X"05", X"09", X"de", X"fb", X"0b", X"06", X"39", X"3a", X"e2", X"4c", X"01", X"e4", X"14", X"04", X"ea", X"2c", X"03", X"1c",
                                                        X"45", X"01", X"02", X"18", X"18", X"fc", X"29", X"e4", X"14", X"39", X"05", X"07", X"3a", X"f8", X"fa", X"0d", X"0f", X"05", X"05", X"e7", X"ed", X"1c", X"1b", X"1b", X"07", X"19",
                                                        X"0d", X"1d", X"2a", X"32", X"f7", X"fc", X"37", X"02", X"0c", X"fe", X"e6", X"1d", X"0c", X"36", X"21", X"4a", X"12", X"0a", X"f5", X"2c", X"0d", X"0d", X"4e", X"ea", X"07", X"f7",
                                                        X"32", X"ee", X"eb", X"3b", X"f5", X"ff", X"fa", X"23", X"32", X"05", X"fb", X"0a", X"66", X"f2", X"00", X"f4", X"1f", X"1b", X"1a", X"f7", X"07", X"1a", X"03", X"00", X"f6", X"11",
                                                        X"eb", X"07", X"ce", X"fa", X"00", X"f3", X"22", X"f7", X"0b", X"fa", X"10", X"3a", X"04", X"fd", X"dd", X"04", X"2d", X"f7", X"45", X"f9", X"02", X"1c", X"25", X"fe", X"ee", X"0f",
                                                        X"f8", X"ff", X"f2", X"1f", X"2b", X"f0", X"1b", X"05", X"2d", X"14", X"fd", X"eb", X"e5", X"00", X"fd", X"1f", X"09", X"2c", X"06", X"06", X"d9", X"2a", X"eb", X"00", X"e2", X"00",
                                                        X"06", X"11", X"0e", X"f0", X"2c", X"02", X"fc", X"4e", X"0c", X"00", X"14", X"0f", X"e7", X"fe", X"ec", X"ed", X"0d", X"0a", X"f5", X"25", X"27", X"e5", X"fd", X"fc", X"ff", X"f6",
                                                        X"2b", X"08", X"10", X"fe", X"00", X"e2", X"ff", X"e9", X"22", X"2a", X"ef", X"28", X"03", X"03", X"12", X"1f", X"f4", X"0c", X"f7", X"04", X"f3", X"ea", X"08", X"11", X"00", X"14",
                                                        X"eb", X"e2", X"f3", X"e9", X"ef", X"00", X"22", X"cd", X"1a", X"01", X"de", X"03", X"0a", X"08", X"13", X"ce", X"10", X"e2", X"09", X"09", X"fc", X"f8", X"12", X"f4", X"fb", X"0a",
                                                        X"02", X"fb", X"0c", X"fd", X"f6", X"1d", X"ce", X"e0", X"08", X"10", X"f0", X"02", X"f2", X"26", X"1e", X"f5", X"c4", X"e8", X"06", X"13", X"ee", X"21", X"02", X"0e", X"06", X"32",
                                                        X"07", X"e5", X"07", X"dc", X"20", X"f1", X"c7", X"fb", X"fa", X"fd", X"fc", X"d0", X"0b", X"df", X"00", X"ee", X"fa", X"fc", X"d2", X"f3", X"08", X"15", X"2f", X"03", X"f1", X"e8",
                                                        X"35", X"da", X"19", X"e6", X"fb", X"f4", X"f6", X"ff", X"fc", X"21", X"fb", X"fa", X"d9", X"eb", X"09", X"14", X"00", X"f4", X"29", X"cb", X"ff", X"e1", X"08", X"0b", X"14", X"e3",
                                                        X"15", X"fc", X"1f", X"fc", X"f9", X"e9", X"d6", X"1f", X"24", X"0b", X"0e", X"3c", X"06", X"09", X"2b", X"fc", X"fc", X"f0", X"05", X"e7", X"f8", X"0b", X"07", X"17", X"12", X"eb",
                                                        X"0b", X"ef", X"e9", X"08", X"07", X"f2", X"01", X"f7", X"08", X"00", X"f0", X"05", X"2a", X"dd", X"e8", X"d5", X"fc", X"25", X"eb", X"06", X"f1", X"20", X"f8", X"06", X"18", X"f5",
                                                        X"f4", X"ee", X"1e", X"2e", X"e6", X"fc", X"ec", X"f8", X"1a", X"f2", X"fc", X"2c", X"ed", X"08", X"f2", X"ef", X"f5", X"0d", X"ca", X"21", X"0f", X"f2", X"1e", X"48", X"14", X"23",
                                                        X"11", X"00", X"35", X"00", X"28", X"f0", X"fe", X"f5", X"29", X"20", X"0f", X"16", X"f1", X"f0", X"f9", X"fe", X"1a", X"2c", X"1c", X"eb");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"eb";
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

