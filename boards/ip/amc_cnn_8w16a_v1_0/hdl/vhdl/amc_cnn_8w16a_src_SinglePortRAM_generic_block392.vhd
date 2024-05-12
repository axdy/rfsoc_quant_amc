-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block392.vhd
-- Created: 2023-08-07 19:04:45
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block392
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage40/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block392 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block392;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block392 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"e2", X"0f", X"fc", X"0d", X"25", X"ed", X"20", X"d7", X"02", X"cd", X"0c", X"f9", X"10", X"f0",
                                                        X"14", X"0d", X"00", X"fa", X"0c", X"19", X"14", X"10", X"fd", X"e3", X"02", X"f0", X"fa", X"06", X"f4", X"04", X"04", X"04", X"da", X"f3", X"03", X"13", X"15", X"f9", X"03", X"e3",
                                                        X"fd", X"22", X"03", X"fb", X"f4", X"e9", X"f4", X"14", X"07", X"fd", X"09", X"0f", X"15", X"e6", X"02", X"0a", X"01", X"10", X"f9", X"fe", X"01", X"f1", X"10", X"07", X"f7", X"01",
                                                        X"0d", X"0b", X"15", X"0d", X"fd", X"fe", X"0a", X"04", X"03", X"fd", X"f7", X"13", X"fc", X"0e", X"24", X"fa", X"14", X"09", X"0f", X"03", X"14", X"ca", X"fb", X"ce", X"05", X"f2",
                                                        X"f7", X"27", X"f8", X"18", X"d6", X"09", X"0a", X"ff", X"0a", X"03", X"0b", X"08", X"fa", X"13", X"0f", X"fb", X"00", X"f3", X"fd", X"14", X"1a", X"0e", X"04", X"06", X"08", X"04",
                                                        X"ef", X"d6", X"08", X"09", X"00", X"06", X"0d", X"ff", X"ff", X"fb", X"e6", X"01", X"fe", X"24", X"d5", X"f8", X"f3", X"09", X"ff", X"cc", X"02", X"ec", X"0b", X"e8", X"0e", X"09",
                                                        X"18", X"ee", X"03", X"15", X"e3", X"03", X"e9", X"de", X"ee", X"c6", X"04", X"f2", X"0d", X"13", X"fd", X"11", X"2a", X"0d", X"fe", X"f5", X"08", X"fe", X"f9", X"e2", X"0f", X"16",
                                                        X"f8", X"04", X"fb", X"ed", X"fa", X"0e", X"db", X"18", X"0b", X"08", X"e0", X"f1", X"04", X"e3", X"0a", X"d3", X"04", X"ff", X"fc", X"11", X"00", X"04", X"ed", X"07", X"05", X"0a",
                                                        X"07", X"f9", X"1d", X"e5", X"fb", X"eb", X"f8", X"0b", X"0c", X"2b", X"e6", X"0f", X"0e", X"fe", X"02", X"e9", X"ea", X"f6", X"fb", X"0b", X"e9", X"d7", X"0a", X"04", X"fd", X"00",
                                                        X"f2", X"f9", X"21", X"f9", X"03", X"0b", X"03", X"08", X"ef", X"fe", X"fb", X"e9", X"11", X"fa", X"14", X"34", X"f8", X"0a", X"07", X"f9", X"0a", X"10", X"07", X"05", X"f8", X"e5",
                                                        X"06", X"fb", X"f1", X"04", X"0f", X"2c", X"f9", X"fb", X"02", X"07", X"13", X"10", X"15", X"04", X"12", X"dd", X"02", X"df", X"03", X"00", X"11", X"02", X"03", X"00", X"fc", X"10",
                                                        X"0f", X"03", X"f1", X"22", X"02", X"01", X"f9", X"df", X"f7", X"f8", X"12", X"ed", X"15", X"fe", X"fd", X"07", X"01", X"0f", X"02", X"ee", X"f7", X"14", X"ec", X"0a", X"0b", X"16",
                                                        X"0d", X"1d", X"f2", X"e2", X"f4", X"16", X"06", X"06", X"26", X"29", X"29", X"27", X"fd", X"d5", X"f2", X"f9", X"1c", X"0a", X"eb", X"0f", X"d0", X"0f", X"16", X"fb", X"25", X"10",
                                                        X"e6", X"2f", X"01", X"d8", X"06", X"f2", X"1e", X"17", X"04", X"0d", X"f6", X"05", X"09", X"09", X"1a", X"f8", X"f4", X"02", X"04", X"db", X"f9", X"11", X"fc", X"ed", X"fa", X"0b",
                                                        X"d7", X"07", X"0a", X"f5", X"f8", X"f9", X"f0", X"32", X"ec", X"26", X"ff", X"fb", X"f2", X"fe", X"12", X"06", X"22", X"fc", X"02", X"10", X"34", X"08", X"19", X"e8", X"fc", X"15",
                                                        X"04", X"fe", X"1d", X"19", X"09", X"f6", X"00", X"07", X"0b", X"f1", X"2a", X"13", X"09", X"d2", X"fb", X"e8", X"13", X"ed", X"19", X"fc", X"f4", X"01", X"e0", X"fc", X"07", X"0c",
                                                        X"32", X"0a", X"15", X"28", X"06", X"f8", X"05", X"e7", X"17", X"07", X"fa", X"05", X"12", X"03", X"00", X"05", X"dc", X"1a", X"ed", X"2c", X"ff", X"f6", X"0a", X"07", X"11", X"ee",
                                                        X"0e", X"fa", X"ce", X"02", X"f9", X"09", X"02", X"f3", X"14", X"ed", X"f7", X"d9", X"f9", X"08", X"fc", X"ef", X"03", X"09", X"1f", X"f8", X"08", X"04", X"1e", X"fa", X"f2", X"fd",
                                                        X"ed", X"ef", X"f5", X"12", X"fd", X"0a", X"05", X"ff", X"f4", X"f2", X"ff", X"e1", X"f1", X"14", X"e6", X"e9", X"f9", X"1f", X"00", X"f8", X"13", X"ff", X"f3", X"fc", X"e2", X"f1",
                                                        X"fb", X"f8", X"fb", X"12", X"12", X"0f", X"fa", X"d1", X"06", X"fd", X"fe", X"e5", X"f1", X"0e", X"01", X"ee", X"fa", X"e0", X"f0", X"07", X"fe", X"d3", X"f8", X"28", X"f3", X"f6",
                                                        X"07", X"f5", X"ea", X"fc", X"e7", X"fb", X"05", X"08", X"ea", X"f2", X"fe", X"10", X"eb", X"00", X"0c", X"01", X"14", X"23", X"0e", X"fc", X"04", X"10", X"ef", X"ed", X"f3", X"ef",
                                                        X"fb", X"e7", X"00", X"11", X"0c", X"ea", X"17", X"16", X"f7", X"22", X"e8", X"06", X"f6", X"04", X"0a", X"ec", X"13", X"da", X"06", X"fd", X"0c", X"ed", X"05", X"16", X"0c", X"14",
                                                        X"cd", X"f0", X"f7", X"03", X"d2", X"ed", X"01", X"11", X"e6", X"f9", X"ff", X"05", X"04", X"e8", X"ea", X"07", X"0d", X"f1", X"09", X"0b", X"dd", X"13", X"06", X"0d", X"fc", X"e9",
                                                        X"0c", X"f6", X"09", X"0b", X"fc", X"0f", X"ef", X"f8", X"f0", X"fc", X"e8", X"04", X"06", X"d5", X"f7", X"08", X"02", X"08", X"f4", X"f5", X"f3", X"00", X"e6", X"ef", X"f1", X"ff",
                                                        X"ca", X"ee", X"ee", X"27", X"fb", X"27", X"13", X"09", X"fa", X"e7", X"00", X"15", X"32", X"f6", X"f2", X"fd", X"e8", X"15", X"0c", X"27", X"fa", X"ec", X"f9", X"f2", X"00", X"17",
                                                        X"ff", X"0d", X"fe", X"e5", X"e6", X"e1", X"cf", X"13", X"f1", X"14", X"0c", X"e4", X"f9", X"fa", X"1a", X"03", X"f4", X"ec", X"01", X"e9", X"f9", X"04", X"d9", X"ea", X"13", X"0c",
                                                        X"00", X"e3", X"fb", X"04", X"fc", X"10", X"fb", X"02", X"cf", X"f8", X"06", X"f1", X"0c", X"f8", X"1d", X"f4", X"ff", X"28", X"ef", X"03", X"f3", X"14", X"10", X"0c", X"d9", X"05",
                                                        X"f7", X"f4", X"14", X"0a", X"f7", X"16", X"f9", X"e5", X"08", X"f8", X"1c", X"16", X"0d", X"f8", X"0d", X"01", X"01", X"f4", X"17", X"f5", X"06", X"1e", X"00", X"28", X"fa", X"fd",
                                                        X"f2", X"17", X"e9", X"fc", X"ce", X"06", X"01", X"02", X"24", X"e4", X"fe", X"01", X"f7", X"1c", X"f8", X"ff", X"00", X"28", X"f0", X"11", X"15", X"03", X"ea", X"fc", X"27", X"1e",
                                                        X"03", X"d9", X"ee", X"2c", X"11", X"06", X"19", X"14", X"fb", X"05", X"22", X"02", X"01", X"df", X"0a", X"24", X"13", X"db", X"f7", X"e7", X"fb", X"06", X"f8", X"21", X"17", X"0c",
                                                        X"f1", X"ff", X"fd", X"ea", X"14", X"fa", X"f2", X"26", X"f6", X"0e", X"0a", X"fe", X"0c", X"11", X"e5", X"fc", X"1b", X"03", X"f9", X"01", X"24", X"ed", X"f4", X"17", X"02", X"06",
                                                        X"fa", X"0e", X"ec", X"06", X"09", X"0f", X"dd", X"fe", X"f7", X"f6", X"11", X"12", X"ec", X"1a", X"ef", X"24", X"fb", X"0f", X"f6", X"19", X"f9", X"f0", X"e7", X"02", X"fb", X"00",
                                                        X"f4", X"f9", X"f2", X"2a", X"fe", X"f6", X"f2", X"06", X"0c", X"fb", X"fd", X"fd", X"0d", X"f6", X"ee", X"e6", X"f9", X"22", X"02", X"26", X"f7", X"d4", X"05", X"00", X"13", X"eb",
                                                        X"0f", X"04", X"e8", X"f3", X"e4", X"e8", X"32", X"ee", X"28", X"27", X"fd", X"11", X"ff", X"01", X"ef", X"0e", X"f3", X"dc", X"27", X"fd", X"ed", X"ec", X"e0", X"1f", X"f4", X"de",
                                                        X"f5", X"e7", X"0b", X"09", X"02", X"f5", X"08", X"0d", X"c7", X"f8", X"f1", X"fc", X"18", X"11", X"f4", X"e3", X"08", X"0a", X"0b", X"ff", X"04", X"18", X"1e", X"03", X"cb", X"e1",
                                                        X"f3", X"ee", X"18", X"ff", X"0f", X"2d", X"fe", X"2e", X"0a", X"f5", X"01", X"0d", X"05", X"f6", X"e8", X"f5", X"ec", X"e0", X"e9", X"12", X"f3", X"04", X"f6", X"15", X"0b", X"f7",
                                                        X"1f", X"06", X"0a", X"e1", X"13", X"fd", X"f1", X"f3", X"d1", X"0b", X"fd", X"fc", X"08", X"28", X"f6", X"05", X"f4", X"f7", X"11", X"ee", X"2a", X"ee", X"f0", X"f1", X"de", X"14",
                                                        X"ed", X"21", X"09", X"ce", X"f4", X"f7", X"f0", X"df", X"11", X"f0", X"29", X"f7", X"e5", X"f7", X"02", X"f4", X"fa", X"26", X"05", X"1b", X"f6", X"f8", X"12", X"1c", X"14", X"ff",
                                                        X"e0", X"e7", X"f2", X"03", X"d3", X"1a", X"20", X"ec", X"09", X"32", X"06", X"f5", X"fa", X"ec", X"fd", X"f5", X"01", X"ff", X"f8", X"f4", X"de", X"07", X"fa", X"e2", X"0d", X"f9",
                                                        X"1a", X"f3", X"0c", X"2c", X"f0", X"03", X"16", X"00", X"01", X"fd", X"ee", X"11", X"e8", X"18", X"fa", X"2c", X"10", X"0c", X"ed", X"22", X"05", X"0b", X"2b", X"07", X"08", X"0c",
                                                        X"01", X"01", X"04", X"db", X"02", X"18", X"02", X"fe", X"16", X"f9", X"fc", X"f8", X"f9", X"05", X"ff", X"16", X"de", X"09", X"fd", X"d9", X"fb", X"e7", X"e6", X"f6", X"0c", X"27",
                                                        X"f7", X"27", X"34", X"ff", X"f7", X"15", X"e9", X"f0", X"fa", X"19", X"0c", X"f8", X"06", X"fb", X"06", X"27", X"fa", X"16", X"1c", X"f9", X"ff", X"0e", X"ed", X"1a", X"13", X"e9",
                                                        X"0b", X"f0", X"fb", X"12", X"f7", X"f4", X"0b", X"f6", X"37", X"fb", X"0c", X"19", X"ef", X"0c", X"f8", X"cd", X"00", X"d9", X"09", X"f8", X"0b", X"fe", X"11", X"01", X"38", X"ed",
                                                        X"02", X"0a", X"fb", X"02", X"f3", X"04", X"0b", X"03", X"04", X"05", X"f5", X"14", X"e6", X"05", X"0f", X"fd", X"02", X"ee", X"fc", X"e8", X"e6", X"f1", X"f6", X"d9", X"fa", X"02",
                                                        X"08", X"0b", X"fc", X"07", X"1f", X"ee", X"f9", X"f6", X"05", X"03", X"0f", X"f7", X"f3", X"22", X"f9", X"f9", X"f8", X"03", X"16", X"f8", X"e8", X"f9", X"f1", X"0e", X"ed", X"ff",
                                                        X"e7", X"cd", X"03", X"dd", X"f8", X"00", X"0f", X"fb", X"f2", X"f4", X"06", X"f3", X"01", X"f8", X"1d", X"0c", X"ee", X"d2", X"02", X"26", X"f4", X"04", X"ee", X"0a", X"07", X"eb",
                                                        X"e6", X"fb", X"fc", X"2a", X"e9", X"f9", X"f6", X"d8", X"f7", X"17", X"0d", X"fd", X"0c", X"03", X"0a", X"16", X"ef", X"0c", X"f5", X"f5", X"14", X"13", X"0a", X"ea", X"fd", X"07",
                                                        X"f8", X"03", X"0d", X"d9", X"ff", X"eb", X"d4", X"00", X"05", X"f1", X"00", X"f8", X"ef", X"d9", X"08", X"ed", X"12", X"11", X"1b", X"07", X"fb", X"fc", X"e7", X"fd", X"f4", X"04",
                                                        X"f2", X"06", X"f5", X"0c", X"f7", X"2b", X"fa", X"12", X"ff", X"0e", X"ff", X"07", X"e4", X"eb", X"f5", X"09", X"f1", X"fc", X"06", X"07", X"0c", X"dd", X"fb", X"08", X"fb", X"f5",
                                                        X"f1", X"fc", X"ed", X"ee", X"f7", X"f0", X"12", X"fc", X"0d", X"02", X"04", X"02", X"ed", X"0b", X"fb", X"f8", X"08", X"1b", X"da", X"ef", X"e8", X"f4", X"dd", X"00", X"08", X"f6",
                                                        X"f2", X"0c", X"0a", X"03", X"ef", X"eb", X"19", X"f2", X"d3", X"01", X"e5", X"f4", X"02", X"e4", X"04", X"14", X"fe", X"db", X"00", X"e6", X"f9", X"1e", X"0b", X"0d", X"dc", X"06",
                                                        X"07", X"e9", X"f1", X"01", X"e6", X"cf", X"f9", X"16", X"10", X"e9", X"f8", X"d9", X"ee", X"09", X"1a", X"fe", X"fd", X"0d", X"04", X"0d", X"de", X"22", X"09", X"ca", X"f7", X"f9",
                                                        X"0d", X"00", X"f5", X"05", X"2b", X"10", X"01", X"fe", X"17", X"09", X"21", X"da", X"0b", X"10", X"16", X"f7", X"f7", X"e7", X"08", X"f9", X"2d", X"fd", X"01", X"0d", X"e0", X"25",
                                                        X"05", X"1d", X"fe", X"eb", X"02", X"fe", X"14", X"ec", X"f8", X"f6", X"03", X"0f", X"04", X"13", X"e5", X"eb", X"fa", X"13", X"07", X"fd", X"f9", X"fe", X"14", X"10", X"00", X"fd",
                                                        X"17", X"fb", X"00", X"f4", X"de", X"1e", X"15", X"f3", X"0a", X"dc", X"fb", X"07", X"fb", X"1c", X"0a", X"0c", X"2f", X"f1", X"fc", X"11", X"09", X"20", X"1f", X"e4", X"f1", X"f5",
                                                        X"03", X"08", X"20", X"0d", X"fd", X"ff", X"e8", X"08", X"05", X"ec", X"d6", X"12", X"00", X"14", X"0f", X"2a", X"00", X"00", X"13", X"0c", X"08", X"02", X"d9", X"f5", X"05", X"f2",
                                                        X"fc", X"f3", X"fa", X"07", X"05", X"dd", X"09", X"fc", X"f0", X"01", X"f1", X"ef", X"10", X"08", X"f4", X"11", X"f3", X"f0", X"ed", X"22", X"f2", X"2b", X"08", X"0d", X"0d", X"18",
                                                        X"ef", X"ed", X"d9", X"eb", X"05", X"04", X"00", X"fc", X"f9", X"e4", X"0d", X"f1", X"ed", X"0e", X"18", X"1a", X"ed", X"fc", X"1b", X"f2", X"03", X"06", X"06", X"13", X"0b", X"08",
                                                        X"f1", X"fb", X"fc", X"06", X"fb", X"fb", X"0f", X"fc", X"03", X"fe", X"07", X"fb", X"31", X"1c", X"20", X"26", X"f4", X"cc", X"03", X"04", X"06", X"f5", X"10", X"fe", X"fb", X"07",
                                                        X"fa", X"05", X"ea", X"ed", X"06", X"14", X"01", X"e9", X"f7", X"f8", X"ff", X"e9", X"1a", X"ec", X"da", X"ff", X"f0", X"e9", X"31", X"f6", X"1f", X"00", X"fc", X"d4", X"f8", X"12",
                                                        X"f4", X"fc", X"18", X"fa", X"13", X"f9", X"fe", X"0c", X"fc", X"f0", X"e3", X"29", X"f2", X"d3", X"0a", X"08", X"f3", X"fc", X"eb", X"f1", X"e4", X"f6", X"fd", X"fd", X"ff", X"f4",
                                                        X"f4", X"f5", X"fc", X"02", X"00", X"f9", X"0e", X"25", X"f2", X"fb", X"24", X"00", X"06", X"df", X"0a", X"1a", X"0b", X"f0", X"f8", X"db", X"ee", X"f7", X"2b", X"10", X"19", X"fb",
                                                        X"f9", X"f7", X"f4", X"f1", X"16", X"00", X"01", X"ea", X"02", X"23", X"f6", X"03", X"09", X"1e", X"f5", X"00", X"16", X"fe", X"f7", X"f7", X"17", X"16", X"f4", X"14", X"0a", X"ea",
                                                        X"12", X"00", X"11", X"ea", X"18", X"fb", X"0f", X"fa", X"06", X"06", X"e5", X"fb", X"07", X"0f", X"fb", X"2b", X"00", X"0c", X"16", X"e4", X"f6", X"fb", X"1a", X"05", X"e2", X"00",
                                                        X"03", X"f7", X"08", X"0d", X"ee", X"1a", X"0e", X"f9", X"11", X"e3", X"17", X"e5", X"0f", X"fc", X"06", X"05", X"e0", X"26", X"14", X"18", X"04", X"de", X"ff", X"01", X"ee", X"1d",
                                                        X"03", X"f8", X"13", X"f3", X"05", X"03", X"e3", X"fb", X"f6", X"0e", X"ed", X"d5", X"f7", X"03", X"08", X"22", X"09", X"f4", X"16", X"ec", X"fe", X"ea", X"e2", X"1c", X"18", X"13",
                                                        X"ee", X"f6", X"e9", X"fe", X"f9", X"ec", X"06", X"ea", X"eb", X"f4", X"f2", X"fb", X"ed", X"0b", X"fa", X"e9", X"f2", X"18", X"f6", X"fd", X"f4", X"ff", X"00", X"fa", X"e2", X"f8",
                                                        X"ed", X"fc", X"f3", X"f5", X"ff", X"f5", X"fa", X"2b", X"06", X"f2", X"f5", X"20", X"fa", X"f3", X"d7", X"f8", X"f6", X"0f", X"ea", X"03", X"1a", X"17", X"f8", X"07", X"0b", X"f6",
                                                        X"08", X"2a", X"f8", X"09", X"0f", X"ff", X"01", X"0f", X"da", X"0b", X"f5", X"01", X"07", X"d2", X"04", X"02", X"13", X"f2", X"f9", X"f8", X"11", X"f6", X"ff", X"0c", X"1b", X"ff",
                                                        X"fe", X"e1", X"f9", X"12", X"f4", X"fe", X"10", X"1f", X"1b", X"f0", X"e9", X"f6", X"fe", X"17", X"e1", X"12", X"02", X"dc", X"01", X"eb", X"01", X"04", X"00", X"fd", X"0d", X"04",
                                                        X"fc", X"04", X"01", X"0f", X"01", X"e7", X"16", X"f8", X"0f", X"30", X"fb", X"03", X"18", X"f9", X"14", X"f9", X"1a", X"f1", X"06", X"1b", X"15", X"22", X"0c", X"f4", X"17", X"f5",
                                                        X"fa", X"06", X"12", X"23", X"0b", X"ff", X"d9", X"fb", X"03", X"12", X"0c", X"f4", X"07", X"25", X"f9", X"ff", X"04", X"f1", X"02", X"25", X"11", X"f7", X"f6", X"06", X"0e", X"0a",
                                                        X"e2", X"0a", X"12", X"08", X"fb", X"ec", X"0c", X"f8", X"1b", X"10", X"e9", X"e6", X"f5", X"f2", X"01", X"15", X"2f", X"1c", X"f4", X"fa", X"00", X"1e", X"fc", X"1b", X"0f", X"e7",
                                                        X"db", X"fb", X"0e", X"00", X"1c", X"07", X"1a", X"fc", X"f2", X"16", X"0f", X"c9", X"03", X"09", X"17", X"fb", X"ef", X"0a", X"e9", X"04", X"13", X"0f", X"0f", X"f2", X"ea", X"15",
                                                        X"fb", X"06", X"e9", X"01", X"0c", X"1f", X"06", X"fa", X"d0", X"09", X"0f", X"e8", X"19", X"f5", X"08", X"13", X"04", X"de", X"05", X"0d", X"ed", X"17", X"1e", X"09", X"e9", X"fe",
                                                        X"0d", X"0f", X"36", X"15", X"0d", X"ee", X"fb", X"10", X"0a", X"ef", X"f1", X"19", X"0a", X"f0", X"04", X"fd", X"16", X"fb", X"24", X"1b", X"f4", X"1f", X"00", X"29", X"08", X"11",
                                                        X"1d", X"09", X"03", X"02", X"c3", X"10", X"23", X"10", X"ea", X"1b", X"fb", X"1a", X"04", X"09", X"ff", X"07", X"0a", X"2d", X"03", X"ff");
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

