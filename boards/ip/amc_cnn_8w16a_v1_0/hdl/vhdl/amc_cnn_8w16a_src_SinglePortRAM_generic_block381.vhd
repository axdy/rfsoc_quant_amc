-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block381.vhd
-- Created: 2023-08-07 19:04:44
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block381
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage30/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block381 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block381;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block381 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"41", X"07", X"0d", X"ea", X"e0", X"2f", X"0f", X"fd", X"13", X"e4", X"01", X"fd", X"01", X"27",
                                                        X"10", X"ff", X"d1", X"ff", X"01", X"12", X"38", X"ef", X"f5", X"d5", X"fc", X"1b", X"f5", X"f3", X"d6", X"f3", X"eb", X"00", X"e7", X"fc", X"07", X"d9", X"0f", X"02", X"e8", X"ed",
                                                        X"f8", X"dc", X"da", X"fb", X"cb", X"28", X"14", X"01", X"29", X"07", X"f6", X"13", X"0f", X"0b", X"d7", X"0c", X"08", X"28", X"ed", X"f1", X"e6", X"00", X"08", X"ed", X"23", X"13",
                                                        X"f6", X"fe", X"3c", X"1e", X"bf", X"fc", X"04", X"07", X"f9", X"dc", X"05", X"16", X"26", X"ff", X"dc", X"0b", X"00", X"de", X"18", X"e1", X"ed", X"d2", X"17", X"06", X"d5", X"0d",
                                                        X"f8", X"30", X"00", X"e0", X"26", X"f2", X"fa", X"27", X"fc", X"3f", X"ee", X"d3", X"13", X"0b", X"dd", X"05", X"eb", X"07", X"24", X"e4", X"da", X"02", X"23", X"f8", X"ec", X"36",
                                                        X"07", X"34", X"fb", X"e5", X"d5", X"f6", X"d1", X"1b", X"09", X"e6", X"3f", X"06", X"27", X"e6", X"2b", X"0b", X"fe", X"26", X"07", X"31", X"0c", X"f5", X"e0", X"e2", X"1d", X"03",
                                                        X"f2", X"02", X"1f", X"e3", X"22", X"d0", X"1b", X"17", X"12", X"d9", X"f9", X"fb", X"c5", X"f2", X"12", X"e0", X"32", X"00", X"0b", X"10", X"0e", X"0c", X"25", X"d4", X"13", X"06",
                                                        X"03", X"f1", X"e1", X"e6", X"37", X"d6", X"10", X"0b", X"08", X"11", X"00", X"d9", X"fe", X"db", X"16", X"e8", X"c1", X"02", X"d5", X"f7", X"f7", X"e1", X"4f", X"10", X"0a", X"f7",
                                                        X"24", X"1d", X"25", X"e4", X"1d", X"eb", X"e9", X"12", X"d6", X"06", X"18", X"df", X"18", X"14", X"f4", X"e2", X"f2", X"dc", X"db", X"2a", X"04", X"ed", X"cc", X"09", X"1f", X"13",
                                                        X"ff", X"f0", X"d0", X"08", X"1a", X"f3", X"ec", X"28", X"df", X"df", X"0c", X"d0", X"f7", X"fe", X"d1", X"05", X"0d", X"e5", X"ef", X"e8", X"0a", X"1b", X"0e", X"2a", X"f9", X"c3",
                                                        X"14", X"02", X"04", X"ff", X"04", X"2c", X"1a", X"ea", X"2c", X"0c", X"1b", X"16", X"ed", X"34", X"18", X"19", X"10", X"d6", X"e2", X"03", X"14", X"4d", X"f9", X"dc", X"cb", X"f9",
                                                        X"f7", X"da", X"f2", X"d7", X"de", X"b7", X"1a", X"21", X"0e", X"06", X"cf", X"14", X"e7", X"fd", X"2d", X"07", X"24", X"12", X"23", X"27", X"de", X"bd", X"1a", X"ef", X"e6", X"fa",
                                                        X"14", X"fc", X"ea", X"e2", X"03", X"04", X"10", X"01", X"08", X"23", X"0f", X"34", X"0e", X"d4", X"ef", X"11", X"0e", X"ff", X"08", X"fa", X"1a", X"03", X"06", X"fe", X"1d", X"e3",
                                                        X"f1", X"f2", X"04", X"13", X"f6", X"11", X"10", X"fa", X"ed", X"04", X"22", X"04", X"13", X"e7", X"d7", X"10", X"2a", X"ef", X"16", X"f0", X"d2", X"f0", X"15", X"fe", X"fd", X"ff",
                                                        X"0d", X"fd", X"fa", X"04", X"1c", X"31", X"01", X"08", X"07", X"ed", X"06", X"11", X"f5", X"d0", X"02", X"f0", X"f7", X"10", X"05", X"0c", X"37", X"02", X"f9", X"1c", X"12", X"be",
                                                        X"da", X"0c", X"d0", X"f1", X"1a", X"f0", X"d0", X"14", X"00", X"de", X"e9", X"07", X"17", X"0e", X"04", X"34", X"e3", X"ef", X"10", X"d2", X"16", X"0a", X"ea", X"08", X"0c", X"04",
                                                        X"2d", X"2d", X"11", X"2a", X"0e", X"35", X"df", X"07", X"d3", X"f6", X"0b", X"f8", X"3c", X"09", X"08", X"03", X"35", X"f8", X"e8", X"be", X"f2", X"06", X"f8", X"f9", X"f3", X"30",
                                                        X"13", X"ef", X"11", X"ff", X"03", X"ea", X"ee", X"2e", X"10", X"e6", X"10", X"1d", X"17", X"f8", X"f1", X"17", X"0a", X"f0", X"c2", X"1a", X"0c", X"d8", X"db", X"18", X"1d", X"19",
                                                        X"09", X"da", X"03", X"10", X"dd", X"2a", X"0a", X"fe", X"36", X"02", X"f9", X"07", X"3a", X"1a", X"dd", X"e6", X"15", X"08", X"cd", X"1c", X"e9", X"f9", X"2d", X"f0", X"f0", X"00",
                                                        X"f5", X"0e", X"26", X"ed", X"fb", X"12", X"05", X"dc", X"01", X"06", X"c7", X"24", X"d1", X"e7", X"19", X"fd", X"10", X"0a", X"42", X"f7", X"12", X"ee", X"0c", X"d9", X"f6", X"0b",
                                                        X"ca", X"34", X"f5", X"fa", X"47", X"10", X"0b", X"e9", X"16", X"db", X"24", X"ff", X"15", X"2a", X"da", X"f1", X"e9", X"e5", X"0c", X"f5", X"43", X"f9", X"08", X"07", X"ec", X"1b",
                                                        X"13", X"c7", X"14", X"f8", X"fe", X"04", X"e1", X"06", X"e0", X"e8", X"1d", X"fd", X"fe", X"fe", X"07", X"25", X"0c", X"12", X"13", X"dc", X"b9", X"f0", X"d5", X"f8", X"f1", X"f7",
                                                        X"43", X"fb", X"0e", X"25", X"db", X"1a", X"18", X"e0", X"0c", X"cd", X"e3", X"15", X"0e", X"e6", X"1e", X"07", X"05", X"f7", X"0e", X"f9", X"21", X"2b", X"d8", X"d2", X"fa", X"0e",
                                                        X"c5", X"eb", X"0b", X"e8", X"1f", X"ec", X"08", X"08", X"12", X"13", X"fa", X"2b", X"f5", X"05", X"16", X"02", X"ea", X"f4", X"f8", X"df", X"12", X"e2", X"44", X"fe", X"04", X"fd",
                                                        X"1c", X"09", X"0f", X"ff", X"fe", X"16", X"fa", X"1a", X"e0", X"20", X"3a", X"06", X"cf", X"01", X"f2", X"15", X"f2", X"0f", X"23", X"df", X"1c", X"1d", X"cb", X"06", X"d1", X"d8",
                                                        X"f8", X"f1", X"30", X"15", X"0c", X"01", X"21", X"03", X"d6", X"f4", X"fa", X"dd", X"ca", X"ff", X"d9", X"0f", X"25", X"f9", X"27", X"09", X"06", X"d5", X"fd", X"08", X"e5", X"18",
                                                        X"ff", X"c8", X"ee", X"1b", X"e1", X"ea", X"2f", X"fc", X"e6", X"04", X"0d", X"e3", X"fa", X"31", X"e9", X"f9", X"11", X"3b", X"eb", X"e7", X"0b", X"0e", X"02", X"f2", X"19", X"f9",
                                                        X"09", X"dc", X"2d", X"f4", X"fe", X"25", X"00", X"c2", X"cf", X"fa", X"e5", X"f0", X"13", X"f0", X"de", X"f6", X"fa", X"fe", X"35", X"cd", X"e1", X"23", X"19", X"e5", X"e7", X"0d",
                                                        X"21", X"12", X"f9", X"e7", X"16", X"03", X"04", X"ff", X"0d", X"2f", X"03", X"d4", X"06", X"d1", X"db", X"f0", X"f9", X"18", X"f1", X"09", X"55", X"06", X"0c", X"e4", X"2a", X"28",
                                                        X"d6", X"e9", X"07", X"c2", X"d1", X"ea", X"d3", X"24", X"23", X"d2", X"12", X"01", X"05", X"09", X"fc", X"10", X"de", X"16", X"10", X"bb", X"d8", X"ed", X"c7", X"2a", X"20", X"09",
                                                        X"ea", X"f9", X"06", X"08", X"34", X"de", X"f6", X"e8", X"eb", X"23", X"02", X"16", X"20", X"05", X"ec", X"08", X"3b", X"10", X"14", X"05", X"04", X"1d", X"da", X"e9", X"1b", X"c7",
                                                        X"c7", X"fc", X"e3", X"ce", X"1e", X"e0", X"0d", X"0d", X"22", X"d5", X"2d", X"03", X"d7", X"07", X"18", X"33", X"e7", X"0e", X"ec", X"14", X"16", X"ed", X"50", X"fd", X"11", X"f4",
                                                        X"01", X"08", X"02", X"c2", X"11", X"12", X"d3", X"11", X"1b", X"e8", X"03", X"eb", X"3c", X"fd", X"05", X"05", X"1b", X"14", X"11", X"bc", X"24", X"cd", X"e0", X"ef", X"0c", X"da",
                                                        X"09", X"ee", X"fe", X"09", X"07", X"f0", X"2a", X"15", X"db", X"f4", X"11", X"fa", X"ed", X"fc", X"df", X"00", X"00", X"f5", X"f9", X"f9", X"0f", X"04", X"fe", X"f5", X"02", X"df",
                                                        X"17", X"c6", X"e6", X"01", X"06", X"de", X"44", X"f7", X"1d", X"07", X"01", X"ee", X"f4", X"1e", X"cc", X"e9", X"1f", X"e8", X"ca", X"09", X"f6", X"1b", X"20", X"14", X"0e", X"15",
                                                        X"17", X"e6", X"1d", X"fa", X"2a", X"00", X"f4", X"ef", X"e7", X"fe", X"e6", X"1a", X"fb", X"ee", X"00", X"03", X"06", X"d5", X"48", X"e6", X"e6", X"39", X"ea", X"d9", X"d9", X"15",
                                                        X"ef", X"0f", X"47", X"e9", X"dd", X"ff", X"ee", X"03", X"15", X"13", X"1d", X"d2", X"01", X"cf", X"df", X"08", X"da", X"05", X"02", X"fa", X"2c", X"01", X"02", X"e2", X"22", X"d9",
                                                        X"fe", X"19", X"ff", X"e2", X"02", X"13", X"02", X"03", X"00", X"ef", X"25", X"0e", X"05", X"16", X"0e", X"ed", X"11", X"f8", X"0e", X"c6", X"dc", X"07", X"f8", X"f4", X"ed", X"f7",
                                                        X"e4", X"fd", X"14", X"02", X"15", X"da", X"01", X"07", X"15", X"0b", X"ed", X"13", X"ea", X"1d", X"0a", X"e5", X"11", X"fd", X"01", X"11", X"1a", X"35", X"fa", X"fc", X"0f", X"e6",
                                                        X"df", X"01", X"17", X"2d", X"0a", X"ee", X"27", X"f3", X"f1", X"e6", X"05", X"12", X"10", X"cb", X"f5", X"ef", X"e1", X"f1", X"c8", X"ec", X"32", X"f8", X"1b", X"fa", X"f6", X"f8",
                                                        X"05", X"17", X"e1", X"f0", X"0a", X"f4", X"f8", X"f6", X"d3", X"2e", X"15", X"f5", X"4a", X"07", X"24", X"e9", X"14", X"da", X"d7", X"21", X"06", X"f4", X"f4", X"05", X"0a", X"fd",
                                                        X"2b", X"f2", X"d0", X"fa", X"09", X"e1", X"1d", X"30", X"b7", X"24", X"00", X"e0", X"04", X"e6", X"c2", X"f3", X"ee", X"eb", X"fd", X"fa", X"fe", X"ff", X"e6", X"f8", X"16", X"18",
                                                        X"09", X"d8", X"d3", X"02", X"f0", X"05", X"1c", X"e3", X"1a", X"fc", X"21", X"17", X"31", X"eb", X"e4", X"fc", X"13", X"e8", X"dd", X"fe", X"e6", X"ee", X"1b", X"e7", X"d3", X"19",
                                                        X"0c", X"08", X"03", X"04", X"21", X"f3", X"19", X"09", X"f7", X"f8", X"0a", X"4b", X"33", X"fc", X"1f", X"fb", X"08", X"13", X"30", X"1a", X"eb", X"21", X"03", X"1d", X"f4", X"f3",
                                                        X"0d", X"09", X"f5", X"f8", X"d3", X"1a", X"22", X"f0", X"06", X"f7", X"c5", X"28", X"fa", X"fa", X"e9", X"0f", X"cd", X"3b", X"fc", X"fa", X"37", X"20", X"02", X"e4", X"00", X"3d",
                                                        X"cd", X"ba", X"0f", X"c2", X"f3", X"0d", X"1e", X"30", X"02", X"00", X"fe", X"14", X"0a", X"f9", X"37", X"34", X"d2", X"fb", X"0c", X"ef", X"c2", X"ed", X"0e", X"fe", X"21", X"ee",
                                                        X"d2", X"f6", X"00", X"0c", X"ff", X"e6", X"28", X"c7", X"01", X"37", X"e0", X"01", X"db", X"0a", X"07", X"0f", X"e1", X"ef", X"18", X"fa", X"2a", X"15", X"18", X"ca", X"03", X"ee",
                                                        X"f8", X"15", X"15", X"06", X"1e", X"05", X"dc", X"fc", X"02", X"fe", X"0b", X"1f", X"0c", X"03", X"0c", X"20", X"f5", X"12", X"cc", X"33", X"2c", X"e8", X"32", X"1c", X"01", X"fc",
                                                        X"18", X"23", X"de", X"05", X"09", X"04", X"c9", X"ff", X"01", X"1c", X"06", X"fd", X"1a", X"12", X"08", X"f5", X"0f", X"df", X"f2", X"d2", X"01", X"d6", X"09", X"10", X"f7", X"0d",
                                                        X"2e", X"e7", X"e9", X"0a", X"16", X"f7", X"24", X"d3", X"15", X"2a", X"fb", X"2a", X"db", X"04", X"15", X"25", X"ed", X"e9", X"50", X"13", X"f1", X"0c", X"df", X"0e", X"07", X"04",
                                                        X"f9", X"b8", X"c9", X"1b", X"eb", X"1d", X"db", X"01", X"ba", X"04", X"14", X"e0", X"e3", X"e3", X"f7", X"e1", X"07", X"15", X"01", X"06", X"de", X"2b", X"2f", X"f9", X"39", X"02",
                                                        X"fc", X"f9", X"f8", X"13", X"21", X"b8", X"11", X"16", X"ee", X"08", X"1d", X"01", X"20", X"f3", X"0d", X"04", X"09", X"ec", X"2e", X"e2", X"27", X"c2", X"1b", X"2f", X"03", X"fd",
                                                        X"ff", X"0f", X"21", X"ff", X"12", X"13", X"0a", X"e7", X"20", X"1c", X"f5", X"07", X"24", X"14", X"d9", X"fd", X"dc", X"19", X"16", X"f4", X"e9", X"00", X"09", X"f4", X"e2", X"f1",
                                                        X"e2", X"2e", X"02", X"e6", X"e3", X"03", X"d7", X"f4", X"0a", X"e0", X"1f", X"0d", X"05", X"dc", X"27", X"f8", X"0c", X"c4", X"13", X"da", X"03", X"02", X"d3", X"09", X"22", X"ef",
                                                        X"e6", X"f1", X"02", X"21", X"21", X"1f", X"03", X"b8", X"0e", X"25", X"cf", X"00", X"29", X"e2", X"10", X"0a", X"2f", X"fd", X"fb", X"20", X"07", X"fd", X"13", X"1e", X"15", X"33",
                                                        X"d1", X"03", X"1f", X"06", X"01", X"fc", X"0f", X"05", X"0c", X"08", X"26", X"f4", X"08", X"ec", X"02", X"e6", X"dd", X"ff", X"e2", X"e5", X"f8", X"01", X"00", X"08", X"15", X"0a",
                                                        X"22", X"0f", X"10", X"37", X"fe", X"bc", X"09", X"f3", X"16", X"28", X"ef", X"07", X"d5", X"0a", X"0d", X"15", X"2d", X"39", X"d9", X"c1", X"fa", X"ea", X"e6", X"07", X"0c", X"08",
                                                        X"33", X"f1", X"c3", X"16", X"10", X"e5", X"f9", X"09", X"df", X"26", X"01", X"c8", X"e3", X"07", X"28", X"05", X"ef", X"06", X"4c", X"0c", X"1c", X"f9", X"1e", X"14", X"e9", X"d7",
                                                        X"1d", X"41", X"04", X"ff", X"f3", X"0d", X"0c", X"fc", X"04", X"26", X"ff", X"ff", X"41", X"fc", X"e9", X"21", X"0a", X"c5", X"dc", X"f7", X"df", X"01", X"e0", X"f5", X"e1", X"f9",
                                                        X"05", X"16", X"25", X"e1", X"03", X"1d", X"05", X"e4", X"fd", X"f7", X"01", X"2e", X"db", X"ef", X"ed", X"f1", X"f9", X"0e", X"fe", X"e5", X"f4", X"34", X"f1", X"2e", X"03", X"08",
                                                        X"f1", X"eb", X"ee", X"e6", X"31", X"07", X"ff", X"02", X"21", X"e6", X"0d", X"e8", X"07", X"f3", X"fa", X"fb", X"e8", X"09", X"f2", X"f0", X"4d", X"f2", X"14", X"ed", X"f7", X"4d",
                                                        X"e2", X"da", X"09", X"e8", X"f3", X"e6", X"ed", X"15", X"37", X"ea", X"d7", X"1d", X"17", X"d8", X"26", X"f8", X"d7", X"29", X"10", X"17", X"13", X"ff", X"ff", X"f8", X"f6", X"ea",
                                                        X"f8", X"00", X"09", X"fb", X"11", X"f8", X"e9", X"06", X"fd", X"33", X"e8", X"f6", X"08", X"df", X"1f", X"01", X"0a", X"12", X"18", X"fb", X"cc", X"2d", X"f8", X"c2", X"11", X"3e",
                                                        X"c6", X"fb", X"fa", X"1e", X"f1", X"e2", X"20", X"fe", X"16", X"07", X"10", X"de", X"e9", X"f5", X"fd", X"e9", X"0c", X"fd", X"11", X"e7", X"25", X"f9", X"f3", X"fd", X"26", X"0b",
                                                        X"f3", X"17", X"13", X"00", X"11", X"18", X"f3", X"fc", X"15", X"dd", X"0d", X"ea", X"12", X"f8", X"10", X"19", X"13", X"2a", X"0c", X"04", X"1f", X"d9", X"c9", X"03", X"f2", X"22",
                                                        X"e2", X"05", X"1f", X"0c", X"0a", X"15", X"35", X"2a", X"01", X"13", X"12", X"29", X"ed", X"00", X"eb", X"f3", X"0d", X"fd", X"d3", X"fe", X"fb", X"d6", X"dc", X"1f", X"d4", X"0b",
                                                        X"f4", X"11", X"dc", X"e7", X"fa", X"e0", X"fb", X"ed", X"c5", X"14", X"0f", X"0d", X"02", X"e8", X"d0", X"01", X"fc", X"1e", X"0b", X"fb", X"0b", X"30", X"06", X"03", X"38", X"06",
                                                        X"0c", X"f3", X"28", X"2b", X"eb", X"e0", X"0f", X"20", X"e1", X"02", X"fc", X"df", X"1d", X"02", X"0d", X"0e", X"0c", X"22", X"fd", X"ef", X"18", X"2c", X"fd", X"fb", X"d2", X"f1",
                                                        X"fd", X"db", X"08", X"f1", X"38", X"0f", X"13", X"f8", X"14", X"20", X"fa", X"f4", X"24", X"f8", X"cd", X"18", X"18", X"dc", X"e8", X"fa", X"19", X"03", X"fb", X"03", X"39", X"17",
                                                        X"ca", X"bd", X"07", X"e6", X"fb", X"17", X"da", X"18", X"0d", X"02", X"20", X"f5", X"f3", X"d2", X"29", X"e0", X"20", X"d9", X"17", X"cc", X"ce", X"1c", X"09", X"ea", X"f5", X"ec",
                                                        X"46", X"05", X"1e", X"ec", X"16", X"15", X"0b", X"ff", X"ee", X"f2", X"fe", X"07", X"fd", X"f8", X"07", X"0f", X"f3", X"11", X"0f", X"eb", X"ce", X"0a", X"1d", X"21", X"19", X"3e",
                                                        X"eb", X"f9", X"09", X"39", X"2c", X"f7", X"f9", X"fa", X"0c", X"ff", X"e3", X"ef", X"03", X"bf", X"fb", X"b0", X"e9", X"f7", X"0e", X"26", X"01", X"07", X"06", X"03", X"06", X"e7",
                                                        X"20", X"d3", X"15", X"bb", X"05", X"22", X"f6", X"e8", X"d9", X"fd", X"ec", X"fc", X"08", X"17", X"f3", X"f1", X"34", X"09", X"f6", X"18", X"05", X"3a", X"d5", X"f6", X"00", X"0c",
                                                        X"dd", X"ee", X"53", X"fb", X"fe", X"01", X"2e", X"ea", X"d6", X"ea", X"1a", X"ea", X"e6", X"fe", X"f9", X"13", X"05", X"d8", X"1c", X"fc", X"0d", X"e9", X"15", X"1b", X"e7", X"14",
                                                        X"25", X"c1", X"dd", X"0f", X"07", X"da", X"f6", X"e4", X"d8", X"f7", X"09", X"f6", X"46", X"d3", X"0e", X"cb", X"15", X"0b", X"cd", X"ee", X"da", X"e9", X"07", X"ea", X"45", X"09",
                                                        X"05", X"f0", X"2f", X"1c", X"d4", X"e3", X"06", X"03", X"fe", X"19", X"ff", X"36", X"ff", X"fc", X"d8", X"0f", X"15", X"f2", X"01", X"0b", X"06", X"41", X"2c", X"06", X"f1", X"f9",
                                                        X"d2", X"2f", X"f0", X"04", X"3b", X"09", X"19", X"e2", X"1c", X"2c", X"03", X"f3", X"06", X"da", X"da", X"fc", X"21", X"2a", X"3d", X"f5");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f5";
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

