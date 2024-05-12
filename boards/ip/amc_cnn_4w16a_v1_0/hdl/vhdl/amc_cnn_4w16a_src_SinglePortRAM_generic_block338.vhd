-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block338.vhd
-- Created: 2023-06-15 16:02:58
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block338
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage106/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block338 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block338;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block338 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"d5", X"db", X"c6", X"c2", X"fc", X"d7", X"bd", X"0a", X"ca", X"9f", X"f0", X"d6", X"eb", X"fe",
                                                        X"00", X"f0", X"27", X"e7", X"f0", X"0c", X"0a", X"0b", X"30", X"eb", X"30", X"07", X"0c", X"01", X"f9", X"1e", X"da", X"f9", X"dd", X"fd", X"ee", X"33", X"fb", X"d9", X"00", X"f4",
                                                        X"ee", X"34", X"f3", X"ef", X"eb", X"fe", X"ef", X"f3", X"df", X"08", X"f7", X"de", X"15", X"10", X"eb", X"e6", X"17", X"cf", X"f5", X"15", X"f2", X"f0", X"e8", X"2c", X"2d", X"0b",
                                                        X"f4", X"e8", X"df", X"1f", X"38", X"ec", X"0b", X"1d", X"f0", X"1f", X"f3", X"fe", X"f3", X"23", X"e2", X"e4", X"0b", X"ea", X"f6", X"fa", X"15", X"f0", X"10", X"f0", X"e4", X"03",
                                                        X"0e", X"e8", X"23", X"f7", X"fe", X"e3", X"f0", X"eb", X"23", X"e9", X"f2", X"f7", X"15", X"1a", X"11", X"2d", X"04", X"fc", X"f3", X"0c", X"1c", X"05", X"ea", X"f9", X"f5", X"f3",
                                                        X"1c", X"fa", X"ec", X"10", X"f6", X"0f", X"f1", X"1f", X"fb", X"00", X"e4", X"e1", X"f3", X"18", X"08", X"2f", X"32", X"fb", X"e2", X"fa", X"07", X"2f", X"12", X"06", X"03", X"07",
                                                        X"06", X"fc", X"fc", X"23", X"fd", X"20", X"2d", X"0a", X"ea", X"c3", X"05", X"c9", X"2c", X"f5", X"08", X"ed", X"31", X"20", X"22", X"45", X"03", X"00", X"11", X"f6", X"07", X"ce",
                                                        X"12", X"25", X"f4", X"fb", X"11", X"01", X"25", X"dc", X"f2", X"32", X"0e", X"0b", X"f6", X"02", X"0a", X"f1", X"1f", X"06", X"f0", X"0e", X"fa", X"0f", X"37", X"14", X"24", X"c7",
                                                        X"08", X"d4", X"54", X"04", X"36", X"e4", X"23", X"2f", X"2b", X"1b", X"e9", X"1a", X"da", X"fe", X"0c", X"02", X"12", X"ed", X"df", X"02", X"2b", X"0d", X"08", X"03", X"fe", X"0b",
                                                        X"32", X"05", X"d6", X"11", X"12", X"30", X"f3", X"1e", X"1a", X"fa", X"ff", X"ed", X"19", X"22", X"2a", X"03", X"16", X"11", X"f4", X"f4", X"f7", X"35", X"04", X"21", X"d3", X"f3",
                                                        X"38", X"47", X"fa", X"39", X"f5", X"f1", X"25", X"09", X"d1", X"0f", X"f7", X"e4", X"1a", X"0c", X"fc", X"0e", X"fb", X"ef", X"07", X"0e", X"0b", X"f5", X"19", X"02", X"14", X"de",
                                                        X"d3", X"2a", X"16", X"1c", X"39", X"f2", X"de", X"18", X"3f", X"49", X"e2", X"08", X"f6", X"11", X"35", X"0a", X"fd", X"52", X"fa", X"23", X"2e", X"12", X"fd", X"07", X"f3", X"dc",
                                                        X"2c", X"f7", X"f9", X"08", X"37", X"0d", X"ec", X"46", X"0b", X"db", X"0f", X"0f", X"15", X"c3", X"08", X"38", X"02", X"06", X"44", X"14", X"f8", X"12", X"1e", X"ed", X"10", X"da",
                                                        X"da", X"e6", X"23", X"1c", X"fe", X"ea", X"f6", X"1c", X"41", X"ff", X"1f", X"0a", X"fa", X"f9", X"fb", X"fd", X"d5", X"0b", X"3d", X"2a", X"ef", X"fc", X"fc", X"11", X"2f", X"3a",
                                                        X"fe", X"00", X"13", X"06", X"e7", X"e2", X"42", X"e9", X"07", X"f8", X"ff", X"2c", X"f5", X"0b", X"37", X"ec", X"ed", X"f3", X"03", X"04", X"fc", X"10", X"c7", X"f4", X"2f", X"3a",
                                                        X"02", X"17", X"2a", X"00", X"23", X"e8", X"17", X"0e", X"22", X"d8", X"fe", X"25", X"06", X"fe", X"f5", X"0f", X"09", X"1f", X"1e", X"23", X"f5", X"fa", X"e6", X"0a", X"e7", X"04",
                                                        X"f6", X"c2", X"25", X"fc", X"f6", X"23", X"fa", X"1c", X"1b", X"f6", X"2a", X"f9", X"ff", X"e6", X"34", X"e1", X"03", X"34", X"0a", X"33", X"fa", X"d4", X"06", X"1a", X"2c", X"ff",
                                                        X"fa", X"2f", X"34", X"01", X"f2", X"38", X"19", X"ec", X"2a", X"f2", X"16", X"13", X"f9", X"35", X"ed", X"e7", X"ee", X"26", X"fa", X"14", X"0f", X"14", X"0b", X"36", X"fd", X"f8",
                                                        X"ee", X"28", X"0e", X"f1", X"0f", X"0b", X"f0", X"fa", X"20", X"04", X"15", X"c5", X"fe", X"d9", X"f8", X"f9", X"1d", X"06", X"01", X"42", X"ef", X"0b", X"1c", X"f9", X"18", X"04",
                                                        X"3d", X"fa", X"f3", X"38", X"07", X"ff", X"07", X"c5", X"09", X"d7", X"1c", X"f6", X"fd", X"ff", X"13", X"f6", X"20", X"43", X"fb", X"17", X"3a", X"ed", X"2c", X"16", X"01", X"ff",
                                                        X"de", X"f3", X"22", X"14", X"0b", X"e1", X"04", X"36", X"0b", X"2a", X"1d", X"09", X"e3", X"f9", X"fb", X"db", X"07", X"fc", X"dd", X"f5", X"fa", X"0d", X"e9", X"db", X"f7", X"f0",
                                                        X"0b", X"e8", X"f8", X"31", X"e3", X"c3", X"e4", X"0c", X"ed", X"ff", X"2b", X"e2", X"01", X"fc", X"1a", X"08", X"1a", X"f8", X"16", X"00", X"fb", X"22", X"ff", X"02", X"e2", X"21",
                                                        X"17", X"e1", X"07", X"e6", X"12", X"f2", X"24", X"16", X"fd", X"03", X"00", X"25", X"1f", X"eb", X"fe", X"0d", X"09", X"f1", X"ed", X"3f", X"17", X"ed", X"2c", X"14", X"f2", X"f4",
                                                        X"0c", X"e0", X"f0", X"0c", X"fd", X"f7", X"08", X"fa", X"f7", X"c5", X"fa", X"12", X"22", X"00", X"dc", X"f1", X"e4", X"05", X"04", X"24", X"0b", X"ff", X"e2", X"ed", X"fc", X"07",
                                                        X"ef", X"d7", X"d5", X"fa", X"09", X"e2", X"01", X"09", X"16", X"f4", X"e8", X"f7", X"03", X"02", X"f9", X"25", X"ee", X"1f", X"10", X"fb", X"f9", X"b9", X"09", X"de", X"12", X"fa",
                                                        X"f7", X"f4", X"18", X"fa", X"1f", X"c2", X"11", X"f6", X"da", X"e5", X"f8", X"23", X"e8", X"3e", X"14", X"f6", X"1c", X"f4", X"01", X"fa", X"f1", X"e4", X"06", X"29", X"19", X"08",
                                                        X"f3", X"ce", X"04", X"12", X"ef", X"20", X"ff", X"08", X"db", X"0d", X"e6", X"4a", X"f3", X"ed", X"00", X"f1", X"21", X"ff", X"fa", X"28", X"0b", X"f4", X"13", X"16", X"27", X"c8",
                                                        X"16", X"e8", X"0c", X"35", X"f9", X"d9", X"ee", X"ee", X"fb", X"f4", X"f3", X"f1", X"1e", X"ea", X"04", X"f2", X"eb", X"cf", X"02", X"e0", X"22", X"0f", X"fe", X"22", X"fa", X"2c",
                                                        X"1f", X"18", X"29", X"de", X"ee", X"08", X"13", X"26", X"e1", X"ea", X"0f", X"fb", X"e1", X"b3", X"17", X"f9", X"04", X"f4", X"e3", X"02", X"1b", X"e8", X"17", X"1f", X"1d", X"2a",
                                                        X"da", X"07", X"f0", X"2d", X"1d", X"00", X"eb", X"f3", X"f4", X"fc", X"08", X"12", X"e4", X"0d", X"fb", X"d4", X"f9", X"0a", X"10", X"38", X"fe", X"fc", X"24", X"18", X"21", X"14",
                                                        X"f4", X"10", X"da", X"38", X"10", X"f4", X"0d", X"03", X"37", X"0e", X"10", X"09", X"e0", X"0c", X"fe", X"fe", X"f6", X"ee", X"25", X"2f", X"fa", X"f5", X"c2", X"23", X"0c", X"bc",
                                                        X"13", X"cb", X"1d", X"f9", X"2c", X"0f", X"f9", X"13", X"19", X"10", X"04", X"f1", X"2c", X"09", X"0f", X"c4", X"ea", X"3d", X"de", X"ee", X"24", X"04", X"df", X"14", X"f0", X"d0",
                                                        X"e8", X"11", X"d2", X"d4", X"ef", X"e8", X"0f", X"e6", X"11", X"0a", X"c2", X"ee", X"30", X"f7", X"f0", X"fe", X"f8", X"e0", X"23", X"08", X"0f", X"f9", X"03", X"0c", X"10", X"12",
                                                        X"1f", X"ee", X"14", X"13", X"e7", X"12", X"ee", X"09", X"12", X"0c", X"06", X"07", X"01", X"2d", X"f1", X"fc", X"0c", X"0e", X"e3", X"ef", X"e9", X"2d", X"fa", X"14", X"f0", X"e6",
                                                        X"fe", X"04", X"0b", X"2b", X"e1", X"fe", X"f0", X"15", X"f3", X"f1", X"da", X"f4", X"00", X"e4", X"f0", X"13", X"ea", X"02", X"07", X"0a", X"ca", X"10", X"e0", X"12", X"21", X"f3",
                                                        X"24", X"02", X"16", X"00", X"e0", X"09", X"e8", X"07", X"fc", X"cb", X"06", X"04", X"24", X"ed", X"ce", X"e8", X"fc", X"e1", X"f2", X"21", X"1e", X"fa", X"1e", X"cf", X"f1", X"26",
                                                        X"04", X"22", X"f0", X"05", X"e3", X"fd", X"de", X"d9", X"da", X"e6", X"ea", X"06", X"0f", X"ef", X"04", X"f5", X"f9", X"fe", X"ed", X"0c", X"e0", X"fe", X"ef", X"c4", X"fc", X"f8",
                                                        X"25", X"05", X"23", X"2b", X"e1", X"d1", X"1b", X"0b", X"ed", X"0d", X"1e", X"0d", X"e8", X"25", X"e0", X"e3", X"2f", X"f9", X"0e", X"2b", X"f4", X"29", X"ed", X"12", X"d6", X"e2",
                                                        X"08", X"07", X"28", X"b3", X"e5", X"dd", X"dc", X"ef", X"13", X"17", X"02", X"b8", X"e6", X"fc", X"03", X"06", X"12", X"16", X"27", X"c7", X"0a", X"e6", X"04", X"e9", X"26", X"27",
                                                        X"ff", X"2f", X"13", X"0b", X"f5", X"00", X"e9", X"ff", X"c8", X"1c", X"00", X"16", X"f9", X"18", X"ec", X"d3", X"f1", X"dc", X"df", X"0c", X"ff", X"e8", X"da", X"f1", X"03", X"01",
                                                        X"ef", X"1d", X"2a", X"ec", X"ef", X"15", X"10", X"05", X"df", X"f1", X"f5", X"02", X"f8", X"f1", X"df", X"c7", X"16", X"ed", X"d5", X"12", X"3b", X"ad", X"d8", X"11", X"f1", X"05",
                                                        X"12", X"10", X"ec", X"fa", X"0c", X"ea", X"dd", X"f9", X"1d", X"f6", X"cf", X"de", X"f7", X"f5", X"f1", X"01", X"f1", X"f4", X"0b", X"ed", X"01", X"23", X"e1", X"05", X"ed", X"fb",
                                                        X"e6", X"e1", X"06", X"ec", X"0d", X"e6", X"f1", X"ee", X"0a", X"fe", X"d6", X"0c", X"04", X"fa", X"dc", X"ee", X"0a", X"03", X"e5", X"aa", X"df", X"ea", X"d8", X"0b", X"ce", X"ec",
                                                        X"03", X"ea", X"04", X"f8", X"b6", X"ff", X"ff", X"b7", X"05", X"b8", X"0f", X"f3", X"ea", X"1d", X"f4", X"09", X"eb", X"dd", X"ea", X"eb", X"d3", X"f5", X"f2", X"c2", X"e5", X"a6",
                                                        X"cc", X"ea", X"fc", X"fa", X"ea", X"f8", X"f9", X"ae", X"e3", X"08", X"cc", X"0d", X"e9", X"9d", X"da", X"c5", X"e1", X"fc", X"dd", X"05", X"eb", X"e3", X"cd", X"d8", X"c1", X"ef",
                                                        X"0a", X"12", X"c2", X"f8", X"ec", X"e8", X"fb", X"eb", X"ce", X"d6", X"e2", X"cd", X"d5", X"ad", X"fc", X"00", X"07", X"f0", X"d3", X"e1", X"de", X"dc", X"f5", X"0c", X"0e", X"07",
                                                        X"01", X"d5", X"c6", X"bc", X"e2", X"06", X"ed", X"f3", X"dc", X"9c", X"c2", X"c5", X"d7", X"f5", X"e8", X"f0", X"d6", X"f9", X"d0", X"dd", X"cd", X"da", X"c1", X"f3", X"d8", X"e0",
                                                        X"f1", X"ce", X"d0", X"dd", X"19", X"ef", X"f1", X"eb", X"d6", X"f4", X"e6", X"f1", X"d9", X"e6", X"de", X"ae", X"ba", X"d4", X"c9", X"0f", X"d4", X"ef", X"ef", X"fa", X"ee", X"c5",
                                                        X"eb", X"f7", X"dd", X"f3", X"c8", X"d5", X"f3", X"de", X"d9", X"01", X"ee", X"f1", X"f1", X"e2", X"f5", X"a5", X"e0", X"fc", X"03", X"e5", X"f5", X"a3", X"e1", X"fc", X"fd", X"0d",
                                                        X"cd", X"e0", X"db", X"ff", X"cb", X"da", X"fd", X"de", X"ff", X"f7", X"f0", X"d3", X"e1", X"d6", X"f6", X"ec", X"05", X"03", X"cb", X"fa", X"eb", X"00", X"e2", X"17", X"c7", X"06",
                                                        X"c4", X"b6", X"dc", X"16", X"0f", X"ed", X"0b", X"f1", X"0b", X"fa", X"f6", X"f5", X"ef", X"00", X"d4", X"09", X"ef", X"ed", X"f7", X"ee", X"0c", X"d8", X"d8", X"ff", X"0a", X"fb",
                                                        X"de", X"cb", X"0e", X"cc", X"f1", X"f7", X"13", X"bd", X"eb", X"ef", X"e7", X"f6", X"fc", X"01", X"e4", X"f5", X"e7", X"30", X"de", X"2e", X"f7", X"e9", X"df", X"b7", X"d4", X"eb",
                                                        X"17", X"00", X"ed", X"03", X"f3", X"0b", X"fd", X"e6", X"f4", X"e5", X"07", X"06", X"18", X"2b", X"f4", X"3a", X"09", X"19", X"19", X"fa", X"0b", X"0a", X"eb", X"e5", X"e6", X"39",
                                                        X"ea", X"07", X"dc", X"3c", X"13", X"e6", X"ed", X"0a", X"f0", X"0e", X"ed", X"fa", X"f5", X"db", X"07", X"de", X"fa", X"f5", X"f2", X"1e", X"ef", X"42", X"ec", X"18", X"16", X"fc",
                                                        X"d4", X"f9", X"f3", X"2f", X"eb", X"23", X"ed", X"10", X"00", X"43", X"f6", X"3b", X"ef", X"f4", X"e8", X"fb", X"09", X"0f", X"f4", X"f6", X"07", X"12", X"2a", X"07", X"20", X"14",
                                                        X"1d", X"45", X"0d", X"fb", X"31", X"13", X"12", X"29", X"e3", X"20", X"0e", X"fc", X"07", X"fd", X"d3", X"10", X"00", X"2d", X"e2", X"f2", X"03", X"e1", X"1c", X"f5", X"21", X"ff",
                                                        X"22", X"1c", X"2e", X"f2", X"01", X"4a", X"07", X"38", X"1c", X"06", X"ca", X"13", X"14", X"1b", X"32", X"ee", X"07", X"29", X"48", X"fc", X"e7", X"ec", X"fc", X"33", X"0c", X"24",
                                                        X"28", X"06", X"43", X"fb", X"fa", X"4c", X"28", X"24", X"d8", X"f7", X"e7", X"fe", X"19", X"4b", X"ef", X"f5", X"16", X"03", X"ec", X"ef", X"ff", X"d0", X"04", X"e2", X"0e", X"01",
                                                        X"e8", X"10", X"e8", X"3d", X"34", X"f4", X"08", X"27", X"2b", X"fa", X"ec", X"fd", X"1b", X"01", X"0c", X"df", X"fd", X"24", X"f1", X"39", X"e7", X"01", X"39", X"0c", X"1c", X"fb",
                                                        X"15", X"30", X"26", X"01", X"dc", X"10", X"e7", X"03", X"14", X"38", X"ea", X"f9", X"31", X"05", X"36", X"f9", X"00", X"09", X"06", X"1b", X"ee", X"08", X"e2", X"47", X"00", X"1a",
                                                        X"dd", X"0e", X"e4", X"f8", X"df", X"f6", X"0e", X"38", X"14", X"06", X"04", X"f5", X"e6", X"33", X"02", X"10", X"ed", X"f2", X"e6", X"15", X"0e", X"e4", X"2c", X"f8", X"0c", X"05",
                                                        X"19", X"f4", X"28", X"df", X"f3", X"26", X"04", X"16", X"1b", X"fb", X"fd", X"f4", X"12", X"21", X"19", X"32", X"1f", X"06", X"08", X"fe", X"f7", X"09", X"13", X"f6", X"1c", X"e1",
                                                        X"17", X"e7", X"0e", X"20", X"13", X"da", X"dc", X"09", X"cc", X"ed", X"06", X"d0", X"f7", X"fc", X"22", X"12", X"d7", X"07", X"03", X"cd", X"e8", X"2b", X"01", X"03", X"ca", X"23",
                                                        X"ce", X"37", X"1b", X"0a", X"d0", X"07", X"ff", X"eb", X"0a", X"fa", X"df", X"fd", X"d1", X"17", X"db", X"c8", X"e7", X"28", X"f5", X"0e", X"05", X"f6", X"fe", X"1c", X"18", X"08",
                                                        X"fe", X"23", X"27", X"fa", X"eb", X"f1", X"0d", X"09", X"11", X"f6", X"f1", X"fd", X"0b", X"fe", X"ed", X"d4", X"e0", X"e6", X"03", X"f5", X"13", X"ca", X"1d", X"1e", X"04", X"f5",
                                                        X"fa", X"fe", X"ee", X"ec", X"e9", X"f1", X"0d", X"0f", X"02", X"01", X"e9", X"0d", X"05", X"de", X"d7", X"e6", X"48", X"07", X"26", X"e9", X"09", X"26", X"e8", X"36", X"13", X"0a",
                                                        X"00", X"1a", X"fe", X"ee", X"20", X"04", X"e4", X"e0", X"26", X"e7", X"e0", X"cd", X"1f", X"f0", X"f4", X"ee", X"03", X"ca", X"ef", X"14", X"0f", X"10", X"46", X"0f", X"38", X"0d",
                                                        X"0f", X"0c", X"e9", X"db", X"0c", X"f1", X"f4", X"2d", X"ef", X"e4", X"15", X"e3", X"0d", X"0c", X"fa", X"0a", X"24", X"33", X"fb", X"e1", X"08", X"01", X"e1", X"4d", X"f4", X"24",
                                                        X"11", X"e8", X"d4", X"f9", X"26", X"e6", X"03", X"f2", X"01", X"21", X"e9", X"fe", X"26", X"d0", X"00", X"e4", X"19", X"ef", X"ed", X"0e", X"20", X"ef", X"0a", X"1c", X"0b", X"fb",
                                                        X"31", X"fb", X"0b", X"09", X"f2", X"f0", X"08", X"ff", X"fc", X"1a", X"db", X"0b", X"29", X"f5", X"03", X"e8", X"31", X"ef", X"01", X"4d", X"05", X"3e", X"fe", X"1f", X"2a", X"01",
                                                        X"0a", X"f2", X"1b", X"49", X"17", X"3a", X"29", X"0a", X"0c", X"04", X"1e", X"02", X"e8", X"1a", X"27", X"e0", X"f3", X"12", X"1e", X"d6", X"19", X"fc", X"cf", X"fe", X"f9", X"09",
                                                        X"19", X"1e", X"e6", X"16", X"fa", X"f1", X"ff", X"f8", X"eb", X"fb", X"fd", X"ee", X"f9", X"f0", X"14", X"28", X"0d", X"18", X"09", X"1b", X"21", X"fc", X"f1", X"18", X"f2", X"f0",
                                                        X"eb", X"fe", X"03", X"e7", X"e9", X"17", X"f7", X"fe", X"16", X"10", X"0f", X"fa", X"0e", X"13", X"2a", X"59", X"23", X"20", X"e4", X"15", X"fb", X"50", X"09", X"3d", X"08", X"ed",
                                                        X"0b", X"0a", X"de", X"0a", X"f2", X"e4", X"14", X"06", X"fe", X"e8", X"e1", X"12", X"f9", X"f1", X"f6", X"fb", X"fe", X"0c", X"33", X"fa", X"26", X"da", X"10", X"e9", X"41", X"ef",
                                                        X"0a", X"e7", X"0a", X"51", X"29", X"e9", X"05", X"e8", X"f2", X"03", X"1d", X"4b", X"f3", X"4b", X"06", X"e2", X"e3", X"d2", X"fc", X"ee", X"24", X"20", X"f4", X"04", X"26", X"1b",
                                                        X"fb", X"47", X"1c", X"de", X"fe", X"fc", X"16", X"cc", X"fc", X"2c", X"1d", X"e2", X"f1", X"ef", X"1e", X"15", X"1b", X"2e", X"01", X"f1", X"fc", X"e9", X"ce", X"e1", X"18", X"cb",
                                                        X"e3", X"fe", X"2d", X"0d", X"ec", X"23", X"eb", X"4b", X"ff", X"27", X"07", X"ff", X"27", X"ad", X"f7", X"2c", X"0e", X"fd", X"f6", X"08");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"08";
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

