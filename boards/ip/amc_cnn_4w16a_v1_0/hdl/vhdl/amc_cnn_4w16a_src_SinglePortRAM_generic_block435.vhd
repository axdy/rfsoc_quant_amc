-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block435.vhd
-- Created: 2023-06-15 16:03:11
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block435
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage8/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block435 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block435;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block435 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"01", X"ff", X"16", X"29", X"f8", X"27", X"16", X"e9", X"c8", X"d7", X"12", X"f4", X"13",
                                                        X"26", X"cc", X"2b", X"1a", X"01", X"10", X"04", X"ff", X"06", X"1f", X"ee", X"01", X"f7", X"ec", X"fc", X"05", X"0b", X"e3", X"eb", X"19", X"0a", X"d6", X"0b", X"27", X"e8", X"18",
                                                        X"f9", X"1b", X"04", X"28", X"fd", X"fe", X"0b", X"df", X"00", X"fd", X"de", X"d6", X"01", X"1c", X"eb", X"0b", X"f0", X"12", X"f3", X"fe", X"20", X"e3", X"1c", X"05", X"eb", X"f7",
                                                        X"1c", X"27", X"f4", X"fb", X"13", X"37", X"fb", X"eb", X"05", X"e6", X"ee", X"05", X"d7", X"1a", X"22", X"0c", X"09", X"0c", X"ec", X"05", X"24", X"f8", X"1f", X"3a", X"13", X"df",
                                                        X"e4", X"f8", X"13", X"01", X"f7", X"00", X"02", X"05", X"f3", X"1b", X"d1", X"01", X"e9", X"c9", X"07", X"fd", X"dd", X"fb", X"d6", X"0f", X"13", X"f7", X"02", X"ff", X"1a", X"0c",
                                                        X"19", X"01", X"29", X"0e", X"fe", X"00", X"e3", X"e1", X"d2", X"09", X"0a", X"06", X"e7", X"e6", X"fa", X"db", X"2b", X"04", X"fd", X"1a", X"f7", X"35", X"19", X"f3", X"1f", X"0f",
                                                        X"0a", X"08", X"14", X"fb", X"06", X"0d", X"1e", X"10", X"0f", X"e2", X"21", X"d2", X"0d", X"e6", X"09", X"fa", X"37", X"1f", X"03", X"fe", X"04", X"e8", X"30", X"f0", X"fe", X"ec",
                                                        X"32", X"e8", X"1b", X"0b", X"02", X"12", X"1b", X"15", X"ef", X"2f", X"0f", X"08", X"e5", X"f5", X"17", X"c5", X"1f", X"25", X"f6", X"22", X"ec", X"12", X"1b", X"fa", X"ff", X"0c",
                                                        X"06", X"00", X"e6", X"e9", X"1a", X"e6", X"0e", X"ff", X"2a", X"0d", X"2e", X"f2", X"04", X"13", X"f9", X"f7", X"22", X"dc", X"48", X"ef", X"2c", X"b9", X"10", X"0a", X"05", X"1b",
                                                        X"13", X"00", X"0d", X"13", X"1f", X"e3", X"fa", X"1f", X"39", X"eb", X"17", X"e5", X"1b", X"d5", X"02", X"f6", X"0d", X"06", X"2d", X"1b", X"2a", X"21", X"03", X"0b", X"19", X"f1",
                                                        X"1d", X"a9", X"fe", X"0b", X"f7", X"11", X"f5", X"f0", X"1a", X"e5", X"2b", X"07", X"0b", X"08", X"02", X"f2", X"fa", X"23", X"02", X"e4", X"21", X"f2", X"1e", X"df", X"f2", X"fd",
                                                        X"0e", X"07", X"ec", X"eb", X"ee", X"09", X"ed", X"e8", X"f1", X"ea", X"de", X"07", X"05", X"e1", X"fe", X"fe", X"06", X"1e", X"f6", X"2a", X"e3", X"12", X"07", X"f1", X"ff", X"fa",
                                                        X"13", X"0c", X"15", X"f3", X"11", X"1d", X"22", X"dd", X"0a", X"0b", X"15", X"01", X"f4", X"cb", X"ee", X"07", X"fd", X"11", X"1a", X"03", X"14", X"fd", X"f9", X"db", X"dd", X"0f",
                                                        X"fa", X"1a", X"e5", X"de", X"ec", X"09", X"17", X"e3", X"17", X"ef", X"ff", X"11", X"ff", X"06", X"ed", X"27", X"ed", X"16", X"1c", X"ee", X"f0", X"e4", X"e5", X"ea", X"f1", X"0f",
                                                        X"24", X"25", X"e3", X"d1", X"0f", X"e8", X"10", X"00", X"22", X"b4", X"f5", X"28", X"ee", X"0d", X"00", X"22", X"39", X"24", X"1e", X"d4", X"e5", X"1c", X"2a", X"0e", X"e4", X"37",
                                                        X"fc", X"00", X"fc", X"fa", X"e8", X"21", X"00", X"1b", X"1b", X"1d", X"17", X"02", X"f3", X"f0", X"10", X"0d", X"00", X"10", X"2d", X"04", X"35", X"3c", X"f9", X"08", X"1e", X"11",
                                                        X"04", X"24", X"ef", X"00", X"e3", X"d3", X"14", X"1a", X"0c", X"0b", X"2c", X"0d", X"14", X"ea", X"f8", X"e3", X"0c", X"f1", X"f6", X"f9", X"ef", X"e5", X"03", X"1a", X"12", X"10",
                                                        X"1d", X"25", X"14", X"1e", X"14", X"f5", X"07", X"1f", X"3f", X"f3", X"29", X"b0", X"ee", X"35", X"04", X"15", X"eb", X"fb", X"0e", X"ef", X"e7", X"ed", X"02", X"e5", X"20", X"f4",
                                                        X"f3", X"1b", X"23", X"e4", X"1e", X"05", X"08", X"fa", X"05", X"06", X"e9", X"24", X"fc", X"e7", X"21", X"eb", X"01", X"1c", X"14", X"f5", X"e0", X"2f", X"e6", X"cb", X"01", X"f0",
                                                        X"e7", X"1c", X"f2", X"f4", X"2a", X"e9", X"18", X"29", X"12", X"0a", X"1c", X"1e", X"0f", X"ea", X"15", X"18", X"fa", X"d0", X"fd", X"2c", X"31", X"df", X"0e", X"e6", X"ef", X"f8",
                                                        X"21", X"f6", X"eb", X"d8", X"06", X"02", X"2e", X"ce", X"14", X"eb", X"f6", X"de", X"ea", X"be", X"f7", X"eb", X"ee", X"02", X"f2", X"eb", X"0f", X"18", X"fd", X"37", X"e9", X"20",
                                                        X"14", X"fd", X"f3", X"06", X"e9", X"11", X"0b", X"f0", X"15", X"f1", X"18", X"07", X"1c", X"11", X"05", X"2e", X"12", X"04", X"18", X"aa", X"e1", X"ef", X"e8", X"f7", X"e0", X"f4",
                                                        X"f5", X"0c", X"fd", X"cf", X"fa", X"eb", X"08", X"18", X"20", X"12", X"da", X"07", X"21", X"08", X"f2", X"e9", X"ef", X"f0", X"20", X"15", X"0e", X"22", X"22", X"14", X"26", X"27",
                                                        X"e4", X"e9", X"f0", X"f7", X"d2", X"ed", X"21", X"19", X"16", X"1d", X"01", X"e2", X"21", X"32", X"e8", X"bf", X"f7", X"1a", X"e7", X"03", X"04", X"0f", X"04", X"02", X"fe", X"d8",
                                                        X"eb", X"02", X"e7", X"07", X"f7", X"e6", X"f1", X"2d", X"ef", X"02", X"c3", X"1b", X"fe", X"05", X"07", X"29", X"10", X"e2", X"02", X"00", X"26", X"19", X"fb", X"32", X"f0", X"e1",
                                                        X"e8", X"1d", X"0f", X"f6", X"00", X"c6", X"09", X"e0", X"00", X"f8", X"0d", X"db", X"f4", X"0b", X"15", X"05", X"23", X"17", X"e4", X"f1", X"fa", X"0b", X"f3", X"e2", X"fe", X"ea",
                                                        X"21", X"0c", X"f5", X"29", X"03", X"05", X"db", X"14", X"2a", X"16", X"db", X"15", X"19", X"d3", X"e8", X"db", X"1f", X"f7", X"0e", X"f1", X"0e", X"f8", X"12", X"14", X"0d", X"ff",
                                                        X"08", X"31", X"f0", X"f8", X"13", X"e2", X"e7", X"1f", X"10", X"08", X"05", X"01", X"fd", X"f8", X"eb", X"fb", X"f1", X"d5", X"ed", X"d4", X"e8", X"ed", X"2d", X"1e", X"0b", X"21",
                                                        X"1e", X"05", X"db", X"08", X"35", X"1c", X"19", X"d6", X"f2", X"19", X"3e", X"d0", X"03", X"19", X"13", X"d6", X"1a", X"04", X"d6", X"f0", X"25", X"04", X"0d", X"ca", X"fc", X"fa",
                                                        X"0c", X"eb", X"2a", X"01", X"f2", X"08", X"e8", X"02", X"fa", X"fc", X"fd", X"01", X"0a", X"26", X"e8", X"f3", X"03", X"f3", X"21", X"cd", X"10", X"04", X"15", X"21", X"fe", X"fe",
                                                        X"00", X"10", X"ef", X"33", X"f5", X"fa", X"e4", X"fb", X"d6", X"00", X"02", X"09", X"fe", X"1d", X"13", X"e9", X"32", X"20", X"11", X"d4", X"17", X"e7", X"15", X"ed", X"f4", X"26",
                                                        X"eb", X"cf", X"09", X"e7", X"1a", X"df", X"f8", X"0c", X"13", X"17", X"04", X"df", X"f2", X"08", X"e6", X"06", X"06", X"f1", X"1c", X"f5", X"32", X"f4", X"f7", X"15", X"f2", X"cd",
                                                        X"05", X"e9", X"11", X"1c", X"f1", X"f7", X"e7", X"e2", X"0f", X"ef", X"cc", X"ff", X"f9", X"e1", X"0c", X"33", X"04", X"f4", X"ea", X"22", X"16", X"d3", X"e4", X"11", X"20", X"0f",
                                                        X"fa", X"e1", X"ff", X"08", X"f2", X"20", X"f8", X"f5", X"1f", X"09", X"e5", X"1d", X"f4", X"d2", X"ef", X"fc", X"cb", X"fa", X"17", X"e2", X"05", X"c9", X"dc", X"e8", X"0c", X"11",
                                                        X"13", X"ff", X"ee", X"e1", X"13", X"f9", X"b5", X"16", X"d2", X"ff", X"eb", X"18", X"0d", X"f4", X"27", X"fa", X"eb", X"f8", X"f9", X"12", X"d8", X"f4", X"bf", X"10", X"f0", X"f7",
                                                        X"f5", X"0f", X"0b", X"e5", X"e8", X"e6", X"22", X"17", X"e5", X"25", X"13", X"0e", X"17", X"0b", X"05", X"f6", X"29", X"e1", X"1b", X"e8", X"e7", X"ee", X"00", X"1e", X"1b", X"db",
                                                        X"1b", X"09", X"c4", X"11", X"02", X"07", X"fb", X"eb", X"de", X"ed", X"21", X"f5", X"1d", X"1b", X"0b", X"16", X"17", X"0c", X"fd", X"06", X"03", X"f9", X"03", X"01", X"eb", X"fd",
                                                        X"14", X"e4", X"16", X"db", X"18", X"12", X"0b", X"00", X"11", X"10", X"25", X"11", X"f8", X"df", X"04", X"16", X"ee", X"d8", X"2e", X"cb", X"17", X"0a", X"24", X"0b", X"23", X"ff",
                                                        X"23", X"fc", X"11", X"f1", X"ee", X"1e", X"26", X"e9", X"fd", X"b5", X"12", X"05", X"00", X"06", X"08", X"14", X"27", X"28", X"1f", X"28", X"09", X"fe", X"2e", X"08", X"2a", X"16",
                                                        X"0b", X"f5", X"02", X"03", X"ea", X"f6", X"2e", X"0b", X"f4", X"f6", X"f2", X"fe", X"2a", X"ea", X"e1", X"d0", X"ef", X"bd", X"2a", X"00", X"05", X"ef", X"02", X"1d", X"08", X"06",
                                                        X"31", X"1e", X"10", X"03", X"1c", X"0a", X"02", X"0d", X"f1", X"0f", X"ff", X"e9", X"37", X"1c", X"0c", X"f1", X"11", X"12", X"00", X"e7", X"eb", X"a9", X"d3", X"c4", X"eb", X"fc",
                                                        X"20", X"fd", X"3c", X"fe", X"fc", X"e3", X"0b", X"08", X"34", X"11", X"e1", X"de", X"03", X"0b", X"02", X"00", X"12", X"fa", X"2f", X"0e", X"04", X"1a", X"ed", X"06", X"11", X"13",
                                                        X"f9", X"fc", X"eb", X"f8", X"f2", X"00", X"1f", X"f5", X"27", X"07", X"f8", X"d4", X"07", X"16", X"f8", X"12", X"ee", X"d7", X"fa", X"e7", X"01", X"ec", X"fa", X"0a", X"30", X"01",
                                                        X"f9", X"32", X"ff", X"f7", X"45", X"13", X"0d", X"08", X"e9", X"e3", X"e3", X"f9", X"e4", X"03", X"04", X"f5", X"1f", X"06", X"ee", X"f6", X"1c", X"19", X"08", X"e8", X"fb", X"f3",
                                                        X"15", X"00", X"12", X"00", X"12", X"07", X"e4", X"f8", X"f2", X"2f", X"08", X"1c", X"fb", X"e1", X"07", X"d7", X"e7", X"0d", X"fd", X"02", X"e3", X"08", X"1c", X"00", X"f8", X"08",
                                                        X"00", X"03", X"fa", X"af", X"05", X"fc", X"f6", X"02", X"13", X"2b", X"29", X"09", X"e2", X"0a", X"0d", X"1b", X"ea", X"0a", X"24", X"ef", X"e2", X"03", X"d8", X"e8", X"03", X"10",
                                                        X"13", X"24", X"13", X"df", X"06", X"d5", X"f2", X"05", X"1a", X"03", X"0c", X"02", X"16", X"f7", X"22", X"13", X"1c", X"f1", X"0c", X"1c", X"f7", X"ea", X"e1", X"01", X"fe", X"1c",
                                                        X"1f", X"f5", X"23", X"07", X"ff", X"1b", X"02", X"04", X"15", X"01", X"f0", X"eb", X"0e", X"ee", X"f1", X"d0", X"1a", X"db", X"ec", X"08", X"0f", X"f9", X"0a", X"03", X"fc", X"06",
                                                        X"e1", X"16", X"db", X"ff", X"f3", X"35", X"17", X"d8", X"2a", X"04", X"d5", X"fa", X"f6", X"e6", X"15", X"15", X"e4", X"e6", X"00", X"dc", X"03", X"0e", X"14", X"1c", X"03", X"14",
                                                        X"fe", X"fd", X"2c", X"e1", X"fb", X"ee", X"e4", X"20", X"0c", X"ea", X"e8", X"e5", X"1e", X"e5", X"0c", X"0a", X"e9", X"e0", X"e7", X"08", X"0d", X"24", X"24", X"f9", X"3b", X"df",
                                                        X"05", X"df", X"0f", X"df", X"15", X"f8", X"f8", X"de", X"2a", X"ee", X"fd", X"36", X"f5", X"12", X"2a", X"de", X"fb", X"e8", X"f4", X"dd", X"28", X"f9", X"f3", X"14", X"ef", X"33",
                                                        X"1c", X"eb", X"ef", X"06", X"e9", X"f9", X"df", X"d3", X"fb", X"e0", X"f0", X"08", X"04", X"ec", X"fe", X"05", X"26", X"fe", X"02", X"29", X"34", X"f2", X"20", X"26", X"f8", X"0a",
                                                        X"17", X"01", X"f8", X"fc", X"fb", X"e5", X"e1", X"11", X"fe", X"f1", X"15", X"0f", X"f0", X"32", X"f8", X"c6", X"f6", X"fc", X"04", X"fa", X"09", X"29", X"e5", X"c8", X"fe", X"e8",
                                                        X"e7", X"24", X"1f", X"da", X"01", X"0f", X"ef", X"09", X"f7", X"01", X"fa", X"f1", X"04", X"1e", X"f3", X"10", X"07", X"27", X"0c", X"be", X"ff", X"15", X"ec", X"fb", X"1d", X"08",
                                                        X"04", X"04", X"f4", X"cd", X"e0", X"1b", X"18", X"20", X"e7", X"03", X"e6", X"fa", X"04", X"03", X"12", X"06", X"00", X"04", X"04", X"d6", X"e7", X"f2", X"e6", X"0f", X"ec", X"eb",
                                                        X"ec", X"f9", X"fc", X"f7", X"e1", X"1d", X"12", X"16", X"29", X"21", X"e5", X"ef", X"f2", X"19", X"0c", X"03", X"10", X"24", X"2a", X"07", X"06", X"fc", X"f6", X"f6", X"08", X"cc",
                                                        X"06", X"e6", X"11", X"05", X"1a", X"c8", X"f4", X"04", X"f7", X"05", X"e9", X"33", X"f6", X"2b", X"0e", X"cb", X"fe", X"e2", X"f8", X"f4", X"2c", X"e2", X"1a", X"d4", X"ea", X"f7",
                                                        X"ec", X"1d", X"0e", X"f3", X"1c", X"f1", X"ef", X"de", X"ee", X"f9", X"1e", X"2a", X"0f", X"19", X"20", X"0d", X"24", X"02", X"f4", X"ee", X"fb", X"1e", X"fa", X"09", X"10", X"eb",
                                                        X"fe", X"c2", X"19", X"19", X"15", X"0f", X"c9", X"fa", X"fc", X"01", X"e4", X"39", X"ef", X"f5", X"29", X"f2", X"fb", X"ca", X"ff", X"0a", X"e7", X"10", X"c4", X"fc", X"f4", X"0e",
                                                        X"f3", X"1d", X"e6", X"0a", X"1b", X"f8", X"fc", X"f6", X"03", X"e8", X"14", X"fe", X"ee", X"f5", X"3f", X"15", X"11", X"dd", X"03", X"fc", X"13", X"05", X"ff", X"17", X"13", X"17",
                                                        X"23", X"16", X"fc", X"d5", X"f5", X"1c", X"07", X"fa", X"0c", X"f0", X"39", X"06", X"e3", X"be", X"ff", X"29", X"02", X"ec", X"0b", X"ee", X"39", X"0a", X"1f", X"1c", X"18", X"f6",
                                                        X"1c", X"1b", X"01", X"34", X"e9", X"d4", X"0e", X"eb", X"db", X"e9", X"1e", X"06", X"fc", X"c2", X"06", X"27", X"0a", X"04", X"e1", X"c2", X"f5", X"17", X"e5", X"00", X"ef", X"ef",
                                                        X"29", X"1b", X"07", X"d6", X"e2", X"fe", X"eb", X"f9", X"ef", X"f8", X"e3", X"fb", X"fe", X"fb", X"22", X"fb", X"2c", X"f3", X"f4", X"14", X"fc", X"2a", X"24", X"0e", X"ed", X"d2",
                                                        X"e6", X"28", X"ed", X"f7", X"e8", X"fb", X"fa", X"05", X"fc", X"d9", X"0c", X"f8", X"eb", X"19", X"10", X"2e", X"01", X"e2", X"20", X"0c", X"18", X"1f", X"04", X"ed", X"ee", X"e7",
                                                        X"f0", X"1f", X"2d", X"ff", X"28", X"ed", X"ef", X"e8", X"0e", X"f8", X"fe", X"09", X"e7", X"12", X"1c", X"05", X"0d", X"f0", X"03", X"25", X"e7", X"c4", X"07", X"2a", X"0c", X"f5",
                                                        X"ed", X"fb", X"f6", X"1e", X"f4", X"c8", X"e4", X"0e", X"11", X"13", X"27", X"23", X"0d", X"eb", X"03", X"03", X"f3", X"13", X"f9", X"1c", X"f8", X"02", X"09", X"23", X"20", X"0d",
                                                        X"1e", X"0d", X"e9", X"e8", X"06", X"05", X"ec", X"1c", X"2a", X"1b", X"ee", X"0e", X"05", X"08", X"10", X"ef", X"1e", X"f1", X"22", X"0c", X"ec", X"fc", X"e8", X"21", X"f4", X"fa",
                                                        X"fa", X"13", X"09", X"e3", X"1d", X"06", X"23", X"e5", X"11", X"f0", X"e8", X"eb", X"d6", X"1d", X"1f", X"05", X"fe", X"e8", X"f5", X"e6", X"14", X"fe", X"13", X"c2", X"20", X"e7",
                                                        X"08", X"08", X"e6", X"f0", X"07", X"f6", X"14", X"d9", X"f0", X"fa", X"1a", X"ef", X"02", X"3a", X"29", X"20", X"05", X"09", X"f9", X"de", X"f9", X"f4", X"ea", X"1c", X"fd", X"ed",
                                                        X"3e", X"01", X"04", X"bc", X"2d", X"d3", X"16", X"fd", X"cf", X"e7", X"fa", X"fa", X"1e", X"20", X"21", X"df", X"06", X"f3", X"24", X"1d", X"0d", X"1b", X"1f", X"1d", X"e2", X"e1",
                                                        X"1a", X"f4", X"01", X"18", X"f0", X"e8", X"3c", X"f4", X"ff", X"14", X"04", X"c5", X"f8", X"1c", X"da", X"fc", X"1a", X"06", X"ff", X"cb", X"19", X"f2", X"35", X"ec", X"db", X"26",
                                                        X"04", X"2a", X"fb", X"fa", X"d0", X"f0", X"09", X"14", X"f6", X"fd", X"06", X"3a", X"23", X"03", X"ee", X"11", X"f9", X"29", X"e5", X"03", X"f6", X"d7", X"0e", X"0f", X"fe", X"fc",
                                                        X"ff", X"eb", X"e2", X"0d", X"ff", X"e3", X"df", X"e3", X"ea", X"0c", X"14", X"e6", X"0c", X"0b", X"08", X"19", X"e5", X"fd", X"0f", X"0c", X"ff", X"bb", X"ee", X"ff", X"08", X"04",
                                                        X"e8", X"0a", X"24", X"1b", X"f5", X"f9", X"f5", X"00", X"f7", X"13", X"02", X"1a", X"ee", X"16", X"e2", X"0a", X"11", X"12", X"fe", X"0c", X"fc", X"db", X"0e", X"18", X"f2", X"18",
                                                        X"27", X"f6", X"f8", X"2d", X"0e", X"fe", X"f1", X"05", X"20", X"2a", X"fb", X"d0", X"fa", X"e4", X"0d", X"1d", X"df", X"c6", X"ee", X"25", X"04", X"05", X"de", X"17", X"08", X"1b",
                                                        X"f4", X"d2", X"e6", X"1e", X"29", X"21", X"f6", X"f0", X"01", X"e1", X"06", X"f7", X"dc", X"0a", X"02", X"1f", X"02", X"0c", X"f4", X"07", X"e0", X"23", X"28", X"ba", X"13", X"d9",
                                                        X"eb", X"d9", X"fb", X"21", X"21", X"19", X"e5", X"0a", X"e5", X"dc", X"f8", X"1a", X"fc", X"de", X"ee", X"cb", X"d9", X"e6", X"ed", X"4c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"4c";
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

