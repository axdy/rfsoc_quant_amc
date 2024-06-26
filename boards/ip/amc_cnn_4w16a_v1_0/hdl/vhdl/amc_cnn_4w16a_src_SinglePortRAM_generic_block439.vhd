-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block439.vhd
-- Created: 2023-06-15 16:03:11
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block439
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage83/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block439 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block439;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block439 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"18", X"e7", X"f3", X"3e", X"25", X"02", X"09", X"fb", X"f3", X"ce", X"fc", X"16", X"d9", X"fb",
                                                        X"3c", X"f7", X"eb", X"03", X"2f", X"00", X"03", X"1d", X"01", X"06", X"f9", X"e0", X"04", X"16", X"ee", X"0a", X"eb", X"0c", X"1e", X"ec", X"e6", X"17", X"ed", X"05", X"14", X"fd",
                                                        X"0f", X"bf", X"15", X"cd", X"14", X"ed", X"f4", X"f2", X"ff", X"02", X"32", X"21", X"ed", X"04", X"10", X"fa", X"20", X"12", X"1a", X"17", X"1d", X"f1", X"fc", X"21", X"31", X"1c",
                                                        X"fe", X"e2", X"f1", X"c2", X"07", X"05", X"cc", X"a9", X"f3", X"14", X"03", X"13", X"fe", X"d9", X"ec", X"12", X"e8", X"ce", X"10", X"17", X"03", X"10", X"11", X"3a", X"fe", X"df",
                                                        X"16", X"f9", X"14", X"0f", X"e4", X"ec", X"1a", X"ea", X"dd", X"09", X"49", X"e7", X"23", X"c3", X"f4", X"c5", X"18", X"03", X"e5", X"e5", X"1c", X"fd", X"fa", X"db", X"07", X"e8",
                                                        X"dd", X"0b", X"30", X"31", X"fb", X"f8", X"e5", X"02", X"db", X"17", X"13", X"08", X"f9", X"39", X"03", X"fb", X"16", X"e9", X"ff", X"fe", X"0e", X"39", X"dd", X"07", X"ea", X"1e",
                                                        X"0b", X"0a", X"16", X"0a", X"fb", X"f8", X"fe", X"03", X"05", X"d2", X"02", X"cf", X"dc", X"07", X"23", X"dc", X"16", X"f6", X"fc", X"21", X"fd", X"08", X"fb", X"fc", X"01", X"bd",
                                                        X"03", X"cb", X"df", X"0f", X"e2", X"1c", X"06", X"fe", X"1a", X"df", X"dd", X"0d", X"d7", X"09", X"0a", X"b7", X"0b", X"30", X"04", X"eb", X"0b", X"0b", X"09", X"ee", X"e2", X"0a",
                                                        X"e4", X"db", X"1d", X"d4", X"d7", X"08", X"04", X"fb", X"d0", X"da", X"12", X"0e", X"d3", X"f2", X"02", X"eb", X"e8", X"20", X"e4", X"10", X"0e", X"04", X"f0", X"20", X"eb", X"fe",
                                                        X"e0", X"e9", X"ed", X"06", X"ea", X"c1", X"f8", X"22", X"31", X"f3", X"22", X"24", X"02", X"e1", X"f4", X"f5", X"2e", X"fa", X"fe", X"de", X"f4", X"ce", X"f5", X"c9", X"f9", X"ff",
                                                        X"1a", X"01", X"f1", X"f5", X"1f", X"00", X"04", X"f9", X"00", X"f8", X"29", X"41", X"ea", X"f3", X"0a", X"f7", X"ea", X"ef", X"09", X"d5", X"11", X"0a", X"d6", X"1b", X"e0", X"f4",
                                                        X"f8", X"d2", X"df", X"34", X"1c", X"0f", X"14", X"dc", X"11", X"e4", X"e7", X"01", X"f8", X"f4", X"30", X"ec", X"06", X"18", X"f1", X"e5", X"15", X"ed", X"23", X"d3", X"ec", X"0c",
                                                        X"07", X"1c", X"d0", X"16", X"f3", X"e7", X"f5", X"08", X"05", X"c5", X"2d", X"f0", X"1e", X"df", X"f9", X"cc", X"f8", X"06", X"26", X"02", X"0c", X"f4", X"17", X"10", X"11", X"16",
                                                        X"28", X"06", X"02", X"07", X"0d", X"c5", X"0c", X"03", X"ec", X"ed", X"d6", X"eb", X"fd", X"fe", X"dd", X"31", X"dc", X"0b", X"2e", X"13", X"fc", X"16", X"f8", X"e6", X"d7", X"07",
                                                        X"1a", X"dc", X"1e", X"25", X"03", X"03", X"ef", X"f7", X"fa", X"46", X"11", X"03", X"dd", X"10", X"1c", X"0a", X"e7", X"f9", X"14", X"d7", X"ff", X"13", X"02", X"e7", X"e4", X"d6",
                                                        X"f0", X"32", X"05", X"fd", X"d9", X"08", X"f2", X"f9", X"05", X"17", X"d1", X"c6", X"e6", X"04", X"d5", X"da", X"01", X"19", X"15", X"ec", X"25", X"0e", X"28", X"fc", X"09", X"c7",
                                                        X"eb", X"3a", X"30", X"09", X"3e", X"35", X"09", X"df", X"2a", X"07", X"24", X"dd", X"fb", X"f7", X"fd", X"4c", X"ef", X"fe", X"cb", X"f4", X"32", X"41", X"17", X"e8", X"f0", X"fb",
                                                        X"34", X"1d", X"d5", X"10", X"ee", X"2f", X"24", X"0b", X"d3", X"17", X"1e", X"bb", X"fd", X"f4", X"e1", X"21", X"f0", X"f8", X"e2", X"fa", X"21", X"4e", X"f2", X"d0", X"27", X"01",
                                                        X"05", X"d3", X"21", X"43", X"fc", X"00", X"f9", X"ef", X"e4", X"09", X"27", X"4d", X"1f", X"3c", X"f0", X"f5", X"02", X"47", X"04", X"eb", X"d8", X"13", X"07", X"17", X"25", X"e3",
                                                        X"0c", X"5a", X"02", X"e3", X"e4", X"06", X"e1", X"ce", X"12", X"0e", X"e7", X"f7", X"0c", X"0c", X"14", X"26", X"11", X"38", X"1f", X"16", X"e7", X"03", X"df", X"29", X"f9", X"09",
                                                        X"ce", X"19", X"07", X"20", X"29", X"10", X"f8", X"29", X"1b", X"10", X"1b", X"d8", X"22", X"24", X"17", X"10", X"e6", X"0a", X"e8", X"fa", X"07", X"14", X"1b", X"24", X"1b", X"b2",
                                                        X"d5", X"14", X"44", X"e8", X"ff", X"ee", X"37", X"0e", X"3a", X"06", X"f2", X"2e", X"29", X"26", X"09", X"1b", X"46", X"0b", X"0f", X"07", X"1e", X"4d", X"45", X"ff", X"22", X"e1",
                                                        X"35", X"0c", X"f5", X"f4", X"12", X"24", X"07", X"15", X"e1", X"13", X"00", X"1b", X"07", X"04", X"21", X"10", X"33", X"f8", X"3e", X"3d", X"22", X"cb", X"39", X"fe", X"4a", X"ec",
                                                        X"f3", X"4e", X"21", X"17", X"f0", X"01", X"19", X"15", X"f9", X"58", X"13", X"14", X"3d", X"f3", X"f4", X"f0", X"2e", X"23", X"17", X"2a", X"45", X"e9", X"f6", X"05", X"1f", X"d3",
                                                        X"2a", X"15", X"fe", X"15", X"11", X"5c", X"0a", X"08", X"ed", X"f6", X"f3", X"11", X"0e", X"18", X"07", X"57", X"fc", X"1b", X"51", X"01", X"23", X"ec", X"21", X"0d", X"21", X"0a",
                                                        X"0b", X"fb", X"26", X"03", X"29", X"4f", X"ff", X"2e", X"23", X"12", X"0b", X"5b", X"20", X"04", X"10", X"0e", X"f8", X"10", X"25", X"ee", X"1a", X"f2", X"14", X"d3", X"16", X"00",
                                                        X"44", X"0d", X"1a", X"f5", X"2f", X"04", X"27", X"1d", X"e5", X"27", X"07", X"3a", X"0f", X"e0", X"f3", X"ed", X"e3", X"00", X"18", X"e2", X"1c", X"1b", X"0f", X"01", X"11", X"fe",
                                                        X"ed", X"0e", X"f3", X"2d", X"31", X"12", X"1d", X"43", X"f0", X"23", X"17", X"f3", X"f3", X"df", X"e1", X"21", X"01", X"fe", X"f7", X"d8", X"d7", X"12", X"ff", X"b0", X"0d", X"16",
                                                        X"1a", X"ea", X"f3", X"01", X"0f", X"f5", X"f3", X"2c", X"dc", X"d6", X"c5", X"06", X"eb", X"1a", X"06", X"fd", X"f7", X"f2", X"1b", X"f5", X"2a", X"05", X"f4", X"b6", X"f7", X"01",
                                                        X"09", X"fe", X"22", X"25", X"ff", X"f1", X"1e", X"11", X"13", X"05", X"f3", X"ca", X"f8", X"e1", X"f2", X"fa", X"d3", X"eb", X"f7", X"ff", X"e9", X"e4", X"e2", X"0a", X"1c", X"18",
                                                        X"fc", X"0c", X"ff", X"c8", X"e4", X"fa", X"d8", X"f7", X"21", X"b0", X"0d", X"e8", X"c8", X"fa", X"05", X"13", X"dd", X"ea", X"f6", X"0e", X"df", X"ca", X"f4", X"f7", X"f3", X"a6",
                                                        X"0a", X"f5", X"f5", X"e7", X"fb", X"fb", X"ea", X"d2", X"de", X"fe", X"e9", X"e1", X"f0", X"f5", X"32", X"a7", X"ee", X"ca", X"de", X"ef", X"1d", X"e9", X"e7", X"d9", X"d5", X"bb",
                                                        X"de", X"00", X"b0", X"e5", X"00", X"a3", X"ee", X"d4", X"08", X"02", X"e3", X"f3", X"e3", X"c3", X"df", X"b7", X"c7", X"e1", X"d0", X"fd", X"d9", X"f4", X"e1", X"c9", X"08", X"ec",
                                                        X"e8", X"f2", X"ce", X"fd", X"d8", X"b0", X"cf", X"f9", X"ec", X"f6", X"e7", X"d3", X"e2", X"ef", X"e2", X"ec", X"f4", X"06", X"ee", X"0c", X"f8", X"a0", X"d9", X"f7", X"fd", X"0e",
                                                        X"c3", X"bc", X"d2", X"f0", X"ff", X"fa", X"e2", X"de", X"f9", X"ee", X"0b", X"fa", X"db", X"0f", X"c2", X"f7", X"b5", X"e6", X"ff", X"aa", X"cc", X"00", X"dd", X"ec", X"e9", X"ef",
                                                        X"dc", X"d0", X"d7", X"ff", X"cc", X"d6", X"e9", X"dc", X"01", X"ab", X"ea", X"eb", X"dd", X"ef", X"f4", X"d9", X"f1", X"d3", X"0a", X"ef", X"e6", X"05", X"be", X"d8", X"fd", X"dc",
                                                        X"d1", X"ed", X"dc", X"db", X"db", X"d9", X"d8", X"af", X"c7", X"0f", X"fc", X"e8", X"de", X"9e", X"f6", X"0c", X"d4", X"f5", X"09", X"f2", X"ed", X"f3", X"c4", X"b7", X"d4", X"d9",
                                                        X"d9", X"fb", X"06", X"c8", X"ed", X"b7", X"f9", X"ed", X"cc", X"ec", X"e5", X"0f", X"fd", X"b7", X"c5", X"1c", X"c2", X"0c", X"e5", X"a2", X"e8", X"e2", X"c4", X"fc", X"f3", X"0c",
                                                        X"e3", X"ec", X"d5", X"1f", X"e3", X"19", X"c9", X"e7", X"f5", X"ec", X"f1", X"23", X"fd", X"e5", X"10", X"0d", X"02", X"ec", X"01", X"b9", X"dc", X"d9", X"fd", X"03", X"e5", X"15",
                                                        X"fb", X"c4", X"03", X"f4", X"10", X"fd", X"1a", X"e8", X"d0", X"b2", X"ba", X"ec", X"e2", X"0d", X"dd", X"ac", X"eb", X"cc", X"e3", X"f0", X"c9", X"f9", X"f6", X"fa", X"dd", X"f7",
                                                        X"d5", X"fe", X"11", X"00", X"d5", X"b6", X"f4", X"bd", X"e1", X"f8", X"d1", X"0f", X"fa", X"c6", X"f9", X"fd", X"df", X"e8", X"a2", X"08", X"1d", X"fd", X"f0", X"fc", X"d5", X"fa",
                                                        X"0d", X"fb", X"fb", X"05", X"e3", X"c9", X"fa", X"e6", X"ee", X"fd", X"be", X"09", X"15", X"01", X"d9", X"0e", X"26", X"fc", X"04", X"f3", X"f0", X"b8", X"f9", X"e0", X"f8", X"05",
                                                        X"02", X"c6", X"da", X"1e", X"13", X"ea", X"fe", X"df", X"e3", X"e3", X"07", X"bf", X"e5", X"fc", X"db", X"ff", X"08", X"b7", X"02", X"f3", X"fd", X"f6", X"e3", X"f6", X"07", X"f1",
                                                        X"f8", X"27", X"0d", X"13", X"37", X"10", X"f2", X"fe", X"07", X"da", X"f8", X"fb", X"10", X"03", X"db", X"f5", X"d6", X"0d", X"d0", X"00", X"02", X"fb", X"e4", X"b2", X"00", X"f0",
                                                        X"d2", X"f5", X"24", X"e8", X"1e", X"01", X"f8", X"c9", X"ef", X"e1", X"cb", X"04", X"05", X"be", X"02", X"3c", X"f3", X"17", X"07", X"e8", X"12", X"16", X"0a", X"02", X"d6", X"22",
                                                        X"d1", X"eb", X"04", X"18", X"ff", X"c9", X"28", X"f2", X"0e", X"0a", X"e9", X"10", X"11", X"c2", X"f5", X"ee", X"19", X"e6", X"e6", X"1a", X"06", X"3a", X"e3", X"0a", X"09", X"f4",
                                                        X"05", X"13", X"f9", X"f0", X"fb", X"ec", X"c8", X"fc", X"f5", X"fa", X"f5", X"2f", X"22", X"23", X"12", X"05", X"0a", X"e4", X"01", X"13", X"01", X"44", X"22", X"07", X"d6", X"45",
                                                        X"14", X"ed", X"d5", X"f6", X"e1", X"02", X"f7", X"01", X"e4", X"4c", X"06", X"ff", X"ff", X"06", X"26", X"06", X"1b", X"12", X"13", X"f8", X"f1", X"fb", X"fb", X"0f", X"19", X"c8",
                                                        X"04", X"fc", X"0d", X"0b", X"df", X"e0", X"0d", X"06", X"13", X"e8", X"08", X"1c", X"de", X"fc", X"fe", X"3b", X"18", X"05", X"ee", X"0c", X"1a", X"e8", X"00", X"0c", X"0a", X"02",
                                                        X"0d", X"f4", X"0d", X"f1", X"1f", X"b5", X"01", X"05", X"e1", X"f9", X"1b", X"34", X"02", X"27", X"dc", X"11", X"2e", X"f6", X"fc", X"28", X"13", X"46", X"09", X"e2", X"12", X"09",
                                                        X"17", X"26", X"11", X"45", X"1b", X"23", X"fe", X"03", X"f4", X"f5", X"e3", X"fe", X"e7", X"e4", X"e2", X"05", X"26", X"1d", X"06", X"0b", X"ed", X"ee", X"f3", X"fa", X"27", X"fe",
                                                        X"0b", X"01", X"f7", X"fa", X"0f", X"ea", X"e3", X"f2", X"0c", X"f1", X"e3", X"0b", X"00", X"fc", X"16", X"19", X"de", X"01", X"f2", X"24", X"09", X"f9", X"e7", X"de", X"04", X"12",
                                                        X"fb", X"0f", X"0e", X"13", X"ff", X"ef", X"18", X"1e", X"f7", X"05", X"df", X"f1", X"11", X"3f", X"07", X"1b", X"21", X"e9", X"2e", X"ee", X"f4", X"0e", X"df", X"32", X"11", X"17",
                                                        X"e4", X"e0", X"0c", X"02", X"1a", X"29", X"e7", X"0a", X"1c", X"f2", X"ed", X"0e", X"35", X"2d", X"f2", X"0f", X"0d", X"00", X"e8", X"bb", X"f0", X"09", X"f9", X"07", X"e0", X"ef",
                                                        X"24", X"f7", X"da", X"c7", X"11", X"3c", X"46", X"f0", X"e2", X"04", X"fc", X"df", X"19", X"f5", X"13", X"0c", X"fd", X"03", X"ec", X"d6", X"03", X"d9", X"e9", X"05", X"16", X"e5",
                                                        X"1e", X"54", X"00", X"fc", X"0d", X"06", X"d9", X"e6", X"21", X"e2", X"ee", X"27", X"29", X"dd", X"34", X"3c", X"04", X"1e", X"19", X"19", X"25", X"d3", X"e8", X"f5", X"fc", X"3f",
                                                        X"28", X"f7", X"24", X"ec", X"18", X"e8", X"05", X"fd", X"fa", X"ff", X"ea", X"fc", X"10", X"1f", X"0f", X"22", X"0b", X"17", X"e2", X"eb", X"3c", X"1a", X"0a", X"ea", X"18", X"fb",
                                                        X"1f", X"1f", X"26", X"fe", X"14", X"d0", X"1b", X"04", X"38", X"e5", X"10", X"3d", X"0d", X"2a", X"ec", X"11", X"f4", X"1d", X"3d", X"fe", X"16", X"35", X"19", X"df", X"53", X"f1",
                                                        X"0b", X"ff", X"31", X"08", X"00", X"24", X"f9", X"e6", X"e2", X"37", X"21", X"2f", X"2a", X"d7", X"21", X"f7", X"2c", X"f3", X"23", X"29", X"11", X"06", X"04", X"09", X"f0", X"09",
                                                        X"35", X"16", X"11", X"2c", X"e4", X"fe", X"25", X"3f", X"23", X"2c", X"d3", X"06", X"f3", X"fb", X"f3", X"28", X"32", X"51", X"12", X"43", X"37", X"fa", X"39", X"26", X"11", X"3e",
                                                        X"de", X"05", X"f3", X"34", X"28", X"22", X"11", X"54", X"ff", X"ec", X"0e", X"fc", X"f2", X"0d", X"1b", X"ef", X"2c", X"ff", X"e6", X"04", X"19", X"fd", X"1c", X"45", X"14", X"05",
                                                        X"2e", X"e7", X"ff", X"06", X"0f", X"34", X"f5", X"00", X"36", X"05", X"f6", X"08", X"1f", X"59", X"16", X"16", X"e5", X"00", X"d2", X"48", X"10", X"1e", X"2d", X"16", X"f5", X"1e",
                                                        X"03", X"24", X"02", X"fd", X"05", X"f2", X"03", X"e7", X"4c", X"55", X"1c", X"f8", X"e1", X"18", X"19", X"f9", X"2d", X"d6", X"04", X"45", X"05", X"28", X"25", X"f5", X"eb", X"34",
                                                        X"0f", X"0d", X"06", X"f8", X"d4", X"0b", X"3f", X"0b", X"0e", X"53", X"0e", X"dc", X"28", X"f5", X"ef", X"1b", X"0f", X"0a", X"e9", X"05", X"0e", X"12", X"f4", X"15", X"ed", X"28",
                                                        X"fb", X"30", X"15", X"fb", X"fa", X"e6", X"02", X"21", X"27", X"fe", X"21", X"18", X"33", X"da", X"25", X"39", X"29", X"2b", X"00", X"e4", X"ef", X"d3", X"03", X"d9", X"e1", X"e5",
                                                        X"db", X"01", X"db", X"13", X"d6", X"f8", X"06", X"fc", X"2c", X"e3", X"20", X"11", X"e8", X"16", X"ef", X"16", X"08", X"f1", X"fa", X"fa", X"10", X"e4", X"0e", X"1d", X"fd", X"f2",
                                                        X"2f", X"00", X"fe", X"03", X"e5", X"05", X"18", X"05", X"f5", X"e6", X"f5", X"3d", X"01", X"ec", X"ff", X"f5", X"11", X"e2", X"2a", X"f0", X"1e", X"ee", X"fd", X"19", X"17", X"fb",
                                                        X"ff", X"18", X"fc", X"02", X"ff", X"f2", X"e2", X"22", X"ff", X"e8", X"fe", X"f9", X"1f", X"eb", X"16", X"f1", X"ff", X"c3", X"e3", X"2b", X"04", X"05", X"07", X"12", X"f7", X"04",
                                                        X"e5", X"14", X"29", X"09", X"dd", X"ea", X"e5", X"26", X"e6", X"f3", X"18", X"f3", X"f5", X"b8", X"05", X"33", X"eb", X"f8", X"cb", X"01", X"e9", X"0b", X"e5", X"ea", X"f5", X"41",
                                                        X"0b", X"f6", X"fa", X"d3", X"fa", X"ec", X"0c", X"f8", X"e4", X"0b", X"e9", X"2b", X"e5", X"33", X"02", X"de", X"2c", X"05", X"22", X"0f", X"03", X"ce", X"08", X"07", X"de", X"ee",
                                                        X"f8", X"e4", X"30", X"d1", X"06", X"30", X"db", X"f2", X"f7", X"19", X"f5", X"11", X"de", X"eb", X"21", X"ff", X"1d", X"f9", X"ea", X"e5", X"e6", X"12", X"fb", X"f4", X"02", X"de",
                                                        X"17", X"3d", X"d4", X"e9", X"1a", X"1c", X"23", X"cd", X"1b", X"fe", X"fb", X"e4", X"fa", X"fe", X"d8", X"e8", X"e6", X"d3", X"ec", X"f3", X"e5", X"09", X"0c", X"03", X"e7", X"1d",
                                                        X"07", X"11", X"38", X"09", X"da", X"0d", X"1b", X"37", X"10", X"fa", X"00", X"14", X"0c", X"05", X"31", X"2d", X"08", X"d9", X"e7", X"05", X"35", X"b0", X"f8", X"c1", X"08", X"22",
                                                        X"0b", X"e0", X"f8", X"f8", X"ec", X"ed", X"ff", X"2b", X"41", X"f7", X"2e", X"48", X"08", X"d1", X"0f", X"e4", X"dc", X"02", X"dd", X"f4", X"08", X"25", X"f0", X"fa", X"c9", X"fd",
                                                        X"31", X"e0", X"09", X"1b", X"e6", X"09", X"e7", X"10", X"f7", X"02", X"03", X"32", X"05", X"d3", X"23", X"0c", X"00", X"d3", X"16", X"cf", X"eb", X"06", X"14", X"0e", X"1b", X"03",
                                                        X"f8", X"25", X"12", X"1f", X"27", X"1c", X"1d", X"f8", X"02", X"db", X"ff", X"02", X"28", X"0f", X"f2", X"db", X"f1", X"44", X"07", X"fc", X"27", X"11", X"0a", X"fc", X"f3", X"1a",
                                                        X"28", X"f9", X"e7", X"f2", X"32", X"de", X"01", X"56", X"fe", X"07", X"c5", X"ec", X"db", X"22", X"08", X"d5", X"d8", X"01", X"26", X"01");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"01";
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

