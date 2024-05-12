-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block395.vhd
-- Created: 2023-06-15 16:03:05
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block395
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage43/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block395 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block395;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block395 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"14", X"da", X"e5", X"19", X"f4", X"21", X"ea", X"10", X"0e", X"17", X"00", X"1d", X"2e", X"10",
                                                        X"e9", X"f3", X"10", X"f9", X"fe", X"f3", X"f4", X"25", X"f8", X"f2", X"07", X"fd", X"0a", X"14", X"02", X"24", X"17", X"f9", X"f5", X"f5", X"d0", X"31", X"13", X"fc", X"1c", X"02",
                                                        X"14", X"03", X"12", X"d5", X"ee", X"21", X"12", X"fd", X"18", X"01", X"fd", X"17", X"ff", X"0a", X"10", X"fa", X"e7", X"c7", X"07", X"d9", X"05", X"fd", X"1c", X"07", X"07", X"13",
                                                        X"ff", X"24", X"de", X"03", X"06", X"ed", X"1d", X"16", X"f6", X"ed", X"1b", X"10", X"d5", X"1b", X"f4", X"fb", X"18", X"d7", X"eb", X"19", X"e7", X"f0", X"ee", X"1f", X"ed", X"e5",
                                                        X"1c", X"04", X"fc", X"fa", X"dd", X"20", X"02", X"2a", X"0e", X"f7", X"39", X"eb", X"00", X"0a", X"d3", X"ea", X"19", X"f7", X"2d", X"0d", X"0f", X"f6", X"e1", X"db", X"eb", X"03",
                                                        X"1b", X"dc", X"dc", X"2a", X"f6", X"19", X"e9", X"13", X"0d", X"fb", X"fa", X"29", X"1f", X"0e", X"04", X"f5", X"f7", X"ee", X"de", X"28", X"f1", X"ce", X"e0", X"0d", X"2d", X"fa",
                                                        X"ee", X"18", X"08", X"d5", X"fe", X"e7", X"1c", X"e3", X"0b", X"17", X"e8", X"fd", X"eb", X"0a", X"0c", X"21", X"11", X"17", X"07", X"00", X"c5", X"d1", X"23", X"f5", X"e6", X"25",
                                                        X"f9", X"ef", X"fe", X"10", X"0a", X"1e", X"e3", X"03", X"1f", X"10", X"e0", X"fe", X"10", X"fa", X"f0", X"cf", X"e7", X"e8", X"1a", X"29", X"f7", X"14", X"e3", X"00", X"f7", X"f8",
                                                        X"eb", X"fa", X"f0", X"e4", X"d0", X"d2", X"e7", X"1d", X"27", X"19", X"0f", X"f7", X"f0", X"f5", X"14", X"ed", X"eb", X"03", X"e0", X"fd", X"ec", X"ff", X"cf", X"24", X"e8", X"1c",
                                                        X"ee", X"03", X"33", X"f5", X"e0", X"f7", X"f8", X"27", X"fd", X"fd", X"f0", X"21", X"05", X"ee", X"2a", X"2f", X"1a", X"f0", X"e8", X"fc", X"e7", X"1d", X"fc", X"35", X"ec", X"07",
                                                        X"0b", X"b7", X"04", X"f6", X"15", X"28", X"07", X"f3", X"e1", X"09", X"f0", X"da", X"ee", X"33", X"02", X"12", X"ef", X"14", X"02", X"2b", X"ee", X"07", X"19", X"fb", X"0c", X"12",
                                                        X"e7", X"f5", X"14", X"2b", X"0b", X"05", X"fd", X"13", X"10", X"11", X"ff", X"2d", X"da", X"01", X"1b", X"f6", X"db", X"12", X"df", X"33", X"07", X"00", X"e4", X"2c", X"f9", X"05",
                                                        X"de", X"1b", X"08", X"04", X"1e", X"e8", X"ef", X"1b", X"07", X"e4", X"fe", X"0b", X"fc", X"f5", X"17", X"d5", X"e2", X"12", X"e2", X"fe", X"0d", X"eb", X"f2", X"20", X"f2", X"13",
                                                        X"eb", X"f5", X"eb", X"bc", X"e4", X"1c", X"1a", X"11", X"0d", X"fa", X"ea", X"ec", X"04", X"2e", X"f5", X"e0", X"1e", X"f8", X"07", X"fa", X"f8", X"ee", X"2a", X"25", X"15", X"e5",
                                                        X"11", X"f1", X"fa", X"34", X"11", X"06", X"2a", X"ec", X"fe", X"e8", X"f4", X"e5", X"e2", X"1a", X"0d", X"0e", X"f2", X"00", X"ff", X"07", X"06", X"33", X"30", X"f7", X"1c", X"d3",
                                                        X"f6", X"ff", X"17", X"0e", X"f8", X"04", X"10", X"0b", X"04", X"0b", X"f4", X"05", X"36", X"ec", X"f8", X"1f", X"e8", X"db", X"10", X"ff", X"ea", X"12", X"18", X"0a", X"14", X"15",
                                                        X"02", X"f5", X"ec", X"f7", X"c7", X"b8", X"da", X"08", X"05", X"16", X"49", X"19", X"e6", X"0e", X"17", X"06", X"e4", X"f2", X"2a", X"ed", X"c9", X"e9", X"e7", X"de", X"06", X"22",
                                                        X"0d", X"ff", X"ff", X"09", X"37", X"15", X"08", X"0e", X"e1", X"ef", X"e7", X"38", X"f3", X"13", X"0b", X"19", X"0b", X"12", X"dc", X"07", X"e9", X"09", X"11", X"e3", X"04", X"02",
                                                        X"e5", X"ef", X"d9", X"0b", X"ea", X"12", X"24", X"19", X"e9", X"f2", X"0a", X"25", X"0b", X"f7", X"17", X"12", X"13", X"17", X"f6", X"e3", X"f4", X"2c", X"ff", X"fd", X"f4", X"fd",
                                                        X"fc", X"31", X"eb", X"0e", X"ed", X"0f", X"09", X"d4", X"01", X"f2", X"17", X"25", X"e0", X"fe", X"0f", X"f9", X"f7", X"0e", X"eb", X"fb", X"e2", X"13", X"f6", X"0f", X"fa", X"e1",
                                                        X"23", X"0b", X"0a", X"f7", X"20", X"0a", X"f2", X"07", X"fd", X"15", X"da", X"31", X"0e", X"0b", X"ee", X"d2", X"ff", X"12", X"e3", X"ee", X"29", X"f0", X"ea", X"f1", X"07", X"22",
                                                        X"28", X"ef", X"e8", X"da", X"01", X"eb", X"0f", X"19", X"15", X"f5", X"06", X"db", X"00", X"da", X"e0", X"25", X"df", X"15", X"fb", X"17", X"02", X"27", X"f4", X"f8", X"1a", X"04",
                                                        X"ea", X"d9", X"fe", X"2b", X"df", X"f6", X"01", X"1c", X"e2", X"1a", X"0a", X"e6", X"fd", X"16", X"d6", X"f3", X"f3", X"eb", X"04", X"05", X"f4", X"02", X"16", X"f9", X"06", X"27",
                                                        X"e4", X"cb", X"17", X"12", X"ec", X"e6", X"e4", X"06", X"e0", X"f3", X"dd", X"19", X"07", X"16", X"f3", X"27", X"eb", X"de", X"02", X"0f", X"fa", X"e9", X"0e", X"0a", X"15", X"31",
                                                        X"e7", X"f8", X"03", X"f9", X"09", X"21", X"f2", X"0f", X"0f", X"01", X"fe", X"ef", X"d2", X"23", X"04", X"fd", X"08", X"09", X"1f", X"f6", X"e6", X"ff", X"e6", X"0c", X"eb", X"0e",
                                                        X"27", X"16", X"df", X"f0", X"0a", X"fa", X"1d", X"ef", X"1f", X"05", X"dc", X"c9", X"f0", X"0c", X"01", X"fe", X"07", X"f9", X"dd", X"17", X"05", X"39", X"f4", X"14", X"39", X"f8",
                                                        X"f4", X"0d", X"e9", X"fe", X"13", X"09", X"24", X"e8", X"0b", X"16", X"19", X"e1", X"04", X"fc", X"f1", X"ea", X"09", X"f3", X"e4", X"ee", X"03", X"fb", X"2a", X"13", X"0c", X"f2",
                                                        X"13", X"0e", X"0c", X"e5", X"1d", X"fc", X"23", X"c1", X"f2", X"29", X"f2", X"14", X"fd", X"f9", X"00", X"16", X"fe", X"ca", X"05", X"12", X"31", X"07", X"dc", X"2f", X"00", X"1f",
                                                        X"fb", X"ff", X"22", X"17", X"dd", X"ed", X"e8", X"13", X"0c", X"e1", X"ea", X"02", X"0e", X"dc", X"db", X"27", X"ec", X"0b", X"d7", X"0f", X"f3", X"01", X"f5", X"e9", X"fe", X"19",
                                                        X"0f", X"09", X"23", X"c9", X"03", X"fa", X"dd", X"0a", X"d4", X"04", X"25", X"f5", X"0f", X"2c", X"f1", X"27", X"f5", X"0a", X"e6", X"1a", X"e7", X"d6", X"16", X"0a", X"f5", X"fd",
                                                        X"fd", X"dd", X"03", X"04", X"08", X"f8", X"14", X"21", X"e9", X"0b", X"ea", X"2b", X"0f", X"fb", X"0a", X"e9", X"11", X"dd", X"fc", X"16", X"09", X"47", X"fb", X"1e", X"ed", X"39",
                                                        X"02", X"f6", X"fa", X"16", X"1e", X"ee", X"f4", X"df", X"f5", X"32", X"f7", X"0a", X"e6", X"ff", X"ec", X"de", X"15", X"0b", X"f3", X"11", X"e2", X"fe", X"18", X"02", X"ec", X"d1",
                                                        X"f6", X"f7", X"1a", X"13", X"0e", X"ef", X"e6", X"04", X"1b", X"11", X"0a", X"e6", X"fc", X"da", X"e4", X"1c", X"e2", X"fe", X"05", X"04", X"27", X"d2", X"e7", X"ed", X"15", X"00",
                                                        X"de", X"e4", X"df", X"f5", X"f5", X"dc", X"fb", X"ea", X"e9", X"09", X"f7", X"33", X"07", X"d7", X"00", X"00", X"ec", X"ec", X"f7", X"0b", X"e3", X"2f", X"1c", X"f1", X"06", X"f1",
                                                        X"ef", X"42", X"e6", X"06", X"f5", X"0c", X"05", X"ed", X"fa", X"19", X"09", X"d8", X"d2", X"05", X"fd", X"ed", X"fa", X"2a", X"e3", X"fc", X"e6", X"02", X"2f", X"fa", X"0a", X"22",
                                                        X"25", X"04", X"02", X"f0", X"43", X"ce", X"e4", X"be", X"dc", X"dd", X"e5", X"f3", X"e7", X"ed", X"fc", X"14", X"01", X"e7", X"e9", X"fe", X"f6", X"ee", X"ec", X"32", X"e2", X"2f",
                                                        X"e4", X"f8", X"f5", X"06", X"1a", X"ff", X"2d", X"ed", X"10", X"20", X"14", X"dc", X"00", X"da", X"f9", X"eb", X"e3", X"07", X"f8", X"0a", X"e4", X"13", X"19", X"02", X"f3", X"30",
                                                        X"0e", X"09", X"f2", X"35", X"fd", X"db", X"fc", X"e9", X"2f", X"01", X"f2", X"03", X"10", X"ff", X"dd", X"ff", X"13", X"eb", X"e4", X"1a", X"f4", X"1f", X"fe", X"f0", X"1b", X"0d",
                                                        X"f2", X"07", X"09", X"07", X"ef", X"eb", X"26", X"fd", X"f3", X"f0", X"03", X"dc", X"21", X"1e", X"e3", X"1a", X"20", X"f8", X"10", X"ed", X"ec", X"0c", X"10", X"0e", X"ed", X"05",
                                                        X"e7", X"06", X"0f", X"07", X"d3", X"0a", X"0b", X"f8", X"e4", X"de", X"f3", X"0b", X"ff", X"07", X"1f", X"fb", X"eb", X"f7", X"ee", X"ff", X"1a", X"01", X"17", X"ff", X"09", X"f0",
                                                        X"db", X"09", X"10", X"04", X"12", X"0a", X"11", X"e8", X"e9", X"14", X"23", X"e1", X"0e", X"ef", X"d8", X"10", X"0f", X"30", X"1e", X"0e", X"1d", X"3d", X"f6", X"0f", X"ee", X"fc",
                                                        X"04", X"ed", X"38", X"e4", X"15", X"d3", X"f1", X"f9", X"e4", X"1d", X"f5", X"c5", X"01", X"18", X"f0", X"f4", X"ec", X"f4", X"12", X"f0", X"eb", X"e9", X"f3", X"0c", X"f9", X"08",
                                                        X"fd", X"ee", X"0f", X"2b", X"fa", X"01", X"ff", X"e2", X"f9", X"e3", X"ff", X"f9", X"ee", X"09", X"f5", X"02", X"12", X"2e", X"e8", X"e7", X"1a", X"fd", X"15", X"ef", X"0c", X"e1",
                                                        X"f2", X"15", X"e5", X"da", X"e5", X"09", X"0c", X"f2", X"d6", X"d3", X"ef", X"f5", X"1b", X"fb", X"ec", X"f9", X"1c", X"17", X"ed", X"ec", X"28", X"ec", X"1a", X"cf", X"ea", X"da",
                                                        X"04", X"fb", X"08", X"f3", X"fe", X"e9", X"08", X"f6", X"0a", X"07", X"01", X"f8", X"0c", X"29", X"de", X"f2", X"e5", X"fd", X"03", X"fa", X"04", X"0c", X"10", X"17", X"f5", X"16",
                                                        X"f9", X"14", X"f0", X"da", X"e5", X"da", X"e0", X"01", X"24", X"0c", X"ea", X"1c", X"0e", X"09", X"e8", X"0d", X"2a", X"e5", X"fe", X"01", X"dc", X"03", X"ff", X"f9", X"02", X"fc",
                                                        X"f8", X"f4", X"0d", X"23", X"f2", X"08", X"0d", X"fb", X"1e", X"2f", X"cf", X"c8", X"e4", X"f3", X"22", X"eb", X"ed", X"23", X"02", X"0a", X"05", X"0d", X"14", X"01", X"dc", X"19",
                                                        X"15", X"09", X"f4", X"f9", X"1e", X"fb", X"fb", X"01", X"01", X"df", X"e7", X"da", X"fc", X"00", X"1a", X"fd", X"f4", X"22", X"e3", X"e3", X"14", X"f2", X"f6", X"e2", X"22", X"08",
                                                        X"01", X"10", X"de", X"0f", X"e3", X"ed", X"e1", X"15", X"ef", X"ea", X"00", X"05", X"d6", X"06", X"f5", X"fc", X"05", X"e9", X"35", X"fd", X"e7", X"f1", X"05", X"1d", X"e3", X"01",
                                                        X"ed", X"f5", X"2b", X"f0", X"e9", X"e7", X"04", X"dd", X"06", X"19", X"04", X"f1", X"e1", X"e5", X"26", X"dd", X"fd", X"e7", X"26", X"e8", X"df", X"f2", X"06", X"23", X"0d", X"1d",
                                                        X"02", X"37", X"f8", X"15", X"f8", X"f6", X"20", X"ee", X"ff", X"ed", X"fd", X"ee", X"f7", X"15", X"15", X"1e", X"02", X"29", X"10", X"24", X"ea", X"fe", X"e8", X"e5", X"4a", X"de",
                                                        X"ef", X"f1", X"e6", X"21", X"f5", X"0e", X"00", X"17", X"fa", X"db", X"26", X"f3", X"04", X"e6", X"3a", X"f7", X"fc", X"0d", X"fa", X"fa", X"c6", X"16", X"ec", X"07", X"01", X"db",
                                                        X"ed", X"fd", X"ea", X"e9", X"06", X"dc", X"f5", X"36", X"d3", X"14", X"1c", X"06", X"12", X"28", X"f7", X"e3", X"0c", X"05", X"0f", X"e3", X"1e", X"e8", X"0a", X"e6", X"fe", X"f3",
                                                        X"e0", X"fe", X"17", X"27", X"fe", X"23", X"ea", X"15", X"07", X"fb", X"0d", X"02", X"ee", X"1f", X"f5", X"f6", X"34", X"f7", X"fd", X"05", X"f6", X"10", X"fe", X"e4", X"06", X"df",
                                                        X"f5", X"fd", X"00", X"df", X"ed", X"d8", X"0f", X"12", X"21", X"3e", X"f4", X"dd", X"ea", X"f7", X"eb", X"0a", X"fe", X"09", X"f5", X"dd", X"ef", X"0f", X"fd", X"ea", X"18", X"f6",
                                                        X"f2", X"e9", X"f7", X"e8", X"00", X"f7", X"f8", X"ee", X"f8", X"3b", X"21", X"17", X"25", X"fd", X"18", X"13", X"f2", X"dc", X"f2", X"06", X"05", X"f1", X"06", X"08", X"0c", X"d9",
                                                        X"fc", X"23", X"49", X"03", X"fc", X"1a", X"ff", X"e1", X"f1", X"01", X"0b", X"f8", X"e2", X"13", X"fc", X"d0", X"f9", X"0e", X"30", X"fd", X"e2", X"ea", X"d9", X"19", X"0b", X"f3",
                                                        X"eb", X"17", X"ef", X"f0", X"f8", X"23", X"e9", X"00", X"fc", X"0d", X"0d", X"16", X"fc", X"06", X"e5", X"d2", X"f8", X"06", X"fe", X"0c", X"e9", X"ff", X"e9", X"fb", X"2d", X"09",
                                                        X"08", X"c7", X"db", X"0d", X"e4", X"f3", X"1c", X"0e", X"e4", X"f7", X"f3", X"f4", X"fa", X"f6", X"13", X"f3", X"15", X"d8", X"ed", X"d2", X"f1", X"f6", X"e5", X"fa", X"d6", X"f9",
                                                        X"00", X"df", X"cb", X"df", X"fa", X"29", X"0f", X"2b", X"fc", X"1e", X"f0", X"f3", X"ef", X"08", X"17", X"f6", X"01", X"2d", X"e3", X"18", X"d7", X"18", X"0d", X"fa", X"12", X"e2",
                                                        X"e7", X"16", X"e0", X"e7", X"32", X"ea", X"df", X"1b", X"f3", X"ee", X"d8", X"15", X"f2", X"1a", X"0b", X"10", X"14", X"08", X"09", X"df", X"02", X"f5", X"e1", X"09", X"01", X"f9",
                                                        X"e5", X"1c", X"28", X"08", X"fe", X"05", X"0f", X"0b", X"f4", X"e9", X"eb", X"ef", X"08", X"06", X"ff", X"23", X"ef", X"00", X"1b", X"08", X"13", X"d5", X"05", X"eb", X"0b", X"e2",
                                                        X"0e", X"f4", X"ee", X"ff", X"e5", X"36", X"fa", X"09", X"ff", X"07", X"05", X"23", X"25", X"f3", X"fe", X"e8", X"dc", X"02", X"f3", X"d4", X"0b", X"0c", X"db", X"0e", X"0b", X"c5",
                                                        X"e9", X"13", X"e1", X"f5", X"14", X"f0", X"07", X"f2", X"e1", X"04", X"fb", X"0b", X"20", X"ff", X"19", X"1b", X"09", X"1a", X"15", X"10", X"05", X"f9", X"e2", X"f6", X"fe", X"0a",
                                                        X"05", X"04", X"14", X"f5", X"16", X"ec", X"e9", X"fe", X"01", X"03", X"f0", X"15", X"0f", X"1c", X"1d", X"2e", X"ea", X"ca", X"07", X"0a", X"11", X"05", X"eb", X"e7", X"ef", X"fd",
                                                        X"20", X"02", X"f5", X"e2", X"0e", X"e4", X"0e", X"16", X"25", X"d5", X"14", X"09", X"ea", X"14", X"e6", X"ea", X"dd", X"04", X"09", X"08", X"e6", X"0a", X"f4", X"f6", X"06", X"04",
                                                        X"02", X"3f", X"ed", X"04", X"1e", X"f5", X"39", X"04", X"f8", X"12", X"16", X"36", X"01", X"fa", X"1b", X"ee", X"fb", X"27", X"e6", X"e4", X"fb", X"ea", X"1f", X"1a", X"f2", X"f8",
                                                        X"fc", X"11", X"12", X"f2", X"00", X"ea", X"0d", X"13", X"e8", X"cc", X"f7", X"f0", X"2e", X"2a", X"ed", X"e9", X"fb", X"e9", X"e3", X"f1", X"23", X"fc", X"07", X"c8", X"cf", X"d1",
                                                        X"0b", X"f7", X"dd", X"07", X"eb", X"f8", X"0e", X"27", X"d8", X"f9", X"10", X"eb", X"12", X"2f", X"ea", X"de", X"02", X"e0", X"02", X"0f", X"f0", X"06", X"dd", X"18", X"03", X"20",
                                                        X"f2", X"03", X"19", X"e7", X"f2", X"1c", X"16", X"0c", X"16", X"f8", X"00", X"fc", X"e0", X"23", X"ec", X"eb", X"f0", X"15", X"e4", X"0e", X"02", X"01", X"1d", X"04", X"17", X"f2",
                                                        X"1a", X"ee", X"10", X"f6", X"05", X"e8", X"d1", X"0c", X"17", X"fa", X"f5", X"25", X"ec", X"0e", X"06", X"09", X"14", X"f5", X"e2", X"cc", X"e9", X"13", X"ee", X"14", X"23", X"30",
                                                        X"ff", X"1d", X"23", X"f1", X"fa", X"0f", X"f3", X"00", X"d4", X"23", X"f6", X"3a", X"fe", X"19", X"f2", X"16", X"f5", X"15", X"db", X"fb", X"03", X"1a", X"13", X"f9", X"e1", X"f5",
                                                        X"d6", X"3d", X"d5", X"05", X"30", X"fe", X"16", X"dd", X"0d", X"05", X"1a", X"fa", X"fe", X"e9", X"19", X"32", X"02", X"fd", X"0a", X"10", X"f2", X"2a", X"e0", X"eb", X"e7", X"ee",
                                                        X"e3", X"f8", X"e7", X"f3", X"02", X"2b", X"ec", X"2a", X"e1", X"13", X"d6", X"29", X"fa", X"1a", X"eb", X"f6", X"fb", X"e8", X"f5", X"e5", X"ef", X"f1", X"ff", X"f2", X"26", X"fb",
                                                        X"09", X"0a", X"ed", X"17", X"13", X"fb", X"e3", X"01", X"15", X"04", X"f2", X"fc", X"08", X"26", X"0c", X"e1", X"e7", X"ca", X"e3", X"d3", X"21", X"01", X"17", X"1a", X"df", X"ff",
                                                        X"04", X"0a", X"00", X"05", X"18", X"e1", X"eb", X"3c", X"e2", X"13", X"19", X"fa", X"17", X"fb", X"06", X"0b", X"fe", X"2c", X"16", X"f0", X"27", X"07", X"f0", X"ed", X"d2", X"e0",
                                                        X"fa", X"01", X"14", X"0b", X"03", X"15", X"0a", X"d9", X"fe", X"f9", X"24", X"e0", X"f7", X"20", X"e8", X"00", X"e0", X"f0", X"43", X"10");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"10";
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

