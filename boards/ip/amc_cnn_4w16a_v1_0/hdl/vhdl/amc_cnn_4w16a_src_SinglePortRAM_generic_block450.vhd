-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block450.vhd
-- Created: 2023-06-15 16:03:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block450
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage93/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block450 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block450;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block450 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"02", X"eb", X"0d", X"f7", X"03", X"0f", X"f2", X"fb", X"1f", X"25", X"e7", X"03", X"05", X"1b",
                                                        X"d2", X"d4", X"ea", X"18", X"1c", X"06", X"f3", X"df", X"f9", X"fa", X"fd", X"eb", X"dd", X"01", X"e6", X"fa", X"f2", X"f4", X"ee", X"04", X"0e", X"00", X"fa", X"f6", X"15", X"fb",
                                                        X"f2", X"03", X"f8", X"f4", X"eb", X"fa", X"2b", X"12", X"ee", X"0b", X"0f", X"ee", X"09", X"f9", X"0d", X"f4", X"fe", X"0f", X"11", X"ff", X"07", X"ef", X"13", X"0f", X"ee", X"09",
                                                        X"0f", X"e5", X"18", X"ef", X"02", X"f9", X"f4", X"13", X"0f", X"ff", X"04", X"f9", X"02", X"05", X"ec", X"ef", X"18", X"f0", X"01", X"f4", X"1b", X"03", X"ec", X"f8", X"f7", X"fe",
                                                        X"09", X"06", X"e7", X"0c", X"f6", X"f6", X"07", X"f1", X"f9", X"f4", X"fe", X"f8", X"fd", X"02", X"f2", X"03", X"f3", X"fa", X"f7", X"ff", X"ff", X"f8", X"f7", X"0f", X"f0", X"01",
                                                        X"20", X"02", X"f9", X"e4", X"f2", X"f3", X"15", X"15", X"05", X"f9", X"02", X"f9", X"0e", X"01", X"e1", X"fe", X"ef", X"09", X"f4", X"19", X"08", X"27", X"fb", X"05", X"e8", X"0e",
                                                        X"0b", X"e4", X"07", X"f1", X"f3", X"e2", X"00", X"06", X"01", X"d7", X"fd", X"0f", X"0c", X"14", X"f7", X"07", X"06", X"ff", X"10", X"00", X"0a", X"10", X"da", X"2a", X"00", X"21",
                                                        X"ff", X"ea", X"21", X"08", X"ec", X"f1", X"ff", X"0a", X"f1", X"f9", X"06", X"0a", X"f2", X"0f", X"ef", X"fc", X"ec", X"05", X"13", X"08", X"ed", X"fc", X"18", X"f3", X"e8", X"fa",
                                                        X"f6", X"0c", X"e3", X"11", X"12", X"e8", X"f9", X"de", X"0a", X"f8", X"e6", X"fa", X"fa", X"09", X"fc", X"09", X"f4", X"18", X"f5", X"02", X"f7", X"1a", X"0d", X"fe", X"09", X"fc",
                                                        X"05", X"ed", X"f7", X"fc", X"f4", X"e8", X"fe", X"10", X"f7", X"f2", X"15", X"26", X"e8", X"09", X"00", X"06", X"fd", X"f7", X"ff", X"fd", X"0d", X"02", X"05", X"e3", X"f3", X"0a",
                                                        X"f0", X"f8", X"03", X"0e", X"08", X"08", X"fa", X"fb", X"0b", X"f2", X"f6", X"0a", X"fe", X"e7", X"fe", X"e9", X"04", X"ff", X"0a", X"12", X"f1", X"fd", X"02", X"fd", X"e3", X"09",
                                                        X"f0", X"04", X"f8", X"e5", X"ff", X"fb", X"f0", X"2e", X"ea", X"00", X"e9", X"04", X"f8", X"f0", X"e3", X"fb", X"08", X"0a", X"0a", X"d9", X"f6", X"f3", X"e2", X"fc", X"ed", X"ef",
                                                        X"ef", X"fa", X"14", X"0e", X"f1", X"fa", X"09", X"d9", X"0b", X"e1", X"17", X"f6", X"ec", X"01", X"01", X"e3", X"fb", X"fb", X"04", X"07", X"e8", X"01", X"ff", X"ff", X"12", X"fa",
                                                        X"ef", X"08", X"e5", X"dd", X"ee", X"02", X"f7", X"fa", X"f1", X"01", X"fd", X"05", X"ee", X"05", X"06", X"f0", X"1b", X"e9", X"02", X"22", X"0c", X"06", X"fd", X"fc", X"18", X"11",
                                                        X"fd", X"0f", X"0e", X"fb", X"ec", X"f4", X"13", X"05", X"0c", X"d2", X"fb", X"eb", X"02", X"f9", X"fc", X"08", X"03", X"f0", X"02", X"07", X"f7", X"0c", X"f9", X"01", X"13", X"d8",
                                                        X"f8", X"fa", X"11", X"01", X"09", X"0d", X"fb", X"f5", X"ff", X"0e", X"f5", X"0a", X"13", X"fc", X"0e", X"20", X"0d", X"01", X"16", X"f8", X"fe", X"02", X"e6", X"0d", X"f8", X"fe",
                                                        X"f0", X"dd", X"04", X"15", X"01", X"31", X"f1", X"02", X"f6", X"08", X"e3", X"ff", X"02", X"ee", X"ea", X"e5", X"f3", X"07", X"ec", X"1b", X"12", X"27", X"fc", X"25", X"f9", X"fa",
                                                        X"f1", X"02", X"f8", X"f4", X"fc", X"06", X"f0", X"12", X"e2", X"0a", X"05", X"d2", X"0f", X"fa", X"08", X"f3", X"ef", X"09", X"12", X"f6", X"f4", X"f5", X"10", X"1c", X"df", X"07",
                                                        X"f9", X"2b", X"f4", X"ef", X"07", X"08", X"e3", X"0b", X"f3", X"da", X"04", X"e3", X"16", X"f4", X"f0", X"13", X"fb", X"12", X"15", X"1c", X"f9", X"12", X"f0", X"1a", X"14", X"e2",
                                                        X"fe", X"f8", X"13", X"ef", X"ec", X"0f", X"17", X"e3", X"16", X"00", X"f8", X"06", X"ea", X"fa", X"0a", X"ec", X"f3", X"fe", X"e4", X"fc", X"f7", X"0f", X"1a", X"33", X"0a", X"08",
                                                        X"f5", X"fc", X"f8", X"f0", X"f9", X"fa", X"00", X"0a", X"ee", X"00", X"14", X"fd", X"18", X"fb", X"f5", X"06", X"15", X"07", X"f7", X"f6", X"f3", X"f4", X"13", X"04", X"06", X"fb",
                                                        X"16", X"0b", X"fd", X"f7", X"0e", X"f9", X"f5", X"fc", X"03", X"fd", X"d8", X"ef", X"06", X"18", X"fb", X"f2", X"07", X"fc", X"fa", X"ef", X"01", X"11", X"fd", X"f3", X"f0", X"f3",
                                                        X"03", X"0e", X"0b", X"ec", X"f4", X"ff", X"fa", X"f0", X"04", X"fc", X"16", X"e9", X"fd", X"f8", X"03", X"0b", X"f4", X"f2", X"fa", X"d3", X"f3", X"e8", X"1f", X"13", X"f4", X"04",
                                                        X"ff", X"e8", X"fd", X"f9", X"fd", X"1f", X"f5", X"10", X"0a", X"ef", X"04", X"f0", X"1a", X"06", X"f7", X"1f", X"18", X"e5", X"fb", X"f3", X"0a", X"13", X"ec", X"06", X"ed", X"ee",
                                                        X"0c", X"ef", X"12", X"fd", X"f4", X"eb", X"03", X"fc", X"fc", X"0f", X"0d", X"13", X"00", X"f8", X"04", X"13", X"fa", X"ff", X"f0", X"ef", X"01", X"09", X"fd", X"07", X"fc", X"05",
                                                        X"03", X"06", X"f6", X"f9", X"02", X"e9", X"00", X"e7", X"09", X"fe", X"07", X"da", X"fe", X"ff", X"ea", X"fd", X"f8", X"0e", X"f3", X"ea", X"f5", X"16", X"06", X"e1", X"03", X"f9",
                                                        X"04", X"2b", X"f6", X"04", X"eb", X"0e", X"f3", X"fa", X"04", X"d6", X"0e", X"08", X"fe", X"13", X"ea", X"fe", X"1f", X"10", X"f2", X"fe", X"f3", X"05", X"e7", X"fb", X"00", X"fd",
                                                        X"e2", X"08", X"ea", X"20", X"eb", X"06", X"05", X"da", X"08", X"00", X"15", X"0f", X"f3", X"00", X"0f", X"08", X"f4", X"fb", X"ea", X"fe", X"f4", X"ed", X"19", X"de", X"0b", X"f2",
                                                        X"09", X"03", X"f4", X"f3", X"eb", X"fc", X"e5", X"d5", X"01", X"1f", X"f3", X"03", X"ec", X"ee", X"f7", X"f8", X"00", X"fd", X"f9", X"f7", X"f7", X"10", X"e8", X"0d", X"fa", X"fc",
                                                        X"f6", X"fe", X"f8", X"06", X"e5", X"e6", X"03", X"ff", X"ef", X"0a", X"12", X"f8", X"00", X"0b", X"f8", X"0e", X"ea", X"00", X"f8", X"04", X"09", X"ed", X"11", X"10", X"f3", X"ff",
                                                        X"ff", X"ed", X"0a", X"18", X"f5", X"09", X"f8", X"03", X"f9", X"ea", X"18", X"27", X"06", X"06", X"ee", X"ed", X"e6", X"ff", X"f1", X"2a", X"fb", X"08", X"f7", X"f5", X"0b", X"37",
                                                        X"f3", X"04", X"0c", X"08", X"f2", X"f6", X"e4", X"00", X"09", X"e7", X"f8", X"f3", X"f9", X"e3", X"0e", X"1f", X"fd", X"1f", X"eb", X"f9", X"f1", X"07", X"f8", X"0c", X"0b", X"11",
                                                        X"fb", X"ec", X"0a", X"f1", X"fe", X"2c", X"02", X"ec", X"f8", X"f9", X"fc", X"fb", X"eb", X"fd", X"ff", X"e6", X"f6", X"dc", X"03", X"02", X"f1", X"35", X"03", X"10", X"f5", X"f8",
                                                        X"05", X"f8", X"e2", X"fb", X"30", X"f6", X"e9", X"d6", X"27", X"df", X"fd", X"db", X"05", X"eb", X"ec", X"fe", X"1b", X"04", X"f9", X"f9", X"f0", X"f1", X"09", X"ea", X"e0", X"0c",
                                                        X"fa", X"dd", X"0e", X"0c", X"07", X"01", X"06", X"0c", X"ed", X"00", X"03", X"09", X"15", X"f4", X"fa", X"0e", X"fa", X"dc", X"0f", X"01", X"f6", X"fe", X"f6", X"08", X"03", X"15",
                                                        X"04", X"12", X"fa", X"f4", X"20", X"fd", X"14", X"df", X"ef", X"08", X"02", X"fe", X"ff", X"00", X"0e", X"fa", X"eb", X"2c", X"09", X"01", X"12", X"fb", X"0e", X"e5", X"0b", X"36",
                                                        X"fd", X"04", X"08", X"03", X"f8", X"dc", X"04", X"0f", X"ec", X"ee", X"f2", X"0c", X"04", X"eb", X"06", X"09", X"1b", X"0b", X"ee", X"fd", X"fe", X"00", X"d9", X"ee", X"e4", X"14",
                                                        X"f5", X"00", X"04", X"19", X"f4", X"f6", X"0b", X"09", X"f3", X"f1", X"fa", X"e7", X"fd", X"f8", X"ea", X"0e", X"f4", X"0b", X"02", X"fe", X"fc", X"e4", X"ec", X"07", X"f1", X"05",
                                                        X"0e", X"e4", X"ef", X"e9", X"f9", X"1e", X"d9", X"fc", X"f3", X"0a", X"fb", X"f5", X"0c", X"08", X"e6", X"08", X"08", X"ef", X"0d", X"f2", X"0c", X"19", X"e4", X"04", X"14", X"28",
                                                        X"0a", X"0e", X"fa", X"04", X"f1", X"00", X"e3", X"ff", X"f0", X"fb", X"ff", X"0d", X"e2", X"fa", X"ff", X"dc", X"01", X"15", X"0c", X"01", X"e3", X"f7", X"ed", X"08", X"fe", X"02",
                                                        X"e8", X"ea", X"06", X"02", X"18", X"10", X"fc", X"f1", X"18", X"fe", X"eb", X"f3", X"12", X"f8", X"e9", X"05", X"f1", X"e6", X"13", X"f7", X"13", X"22", X"00", X"10", X"17", X"fe",
                                                        X"f4", X"00", X"ea", X"fd", X"f2", X"26", X"fb", X"e8", X"ef", X"f8", X"ff", X"08", X"f1", X"00", X"13", X"0d", X"0f", X"ff", X"eb", X"f7", X"08", X"fe", X"ed", X"e9", X"06", X"fc",
                                                        X"fd", X"07", X"f6", X"f7", X"f4", X"fb", X"09", X"ff", X"fa", X"0a", X"f6", X"ed", X"03", X"f4", X"07", X"fe", X"03", X"07", X"13", X"fe", X"09", X"fa", X"0e", X"02", X"ed", X"19",
                                                        X"22", X"f2", X"fd", X"e3", X"fb", X"ff", X"e1", X"e3", X"04", X"e2", X"02", X"fd", X"f4", X"01", X"f8", X"02", X"09", X"06", X"fe", X"fb", X"ed", X"0c", X"f1", X"2a", X"03", X"e6",
                                                        X"fa", X"f4", X"19", X"16", X"f9", X"04", X"08", X"e8", X"07", X"ff", X"0e", X"ed", X"f3", X"f6", X"10", X"02", X"fb", X"0a", X"06", X"0f", X"fb", X"e6", X"f2", X"f7", X"ef", X"ff",
                                                        X"1f", X"f6", X"00", X"de", X"fe", X"0a", X"fa", X"18", X"02", X"fd", X"fc", X"db", X"10", X"fa", X"f7", X"e9", X"26", X"00", X"fb", X"02", X"f0", X"04", X"f2", X"0a", X"11", X"0b",
                                                        X"f9", X"f3", X"f8", X"0c", X"f8", X"ed", X"09", X"fb", X"11", X"21", X"d7", X"0d", X"fb", X"05", X"ef", X"04", X"fb", X"0b", X"f2", X"13", X"fe", X"f8", X"e6", X"07", X"07", X"e6",
                                                        X"fc", X"05", X"0f", X"09", X"f1", X"f8", X"ec", X"ee", X"09", X"11", X"07", X"0b", X"fe", X"14", X"17", X"da", X"0b", X"f2", X"f3", X"05", X"ef", X"05", X"07", X"f7", X"fa", X"ec",
                                                        X"fd", X"07", X"e9", X"ff", X"19", X"11", X"03", X"08", X"25", X"03", X"e8", X"0a", X"fe", X"f2", X"00", X"f6", X"07", X"16", X"f4", X"12", X"04", X"16", X"f6", X"15", X"1b", X"0a",
                                                        X"ea", X"1b", X"fa", X"0d", X"fa", X"f3", X"fb", X"1a", X"e5", X"fe", X"f6", X"1c", X"f1", X"fd", X"fa", X"10", X"e3", X"04", X"f9", X"fe", X"e1", X"ee", X"e9", X"f9", X"ed", X"f3",
                                                        X"f8", X"e4", X"05", X"1d", X"02", X"12", X"e2", X"fb", X"ec", X"04", X"09", X"fa", X"f4", X"fb", X"09", X"fe", X"0e", X"fe", X"06", X"00", X"0b", X"03", X"de", X"ef", X"e9", X"10",
                                                        X"18", X"19", X"04", X"d2", X"15", X"08", X"00", X"30", X"06", X"21", X"08", X"11", X"e1", X"f6", X"de", X"00", X"f4", X"14", X"06", X"f4", X"f7", X"f7", X"fd", X"04", X"03", X"25",
                                                        X"03", X"12", X"f6", X"fa", X"f2", X"f5", X"08", X"0b", X"fd", X"eb", X"26", X"08", X"fe", X"d9", X"f4", X"ef", X"04", X"02", X"12", X"ff", X"ef", X"11", X"0b", X"ed", X"f1", X"e5",
                                                        X"eb", X"01", X"e3", X"11", X"fe", X"ea", X"fc", X"fc", X"fb", X"0a", X"f3", X"25", X"11", X"f1", X"0a", X"f1", X"f0", X"04", X"de", X"20", X"01", X"de", X"f2", X"0d", X"ef", X"17",
                                                        X"eb", X"08", X"13", X"e6", X"08", X"ee", X"fa", X"f8", X"ec", X"d7", X"f8", X"f2", X"fa", X"12", X"14", X"ff", X"f2", X"08", X"fe", X"14", X"fd", X"ef", X"09", X"07", X"fc", X"1c",
                                                        X"04", X"f4", X"ff", X"07", X"1b", X"09", X"f4", X"f4", X"13", X"17", X"fc", X"f4", X"02", X"f5", X"02", X"38", X"f4", X"10", X"f7", X"0c", X"ef", X"06", X"f4", X"f7", X"f7", X"fc",
                                                        X"02", X"07", X"ec", X"0b", X"fb", X"fa", X"00", X"15", X"f4", X"08", X"fb", X"06", X"0b", X"d0", X"10", X"f8", X"fe", X"ee", X"f5", X"05", X"04", X"ea", X"f3", X"2e", X"18", X"15",
                                                        X"fa", X"02", X"06", X"f3", X"09", X"f0", X"f7", X"14", X"f6", X"d8", X"08", X"13", X"07", X"04", X"0f", X"12", X"06", X"fc", X"f6", X"fe", X"00", X"00", X"f5", X"f6", X"f4", X"17",
                                                        X"f9", X"ee", X"01", X"07", X"07", X"1a", X"0b", X"ea", X"f9", X"10", X"e8", X"e8", X"0b", X"05", X"f0", X"18", X"ee", X"02", X"14", X"f4", X"f3", X"01", X"e5", X"f7", X"fc", X"f4",
                                                        X"f3", X"f7", X"f6", X"1d", X"f8", X"17", X"10", X"f6", X"01", X"eb", X"eb", X"05", X"ee", X"00", X"0d", X"f2", X"eb", X"e6", X"f2", X"07", X"ed", X"09", X"0c", X"08", X"fb", X"16",
                                                        X"1c", X"1c", X"ec", X"f5", X"0b", X"f6", X"f2", X"1a", X"f4", X"0c", X"e7", X"fc", X"0c", X"1a", X"01", X"00", X"0b", X"0f", X"fa", X"f8", X"f4", X"f4", X"e6", X"ed", X"f9", X"ea",
                                                        X"ed", X"f9", X"ff", X"2c", X"fb", X"11", X"e8", X"11", X"fa", X"f9", X"f1", X"fc", X"f7", X"f0", X"f7", X"f9", X"07", X"f4", X"08", X"ee", X"1f", X"1c", X"eb", X"fc", X"1e", X"fb",
                                                        X"f5", X"f5", X"f9", X"f9", X"ed", X"e7", X"f4", X"ec", X"07", X"12", X"f1", X"14", X"01", X"07", X"02", X"0d", X"f7", X"fd", X"02", X"0f", X"0c", X"ee", X"1f", X"f8", X"0f", X"f8",
                                                        X"0a", X"13", X"ef", X"f9", X"0d", X"fe", X"fc", X"0f", X"09", X"f8", X"03", X"ef", X"1c", X"19", X"01", X"27", X"12", X"e3", X"f6", X"ee", X"f6", X"0b", X"f0", X"02", X"f9", X"f9",
                                                        X"14", X"eb", X"e0", X"0d", X"f5", X"02", X"19", X"da", X"0e", X"fe", X"0b", X"13", X"e0", X"fd", X"0a", X"ee", X"03", X"de", X"1b", X"f4", X"f1", X"0a", X"f6", X"f8", X"07", X"f6",
                                                        X"1c", X"0d", X"ff", X"00", X"0a", X"12", X"01", X"ff", X"f5", X"f4", X"ff", X"30", X"02", X"ec", X"15", X"08", X"17", X"09", X"08", X"f3", X"0c", X"07", X"f8", X"fd", X"0e", X"fc",
                                                        X"fe", X"0c", X"0d", X"04", X"f5", X"09", X"04", X"0b", X"04", X"ef", X"f9", X"03", X"f1", X"05", X"f5", X"10", X"10", X"02", X"12", X"07", X"ff", X"0d", X"e8", X"f2", X"f4", X"f3",
                                                        X"f1", X"04", X"04", X"ef", X"f4", X"04", X"0c", X"05", X"18", X"25", X"fe", X"0d", X"f4", X"fd", X"15", X"f0", X"03", X"ee", X"f5", X"0d", X"f9", X"10", X"fd", X"f1", X"f9", X"17",
                                                        X"f8", X"fb", X"fc", X"fe", X"0f", X"f2", X"e1", X"d8", X"fa", X"19", X"e7", X"12", X"01", X"e2", X"15", X"0e", X"ee", X"04", X"e9", X"f6", X"0c", X"dd", X"dd", X"04", X"05", X"f2",
                                                        X"ed", X"0a", X"f9", X"07", X"02", X"f1", X"f7", X"10", X"ef", X"01", X"fa", X"fc", X"13", X"f5", X"09", X"1d", X"eb", X"18", X"f5", X"2f", X"ec", X"11", X"eb", X"05", X"f2", X"03",
                                                        X"16", X"f2", X"01", X"19", X"06", X"e1", X"f6", X"03", X"f8", X"02", X"ec", X"1e", X"19", X"0a", X"e6", X"08", X"06", X"f6", X"f7", X"fa", X"0b", X"00", X"fa", X"fc", X"15", X"fe",
                                                        X"f7", X"f9", X"fc", X"01", X"e7", X"eb", X"f7", X"0a", X"e4", X"2e", X"f8", X"ed", X"05", X"ec", X"14", X"f6", X"e1", X"23", X"07", X"03", X"fe", X"fc", X"fe", X"0d", X"fa", X"eb",
                                                        X"eb", X"dc", X"18", X"e3", X"0c", X"f3", X"04", X"fd", X"00", X"00", X"e6", X"f7", X"fc", X"fb", X"0a", X"f8", X"f7", X"eb", X"20", X"e2", X"01", X"ec", X"f6", X"02", X"00", X"e8",
                                                        X"00", X"f9", X"f0", X"08", X"fa", X"01", X"1c", X"ed", X"13", X"fe", X"f8", X"f3", X"fa", X"e9", X"06", X"ff", X"04", X"ff", X"f5", X"f7", X"0c", X"00", X"07", X"df", X"fa", X"f1",
                                                        X"ec", X"d3", X"04", X"f5", X"02", X"f9", X"02", X"04", X"ee", X"0b", X"0f", X"0b", X"0a", X"ea", X"3d", X"04", X"ec", X"f9", X"19", X"e8", X"fc", X"f0", X"23", X"0c", X"e3", X"ff",
                                                        X"17", X"16", X"eb", X"f5", X"24", X"fe", X"ea", X"d6", X"ee", X"ee", X"f6", X"0b", X"07", X"13", X"00", X"fc", X"f6", X"fe", X"f1", X"e5", X"10", X"e6", X"fa", X"de", X"e2", X"fc",
                                                        X"0d", X"05", X"00", X"16", X"16", X"f0", X"fc", X"0c", X"f8", X"fc", X"db", X"f0", X"23", X"06", X"f5", X"25", X"12", X"03", X"ba", X"fc");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fc";
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

