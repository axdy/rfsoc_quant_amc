-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block332.vhd
-- Created: 2023-08-07 19:04:38
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block332
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage100/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block332 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block332;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block332 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"37", X"f1", X"0a", X"e4", X"3d", X"ec", X"00", X"0a", X"ff", X"d2", X"f3", X"0d", X"e9", X"3f",
                                                        X"ee", X"fc", X"ee", X"fb", X"fa", X"02", X"0c", X"f8", X"f0", X"d9", X"0e", X"d6", X"d5", X"0d", X"db", X"18", X"3d", X"f1", X"23", X"f8", X"00", X"0b", X"26", X"0c", X"ea", X"bf",
                                                        X"ef", X"fb", X"e6", X"16", X"21", X"0a", X"df", X"e9", X"09", X"fd", X"16", X"e3", X"28", X"dd", X"19", X"21", X"11", X"24", X"0c", X"04", X"2d", X"58", X"f3", X"e3", X"39", X"fb",
                                                        X"1c", X"f8", X"f8", X"1b", X"28", X"c2", X"13", X"15", X"ed", X"f6", X"ea", X"ec", X"fc", X"f4", X"ee", X"fa", X"05", X"09", X"42", X"cd", X"32", X"2c", X"12", X"14", X"eb", X"db",
                                                        X"f9", X"38", X"09", X"f9", X"12", X"fa", X"08", X"e4", X"56", X"0f", X"d4", X"c9", X"08", X"f8", X"14", X"fd", X"d3", X"ef", X"fb", X"fa", X"06", X"ec", X"fe", X"f6", X"06", X"d5",
                                                        X"0a", X"f5", X"0f", X"41", X"fe", X"01", X"02", X"3d", X"0b", X"f2", X"be", X"f5", X"09", X"fb", X"3f", X"0a", X"03", X"cf", X"05", X"ae", X"e9", X"0e", X"cd", X"3b", X"1a", X"0a",
                                                        X"55", X"fa", X"06", X"1b", X"2c", X"12", X"19", X"fd", X"0f", X"09", X"e1", X"f2", X"08", X"dd", X"28", X"fb", X"01", X"f1", X"11", X"d6", X"29", X"fe", X"cc", X"10", X"fe", X"17",
                                                        X"1d", X"11", X"1d", X"54", X"e8", X"e1", X"ef", X"01", X"20", X"ed", X"1f", X"3b", X"f5", X"c2", X"05", X"e8", X"07", X"f0", X"22", X"0d", X"24", X"ed", X"10", X"f5", X"0d", X"dd",
                                                        X"1a", X"48", X"ec", X"c2", X"1b", X"51", X"f3", X"14", X"18", X"d0", X"0e", X"fa", X"ee", X"09", X"12", X"06", X"1e", X"0e", X"e9", X"ed", X"12", X"cf", X"d2", X"04", X"21", X"16",
                                                        X"2e", X"fd", X"e1", X"fa", X"ff", X"ee", X"f0", X"35", X"e6", X"02", X"fe", X"31", X"f4", X"fd", X"ff", X"12", X"2f", X"fc", X"b8", X"fe", X"08", X"2c", X"05", X"fa", X"3d", X"33",
                                                        X"f4", X"b4", X"ed", X"fd", X"d7", X"3f", X"24", X"ff", X"fe", X"f4", X"07", X"01", X"03", X"14", X"d5", X"29", X"ea", X"bf", X"f3", X"fc", X"f2", X"eb", X"22", X"f3", X"1b", X"f7",
                                                        X"f4", X"df", X"23", X"12", X"24", X"24", X"0d", X"04", X"dc", X"f4", X"33", X"16", X"f6", X"06", X"e6", X"ff", X"0c", X"ce", X"fb", X"29", X"d0", X"31", X"03", X"ef", X"f0", X"05",
                                                        X"1b", X"06", X"0d", X"f3", X"fd", X"f1", X"0b", X"02", X"48", X"2d", X"0d", X"f5", X"05", X"e6", X"06", X"11", X"fb", X"1a", X"36", X"ff", X"ca", X"f6", X"01", X"e6", X"0a", X"07",
                                                        X"11", X"d5", X"0b", X"5d", X"e2", X"fd", X"d0", X"15", X"f6", X"ff", X"42", X"ee", X"1d", X"05", X"30", X"01", X"f3", X"0a", X"fb", X"bd", X"fa", X"1a", X"e4", X"f3", X"e2", X"f7",
                                                        X"c1", X"f7", X"10", X"f2", X"16", X"ef", X"d8", X"f5", X"05", X"15", X"f1", X"ed", X"2a", X"f5", X"06", X"f8", X"4b", X"f5", X"fe", X"12", X"09", X"f8", X"f7", X"d8", X"01", X"3e",
                                                        X"d8", X"06", X"f9", X"ed", X"0c", X"e6", X"22", X"ff", X"f9", X"1e", X"31", X"d1", X"eb", X"b1", X"07", X"1d", X"f5", X"fe", X"dc", X"d0", X"e9", X"e5", X"3a", X"07", X"fa", X"cd",
                                                        X"1f", X"f0", X"e8", X"e6", X"16", X"dc", X"f3", X"fb", X"d1", X"1b", X"f7", X"e1", X"fa", X"f8", X"13", X"29", X"1d", X"30", X"03", X"da", X"1d", X"03", X"d7", X"09", X"27", X"46",
                                                        X"ef", X"fe", X"0c", X"fb", X"09", X"07", X"19", X"0d", X"e9", X"33", X"0d", X"d3", X"df", X"fb", X"ee", X"4e", X"fa", X"e5", X"52", X"ff", X"00", X"e1", X"01", X"f2", X"ec", X"e6",
                                                        X"f5", X"23", X"cc", X"0c", X"23", X"eb", X"e3", X"fa", X"3a", X"0b", X"1b", X"da", X"11", X"fd", X"25", X"d8", X"0e", X"fd", X"eb", X"0a", X"fb", X"43", X"f3", X"e6", X"ca", X"05",
                                                        X"e8", X"0e", X"e7", X"0a", X"c6", X"e3", X"01", X"37", X"10", X"0e", X"cd", X"42", X"ff", X"f2", X"3f", X"07", X"fb", X"14", X"0b", X"d6", X"02", X"fe", X"06", X"45", X"dc", X"1c",
                                                        X"ff", X"e5", X"f4", X"f7", X"04", X"fd", X"10", X"df", X"13", X"27", X"13", X"d2", X"f3", X"17", X"cd", X"f6", X"db", X"e4", X"3f", X"f2", X"2a", X"fe", X"f7", X"02", X"e3", X"dc",
                                                        X"c9", X"b6", X"17", X"c6", X"dd", X"2c", X"1f", X"e6", X"03", X"f4", X"f9", X"f0", X"05", X"fd", X"39", X"f7", X"14", X"e2", X"0b", X"34", X"04", X"fb", X"ea", X"12", X"07", X"ed",
                                                        X"e7", X"fc", X"1f", X"07", X"25", X"27", X"13", X"fd", X"21", X"09", X"e2", X"12", X"04", X"31", X"f7", X"05", X"58", X"03", X"0a", X"01", X"46", X"04", X"e5", X"d0", X"1f", X"ea",
                                                        X"e2", X"1e", X"ff", X"22", X"ed", X"e6", X"bf", X"fa", X"01", X"df", X"17", X"f5", X"f1", X"c8", X"f8", X"28", X"15", X"15", X"31", X"2e", X"24", X"08", X"b7", X"09", X"f6", X"07",
                                                        X"39", X"db", X"f1", X"c7", X"20", X"f7", X"f2", X"f6", X"2f", X"4b", X"f2", X"e6", X"36", X"04", X"fe", X"15", X"4b", X"ed", X"f7", X"0b", X"f5", X"f1", X"12", X"07", X"f8", X"11",
                                                        X"d9", X"fb", X"44", X"02", X"f6", X"c3", X"ef", X"2f", X"16", X"d5", X"0f", X"2b", X"15", X"22", X"e2", X"16", X"0a", X"ef", X"3c", X"fc", X"f6", X"0a", X"1c", X"e5", X"09", X"1c",
                                                        X"0b", X"fb", X"f2", X"04", X"09", X"43", X"db", X"f5", X"38", X"f9", X"0a", X"ee", X"5d", X"db", X"fc", X"fb", X"0a", X"ec", X"f1", X"f0", X"d9", X"e1", X"f1", X"ff", X"49", X"00",
                                                        X"f0", X"0d", X"09", X"03", X"1f", X"f9", X"14", X"ac", X"09", X"23", X"09", X"07", X"23", X"f2", X"2f", X"f6", X"03", X"0f", X"0e", X"33", X"02", X"c4", X"09", X"23", X"d6", X"0a",
                                                        X"2e", X"4d", X"26", X"de", X"ba", X"0d", X"03", X"f8", X"3a", X"e0", X"11", X"00", X"ff", X"bc", X"eb", X"02", X"15", X"0a", X"df", X"f1", X"e5", X"f0", X"05", X"00", X"f3", X"f8",
                                                        X"04", X"04", X"05", X"1b", X"15", X"f8", X"12", X"12", X"df", X"f7", X"44", X"03", X"ed", X"06", X"36", X"17", X"fe", X"ad", X"05", X"de", X"f0", X"0e", X"e7", X"41", X"e5", X"ec",
                                                        X"fa", X"f5", X"02", X"f7", X"1c", X"13", X"e8", X"3a", X"0d", X"e3", X"df", X"01", X"dc", X"0a", X"e0", X"f5", X"df", X"fc", X"0a", X"f4", X"08", X"fd", X"ec", X"23", X"fc", X"fb",
                                                        X"0c", X"fa", X"14", X"2d", X"1a", X"f6", X"4e", X"ff", X"05", X"ff", X"2b", X"ec", X"02", X"03", X"13", X"36", X"d6", X"f9", X"fe", X"d3", X"d3", X"f5", X"32", X"06", X"f8", X"0b",
                                                        X"1b", X"da", X"ee", X"da", X"f3", X"c3", X"ea", X"f2", X"11", X"2d", X"dd", X"f5", X"3f", X"0f", X"ea", X"dd", X"1c", X"3f", X"09", X"eb", X"f3", X"16", X"ed", X"0d", X"23", X"3f",
                                                        X"04", X"e7", X"22", X"fd", X"f3", X"f2", X"2e", X"fd", X"1a", X"fa", X"fa", X"c9", X"f7", X"06", X"ed", X"f2", X"33", X"e9", X"30", X"fb", X"f6", X"1b", X"3b", X"c9", X"db", X"e3",
                                                        X"fe", X"22", X"ee", X"f9", X"d8", X"38", X"de", X"e3", X"d8", X"03", X"00", X"0a", X"ed", X"1d", X"22", X"25", X"0e", X"f0", X"fa", X"e6", X"e0", X"2d", X"e5", X"db", X"0d", X"09",
                                                        X"17", X"f0", X"14", X"f5", X"c6", X"20", X"0b", X"09", X"f5", X"06", X"2e", X"2a", X"f7", X"f9", X"d6", X"0b", X"06", X"ec", X"1d", X"04", X"f8", X"33", X"24", X"22", X"03", X"f9",
                                                        X"fa", X"4f", X"e6", X"f8", X"f7", X"10", X"07", X"f4", X"10", X"3a", X"de", X"b7", X"f5", X"df", X"ea", X"08", X"f5", X"09", X"21", X"e9", X"3a", X"02", X"f2", X"f2", X"0e", X"d2",
                                                        X"c9", X"c6", X"ff", X"e5", X"ef", X"f2", X"f6", X"ed", X"dc", X"fd", X"e5", X"0a", X"06", X"01", X"00", X"1b", X"d5", X"cb", X"e6", X"34", X"ef", X"1a", X"16", X"3b", X"27", X"ec",
                                                        X"2f", X"fa", X"0b", X"f7", X"fc", X"35", X"3a", X"33", X"ff", X"41", X"02", X"fe", X"da", X"2f", X"39", X"05", X"d7", X"fc", X"09", X"25", X"0c", X"dd", X"d5", X"bf", X"0b", X"2c",
                                                        X"dc", X"00", X"0c", X"1c", X"11", X"fc", X"e2", X"06", X"fd", X"11", X"eb", X"1b", X"08", X"ac", X"19", X"e5", X"0d", X"01", X"d1", X"09", X"3c", X"f3", X"d7", X"e5", X"12", X"21",
                                                        X"da", X"fb", X"22", X"d0", X"16", X"44", X"dc", X"15", X"e0", X"e7", X"35", X"05", X"0d", X"ff", X"0b", X"f0", X"54", X"25", X"e0", X"20", X"17", X"fe", X"06", X"ee", X"00", X"08",
                                                        X"fb", X"f3", X"33", X"f8", X"08", X"dc", X"e1", X"fc", X"2a", X"a8", X"fd", X"34", X"ea", X"27", X"fe", X"2c", X"07", X"f8", X"0c", X"08", X"10", X"f5", X"68", X"0a", X"05", X"cd",
                                                        X"10", X"e7", X"01", X"14", X"2e", X"36", X"f4", X"f8", X"b7", X"f7", X"f0", X"e2", X"03", X"f7", X"21", X"0f", X"0e", X"3a", X"e7", X"11", X"dd", X"19", X"ec", X"0a", X"13", X"00",
                                                        X"14", X"e7", X"11", X"e7", X"d7", X"42", X"fe", X"cc", X"eb", X"fa", X"ee", X"2e", X"20", X"f8", X"ce", X"f9", X"15", X"ff", X"3d", X"f8", X"0d", X"32", X"06", X"e6", X"10", X"f1",
                                                        X"df", X"07", X"07", X"09", X"0b", X"00", X"f1", X"28", X"f4", X"e8", X"2c", X"d2", X"ff", X"b6", X"e8", X"1e", X"f3", X"58", X"21", X"fe", X"fc", X"ff", X"f8", X"e5", X"fc", X"f6",
                                                        X"31", X"0d", X"1b", X"42", X"0b", X"00", X"cc", X"cf", X"1b", X"05", X"0e", X"0f", X"02", X"e4", X"fb", X"db", X"eb", X"29", X"1d", X"e2", X"d4", X"13", X"c8", X"35", X"e5", X"ea",
                                                        X"24", X"fa", X"04", X"e3", X"58", X"ca", X"f4", X"c6", X"1f", X"c2", X"fd", X"05", X"2a", X"ec", X"0b", X"f3", X"c6", X"f5", X"ed", X"10", X"43", X"17", X"ec", X"01", X"fd", X"e8",
                                                        X"f0", X"11", X"d9", X"44", X"df", X"f2", X"29", X"03", X"fc", X"de", X"2f", X"f0", X"db", X"21", X"13", X"43", X"f9", X"ec", X"d6", X"1e", X"47", X"fe", X"d0", X"e9", X"04", X"fe",
                                                        X"37", X"fd", X"06", X"bb", X"ee", X"1d", X"eb", X"fd", X"00", X"3d", X"df", X"f8", X"fb", X"15", X"11", X"d9", X"03", X"2d", X"e5", X"f6", X"2b", X"35", X"0c", X"ff", X"16", X"20",
                                                        X"17", X"fd", X"07", X"f8", X"07", X"f0", X"2c", X"1a", X"01", X"e9", X"0a", X"00", X"fc", X"f5", X"11", X"ef", X"02", X"eb", X"44", X"f2", X"07", X"f4", X"37", X"25", X"bf", X"e7",
                                                        X"02", X"f6", X"f2", X"fc", X"ba", X"d9", X"fe", X"f0", X"f8", X"fe", X"03", X"fd", X"3a", X"15", X"fa", X"27", X"f2", X"bd", X"03", X"11", X"12", X"41", X"fa", X"f1", X"2b", X"fc",
                                                        X"0b", X"30", X"3a", X"01", X"e4", X"bd", X"06", X"37", X"e2", X"fe", X"c6", X"f9", X"00", X"e3", X"49", X"f5", X"e4", X"e3", X"3c", X"f6", X"d5", X"cc", X"0d", X"14", X"f0", X"ed",
                                                        X"f9", X"e4", X"f2", X"f1", X"50", X"0a", X"1e", X"10", X"4d", X"10", X"2c", X"ba", X"02", X"eb", X"e3", X"19", X"e9", X"fa", X"13", X"f1", X"1c", X"04", X"06", X"00", X"fc", X"2e",
                                                        X"e3", X"c4", X"02", X"5e", X"fa", X"03", X"05", X"18", X"f6", X"07", X"29", X"f9", X"04", X"f3", X"e8", X"d5", X"18", X"e9", X"08", X"c3", X"d6", X"f3", X"fd", X"51", X"20", X"ee",
                                                        X"dc", X"01", X"f5", X"07", X"0f", X"29", X"16", X"f9", X"e8", X"16", X"06", X"fa", X"f1", X"42", X"05", X"e9", X"d1", X"03", X"04", X"02", X"05", X"cf", X"24", X"00", X"0b", X"f8",
                                                        X"f0", X"f7", X"0f", X"2d", X"1e", X"f6", X"f5", X"04", X"14", X"08", X"2f", X"05", X"dc", X"fc", X"11", X"53", X"00", X"11", X"ee", X"02", X"e1", X"f1", X"c8", X"fc", X"1d", X"ff",
                                                        X"ff", X"f8", X"1f", X"15", X"0b", X"ef", X"de", X"24", X"e6", X"38", X"07", X"e0", X"e2", X"04", X"1d", X"d9", X"01", X"2a", X"de", X"b0", X"1f", X"05", X"e0", X"ff", X"28", X"3b",
                                                        X"07", X"e6", X"e4", X"10", X"13", X"eb", X"29", X"03", X"d6", X"27", X"11", X"28", X"01", X"fd", X"e9", X"09", X"ff", X"f8", X"fd", X"fd", X"04", X"0a", X"45", X"24", X"ca", X"e0",
                                                        X"20", X"4a", X"f0", X"14", X"cf", X"47", X"d6", X"fd", X"49", X"f8", X"00", X"ea", X"06", X"0b", X"17", X"d1", X"11", X"01", X"f2", X"1d", X"e3", X"02", X"2a", X"ff", X"de", X"f3",
                                                        X"0a", X"fb", X"f2", X"33", X"2f", X"df", X"14", X"c1", X"c2", X"fe", X"f5", X"f7", X"fe", X"eb", X"bd", X"fb", X"f3", X"eb", X"39", X"e5", X"f3", X"ea", X"fb", X"39", X"e7", X"fb",
                                                        X"10", X"2a", X"27", X"0f", X"12", X"ff", X"14", X"13", X"34", X"0b", X"d9", X"2b", X"fe", X"bc", X"f5", X"02", X"f0", X"09", X"f4", X"04", X"1a", X"0d", X"f0", X"eb", X"46", X"0e",
                                                        X"db", X"af", X"02", X"33", X"09", X"1c", X"dc", X"2a", X"08", X"0b", X"52", X"f8", X"02", X"04", X"43", X"03", X"fb", X"b6", X"00", X"1d", X"ea", X"07", X"d5", X"db", X"32", X"e8",
                                                        X"c7", X"f7", X"05", X"e0", X"27", X"dc", X"0d", X"20", X"05", X"2e", X"06", X"14", X"11", X"14", X"02", X"03", X"34", X"01", X"0b", X"0e", X"41", X"44", X"cd", X"01", X"ee", X"c7",
                                                        X"fb", X"15", X"0d", X"12", X"22", X"03", X"30", X"f1", X"0b", X"e6", X"fe", X"3c", X"da", X"01", X"19", X"03", X"ef", X"12", X"e1", X"33", X"fe", X"e4", X"0d", X"ec", X"fc", X"0c",
                                                        X"4e", X"01", X"0f", X"b8", X"f4", X"f8", X"00", X"17", X"e7", X"37", X"f6", X"f1", X"b6", X"e1", X"19", X"eb", X"24", X"fe", X"dc", X"1c", X"06", X"d0", X"0f", X"07", X"1b", X"e9",
                                                        X"07", X"eb", X"17", X"f2", X"1e", X"01", X"1d", X"1a", X"c6", X"2f", X"f5", X"ad", X"f7", X"e7", X"c7", X"05", X"23", X"f9", X"d3", X"f2", X"14", X"21", X"25", X"18", X"ca", X"18",
                                                        X"1c", X"c8", X"ee", X"de", X"ee", X"f2", X"05", X"ef", X"f8", X"f2", X"07", X"13", X"3a", X"0a", X"05", X"0c", X"0a", X"d2", X"c8", X"e2", X"10", X"0a", X"1a", X"fd", X"31", X"f2",
                                                        X"11", X"ec", X"27", X"2b", X"0d", X"31", X"fc", X"09", X"13", X"f4", X"d9", X"45", X"38", X"e9", X"a9", X"fa", X"12", X"1d", X"4b", X"32", X"ca", X"12", X"0e", X"3b", X"ef", X"11",
                                                        X"cb", X"07", X"e6", X"f8", X"b3", X"fb", X"0c", X"13", X"15", X"ea", X"bd", X"25", X"f9", X"2a", X"0a", X"0c", X"f3", X"0d", X"f2", X"f7", X"16", X"e6", X"1b", X"f8", X"31", X"08",
                                                        X"21", X"b9", X"db", X"da", X"ff", X"f0", X"d0", X"10", X"07", X"fe", X"b2", X"f3", X"08", X"1b", X"1b", X"fa", X"fb", X"10", X"f4", X"05", X"f8", X"00", X"fd", X"19", X"0c", X"fa",
                                                        X"b1", X"f0", X"15", X"f5", X"f0", X"d0", X"e6", X"e6", X"03", X"25", X"e6", X"ff", X"f0", X"1e", X"0e", X"df", X"1d", X"ef", X"ed", X"f8", X"07", X"0e", X"0d", X"28", X"f4", X"eb",
                                                        X"f0", X"19", X"f3", X"ea", X"d1", X"e5", X"dc", X"f4", X"07", X"e1", X"07", X"02", X"00", X"d5", X"14", X"09", X"f8", X"eb", X"1b", X"12", X"22", X"0b", X"e1", X"e8", X"07", X"fd",
                                                        X"42", X"22", X"22", X"20", X"1d", X"2a", X"e4", X"09", X"d6", X"4d", X"2b", X"fd", X"09", X"e4", X"0e", X"34", X"17", X"35", X"21", X"ba", X"f3", X"bd", X"ff", X"fa", X"bb", X"e7",
                                                        X"25", X"05", X"30", X"f4", X"07", X"1e", X"0a", X"ee", X"e5", X"2b", X"f4", X"02", X"f7", X"fa", X"18", X"f5", X"35", X"fe", X"34", X"f8", X"02", X"03", X"03", X"c4", X"2e", X"2e",
                                                        X"06", X"ca", X"0c", X"01", X"1b", X"ef", X"f5", X"f2", X"39", X"ef", X"02", X"f3", X"0f", X"28", X"eb", X"e6", X"0a", X"35", X"08", X"24", X"fb", X"f7", X"16", X"05", X"e0", X"f9",
                                                        X"11", X"e7", X"fd", X"04", X"24", X"19", X"eb", X"f4", X"de", X"ec", X"d2", X"38", X"01", X"06", X"ec", X"f9", X"12", X"fc", X"24", X"26", X"e3", X"20", X"10", X"d9", X"d4", X"22",
                                                        X"1e", X"f0", X"eb", X"ec", X"d8", X"00", X"0c", X"05", X"20", X"dd", X"01", X"f2", X"04", X"4c", X"c3", X"21", X"03", X"0e", X"2b", X"fe");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fe";
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

