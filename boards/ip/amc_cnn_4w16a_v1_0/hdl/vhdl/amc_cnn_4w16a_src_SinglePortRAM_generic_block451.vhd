-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block451.vhd
-- Created: 2023-06-15 16:03:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block451
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage94/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block451 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block451;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block451 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"fe", X"04", X"0a", X"e4", X"dc", X"37", X"dd", X"d8", X"11", X"0e", X"bf", X"15", X"03",
                                                        X"3b", X"29", X"33", X"df", X"2b", X"33", X"0f", X"f3", X"f7", X"fc", X"2e", X"ff", X"ec", X"31", X"dd", X"eb", X"fb", X"1d", X"29", X"03", X"15", X"ea", X"fb", X"f5", X"1b", X"03",
                                                        X"2e", X"b4", X"f3", X"07", X"df", X"0e", X"d1", X"0f", X"24", X"f4", X"09", X"00", X"f5", X"f9", X"fb", X"08", X"08", X"e3", X"f7", X"cb", X"29", X"19", X"f1", X"fb", X"dd", X"07",
                                                        X"f6", X"30", X"1c", X"04", X"1a", X"04", X"0e", X"06", X"03", X"28", X"17", X"f3", X"e0", X"23", X"30", X"15", X"ea", X"e3", X"fa", X"cb", X"f5", X"17", X"30", X"b0", X"16", X"d1",
                                                        X"20", X"16", X"2a", X"f1", X"11", X"dc", X"d6", X"c1", X"f0", X"0e", X"09", X"f4", X"2a", X"15", X"fc", X"00", X"df", X"02", X"fc", X"0a", X"25", X"16", X"e0", X"2b", X"05", X"ed",
                                                        X"16", X"11", X"fc", X"3a", X"05", X"1e", X"ec", X"ea", X"2a", X"0c", X"30", X"d9", X"03", X"ef", X"f3", X"fa", X"49", X"05", X"f7", X"dc", X"03", X"cd", X"13", X"da", X"09", X"f4",
                                                        X"42", X"fd", X"ec", X"be", X"f7", X"2c", X"21", X"f6", X"39", X"e3", X"ef", X"12", X"e9", X"f9", X"e3", X"fe", X"f7", X"06", X"1f", X"11", X"08", X"ed", X"15", X"ec", X"31", X"15",
                                                        X"fc", X"e7", X"16", X"fb", X"d9", X"e8", X"10", X"1b", X"1d", X"32", X"e8", X"2b", X"21", X"18", X"3c", X"aa", X"f0", X"0c", X"fd", X"10", X"d4", X"fa", X"2a", X"2a", X"f0", X"e6",
                                                        X"ef", X"ed", X"3d", X"1c", X"f2", X"be", X"17", X"cf", X"fd", X"1e", X"c8", X"f3", X"f1", X"1a", X"0f", X"d1", X"0b", X"21", X"30", X"f6", X"ef", X"ff", X"fc", X"36", X"0e", X"f4",
                                                        X"1c", X"21", X"fe", X"fd", X"1c", X"fd", X"0d", X"e2", X"cf", X"08", X"f5", X"e4", X"0f", X"0b", X"f5", X"06", X"fb", X"f0", X"36", X"e0", X"f9", X"e8", X"e8", X"cb", X"4e", X"f7",
                                                        X"00", X"1e", X"09", X"f4", X"fe", X"1e", X"e5", X"10", X"27", X"de", X"fc", X"d3", X"f3", X"f1", X"44", X"0a", X"14", X"17", X"f5", X"d4", X"02", X"07", X"2d", X"09", X"df", X"ce",
                                                        X"18", X"d1", X"00", X"d7", X"42", X"e7", X"2a", X"21", X"fc", X"f7", X"fc", X"f4", X"13", X"12", X"34", X"ef", X"0e", X"c4", X"f7", X"2b", X"15", X"07", X"0b", X"1e", X"ef", X"d9",
                                                        X"ed", X"f3", X"c3", X"15", X"f6", X"01", X"22", X"3c", X"00", X"0e", X"d0", X"f4", X"04", X"a9", X"e8", X"f8", X"e2", X"10", X"00", X"10", X"12", X"e3", X"2f", X"26", X"ef", X"dc",
                                                        X"3e", X"bd", X"1a", X"06", X"07", X"c7", X"07", X"09", X"06", X"ef", X"11", X"1f", X"13", X"31", X"23", X"fc", X"3d", X"ef", X"f1", X"16", X"f0", X"eb", X"19", X"f5", X"10", X"e6",
                                                        X"ff", X"08", X"e6", X"08", X"0b", X"e1", X"21", X"ea", X"d3", X"a7", X"ff", X"fd", X"1e", X"10", X"1a", X"13", X"12", X"0f", X"0a", X"c5", X"08", X"22", X"47", X"ef", X"ee", X"e5",
                                                        X"05", X"c2", X"1f", X"fe", X"f2", X"00", X"12", X"1e", X"07", X"e0", X"ef", X"2b", X"10", X"fe", X"05", X"f5", X"07", X"29", X"1a", X"f1", X"27", X"f5", X"fd", X"1b", X"03", X"1a",
                                                        X"18", X"25", X"0c", X"f0", X"29", X"d7", X"f3", X"e0", X"dc", X"00", X"1e", X"10", X"07", X"02", X"19", X"f3", X"e9", X"2c", X"f5", X"14", X"31", X"dc", X"f6", X"0e", X"f2", X"eb",
                                                        X"fd", X"12", X"e7", X"fb", X"f4", X"f8", X"ec", X"dc", X"29", X"0b", X"ef", X"e8", X"f2", X"d4", X"f0", X"01", X"f3", X"eb", X"00", X"f1", X"ea", X"ec", X"f8", X"18", X"d4", X"11",
                                                        X"42", X"1c", X"1b", X"0a", X"23", X"12", X"f1", X"17", X"3d", X"19", X"11", X"46", X"d9", X"02", X"ee", X"0f", X"d7", X"32", X"18", X"1b", X"f5", X"03", X"f6", X"11", X"0e", X"e6",
                                                        X"02", X"2e", X"0a", X"e6", X"f0", X"f5", X"21", X"bb", X"05", X"36", X"21", X"05", X"f6", X"20", X"39", X"f0", X"06", X"da", X"0f", X"ca", X"f7", X"f5", X"2f", X"d7", X"ed", X"c7",
                                                        X"d5", X"e8", X"ed", X"00", X"05", X"f3", X"14", X"cd", X"ef", X"1e", X"45", X"f9", X"1f", X"30", X"fa", X"2d", X"d5", X"fb", X"e2", X"ee", X"35", X"e5", X"ea", X"d9", X"fd", X"f1",
                                                        X"07", X"fa", X"e6", X"f8", X"0d", X"03", X"20", X"f2", X"e1", X"12", X"24", X"e6", X"fa", X"0b", X"0a", X"e8", X"e5", X"f3", X"e2", X"2b", X"db", X"2a", X"d6", X"02", X"17", X"ec",
                                                        X"f2", X"08", X"01", X"20", X"f9", X"d1", X"0e", X"f6", X"d6", X"ce", X"0e", X"38", X"ea", X"ff", X"e8", X"fe", X"fd", X"14", X"14", X"3b", X"0b", X"08", X"19", X"01", X"26", X"e8",
                                                        X"09", X"fa", X"29", X"1c", X"ec", X"07", X"fe", X"ee", X"04", X"d2", X"0d", X"1e", X"14", X"ec", X"12", X"c8", X"f9", X"f5", X"f2", X"11", X"bd", X"e5", X"fd", X"f0", X"f9", X"e5",
                                                        X"f6", X"fa", X"05", X"f1", X"f2", X"f4", X"1a", X"f2", X"de", X"00", X"ea", X"f4", X"33", X"f5", X"fc", X"d5", X"de", X"01", X"5a", X"ff", X"3c", X"cc", X"e6", X"19", X"08", X"0a",
                                                        X"05", X"0d", X"12", X"eb", X"04", X"03", X"c9", X"34", X"3f", X"f2", X"df", X"f9", X"f0", X"e4", X"23", X"06", X"f1", X"01", X"0b", X"14", X"38", X"05", X"02", X"eb", X"19", X"f3",
                                                        X"13", X"c4", X"ff", X"fb", X"27", X"25", X"2b", X"fe", X"fc", X"1e", X"ee", X"b7", X"ea", X"21", X"0d", X"07", X"1a", X"2b", X"01", X"d5", X"29", X"fb", X"d4", X"e9", X"36", X"10",
                                                        X"ed", X"09", X"ff", X"eb", X"2d", X"ec", X"df", X"ad", X"0f", X"15", X"f3", X"1a", X"fc", X"03", X"3a", X"ee", X"1c", X"25", X"fa", X"27", X"fb", X"e9", X"e6", X"30", X"e8", X"21",
                                                        X"1b", X"f5", X"28", X"09", X"fc", X"dd", X"de", X"e2", X"09", X"15", X"fb", X"03", X"23", X"be", X"03", X"0e", X"f3", X"0e", X"06", X"1a", X"f7", X"f9", X"0e", X"17", X"e2", X"23",
                                                        X"1c", X"f4", X"0d", X"2e", X"1a", X"ec", X"fb", X"fe", X"cf", X"1c", X"22", X"fe", X"01", X"bb", X"f4", X"00", X"49", X"f2", X"05", X"a7", X"fc", X"21", X"df", X"f6", X"e5", X"f1",
                                                        X"e7", X"f1", X"13", X"d0", X"07", X"1a", X"27", X"06", X"1e", X"17", X"ed", X"dd", X"13", X"0b", X"0f", X"07", X"24", X"f4", X"0e", X"e6", X"01", X"f2", X"3e", X"ff", X"1e", X"d1",
                                                        X"07", X"09", X"0f", X"11", X"d5", X"0a", X"02", X"0c", X"1f", X"dd", X"fa", X"23", X"46", X"f5", X"31", X"c7", X"e2", X"1f", X"e7", X"f3", X"e6", X"0d", X"e0", X"17", X"03", X"09",
                                                        X"f8", X"de", X"0c", X"e9", X"da", X"d1", X"f5", X"28", X"e5", X"05", X"f2", X"f5", X"28", X"f9", X"1e", X"fc", X"f2", X"02", X"de", X"ec", X"0c", X"f2", X"f4", X"ff", X"f2", X"01",
                                                        X"ee", X"ff", X"35", X"07", X"ef", X"2f", X"21", X"e5", X"31", X"ef", X"f6", X"19", X"00", X"e6", X"e1", X"ef", X"c3", X"f2", X"06", X"ed", X"06", X"dd", X"f3", X"30", X"34", X"f8",
                                                        X"e2", X"e1", X"f9", X"23", X"09", X"f1", X"10", X"0d", X"48", X"ee", X"0d", X"0e", X"06", X"07", X"e3", X"e8", X"df", X"ea", X"04", X"cc", X"e0", X"07", X"f2", X"d6", X"0b", X"f5",
                                                        X"1b", X"f4", X"f8", X"31", X"24", X"00", X"f1", X"06", X"0f", X"1f", X"e9", X"fa", X"f1", X"0b", X"23", X"0a", X"f3", X"fd", X"09", X"0f", X"46", X"f2", X"25", X"f0", X"ed", X"d8",
                                                        X"13", X"18", X"e0", X"e9", X"07", X"fe", X"f6", X"df", X"e4", X"2a", X"f1", X"05", X"27", X"e6", X"07", X"1d", X"2d", X"09", X"18", X"1a", X"24", X"fc", X"29", X"08", X"10", X"20",
                                                        X"fd", X"ed", X"f6", X"ad", X"f2", X"19", X"04", X"ec", X"24", X"18", X"21", X"07", X"25", X"d2", X"ff", X"29", X"f3", X"01", X"18", X"04", X"12", X"ef", X"dd", X"f0", X"c7", X"08",
                                                        X"e2", X"1a", X"13", X"c1", X"00", X"f4", X"e8", X"0d", X"1e", X"2d", X"01", X"2d", X"0f", X"14", X"d4", X"01", X"2c", X"e7", X"e1", X"23", X"fa", X"e2", X"ce", X"07", X"27", X"a0",
                                                        X"f6", X"36", X"05", X"ef", X"d2", X"19", X"2f", X"ed", X"06", X"0f", X"17", X"17", X"0c", X"18", X"09", X"2d", X"0e", X"ea", X"08", X"26", X"fd", X"0b", X"dd", X"02", X"12", X"15",
                                                        X"f9", X"19", X"34", X"0d", X"39", X"c4", X"03", X"1e", X"27", X"0a", X"e8", X"f2", X"2a", X"fd", X"e9", X"25", X"06", X"f7", X"d9", X"0c", X"07", X"fb", X"f0", X"17", X"2a", X"fa",
                                                        X"1b", X"eb", X"29", X"0f", X"e8", X"19", X"f1", X"30", X"e0", X"fc", X"32", X"f5", X"ed", X"cb", X"f9", X"15", X"d3", X"08", X"f7", X"0c", X"f6", X"f5", X"19", X"30", X"06", X"1b",
                                                        X"06", X"c1", X"f7", X"31", X"17", X"fe", X"e0", X"06", X"1a", X"fd", X"03", X"1e", X"f2", X"11", X"f0", X"ff", X"14", X"e4", X"1d", X"10", X"fb", X"f6", X"df", X"0c", X"f8", X"e8",
                                                        X"12", X"d5", X"fe", X"0a", X"ed", X"08", X"ff", X"de", X"fd", X"3a", X"d9", X"f5", X"e6", X"f5", X"2f", X"01", X"01", X"25", X"16", X"ec", X"f4", X"f0", X"f0", X"02", X"07", X"ee",
                                                        X"15", X"15", X"e3", X"07", X"01", X"f3", X"e1", X"14", X"df", X"15", X"06", X"fc", X"e1", X"fc", X"fa", X"f2", X"d9", X"f1", X"04", X"04", X"ec", X"f9", X"16", X"2e", X"0b", X"fd",
                                                        X"de", X"f1", X"2c", X"01", X"0d", X"f1", X"00", X"fe", X"2a", X"07", X"08", X"05", X"1f", X"01", X"00", X"e6", X"34", X"f7", X"f5", X"e6", X"01", X"26", X"1d", X"03", X"d7", X"e4",
                                                        X"18", X"04", X"de", X"ed", X"05", X"09", X"06", X"f6", X"e7", X"ee", X"f9", X"fb", X"e9", X"ea", X"dd", X"09", X"32", X"e6", X"ef", X"0d", X"16", X"1a", X"42", X"0b", X"fd", X"e2",
                                                        X"fc", X"d5", X"d9", X"06", X"23", X"0b", X"25", X"ea", X"1a", X"07", X"03", X"f1", X"29", X"07", X"1f", X"b4", X"1c", X"00", X"e3", X"ee", X"cd", X"ea", X"ee", X"fa", X"06", X"ee",
                                                        X"0a", X"dd", X"36", X"04", X"18", X"1b", X"f1", X"d0", X"0c", X"f1", X"ef", X"f5", X"0b", X"ee", X"0a", X"3c", X"13", X"08", X"fe", X"08", X"14", X"01", X"f2", X"e9", X"fa", X"15",
                                                        X"25", X"fe", X"3a", X"ff", X"f0", X"29", X"02", X"06", X"30", X"02", X"12", X"ba", X"0c", X"e5", X"e9", X"1a", X"0e", X"f3", X"20", X"ef", X"f5", X"d3", X"f5", X"d9", X"fe", X"12",
                                                        X"dc", X"d2", X"f8", X"26", X"05", X"0e", X"07", X"07", X"fd", X"f7", X"0e", X"35", X"e5", X"16", X"e8", X"f7", X"24", X"da", X"05", X"d4", X"02", X"f3", X"4c", X"fb", X"16", X"f5",
                                                        X"2b", X"2b", X"f7", X"ec", X"06", X"f9", X"ea", X"17", X"f7", X"fc", X"0b", X"df", X"ff", X"f5", X"33", X"0d", X"2e", X"d9", X"f5", X"ff", X"3f", X"0d", X"08", X"a5", X"16", X"cf",
                                                        X"e3", X"0d", X"03", X"12", X"00", X"2a", X"22", X"18", X"06", X"15", X"ec", X"e1", X"36", X"a5", X"e5", X"23", X"00", X"f3", X"0c", X"04", X"3d", X"ea", X"de", X"c8", X"dd", X"c7",
                                                        X"04", X"03", X"08", X"0d", X"f4", X"11", X"16", X"0a", X"d8", X"f9", X"fb", X"0b", X"0b", X"ff", X"16", X"26", X"3c", X"0b", X"f5", X"fc", X"0e", X"29", X"16", X"1d", X"2a", X"ed",
                                                        X"07", X"15", X"f9", X"b8", X"0f", X"ed", X"2e", X"ff", X"f6", X"22", X"02", X"fd", X"09", X"0f", X"23", X"fb", X"fb", X"03", X"f9", X"c8", X"f4", X"fa", X"dc", X"02", X"0c", X"de",
                                                        X"01", X"24", X"08", X"16", X"2f", X"e9", X"0c", X"e3", X"05", X"28", X"eb", X"f4", X"3c", X"f8", X"0c", X"c6", X"fd", X"0c", X"e8", X"fb", X"04", X"19", X"2d", X"0d", X"da", X"21",
                                                        X"f5", X"2b", X"e8", X"ee", X"fa", X"27", X"ff", X"06", X"e6", X"ed", X"05", X"02", X"fd", X"20", X"27", X"19", X"05", X"17", X"4b", X"e4", X"06", X"fa", X"ff", X"df", X"e7", X"08",
                                                        X"2d", X"27", X"10", X"0d", X"0f", X"3f", X"fa", X"ee", X"02", X"fb", X"48", X"d7", X"f4", X"d1", X"26", X"01", X"d3", X"13", X"44", X"18", X"0e", X"e6", X"01", X"d2", X"49", X"fc",
                                                        X"20", X"ee", X"06", X"d4", X"08", X"09", X"03", X"0e", X"08", X"0e", X"0d", X"fe", X"e5", X"10", X"38", X"00", X"e3", X"ad", X"fa", X"ef", X"de", X"fe", X"ee", X"0b", X"e2", X"02",
                                                        X"eb", X"c7", X"ec", X"f0", X"2d", X"f1", X"18", X"b2", X"fc", X"4b", X"28", X"e8", X"e5", X"03", X"26", X"1f", X"fc", X"11", X"f2", X"f7", X"f0", X"f5", X"30", X"04", X"f0", X"ec",
                                                        X"ec", X"02", X"12", X"04", X"19", X"f7", X"02", X"14", X"f9", X"20", X"42", X"e2", X"18", X"29", X"06", X"d2", X"f6", X"10", X"e3", X"f9", X"0b", X"fa", X"13", X"1a", X"02", X"e1",
                                                        X"08", X"ec", X"0a", X"e4", X"0f", X"d3", X"1e", X"ff", X"27", X"f5", X"03", X"0d", X"07", X"ef", X"f2", X"10", X"f2", X"fc", X"09", X"33", X"ff", X"01", X"f2", X"ed", X"0d", X"09",
                                                        X"00", X"f3", X"e6", X"2b", X"f8", X"ce", X"3c", X"ed", X"2a", X"de", X"f5", X"1b", X"01", X"f5", X"19", X"01", X"ff", X"00", X"ef", X"cf", X"e9", X"e0", X"f2", X"04", X"0e", X"c3",
                                                        X"d2", X"22", X"04", X"0f", X"0f", X"eb", X"02", X"04", X"1c", X"42", X"15", X"0d", X"2f", X"f0", X"21", X"04", X"f5", X"c6", X"fd", X"fe", X"08", X"d5", X"1f", X"e9", X"eb", X"35",
                                                        X"f3", X"0e", X"0f", X"0a", X"19", X"11", X"fa", X"09", X"1b", X"ed", X"ed", X"f4", X"f5", X"f0", X"28", X"00", X"fc", X"2b", X"ff", X"e5", X"1d", X"a6", X"fe", X"06", X"ed", X"f7",
                                                        X"dc", X"fc", X"1f", X"20", X"f8", X"00", X"f5", X"2a", X"3d", X"f1", X"f3", X"bf", X"00", X"ed", X"02", X"f1", X"eb", X"fd", X"25", X"e3", X"0c", X"db", X"fc", X"30", X"2b", X"ec",
                                                        X"dd", X"05", X"0f", X"bb", X"27", X"f6", X"f8", X"03", X"e9", X"12", X"df", X"fe", X"f0", X"ec", X"16", X"e6", X"0c", X"01", X"fa", X"30", X"d7", X"00", X"fb", X"1e", X"33", X"12",
                                                        X"09", X"02", X"1c", X"f0", X"fc", X"0b", X"2b", X"b0", X"f2", X"1c", X"da", X"f3", X"14", X"13", X"ec", X"ed", X"f7", X"db", X"0d", X"20", X"2a", X"ec", X"38", X"e5", X"f2", X"d9",
                                                        X"18", X"23", X"25", X"16", X"02", X"f3", X"21", X"e3", X"ed", X"20", X"25", X"16", X"37", X"fd", X"f5", X"03", X"e9", X"0f", X"df", X"fb", X"f5", X"0a", X"f8", X"00", X"f0", X"d2",
                                                        X"24", X"12", X"dd", X"c8", X"f6", X"28", X"e4", X"0e", X"d3", X"13", X"2d", X"ea", X"12", X"1a", X"fe", X"27", X"2e", X"0f", X"ff", X"bd", X"0f", X"ec", X"1e", X"15", X"1d", X"10",
                                                        X"e4", X"1b", X"1d", X"b7", X"f0", X"16", X"1e", X"f8", X"ee", X"21", X"04", X"35", X"20", X"f0", X"ec", X"07", X"f1", X"0b", X"e5", X"10", X"f4", X"fe", X"19", X"01", X"f6", X"0b",
                                                        X"16", X"22", X"fa", X"e2", X"2c", X"fb", X"17", X"fc", X"04", X"f8", X"fd", X"fc", X"1b", X"f4", X"0c", X"06", X"f8", X"e7", X"fc", X"02", X"30", X"18", X"2d", X"16", X"12", X"14",
                                                        X"11", X"33", X"05", X"09", X"ee", X"db", X"06", X"2f", X"26", X"f0", X"dd", X"0d", X"f8", X"ed", X"23", X"11", X"0a", X"f5", X"29", X"df", X"e2", X"ac", X"06", X"28", X"e0", X"fd",
                                                        X"fd", X"f2", X"f0", X"1b", X"f2", X"cd", X"f4", X"33", X"dc", X"08", X"07", X"1f", X"0a", X"0f", X"07", X"0d", X"08", X"fb", X"0e", X"18", X"06", X"fe", X"fa", X"03", X"1b", X"0e",
                                                        X"ed", X"01", X"05", X"e7", X"e4", X"03", X"16", X"ea", X"36", X"f0", X"1e", X"fd", X"02", X"db", X"f5", X"fe", X"25", X"1f", X"06", X"cc", X"0a", X"1a", X"1a", X"ed", X"3d", X"1d",
                                                        X"24", X"cf", X"f1", X"19", X"0f", X"f7", X"2d", X"ca", X"ec", X"02", X"1a", X"fd", X"1c", X"f0", X"eb", X"08", X"0b", X"1d", X"fa", X"f2", X"41", X"10", X"20", X"31", X"e2", X"d8",
                                                        X"f9", X"fc", X"06", X"00", X"ed", X"ef", X"e4", X"e9", X"f0", X"0c", X"f0", X"da", X"19", X"0a", X"e0", X"bf", X"ef", X"fd", X"27", X"0e");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0e";
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

