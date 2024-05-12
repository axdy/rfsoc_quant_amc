-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block382.vhd
-- Created: 2023-08-07 19:04:44
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block382
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage31/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block382 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block382;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block382 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"37", X"fd", X"08", X"1d", X"fe", X"eb", X"04", X"f2", X"c5", X"b7", X"d1", X"00", X"eb", X"dc",
                                                        X"02", X"21", X"25", X"04", X"12", X"0b", X"3c", X"2d", X"eb", X"1b", X"e4", X"ce", X"ee", X"06", X"d6", X"28", X"02", X"19", X"e7", X"f7", X"08", X"02", X"23", X"dc", X"eb", X"16",
                                                        X"e1", X"32", X"ef", X"dd", X"0d", X"07", X"0e", X"1b", X"eb", X"f7", X"10", X"fb", X"fb", X"f1", X"1d", X"10", X"01", X"1b", X"d8", X"06", X"f2", X"1b", X"19", X"2e", X"e5", X"09",
                                                        X"02", X"02", X"0c", X"e3", X"f3", X"13", X"15", X"03", X"e8", X"f5", X"d0", X"f9", X"f4", X"25", X"23", X"f7", X"f5", X"2b", X"2c", X"f0", X"f2", X"0b", X"1a", X"07", X"02", X"f8",
                                                        X"18", X"d2", X"fb", X"30", X"ce", X"fa", X"e4", X"35", X"18", X"e5", X"22", X"db", X"1e", X"ba", X"d9", X"f7", X"fd", X"f8", X"0a", X"1e", X"31", X"fb", X"ee", X"1b", X"0f", X"03",
                                                        X"09", X"12", X"09", X"01", X"03", X"0f", X"18", X"e4", X"eb", X"1b", X"e2", X"08", X"ed", X"00", X"29", X"19", X"d8", X"dc", X"0c", X"c8", X"f2", X"0a", X"0a", X"f2", X"07", X"13",
                                                        X"12", X"02", X"02", X"18", X"e5", X"f5", X"0e", X"01", X"1d", X"e5", X"f4", X"06", X"fb", X"e8", X"fe", X"f9", X"e8", X"16", X"05", X"10", X"25", X"19", X"df", X"17", X"10", X"26",
                                                        X"f1", X"05", X"0b", X"22", X"05", X"e8", X"12", X"11", X"fc", X"fa", X"0c", X"e2", X"07", X"de", X"fc", X"e4", X"07", X"f8", X"f2", X"15", X"05", X"e5", X"ce", X"16", X"09", X"03",
                                                        X"e9", X"1d", X"18", X"d8", X"f1", X"20", X"f1", X"f4", X"fc", X"e9", X"f9", X"03", X"23", X"0e", X"09", X"04", X"1e", X"dd", X"d9", X"18", X"ea", X"29", X"08", X"ff", X"08", X"e4",
                                                        X"e5", X"ed", X"fb", X"ff", X"0e", X"0a", X"f9", X"d4", X"0d", X"f0", X"cc", X"28", X"00", X"e9", X"ec", X"12", X"e3", X"ef", X"10", X"f2", X"1b", X"02", X"fb", X"1e", X"14", X"db",
                                                        X"d2", X"dd", X"fa", X"da", X"01", X"e6", X"1b", X"00", X"2c", X"f4", X"fb", X"08", X"3a", X"fb", X"dc", X"17", X"e5", X"15", X"f6", X"ef", X"ea", X"04", X"f1", X"0d", X"05", X"f8",
                                                        X"03", X"e7", X"21", X"1a", X"e5", X"d9", X"f4", X"2b", X"f7", X"0b", X"e8", X"1a", X"f4", X"07", X"e6", X"fd", X"fd", X"16", X"33", X"0f", X"f3", X"10", X"f4", X"17", X"f9", X"f2",
                                                        X"15", X"f2", X"13", X"1f", X"e0", X"03", X"03", X"24", X"1d", X"dc", X"e3", X"10", X"0b", X"08", X"e5", X"0c", X"f8", X"21", X"ee", X"23", X"cc", X"0b", X"f7", X"08", X"1a", X"12",
                                                        X"d2", X"2a", X"f8", X"c9", X"df", X"fb", X"20", X"18", X"e4", X"0e", X"0e", X"02", X"fd", X"17", X"0e", X"0b", X"01", X"f2", X"00", X"c3", X"06", X"f8", X"05", X"00", X"f1", X"15",
                                                        X"e6", X"0e", X"f4", X"05", X"04", X"dc", X"00", X"d5", X"29", X"d7", X"ff", X"0f", X"19", X"12", X"e3", X"06", X"e4", X"05", X"03", X"18", X"0e", X"17", X"f1", X"fa", X"10", X"e7",
                                                        X"e1", X"ee", X"ef", X"04", X"09", X"04", X"1c", X"06", X"fa", X"00", X"0e", X"f0", X"f4", X"2a", X"1a", X"f8", X"f2", X"04", X"df", X"0f", X"ef", X"03", X"0c", X"10", X"12", X"0d",
                                                        X"08", X"de", X"0b", X"23", X"1c", X"24", X"13", X"ed", X"ef", X"08", X"fc", X"0b", X"30", X"06", X"fb", X"08", X"15", X"32", X"0b", X"d6", X"fb", X"0f", X"e5", X"08", X"16", X"e1",
                                                        X"0b", X"fd", X"e8", X"09", X"fd", X"13", X"f8", X"11", X"e2", X"f1", X"03", X"01", X"ee", X"02", X"f1", X"ec", X"09", X"dc", X"f7", X"05", X"03", X"fe", X"09", X"12", X"f3", X"17",
                                                        X"fa", X"c8", X"02", X"0a", X"dc", X"32", X"0a", X"e0", X"0a", X"02", X"14", X"01", X"09", X"dc", X"2b", X"21", X"cd", X"22", X"fe", X"03", X"e0", X"d8", X"fb", X"f8", X"37", X"fd",
                                                        X"f9", X"15", X"1e", X"e5", X"e8", X"f5", X"cd", X"0a", X"05", X"ff", X"e9", X"fd", X"0a", X"e4", X"ca", X"fe", X"01", X"19", X"fa", X"f4", X"f3", X"e1", X"cf", X"d8", X"03", X"06",
                                                        X"ea", X"dc", X"05", X"00", X"00", X"fb", X"03", X"04", X"2e", X"ec", X"f2", X"dc", X"db", X"14", X"e8", X"f1", X"f4", X"20", X"f0", X"0a", X"0c", X"08", X"00", X"15", X"f9", X"0f",
                                                        X"ff", X"ce", X"f4", X"21", X"f2", X"e4", X"f6", X"cf", X"f4", X"1c", X"2f", X"07", X"01", X"04", X"22", X"e0", X"ee", X"ce", X"14", X"2b", X"ec", X"10", X"26", X"0d", X"fb", X"1b",
                                                        X"16", X"05", X"ff", X"0d", X"f8", X"f5", X"0c", X"05", X"05", X"0d", X"10", X"fe", X"23", X"13", X"04", X"19", X"dc", X"00", X"f5", X"13", X"1f", X"0d", X"d8", X"2b", X"f3", X"db",
                                                        X"f7", X"06", X"03", X"ed", X"03", X"23", X"dc", X"07", X"ec", X"fb", X"1a", X"f1", X"f5", X"16", X"09", X"1e", X"e7", X"fc", X"1b", X"1e", X"06", X"16", X"f9", X"06", X"ff", X"f3",
                                                        X"ec", X"10", X"ee", X"d1", X"1d", X"df", X"05", X"f7", X"ed", X"dc", X"12", X"2d", X"0e", X"05", X"e8", X"08", X"3d", X"ff", X"e9", X"f1", X"37", X"20", X"f6", X"ff", X"f5", X"d3",
                                                        X"e8", X"21", X"d3", X"10", X"fb", X"26", X"fc", X"32", X"db", X"04", X"29", X"33", X"f1", X"0c", X"f1", X"2b", X"e9", X"0c", X"ea", X"05", X"0d", X"f9", X"05", X"27", X"0f", X"df",
                                                        X"26", X"ce", X"f2", X"08", X"0b", X"f5", X"ff", X"fe", X"fb", X"f1", X"f6", X"15", X"01", X"14", X"11", X"fe", X"19", X"d3", X"19", X"0f", X"04", X"2b", X"f0", X"fb", X"28", X"06",
                                                        X"04", X"04", X"29", X"fe", X"1c", X"14", X"fe", X"d1", X"00", X"0a", X"13", X"1c", X"e2", X"eb", X"df", X"ff", X"05", X"fd", X"17", X"05", X"e4", X"e7", X"f4", X"2f", X"06", X"03",
                                                        X"0b", X"d6", X"fd", X"01", X"0b", X"0a", X"0d", X"24", X"ee", X"15", X"21", X"de", X"e4", X"0e", X"f4", X"10", X"e9", X"27", X"ef", X"e0", X"df", X"06", X"0d", X"0f", X"01", X"07",
                                                        X"1a", X"ef", X"f0", X"f8", X"df", X"ec", X"f7", X"e9", X"e9", X"f7", X"fa", X"fd", X"10", X"eb", X"03", X"fd", X"ff", X"da", X"d9", X"22", X"dd", X"0c", X"12", X"0e", X"f6", X"f3",
                                                        X"22", X"fc", X"ff", X"1e", X"1d", X"03", X"0e", X"da", X"e8", X"da", X"fd", X"e8", X"09", X"02", X"f0", X"fd", X"d2", X"15", X"06", X"fe", X"fe", X"e3", X"ee", X"2e", X"e6", X"09",
                                                        X"f7", X"00", X"0a", X"01", X"21", X"f5", X"fe", X"03", X"0b", X"10", X"0f", X"f2", X"ef", X"32", X"ec", X"de", X"e1", X"03", X"2d", X"36", X"15", X"08", X"02", X"0f", X"08", X"09",
                                                        X"e6", X"e7", X"fd", X"2a", X"eb", X"d6", X"ea", X"0a", X"fe", X"f6", X"f6", X"18", X"fa", X"01", X"0f", X"0e", X"11", X"01", X"10", X"35", X"f8", X"1c", X"fe", X"07", X"23", X"0f",
                                                        X"ef", X"0a", X"c9", X"02", X"f4", X"14", X"fa", X"e5", X"ea", X"04", X"08", X"d9", X"db", X"05", X"12", X"f5", X"28", X"06", X"c2", X"0a", X"f1", X"16", X"09", X"fe", X"ed", X"f2",
                                                        X"08", X"2a", X"fe", X"0b", X"20", X"fd", X"e9", X"27", X"c9", X"0a", X"e7", X"20", X"0a", X"f5", X"e7", X"e4", X"fb", X"00", X"f9", X"ee", X"f7", X"cf", X"0f", X"16", X"14", X"06",
                                                        X"f6", X"28", X"13", X"fd", X"0a", X"fd", X"25", X"ed", X"ec", X"f7", X"20", X"fb", X"eb", X"ff", X"19", X"18", X"e8", X"1d", X"f3", X"06", X"f8", X"1a", X"0b", X"fe", X"fe", X"09",
                                                        X"f0", X"e3", X"f3", X"0a", X"38", X"01", X"f7", X"12", X"23", X"c8", X"19", X"e0", X"0b", X"28", X"ee", X"0f", X"e5", X"13", X"df", X"ff", X"cb", X"ee", X"ff", X"3a", X"28", X"dc",
                                                        X"08", X"cb", X"1b", X"d5", X"0e", X"0e", X"f1", X"e5", X"fe", X"f7", X"11", X"ee", X"f2", X"14", X"2c", X"32", X"2c", X"ea", X"f9", X"19", X"e6", X"03", X"13", X"16", X"0f", X"ca",
                                                        X"d4", X"ea", X"00", X"29", X"22", X"28", X"0c", X"14", X"dc", X"c3", X"e2", X"f3", X"e6", X"f4", X"f8", X"e6", X"21", X"fb", X"fc", X"0f", X"1e", X"06", X"fb", X"01", X"dc", X"f1",
                                                        X"08", X"f3", X"ec", X"0a", X"ea", X"f6", X"17", X"00", X"0b", X"02", X"1c", X"0d", X"15", X"ce", X"ce", X"1d", X"02", X"f1", X"11", X"f9", X"df", X"06", X"33", X"03", X"02", X"ed",
                                                        X"eb", X"f0", X"ef", X"22", X"e7", X"d8", X"06", X"f0", X"01", X"07", X"f9", X"0a", X"0e", X"08", X"02", X"23", X"29", X"0f", X"01", X"d4", X"db", X"dc", X"12", X"ff", X"f2", X"18",
                                                        X"0e", X"07", X"c4", X"fe", X"05", X"fd", X"0a", X"f8", X"f3", X"c9", X"e2", X"2b", X"f2", X"0e", X"f1", X"28", X"02", X"1c", X"29", X"04", X"fc", X"e5", X"20", X"0b", X"f6", X"df",
                                                        X"f5", X"39", X"0e", X"0a", X"0d", X"ed", X"00", X"0b", X"db", X"f4", X"fd", X"fa", X"f2", X"f9", X"06", X"fb", X"f1", X"00", X"ef", X"10", X"26", X"f9", X"07", X"28", X"2d", X"fe",
                                                        X"fa", X"26", X"2a", X"ef", X"00", X"de", X"15", X"da", X"ed", X"ef", X"1c", X"fe", X"08", X"11", X"e3", X"fe", X"fe", X"1f", X"fb", X"14", X"d0", X"13", X"08", X"22", X"f5", X"f0",
                                                        X"e8", X"db", X"1d", X"19", X"f4", X"07", X"ef", X"0b", X"2d", X"ee", X"d7", X"c9", X"15", X"27", X"fa", X"e8", X"d7", X"fa", X"16", X"2a", X"ae", X"0a", X"eb", X"2d", X"08", X"f3",
                                                        X"e7", X"31", X"12", X"0c", X"ed", X"09", X"dd", X"de", X"fe", X"18", X"28", X"0f", X"fd", X"fc", X"03", X"e7", X"f6", X"0c", X"25", X"25", X"1b", X"0c", X"e4", X"ff", X"f0", X"0f",
                                                        X"28", X"f4", X"02", X"0d", X"2a", X"de", X"06", X"ee", X"17", X"0e", X"fb", X"ff", X"e1", X"05", X"0b", X"03", X"eb", X"0a", X"eb", X"20", X"f8", X"ee", X"10", X"dc", X"1a", X"fd",
                                                        X"0c", X"f6", X"fb", X"2a", X"fd", X"fc", X"0c", X"06", X"f4", X"f4", X"3e", X"11", X"f5", X"0f", X"01", X"fd", X"02", X"05", X"14", X"20", X"ef", X"fd", X"b6", X"0d", X"00", X"09",
                                                        X"0c", X"21", X"11", X"05", X"ef", X"e6", X"e5", X"05", X"ec", X"15", X"fe", X"e7", X"fd", X"00", X"0a", X"2b", X"08", X"27", X"1d", X"fd", X"ed", X"c7", X"fe", X"0a", X"f0", X"20",
                                                        X"11", X"d5", X"dd", X"0c", X"0b", X"1d", X"f5", X"1b", X"fa", X"cf", X"db", X"2e", X"f6", X"f0", X"03", X"15", X"03", X"df", X"1f", X"fb", X"02", X"f6", X"01", X"f2", X"13", X"fa",
                                                        X"da", X"db", X"02", X"fa", X"f1", X"dd", X"0a", X"f8", X"c7", X"f8", X"17", X"20", X"06", X"dd", X"1f", X"d4", X"db", X"03", X"f8", X"f6", X"11", X"f7", X"fd", X"0d", X"31", X"f3",
                                                        X"0c", X"22", X"28", X"de", X"dd", X"1e", X"ca", X"37", X"03", X"ee", X"ea", X"e3", X"09", X"f8", X"36", X"fd", X"04", X"fd", X"37", X"eb", X"de", X"09", X"f4", X"d5", X"0b", X"f6",
                                                        X"25", X"ff", X"0a", X"fb", X"09", X"08", X"f6", X"14", X"1a", X"0d", X"fc", X"ce", X"f0", X"32", X"f4", X"01", X"ec", X"19", X"f2", X"0e", X"0b", X"03", X"f6", X"23", X"1d", X"d8",
                                                        X"03", X"f9", X"fd", X"dd", X"04", X"e9", X"14", X"f3", X"28", X"1f", X"f7", X"f7", X"f5", X"12", X"18", X"0b", X"e3", X"08", X"15", X"2c", X"e1", X"04", X"f7", X"fc", X"09", X"1b",
                                                        X"dd", X"f1", X"f1", X"27", X"f1", X"f4", X"fe", X"34", X"0a", X"e4", X"d3", X"0b", X"fb", X"e8", X"2c", X"1f", X"ed", X"06", X"ef", X"f8", X"f6", X"07", X"f6", X"d3", X"21", X"d8",
                                                        X"ff", X"0c", X"e4", X"03", X"e1", X"2a", X"d8", X"0d", X"05", X"fe", X"09", X"06", X"f9", X"23", X"05", X"31", X"d5", X"00", X"07", X"19", X"d4", X"28", X"e4", X"f8", X"12", X"0c",
                                                        X"21", X"fe", X"08", X"d8", X"2a", X"0c", X"ff", X"fd", X"e8", X"f7", X"f4", X"0e", X"ce", X"fe", X"fc", X"08", X"23", X"16", X"ea", X"e1", X"15", X"dc", X"13", X"01", X"f2", X"23",
                                                        X"d6", X"03", X"07", X"0c", X"e5", X"1e", X"fc", X"1e", X"ff", X"f3", X"11", X"d5", X"08", X"fe", X"06", X"ee", X"0b", X"fb", X"27", X"05", X"e7", X"1c", X"f1", X"1a", X"2d", X"2a",
                                                        X"fe", X"31", X"e5", X"1b", X"ed", X"16", X"f3", X"f7", X"19", X"fa", X"02", X"25", X"f5", X"1c", X"e4", X"fb", X"f0", X"26", X"e8", X"14", X"e3", X"fd", X"e6", X"01", X"1c", X"13",
                                                        X"f9", X"04", X"26", X"ff", X"0c", X"da", X"00", X"cd", X"ea", X"f9", X"16", X"13", X"ec", X"e8", X"14", X"06", X"07", X"f0", X"34", X"e8", X"cf", X"16", X"cd", X"c4", X"f4", X"00",
                                                        X"13", X"de", X"e7", X"f8", X"03", X"f9", X"01", X"1b", X"ef", X"e0", X"e8", X"fc", X"e6", X"12", X"e8", X"f3", X"f1", X"01", X"18", X"de", X"d9", X"0d", X"05", X"fe", X"22", X"dd",
                                                        X"df", X"01", X"e5", X"2c", X"e0", X"f9", X"f7", X"13", X"06", X"0c", X"2e", X"07", X"fd", X"fe", X"1a", X"01", X"05", X"f0", X"cc", X"e7", X"0c", X"00", X"02", X"dc", X"07", X"1f",
                                                        X"eb", X"fd", X"06", X"08", X"fa", X"ec", X"f7", X"e1", X"e4", X"1a", X"f3", X"25", X"ee", X"19", X"fc", X"14", X"39", X"00", X"ff", X"09", X"1f", X"d9", X"0e", X"1a", X"ee", X"c4",
                                                        X"ec", X"00", X"24", X"f4", X"08", X"1b", X"05", X"0d", X"00", X"0f", X"1e", X"13", X"e4", X"3c", X"14", X"ce", X"e5", X"1b", X"0f", X"1a", X"df", X"10", X"f6", X"06", X"00", X"0b",
                                                        X"da", X"0b", X"1d", X"08", X"f3", X"e4", X"dc", X"12", X"f1", X"e4", X"f5", X"20", X"f1", X"e9", X"04", X"11", X"23", X"f0", X"f4", X"fe", X"1c", X"2d", X"f5", X"ff", X"11", X"09",
                                                        X"01", X"2b", X"cf", X"f1", X"f6", X"0b", X"16", X"f9", X"ec", X"35", X"13", X"e9", X"e2", X"fe", X"18", X"e3", X"f4", X"17", X"03", X"fb", X"eb", X"0b", X"1c", X"00", X"1e", X"dd",
                                                        X"1c", X"c3", X"fd", X"fc", X"fa", X"f3", X"e3", X"0a", X"0b", X"f6", X"e7", X"32", X"fe", X"04", X"e6", X"cf", X"1b", X"29", X"e7", X"f5", X"e6", X"ef", X"fe", X"06", X"f1", X"01",
                                                        X"ec", X"f4", X"12", X"f9", X"1d", X"0f", X"0b", X"1c", X"01", X"05", X"01", X"ee", X"e9", X"f5", X"14", X"0c", X"f1", X"1f", X"09", X"0e", X"e4", X"e0", X"13", X"f2", X"06", X"0a",
                                                        X"10", X"11", X"09", X"ff", X"e0", X"f2", X"02", X"f0", X"0e", X"fa", X"1c", X"fd", X"ed", X"33", X"09", X"02", X"e2", X"d5", X"e7", X"fc", X"0d", X"f7", X"05", X"06", X"01", X"fa",
                                                        X"07", X"00", X"ec", X"f7", X"ec", X"f0", X"fb", X"f7", X"16", X"d7", X"d2", X"06", X"0a", X"1b", X"f8", X"1f", X"11", X"0f", X"dc", X"20", X"fe", X"06", X"ee", X"21", X"13", X"e3",
                                                        X"0b", X"0c", X"16", X"e7", X"28", X"06", X"fc", X"fc", X"e0", X"cb", X"fd", X"f1", X"fb", X"f5", X"f3", X"01", X"2a", X"f5", X"04", X"25", X"37", X"f4", X"01", X"f6", X"d1", X"cb",
                                                        X"ff", X"0c", X"0b", X"1c", X"15", X"03", X"39", X"f6", X"fd", X"f7", X"fb", X"d4", X"de", X"dc", X"f8", X"24", X"f0", X"ff", X"12", X"0e", X"06", X"05", X"c9", X"06", X"f8", X"1e",
                                                        X"3e", X"06", X"d7", X"01", X"02", X"07", X"f8", X"f3", X"f4", X"13", X"ea", X"12", X"4c", X"fe", X"01", X"0b", X"ea", X"e0", X"e5", X"27", X"de", X"e9", X"ed", X"0f", X"0b", X"19",
                                                        X"14", X"19", X"e9", X"03", X"ff", X"f2", X"39", X"13", X"e1", X"f1", X"f2", X"e9", X"03", X"19", X"ff", X"dd", X"07", X"28", X"2f", X"fb", X"fb", X"1d", X"11", X"25", X"eb", X"03",
                                                        X"f1", X"dd", X"0a", X"07", X"f1", X"fb", X"f2", X"1c", X"07", X"00", X"fa", X"02", X"30", X"d9", X"f2", X"f9", X"11", X"b6", X"d5", X"f9", X"27", X"da", X"e9", X"2b", X"18", X"09",
                                                        X"fb", X"17", X"39", X"df", X"e0", X"de", X"3a", X"0f", X"f9", X"e2", X"e1", X"ed", X"04", X"28", X"af", X"fc", X"ff", X"19", X"09", X"33", X"f1", X"ef", X"0f", X"e6", X"f0", X"19",
                                                        X"09", X"15", X"d8", X"22", X"2d", X"13", X"00", X"11", X"0e", X"f4", X"2a", X"13", X"27", X"08", X"01", X"08", X"0a", X"da", X"f2", X"14");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"14";
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

