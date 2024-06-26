-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block443.vhd
-- Created: 2023-06-15 16:03:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block443
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage87/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block443 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block443;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block443 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"f6", X"f6", X"05", X"ff", X"03", X"f6", X"01", X"13", X"01", X"0f", X"fb", X"0c", X"02", X"05",
                                                        X"fd", X"02", X"f5", X"ea", X"1e", X"09", X"e9", X"f6", X"0d", X"ff", X"f9", X"da", X"00", X"14", X"02", X"fe", X"0a", X"04", X"03", X"05", X"11", X"f2", X"0a", X"fa", X"09", X"05",
                                                        X"14", X"28", X"18", X"0a", X"ed", X"fa", X"09", X"07", X"f8", X"00", X"f0", X"ee", X"f2", X"fb", X"e7", X"0b", X"f8", X"15", X"fc", X"fb", X"e9", X"04", X"f1", X"08", X"ff", X"f7",
                                                        X"f7", X"05", X"fa", X"05", X"11", X"05", X"fb", X"fb", X"f3", X"fa", X"0b", X"02", X"13", X"09", X"fa", X"f9", X"e2", X"f2", X"1d", X"09", X"f9", X"fe", X"fe", X"29", X"f9", X"08",
                                                        X"fd", X"fc", X"e4", X"fd", X"0a", X"04", X"0a", X"f3", X"dc", X"11", X"fb", X"09", X"11", X"e3", X"ff", X"04", X"02", X"fb", X"fd", X"07", X"f7", X"03", X"13", X"fd", X"02", X"0a",
                                                        X"fe", X"0a", X"ee", X"ef", X"03", X"f3", X"00", X"fe", X"f2", X"f7", X"f6", X"f9", X"19", X"ee", X"fb", X"02", X"e4", X"ff", X"07", X"30", X"0d", X"ff", X"f0", X"f9", X"ee", X"06",
                                                        X"00", X"04", X"fa", X"0a", X"1c", X"0e", X"08", X"10", X"03", X"f6", X"11", X"f9", X"25", X"10", X"fe", X"f2", X"f9", X"0c", X"0a", X"fc", X"ff", X"fb", X"0a", X"01", X"fb", X"f6",
                                                        X"01", X"f9", X"fc", X"06", X"ec", X"09", X"06", X"f7", X"04", X"0c", X"1c", X"ff", X"fd", X"07", X"06", X"05", X"ee", X"02", X"f7", X"01", X"05", X"0f", X"fb", X"ea", X"f9", X"09",
                                                        X"01", X"06", X"00", X"13", X"0c", X"00", X"0a", X"0a", X"1e", X"08", X"f2", X"13", X"ec", X"06", X"14", X"0f", X"07", X"fa", X"13", X"07", X"f3", X"f0", X"f5", X"04", X"0b", X"ff",
                                                        X"ef", X"fc", X"07", X"10", X"e1", X"0d", X"ee", X"03", X"02", X"fd", X"fd", X"2d", X"f5", X"e8", X"ee", X"ff", X"fb", X"12", X"00", X"f9", X"11", X"fa", X"e6", X"f4", X"f4", X"18",
                                                        X"fa", X"0e", X"05", X"fb", X"11", X"fc", X"f0", X"0b", X"05", X"fa", X"0a", X"f0", X"eb", X"fb", X"f5", X"fc", X"f3", X"02", X"f9", X"ff", X"f1", X"f8", X"e3", X"ff", X"01", X"f9",
                                                        X"f7", X"fd", X"f2", X"05", X"eb", X"00", X"06", X"06", X"05", X"ff", X"f7", X"f4", X"f7", X"fb", X"05", X"f0", X"08", X"f1", X"eb", X"04", X"fb", X"fb", X"f3", X"1d", X"06", X"06",
                                                        X"fc", X"03", X"f9", X"06", X"07", X"02", X"f0", X"e7", X"fe", X"ec", X"f9", X"ee", X"f8", X"22", X"f5", X"ef", X"07", X"05", X"02", X"ff", X"0b", X"10", X"f3", X"02", X"f6", X"f7",
                                                        X"0f", X"fb", X"07", X"08", X"0b", X"03", X"fd", X"f7", X"0b", X"fa", X"f2", X"03", X"fd", X"08", X"11", X"f2", X"02", X"0b", X"0c", X"01", X"04", X"f6", X"e8", X"f7", X"fb", X"ff",
                                                        X"0c", X"04", X"10", X"03", X"0f", X"12", X"fe", X"fc", X"0e", X"da", X"0e", X"0e", X"14", X"f6", X"fe", X"01", X"f6", X"ff", X"04", X"f9", X"02", X"f6", X"f4", X"12", X"05", X"ea",
                                                        X"08", X"01", X"01", X"02", X"04", X"f7", X"f9", X"10", X"f4", X"ed", X"0b", X"ff", X"ef", X"0b", X"ff", X"2b", X"f7", X"ff", X"0b", X"ef", X"f9", X"f1", X"ea", X"01", X"e1", X"ec",
                                                        X"f0", X"e8", X"08", X"01", X"e7", X"07", X"e9", X"f3", X"00", X"f2", X"07", X"06", X"0a", X"11", X"09", X"07", X"f8", X"f7", X"f6", X"e9", X"f3", X"2d", X"fe", X"f6", X"ef", X"09",
                                                        X"ff", X"f5", X"e4", X"02", X"fc", X"14", X"09", X"ee", X"06", X"0b", X"01", X"ca", X"05", X"02", X"14", X"07", X"09", X"0a", X"f8", X"fc", X"16", X"05", X"09", X"fa", X"0d", X"fd",
                                                        X"f7", X"e3", X"f9", X"06", X"04", X"0b", X"f7", X"f9", X"fd", X"f7", X"19", X"01", X"ea", X"08", X"05", X"09", X"03", X"23", X"f7", X"fc", X"e6", X"13", X"f8", X"07", X"fb", X"11",
                                                        X"fd", X"fa", X"f5", X"f6", X"f6", X"00", X"f3", X"da", X"f3", X"f1", X"11", X"09", X"fc", X"0b", X"0f", X"ff", X"0b", X"fd", X"ed", X"fd", X"09", X"00", X"ff", X"f7", X"07", X"f2",
                                                        X"0c", X"0d", X"03", X"f8", X"fa", X"09", X"eb", X"f5", X"02", X"09", X"f5", X"08", X"00", X"cd", X"fe", X"eb", X"ec", X"0e", X"f8", X"fc", X"06", X"fd", X"0a", X"11", X"0c", X"04",
                                                        X"fe", X"08", X"06", X"07", X"f5", X"f6", X"15", X"02", X"f9", X"07", X"02", X"fa", X"0d", X"12", X"ed", X"0f", X"f1", X"f4", X"ff", X"13", X"fd", X"fc", X"06", X"06", X"f5", X"fa",
                                                        X"11", X"e8", X"11", X"06", X"15", X"04", X"ff", X"f2", X"02", X"29", X"f6", X"f0", X"03", X"07", X"01", X"0e", X"f1", X"1d", X"09", X"fc", X"f6", X"00", X"fa", X"07", X"05", X"d6",
                                                        X"04", X"f7", X"f8", X"f9", X"f2", X"0c", X"fd", X"fe", X"fc", X"f6", X"1c", X"ea", X"f7", X"03", X"05", X"ed", X"f8", X"ec", X"12", X"03", X"fd", X"12", X"04", X"f6", X"02", X"ea",
                                                        X"f2", X"10", X"01", X"f7", X"04", X"0e", X"15", X"f9", X"f9", X"04", X"f2", X"01", X"fa", X"11", X"09", X"02", X"02", X"0e", X"0c", X"fd", X"fd", X"f0", X"06", X"f5", X"03", X"f4",
                                                        X"f9", X"fa", X"f0", X"11", X"fe", X"f0", X"07", X"f5", X"00", X"04", X"05", X"21", X"fb", X"07", X"fb", X"fc", X"f6", X"fe", X"08", X"06", X"07", X"f7", X"02", X"02", X"00", X"ff",
                                                        X"02", X"22", X"04", X"f3", X"f3", X"fe", X"f8", X"16", X"11", X"dd", X"fb", X"0b", X"ff", X"04", X"f8", X"f5", X"00", X"05", X"f5", X"0a", X"21", X"ff", X"f0", X"0f", X"0a", X"02",
                                                        X"02", X"f5", X"19", X"0d", X"01", X"0f", X"10", X"fa", X"fd", X"fa", X"05", X"f2", X"00", X"1a", X"09", X"09", X"fe", X"fe", X"f7", X"eb", X"09", X"04", X"04", X"e7", X"f6", X"02",
                                                        X"fd", X"ea", X"fd", X"0d", X"fe", X"18", X"da", X"fe", X"e8", X"f1", X"f2", X"08", X"11", X"0d", X"f1", X"0b", X"0f", X"f8", X"f4", X"03", X"00", X"13", X"fe", X"ed", X"0e", X"f8",
                                                        X"eb", X"0e", X"16", X"d8", X"f0", X"f5", X"ee", X"ff", X"ec", X"e7", X"f0", X"ff", X"00", X"ea", X"f1", X"0b", X"f6", X"05", X"f9", X"e2", X"1a", X"f5", X"10", X"f8", X"09", X"04",
                                                        X"03", X"07", X"16", X"fa", X"06", X"01", X"fa", X"ff", X"00", X"09", X"06", X"fb", X"ec", X"f1", X"ff", X"f4", X"07", X"08", X"0f", X"f1", X"ef", X"f5", X"02", X"0d", X"f3", X"d6",
                                                        X"06", X"f6", X"ed", X"00", X"e6", X"03", X"0e", X"fe", X"f0", X"f0", X"e8", X"fe", X"ff", X"00", X"fa", X"1b", X"0c", X"08", X"fb", X"03", X"fc", X"e8", X"1c", X"10", X"ea", X"ff",
                                                        X"13", X"fb", X"fb", X"12", X"ff", X"cb", X"f3", X"08", X"0b", X"0a", X"05", X"f6", X"05", X"04", X"1f", X"fd", X"ec", X"00", X"08", X"fe", X"f8", X"d3", X"f2", X"0a", X"1f", X"0c",
                                                        X"ef", X"f9", X"0b", X"04", X"10", X"06", X"fa", X"14", X"ff", X"06", X"0a", X"22", X"f4", X"fe", X"f8", X"15", X"0c", X"f3", X"e9", X"0a", X"01", X"f3", X"f7", X"04", X"08", X"02",
                                                        X"f6", X"d3", X"ff", X"ea", X"1b", X"0c", X"0e", X"f2", X"e7", X"0e", X"04", X"05", X"03", X"fb", X"f2", X"0a", X"fd", X"e9", X"fe", X"04", X"f1", X"04", X"ef", X"fe", X"f8", X"0d",
                                                        X"03", X"f8", X"f6", X"f1", X"f7", X"ec", X"ef", X"f2", X"e9", X"f9", X"03", X"fd", X"01", X"02", X"f6", X"f2", X"18", X"0a", X"f2", X"f0", X"15", X"03", X"f2", X"d4", X"fb", X"f9",
                                                        X"04", X"fc", X"06", X"06", X"fe", X"00", X"ec", X"f9", X"0e", X"eb", X"e1", X"15", X"f7", X"2c", X"02", X"00", X"1c", X"0f", X"db", X"00", X"04", X"ef", X"17", X"ef", X"01", X"fa",
                                                        X"fd", X"1e", X"f8", X"d3", X"07", X"fe", X"f1", X"14", X"f2", X"ee", X"04", X"05", X"1d", X"07", X"ef", X"f7", X"fd", X"00", X"f2", X"2d", X"ed", X"08", X"06", X"fd", X"0a", X"fb",
                                                        X"1a", X"1b", X"ff", X"f9", X"26", X"fd", X"05", X"09", X"04", X"ce", X"03", X"02", X"ff", X"09", X"ff", X"0b", X"fd", X"f5", X"09", X"f9", X"f0", X"1a", X"0e", X"fe", X"0d", X"0c",
                                                        X"fa", X"07", X"00", X"04", X"0e", X"10", X"0e", X"28", X"0a", X"09", X"e7", X"f9", X"ff", X"05", X"03", X"1d", X"f6", X"06", X"00", X"02", X"fc", X"07", X"fb", X"26", X"18", X"f6",
                                                        X"ff", X"f0", X"e4", X"ef", X"03", X"00", X"15", X"06", X"f5", X"f0", X"e0", X"02", X"e3", X"f7", X"12", X"ff", X"10", X"f6", X"ff", X"f6", X"00", X"ea", X"02", X"08", X"0a", X"f3",
                                                        X"12", X"06", X"f9", X"0d", X"08", X"ff", X"21", X"08", X"fe", X"ff", X"f5", X"00", X"f7", X"fb", X"fb", X"f2", X"03", X"05", X"f3", X"0e", X"1b", X"f2", X"ff", X"f8", X"05", X"09",
                                                        X"fc", X"cd", X"f6", X"0f", X"eb", X"ff", X"07", X"00", X"11", X"05", X"f8", X"01", X"df", X"05", X"f4", X"dc", X"07", X"08", X"06", X"03", X"1c", X"fb", X"f4", X"04", X"fe", X"24",
                                                        X"0c", X"0b", X"1b", X"03", X"f2", X"fb", X"01", X"23", X"16", X"fd", X"1d", X"f7", X"e7", X"f7", X"10", X"03", X"10", X"0b", X"f9", X"fe", X"07", X"02", X"05", X"cf", X"08", X"10",
                                                        X"f5", X"06", X"ee", X"fe", X"11", X"04", X"02", X"f4", X"1c", X"0d", X"f0", X"0b", X"11", X"39", X"04", X"fc", X"fe", X"02", X"00", X"ff", X"fd", X"05", X"24", X"f3", X"13", X"f8",
                                                        X"03", X"fd", X"f8", X"d3", X"fb", X"fd", X"01", X"fc", X"ea", X"0a", X"f1", X"fe", X"07", X"f7", X"0d", X"0c", X"07", X"05", X"12", X"eb", X"1d", X"fe", X"ef", X"02", X"00", X"12",
                                                        X"03", X"00", X"fe", X"10", X"fe", X"0f", X"0a", X"fb", X"05", X"22", X"13", X"04", X"fc", X"fe", X"fc", X"f9", X"f4", X"f8", X"e7", X"11", X"0d", X"fd", X"14", X"06", X"01", X"36",
                                                        X"0a", X"06", X"ed", X"08", X"fd", X"fb", X"e5", X"fd", X"ff", X"04", X"e8", X"fb", X"09", X"00", X"10", X"d2", X"02", X"ed", X"fc", X"03", X"f8", X"0b", X"08", X"ff", X"f6", X"ff",
                                                        X"d8", X"13", X"08", X"f3", X"06", X"d6", X"f9", X"f9", X"e5", X"02", X"0b", X"07", X"f6", X"06", X"fe", X"e9", X"0d", X"02", X"fc", X"07", X"fd", X"d6", X"10", X"f6", X"0a", X"00",
                                                        X"02", X"fa", X"e6", X"fa", X"13", X"fd", X"f1", X"fd", X"f2", X"fe", X"fb", X"25", X"05", X"fa", X"16", X"f4", X"ee", X"03", X"fc", X"19", X"fe", X"fd", X"f9", X"00", X"f5", X"f6",
                                                        X"f3", X"1f", X"f9", X"10", X"11", X"0c", X"00", X"f1", X"0b", X"f6", X"0e", X"00", X"f3", X"01", X"0d", X"0d", X"fe", X"cc", X"f6", X"f4", X"0b", X"03", X"f0", X"f8", X"02", X"03",
                                                        X"05", X"07", X"f8", X"01", X"10", X"00", X"fb", X"05", X"fd", X"f4", X"ff", X"0a", X"11", X"fc", X"ef", X"10", X"e7", X"f6", X"e7", X"0d", X"0a", X"00", X"f9", X"f3", X"fb", X"ee",
                                                        X"12", X"ff", X"06", X"fb", X"05", X"f9", X"ea", X"05", X"ed", X"01", X"f3", X"00", X"02", X"29", X"f7", X"fa", X"0d", X"fc", X"f8", X"fa", X"f3", X"01", X"f5", X"f6", X"ed", X"07",
                                                        X"f8", X"0c", X"ee", X"2a", X"f3", X"fe", X"10", X"15", X"f9", X"fd", X"04", X"f5", X"f3", X"fd", X"09", X"0e", X"00", X"00", X"07", X"21", X"f6", X"05", X"f1", X"fe", X"0a", X"f7",
                                                        X"f1", X"16", X"f8", X"f3", X"01", X"e1", X"f0", X"f8", X"ea", X"ff", X"e3", X"06", X"e7", X"f1", X"ff", X"0c", X"ea", X"16", X"11", X"fc", X"00", X"e7", X"0a", X"07", X"f5", X"cf",
                                                        X"09", X"04", X"da", X"01", X"eb", X"12", X"fa", X"f8", X"fa", X"ed", X"e7", X"fb", X"f7", X"01", X"f9", X"16", X"01", X"f5", X"11", X"11", X"f4", X"0e", X"05", X"f7", X"11", X"01",
                                                        X"f2", X"0a", X"f7", X"0e", X"fb", X"1f", X"03", X"f8", X"0d", X"02", X"01", X"09", X"ff", X"fb", X"f6", X"f5", X"0a", X"f0", X"fe", X"f9", X"02", X"d4", X"0f", X"f6", X"0a", X"fb",
                                                        X"f3", X"fd", X"fc", X"fd", X"01", X"0a", X"e7", X"fa", X"02", X"04", X"f5", X"27", X"0d", X"02", X"02", X"02", X"02", X"00", X"03", X"12", X"05", X"12", X"e5", X"fd", X"f5", X"0b",
                                                        X"0a", X"d6", X"fe", X"17", X"06", X"0c", X"01", X"07", X"09", X"e6", X"ff", X"ed", X"0f", X"15", X"0f", X"09", X"fd", X"2b", X"02", X"f5", X"1d", X"07", X"00", X"02", X"fc", X"f0",
                                                        X"f3", X"fb", X"de", X"f5", X"01", X"00", X"0c", X"27", X"fc", X"03", X"0c", X"f8", X"06", X"fd", X"00", X"19", X"f6", X"fb", X"e5", X"fe", X"04", X"fe", X"03", X"c2", X"01", X"05",
                                                        X"f5", X"f4", X"ec", X"05", X"fd", X"0b", X"0a", X"12", X"1a", X"0f", X"fd", X"f7", X"13", X"f8", X"04", X"02", X"10", X"f7", X"f7", X"fc", X"ee", X"03", X"05", X"01", X"ef", X"e4",
                                                        X"0f", X"0c", X"fa", X"e7", X"07", X"fa", X"08", X"f3", X"fd", X"04", X"ff", X"08", X"05", X"f2", X"16", X"fd", X"0a", X"0c", X"ff", X"32", X"f9", X"05", X"19", X"f9", X"fd", X"00",
                                                        X"fc", X"09", X"0d", X"12", X"08", X"fc", X"ff", X"f9", X"0a", X"01", X"f2", X"f5", X"11", X"f7", X"ea", X"02", X"ff", X"04", X"f1", X"1a", X"16", X"fa", X"10", X"f5", X"07", X"f8",
                                                        X"ec", X"01", X"1a", X"f2", X"02", X"fd", X"fd", X"1a", X"12", X"16", X"0d", X"fd", X"0a", X"0f", X"0c", X"db", X"01", X"06", X"f9", X"09", X"f7", X"fa", X"f8", X"f4", X"24", X"0f",
                                                        X"1a", X"04", X"00", X"fe", X"03", X"ee", X"04", X"05", X"f1", X"11", X"0f", X"01", X"03", X"e9", X"ea", X"fc", X"fc", X"18", X"f1", X"12", X"05", X"e3", X"05", X"0a", X"f9", X"ff",
                                                        X"01", X"01", X"fc", X"17", X"f8", X"08", X"f2", X"fd", X"05", X"08", X"ff", X"dc", X"03", X"fe", X"07", X"18", X"f9", X"01", X"03", X"0b", X"00", X"0b", X"03", X"f4", X"eb", X"09",
                                                        X"0a", X"e1", X"0f", X"09", X"e8", X"0f", X"ed", X"18", X"00", X"ed", X"11", X"fa", X"09", X"f6", X"f3", X"08", X"fc", X"35", X"00", X"fb", X"ea", X"01", X"fd", X"0b", X"f4", X"f5",
                                                        X"02", X"f8", X"f5", X"09", X"ea", X"06", X"fe", X"d1", X"02", X"fd", X"f8", X"06", X"f7", X"06", X"fc", X"e3", X"e3", X"04", X"e2", X"fd", X"08", X"11", X"01", X"23", X"fa", X"fc",
                                                        X"05", X"0a", X"0a", X"ff", X"e9", X"02", X"ec", X"09", X"07", X"e8", X"ff", X"f2", X"f6", X"27", X"1a", X"01", X"e1", X"f7", X"ec", X"f6", X"0a", X"05", X"f8", X"0f", X"f2", X"eb",
                                                        X"0e", X"ff", X"0d", X"36", X"1a", X"13", X"00", X"fb", X"07", X"fd", X"eb", X"ec", X"0d", X"00", X"13", X"ec", X"e6", X"19", X"03", X"f2", X"12", X"12", X"1a", X"04", X"e4", X"08",
                                                        X"0a", X"f8", X"ee", X"fd", X"ea", X"14", X"eb", X"fa", X"0b", X"11", X"fd", X"07", X"e9", X"04", X"fc", X"0a", X"f6", X"13", X"05", X"f2", X"07", X"fa", X"ed", X"f6", X"f2", X"02",
                                                        X"12", X"f1", X"11", X"f9", X"f8", X"0f", X"f2", X"05", X"02", X"f6", X"f0", X"0b", X"f8", X"07", X"02", X"ec", X"fe", X"f0", X"e4", X"f5", X"0b", X"06", X"03", X"01", X"f6", X"03",
                                                        X"09", X"06", X"fd", X"04", X"0e", X"ff", X"ff", X"0e", X"07", X"f0", X"ff", X"04", X"f2", X"f6", X"00", X"03", X"f5", X"0a", X"08", X"f6", X"03", X"e9", X"fb", X"01", X"13", X"0c",
                                                        X"01", X"01", X"0b", X"0c", X"eb", X"03", X"ff", X"08", X"fe", X"00", X"13", X"18", X"05", X"0a", X"05", X"fa", X"0c", X"0a", X"f9", X"f1", X"0b", X"02", X"09", X"ec", X"11", X"10",
                                                        X"ff", X"03", X"0b", X"01", X"f9", X"02", X"0c", X"03", X"0b", X"fd", X"ff", X"fd", X"07", X"ff", X"07", X"0d", X"0d", X"1f", X"04", X"fd", X"0d", X"f3", X"f0", X"00", X"f6", X"09",
                                                        X"13", X"e9", X"eb", X"ff", X"07", X"f7", X"f6", X"17", X"01", X"e8", X"05", X"f4", X"10", X"f6", X"ef", X"0c", X"f4", X"0c", X"f7", X"f7", X"0a", X"01", X"f6", X"ed", X"14", X"ef",
                                                        X"ed", X"fe", X"16", X"f4", X"01", X"1a", X"10", X"10", X"fc", X"fa", X"0c", X"03", X"05", X"ff", X"fb", X"08", X"04", X"f5", X"09", X"f0");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f0";
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

