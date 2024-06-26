-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block383.vhd
-- Created: 2023-08-07 19:04:44
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block383
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage32/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block383 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block383;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block383 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"d7", X"fc", X"00", X"1c", X"f4", X"23", X"31", X"ec", X"ff", X"41", X"fb", X"fc", X"2b", X"49",
                                                        X"2e", X"01", X"4b", X"11", X"08", X"15", X"f8", X"e1", X"eb", X"24", X"0b", X"e7", X"0c", X"e3", X"30", X"f9", X"08", X"1d", X"5d", X"01", X"ef", X"e3", X"e6", X"1d", X"22", X"37",
                                                        X"ff", X"2f", X"0c", X"f5", X"fb", X"33", X"1e", X"0c", X"df", X"f5", X"16", X"f6", X"23", X"f9", X"3c", X"58", X"01", X"30", X"1a", X"1d", X"08", X"ef", X"e9", X"00", X"27", X"00",
                                                        X"f4", X"f3", X"35", X"25", X"d7", X"1b", X"10", X"43", X"19", X"1b", X"dd", X"10", X"db", X"00", X"52", X"f8", X"f4", X"09", X"10", X"11", X"f5", X"cf", X"12", X"f4", X"f6", X"0c",
                                                        X"3a", X"0e", X"31", X"0e", X"18", X"ef", X"02", X"fd", X"1d", X"f9", X"1b", X"16", X"04", X"15", X"f5", X"33", X"f8", X"05", X"0c", X"05", X"3b", X"ec", X"01", X"0f", X"0b", X"3a",
                                                        X"06", X"3d", X"0a", X"38", X"26", X"fe", X"e9", X"fb", X"29", X"0e", X"5a", X"f4", X"03", X"1a", X"2d", X"08", X"17", X"35", X"14", X"e0", X"18", X"01", X"0d", X"02", X"ea", X"13",
                                                        X"26", X"04", X"02", X"14", X"fc", X"13", X"1c", X"0a", X"f2", X"2f", X"05", X"0e", X"ec", X"0d", X"1f", X"f9", X"0e", X"fd", X"10", X"fb", X"e1", X"05", X"3b", X"3e", X"06", X"00",
                                                        X"ec", X"fd", X"18", X"4a", X"1b", X"fc", X"16", X"fc", X"02", X"04", X"f0", X"0a", X"3b", X"37", X"f1", X"d1", X"09", X"f8", X"33", X"32", X"2f", X"25", X"20", X"fd", X"fa", X"18",
                                                        X"29", X"f6", X"03", X"09", X"01", X"20", X"f0", X"04", X"04", X"f8", X"f5", X"0f", X"d0", X"e6", X"fe", X"08", X"0b", X"1f", X"f7", X"ed", X"09", X"14", X"03", X"0e", X"2d", X"15",
                                                        X"f7", X"f0", X"eb", X"0e", X"0d", X"d1", X"39", X"3a", X"da", X"ff", X"01", X"38", X"08", X"11", X"0c", X"30", X"ff", X"f6", X"37", X"fd", X"08", X"27", X"d4", X"e0", X"0d", X"26",
                                                        X"e7", X"d9", X"f0", X"f8", X"28", X"05", X"1b", X"e6", X"f6", X"ee", X"01", X"eb", X"1f", X"07", X"e2", X"f0", X"fd", X"d8", X"12", X"e4", X"fc", X"58", X"ed", X"fc", X"1e", X"11",
                                                        X"fb", X"00", X"27", X"0b", X"10", X"2b", X"03", X"38", X"07", X"d4", X"0f", X"f7", X"dd", X"f1", X"d3", X"fd", X"0c", X"db", X"e4", X"e7", X"12", X"01", X"11", X"38", X"fd", X"06",
                                                        X"e1", X"0c", X"04", X"06", X"dc", X"ed", X"0c", X"13", X"ea", X"2c", X"09", X"d6", X"f3", X"dd", X"fc", X"11", X"f3", X"e9", X"1f", X"ed", X"bd", X"04", X"fa", X"f7", X"0a", X"21",
                                                        X"d4", X"e8", X"fc", X"0d", X"f4", X"f5", X"ef", X"14", X"19", X"f8", X"e7", X"fb", X"f2", X"ec", X"ce", X"0e", X"25", X"3d", X"03", X"e6", X"07", X"07", X"19", X"22", X"fc", X"0a",
                                                        X"a8", X"05", X"ea", X"04", X"01", X"e1", X"ee", X"ec", X"07", X"25", X"07", X"fa", X"32", X"09", X"08", X"ff", X"1f", X"02", X"e8", X"f1", X"0a", X"03", X"0c", X"c8", X"fc", X"af",
                                                        X"eb", X"f7", X"16", X"07", X"f1", X"06", X"b6", X"e8", X"06", X"fe", X"db", X"cb", X"0b", X"f8", X"04", X"a9", X"06", X"f1", X"0d", X"15", X"ed", X"f8", X"e4", X"fb", X"08", X"ee",
                                                        X"e7", X"1f", X"17", X"dc", X"0e", X"17", X"f4", X"eb", X"11", X"29", X"07", X"f3", X"11", X"0d", X"f1", X"e4", X"d7", X"dd", X"ee", X"e3", X"15", X"f9", X"0d", X"f8", X"04", X"d6",
                                                        X"f0", X"fa", X"b3", X"06", X"fc", X"e9", X"f7", X"14", X"1d", X"20", X"f5", X"09", X"ec", X"f9", X"05", X"34", X"04", X"ec", X"c7", X"fc", X"e8", X"0e", X"e1", X"f3", X"21", X"cb",
                                                        X"fd", X"f3", X"f9", X"13", X"eb", X"e2", X"0e", X"15", X"04", X"f6", X"02", X"db", X"46", X"00", X"fe", X"fa", X"fd", X"ed", X"df", X"e7", X"02", X"1a", X"e3", X"01", X"ee", X"f5",
                                                        X"1d", X"17", X"da", X"1b", X"db", X"f1", X"1c", X"51", X"ef", X"0d", X"33", X"f0", X"1d", X"fd", X"ee", X"11", X"ff", X"12", X"01", X"24", X"21", X"e3", X"02", X"07", X"03", X"14",
                                                        X"f8", X"ed", X"07", X"13", X"2c", X"05", X"06", X"f3", X"1f", X"d1", X"12", X"1f", X"04", X"e6", X"ec", X"f9", X"da", X"ec", X"e2", X"10", X"f3", X"09", X"ef", X"f1", X"0b", X"11",
                                                        X"d1", X"29", X"f8", X"44", X"e7", X"20", X"0a", X"42", X"17", X"21", X"f8", X"f7", X"fa", X"f7", X"26", X"32", X"df", X"1e", X"06", X"1c", X"0e", X"0d", X"30", X"04", X"09", X"f1",
                                                        X"14", X"0c", X"02", X"12", X"e3", X"e1", X"f6", X"e8", X"19", X"0d", X"fe", X"0e", X"db", X"33", X"02", X"ff", X"ed", X"fa", X"fe", X"19", X"30", X"1e", X"0a", X"f1", X"02", X"34",
                                                        X"f9", X"f7", X"3a", X"0a", X"e9", X"18", X"d3", X"00", X"05", X"00", X"3a", X"25", X"ec", X"f6", X"13", X"57", X"06", X"1b", X"06", X"07", X"05", X"0c", X"59", X"f1", X"17", X"e7",
                                                        X"2a", X"dd", X"17", X"12", X"04", X"0d", X"fd", X"0c", X"e2", X"f8", X"07", X"1b", X"fc", X"e8", X"fb", X"fc", X"2c", X"29", X"d7", X"ef", X"f5", X"1a", X"fc", X"08", X"09", X"0c",
                                                        X"ec", X"0d", X"d5", X"f1", X"fd", X"f3", X"07", X"e9", X"16", X"d0", X"fc", X"38", X"0e", X"07", X"d5", X"1f", X"02", X"01", X"0a", X"04", X"04", X"21", X"02", X"23", X"36", X"16",
                                                        X"ea", X"e3", X"f5", X"17", X"f1", X"f6", X"27", X"00", X"57", X"01", X"fa", X"00", X"ea", X"db", X"27", X"f6", X"02", X"2c", X"fb", X"15", X"2c", X"f4", X"f7", X"14", X"57", X"f2",
                                                        X"0d", X"f9", X"45", X"0b", X"28", X"e6", X"0f", X"fd", X"f2", X"f2", X"08", X"18", X"ff", X"04", X"37", X"f6", X"fc", X"33", X"26", X"22", X"ff", X"e9", X"13", X"e5", X"0c", X"10",
                                                        X"10", X"41", X"0a", X"04", X"f5", X"01", X"0b", X"eb", X"ef", X"09", X"fd", X"1e", X"14", X"23", X"02", X"1f", X"2c", X"dc", X"f6", X"fe", X"24", X"fb", X"08", X"12", X"38", X"3f",
                                                        X"34", X"09", X"0f", X"c3", X"0a", X"ee", X"25", X"08", X"18", X"09", X"30", X"f9", X"f4", X"06", X"0e", X"fd", X"e3", X"22", X"f6", X"dc", X"07", X"03", X"0c", X"3c", X"19", X"fb",
                                                        X"02", X"fa", X"fd", X"09", X"d4", X"1b", X"39", X"09", X"05", X"46", X"08", X"f6", X"21", X"29", X"1a", X"fc", X"2d", X"10", X"f3", X"00", X"f9", X"e8", X"ec", X"38", X"f0", X"2d",
                                                        X"05", X"15", X"22", X"fc", X"1c", X"01", X"09", X"02", X"0a", X"d7", X"dd", X"38", X"f9", X"f1", X"f3", X"32", X"0d", X"19", X"eb", X"0a", X"d2", X"0d", X"28", X"08", X"ff", X"e2",
                                                        X"0e", X"e2", X"24", X"13", X"f9", X"f4", X"ec", X"04", X"e4", X"29", X"16", X"03", X"13", X"11", X"0f", X"e6", X"18", X"e8", X"2e", X"07", X"01", X"b9", X"fc", X"fc", X"d6", X"19",
                                                        X"f3", X"0a", X"e2", X"f8", X"fb", X"df", X"f8", X"e1", X"e9", X"1c", X"02", X"f6", X"f3", X"06", X"dd", X"e0", X"18", X"f9", X"f3", X"fa", X"03", X"03", X"0d", X"e5", X"fd", X"2f",
                                                        X"09", X"0a", X"f0", X"e8", X"f0", X"dd", X"fb", X"f5", X"f1", X"05", X"14", X"15", X"0c", X"ee", X"0d", X"19", X"ef", X"dd", X"f8", X"e9", X"23", X"14", X"e7", X"e5", X"05", X"f6",
                                                        X"f3", X"00", X"10", X"da", X"05", X"ea", X"fc", X"1d", X"05", X"ee", X"da", X"ea", X"ed", X"09", X"10", X"fa", X"07", X"01", X"e4", X"03", X"10", X"cd", X"13", X"c2", X"fd", X"f5",
                                                        X"ff", X"13", X"1d", X"ec", X"ec", X"f5", X"03", X"fe", X"34", X"e8", X"11", X"0d", X"04", X"24", X"f3", X"fb", X"cd", X"13", X"19", X"f2", X"1d", X"f9", X"00", X"0d", X"df", X"14",
                                                        X"fe", X"05", X"0a", X"ff", X"f7", X"ec", X"0f", X"f6", X"22", X"16", X"31", X"02", X"0d", X"00", X"ec", X"dc", X"18", X"33", X"ec", X"ca", X"04", X"da", X"1b", X"10", X"ef", X"fc",
                                                        X"09", X"fd", X"07", X"11", X"46", X"2c", X"0d", X"46", X"00", X"dd", X"00", X"fa", X"0a", X"e2", X"e6", X"0f", X"35", X"ff", X"0a", X"12", X"0d", X"fc", X"1f", X"05", X"11", X"fd",
                                                        X"14", X"09", X"dd", X"37", X"0a", X"12", X"e9", X"fb", X"00", X"1b", X"fb", X"30", X"fa", X"1c", X"0b", X"e8", X"f2", X"0f", X"22", X"43", X"21", X"05", X"00", X"f9", X"00", X"f8",
                                                        X"01", X"e7", X"f1", X"fa", X"07", X"08", X"0d", X"11", X"f8", X"db", X"f5", X"f3", X"df", X"08", X"e7", X"dd", X"00", X"f1", X"f9", X"ea", X"f5", X"45", X"f6", X"09", X"16", X"39",
                                                        X"0f", X"07", X"11", X"fe", X"f9", X"12", X"eb", X"2c", X"fd", X"d2", X"01", X"09", X"ef", X"f0", X"07", X"17", X"1a", X"0b", X"fa", X"f5", X"f7", X"f4", X"1e", X"29", X"f0", X"f3",
                                                        X"00", X"fc", X"ed", X"0e", X"ee", X"1f", X"f4", X"05", X"f3", X"f1", X"fd", X"e4", X"2a", X"16", X"ec", X"20", X"eb", X"f3", X"09", X"fa", X"05", X"1c", X"f8", X"10", X"cb", X"09",
                                                        X"f4", X"fa", X"d7", X"fe", X"0b", X"d8", X"06", X"ca", X"f2", X"02", X"22", X"35", X"21", X"06", X"cc", X"fc", X"fa", X"10", X"08", X"05", X"ec", X"e4", X"ee", X"11", X"f3", X"e0",
                                                        X"09", X"3b", X"fa", X"f0", X"fd", X"02", X"14", X"ec", X"f7", X"d6", X"d4", X"2b", X"f2", X"de", X"ff", X"f1", X"f9", X"19", X"eb", X"f6", X"d8", X"f8", X"f5", X"0d", X"02", X"f2",
                                                        X"15", X"2a", X"f4", X"b7", X"f6", X"0a", X"dc", X"c8", X"e0", X"02", X"f3", X"e8", X"02", X"f6", X"ed", X"ea", X"fd", X"c5", X"01", X"ee", X"d4", X"eb", X"fa", X"1d", X"0a", X"f9",
                                                        X"0b", X"f7", X"e0", X"f2", X"18", X"15", X"ef", X"e3", X"fe", X"08", X"f1", X"eb", X"0f", X"0b", X"08", X"f1", X"15", X"f6", X"fa", X"05", X"fc", X"d3", X"14", X"fa", X"fa", X"c1",
                                                        X"e7", X"f5", X"f3", X"d5", X"e8", X"fb", X"0f", X"01", X"07", X"e9", X"09", X"dc", X"f7", X"26", X"0d", X"02", X"f7", X"fd", X"d9", X"e0", X"13", X"e0", X"df", X"ef", X"03", X"1a",
                                                        X"fb", X"f7", X"ec", X"cc", X"f6", X"e0", X"f9", X"f0", X"de", X"e9", X"1b", X"ff", X"bc", X"f9", X"fa", X"fa", X"dc", X"1a", X"de", X"e2", X"06", X"f3", X"0d", X"e9", X"ec", X"10",
                                                        X"18", X"e4", X"3e", X"f3", X"ef", X"07", X"2b", X"43", X"e7", X"2e", X"ec", X"cf", X"03", X"f3", X"ed", X"d0", X"03", X"ec", X"01", X"ef", X"f4", X"01", X"eb", X"ed", X"ec", X"c6",
                                                        X"fd", X"c8", X"e4", X"f9", X"0e", X"0e", X"05", X"04", X"b3", X"fa", X"f8", X"e9", X"01", X"06", X"0e", X"17", X"f9", X"37", X"0b", X"f2", X"ef", X"33", X"f3", X"f8", X"fc", X"ff",
                                                        X"fd", X"1e", X"0f", X"ca", X"dc", X"e4", X"f1", X"2d", X"f3", X"0b", X"0e", X"bb", X"db", X"fe", X"30", X"0c", X"f9", X"f6", X"e1", X"15", X"05", X"fb", X"ef", X"06", X"fc", X"08",
                                                        X"0f", X"f8", X"f5", X"01", X"f6", X"eb", X"f4", X"0c", X"ef", X"1c", X"e9", X"11", X"00", X"d9", X"f6", X"05", X"dc", X"d9", X"f6", X"f0", X"d4", X"fe", X"13", X"1e", X"f3", X"e4",
                                                        X"0f", X"20", X"0b", X"f8", X"02", X"19", X"f4", X"ff", X"f7", X"f2", X"cf", X"0c", X"f6", X"e8", X"ff", X"1f", X"f7", X"f1", X"fd", X"da", X"f3", X"16", X"e7", X"ed", X"fe", X"01",
                                                        X"30", X"04", X"03", X"e7", X"f1", X"e7", X"1f", X"f5", X"1f", X"11", X"12", X"0d", X"e8", X"eb", X"f5", X"f4", X"31", X"e8", X"f6", X"04", X"48", X"38", X"d5", X"28", X"09", X"0e",
                                                        X"eb", X"0d", X"21", X"08", X"11", X"0d", X"cc", X"f5", X"14", X"00", X"cc", X"e0", X"03", X"da", X"f7", X"12", X"fb", X"fa", X"ca", X"10", X"25", X"f2", X"c2", X"0c", X"fb", X"dd",
                                                        X"f6", X"eb", X"e4", X"d8", X"0a", X"b5", X"ef", X"ee", X"03", X"f8", X"e1", X"fe", X"24", X"f6", X"0f", X"ef", X"f5", X"f8", X"14", X"03", X"ed", X"1f", X"fa", X"f9", X"f0", X"09",
                                                        X"19", X"e7", X"1f", X"f8", X"f5", X"fc", X"29", X"df", X"db", X"dc", X"0b", X"ba", X"fc", X"f9", X"e5", X"e1", X"12", X"ec", X"fb", X"0e", X"fa", X"03", X"31", X"28", X"cc", X"0f",
                                                        X"05", X"dd", X"f9", X"f5", X"15", X"db", X"f2", X"02", X"c8", X"fd", X"f9", X"1e", X"f1", X"2c", X"1a", X"34", X"f8", X"1d", X"0e", X"e7", X"0c", X"22", X"e8", X"f8", X"13", X"10",
                                                        X"0e", X"1e", X"df", X"f6", X"21", X"1e", X"f9", X"30", X"ea", X"17", X"e4", X"16", X"fd", X"08", X"0a", X"03", X"f5", X"0d", X"f7", X"eb", X"36", X"c3", X"17", X"10", X"f7", X"0e",
                                                        X"0c", X"ea", X"25", X"07", X"e1", X"f9", X"ff", X"07", X"e0", X"ff", X"ec", X"17", X"fa", X"34", X"19", X"0d", X"1b", X"cf", X"21", X"09", X"26", X"f5", X"f8", X"10", X"26", X"0a",
                                                        X"35", X"1b", X"06", X"2d", X"1a", X"03", X"19", X"2b", X"11", X"12", X"29", X"0b", X"01", X"05", X"0e", X"0a", X"d5", X"cf", X"f5", X"1e", X"0a", X"1c", X"db", X"09", X"dc", X"05",
                                                        X"2a", X"06", X"f3", X"ea", X"0d", X"de", X"03", X"c8", X"03", X"49", X"ec", X"f4", X"d9", X"f0", X"eb", X"07", X"de", X"ec", X"f9", X"10", X"ff", X"fd", X"d1", X"1c", X"fc", X"0c",
                                                        X"05", X"04", X"f7", X"ef", X"03", X"f8", X"cd", X"02", X"01", X"e7", X"2d", X"fe", X"ee", X"26", X"e7", X"35", X"02", X"f6", X"20", X"2b", X"e9", X"00", X"11", X"fa", X"fc", X"21",
                                                        X"28", X"13", X"fe", X"0c", X"ec", X"cc", X"fe", X"e6", X"08", X"ef", X"e8", X"0a", X"26", X"02", X"0a", X"0f", X"e2", X"06", X"0f", X"dc", X"fa", X"f2", X"00", X"f5", X"22", X"f0",
                                                        X"fc", X"fb", X"b9", X"e2", X"f0", X"e1", X"1f", X"f1", X"e5", X"bb", X"02", X"24", X"e8", X"f4", X"1d", X"e2", X"df", X"02", X"29", X"f3", X"fb", X"fe", X"0a", X"fd", X"eb", X"c6",
                                                        X"00", X"af", X"ee", X"02", X"f0", X"ce", X"fb", X"fd", X"d9", X"f7", X"f1", X"da", X"1a", X"e1", X"d4", X"df", X"fc", X"e6", X"17", X"e7", X"f9", X"f2", X"e4", X"ff", X"b9", X"fa",
                                                        X"f9", X"03", X"e3", X"1f", X"d4", X"c4", X"f6", X"a5", X"f3", X"d3", X"e3", X"1f", X"f9", X"eb", X"0e", X"01", X"07", X"f1", X"fc", X"d5", X"e3", X"fe", X"fa", X"ea", X"11", X"dd",
                                                        X"08", X"c5", X"db", X"e7", X"a4", X"06", X"04", X"05", X"d3", X"f4", X"fd", X"ae", X"08", X"04", X"fb", X"ea", X"f9", X"da", X"01", X"f0", X"aa", X"0b", X"f1", X"ef", X"e3", X"02",
                                                        X"e7", X"b1", X"f7", X"f0", X"ef", X"f0", X"f5", X"e9", X"fa", X"f4", X"c1", X"f5", X"08", X"03", X"ed", X"1c", X"f6", X"ba", X"fd", X"1a", X"01", X"da", X"f8", X"d4", X"e3", X"ce",
                                                        X"c5", X"02", X"fa", X"ff", X"1c", X"be", X"e7", X"c7", X"09", X"2c", X"f1", X"ec", X"e5", X"04", X"f9", X"e6", X"ba", X"f8", X"0e", X"f1", X"fd", X"00", X"02", X"f4", X"0d", X"0a",
                                                        X"f5", X"ef", X"18", X"ca", X"e9", X"ee", X"2e", X"0f", X"f8", X"fe", X"da", X"08", X"d0", X"e0", X"fe", X"ac", X"fb", X"06", X"1d", X"de", X"18", X"ed", X"d3", X"00", X"03", X"ea",
                                                        X"fd", X"0d", X"cc", X"e7", X"05", X"cd", X"1f", X"e6", X"c5", X"e8", X"06", X"04", X"25", X"0e", X"0c", X"e0", X"d6", X"f1", X"ff", X"07", X"f7", X"e2", X"22", X"fb", X"d6", X"12",
                                                        X"f7", X"f2", X"ed", X"01", X"05", X"10", X"e9", X"e8", X"04", X"00", X"f8", X"f6", X"e3", X"06", X"12", X"0a", X"fa", X"ec", X"b2", X"f3", X"ef", X"ef", X"1c", X"f3", X"11", X"fb",
                                                        X"02", X"f9", X"fb", X"11", X"ef", X"c5", X"09", X"eb", X"cd", X"fb", X"12", X"1b", X"0c", X"d8", X"f4", X"05", X"f1", X"fc", X"d5", X"07", X"00", X"00", X"e8", X"fe", X"10", X"f0",
                                                        X"f2", X"ff", X"d8", X"02", X"13", X"0e", X"08", X"b5", X"0c", X"ff", X"ef", X"d0", X"f1", X"06", X"0e", X"ee", X"fb", X"20", X"f9", X"d9", X"e6", X"ed", X"f7", X"1b", X"f8", X"0f",
                                                        X"f2", X"ed", X"df", X"01", X"f0", X"fe", X"01", X"09", X"27", X"eb", X"1f", X"10", X"fa", X"d4", X"f5", X"e6", X"06", X"13", X"d9", X"04");
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

