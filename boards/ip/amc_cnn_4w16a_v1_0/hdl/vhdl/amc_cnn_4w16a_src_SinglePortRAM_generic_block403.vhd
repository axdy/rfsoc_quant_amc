-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block403.vhd
-- Created: 2023-06-15 16:03:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block403
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage50/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block403 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block403;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block403 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"c2", X"cf", X"e8", X"bf", X"11", X"04", X"c3", X"e6", X"c4", X"e3", X"ec", X"e6", X"da", X"f8",
                                                        X"ca", X"e0", X"f7", X"ea", X"dd", X"bb", X"ff", X"ef", X"e5", X"f9", X"f7", X"00", X"d5", X"ba", X"e2", X"de", X"ef", X"ee", X"f2", X"f0", X"cc", X"d8", X"cc", X"f9", X"cd", X"f2",
                                                        X"c7", X"c8", X"d6", X"c6", X"fa", X"f8", X"dd", X"f4", X"d8", X"ed", X"db", X"ff", X"f1", X"0f", X"09", X"15", X"f3", X"bd", X"e3", X"cb", X"f8", X"f1", X"e8", X"fa", X"f7", X"f4",
                                                        X"d9", X"c9", X"f0", X"d2", X"f0", X"04", X"dc", X"c3", X"ef", X"05", X"f1", X"f9", X"14", X"f3", X"e7", X"f0", X"e5", X"17", X"fa", X"17", X"15", X"05", X"e5", X"22", X"00", X"ca",
                                                        X"14", X"fa", X"e0", X"0a", X"f3", X"e5", X"e3", X"f3", X"ec", X"dc", X"e8", X"02", X"d4", X"b4", X"d2", X"df", X"f9", X"fe", X"f1", X"fe", X"11", X"fe", X"e1", X"e2", X"08", X"02",
                                                        X"20", X"eb", X"16", X"ca", X"f0", X"05", X"04", X"04", X"dd", X"f8", X"22", X"df", X"f3", X"d7", X"f8", X"e0", X"d1", X"e9", X"f3", X"d3", X"df", X"ee", X"d9", X"ea", X"01", X"f4",
                                                        X"e7", X"00", X"f3", X"fd", X"0a", X"e6", X"d9", X"00", X"01", X"fb", X"f0", X"1d", X"fa", X"d9", X"24", X"ef", X"12", X"ed", X"0e", X"3c", X"ed", X"37", X"f8", X"05", X"e5", X"13",
                                                        X"f7", X"34", X"f3", X"e7", X"1b", X"f3", X"ed", X"f0", X"14", X"c2", X"f9", X"f8", X"18", X"1f", X"fc", X"32", X"f1", X"d9", X"ef", X"08", X"06", X"f0", X"00", X"1a", X"08", X"35",
                                                        X"02", X"1a", X"fc", X"05", X"df", X"e8", X"05", X"0b", X"1b", X"10", X"f3", X"07", X"ed", X"1e", X"09", X"d1", X"fe", X"11", X"1a", X"22", X"f1", X"e5", X"fb", X"0f", X"ee", X"fe",
                                                        X"ed", X"fb", X"e8", X"0f", X"e8", X"06", X"12", X"18", X"25", X"f6", X"0f", X"f7", X"02", X"f2", X"15", X"01", X"d3", X"ed", X"f0", X"07", X"0f", X"0c", X"0b", X"de", X"0c", X"fb",
                                                        X"fb", X"14", X"04", X"25", X"1c", X"14", X"ea", X"01", X"28", X"04", X"29", X"2e", X"05", X"f9", X"17", X"06", X"29", X"d0", X"0a", X"3e", X"1f", X"01", X"fd", X"0a", X"f3", X"ff",
                                                        X"0a", X"fc", X"01", X"21", X"05", X"04", X"e7", X"0b", X"f1", X"2b", X"f4", X"ff", X"34", X"f9", X"01", X"02", X"fa", X"1d", X"19", X"18", X"0c", X"f2", X"e5", X"2c", X"0b", X"18",
                                                        X"11", X"10", X"f8", X"fe", X"23", X"14", X"0f", X"3a", X"07", X"36", X"f6", X"03", X"38", X"fa", X"0e", X"fe", X"e8", X"fa", X"2d", X"0f", X"f3", X"02", X"f2", X"2d", X"07", X"f1",
                                                        X"33", X"fe", X"29", X"f7", X"1c", X"01", X"de", X"0e", X"e3", X"ff", X"20", X"1b", X"28", X"0d", X"05", X"05", X"0a", X"fc", X"18", X"33", X"02", X"33", X"fd", X"f8", X"33", X"0f",
                                                        X"23", X"e6", X"06", X"d3", X"12", X"fb", X"f8", X"0f", X"e8", X"cb", X"0e", X"13", X"05", X"f5", X"1a", X"fa", X"f5", X"00", X"fd", X"3a", X"07", X"02", X"42", X"f4", X"fc", X"fb",
                                                        X"f8", X"e6", X"ee", X"13", X"03", X"f4", X"23", X"e3", X"f6", X"3e", X"17", X"fb", X"f8", X"f3", X"f9", X"d6", X"ee", X"39", X"0e", X"19", X"eb", X"f7", X"03", X"fb", X"07", X"d6",
                                                        X"00", X"20", X"29", X"ee", X"23", X"08", X"f2", X"25", X"18", X"11", X"0b", X"0a", X"eb", X"0b", X"06", X"df", X"f6", X"fb", X"15", X"f2", X"ea", X"11", X"eb", X"02", X"03", X"02",
                                                        X"19", X"f6", X"21", X"12", X"00", X"c7", X"16", X"e3", X"e9", X"f9", X"ed", X"e0", X"dd", X"ec", X"dc", X"f5", X"ed", X"0e", X"22", X"00", X"ee", X"e8", X"f3", X"fb", X"dd", X"08",
                                                        X"f9", X"e1", X"ec", X"04", X"12", X"f5", X"f6", X"08", X"16", X"f5", X"f7", X"1b", X"f2", X"f5", X"00", X"f7", X"eb", X"bd", X"ed", X"cc", X"e9", X"f1", X"da", X"0e", X"f5", X"17",
                                                        X"e5", X"ff", X"fb", X"f1", X"23", X"e6", X"e4", X"00", X"f7", X"dc", X"0a", X"fe", X"0a", X"05", X"10", X"f9", X"00", X"0a", X"f1", X"1c", X"e2", X"fd", X"ec", X"e0", X"ed", X"1e",
                                                        X"09", X"0e", X"ea", X"0f", X"ff", X"f9", X"ec", X"e5", X"f1", X"11", X"e0", X"f6", X"0c", X"cc", X"ef", X"d4", X"f2", X"ea", X"17", X"f1", X"ec", X"06", X"ff", X"15", X"01", X"e5",
                                                        X"0a", X"11", X"21", X"e6", X"fb", X"17", X"0e", X"fc", X"fb", X"f0", X"04", X"e7", X"e9", X"c9", X"14", X"e6", X"1a", X"15", X"f7", X"0c", X"f7", X"00", X"11", X"02", X"fa", X"01",
                                                        X"e5", X"f4", X"eb", X"d2", X"f4", X"f6", X"ee", X"f8", X"e6", X"b7", X"10", X"e9", X"00", X"0f", X"08", X"0c", X"1c", X"0c", X"fa", X"df", X"f1", X"14", X"13", X"06", X"05", X"fc",
                                                        X"03", X"0a", X"18", X"02", X"26", X"0c", X"e3", X"f4", X"e7", X"07", X"f7", X"e1", X"ec", X"ea", X"08", X"14", X"05", X"e4", X"16", X"f4", X"ec", X"07", X"ea", X"f7", X"13", X"08",
                                                        X"e3", X"1c", X"f1", X"1d", X"1d", X"22", X"f8", X"f7", X"08", X"ee", X"e3", X"f8", X"1d", X"fb", X"00", X"e0", X"0b", X"de", X"f3", X"04", X"26", X"02", X"09", X"dd", X"0f", X"f2",
                                                        X"fa", X"0d", X"1c", X"f3", X"0f", X"29", X"13", X"ea", X"eb", X"f2", X"dd", X"fe", X"f9", X"ec", X"fb", X"16", X"0d", X"15", X"e9", X"16", X"de", X"2b", X"f3", X"ee", X"21", X"f7",
                                                        X"00", X"1f", X"f2", X"10", X"ec", X"07", X"09", X"03", X"f9", X"e2", X"00", X"d1", X"f4", X"15", X"08", X"07", X"04", X"e6", X"fc", X"f1", X"10", X"f9", X"10", X"04", X"12", X"f6",
                                                        X"ec", X"fe", X"fd", X"27", X"24", X"fd", X"f7", X"24", X"0f", X"f0", X"e7", X"ef", X"d6", X"fd", X"20", X"f4", X"f9", X"ea", X"fd", X"f6", X"11", X"04", X"02", X"19", X"fc", X"2c",
                                                        X"11", X"09", X"ea", X"f3", X"0e", X"0a", X"0f", X"2c", X"e8", X"fc", X"fb", X"0b", X"e2", X"2d", X"ff", X"df", X"17", X"f2", X"fb", X"fb", X"1d", X"14", X"15", X"01", X"fa", X"02",
                                                        X"f5", X"01", X"01", X"d4", X"f1", X"1a", X"0c", X"fd", X"21", X"0f", X"fb", X"f7", X"e5", X"f8", X"1d", X"ef", X"f9", X"fb", X"13", X"e2", X"f6", X"0b", X"f6", X"f1", X"09", X"fc",
                                                        X"33", X"dd", X"f4", X"de", X"0b", X"0b", X"df", X"f7", X"f2", X"cb", X"10", X"ec", X"00", X"0e", X"24", X"fd", X"09", X"19", X"f0", X"41", X"f1", X"dd", X"0d", X"fa", X"23", X"1b",
                                                        X"fa", X"eb", X"11", X"fd", X"05", X"fa", X"ea", X"fc", X"1a", X"ee", X"ef", X"2a", X"03", X"ec", X"05", X"0b", X"e9", X"e9", X"0f", X"09", X"0b", X"05", X"e9", X"0d", X"f8", X"0e",
                                                        X"f8", X"18", X"17", X"03", X"e3", X"28", X"0d", X"1b", X"e6", X"f2", X"ec", X"0a", X"17", X"ef", X"03", X"10", X"fa", X"1b", X"dd", X"09", X"e8", X"28", X"fb", X"cd", X"ee", X"00",
                                                        X"ec", X"ff", X"e9", X"f3", X"f2", X"0b", X"f6", X"e9", X"02", X"06", X"ef", X"1b", X"09", X"fe", X"0c", X"ff", X"22", X"0e", X"ea", X"fc", X"f6", X"06", X"0a", X"09", X"20", X"ee",
                                                        X"ef", X"f9", X"02", X"22", X"03", X"df", X"db", X"f4", X"0e", X"e9", X"fd", X"0f", X"ed", X"df", X"f9", X"14", X"08", X"e9", X"ed", X"05", X"fb", X"fc", X"d5", X"f2", X"fc", X"fe",
                                                        X"d5", X"d3", X"fb", X"f4", X"e4", X"fa", X"0f", X"ef", X"ed", X"f6", X"e6", X"fe", X"23", X"f6", X"0b", X"f5", X"10", X"dd", X"0f", X"0a", X"1f", X"cf", X"0b", X"ff", X"df", X"14",
                                                        X"0d", X"f8", X"0b", X"ec", X"17", X"d8", X"0b", X"e0", X"16", X"e2", X"e8", X"00", X"ef", X"c1", X"ec", X"e7", X"e5", X"f3", X"d9", X"0b", X"07", X"ef", X"e4", X"ea", X"e6", X"09",
                                                        X"33", X"ff", X"ea", X"11", X"09", X"e0", X"e3", X"00", X"f3", X"f7", X"18", X"01", X"fe", X"eb", X"fc", X"f2", X"d2", X"ec", X"e6", X"e5", X"fd", X"0b", X"e2", X"f2", X"20", X"ec",
                                                        X"f3", X"f0", X"0e", X"0b", X"dc", X"ed", X"f4", X"0c", X"fb", X"27", X"ec", X"d7", X"e2", X"fe", X"f6", X"0a", X"1f", X"05", X"19", X"17", X"f4", X"16", X"08", X"02", X"e7", X"f6",
                                                        X"00", X"c6", X"22", X"f5", X"f7", X"16", X"00", X"0d", X"e1", X"f4", X"08", X"d8", X"00", X"04", X"f3", X"c5", X"10", X"33", X"11", X"05", X"e9", X"18", X"20", X"f2", X"01", X"38",
                                                        X"f5", X"e5", X"15", X"fd", X"09", X"1b", X"12", X"34", X"f1", X"fb", X"05", X"e7", X"ee", X"eb", X"1d", X"3e", X"fe", X"0c", X"01", X"02", X"f2", X"fc", X"0e", X"cf", X"dc", X"04",
                                                        X"da", X"0a", X"35", X"1c", X"21", X"32", X"22", X"d5", X"1d", X"e8", X"1f", X"13", X"eb", X"2f", X"1f", X"ff", X"38", X"e2", X"2d", X"0b", X"13", X"41", X"0f", X"20", X"f3", X"f0",
                                                        X"04", X"3e", X"f6", X"e7", X"29", X"14", X"e9", X"ec", X"ef", X"12", X"13", X"1f", X"0e", X"e6", X"25", X"fa", X"02", X"23", X"05", X"0b", X"ec", X"17", X"28", X"12", X"1d", X"fd",
                                                        X"02", X"26", X"19", X"da", X"17", X"00", X"2f", X"4a", X"1e", X"22", X"1c", X"fd", X"2f", X"f5", X"2f", X"27", X"0c", X"ee", X"11", X"16", X"e7", X"15", X"ed", X"11", X"f0", X"16",
                                                        X"2a", X"fe", X"32", X"0d", X"10", X"fa", X"f5", X"4a", X"18", X"2d", X"08", X"ff", X"ec", X"00", X"f4", X"3a", X"00", X"1c", X"1a", X"14", X"f9", X"14", X"15", X"43", X"12", X"1a",
                                                        X"46", X"ee", X"e5", X"0e", X"1a", X"f2", X"14", X"f5", X"03", X"f6", X"fc", X"f9", X"f0", X"11", X"25", X"1e", X"ff", X"e0", X"29", X"2d", X"03", X"3c", X"fa", X"13", X"09", X"13",
                                                        X"08", X"04", X"07", X"0e", X"20", X"24", X"28", X"f4", X"ff", X"d6", X"ff", X"3c", X"15", X"f9", X"f3", X"12", X"0d", X"fb", X"18", X"57", X"11", X"05", X"f4", X"f3", X"34", X"cd",
                                                        X"f4", X"1f", X"f9", X"fd", X"14", X"05", X"e2", X"05", X"12", X"21", X"07", X"0f", X"22", X"fa", X"0d", X"f8", X"e3", X"15", X"03", X"28", X"00", X"10", X"e8", X"fe", X"1d", X"0c",
                                                        X"fc", X"2e", X"01", X"06", X"e3", X"2b", X"0d", X"08", X"06", X"ef", X"f7", X"0e", X"2d", X"0f", X"17", X"fa", X"fd", X"06", X"e8", X"e9", X"09", X"e2", X"f0", X"e8", X"08", X"01",
                                                        X"29", X"ef", X"1d", X"05", X"0b", X"2d", X"ff", X"2e", X"e7", X"fb", X"10", X"f1", X"0d", X"3c", X"06", X"0b", X"1c", X"02", X"f2", X"f2", X"f7", X"22", X"ef", X"dc", X"f8", X"d9",
                                                        X"ec", X"29", X"fe", X"f3", X"05", X"f4", X"01", X"0e", X"26", X"e6", X"00", X"32", X"f8", X"28", X"d7", X"fc", X"05", X"fa", X"e7", X"f1", X"f9", X"0c", X"2d", X"0c", X"03", X"f6",
                                                        X"05", X"41", X"e9", X"09", X"06", X"fe", X"ec", X"01", X"0d", X"f3", X"e1", X"f0", X"f7", X"fc", X"f8", X"fc", X"02", X"12", X"04", X"1a", X"39", X"02", X"0d", X"ea", X"1d", X"3e",
                                                        X"f6", X"fd", X"f6", X"f7", X"16", X"f9", X"e5", X"e2", X"15", X"ef", X"38", X"f2", X"fe", X"ca", X"e6", X"fa", X"10", X"09", X"ea", X"00", X"ff", X"e7", X"0a", X"27", X"01", X"f2",
                                                        X"ec", X"f9", X"f9", X"25", X"07", X"f1", X"f9", X"0c", X"10", X"0f", X"06", X"f4", X"da", X"f6", X"f4", X"16", X"fc", X"08", X"06", X"fb", X"ee", X"0b", X"17", X"fe", X"15", X"08",
                                                        X"dd", X"1d", X"ea", X"21", X"fe", X"fd", X"f4", X"16", X"f2", X"23", X"fe", X"e6", X"14", X"f8", X"19", X"f6", X"ea", X"ee", X"1e", X"44", X"eb", X"ed", X"f4", X"fc", X"04", X"c3",
                                                        X"11", X"fe", X"1b", X"f3", X"fb", X"eb", X"18", X"e8", X"0b", X"f8", X"13", X"d6", X"ff", X"f5", X"e4", X"f0", X"06", X"13", X"dc", X"1d", X"da", X"fb", X"2c", X"0a", X"ee", X"e3",
                                                        X"fd", X"f2", X"36", X"f9", X"05", X"f1", X"f6", X"f7", X"ef", X"12", X"e8", X"f2", X"03", X"fe", X"12", X"db", X"11", X"d7", X"07", X"f0", X"0f", X"ea", X"06", X"41", X"0a", X"fe",
                                                        X"fb", X"f5", X"15", X"27", X"13", X"17", X"ec", X"05", X"f1", X"f7", X"1b", X"de", X"fa", X"ec", X"10", X"fc", X"f5", X"0b", X"2d", X"f8", X"db", X"09", X"fb", X"f5", X"29", X"0c",
                                                        X"e6", X"20", X"f6", X"fd", X"e3", X"0d", X"31", X"07", X"fd", X"01", X"f5", X"e5", X"e6", X"11", X"ec", X"ff", X"e9", X"ea", X"f0", X"20", X"e8", X"0c", X"e4", X"00", X"fa", X"0d",
                                                        X"08", X"f6", X"ea", X"0c", X"30", X"0e", X"18", X"2d", X"11", X"ea", X"f5", X"f9", X"12", X"fa", X"2f", X"07", X"fd", X"01", X"f6", X"f8", X"1d", X"eb", X"16", X"33", X"fd", X"24",
                                                        X"ef", X"03", X"f1", X"0a", X"e9", X"f6", X"03", X"2f", X"09", X"32", X"13", X"f5", X"2c", X"f9", X"f7", X"19", X"11", X"f5", X"08", X"21", X"2a", X"f1", X"ee", X"e9", X"f4", X"1c",
                                                        X"14", X"f5", X"e8", X"ca", X"ea", X"d9", X"11", X"08", X"05", X"09", X"e2", X"e5", X"f7", X"c7", X"f2", X"fc", X"2c", X"f6", X"e8", X"28", X"fe", X"2a", X"13", X"fc", X"19", X"f2",
                                                        X"f5", X"f5", X"e4", X"b2", X"07", X"ea", X"e0", X"f3", X"e8", X"0d", X"04", X"1b", X"10", X"f4", X"fc", X"dd", X"13", X"f9", X"f1", X"df", X"03", X"07", X"0c", X"f3", X"d8", X"0c",
                                                        X"01", X"07", X"0f", X"00", X"e5", X"e9", X"ee", X"f1", X"f8", X"c9", X"f3", X"1f", X"f9", X"fc", X"d0", X"d3", X"01", X"f4", X"e2", X"f1", X"f1", X"e4", X"d6", X"fa", X"e1", X"ef",
                                                        X"ee", X"f6", X"00", X"0b", X"e6", X"b2", X"fc", X"c1", X"e0", X"00", X"e9", X"08", X"10", X"f1", X"f8", X"c3", X"d9", X"04", X"00", X"18", X"e3", X"f2", X"f5", X"da", X"ff", X"f1",
                                                        X"ec", X"ef", X"e1", X"f3", X"f4", X"e4", X"e8", X"02", X"e6", X"08", X"e7", X"f8", X"f0", X"ea", X"00", X"13", X"de", X"f0", X"e5", X"f4", X"db", X"c2", X"e8", X"f0", X"00", X"f0",
                                                        X"dc", X"f5", X"d7", X"fa", X"f2", X"f7", X"f9", X"ea", X"f7", X"e1", X"fc", X"1c", X"fb", X"f9", X"e7", X"f4", X"24", X"b4", X"ef", X"10", X"f8", X"ed", X"18", X"f0", X"03", X"0e",
                                                        X"f5", X"18", X"f3", X"e8", X"ed", X"fe", X"fb", X"b2", X"dc", X"ed", X"02", X"f0", X"0b", X"ee", X"0b", X"06", X"f4", X"d3", X"09", X"e7", X"05", X"16", X"f6", X"22", X"01", X"12",
                                                        X"d9", X"f4", X"d7", X"fa", X"22", X"fa", X"06", X"2e", X"0b", X"32", X"09", X"02", X"0d", X"01", X"0d", X"0a", X"11", X"09", X"1b", X"05", X"08", X"ef", X"0c", X"04", X"13", X"e8",
                                                        X"01", X"0d", X"f5", X"f8", X"12", X"0e", X"05", X"ec", X"2e", X"0f", X"f9", X"18", X"f2", X"18", X"fd", X"28", X"f9", X"00", X"1f", X"db", X"0c", X"d9", X"1e", X"ea", X"02", X"06",
                                                        X"09", X"e8", X"18", X"2a", X"0a", X"13", X"37", X"0a", X"e7", X"2f", X"06", X"f3", X"eb", X"ff", X"d9", X"ea", X"08", X"ff", X"1f", X"2f", X"00", X"d7", X"29", X"13", X"fd", X"f0",
                                                        X"09", X"e9", X"0f", X"07", X"26", X"13", X"22", X"f1", X"f3", X"46", X"24", X"22", X"28", X"03", X"12", X"e7", X"04", X"43", X"e1", X"f7", X"cd", X"ff", X"13", X"15", X"f6", X"0f",
                                                        X"15", X"fc", X"e9", X"f3", X"e2", X"36", X"04", X"3d", X"f2", X"16", X"1d", X"f4", X"f4", X"0a", X"1d", X"2f", X"0a", X"28", X"e8", X"09", X"e4", X"f6", X"14", X"26", X"21", X"20",
                                                        X"0b", X"21", X"0b", X"13", X"10", X"3e", X"f5", X"f0", X"22", X"02", X"e4", X"d7", X"f5", X"fb", X"19", X"e8", X"01", X"0a", X"ef", X"21", X"1b", X"d8", X"f7", X"1c", X"1a", X"06",
                                                        X"17", X"38", X"17", X"05", X"f8", X"07", X"ee", X"03", X"24", X"0a", X"ff", X"fb", X"f9", X"13", X"01", X"00", X"e9", X"06", X"f5", X"02", X"11", X"05", X"26", X"ff", X"e6", X"f3",
                                                        X"f4", X"df", X"07", X"0a", X"17", X"e7", X"de", X"dc", X"f4", X"1f", X"03", X"fb", X"0f", X"f6", X"01", X"ee", X"ec", X"04", X"02", X"fd", X"03", X"00", X"f1", X"bf", X"f4", X"24",
                                                        X"ff", X"fb", X"11", X"dc", X"f1", X"0e", X"11", X"1d", X"00", X"e9", X"ec", X"f1", X"07", X"d0", X"e7", X"08", X"e8", X"fb", X"00", X"db");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"db";
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

