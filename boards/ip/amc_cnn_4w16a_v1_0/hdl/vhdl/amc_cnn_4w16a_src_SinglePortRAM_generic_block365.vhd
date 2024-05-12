-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block365.vhd
-- Created: 2023-06-15 16:03:01
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block365
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage16/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block365 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block365;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block365 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"ac", X"f9", X"22", X"ef", X"f1", X"da", X"c4", X"ed", X"2b", X"58", X"05", X"04", X"08", X"02",
                                                        X"d6", X"0d", X"f4", X"eb", X"dc", X"0d", X"eb", X"e5", X"eb", X"f6", X"27", X"1d", X"ed", X"44", X"00", X"f6", X"ec", X"0e", X"e7", X"fd", X"ec", X"08", X"01", X"09", X"d8", X"00",
                                                        X"2c", X"30", X"20", X"ee", X"fe", X"1c", X"fe", X"ed", X"bf", X"e4", X"fd", X"30", X"02", X"e9", X"0f", X"e4", X"0e", X"e5", X"f4", X"d0", X"1c", X"ff", X"d4", X"ff", X"d9", X"08",
                                                        X"e8", X"15", X"e5", X"de", X"fc", X"e1", X"32", X"ec", X"f6", X"1e", X"17", X"1e", X"15", X"ea", X"f9", X"ed", X"f6", X"14", X"01", X"e2", X"dd", X"db", X"e1", X"3f", X"f4", X"d2",
                                                        X"da", X"ee", X"ea", X"06", X"b7", X"ed", X"e5", X"03", X"d9", X"ca", X"e4", X"f8", X"0d", X"0a", X"e5", X"f5", X"05", X"0e", X"d0", X"13", X"00", X"e7", X"0f", X"42", X"fc", X"0c",
                                                        X"f6", X"ee", X"0f", X"da", X"f7", X"fc", X"13", X"02", X"0a", X"0c", X"c8", X"e0", X"fa", X"42", X"ef", X"20", X"fe", X"fa", X"05", X"2c", X"f3", X"08", X"f4", X"03", X"bf", X"10",
                                                        X"fa", X"fa", X"f9", X"e7", X"03", X"ed", X"0f", X"0c", X"19", X"12", X"f5", X"3b", X"f7", X"fb", X"f0", X"ef", X"04", X"05", X"ff", X"fc", X"06", X"e3", X"c9", X"d6", X"e9", X"48",
                                                        X"1d", X"3d", X"ea", X"f3", X"f4", X"e0", X"e3", X"e5", X"09", X"19", X"04", X"ea", X"ff", X"00", X"1b", X"22", X"df", X"e6", X"19", X"fe", X"cb", X"00", X"e3", X"06", X"d5", X"07",
                                                        X"f6", X"fd", X"0b", X"ec", X"0a", X"1e", X"f1", X"fa", X"03", X"0f", X"d9", X"fa", X"f7", X"ee", X"f8", X"26", X"df", X"ea", X"09", X"f1", X"d3", X"12", X"00", X"fd", X"d7", X"10",
                                                        X"05", X"25", X"f8", X"01", X"dd", X"e0", X"e6", X"e5", X"f1", X"0f", X"16", X"48", X"0f", X"c7", X"0f", X"fa", X"09", X"f5", X"fd", X"00", X"d8", X"4d", X"fd", X"cf", X"e9", X"04",
                                                        X"d6", X"f8", X"f8", X"e2", X"01", X"f0", X"ed", X"1d", X"ec", X"ed", X"f7", X"08", X"e5", X"09", X"d9", X"f9", X"16", X"1d", X"eb", X"32", X"1b", X"fa", X"e0", X"07", X"c1", X"fa",
                                                        X"f5", X"ff", X"0c", X"d4", X"b4", X"fb", X"3a", X"df", X"11", X"0c", X"f2", X"17", X"e7", X"09", X"0c", X"e6", X"ec", X"32", X"fd", X"18", X"03", X"f6", X"3f", X"5a", X"fb", X"df",
                                                        X"21", X"f7", X"f1", X"00", X"c8", X"03", X"fa", X"47", X"07", X"c7", X"2a", X"04", X"e2", X"de", X"f5", X"dd", X"e3", X"11", X"fe", X"f8", X"f9", X"f7", X"f1", X"f6", X"f0", X"f5",
                                                        X"2a", X"f5", X"36", X"1c", X"15", X"20", X"15", X"12", X"c2", X"07", X"f4", X"02", X"ec", X"ec", X"fa", X"ec", X"1d", X"e9", X"15", X"f6", X"f3", X"2f", X"23", X"f9", X"fc", X"f4",
                                                        X"f2", X"ed", X"03", X"ca", X"08", X"e5", X"1e", X"08", X"1c", X"c9", X"02", X"23", X"eb", X"10", X"fb", X"f1", X"fc", X"fe", X"05", X"0a", X"f0", X"d0", X"b9", X"dd", X"08", X"e7",
                                                        X"ec", X"da", X"ea", X"17", X"cb", X"0c", X"d0", X"d8", X"e9", X"f7", X"ee", X"f7", X"2f", X"ec", X"02", X"1c", X"ea", X"ff", X"01", X"12", X"ce", X"0d", X"b9", X"ee", X"de", X"59",
                                                        X"0b", X"10", X"15", X"02", X"32", X"d7", X"05", X"2b", X"20", X"ee", X"e1", X"06", X"c9", X"09", X"22", X"fb", X"09", X"ce", X"e0", X"06", X"02", X"04", X"f7", X"34", X"06", X"f3",
                                                        X"c4", X"03", X"cd", X"02", X"ee", X"13", X"0d", X"11", X"0f", X"ef", X"0e", X"00", X"0b", X"df", X"db", X"06", X"d5", X"12", X"de", X"f2", X"01", X"22", X"ed", X"2b", X"ca", X"07",
                                                        X"19", X"42", X"0b", X"f6", X"1a", X"06", X"fc", X"f4", X"c2", X"eb", X"27", X"f4", X"f2", X"00", X"1f", X"e3", X"d4", X"20", X"ef", X"2a", X"d6", X"f7", X"f3", X"0e", X"ca", X"15",
                                                        X"e5", X"ff", X"02", X"f4", X"1c", X"0e", X"24", X"27", X"fc", X"26", X"cf", X"f5", X"d9", X"e6", X"ff", X"f0", X"0b", X"04", X"e2", X"06", X"b1", X"0b", X"d1", X"38", X"0b", X"10",
                                                        X"09", X"f1", X"ca", X"15", X"ca", X"0b", X"fb", X"25", X"fe", X"d6", X"d1", X"ef", X"29", X"01", X"00", X"23", X"f9", X"0d", X"0f", X"f1", X"f3", X"e2", X"01", X"47", X"fc", X"eb",
                                                        X"c5", X"fb", X"eb", X"10", X"f2", X"07", X"0c", X"fb", X"13", X"fe", X"d1", X"e1", X"d4", X"0f", X"e2", X"00", X"05", X"eb", X"08", X"fa", X"f9", X"43", X"27", X"fd", X"f1", X"f8",
                                                        X"c1", X"ef", X"f9", X"11", X"05", X"c4", X"b5", X"e8", X"fd", X"4d", X"f2", X"ef", X"14", X"1e", X"03", X"e6", X"da", X"08", X"10", X"d5", X"08", X"f0", X"07", X"f8", X"30", X"3d",
                                                        X"14", X"31", X"e4", X"08", X"e6", X"09", X"e5", X"fa", X"0e", X"fe", X"e5", X"21", X"05", X"f0", X"fc", X"23", X"e4", X"d0", X"13", X"12", X"ed", X"dd", X"da", X"07", X"33", X"0e",
                                                        X"f5", X"d8", X"0c", X"f0", X"04", X"35", X"00", X"47", X"14", X"00", X"e1", X"0a", X"f5", X"d8", X"08", X"ea", X"ea", X"e9", X"e6", X"e7", X"0e", X"ed", X"f1", X"f4", X"10", X"04",
                                                        X"01", X"01", X"cf", X"ef", X"e7", X"36", X"11", X"f3", X"e7", X"fc", X"2e", X"13", X"dc", X"f4", X"22", X"12", X"c7", X"e4", X"f0", X"01", X"bc", X"32", X"05", X"ef", X"f0", X"eb",
                                                        X"f5", X"0b", X"0c", X"1f", X"db", X"f9", X"e3", X"04", X"d9", X"ff", X"0b", X"d6", X"0f", X"e3", X"f0", X"03", X"e9", X"02", X"fc", X"26", X"18", X"0c", X"e0", X"e4", X"03", X"16",
                                                        X"13", X"3e", X"f3", X"e1", X"bb", X"01", X"1d", X"47", X"f1", X"d1", X"d2", X"f1", X"da", X"0d", X"0a", X"ff", X"ff", X"57", X"1b", X"f0", X"1d", X"e8", X"29", X"ca", X"fc", X"0e",
                                                        X"d5", X"08", X"ca", X"05", X"df", X"13", X"00", X"12", X"10", X"07", X"15", X"dc", X"06", X"d2", X"0b", X"dc", X"f2", X"02", X"c3", X"f2", X"b1", X"04", X"21", X"4a", X"e4", X"12",
                                                        X"f7", X"ee", X"f3", X"25", X"ee", X"0a", X"23", X"f8", X"e6", X"0a", X"07", X"e1", X"f2", X"e1", X"df", X"15", X"fc", X"14", X"03", X"54", X"f3", X"f4", X"ed", X"16", X"c8", X"f8",
                                                        X"c9", X"06", X"11", X"0c", X"12", X"ec", X"bd", X"ff", X"02", X"dd", X"0e", X"30", X"13", X"f2", X"0f", X"fc", X"cb", X"db", X"02", X"11", X"01", X"f1", X"f4", X"ef", X"0b", X"4f",
                                                        X"01", X"2e", X"f3", X"fe", X"14", X"18", X"e2", X"10", X"e0", X"36", X"f5", X"c5", X"fc", X"f8", X"29", X"3e", X"fd", X"e7", X"1f", X"05", X"c4", X"e1", X"cf", X"00", X"05", X"d3",
                                                        X"d8", X"ce", X"e5", X"f7", X"df", X"3b", X"07", X"1d", X"0d", X"11", X"d8", X"eb", X"ff", X"0d", X"e8", X"4e", X"f6", X"06", X"e0", X"f2", X"ed", X"1a", X"f9", X"d4", X"2a", X"12",
                                                        X"07", X"f3", X"e8", X"02", X"d6", X"24", X"09", X"ee", X"e9", X"e6", X"43", X"e9", X"01", X"29", X"e4", X"ed", X"fa", X"07", X"c2", X"04", X"e8", X"4b", X"0c", X"fe", X"c4", X"05",
                                                        X"1d", X"23", X"fe", X"e0", X"14", X"ea", X"fb", X"11", X"f3", X"0b", X"1d", X"44", X"0e", X"1b", X"ec", X"f7", X"06", X"07", X"f9", X"15", X"d9", X"0f", X"ea", X"15", X"f3", X"00",
                                                        X"10", X"10", X"fa", X"cb", X"ff", X"0f", X"19", X"ef", X"f2", X"d7", X"e1", X"f4", X"e5", X"01", X"c8", X"fb", X"1c", X"1c", X"f0", X"df", X"10", X"05", X"1a", X"dc", X"19", X"ec",
                                                        X"2b", X"08", X"c4", X"fb", X"0a", X"04", X"f8", X"d9", X"fe", X"ef", X"f8", X"0b", X"28", X"45", X"05", X"00", X"19", X"e5", X"dc", X"f3", X"03", X"f4", X"e7", X"57", X"03", X"d0",
                                                        X"20", X"0d", X"21", X"33", X"05", X"38", X"25", X"01", X"0b", X"ed", X"b3", X"f6", X"08", X"30", X"06", X"d4", X"dc", X"02", X"29", X"d5", X"f3", X"de", X"2a", X"06", X"f7", X"ec",
                                                        X"fc", X"d1", X"f5", X"33", X"da", X"e7", X"16", X"f3", X"09", X"05", X"0f", X"f8", X"28", X"f5", X"e4", X"e1", X"e7", X"f8", X"18", X"e2", X"fe", X"00", X"02", X"e7", X"0c", X"0f",
                                                        X"06", X"0a", X"1b", X"00", X"de", X"eb", X"de", X"16", X"e5", X"f6", X"01", X"e7", X"22", X"fb", X"f3", X"0e", X"f1", X"ea", X"e5", X"03", X"f1", X"0f", X"b0", X"db", X"16", X"f1",
                                                        X"db", X"fa", X"da", X"ee", X"30", X"4b", X"fd", X"e7", X"33", X"08", X"fb", X"08", X"b2", X"db", X"fc", X"20", X"fc", X"eb", X"cb", X"f4", X"35", X"19", X"14", X"10", X"de", X"0c",
                                                        X"fc", X"02", X"0c", X"ec", X"f0", X"ee", X"eb", X"be", X"de", X"eb", X"3f", X"62", X"03", X"3b", X"e3", X"12", X"e9", X"f7", X"c5", X"f3", X"ed", X"3a", X"f1", X"dc", X"b4", X"f9",
                                                        X"f3", X"2d", X"ff", X"f1", X"e2", X"1c", X"f1", X"ed", X"b5", X"1b", X"06", X"ec", X"05", X"00", X"e6", X"f4", X"35", X"d9", X"eb", X"07", X"08", X"f2", X"01", X"11", X"f1", X"ed",
                                                        X"f1", X"57", X"f1", X"1b", X"e3", X"f1", X"01", X"e3", X"10", X"de", X"25", X"01", X"da", X"1a", X"c1", X"18", X"08", X"f7", X"ec", X"d1", X"e3", X"f0", X"06", X"34", X"04", X"20",
                                                        X"00", X"ff", X"ee", X"fe", X"ec", X"05", X"fd", X"fd", X"f5", X"11", X"dc", X"f0", X"f5", X"06", X"ff", X"3b", X"f0", X"1c", X"fd", X"09", X"ea", X"01", X"fa", X"e1", X"f6", X"ce",
                                                        X"f6", X"ef", X"fe", X"37", X"fe", X"1d", X"f5", X"1e", X"0c", X"03", X"ba", X"f6", X"02", X"51", X"fb", X"d7", X"d9", X"dc", X"18", X"35", X"ed", X"04", X"23", X"14", X"be", X"dc",
                                                        X"f7", X"0d", X"17", X"fc", X"f9", X"19", X"fe", X"f3", X"0f", X"35", X"11", X"34", X"2f", X"18", X"ee", X"eb", X"cd", X"f1", X"f2", X"06", X"f4", X"f6", X"c6", X"f8", X"10", X"43",
                                                        X"11", X"f6", X"22", X"fb", X"ea", X"13", X"f4", X"01", X"f3", X"1b", X"ee", X"ed", X"16", X"f8", X"ef", X"c9", X"f5", X"03", X"f0", X"13", X"00", X"e1", X"d6", X"d1", X"e6", X"16",
                                                        X"e2", X"ef", X"06", X"f4", X"f1", X"f5", X"fc", X"ff", X"15", X"eb", X"05", X"f7", X"0b", X"0d", X"ff", X"34", X"f8", X"e9", X"d1", X"d7", X"d7", X"f1", X"f8", X"00", X"e0", X"fa",
                                                        X"f4", X"16", X"e6", X"fd", X"e9", X"32", X"02", X"cc", X"c2", X"fa", X"25", X"5a", X"09", X"1c", X"f2", X"0b", X"d0", X"f6", X"dc", X"0d", X"dd", X"09", X"05", X"da", X"2b", X"f0",
                                                        X"0e", X"dd", X"f9", X"d4", X"0f", X"fe", X"d2", X"f2", X"cb", X"0b", X"00", X"46", X"00", X"bf", X"fa", X"01", X"3d", X"e6", X"f1", X"ed", X"2a", X"fc", X"e4", X"05", X"f2", X"04",
                                                        X"df", X"1d", X"0a", X"01", X"f6", X"f6", X"1d", X"f4", X"fb", X"1e", X"20", X"ea", X"06", X"e9", X"e7", X"f2", X"0b", X"d0", X"e6", X"d2", X"cb", X"ee", X"32", X"33", X"02", X"e7",
                                                        X"f5", X"15", X"25", X"f1", X"f1", X"ea", X"08", X"d5", X"e4", X"b8", X"da", X"02", X"27", X"42", X"19", X"2d", X"1c", X"15", X"d6", X"0d", X"c6", X"1c", X"19", X"f2", X"fe", X"d7",
                                                        X"f3", X"17", X"29", X"53", X"16", X"f8", X"fd", X"f2", X"05", X"06", X"12", X"ee", X"0a", X"37", X"0d", X"d3", X"e7", X"e3", X"22", X"fd", X"02", X"e0", X"0c", X"06", X"e8", X"ee",
                                                        X"f6", X"e9", X"1c", X"fb", X"db", X"05", X"e5", X"02", X"2d", X"3a", X"fc", X"ff", X"dc", X"0c", X"c4", X"18", X"e2", X"e9", X"0c", X"23", X"03", X"f2", X"22", X"01", X"dd", X"14",
                                                        X"f6", X"03", X"1d", X"00", X"f9", X"e8", X"b6", X"f8", X"fc", X"11", X"0c", X"eb", X"24", X"09", X"f5", X"f0", X"fb", X"f1", X"2c", X"11", X"e1", X"e4", X"de", X"f4", X"f5", X"48",
                                                        X"fb", X"fa", X"2e", X"f5", X"02", X"be", X"ed", X"20", X"00", X"ea", X"da", X"23", X"ea", X"d3", X"f7", X"56", X"00", X"e9", X"19", X"08", X"1e", X"0a", X"01", X"d3", X"01", X"f8",
                                                        X"f2", X"00", X"fb", X"f7", X"db", X"0f", X"03", X"ef", X"d8", X"eb", X"13", X"26", X"03", X"da", X"f1", X"01", X"cd", X"08", X"cf", X"d9", X"f9", X"03", X"f0", X"02", X"f4", X"10",
                                                        X"11", X"4b", X"f5", X"10", X"f8", X"0a", X"ea", X"dd", X"bb", X"fb", X"fa", X"42", X"ee", X"d0", X"07", X"f8", X"06", X"1c", X"fc", X"06", X"0e", X"15", X"f0", X"f6", X"00", X"e0",
                                                        X"ef", X"d1", X"f4", X"cf", X"fc", X"ec", X"1e", X"55", X"0d", X"12", X"f2", X"07", X"e7", X"00", X"c6", X"f2", X"0b", X"12", X"fa", X"f3", X"d1", X"ef", X"f0", X"c4", X"03", X"16",
                                                        X"1e", X"01", X"11", X"eb", X"b4", X"11", X"13", X"0b", X"f6", X"09", X"00", X"d9", X"12", X"fe", X"f8", X"0d", X"e6", X"0f", X"fb", X"19", X"c9", X"07", X"1b", X"2c", X"f3", X"16",
                                                        X"de", X"08", X"3a", X"2e", X"05", X"28", X"ee", X"f5", X"d3", X"f8", X"c1", X"10", X"dc", X"30", X"0b", X"f6", X"e2", X"f9", X"1a", X"db", X"fe", X"4c", X"1e", X"0f", X"e0", X"0e",
                                                        X"04", X"f3", X"ff", X"3f", X"13", X"04", X"cd", X"fa", X"05", X"fd", X"09", X"f5", X"1a", X"11", X"06", X"f0", X"c1", X"f1", X"14", X"e9", X"e4", X"dd", X"1b", X"ff", X"ff", X"1f",
                                                        X"fb", X"2f", X"e2", X"0b", X"d7", X"fb", X"bc", X"e8", X"ec", X"57", X"08", X"cc", X"eb", X"f1", X"ee", X"e2", X"12", X"2c", X"f5", X"01", X"c8", X"17", X"e4", X"2e", X"21", X"d2",
                                                        X"0c", X"1e", X"04", X"e6", X"33", X"ff", X"f0", X"21", X"10", X"03", X"cc", X"07", X"c1", X"0f", X"0e", X"48", X"f9", X"e2", X"ed", X"ea", X"00", X"d7", X"17", X"3b", X"e7", X"06",
                                                        X"d5", X"f3", X"f5", X"e4", X"1a", X"e1", X"08", X"1f", X"17", X"fc", X"df", X"4c", X"e3", X"0a", X"0d", X"15", X"02", X"02", X"b2", X"15", X"fc", X"ee", X"00", X"0b", X"fd", X"e8",
                                                        X"d4", X"ed", X"fe", X"0b", X"27", X"05", X"da", X"e9", X"ee", X"08", X"01", X"48", X"f8", X"1a", X"e6", X"f3", X"09", X"c7", X"fd", X"35", X"02", X"fd", X"fb", X"f5", X"fc", X"0e",
                                                        X"15", X"ed", X"ee", X"b6", X"ca", X"00", X"ea", X"0e", X"19", X"31", X"08", X"f7", X"f2", X"fa", X"f3", X"f4", X"f9", X"33", X"14", X"09", X"e9", X"02", X"f3", X"38", X"f9", X"c2",
                                                        X"06", X"0d", X"e2", X"e7", X"fb", X"18", X"e4", X"0f", X"dd", X"bd", X"b4", X"ed", X"1d", X"29", X"00", X"31", X"e1", X"e8", X"e6", X"09", X"c1", X"f6", X"1d", X"45", X"04", X"fa",
                                                        X"e5", X"e3", X"1d", X"3d", X"f4", X"da", X"e2", X"14", X"1a", X"0b", X"d9", X"eb", X"c6", X"36", X"f9", X"17", X"0f", X"f0", X"e8", X"4a", X"12", X"2f", X"ed", X"f5", X"be", X"0c",
                                                        X"e5", X"0c", X"f6", X"d1", X"f2", X"ed", X"07", X"f8", X"d4", X"42", X"e8", X"16", X"ed", X"ef", X"0c", X"f5", X"de", X"d4", X"03", X"3c", X"09", X"fb", X"bb", X"eb", X"df", X"c5",
                                                        X"08", X"12", X"19", X"f9", X"02", X"07", X"02", X"00", X"f8", X"e0", X"01", X"fe", X"dc", X"fb", X"ee", X"d9", X"00", X"e4", X"db", X"02", X"f3", X"0f", X"ef", X"04", X"17", X"49",
                                                        X"c9", X"e9", X"01", X"02", X"25", X"1c", X"03", X"43", X"25", X"10", X"c3", X"0c", X"e6", X"13", X"0d", X"c4", X"f0", X"c7", X"d5", X"f7", X"27", X"24", X"09", X"3e", X"12", X"05",
                                                        X"d5", X"f6", X"ef", X"15", X"f3", X"0d", X"10", X"cc", X"e6", X"f0", X"02", X"57", X"f7", X"27", X"dc", X"f4", X"00", X"05", X"ff", X"db", X"e8", X"4b", X"fc", X"17", X"05", X"02",
                                                        X"eb", X"d5", X"ea", X"ca", X"27", X"fd", X"da", X"e8", X"e2", X"17", X"e4", X"37", X"10", X"c9", X"33", X"fd", X"eb", X"c7", X"10", X"22", X"f9", X"ea", X"c9", X"13", X"09", X"04",
                                                        X"ff", X"2c", X"04", X"0a", X"19", X"04", X"11", X"fd", X"12", X"29", X"e8", X"0b", X"12", X"e7", X"b3", X"f3", X"10", X"ea", X"e3", X"f2", X"d3", X"f4", X"fd", X"dd", X"f8", X"e7",
                                                        X"00", X"fc", X"09", X"ef", X"eb", X"fe", X"13", X"75", X"e5", X"d6", X"da", X"e8", X"27", X"43", X"06", X"09", X"3b", X"14", X"bd", X"09");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"09";
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

