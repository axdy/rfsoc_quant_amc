-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block353.vhd
-- Created: 2023-06-15 16:03:00
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block353
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage12/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block353 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block353;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block353 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"17", X"2b", X"fe", X"e2", X"00", X"52", X"d6", X"f8", X"f6", X"06", X"ff", X"f2", X"ed", X"05",
                                                        X"19", X"05", X"21", X"09", X"05", X"fa", X"f1", X"1c", X"f6", X"ff", X"e3", X"f7", X"03", X"e6", X"eb", X"04", X"12", X"ff", X"12", X"16", X"1a", X"f3", X"fd", X"20", X"f6", X"0c",
                                                        X"da", X"06", X"17", X"0a", X"e0", X"0d", X"27", X"ff", X"06", X"11", X"16", X"fd", X"f9", X"32", X"e7", X"08", X"f1", X"fa", X"16", X"02", X"03", X"f5", X"0a", X"06", X"07", X"17",
                                                        X"04", X"ec", X"00", X"0d", X"e7", X"f5", X"ea", X"dd", X"fd", X"ff", X"f8", X"fc", X"1e", X"f9", X"13", X"04", X"03", X"e4", X"05", X"34", X"ef", X"00", X"ee", X"e5", X"04", X"f9",
                                                        X"f7", X"f7", X"20", X"10", X"14", X"fd", X"0d", X"f4", X"f3", X"1a", X"ef", X"02", X"ea", X"f4", X"0f", X"e9", X"0d", X"fb", X"10", X"09", X"1a", X"03", X"01", X"fa", X"e8", X"26",
                                                        X"ed", X"ee", X"f0", X"ea", X"00", X"02", X"f6", X"f5", X"0a", X"ff", X"0e", X"0f", X"20", X"0f", X"ff", X"20", X"df", X"03", X"e5", X"07", X"f3", X"02", X"db", X"ff", X"0f", X"00",
                                                        X"06", X"0a", X"f6", X"ff", X"02", X"35", X"f3", X"fc", X"eb", X"01", X"25", X"f5", X"09", X"00", X"2d", X"00", X"0d", X"15", X"f2", X"0d", X"07", X"2c", X"03", X"04", X"eb", X"ee",
                                                        X"06", X"e7", X"f3", X"fd", X"19", X"fa", X"07", X"1a", X"0d", X"06", X"09", X"0e", X"e7", X"f6", X"ef", X"18", X"f6", X"0a", X"ef", X"fd", X"19", X"05", X"1c", X"0c", X"07", X"f0",
                                                        X"fb", X"18", X"e1", X"fb", X"f0", X"d8", X"00", X"fa", X"ff", X"f9", X"1f", X"01", X"05", X"11", X"06", X"ed", X"f0", X"29", X"f6", X"10", X"f2", X"e5", X"06", X"02", X"0b", X"f6",
                                                        X"1d", X"01", X"12", X"14", X"11", X"e8", X"f5", X"21", X"f5", X"fc", X"f4", X"1c", X"06", X"fa", X"03", X"fb", X"27", X"f8", X"0d", X"1f", X"f8", X"0d", X"01", X"01", X"e3", X"ff",
                                                        X"eb", X"f1", X"03", X"ef", X"e6", X"f9", X"13", X"fa", X"fd", X"13", X"15", X"ee", X"ed", X"3a", X"fe", X"fc", X"ed", X"0a", X"07", X"f0", X"fc", X"fa", X"fd", X"fa", X"11", X"11",
                                                        X"01", X"e9", X"f1", X"17", X"e3", X"00", X"f1", X"eb", X"07", X"03", X"e3", X"fd", X"18", X"f8", X"13", X"0c", X"09", X"0d", X"fa", X"29", X"fd", X"fd", X"fc", X"ee", X"04", X"ef",
                                                        X"dd", X"fe", X"1a", X"00", X"18", X"0e", X"fa", X"05", X"eb", X"29", X"ee", X"ff", X"f2", X"04", X"07", X"04", X"f1", X"f7", X"1d", X"03", X"17", X"15", X"fd", X"f5", X"ed", X"18",
                                                        X"e3", X"0c", X"e6", X"13", X"05", X"ff", X"f6", X"ff", X"1e", X"01", X"19", X"0d", X"06", X"f0", X"f1", X"27", X"07", X"11", X"e2", X"d5", X"06", X"e9", X"f0", X"04", X"28", X"02",
                                                        X"0c", X"1a", X"fd", X"ed", X"02", X"27", X"fb", X"03", X"ef", X"e8", X"11", X"f0", X"ea", X"fc", X"22", X"00", X"12", X"09", X"00", X"0d", X"fd", X"1d", X"e7", X"11", X"f7", X"ef",
                                                        X"0f", X"f5", X"eb", X"01", X"1d", X"f1", X"11", X"12", X"0b", X"f4", X"f5", X"22", X"13", X"07", X"f6", X"db", X"15", X"ff", X"ef", X"fd", X"03", X"fe", X"0f", X"1b", X"07", X"fa",
                                                        X"fe", X"2f", X"d6", X"08", X"f0", X"0c", X"0e", X"09", X"e5", X"fb", X"18", X"fa", X"01", X"16", X"29", X"0f", X"07", X"18", X"f4", X"0d", X"f0", X"11", X"09", X"ed", X"e0", X"fe",
                                                        X"1c", X"03", X"10", X"0a", X"07", X"07", X"02", X"29", X"e7", X"10", X"eb", X"dc", X"ff", X"fa", X"ed", X"02", X"21", X"0c", X"10", X"13", X"ef", X"f7", X"f5", X"2d", X"ee", X"f6",
                                                        X"eb", X"e3", X"f2", X"0d", X"00", X"fa", X"1d", X"0c", X"08", X"25", X"03", X"06", X"ef", X"44", X"04", X"fe", X"ea", X"f9", X"fd", X"e9", X"fa", X"fd", X"17", X"06", X"16", X"17",
                                                        X"0b", X"e4", X"f3", X"03", X"fb", X"f0", X"f0", X"27", X"09", X"00", X"fa", X"f7", X"25", X"fe", X"12", X"02", X"e8", X"05", X"fa", X"34", X"d5", X"f9", X"f5", X"d7", X"06", X"fa",
                                                        X"ff", X"fc", X"26", X"fe", X"13", X"16", X"15", X"0a", X"f6", X"29", X"02", X"03", X"f0", X"1e", X"0d", X"f4", X"04", X"fc", X"0c", X"fb", X"09", X"06", X"f1", X"fd", X"fc", X"27",
                                                        X"e3", X"01", X"f5", X"03", X"07", X"06", X"f0", X"fe", X"06", X"fe", X"0f", X"12", X"f9", X"f7", X"fb", X"1b", X"e9", X"09", X"f2", X"f4", X"0c", X"17", X"e1", X"f5", X"1b", X"f4",
                                                        X"09", X"10", X"f6", X"02", X"fa", X"15", X"f6", X"0e", X"f2", X"03", X"19", X"ea", X"de", X"02", X"0a", X"f7", X"19", X"2b", X"09", X"f6", X"f2", X"21", X"ff", X"05", X"ec", X"0c",
                                                        X"11", X"ed", X"da", X"fe", X"22", X"00", X"0c", X"09", X"0b", X"f4", X"f0", X"2b", X"e5", X"05", X"e3", X"ff", X"0f", X"fe", X"f7", X"fc", X"27", X"0c", X"0e", X"19", X"15", X"fc",
                                                        X"fc", X"27", X"e6", X"00", X"f5", X"dd", X"10", X"09", X"f6", X"f8", X"33", X"ff", X"08", X"03", X"fb", X"ff", X"ef", X"39", X"df", X"00", X"e7", X"1a", X"e9", X"f0", X"dd", X"06",
                                                        X"0b", X"09", X"15", X"0f", X"14", X"08", X"00", X"1d", X"ef", X"fb", X"f7", X"e0", X"03", X"06", X"12", X"07", X"05", X"f7", X"07", X"21", X"02", X"e9", X"03", X"10", X"f4", X"0e",
                                                        X"f5", X"eb", X"14", X"f4", X"fd", X"fa", X"24", X"ed", X"17", X"18", X"10", X"0c", X"10", X"2c", X"fa", X"05", X"e3", X"2b", X"04", X"ea", X"f3", X"06", X"27", X"fc", X"17", X"19",
                                                        X"f9", X"fe", X"f2", X"25", X"f1", X"f7", X"f7", X"d3", X"fb", X"ec", X"e8", X"fa", X"13", X"fe", X"20", X"09", X"f9", X"ed", X"f3", X"1f", X"e1", X"f8", X"f2", X"18", X"08", X"07",
                                                        X"e6", X"00", X"32", X"fd", X"09", X"1a", X"ff", X"09", X"f6", X"16", X"ea", X"f5", X"f8", X"ee", X"fc", X"f5", X"ef", X"ff", X"06", X"08", X"0a", X"0f", X"19", X"e6", X"ec", X"1f",
                                                        X"eb", X"07", X"eb", X"e8", X"fa", X"fb", X"f4", X"f0", X"2b", X"04", X"08", X"14", X"f9", X"f3", X"ff", X"37", X"f6", X"f9", X"e9", X"e5", X"0b", X"f5", X"f9", X"f1", X"13", X"ff",
                                                        X"0e", X"13", X"fc", X"0a", X"fb", X"41", X"f6", X"02", X"f6", X"e0", X"10", X"03", X"03", X"f8", X"1a", X"06", X"1a", X"1c", X"0b", X"ee", X"07", X"1a", X"e7", X"07", X"ff", X"22",
                                                        X"00", X"10", X"dd", X"fc", X"18", X"0d", X"0e", X"02", X"fc", X"df", X"06", X"1d", X"f4", X"00", X"f7", X"db", X"06", X"f8", X"e3", X"ff", X"2b", X"03", X"0f", X"02", X"1a", X"01",
                                                        X"05", X"21", X"07", X"01", X"e5", X"e9", X"03", X"0d", X"fc", X"02", X"17", X"02", X"18", X"1d", X"fc", X"fb", X"04", X"20", X"e9", X"fa", X"e5", X"0f", X"07", X"f8", X"eb", X"f5",
                                                        X"00", X"04", X"f4", X"0c", X"0c", X"0f", X"05", X"2e", X"f9", X"0c", X"e8", X"dd", X"07", X"dd", X"f2", X"fd", X"0e", X"04", X"1f", X"14", X"11", X"16", X"f5", X"26", X"03", X"03",
                                                        X"f5", X"21", X"03", X"e3", X"f2", X"fd", X"1e", X"ff", X"0c", X"06", X"f9", X"d6", X"fb", X"48", X"f2", X"09", X"e8", X"05", X"03", X"11", X"cb", X"f1", X"1b", X"fe", X"10", X"11",
                                                        X"00", X"e9", X"04", X"2a", X"df", X"02", X"f2", X"17", X"fc", X"05", X"09", X"fa", X"2d", X"ff", X"06", X"14", X"19", X"03", X"f0", X"2b", X"e1", X"0a", X"ed", X"dc", X"fd", X"fc",
                                                        X"02", X"ff", X"22", X"fb", X"f5", X"0c", X"0c", X"11", X"03", X"2d", X"e3", X"07", X"03", X"de", X"f3", X"f4", X"05", X"f9", X"31", X"fe", X"fb", X"10", X"12", X"e7", X"f3", X"2b",
                                                        X"e7", X"00", X"05", X"d6", X"04", X"ff", X"0f", X"f8", X"22", X"05", X"12", X"01", X"00", X"1c", X"f9", X"26", X"08", X"ff", X"f5", X"26", X"05", X"03", X"dc", X"04", X"3a", X"08",
                                                        X"0c", X"23", X"fd", X"f5", X"fc", X"0e", X"de", X"02", X"f5", X"eb", X"16", X"fd", X"00", X"02", X"1e", X"06", X"06", X"20", X"09", X"e6", X"fe", X"2a", X"eb", X"01", X"ec", X"e4",
                                                        X"f4", X"f0", X"df", X"09", X"34", X"fe", X"0b", X"11", X"17", X"e7", X"fc", X"13", X"d7", X"01", X"f9", X"fa", X"0a", X"00", X"fd", X"00", X"1a", X"ff", X"0f", X"0c", X"10", X"19",
                                                        X"f6", X"39", X"fd", X"f7", X"05", X"d7", X"07", X"e9", X"03", X"09", X"06", X"f5", X"07", X"0f", X"f5", X"fc", X"f7", X"34", X"01", X"07", X"f6", X"e1", X"11", X"ff", X"0f", X"00",
                                                        X"1f", X"f4", X"09", X"0e", X"f3", X"e8", X"eb", X"2b", X"ec", X"01", X"fc", X"21", X"fe", X"f2", X"f6", X"f4", X"0c", X"f5", X"12", X"27", X"05", X"f0", X"06", X"25", X"d6", X"fc",
                                                        X"f8", X"ef", X"08", X"e2", X"e0", X"ff", X"2c", X"ff", X"0d", X"18", X"ff", X"03", X"fa", X"19", X"f9", X"f3", X"e9", X"e7", X"06", X"02", X"eb", X"02", X"20", X"03", X"12", X"1a",
                                                        X"20", X"ed", X"fb", X"1e", X"df", X"00", X"f6", X"db", X"fc", X"ee", X"f0", X"fc", X"1d", X"03", X"0a", X"18", X"fd", X"e9", X"e7", X"27", X"f1", X"04", X"ea", X"0b", X"0b", X"f8",
                                                        X"ea", X"ff", X"31", X"05", X"0c", X"0a", X"fb", X"00", X"fa", X"2b", X"f0", X"0b", X"f9", X"2a", X"ff", X"03", X"fc", X"06", X"1e", X"07", X"08", X"0f", X"fe", X"f2", X"fe", X"3a",
                                                        X"ee", X"fa", X"e7", X"f7", X"f9", X"18", X"e4", X"f9", X"23", X"f8", X"19", X"01", X"02", X"f5", X"fa", X"1d", X"ee", X"ec", X"f3", X"e6", X"e7", X"f5", X"11", X"f2", X"19", X"02",
                                                        X"f4", X"02", X"f5", X"08", X"f4", X"2c", X"de", X"06", X"f6", X"fa", X"f6", X"e1", X"d8", X"f8", X"32", X"f8", X"05", X"16", X"02", X"04", X"f9", X"35", X"e0", X"f8", X"fa", X"0d",
                                                        X"0a", X"05", X"e2", X"f7", X"0e", X"f7", X"05", X"1a", X"13", X"ff", X"06", X"30", X"05", X"09", X"f8", X"ef", X"03", X"01", X"08", X"fb", X"2b", X"ef", X"1b", X"21", X"08", X"d9",
                                                        X"09", X"11", X"dd", X"06", X"f3", X"13", X"07", X"ed", X"e8", X"fa", X"19", X"06", X"16", X"20", X"ea", X"f3", X"ff", X"1b", X"ed", X"0e", X"d7", X"ff", X"07", X"03", X"db", X"fd",
                                                        X"2a", X"03", X"02", X"18", X"01", X"0f", X"fe", X"37", X"e7", X"04", X"e4", X"12", X"15", X"f8", X"f6", X"01", X"1e", X"0b", X"0d", X"11", X"15", X"ec", X"ec", X"13", X"f8", X"01",
                                                        X"fc", X"17", X"08", X"0b", X"ea", X"02", X"2b", X"06", X"14", X"ff", X"f3", X"ff", X"fd", X"12", X"f6", X"02", X"e5", X"e3", X"0f", X"fc", X"ea", X"04", X"25", X"05", X"0d", X"14",
                                                        X"fe", X"f4", X"f3", X"1a", X"e7", X"ff", X"02", X"20", X"0c", X"e9", X"00", X"fe", X"1e", X"0a", X"1e", X"0b", X"13", X"f8", X"f1", X"3b", X"da", X"02", X"04", X"d7", X"0c", X"ff",
                                                        X"07", X"fd", X"34", X"fd", X"16", X"15", X"10", X"08", X"f7", X"08", X"e3", X"0a", X"e9", X"f8", X"08", X"04", X"f4", X"ff", X"01", X"f9", X"13", X"16", X"fb", X"e6", X"f2", X"3e",
                                                        X"f9", X"03", X"ef", X"fc", X"13", X"f8", X"08", X"f4", X"20", X"f8", X"08", X"08", X"28", X"fa", X"ea", X"26", X"09", X"05", X"ea", X"1a", X"fd", X"f4", X"de", X"f7", X"23", X"ed",
                                                        X"11", X"0f", X"09", X"04", X"06", X"20", X"e7", X"0e", X"e0", X"c9", X"fd", X"f8", X"eb", X"f4", X"0e", X"fd", X"01", X"11", X"0e", X"fa", X"fe", X"18", X"cc", X"f7", X"f6", X"fb",
                                                        X"0c", X"f4", X"ff", X"fa", X"3a", X"08", X"04", X"06", X"07", X"0d", X"f7", X"2b", X"de", X"07", X"f3", X"17", X"02", X"04", X"eb", X"fc", X"19", X"f6", X"11", X"09", X"0c", X"fd",
                                                        X"f2", X"1e", X"fa", X"02", X"f5", X"eb", X"02", X"0a", X"eb", X"00", X"17", X"02", X"06", X"11", X"16", X"ec", X"e6", X"28", X"f8", X"15", X"00", X"d7", X"0e", X"09", X"07", X"fe",
                                                        X"2d", X"05", X"12", X"1b", X"13", X"f3", X"fd", X"24", X"dc", X"05", X"f8", X"ef", X"fc", X"05", X"08", X"fe", X"36", X"fe", X"f9", X"1c", X"08", X"08", X"fc", X"19", X"fa", X"07",
                                                        X"fa", X"fb", X"fb", X"ec", X"e1", X"fe", X"1b", X"02", X"11", X"16", X"01", X"0e", X"e5", X"2f", X"06", X"fd", X"e6", X"e5", X"11", X"fe", X"de", X"fe", X"0c", X"0b", X"21", X"16",
                                                        X"03", X"f0", X"00", X"2a", X"0c", X"f2", X"f2", X"d4", X"05", X"01", X"eb", X"fa", X"12", X"03", X"1c", X"13", X"f4", X"eb", X"e9", X"39", X"fa", X"ff", X"fc", X"f5", X"03", X"00",
                                                        X"e6", X"02", X"27", X"f8", X"0b", X"0a", X"25", X"f9", X"f2", X"1c", X"da", X"f9", X"f4", X"d7", X"0d", X"fc", X"e5", X"f5", X"01", X"00", X"18", X"0d", X"fb", X"f1", X"eb", X"34",
                                                        X"dd", X"f5", X"e3", X"fa", X"fc", X"f0", X"dc", X"f4", X"23", X"01", X"07", X"15", X"07", X"14", X"f8", X"11", X"0a", X"02", X"f1", X"dc", X"fb", X"f6", X"eb", X"fa", X"12", X"fe",
                                                        X"0d", X"07", X"19", X"e3", X"ec", X"35", X"0c", X"05", X"f7", X"2d", X"07", X"13", X"e1", X"f2", X"08", X"fe", X"0d", X"06", X"11", X"ff", X"fe", X"19", X"fe", X"0b", X"ef", X"1f",
                                                        X"0e", X"eb", X"f7", X"fb", X"04", X"02", X"24", X"11", X"1e", X"f3", X"fa", X"21", X"ed", X"fa", X"ea", X"01", X"09", X"e6", X"0c", X"fc", X"25", X"fe", X"0a", X"0e", X"0f", X"f3",
                                                        X"f3", X"22", X"d2", X"0a", X"ea", X"ea", X"f8", X"ea", X"e9", X"fe", X"22", X"fd", X"03", X"0d", X"14", X"fa", X"f4", X"45", X"03", X"fa", X"f5", X"28", X"02", X"e9", X"dc", X"00",
                                                        X"1b", X"03", X"0f", X"15", X"0e", X"fa", X"f8", X"2f", X"f4", X"ff", X"eb", X"d3", X"f3", X"fc", X"01", X"f8", X"28", X"06", X"12", X"0d", X"06", X"f9", X"fb", X"1c", X"eb", X"ff",
                                                        X"f1", X"12", X"14", X"0a", X"eb", X"03", X"08", X"08", X"0e", X"12", X"ff", X"fe", X"ef", X"15", X"02", X"05", X"eb", X"17", X"ff", X"f0", X"e8", X"04", X"07", X"02", X"ff", X"08",
                                                        X"ff", X"0a", X"f1", X"31", X"d1", X"00", X"ed", X"0a", X"fb", X"ee", X"e6", X"06", X"1e", X"fd", X"08", X"1b", X"08", X"ec", X"f2", X"20", X"da", X"03", X"e1", X"d4", X"01", X"f8",
                                                        X"e6", X"03", X"2a", X"f8", X"04", X"13", X"10", X"0c", X"fe", X"26", X"fd", X"01", X"f2", X"fb", X"06", X"f8", X"de", X"fd", X"19", X"0f", X"fc", X"05", X"25", X"e9", X"fd", X"46",
                                                        X"f2", X"fd", X"f2", X"25", X"0a", X"0d", X"f9", X"01", X"0b", X"12", X"08", X"07", X"1d", X"01", X"02", X"36", X"e2", X"01", X"e9", X"f6", X"fd", X"f1", X"f6", X"f4", X"2e", X"0e",
                                                        X"15", X"04", X"03", X"0d", X"ed", X"1c", X"f5", X"03", X"ec", X"e8", X"f8", X"01", X"e4", X"fc", X"13", X"0a", X"01", X"0e", X"1f", X"f1", X"ec", X"10", X"f9", X"f8", X"03", X"e3",
                                                        X"08", X"09", X"04", X"eb", X"15", X"01", X"0d", X"25", X"1a", X"ef", X"03", X"3b", X"f7", X"01", X"f1", X"03", X"07", X"01", X"ed", X"fc", X"0b", X"fd", X"19", X"0b", X"01", X"eb",
                                                        X"03", X"21", X"fb", X"10", X"f9", X"03", X"f6", X"02", X"e9", X"04", X"0c", X"f5", X"0e", X"07", X"06", X"f4", X"02", X"18", X"05", X"02", X"f7", X"f5", X"03", X"fd", X"10", X"fc",
                                                        X"18", X"ff", X"03", X"20", X"f9", X"f8", X"00", X"2d", X"13", X"12", X"f0", X"e1", X"f8", X"f3", X"e3", X"fc", X"0e", X"f8", X"0c", X"17", X"ed", X"e7", X"f1", X"2c", X"e3", X"0b",
                                                        X"f1", X"ee", X"02", X"0d", X"e9", X"03", X"30", X"fe", X"0f", X"29", X"16", X"e1", X"ec", X"2c", X"08", X"07", X"f0", X"fe", X"f6", X"f9", X"f1", X"fb", X"1b", X"07", X"04", X"0e",
                                                        X"21", X"07", X"ed", X"1f", X"e9", X"ff", X"e4", X"17", X"f2", X"ef", X"e9", X"0b", X"1e", X"06", X"03", X"17", X"1c", X"d9", X"f4", X"21", X"ed", X"fe", X"e7", X"04", X"15", X"e8",
                                                        X"dc", X"fd", X"02", X"fc", X"2c", X"15", X"09", X"f5", X"fb", X"56", X"f7", X"05", X"ec", X"cc", X"1b", X"00", X"07", X"02", X"31", X"fb");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fb";
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

