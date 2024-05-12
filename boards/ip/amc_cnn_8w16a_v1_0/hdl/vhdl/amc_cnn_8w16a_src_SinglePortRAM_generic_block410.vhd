-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block410.vhd
-- Created: 2023-08-07 19:04:47
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block410
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage57/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block410 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block410;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block410 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"05", X"02", X"e4", X"ef", X"15", X"11", X"07", X"27", X"f9", X"08", X"04", X"10", X"f2", X"e0",
                                                        X"04", X"fa", X"1a", X"00", X"0e", X"1f", X"15", X"e3", X"f6", X"25", X"f9", X"07", X"f3", X"1e", X"05", X"22", X"26", X"f0", X"c7", X"08", X"06", X"27", X"cc", X"1a", X"0b", X"dd",
                                                        X"fd", X"be", X"0c", X"fe", X"01", X"06", X"1b", X"ee", X"2b", X"f3", X"fe", X"e6", X"f3", X"10", X"ec", X"cf", X"09", X"25", X"cf", X"02", X"17", X"38", X"19", X"fd", X"41", X"06",
                                                        X"f6", X"e6", X"c4", X"04", X"fa", X"06", X"00", X"d9", X"08", X"f8", X"f9", X"20", X"08", X"ea", X"f7", X"f5", X"ff", X"fe", X"13", X"ea", X"f7", X"04", X"1c", X"d5", X"fc", X"05",
                                                        X"fd", X"ee", X"06", X"e4", X"2e", X"14", X"00", X"dd", X"e7", X"e8", X"ea", X"01", X"1a", X"30", X"e2", X"05", X"06", X"1c", X"12", X"f0", X"09", X"06", X"0d", X"0e", X"ef", X"01",
                                                        X"fa", X"ef", X"1e", X"c8", X"0c", X"10", X"15", X"1b", X"07", X"fa", X"2e", X"0c", X"f2", X"04", X"13", X"ef", X"dc", X"33", X"0e", X"3c", X"f3", X"23", X"ec", X"05", X"d3", X"f8",
                                                        X"11", X"f3", X"10", X"17", X"fd", X"fd", X"fb", X"cb", X"1b", X"d4", X"e5", X"0e", X"0b", X"f8", X"e2", X"ec", X"1c", X"f6", X"fe", X"ff", X"0d", X"f0", X"ee", X"c8", X"1b", X"e2",
                                                        X"ef", X"ea", X"ef", X"e4", X"e4", X"0f", X"c5", X"ff", X"09", X"eb", X"fc", X"13", X"f3", X"e1", X"f3", X"f9", X"e7", X"0b", X"e6", X"38", X"25", X"fd", X"07", X"01", X"f7", X"fd",
                                                        X"24", X"ef", X"e6", X"21", X"f5", X"2a", X"0a", X"fc", X"04", X"d7", X"e1", X"f7", X"0b", X"12", X"eb", X"00", X"20", X"1e", X"ea", X"35", X"fb", X"07", X"15", X"e6", X"f4", X"0f",
                                                        X"2f", X"05", X"d9", X"05", X"fd", X"f3", X"e1", X"0b", X"f4", X"cc", X"0b", X"12", X"f3", X"0a", X"0d", X"04", X"3a", X"11", X"e8", X"09", X"fc", X"f5", X"dd", X"de", X"fc", X"d6",
                                                        X"06", X"1b", X"f2", X"fe", X"fa", X"ef", X"3b", X"00", X"06", X"16", X"18", X"ef", X"28", X"19", X"d5", X"ce", X"01", X"18", X"e0", X"f7", X"e6", X"f3", X"33", X"fe", X"d8", X"07",
                                                        X"04", X"0e", X"2d", X"24", X"13", X"04", X"08", X"fe", X"07", X"f0", X"16", X"0c", X"00", X"fd", X"f8", X"0b", X"fb", X"06", X"0b", X"23", X"de", X"d3", X"08", X"24", X"fd", X"0b",
                                                        X"09", X"f4", X"0d", X"fe", X"11", X"f9", X"ff", X"0e", X"d9", X"17", X"1e", X"e2", X"0c", X"0a", X"0a", X"03", X"0d", X"ee", X"ee", X"f8", X"e7", X"01", X"09", X"10", X"ff", X"09",
                                                        X"df", X"06", X"09", X"18", X"e9", X"05", X"e8", X"fb", X"2f", X"e9", X"cd", X"00", X"08", X"fa", X"f7", X"de", X"0a", X"da", X"04", X"42", X"08", X"00", X"03", X"00", X"ee", X"e8",
                                                        X"18", X"f7", X"fd", X"f1", X"1c", X"0e", X"fd", X"1e", X"21", X"fb", X"00", X"1c", X"0a", X"09", X"11", X"e4", X"12", X"01", X"08", X"10", X"f7", X"d0", X"03", X"f2", X"11", X"08",
                                                        X"f2", X"01", X"f1", X"01", X"e7", X"ff", X"0d", X"01", X"01", X"01", X"ef", X"f4", X"01", X"02", X"29", X"20", X"f6", X"0a", X"0c", X"f4", X"db", X"f9", X"d2", X"0d", X"13", X"f6",
                                                        X"27", X"f3", X"07", X"1d", X"18", X"09", X"d9", X"07", X"10", X"07", X"d6", X"02", X"ec", X"0c", X"1a", X"f6", X"e6", X"37", X"fc", X"10", X"0a", X"c7", X"0b", X"07", X"f9", X"10",
                                                        X"07", X"ff", X"1f", X"04", X"04", X"08", X"29", X"e7", X"eb", X"fa", X"13", X"1b", X"f5", X"07", X"f1", X"ff", X"f0", X"08", X"06", X"02", X"f8", X"e2", X"0d", X"06", X"f1", X"eb",
                                                        X"09", X"01", X"f2", X"fc", X"06", X"33", X"fa", X"ea", X"26", X"f9", X"f9", X"f3", X"e7", X"fb", X"e5", X"16", X"fc", X"38", X"f2", X"ea", X"db", X"e2", X"fb", X"0b", X"bc", X"f9",
                                                        X"e7", X"ef", X"f8", X"37", X"fe", X"d5", X"f7", X"21", X"08", X"f8", X"f4", X"ee", X"1b", X"02", X"dd", X"0c", X"03", X"e3", X"29", X"02", X"f1", X"ef", X"0e", X"d7", X"d5", X"fa",
                                                        X"04", X"04", X"1d", X"00", X"00", X"0c", X"02", X"e0", X"cd", X"3b", X"ff", X"1b", X"fd", X"25", X"15", X"18", X"ff", X"1a", X"f4", X"18", X"c1", X"ff", X"1b", X"f6", X"30", X"2a",
                                                        X"18", X"07", X"09", X"3b", X"19", X"19", X"eb", X"19", X"1e", X"f6", X"c3", X"01", X"06", X"0c", X"d6", X"24", X"c6", X"dc", X"10", X"1e", X"ef", X"f7", X"ff", X"00", X"fc", X"fb",
                                                        X"dd", X"10", X"14", X"f5", X"c7", X"30", X"d1", X"c8", X"0f", X"3b", X"00", X"fc", X"ee", X"ff", X"ea", X"fc", X"d7", X"fa", X"ef", X"fb", X"16", X"12", X"14", X"15", X"fd", X"0a",
                                                        X"f6", X"04", X"06", X"ef", X"16", X"eb", X"fb", X"ed", X"05", X"02", X"06", X"ef", X"ec", X"15", X"0d", X"18", X"14", X"e1", X"d4", X"15", X"df", X"f7", X"0d", X"f6", X"09", X"fa",
                                                        X"02", X"0b", X"e4", X"f0", X"08", X"19", X"e8", X"ea", X"dd", X"f9", X"f5", X"e8", X"e2", X"14", X"0d", X"ec", X"e3", X"03", X"f6", X"af", X"06", X"27", X"f0", X"ea", X"f3", X"f1",
                                                        X"e9", X"f4", X"31", X"0c", X"11", X"0d", X"ea", X"2a", X"02", X"e4", X"0f", X"f5", X"09", X"f8", X"ef", X"21", X"e1", X"ea", X"ed", X"0a", X"0e", X"fd", X"18", X"fb", X"e1", X"ed",
                                                        X"f9", X"19", X"0d", X"fa", X"da", X"d9", X"c9", X"f2", X"3d", X"fd", X"00", X"0f", X"09", X"00", X"21", X"f9", X"21", X"3d", X"f5", X"02", X"ea", X"e4", X"ee", X"f4", X"0c", X"ff",
                                                        X"07", X"29", X"08", X"fd", X"0d", X"f9", X"12", X"ef", X"f5", X"f0", X"e2", X"ea", X"eb", X"f0", X"df", X"f5", X"f1", X"03", X"0b", X"2a", X"df", X"1a", X"14", X"e6", X"f8", X"ef",
                                                        X"06", X"15", X"db", X"0e", X"d9", X"f4", X"f6", X"17", X"e2", X"28", X"28", X"21", X"e4", X"fd", X"04", X"f2", X"fc", X"ea", X"26", X"05", X"35", X"04", X"04", X"f6", X"e6", X"0d",
                                                        X"f0", X"d6", X"f1", X"1d", X"e5", X"fa", X"04", X"eb", X"15", X"0e", X"e3", X"05", X"fe", X"fc", X"fe", X"21", X"fa", X"1c", X"05", X"cb", X"02", X"0a", X"0d", X"0e", X"0f", X"f9",
                                                        X"19", X"02", X"fd", X"f1", X"eb", X"0f", X"0a", X"18", X"f3", X"fb", X"f6", X"f1", X"0d", X"01", X"fe", X"04", X"fa", X"07", X"18", X"ea", X"f3", X"43", X"fd", X"0c", X"f5", X"e0",
                                                        X"09", X"ed", X"1f", X"f5", X"f7", X"07", X"13", X"f6", X"fe", X"ea", X"22", X"f5", X"17", X"2d", X"f5", X"20", X"df", X"eb", X"e6", X"e8", X"e1", X"f9", X"f2", X"05", X"10", X"0a",
                                                        X"12", X"ef", X"2b", X"00", X"f7", X"dd", X"ee", X"fe", X"f0", X"13", X"10", X"ff", X"05", X"08", X"08", X"f9", X"18", X"f2", X"f4", X"e5", X"ec", X"dc", X"ea", X"07", X"eb", X"f7",
                                                        X"fd", X"03", X"23", X"0e", X"02", X"f6", X"dd", X"cf", X"11", X"32", X"0c", X"43", X"16", X"fa", X"fa", X"f0", X"fb", X"f6", X"ed", X"f6", X"fb", X"10", X"da", X"18", X"ed", X"ed",
                                                        X"ec", X"35", X"ed", X"05", X"0b", X"27", X"d7", X"f2", X"df", X"e9", X"0d", X"fc", X"0a", X"20", X"14", X"2a", X"21", X"2b", X"dc", X"dd", X"e7", X"f5", X"07", X"08", X"3c", X"eb",
                                                        X"05", X"0d", X"05", X"da", X"11", X"c3", X"1d", X"c5", X"fc", X"f0", X"10", X"da", X"de", X"df", X"20", X"fe", X"05", X"fd", X"ee", X"05", X"f5", X"d2", X"01", X"e6", X"fd", X"fa",
                                                        X"f9", X"d9", X"fc", X"f4", X"29", X"0e", X"13", X"1d", X"12", X"ed", X"0e", X"05", X"0b", X"0f", X"f3", X"f4", X"fd", X"0f", X"f6", X"f0", X"f5", X"07", X"0a", X"18", X"10", X"1f",
                                                        X"fa", X"19", X"f2", X"f9", X"00", X"ea", X"e8", X"ed", X"0d", X"f4", X"03", X"fa", X"0c", X"fb", X"06", X"e6", X"f0", X"32", X"fd", X"fc", X"04", X"e0", X"fd", X"04", X"e9", X"09",
                                                        X"d7", X"f0", X"10", X"28", X"e6", X"1d", X"d6", X"04", X"f8", X"19", X"fb", X"f8", X"e4", X"10", X"1c", X"09", X"34", X"0e", X"f9", X"03", X"fc", X"26", X"00", X"db", X"03", X"c8",
                                                        X"f9", X"e6", X"f7", X"04", X"34", X"06", X"09", X"09", X"f3", X"f5", X"23", X"25", X"eb", X"29", X"f6", X"d8", X"18", X"f4", X"eb", X"f0", X"0d", X"fa", X"0a", X"05", X"fb", X"f8",
                                                        X"0d", X"d8", X"10", X"2e", X"fd", X"f3", X"f5", X"01", X"00", X"21", X"41", X"fe", X"db", X"02", X"02", X"05", X"00", X"23", X"bc", X"e6", X"fb", X"0e", X"ed", X"d8", X"12", X"fe",
                                                        X"3c", X"0e", X"08", X"0c", X"fd", X"11", X"f0", X"e4", X"f2", X"d2", X"f7", X"1a", X"ed", X"fa", X"f4", X"ef", X"22", X"f1", X"12", X"0b", X"0a", X"12", X"09", X"15", X"eb", X"1b",
                                                        X"e1", X"06", X"ee", X"f7", X"da", X"ef", X"0a", X"ec", X"cb", X"f4", X"f6", X"ec", X"e8", X"f3", X"12", X"29", X"09", X"2a", X"00", X"0c", X"f1", X"fe", X"26", X"f8", X"1a", X"ed",
                                                        X"05", X"fd", X"12", X"d9", X"e4", X"0a", X"15", X"0f", X"f3", X"0e", X"f8", X"d3", X"12", X"ea", X"ff", X"fc", X"0b", X"fd", X"0b", X"f3", X"e5", X"29", X"f7", X"e6", X"03", X"12",
                                                        X"e5", X"13", X"35", X"fb", X"49", X"f4", X"00", X"1b", X"eb", X"0a", X"fc", X"fd", X"25", X"cc", X"ea", X"1a", X"ed", X"1e", X"02", X"0f", X"ff", X"ff", X"fc", X"f9", X"fd", X"db",
                                                        X"06", X"f3", X"19", X"f0", X"ea", X"1c", X"ee", X"05", X"1d", X"fd", X"0f", X"07", X"0d", X"e7", X"fa", X"d6", X"ed", X"2b", X"07", X"ed", X"03", X"09", X"f9", X"f6", X"f0", X"f0",
                                                        X"d9", X"f9", X"07", X"f5", X"fa", X"e3", X"08", X"e1", X"0c", X"11", X"f2", X"e8", X"1d", X"fe", X"0d", X"0b", X"28", X"f9", X"04", X"f7", X"f8", X"e2", X"de", X"0f", X"fc", X"30",
                                                        X"e3", X"f6", X"fa", X"eb", X"03", X"f3", X"d9", X"fd", X"02", X"03", X"0f", X"d9", X"e0", X"ee", X"fd", X"dd", X"fa", X"e5", X"10", X"f7", X"0c", X"f7", X"e1", X"00", X"06", X"0f",
                                                        X"14", X"f9", X"f1", X"07", X"13", X"fc", X"ef", X"14", X"00", X"16", X"e8", X"ea", X"d8", X"ff", X"f9", X"f8", X"10", X"ec", X"d8", X"f9", X"05", X"2c", X"21", X"ea", X"1d", X"23",
                                                        X"1a", X"09", X"43", X"f7", X"08", X"fa", X"e7", X"f2", X"ed", X"05", X"fd", X"1b", X"14", X"01", X"0a", X"ea", X"1e", X"f1", X"f8", X"f6", X"f5", X"dc", X"1e", X"14", X"ee", X"f7",
                                                        X"fb", X"fb", X"e6", X"01", X"20", X"e5", X"19", X"13", X"c6", X"04", X"0c", X"e9", X"11", X"e7", X"06", X"e6", X"0c", X"de", X"15", X"15", X"e2", X"0f", X"1c", X"04", X"2d", X"14",
                                                        X"f8", X"14", X"14", X"16", X"db", X"ee", X"ea", X"28", X"fe", X"09", X"16", X"05", X"46", X"f5", X"2b", X"07", X"fb", X"09", X"f2", X"d0", X"ed", X"43", X"f1", X"c4", X"fd", X"0a",
                                                        X"eb", X"cf", X"06", X"08", X"21", X"03", X"fd", X"0e", X"2a", X"0b", X"fb", X"09", X"f2", X"f5", X"17", X"06", X"10", X"1e", X"0a", X"09", X"10", X"f8", X"fb", X"fe", X"ec", X"d6",
                                                        X"f8", X"25", X"0e", X"e2", X"da", X"05", X"19", X"df", X"0a", X"e9", X"0a", X"f0", X"fa", X"1d", X"dd", X"d2", X"ea", X"1d", X"04", X"f2", X"f4", X"ff", X"16", X"f2", X"17", X"e9",
                                                        X"de", X"f6", X"01", X"17", X"e2", X"eb", X"fb", X"c9", X"03", X"f9", X"e2", X"24", X"16", X"e8", X"fe", X"f1", X"0f", X"ef", X"f8", X"fe", X"fb", X"e0", X"db", X"18", X"19", X"ef",
                                                        X"13", X"04", X"f2", X"f0", X"09", X"e1", X"3e", X"04", X"00", X"11", X"08", X"c1", X"f1", X"ef", X"13", X"ee", X"f9", X"00", X"17", X"fb", X"12", X"ed", X"28", X"f8", X"06", X"03",
                                                        X"e4", X"ec", X"f8", X"d2", X"04", X"30", X"e2", X"06", X"ff", X"f0", X"03", X"e4", X"d4", X"f1", X"fa", X"17", X"e6", X"dd", X"d9", X"2b", X"12", X"fe", X"0a", X"0a", X"1a", X"e6",
                                                        X"d3", X"f7", X"1c", X"fa", X"fd", X"24", X"20", X"ef", X"f8", X"2a", X"27", X"d0", X"06", X"11", X"df", X"23", X"f3", X"fb", X"d2", X"0a", X"f7", X"1d", X"0b", X"e2", X"d6", X"ca",
                                                        X"16", X"f9", X"fe", X"e3", X"29", X"d9", X"f7", X"0b", X"05", X"0a", X"0f", X"07", X"f1", X"01", X"f6", X"24", X"11", X"35", X"07", X"03", X"28", X"e7", X"0b", X"fd", X"1f", X"f1",
                                                        X"fb", X"eb", X"e1", X"f1", X"0a", X"fd", X"0f", X"ca", X"eb", X"f3", X"06", X"15", X"1f", X"03", X"c2", X"03", X"10", X"f0", X"f5", X"14", X"ed", X"0d", X"fc", X"15", X"16", X"00",
                                                        X"0a", X"06", X"2d", X"06", X"c7", X"03", X"e7", X"05", X"f1", X"03", X"cd", X"45", X"03", X"d9", X"ff", X"04", X"0f", X"06", X"05", X"f3", X"01", X"07", X"fb", X"ee", X"f8", X"e5",
                                                        X"ea", X"0f", X"09", X"ee", X"f7", X"13", X"f3", X"e7", X"36", X"0e", X"26", X"0c", X"00", X"f7", X"fd", X"0a", X"03", X"33", X"0c", X"cc", X"ec", X"ed", X"ef", X"fc", X"36", X"fb",
                                                        X"c4", X"02", X"f7", X"1f", X"dc", X"05", X"dd", X"0d", X"01", X"2d", X"f9", X"fb", X"14", X"eb", X"0e", X"0c", X"2f", X"0c", X"08", X"fc", X"2d", X"ec", X"e7", X"0e", X"f6", X"28",
                                                        X"f2", X"08", X"04", X"ed", X"e5", X"12", X"f9", X"14", X"f5", X"f3", X"f0", X"f3", X"08", X"f3", X"06", X"db", X"f8", X"1c", X"18", X"26", X"13", X"ff", X"da", X"f7", X"0d", X"e7",
                                                        X"ca", X"ed", X"f8", X"26", X"25", X"0f", X"02", X"10", X"ff", X"e3", X"dc", X"de", X"2c", X"f9", X"fb", X"fb", X"ef", X"db", X"dd", X"0a", X"1e", X"13", X"06", X"14", X"00", X"1b",
                                                        X"fe", X"ed", X"03", X"0a", X"fa", X"e7", X"0f", X"dc", X"fa", X"23", X"1e", X"fc", X"09", X"04", X"1f", X"f4", X"d5", X"ef", X"17", X"01", X"1a", X"01", X"fa", X"d8", X"f1", X"f4",
                                                        X"11", X"16", X"01", X"00", X"fc", X"fb", X"ff", X"f7", X"10", X"ed", X"12", X"f0", X"19", X"d8", X"dc", X"fb", X"1f", X"e9", X"00", X"08", X"0a", X"31", X"ec", X"e4", X"f9", X"04",
                                                        X"0c", X"1a", X"06", X"e1", X"fc", X"0a", X"0c", X"e1", X"e5", X"fe", X"f0", X"ff", X"cf", X"e0", X"12", X"06", X"13", X"10", X"14", X"0a", X"07", X"f9", X"10", X"05", X"f4", X"fb",
                                                        X"1a", X"ff", X"17", X"04", X"06", X"f2", X"f0", X"f2", X"ed", X"ec", X"11", X"dd", X"f6", X"1d", X"f8", X"1a", X"0c", X"0a", X"24", X"f2", X"0c", X"f5", X"e5", X"e6", X"f4", X"04",
                                                        X"00", X"02", X"1b", X"ec", X"d1", X"0e", X"ea", X"e3", X"09", X"fa", X"d6", X"ee", X"fb", X"f1", X"de", X"ea", X"ed", X"fb", X"09", X"26", X"04", X"02", X"f3", X"e6", X"05", X"06",
                                                        X"1b", X"10", X"fe", X"09", X"2b", X"03", X"14", X"25", X"f3", X"ff", X"09", X"f7", X"ec", X"f7", X"20", X"fc", X"08", X"03", X"05", X"f1", X"2f", X"15", X"e8", X"33", X"f7", X"c3",
                                                        X"dc", X"05", X"ef", X"06", X"25", X"14", X"e0", X"0a", X"0b", X"0e", X"f6", X"ec", X"12", X"1c", X"ff", X"db", X"f1", X"ff", X"0d", X"fe", X"ed", X"fc", X"d4", X"05", X"0a", X"04",
                                                        X"e7", X"2b", X"18", X"e3", X"19", X"36", X"f3", X"fd", X"10", X"e4", X"25", X"00", X"07", X"f6", X"0d", X"06", X"1a", X"dc", X"ed", X"ef", X"10", X"f6", X"d3", X"05", X"fd", X"fa",
                                                        X"09", X"fa", X"f0", X"05", X"fe", X"e9", X"f7", X"fd", X"06", X"db", X"f6", X"24", X"14", X"0b", X"11", X"27", X"12", X"f0", X"e4", X"fe", X"03", X"04", X"f6", X"04", X"de", X"07",
                                                        X"1e", X"da", X"00", X"15", X"03", X"09", X"e5", X"fa", X"e8", X"fc", X"fc", X"eb", X"0a", X"12", X"fa", X"0e", X"22", X"f9", X"0d", X"f4", X"db", X"19", X"e1", X"f4", X"31", X"04",
                                                        X"08", X"d4", X"fa", X"08", X"f9", X"d5", X"17", X"0b", X"e0", X"fa", X"f4", X"11", X"ff", X"06", X"45", X"02", X"0e", X"e5", X"ec", X"ed", X"ee", X"ff", X"11", X"d8", X"08", X"09",
                                                        X"db", X"f8", X"ed", X"eb", X"50", X"fc", X"13", X"e7", X"0f", X"dd", X"fe", X"fb", X"05", X"d1", X"d5", X"f1", X"f5", X"38", X"fb", X"f6");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f6";
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

