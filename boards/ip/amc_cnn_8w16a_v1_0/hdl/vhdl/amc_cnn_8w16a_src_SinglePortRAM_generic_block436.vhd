-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block436.vhd
-- Created: 2023-08-07 19:04:51
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block436
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage80/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block436 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block436;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block436 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"b3", X"11", X"0c", X"07", X"0c", X"f3", X"1d", X"2a", X"05", X"1f", X"d8", X"ec", X"e0", X"1d",
                                                        X"cd", X"01", X"f0", X"13", X"e1", X"2c", X"f0", X"02", X"e1", X"3f", X"0b", X"e9", X"de", X"fd", X"17", X"db", X"cb", X"10", X"33", X"03", X"00", X"1d", X"11", X"38", X"0a", X"bf",
                                                        X"0b", X"1d", X"e8", X"ef", X"2c", X"d7", X"05", X"1a", X"0e", X"00", X"07", X"2b", X"22", X"de", X"06", X"e2", X"16", X"c9", X"24", X"08", X"f8", X"23", X"ee", X"fd", X"1d", X"fe",
                                                        X"ea", X"22", X"e1", X"fb", X"f2", X"ee", X"ee", X"f5", X"07", X"f8", X"18", X"20", X"33", X"02", X"f1", X"f6", X"01", X"10", X"13", X"05", X"df", X"15", X"08", X"2c", X"0a", X"1c",
                                                        X"f1", X"d3", X"dd", X"0f", X"d5", X"0b", X"f2", X"08", X"e1", X"f0", X"be", X"da", X"ff", X"1f", X"ff", X"05", X"f4", X"da", X"15", X"fa", X"c9", X"fc", X"0c", X"1d", X"4a", X"c3",
                                                        X"f6", X"ce", X"e8", X"fa", X"e7", X"18", X"15", X"01", X"e3", X"07", X"01", X"07", X"03", X"e8", X"d8", X"15", X"ce", X"1f", X"fa", X"2c", X"0c", X"06", X"2a", X"2d", X"03", X"fc",
                                                        X"c3", X"02", X"fd", X"e7", X"0b", X"02", X"ca", X"20", X"fa", X"fb", X"e2", X"09", X"0e", X"03", X"f6", X"fd", X"09", X"ea", X"f7", X"1d", X"3a", X"fa", X"0f", X"f5", X"0b", X"e7",
                                                        X"e0", X"02", X"fe", X"11", X"e5", X"0b", X"e4", X"00", X"f6", X"02", X"19", X"e0", X"fd", X"30", X"fa", X"1c", X"08", X"f3", X"fe", X"0e", X"e8", X"0b", X"d5", X"f6", X"00", X"03",
                                                        X"f3", X"29", X"24", X"16", X"e8", X"ea", X"15", X"13", X"d4", X"2a", X"12", X"0d", X"1a", X"ff", X"ff", X"1e", X"f2", X"0f", X"08", X"c5", X"f0", X"c9", X"f5", X"12", X"ef", X"1e",
                                                        X"f4", X"ff", X"23", X"fb", X"f8", X"f5", X"44", X"0e", X"30", X"d1", X"ea", X"17", X"25", X"0b", X"f3", X"e3", X"ec", X"02", X"d7", X"0a", X"ff", X"fb", X"3f", X"d6", X"de", X"05",
                                                        X"ff", X"36", X"f3", X"ed", X"1c", X"10", X"c9", X"0b", X"45", X"01", X"eb", X"f0", X"44", X"2f", X"05", X"c5", X"12", X"da", X"fb", X"df", X"0a", X"30", X"04", X"0b", X"06", X"1f",
                                                        X"09", X"fe", X"dd", X"3c", X"fb", X"bc", X"ec", X"2d", X"e0", X"fe", X"f8", X"d6", X"ef", X"1d", X"37", X"f7", X"f4", X"24", X"05", X"0d", X"e1", X"fa", X"11", X"ec", X"0f", X"00",
                                                        X"fd", X"e5", X"08", X"ef", X"28", X"13", X"e4", X"15", X"e5", X"dc", X"e7", X"3e", X"11", X"17", X"dc", X"cf", X"f6", X"12", X"06", X"ff", X"22", X"fe", X"f5", X"2a", X"fb", X"08",
                                                        X"0c", X"25", X"f1", X"bb", X"f7", X"f0", X"e2", X"34", X"fe", X"12", X"c3", X"ea", X"fe", X"1d", X"20", X"d6", X"fc", X"d7", X"08", X"d6", X"15", X"e8", X"05", X"12", X"1c", X"05",
                                                        X"1e", X"06", X"f6", X"fc", X"30", X"f0", X"f8", X"f3", X"22", X"46", X"00", X"ee", X"23", X"0f", X"0d", X"07", X"33", X"ef", X"f6", X"0b", X"30", X"e0", X"0c", X"f8", X"e6", X"c8",
                                                        X"00", X"10", X"ee", X"25", X"f7", X"fc", X"ec", X"fa", X"05", X"05", X"0e", X"12", X"26", X"20", X"fc", X"ce", X"f2", X"e1", X"f0", X"06", X"20", X"0e", X"cd", X"fb", X"18", X"14",
                                                        X"1c", X"0f", X"f7", X"4c", X"f8", X"ec", X"03", X"f2", X"2a", X"e5", X"e5", X"08", X"12", X"fe", X"ee", X"f0", X"fc", X"df", X"2d", X"cf", X"d9", X"43", X"f7", X"ff", X"34", X"1b",
                                                        X"f1", X"20", X"f0", X"fe", X"05", X"f7", X"48", X"e4", X"1a", X"13", X"fe", X"47", X"ee", X"f8", X"e6", X"fb", X"dd", X"02", X"ea", X"e8", X"18", X"1b", X"2e", X"3a", X"fc", X"06",
                                                        X"00", X"fe", X"f5", X"0e", X"ff", X"2f", X"f8", X"ed", X"e2", X"f4", X"21", X"17", X"ec", X"e6", X"da", X"1d", X"dd", X"b8", X"eb", X"0c", X"0d", X"0f", X"15", X"10", X"46", X"fc",
                                                        X"0f", X"f4", X"2a", X"2d", X"e2", X"ed", X"fc", X"05", X"fe", X"f0", X"00", X"18", X"f9", X"f6", X"eb", X"0e", X"05", X"f8", X"27", X"02", X"e9", X"e4", X"15", X"d2", X"e6", X"ed",
                                                        X"e0", X"1d", X"15", X"f5", X"18", X"f3", X"08", X"2c", X"3c", X"00", X"33", X"3b", X"f3", X"b4", X"f4", X"fe", X"e0", X"28", X"f0", X"1a", X"35", X"e4", X"fb", X"fd", X"19", X"00",
                                                        X"dd", X"29", X"08", X"07", X"f1", X"de", X"0b", X"db", X"13", X"02", X"da", X"eb", X"fd", X"ec", X"25", X"33", X"1b", X"31", X"e8", X"d9", X"e0", X"e6", X"14", X"03", X"f0", X"11",
                                                        X"ff", X"f9", X"03", X"05", X"1c", X"db", X"e2", X"3e", X"09", X"bc", X"e7", X"e9", X"0a", X"1a", X"ff", X"16", X"1a", X"fa", X"f7", X"2c", X"1c", X"27", X"f5", X"23", X"e6", X"0c",
                                                        X"09", X"09", X"f7", X"26", X"d3", X"08", X"d9", X"fa", X"03", X"0a", X"1f", X"ef", X"0b", X"e7", X"0a", X"37", X"02", X"e6", X"fc", X"05", X"f6", X"0e", X"bd", X"fd", X"f6", X"1e",
                                                        X"31", X"d1", X"1b", X"46", X"0a", X"ce", X"e9", X"e5", X"34", X"2f", X"da", X"19", X"fb", X"ff", X"0a", X"1f", X"1e", X"f7", X"e2", X"34", X"0c", X"d4", X"eb", X"00", X"db", X"e7",
                                                        X"09", X"f8", X"1b", X"fc", X"ea", X"f9", X"5c", X"e2", X"eb", X"dc", X"fb", X"cf", X"db", X"fe", X"28", X"e0", X"fe", X"f9", X"e7", X"e6", X"08", X"fb", X"ea", X"04", X"d7", X"18",
                                                        X"ea", X"04", X"13", X"fe", X"20", X"0b", X"e1", X"13", X"e2", X"f4", X"04", X"21", X"10", X"23", X"f9", X"14", X"0a", X"fc", X"e8", X"0c", X"2b", X"e6", X"da", X"12", X"c1", X"f8",
                                                        X"11", X"1e", X"1f", X"13", X"e1", X"0f", X"ec", X"12", X"ed", X"fa", X"21", X"fa", X"17", X"fa", X"fc", X"f5", X"17", X"eb", X"34", X"21", X"f0", X"1a", X"e1", X"d8", X"f7", X"10",
                                                        X"12", X"15", X"dd", X"04", X"fd", X"f0", X"01", X"27", X"e1", X"22", X"ec", X"d3", X"e9", X"36", X"1e", X"ec", X"de", X"03", X"ed", X"02", X"3f", X"e8", X"08", X"04", X"3b", X"2a",
                                                        X"ea", X"dd", X"0f", X"00", X"ee", X"09", X"bd", X"30", X"18", X"0f", X"00", X"f9", X"0f", X"13", X"17", X"d4", X"0e", X"38", X"ff", X"f8", X"f9", X"08", X"01", X"ed", X"d2", X"01",
                                                        X"fe", X"f4", X"f4", X"e6", X"2d", X"37", X"d1", X"0f", X"f4", X"10", X"fd", X"08", X"ed", X"fa", X"dd", X"06", X"c5", X"f1", X"0b", X"2f", X"25", X"e6", X"fd", X"37", X"14", X"dd",
                                                        X"ea", X"09", X"db", X"e5", X"e5", X"ff", X"e2", X"f3", X"f6", X"2f", X"41", X"e9", X"15", X"2f", X"06", X"2a", X"ee", X"13", X"e4", X"d5", X"01", X"16", X"ee", X"fa", X"11", X"39",
                                                        X"e8", X"f5", X"32", X"bf", X"08", X"32", X"e1", X"ee", X"28", X"f4", X"11", X"0d", X"cc", X"00", X"0a", X"33", X"34", X"35", X"22", X"d0", X"06", X"19", X"f9", X"00", X"07", X"fb",
                                                        X"fd", X"01", X"31", X"f2", X"fa", X"15", X"30", X"02", X"e2", X"e2", X"07", X"11", X"e4", X"f0", X"e2", X"20", X"fb", X"02", X"18", X"f4", X"15", X"09", X"ff", X"0e", X"d5", X"fd",
                                                        X"fb", X"f2", X"f8", X"09", X"e8", X"19", X"36", X"26", X"f5", X"11", X"f2", X"f3", X"26", X"d8", X"21", X"3c", X"f0", X"26", X"09", X"fa", X"25", X"1c", X"f5", X"07", X"ef", X"f1",
                                                        X"ed", X"11", X"04", X"e6", X"d7", X"3e", X"18", X"17", X"db", X"01", X"e6", X"22", X"22", X"f9", X"d6", X"f2", X"0d", X"30", X"ff", X"20", X"e1", X"42", X"d9", X"c3", X"19", X"eb",
                                                        X"ef", X"21", X"ee", X"10", X"fa", X"fd", X"f7", X"ed", X"32", X"0c", X"eb", X"ce", X"00", X"fc", X"ef", X"e5", X"e8", X"fe", X"23", X"11", X"df", X"0d", X"fe", X"ff", X"1f", X"03",
                                                        X"0a", X"fb", X"ea", X"2e", X"f1", X"fb", X"34", X"2f", X"16", X"fd", X"c5", X"fb", X"21", X"1b", X"17", X"fb", X"04", X"10", X"e6", X"4b", X"e5", X"f4", X"2c", X"42", X"fd", X"14",
                                                        X"cd", X"ea", X"03", X"f9", X"00", X"05", X"f3", X"26", X"e5", X"cc", X"04", X"e7", X"06", X"43", X"fc", X"10", X"db", X"dc", X"09", X"02", X"12", X"1f", X"06", X"d5", X"15", X"23",
                                                        X"da", X"f5", X"f6", X"05", X"e7", X"17", X"f6", X"01", X"0e", X"05", X"ef", X"29", X"f0", X"18", X"e8", X"00", X"f5", X"f9", X"1f", X"38", X"e4", X"06", X"e3", X"03", X"12", X"f9",
                                                        X"12", X"12", X"eb", X"f2", X"fa", X"2e", X"e9", X"f6", X"1a", X"e7", X"f2", X"0d", X"34", X"f4", X"ef", X"0c", X"eb", X"09", X"1b", X"1f", X"f6", X"ce", X"df", X"01", X"01", X"cd",
                                                        X"0d", X"1c", X"27", X"03", X"f7", X"06", X"2c", X"f6", X"27", X"00", X"fd", X"cf", X"f1", X"16", X"06", X"f1", X"d2", X"07", X"bd", X"f4", X"0c", X"08", X"ec", X"19", X"21", X"db",
                                                        X"08", X"fe", X"ef", X"e1", X"fe", X"1e", X"ed", X"07", X"4e", X"f6", X"f4", X"38", X"f0", X"16", X"d8", X"d6", X"ef", X"2b", X"ff", X"f3", X"1b", X"fc", X"e0", X"ff", X"c2", X"fd",
                                                        X"fb", X"f6", X"39", X"17", X"e4", X"f2", X"fd", X"2c", X"f6", X"f7", X"09", X"fa", X"f0", X"fe", X"4b", X"f7", X"0c", X"04", X"34", X"e3", X"e9", X"dd", X"fb", X"05", X"dc", X"ef",
                                                        X"1e", X"d4", X"e1", X"04", X"04", X"0b", X"04", X"23", X"fc", X"d2", X"eb", X"e5", X"23", X"54", X"f3", X"e3", X"14", X"d6", X"03", X"1a", X"1a", X"06", X"01", X"23", X"ff", X"31",
                                                        X"e5", X"ce", X"03", X"e6", X"f5", X"10", X"ed", X"1c", X"fd", X"ef", X"25", X"09", X"f8", X"3e", X"13", X"1b", X"dc", X"f5", X"fd", X"d4", X"e9", X"ee", X"2d", X"2a", X"fa", X"fe",
                                                        X"e1", X"17", X"06", X"f0", X"fb", X"11", X"e7", X"45", X"07", X"dc", X"e6", X"f5", X"32", X"1a", X"dc", X"0f", X"17", X"09", X"f2", X"ec", X"0e", X"d9", X"1f", X"08", X"01", X"10",
                                                        X"06", X"f6", X"f1", X"15", X"17", X"0c", X"3d", X"02", X"fe", X"fe", X"08", X"e5", X"d0", X"cb", X"fa", X"35", X"e8", X"f0", X"23", X"ed", X"e1", X"fc", X"3d", X"03", X"f1", X"f6",
                                                        X"fa", X"f4", X"f3", X"fc", X"1d", X"f0", X"f3", X"1b", X"0c", X"d6", X"e3", X"f4", X"46", X"00", X"18", X"28", X"10", X"16", X"e1", X"04", X"f7", X"c5", X"03", X"ef", X"20", X"04",
                                                        X"0d", X"e9", X"0b", X"e9", X"e7", X"08", X"1a", X"1c", X"de", X"c3", X"14", X"d1", X"ec", X"10", X"1b", X"35", X"0d", X"ec", X"ff", X"f2", X"0f", X"f8", X"34", X"0e", X"ed", X"ef",
                                                        X"fe", X"cf", X"e1", X"ea", X"f5", X"ef", X"e7", X"02", X"14", X"fc", X"f5", X"26", X"08", X"21", X"23", X"d0", X"ef", X"09", X"0d", X"ef", X"29", X"26", X"dc", X"05", X"32", X"f7",
                                                        X"e5", X"f5", X"3c", X"e2", X"10", X"16", X"ef", X"ed", X"f7", X"e6", X"f3", X"0a", X"02", X"09", X"27", X"f3", X"ef", X"ff", X"03", X"3f", X"1c", X"10", X"f3", X"09", X"13", X"f4",
                                                        X"1e", X"2a", X"18", X"17", X"49", X"f0", X"f1", X"25", X"fb", X"e9", X"da", X"03", X"fa", X"e6", X"f9", X"f0", X"16", X"14", X"0c", X"07", X"d1", X"03", X"fc", X"f9", X"3d", X"16",
                                                        X"e2", X"10", X"eb", X"f4", X"db", X"f6", X"f4", X"2a", X"eb", X"ff", X"e8", X"03", X"02", X"1e", X"42", X"d1", X"e0", X"ea", X"03", X"df", X"df", X"e6", X"25", X"d8", X"f5", X"0e",
                                                        X"48", X"f5", X"f1", X"0a", X"0d", X"12", X"cd", X"18", X"06", X"ff", X"e5", X"f5", X"ee", X"33", X"e5", X"17", X"c3", X"ee", X"03", X"34", X"f5", X"1f", X"1b", X"1c", X"0d", X"0a",
                                                        X"14", X"14", X"26", X"04", X"19", X"03", X"bd", X"ef", X"ff", X"20", X"2e", X"2e", X"ef", X"de", X"05", X"0e", X"fd", X"04", X"17", X"d0", X"14", X"fa", X"38", X"02", X"09", X"f4",
                                                        X"cd", X"fc", X"13", X"0a", X"ff", X"c2", X"f2", X"eb", X"1b", X"05", X"1f", X"14", X"35", X"03", X"f4", X"20", X"4a", X"1e", X"c4", X"f0", X"e5", X"f3", X"e3", X"f6", X"1e", X"28",
                                                        X"0c", X"fe", X"1d", X"04", X"0c", X"17", X"4a", X"28", X"e0", X"da", X"09", X"26", X"ea", X"06", X"fd", X"c8", X"e7", X"f8", X"0b", X"f8", X"fb", X"16", X"2d", X"d4", X"03", X"cd",
                                                        X"fc", X"13", X"0a", X"01", X"da", X"fc", X"c4", X"f3", X"36", X"fd", X"14", X"fe", X"37", X"e4", X"22", X"19", X"1a", X"e0", X"ea", X"e9", X"27", X"e9", X"fb", X"fc", X"3c", X"e8",
                                                        X"ea", X"14", X"1e", X"e5", X"ff", X"1f", X"e2", X"c8", X"00", X"fa", X"dd", X"2c", X"0e", X"05", X"0c", X"ee", X"09", X"eb", X"39", X"f9", X"2e", X"d7", X"f9", X"46", X"fe", X"f2",
                                                        X"e6", X"fb", X"fa", X"12", X"bd", X"01", X"fa", X"00", X"fe", X"1f", X"2e", X"e7", X"02", X"f8", X"e8", X"08", X"0e", X"27", X"e2", X"fe", X"3b", X"fe", X"ff", X"00", X"48", X"11",
                                                        X"d6", X"d8", X"fd", X"ff", X"fc", X"07", X"e2", X"0d", X"19", X"0e", X"e7", X"ec", X"f5", X"f1", X"07", X"e2", X"fd", X"1b", X"0b", X"20", X"f9", X"03", X"11", X"06", X"08", X"18",
                                                        X"ce", X"ee", X"fd", X"08", X"1a", X"1a", X"d5", X"d7", X"fe", X"e7", X"e2", X"04", X"08", X"fb", X"04", X"03", X"f0", X"05", X"ec", X"2b", X"3e", X"f9", X"20", X"d5", X"00", X"0f",
                                                        X"ee", X"eb", X"0b", X"1e", X"10", X"1a", X"1b", X"ef", X"03", X"2a", X"f6", X"dd", X"21", X"c8", X"f5", X"ec", X"d8", X"08", X"e4", X"16", X"1f", X"ff", X"f5", X"f0", X"f9", X"2f",
                                                        X"0d", X"2b", X"05", X"e5", X"f0", X"00", X"db", X"f2", X"25", X"c4", X"05", X"17", X"44", X"e3", X"f0", X"25", X"46", X"ce", X"09", X"f7", X"f8", X"ee", X"fb", X"dd", X"fe", X"e3",
                                                        X"11", X"03", X"47", X"fe", X"fc", X"0b", X"08", X"d7", X"14", X"f0", X"fd", X"0e", X"08", X"fa", X"0d", X"d4", X"12", X"fd", X"30", X"fa", X"06", X"fc", X"dd", X"1d", X"16", X"f3",
                                                        X"ee", X"47", X"05", X"01", X"1b", X"0d", X"10", X"eb", X"0a", X"f3", X"fe", X"e9", X"22", X"f1", X"00", X"f8", X"10", X"4b", X"ec", X"03", X"1d", X"24", X"d6", X"f0", X"af", X"07",
                                                        X"01", X"1a", X"eb", X"f0", X"f3", X"04", X"10", X"c1", X"f3", X"04", X"f3", X"f7", X"eb", X"05", X"d7", X"08", X"e4", X"f5", X"16", X"ee", X"06", X"4f", X"e3", X"ea", X"17", X"1c",
                                                        X"37", X"2f", X"1d", X"fc", X"45", X"ff", X"f8", X"f4", X"44", X"14", X"18", X"01", X"fe", X"d5", X"f2", X"01", X"f2", X"34", X"f1", X"f6", X"23", X"fd", X"08", X"ef", X"f3", X"16",
                                                        X"13", X"e3", X"ff", X"d7", X"e3", X"19", X"01", X"26", X"f2", X"00", X"d1", X"0a", X"fd", X"28", X"12", X"2a", X"d2", X"de", X"0b", X"58", X"17", X"fb", X"e0", X"ff", X"f1", X"14",
                                                        X"21", X"fd", X"fd", X"18", X"02", X"39", X"09", X"e2", X"f2", X"26", X"df", X"f7", X"08", X"47", X"0b", X"fe", X"ec", X"e6", X"f0", X"01", X"e9", X"ce", X"01", X"e1", X"0d", X"d9",
                                                        X"f8", X"ec", X"d9", X"f9", X"20", X"07", X"12", X"12", X"f4", X"1b", X"3e", X"ee", X"11", X"24", X"fc", X"c6", X"ef", X"f6", X"2b", X"ec", X"f0", X"15", X"11", X"f2", X"f0", X"1b",
                                                        X"13", X"f7", X"1d", X"07", X"fa", X"24", X"f5", X"eb", X"df", X"2b", X"12", X"1a", X"c6", X"fd", X"1a", X"07", X"15", X"e8", X"05", X"be", X"19", X"26", X"08", X"0b", X"09", X"cf",
                                                        X"f3", X"09", X"05", X"06", X"e8", X"21", X"43", X"fc", X"fc", X"0c", X"1e", X"07", X"d6", X"e4", X"f4", X"23", X"ee", X"11", X"05", X"f2", X"fd", X"45", X"06", X"21", X"f1", X"0a",
                                                        X"f7", X"4f", X"f7", X"e5", X"fe", X"e0", X"1b", X"1b", X"ee", X"00", X"0a", X"1f", X"09", X"f9", X"f2", X"cf", X"01", X"d7", X"df", X"06", X"ef", X"0f", X"0b", X"0f", X"18", X"f8",
                                                        X"f1", X"fe", X"23", X"e7", X"c8", X"d0", X"fc", X"24", X"07", X"ec", X"f8", X"ce", X"d7", X"ee", X"2d", X"03", X"ec", X"1c", X"1f", X"16", X"d4", X"2f", X"fe", X"e0", X"e9", X"0d",
                                                        X"27", X"11", X"06", X"ff", X"0e", X"08", X"0d", X"0f", X"ff", X"27", X"d8", X"1d", X"ea", X"b1", X"da", X"09", X"0e", X"36", X"e5", X"ff");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ff";
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

