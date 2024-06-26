-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block393.vhd
-- Created: 2023-06-15 16:03:05
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block393
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage41/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block393 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block393;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block393 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"e4", X"04", X"f3", X"00", X"f7", X"f0", X"29", X"06", X"ea", X"0a", X"09", X"03", X"fe", X"f6",
                                                        X"0e", X"0b", X"f6", X"f9", X"1d", X"01", X"04", X"f2", X"13", X"01", X"fc", X"dd", X"04", X"f5", X"07", X"fc", X"e8", X"e0", X"f0", X"02", X"02", X"f2", X"01", X"eb", X"eb", X"16",
                                                        X"fe", X"26", X"01", X"f9", X"f4", X"f4", X"05", X"e8", X"fd", X"02", X"0d", X"f7", X"e3", X"00", X"1e", X"ec", X"fa", X"d2", X"f8", X"f5", X"05", X"08", X"06", X"00", X"fd", X"e6",
                                                        X"f5", X"06", X"ef", X"f6", X"14", X"01", X"f9", X"e6", X"ef", X"f6", X"0b", X"04", X"f9", X"00", X"ef", X"0a", X"f0", X"fd", X"f4", X"fb", X"ff", X"01", X"fa", X"0d", X"11", X"f5",
                                                        X"11", X"09", X"15", X"04", X"f0", X"01", X"f4", X"0e", X"1c", X"f8", X"f3", X"fe", X"f8", X"f3", X"02", X"f0", X"e9", X"0c", X"0f", X"06", X"fc", X"21", X"f8", X"16", X"f0", X"00",
                                                        X"14", X"01", X"fd", X"ed", X"09", X"0c", X"07", X"05", X"0d", X"02", X"e2", X"fb", X"f8", X"0f", X"02", X"ed", X"f0", X"ed", X"f5", X"08", X"05", X"f0", X"ee", X"0f", X"fe", X"fe",
                                                        X"f4", X"15", X"11", X"ec", X"f1", X"06", X"f0", X"04", X"f3", X"f6", X"01", X"03", X"02", X"fd", X"f9", X"09", X"f5", X"06", X"fd", X"df", X"e6", X"ea", X"f6", X"fe", X"06", X"09",
                                                        X"ff", X"fd", X"08", X"f1", X"09", X"09", X"fc", X"06", X"f9", X"e9", X"03", X"f9", X"10", X"f7", X"f9", X"23", X"f1", X"f5", X"12", X"0c", X"0c", X"04", X"03", X"04", X"13", X"01",
                                                        X"0d", X"07", X"fb", X"f3", X"03", X"14", X"0b", X"f3", X"13", X"0e", X"e5", X"f6", X"00", X"fa", X"f2", X"ed", X"f3", X"ff", X"11", X"f9", X"02", X"01", X"16", X"f7", X"f0", X"ff",
                                                        X"fa", X"05", X"f6", X"04", X"12", X"fe", X"0a", X"fd", X"1a", X"04", X"fd", X"e1", X"00", X"ef", X"17", X"06", X"13", X"fa", X"f5", X"01", X"08", X"ed", X"1e", X"fd", X"fb", X"02",
                                                        X"ff", X"e1", X"fc", X"de", X"fd", X"f7", X"06", X"fa", X"eb", X"09", X"fb", X"de", X"06", X"f9", X"17", X"03", X"fa", X"f6", X"13", X"ed", X"ff", X"f7", X"0a", X"09", X"0f", X"f7",
                                                        X"1a", X"f4", X"e6", X"02", X"f9", X"f6", X"07", X"f0", X"08", X"02", X"10", X"e7", X"e2", X"ff", X"ff", X"0e", X"16", X"ed", X"0d", X"02", X"0c", X"fc", X"f3", X"08", X"ef", X"fa",
                                                        X"01", X"ff", X"01", X"02", X"fa", X"0b", X"06", X"e4", X"0f", X"02", X"05", X"05", X"00", X"1f", X"0c", X"fa", X"11", X"00", X"f7", X"fa", X"f2", X"f1", X"0b", X"06", X"e9", X"ec",
                                                        X"03", X"09", X"ff", X"26", X"05", X"ec", X"08", X"0a", X"00", X"00", X"fb", X"07", X"f7", X"e3", X"01", X"0d", X"0a", X"ff", X"f5", X"e2", X"09", X"f9", X"0d", X"16", X"e6", X"f9",
                                                        X"ff", X"03", X"0e", X"ff", X"15", X"09", X"11", X"02", X"f6", X"1e", X"0a", X"f4", X"03", X"0f", X"f8", X"07", X"f7", X"13", X"1b", X"e4", X"fa", X"f8", X"ff", X"f3", X"fa", X"37",
                                                        X"02", X"eb", X"08", X"00", X"f5", X"09", X"f8", X"0c", X"19", X"fd", X"f7", X"ea", X"23", X"05", X"f3", X"17", X"03", X"01", X"09", X"f6", X"e5", X"06", X"fc", X"f8", X"22", X"13",
                                                        X"0b", X"fa", X"05", X"ef", X"f8", X"22", X"00", X"e4", X"fe", X"0e", X"06", X"fd", X"f7", X"fc", X"1a", X"f8", X"fb", X"ff", X"03", X"0e", X"fa", X"2c", X"00", X"f7", X"f6", X"0a",
                                                        X"f3", X"fb", X"fb", X"0f", X"f5", X"f3", X"ff", X"f1", X"09", X"fb", X"fe", X"f9", X"02", X"fa", X"f0", X"02", X"fd", X"fe", X"00", X"fe", X"03", X"f0", X"e6", X"f3", X"03", X"06",
                                                        X"f5", X"35", X"f6", X"f9", X"ff", X"f2", X"04", X"04", X"01", X"13", X"0d", X"ff", X"17", X"ef", X"f0", X"ff", X"f1", X"02", X"f8", X"fe", X"fe", X"05", X"08", X"06", X"f3", X"05",
                                                        X"06", X"0c", X"f8", X"fc", X"22", X"fb", X"fd", X"de", X"06", X"ec", X"f7", X"f1", X"13", X"09", X"f3", X"f3", X"01", X"0d", X"f5", X"00", X"ea", X"f1", X"01", X"2a", X"fe", X"e1",
                                                        X"00", X"fc", X"f9", X"0b", X"fe", X"ea", X"ef", X"f9", X"fe", X"fd", X"0a", X"fb", X"fc", X"2c", X"f4", X"fd", X"11", X"02", X"f3", X"04", X"f5", X"0d", X"fd", X"01", X"f4", X"ef",
                                                        X"0e", X"f9", X"f4", X"15", X"11", X"fb", X"fd", X"06", X"f2", X"0c", X"00", X"fb", X"fc", X"ef", X"fb", X"fa", X"04", X"f4", X"f8", X"eb", X"01", X"fd", X"10", X"f7", X"f2", X"12",
                                                        X"01", X"0f", X"f6", X"e6", X"fb", X"f1", X"ee", X"f7", X"0c", X"35", X"06", X"0a", X"f6", X"ff", X"13", X"18", X"f9", X"0d", X"0b", X"f2", X"01", X"02", X"fd", X"f4", X"01", X"dd",
                                                        X"f8", X"f1", X"0c", X"06", X"0a", X"fc", X"03", X"f9", X"f6", X"e6", X"f7", X"fe", X"07", X"ed", X"05", X"f3", X"f2", X"e9", X"f8", X"f5", X"fc", X"0a", X"fd", X"19", X"0d", X"01",
                                                        X"fe", X"00", X"1c", X"00", X"0b", X"0e", X"16", X"e0", X"13", X"fb", X"e9", X"f1", X"ff", X"05", X"13", X"0a", X"08", X"fd", X"0e", X"f3", X"0e", X"17", X"fb", X"00", X"19", X"04",
                                                        X"0d", X"f3", X"07", X"0c", X"04", X"e8", X"0a", X"0a", X"fe", X"fc", X"fb", X"ed", X"05", X"f3", X"f2", X"05", X"00", X"fe", X"0b", X"f8", X"05", X"e9", X"ee", X"08", X"f5", X"06",
                                                        X"f3", X"dc", X"f9", X"f2", X"f4", X"02", X"1c", X"08", X"0d", X"2b", X"14", X"f2", X"fd", X"f8", X"02", X"02", X"ff", X"29", X"f7", X"0a", X"10", X"fe", X"f0", X"fc", X"ff", X"0c",
                                                        X"08", X"15", X"f3", X"00", X"04", X"f5", X"ff", X"0e", X"f8", X"f6", X"f3", X"04", X"fc", X"0c", X"06", X"f4", X"12", X"f8", X"07", X"02", X"f3", X"fc", X"fe", X"17", X"08", X"e4",
                                                        X"03", X"f5", X"00", X"06", X"08", X"ff", X"09", X"01", X"07", X"f8", X"15", X"08", X"ff", X"13", X"f7", X"f3", X"ff", X"fb", X"fe", X"14", X"f3", X"06", X"fd", X"16", X"f5", X"ee",
                                                        X"03", X"10", X"ef", X"1e", X"0c", X"f7", X"01", X"fc", X"04", X"08", X"09", X"00", X"f4", X"1a", X"fc", X"07", X"1c", X"f2", X"0c", X"e3", X"f8", X"04", X"04", X"fb", X"01", X"08",
                                                        X"08", X"06", X"f8", X"f0", X"fc", X"fe", X"08", X"f9", X"05", X"30", X"f6", X"f4", X"0a", X"0c", X"f3", X"02", X"f2", X"0b", X"fb", X"f1", X"f2", X"f3", X"e2", X"fb", X"f7", X"e4",
                                                        X"06", X"da", X"e9", X"04", X"ec", X"05", X"fb", X"0d", X"04", X"fc", X"e0", X"f8", X"f6", X"fa", X"f4", X"23", X"06", X"e7", X"03", X"fa", X"f7", X"0e", X"f1", X"f8", X"01", X"e9",
                                                        X"f3", X"f5", X"f0", X"00", X"fa", X"f4", X"15", X"fd", X"f4", X"fc", X"13", X"f8", X"f8", X"f6", X"17", X"f6", X"fb", X"f5", X"d9", X"1c", X"f4", X"ef", X"f8", X"e7", X"0c", X"f7",
                                                        X"fa", X"ef", X"ec", X"06", X"12", X"e9", X"f3", X"f3", X"fe", X"fc", X"f1", X"d7", X"13", X"f2", X"06", X"ff", X"07", X"f5", X"fc", X"1a", X"fe", X"09", X"e4", X"fb", X"1c", X"15",
                                                        X"f8", X"f0", X"ed", X"fe", X"12", X"f0", X"02", X"08", X"f6", X"ff", X"08", X"ed", X"04", X"06", X"09", X"06", X"ff", X"2f", X"15", X"fa", X"0f", X"fd", X"08", X"03", X"10", X"09",
                                                        X"f7", X"e5", X"0a", X"15", X"0c", X"fc", X"08", X"23", X"ee", X"f6", X"09", X"09", X"0c", X"04", X"02", X"13", X"04", X"ff", X"e6", X"fc", X"f6", X"0a", X"02", X"09", X"f6", X"ee",
                                                        X"f1", X"13", X"fe", X"f7", X"ea", X"fe", X"ef", X"0f", X"f4", X"ec", X"1c", X"ed", X"fd", X"21", X"f8", X"f1", X"01", X"00", X"f6", X"ff", X"07", X"05", X"0e", X"e3", X"11", X"f8",
                                                        X"0b", X"06", X"02", X"33", X"02", X"f1", X"fd", X"e1", X"07", X"03", X"f8", X"fe", X"06", X"fd", X"f7", X"f4", X"f3", X"f6", X"ef", X"e6", X"f2", X"e6", X"f7", X"06", X"1a", X"fa",
                                                        X"f1", X"00", X"06", X"18", X"04", X"0a", X"27", X"14", X"f6", X"f2", X"11", X"f7", X"fc", X"fa", X"05", X"fd", X"f7", X"12", X"f9", X"fb", X"fb", X"09", X"ef", X"0d", X"f0", X"d8",
                                                        X"fc", X"fb", X"f1", X"08", X"ef", X"f9", X"f4", X"f4", X"07", X"eb", X"03", X"f8", X"1b", X"fe", X"f8", X"f0", X"05", X"01", X"ff", X"02", X"f9", X"fa", X"04", X"23", X"e6", X"e9",
                                                        X"e0", X"04", X"f5", X"0f", X"05", X"02", X"03", X"f3", X"16", X"00", X"f0", X"02", X"fa", X"06", X"07", X"fa", X"06", X"fc", X"1b", X"00", X"f5", X"32", X"0b", X"f1", X"17", X"08",
                                                        X"1b", X"03", X"05", X"f9", X"19", X"12", X"f9", X"f8", X"eb", X"fc", X"f9", X"d5", X"10", X"f8", X"05", X"ff", X"1b", X"0a", X"01", X"09", X"12", X"f5", X"fc", X"07", X"ee", X"04",
                                                        X"02", X"f9", X"f5", X"fd", X"fc", X"02", X"04", X"14", X"02", X"00", X"f5", X"f6", X"f5", X"09", X"fa", X"f9", X"04", X"09", X"02", X"fb", X"10", X"00", X"16", X"ef", X"fa", X"1b",
                                                        X"06", X"fa", X"06", X"e8", X"11", X"f9", X"f7", X"0d", X"06", X"ec", X"ec", X"01", X"fa", X"06", X"00", X"fb", X"16", X"03", X"0f", X"f9", X"14", X"01", X"01", X"05", X"fd", X"f4",
                                                        X"f9", X"e8", X"f8", X"08", X"00", X"11", X"e8", X"0d", X"1e", X"07", X"0e", X"fc", X"12", X"e8", X"04", X"e9", X"07", X"0e", X"f2", X"0a", X"07", X"fb", X"0b", X"e7", X"12", X"10",
                                                        X"1e", X"fb", X"07", X"da", X"0e", X"f2", X"17", X"07", X"08", X"06", X"ff", X"19", X"1f", X"f4", X"e8", X"02", X"fd", X"f4", X"f7", X"e9", X"ff", X"01", X"f0", X"f6", X"13", X"0f",
                                                        X"fa", X"ff", X"0d", X"fa", X"f5", X"01", X"01", X"08", X"fc", X"d8", X"f7", X"0e", X"ff", X"fd", X"0b", X"02", X"f6", X"09", X"f1", X"14", X"08", X"fc", X"10", X"f9", X"fe", X"d2",
                                                        X"f2", X"f0", X"08", X"00", X"fe", X"00", X"f6", X"0e", X"0b", X"0c", X"ff", X"fb", X"02", X"fc", X"fe", X"09", X"ee", X"fb", X"f9", X"03", X"03", X"0d", X"ff", X"f9", X"fe", X"ea",
                                                        X"f1", X"05", X"0b", X"11", X"f4", X"0d", X"10", X"fd", X"00", X"0d", X"03", X"fb", X"13", X"0e", X"02", X"e2", X"ef", X"0e", X"e4", X"fc", X"0c", X"ed", X"09", X"e5", X"0b", X"eb",
                                                        X"fb", X"ff", X"f3", X"e6", X"fb", X"0b", X"f7", X"fb", X"01", X"fe", X"fb", X"22", X"07", X"f3", X"08", X"eb", X"fa", X"0c", X"05", X"0a", X"03", X"fe", X"fd", X"05", X"0f", X"03",
                                                        X"01", X"d8", X"f0", X"f5", X"f2", X"f2", X"17", X"0a", X"f4", X"09", X"f8", X"0c", X"ff", X"f4", X"20", X"f5", X"02", X"f9", X"0e", X"17", X"10", X"f3", X"fc", X"0a", X"03", X"05",
                                                        X"12", X"12", X"f4", X"e2", X"12", X"fd", X"13", X"13", X"08", X"ef", X"06", X"f7", X"f2", X"09", X"f9", X"f9", X"0d", X"f1", X"eb", X"f5", X"11", X"02", X"0d", X"29", X"1e", X"05",
                                                        X"f5", X"fa", X"f1", X"fd", X"f8", X"ff", X"f8", X"14", X"09", X"f8", X"1f", X"05", X"03", X"17", X"f0", X"f9", X"fa", X"0c", X"f2", X"09", X"ff", X"0b", X"10", X"ef", X"f8", X"ee",
                                                        X"0d", X"ef", X"f9", X"da", X"04", X"0c", X"01", X"01", X"fa", X"03", X"f9", X"12", X"00", X"14", X"fd", X"f7", X"11", X"f9", X"fc", X"df", X"03", X"03", X"f7", X"f6", X"13", X"11",
                                                        X"f6", X"05", X"f5", X"ee", X"f3", X"fc", X"01", X"f8", X"fb", X"db", X"fa", X"01", X"00", X"0a", X"13", X"0f", X"0d", X"e1", X"13", X"19", X"04", X"06", X"10", X"f5", X"04", X"31",
                                                        X"fe", X"f7", X"fb", X"0d", X"ff", X"fc", X"f8", X"f8", X"11", X"f9", X"06", X"fb", X"16", X"02", X"06", X"dc", X"0a", X"02", X"f6", X"fc", X"f7", X"f2", X"fc", X"ed", X"f0", X"f5",
                                                        X"00", X"ef", X"13", X"f2", X"04", X"cc", X"0c", X"04", X"ff", X"fb", X"07", X"f0", X"02", X"00", X"f7", X"0a", X"f6", X"f6", X"14", X"fb", X"fa", X"19", X"f8", X"fb", X"00", X"08",
                                                        X"05", X"fe", X"07", X"fe", X"01", X"18", X"e8", X"f6", X"16", X"f0", X"f8", X"ec", X"01", X"09", X"03", X"02", X"e1", X"f5", X"eb", X"11", X"fc", X"00", X"ff", X"fd", X"fc", X"fa",
                                                        X"ff", X"08", X"12", X"01", X"fd", X"f7", X"10", X"ee", X"f7", X"ec", X"04", X"0c", X"fa", X"f3", X"18", X"fb", X"f1", X"1d", X"fd", X"fd", X"f7", X"fd", X"00", X"09", X"f0", X"04",
                                                        X"ee", X"12", X"ec", X"02", X"f8", X"f8", X"f6", X"d6", X"00", X"f3", X"fb", X"fb", X"f1", X"09", X"ff", X"f8", X"03", X"08", X"ec", X"fc", X"1e", X"05", X"fb", X"f6", X"09", X"fb",
                                                        X"01", X"02", X"0a", X"f6", X"00", X"f6", X"fb", X"f7", X"0a", X"03", X"db", X"fe", X"fa", X"02", X"fb", X"f6", X"04", X"f8", X"16", X"11", X"ee", X"ef", X"10", X"f0", X"fc", X"f7",
                                                        X"24", X"0e", X"fb", X"2a", X"11", X"ea", X"ff", X"00", X"16", X"07", X"fe", X"06", X"f6", X"fb", X"f0", X"fb", X"ef", X"fa", X"f5", X"32", X"f6", X"e7", X"f6", X"00", X"fa", X"f8",
                                                        X"f8", X"01", X"00", X"e0", X"f0", X"fd", X"25", X"f1", X"f8", X"d9", X"fb", X"f0", X"01", X"08", X"0f", X"07", X"02", X"ea", X"f4", X"f9", X"02", X"02", X"16", X"fd", X"06", X"12",
                                                        X"f3", X"ee", X"07", X"02", X"f2", X"11", X"f4", X"e2", X"1b", X"f3", X"ef", X"fc", X"03", X"00", X"f6", X"00", X"0e", X"0a", X"04", X"06", X"0b", X"14", X"f3", X"0d", X"26", X"04",
                                                        X"ec", X"fd", X"07", X"10", X"03", X"1b", X"00", X"14", X"06", X"04", X"1c", X"03", X"09", X"0e", X"10", X"e6", X"f1", X"fb", X"0e", X"fb", X"0d", X"14", X"05", X"ef", X"ff", X"fd",
                                                        X"0d", X"f0", X"f2", X"fd", X"f2", X"fa", X"13", X"fe", X"14", X"0a", X"f1", X"f5", X"f2", X"fc", X"08", X"02", X"00", X"02", X"fc", X"02", X"e1", X"f9", X"fe", X"00", X"14", X"0a",
                                                        X"fd", X"04", X"07", X"f3", X"f6", X"12", X"f7", X"fb", X"04", X"03", X"f5", X"fe", X"20", X"05", X"0d", X"d7", X"f9", X"2a", X"00", X"e7", X"ff", X"15", X"f8", X"10", X"fa", X"0d",
                                                        X"03", X"08", X"1a", X"fd", X"ee", X"0f", X"f4", X"0a", X"fc", X"f8", X"f9", X"fa", X"07", X"0c", X"fc", X"07", X"0a", X"e6", X"fe", X"fe", X"ee", X"f1", X"00", X"d5", X"01", X"e9",
                                                        X"f5", X"fe", X"09", X"05", X"09", X"0c", X"17", X"ec", X"fe", X"04", X"1b", X"02", X"01", X"d5", X"08", X"f9", X"ee", X"02", X"f4", X"f9", X"00", X"f3", X"fc", X"fc", X"f8", X"fe",
                                                        X"04", X"fb", X"03", X"13", X"01", X"02", X"09", X"fc", X"f5", X"03", X"fa", X"fd", X"04", X"f1", X"09", X"fe", X"0f", X"f6", X"fe", X"20", X"0f", X"ea", X"08", X"fe", X"24", X"09",
                                                        X"ff", X"11", X"15", X"f9", X"13", X"fd", X"fc", X"f6", X"fd", X"eb", X"f3", X"f8", X"f7", X"fa", X"fa", X"05", X"f6", X"0b", X"11", X"05", X"05", X"f6", X"1f", X"f7", X"fb", X"d4",
                                                        X"e8", X"fb", X"0c", X"fc", X"0d", X"fb", X"fd", X"04", X"0e", X"f3", X"02", X"fa", X"03", X"f7", X"06", X"0e", X"fb", X"fb", X"fc", X"ef", X"e7", X"07", X"f3", X"fb", X"04", X"00",
                                                        X"ef", X"f7", X"0e", X"f8", X"fc", X"e3", X"09", X"fa", X"f9", X"db", X"eb", X"fd", X"fb", X"0a", X"0c", X"fb", X"fb", X"07", X"26", X"14", X"02", X"28", X"ff", X"f7", X"ef", X"fd",
                                                        X"f2", X"fe", X"fc", X"12", X"f9", X"0b", X"fe", X"09", X"09", X"ee", X"fc", X"1c", X"ec", X"00", X"fe", X"11", X"14", X"ff", X"03", X"ff", X"0e", X"ef", X"00", X"05", X"f2", X"f4",
                                                        X"fb", X"e2", X"0a", X"05", X"f7", X"f2", X"e3", X"00", X"05", X"05", X"02", X"06", X"fb", X"03", X"04", X"04", X"02", X"26", X"ff", X"ed", X"f7", X"e9", X"f9", X"f5", X"03", X"07",
                                                        X"07", X"e7", X"e8", X"12", X"e9", X"04", X"01", X"24", X"f9", X"fa", X"f5", X"06", X"fe", X"fc", X"ef", X"fb", X"05", X"e3", X"07", X"fe", X"15", X"0a", X"ff", X"f6", X"0e", X"e4",
                                                        X"ed", X"1a", X"fb", X"00", X"f4", X"0a", X"04", X"e9", X"fe", X"f5", X"14", X"13", X"f0", X"28", X"07", X"ec", X"0d", X"01", X"12", X"0d");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0d";
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

