-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block337.vhd
-- Created: 2023-08-07 19:04:38
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block337
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage105/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block337 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block337;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block337 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"28", X"01", X"03", X"28", X"43", X"2a", X"f7", X"33", X"10", X"5e", X"ec", X"17", X"19", X"3e",
                                                        X"1d", X"e5", X"e5", X"fe", X"f9", X"00", X"f8", X"de", X"22", X"15", X"12", X"eb", X"fe", X"f0", X"24", X"11", X"f5", X"f4", X"e4", X"f7", X"eb", X"1f", X"e3", X"00", X"d5", X"b5",
                                                        X"e7", X"e6", X"15", X"ea", X"fe", X"c9", X"fb", X"0e", X"aa", X"05", X"f3", X"07", X"de", X"f9", X"0b", X"fd", X"ed", X"be", X"0c", X"0a", X"fe", X"db", X"df", X"ff", X"ec", X"f8",
                                                        X"05", X"08", X"da", X"ee", X"f8", X"0e", X"ff", X"e7", X"03", X"03", X"ec", X"d2", X"db", X"10", X"1d", X"f6", X"0a", X"e3", X"13", X"f7", X"e3", X"c8", X"0f", X"fa", X"ff", X"1a",
                                                        X"1a", X"27", X"08", X"03", X"16", X"fc", X"02", X"05", X"0d", X"2d", X"22", X"37", X"17", X"1d", X"ea", X"1b", X"f0", X"1a", X"37", X"ea", X"60", X"f0", X"0d", X"f6", X"3e", X"20",
                                                        X"0e", X"e4", X"0c", X"17", X"e7", X"20", X"e9", X"29", X"2c", X"ec", X"30", X"ef", X"09", X"e8", X"33", X"26", X"d8", X"10", X"19", X"dd", X"ec", X"0b", X"08", X"f9", X"29", X"f6",
                                                        X"e3", X"00", X"f5", X"00", X"d2", X"07", X"25", X"1c", X"f1", X"24", X"ec", X"fa", X"e8", X"29", X"f0", X"04", X"11", X"0c", X"f9", X"1f", X"0d", X"ce", X"23", X"ea", X"ed", X"d8",
                                                        X"12", X"e2", X"03", X"00", X"dc", X"fd", X"db", X"ff", X"f5", X"e9", X"df", X"dc", X"dd", X"d6", X"fd", X"f8", X"07", X"07", X"e6", X"be", X"ee", X"05", X"c2", X"00", X"04", X"00",
                                                        X"07", X"03", X"cf", X"fd", X"0e", X"ec", X"02", X"05", X"cc", X"e4", X"f3", X"19", X"f1", X"f9", X"10", X"14", X"17", X"ec", X"fe", X"21", X"03", X"ee", X"e6", X"2b", X"00", X"05",
                                                        X"0b", X"fc", X"35", X"fb", X"05", X"f7", X"ef", X"2d", X"20", X"e7", X"f3", X"0a", X"d4", X"25", X"03", X"19", X"32", X"fa", X"fd", X"f2", X"06", X"ff", X"0f", X"0e", X"31", X"f6",
                                                        X"03", X"1a", X"e5", X"0b", X"08", X"03", X"1e", X"e9", X"33", X"f3", X"13", X"ff", X"31", X"31", X"df", X"d7", X"1f", X"52", X"f9", X"f9", X"27", X"22", X"fe", X"ed", X"01", X"fd",
                                                        X"08", X"08", X"25", X"03", X"f5", X"0f", X"f0", X"12", X"01", X"15", X"1b", X"10", X"1d", X"ff", X"f3", X"1a", X"02", X"fd", X"bd", X"d8", X"22", X"07", X"f7", X"02", X"fd", X"e7",
                                                        X"fb", X"bd", X"d5", X"11", X"a2", X"0a", X"f7", X"12", X"ef", X"d8", X"e1", X"ec", X"f4", X"cd", X"f4", X"ed", X"ce", X"00", X"f0", X"06", X"10", X"10", X"f0", X"fb", X"dd", X"de",
                                                        X"df", X"12", X"f9", X"eb", X"00", X"02", X"04", X"d7", X"ed", X"11", X"01", X"f9", X"fd", X"f9", X"f2", X"0d", X"e4", X"ce", X"03", X"14", X"07", X"10", X"02", X"f8", X"f0", X"fd",
                                                        X"f1", X"f1", X"05", X"15", X"44", X"13", X"ef", X"fc", X"17", X"f5", X"eb", X"21", X"e9", X"f2", X"ff", X"ea", X"25", X"fc", X"fd", X"18", X"3e", X"0b", X"23", X"17", X"14", X"66",
                                                        X"f5", X"0d", X"f1", X"1e", X"20", X"f8", X"0d", X"f6", X"02", X"ef", X"e7", X"52", X"f7", X"fd", X"13", X"1f", X"ed", X"10", X"fc", X"22", X"13", X"02", X"f5", X"fe", X"0c", X"f1",
                                                        X"1f", X"e4", X"0b", X"e1", X"10", X"23", X"fe", X"f0", X"f0", X"04", X"27", X"09", X"1a", X"0b", X"ef", X"12", X"f9", X"1c", X"f0", X"07", X"dc", X"ce", X"f1", X"e0", X"05", X"10",
                                                        X"f4", X"18", X"c8", X"01", X"f2", X"f4", X"ef", X"db", X"df", X"f8", X"f3", X"b1", X"04", X"ed", X"0c", X"eb", X"d5", X"0b", X"bb", X"05", X"f7", X"eb", X"e9", X"c4", X"f0", X"f3",
                                                        X"f4", X"b5", X"0e", X"f5", X"e3", X"c5", X"fc", X"0e", X"37", X"f8", X"04", X"0f", X"f5", X"fa", X"ff", X"f5", X"f7", X"15", X"e8", X"04", X"f6", X"f9", X"da", X"fd", X"f6", X"f4",
                                                        X"02", X"ed", X"03", X"0d", X"30", X"d1", X"18", X"2c", X"db", X"f8", X"1c", X"1c", X"18", X"03", X"e8", X"f2", X"0b", X"e4", X"0c", X"4d", X"f6", X"fd", X"14", X"3f", X"e9", X"1b",
                                                        X"10", X"3b", X"1c", X"f7", X"03", X"02", X"1b", X"f7", X"12", X"09", X"f8", X"33", X"17", X"4c", X"df", X"15", X"21", X"10", X"09", X"fe", X"44", X"0b", X"17", X"f0", X"28", X"16",
                                                        X"ee", X"2e", X"0a", X"23", X"fb", X"02", X"e7", X"01", X"29", X"f7", X"19", X"08", X"fe", X"1c", X"f4", X"ef", X"dd", X"f0", X"f4", X"f4", X"f0", X"fd", X"f5", X"d1", X"02", X"f9",
                                                        X"e7", X"0f", X"f0", X"26", X"d0", X"f8", X"f5", X"fd", X"db", X"be", X"05", X"f1", X"d8", X"c4", X"fb", X"fe", X"d0", X"fe", X"ec", X"fa", X"05", X"da", X"d7", X"0a", X"e8", X"a8",
                                                        X"02", X"fb", X"10", X"09", X"dd", X"0a", X"b4", X"ef", X"f9", X"19", X"e1", X"04", X"e5", X"d8", X"f7", X"01", X"fe", X"fc", X"02", X"ff", X"dc", X"0b", X"14", X"f0", X"10", X"0e",
                                                        X"1c", X"21", X"22", X"fc", X"14", X"d6", X"f1", X"0f", X"20", X"16", X"fb", X"ff", X"e1", X"fb", X"0b", X"f4", X"f5", X"2c", X"0f", X"4d", X"11", X"60", X"fe", X"18", X"1d", X"35",
                                                        X"1d", X"fb", X"26", X"e7", X"07", X"10", X"1c", X"0e", X"3c", X"f3", X"14", X"36", X"e7", X"2c", X"1c", X"41", X"30", X"03", X"1b", X"ef", X"fb", X"13", X"09", X"38", X"f9", X"d6",
                                                        X"16", X"ef", X"dd", X"06", X"21", X"fb", X"1d", X"f5", X"18", X"0a", X"04", X"f0", X"12", X"20", X"fb", X"f1", X"fb", X"07", X"f4", X"f9", X"ee", X"30", X"f5", X"f0", X"c3", X"0e",
                                                        X"08", X"1c", X"e5", X"f3", X"04", X"df", X"e1", X"d5", X"f5", X"fc", X"f8", X"db", X"fd", X"0d", X"e9", X"0d", X"f2", X"f0", X"df", X"f8", X"d1", X"f6", X"fd", X"9c", X"ea", X"f4",
                                                        X"fa", X"e1", X"ed", X"0d", X"05", X"08", X"f0", X"09", X"df", X"e9", X"ff", X"e3", X"ed", X"fe", X"ff", X"0d", X"0a", X"ec", X"e7", X"0b", X"e7", X"fc", X"fe", X"ef", X"0d", X"f9",
                                                        X"ea", X"f2", X"05", X"07", X"f5", X"0b", X"e2", X"17", X"04", X"0b", X"09", X"f4", X"fe", X"0b", X"21", X"08", X"1a", X"2f", X"0c", X"e5", X"e8", X"02", X"01", X"24", X"0e", X"f8",
                                                        X"5f", X"01", X"03", X"f4", X"1e", X"16", X"20", X"15", X"15", X"56", X"f2", X"01", X"ea", X"1d", X"24", X"02", X"5c", X"f6", X"01", X"fa", X"3a", X"07", X"fe", X"ea", X"24", X"43",
                                                        X"f3", X"1f", X"f0", X"f1", X"24", X"0b", X"e5", X"04", X"f3", X"01", X"02", X"ec", X"ec", X"04", X"11", X"e9", X"e5", X"f8", X"0b", X"fc", X"1e", X"f8", X"d2", X"09", X"f5", X"13",
                                                        X"d9", X"ea", X"16", X"d6", X"f8", X"c8", X"02", X"ed", X"05", X"07", X"fe", X"03", X"f8", X"11", X"f5", X"0b", X"f5", X"0a", X"e1", X"ac", X"e5", X"fa", X"f4", X"f0", X"dc", X"ae",
                                                        X"d0", X"17", X"13", X"0c", X"fa", X"ed", X"0f", X"df", X"d5", X"c6", X"e9", X"fb", X"02", X"fb", X"0d", X"e1", X"d5", X"18", X"1f", X"f1", X"03", X"ff", X"e9", X"fc", X"f9", X"e4",
                                                        X"09", X"25", X"02", X"fa", X"0d", X"01", X"eb", X"f9", X"d7", X"f6", X"f3", X"fd", X"0a", X"26", X"f4", X"e9", X"19", X"e6", X"08", X"20", X"08", X"18", X"0a", X"0e", X"45", X"f8",
                                                        X"ff", X"03", X"2a", X"1a", X"11", X"4e", X"16", X"17", X"eb", X"25", X"fa", X"07", X"11", X"fa", X"16", X"f7", X"15", X"f4", X"29", X"0a", X"04", X"47", X"01", X"03", X"f3", X"19",
                                                        X"fa", X"24", X"13", X"f1", X"0e", X"f1", X"04", X"07", X"04", X"f9", X"f3", X"10", X"09", X"f4", X"fa", X"f4", X"dc", X"12", X"f6", X"f8", X"fc", X"fb", X"f0", X"0b", X"fd", X"f4",
                                                        X"20", X"c1", X"ff", X"2b", X"f3", X"e4", X"fd", X"e6", X"16", X"08", X"be", X"19", X"fc", X"02", X"ea", X"ed", X"03", X"db", X"f7", X"d6", X"fb", X"e5", X"fa", X"c8", X"05", X"09",
                                                        X"c1", X"06", X"fe", X"04", X"cb", X"cd", X"d9", X"19", X"f8", X"f8", X"e9", X"f9", X"fb", X"f7", X"f2", X"0c", X"19", X"ff", X"0b", X"ef", X"eb", X"17", X"f9", X"c4", X"03", X"b2",
                                                        X"f6", X"16", X"ee", X"f4", X"e2", X"12", X"fe", X"fe", X"17", X"eb", X"1a", X"14", X"18", X"13", X"fe", X"34", X"0a", X"0b", X"06", X"24", X"fa", X"fe", X"f3", X"fb", X"11", X"e1",
                                                        X"1e", X"05", X"ea", X"4d", X"12", X"23", X"f1", X"05", X"17", X"0f", X"fd", X"fc", X"4e", X"f9", X"0a", X"09", X"0f", X"07", X"1c", X"2e", X"13", X"2b", X"e4", X"17", X"08", X"33",
                                                        X"11", X"fb", X"17", X"08", X"00", X"f4", X"29", X"02", X"1b", X"0a", X"0c", X"3d", X"ed", X"fa", X"25", X"04", X"18", X"fd", X"c6", X"0c", X"0a", X"e5", X"d3", X"f2", X"06", X"e0",
                                                        X"00", X"f5", X"fe", X"dd", X"0c", X"f3", X"ed", X"f4", X"e8", X"01", X"f3", X"fa", X"c6", X"f6", X"11", X"b3", X"ef", X"fd", X"f5", X"e1", X"09", X"e3", X"fb", X"03", X"a9", X"10",
                                                        X"e9", X"0e", X"fd", X"ff", X"f8", X"af", X"f7", X"e0", X"06", X"f0", X"e1", X"ee", X"e8", X"08", X"0a", X"fd", X"05", X"02", X"00", X"fd", X"df", X"cf", X"ed", X"e9", X"01", X"f9",
                                                        X"1e", X"e9", X"fb", X"0f", X"ec", X"02", X"00", X"fb", X"d6", X"f6", X"05", X"1d", X"12", X"32", X"fc", X"08", X"02", X"00", X"ea", X"00", X"fa", X"f2", X"0e", X"10", X"30", X"f4",
                                                        X"21", X"eb", X"07", X"4b", X"e3", X"28", X"2c", X"31", X"0d", X"e8", X"0b", X"fb", X"f9", X"fa", X"f5", X"22", X"08", X"37", X"0e", X"58", X"01", X"0d", X"0e", X"0d", X"1e", X"fe",
                                                        X"ea", X"fb", X"0d", X"02", X"ef", X"3d", X"21", X"3b", X"06", X"22", X"fa", X"13", X"0a", X"2d", X"17", X"00", X"c3", X"fe", X"02", X"00", X"03", X"08", X"ea", X"b2", X"e6", X"14",
                                                        X"f1", X"08", X"15", X"18", X"15", X"fd", X"f3", X"fe", X"fd", X"18", X"0a", X"c3", X"0d", X"e2", X"ec", X"dc", X"fe", X"ed", X"db", X"f2", X"fb", X"ff", X"fb", X"02", X"f4", X"fe",
                                                        X"be", X"d5", X"f9", X"eb", X"f5", X"ac", X"ff", X"01", X"15", X"b8", X"ca", X"1b", X"af", X"07", X"fc", X"ff", X"14", X"ee", X"06", X"19", X"eb", X"ef", X"db", X"f7", X"d8", X"e9",
                                                        X"e8", X"fe", X"e4", X"f0", X"0b", X"08", X"08", X"f0", X"00", X"c6", X"ff", X"e1", X"f7", X"13", X"ed", X"00", X"0b", X"0a", X"53", X"f1", X"04", X"f0", X"0c", X"2d", X"06", X"09",
                                                        X"1e", X"13", X"ef", X"20", X"f1", X"38", X"25", X"f9", X"e8", X"f6", X"0d", X"05", X"24", X"17", X"1b", X"4c", X"18", X"56", X"f0", X"27", X"fc", X"13", X"22", X"f9", X"4c", X"00",
                                                        X"06", X"0d", X"f9", X"f1", X"e6", X"3d", X"0e", X"f6", X"f9", X"13", X"00", X"0f", X"1a", X"04", X"1f", X"fa", X"0a", X"02", X"24", X"3b", X"1a", X"23", X"04", X"cf", X"14", X"03",
                                                        X"ee", X"05", X"15", X"ea", X"c9", X"08", X"ec", X"0a", X"04", X"11", X"e9", X"ca", X"e2", X"c2", X"f1", X"e7", X"e6", X"e9", X"ea", X"11", X"10", X"02", X"fa", X"13", X"f4", X"ff",
                                                        X"de", X"c1", X"e8", X"c1", X"f7", X"e9", X"f8", X"ee", X"ef", X"0d", X"e4", X"fb", X"03", X"13", X"ce", X"d9", X"ee", X"d4", X"fc", X"0b", X"fd", X"f2", X"e7", X"d1", X"0d", X"f8",
                                                        X"c8", X"fe", X"08", X"fc", X"05", X"fe", X"06", X"e1", X"03", X"28", X"0b", X"0b", X"f8", X"d7", X"f2", X"03", X"4c", X"fd", X"fe", X"eb", X"09", X"3a", X"02", X"fc", X"05", X"f4",
                                                        X"d9", X"15", X"15", X"ed", X"06", X"e7", X"5e", X"f2", X"00", X"07", X"43", X"08", X"12", X"25", X"1d", X"00", X"ce", X"23", X"f7", X"26", X"30", X"f0", X"48", X"fd", X"0e", X"e5",
                                                        X"0f", X"00", X"1e", X"2a", X"16", X"0c", X"e2", X"02", X"1d", X"2d", X"31", X"fc", X"e8", X"0d", X"05", X"1a", X"00", X"ff", X"ef", X"22", X"0e", X"2f", X"e5", X"05", X"05", X"0a",
                                                        X"1d", X"f3", X"11", X"0e", X"f7", X"fe", X"f7", X"f5", X"e2", X"d1", X"03", X"23", X"04", X"ec", X"e5", X"db", X"09", X"f5", X"0a", X"f7", X"e9", X"15", X"c8", X"f9", X"0e", X"c9",
                                                        X"f0", X"bb", X"02", X"05", X"eb", X"b6", X"d7", X"0f", X"d7", X"05", X"f6", X"11", X"d3", X"0a", X"c3", X"f1", X"ee", X"cc", X"fb", X"fb", X"0a", X"cc", X"da", X"fa", X"14", X"f7",
                                                        X"f8", X"f4", X"0f", X"20", X"16", X"d7", X"fe", X"d9", X"f5", X"03", X"f8", X"07", X"fa", X"0e", X"09", X"07", X"01", X"f4", X"0f", X"ec", X"d3", X"f0", X"01", X"e4", X"f0", X"1a",
                                                        X"1d", X"f0", X"11", X"fe", X"3f", X"f6", X"04", X"f7", X"ff", X"47", X"19", X"f8", X"fc", X"5f", X"e3", X"1f", X"f1", X"46", X"14", X"f9", X"52", X"f8", X"0c", X"ef", X"3b", X"eb",
                                                        X"27", X"17", X"27", X"04", X"db", X"14", X"26", X"fb", X"1c", X"fc", X"43", X"00", X"fc", X"17", X"d7", X"1f", X"27", X"33", X"0d", X"e0", X"ff", X"11", X"24", X"26", X"fa", X"ea",
                                                        X"c1", X"ff", X"03", X"f9", X"1b", X"1c", X"ec", X"dd", X"fb", X"05", X"01", X"00", X"cd", X"ea", X"08", X"0c", X"12", X"0b", X"f2", X"ee", X"fd", X"e7", X"e1", X"c2", X"ec", X"d2",
                                                        X"fb", X"de", X"ec", X"e2", X"e4", X"04", X"db", X"08", X"f0", X"01", X"c9", X"fb", X"12", X"ca", X"eb", X"be", X"ef", X"da", X"ff", X"f7", X"d0", X"10", X"f5", X"04", X"f8", X"02",
                                                        X"0f", X"c5", X"f8", X"22", X"f9", X"d7", X"e8", X"ef", X"01", X"cf", X"f1", X"01", X"37", X"f7", X"00", X"ee", X"fc", X"16", X"fc", X"db", X"18", X"f8", X"02", X"15", X"0c", X"f0",
                                                        X"fd", X"06", X"56", X"ea", X"08", X"ec", X"1f", X"28", X"e8", X"04", X"0e", X"fb", X"f3", X"1a", X"21", X"37", X"0c", X"fb", X"67", X"fc", X"03", X"08", X"09", X"13", X"28", X"2a",
                                                        X"0d", X"35", X"d9", X"18", X"1c", X"0f", X"3a", X"e4", X"05", X"05", X"0e", X"ed", X"11", X"16", X"14", X"11", X"08", X"36", X"ed", X"15", X"e4", X"0f", X"17", X"fc", X"dd", X"02",
                                                        X"f7", X"e9", X"19", X"e9", X"db", X"fc", X"06", X"d3", X"e4", X"f2", X"1c", X"0a", X"f1", X"fa", X"20", X"00", X"ed", X"0d", X"c7", X"08", X"e2", X"15", X"fd", X"e5", X"f0", X"e6",
                                                        X"f2", X"e2", X"e3", X"0d", X"bb", X"07", X"da", X"11", X"02", X"ce", X"ee", X"a4", X"f0", X"fb", X"fe", X"fe", X"e4", X"be", X"e2", X"10", X"ba", X"ff", X"f7", X"04", X"e8", X"e0",
                                                        X"e2", X"e3", X"f9", X"0e", X"fd", X"07", X"11", X"d3", X"d1", X"1d", X"dd", X"fc", X"0a", X"e9", X"fa", X"fc", X"00", X"fb", X"0d", X"02", X"e3", X"07", X"ef", X"1a", X"06", X"01",
                                                        X"e4", X"f8", X"03", X"01", X"0a", X"1d", X"0a", X"d8", X"1b", X"46", X"fa", X"12", X"e5", X"18", X"27", X"02", X"56", X"f4", X"0c", X"fa", X"1f", X"4c", X"ff", X"d8", X"00", X"51",
                                                        X"f2", X"12", X"1e", X"43", X"3e", X"f3", X"45", X"f5", X"ff", X"e5", X"09", X"27", X"00", X"2c", X"0b", X"20", X"04", X"fb", X"1e", X"11", X"05", X"fc", X"f2", X"fc", X"fc", X"f1",
                                                        X"e7", X"fe", X"29", X"33", X"00", X"be", X"ff", X"fb", X"0e", X"e6", X"fd", X"f7", X"15", X"09", X"f2", X"05", X"07", X"d1", X"ec", X"bc", X"d1", X"f3", X"f3", X"f5", X"e7", X"f3",
                                                        X"f5", X"02", X"d6", X"10", X"08", X"09", X"df", X"0b", X"08", X"14", X"ee", X"b7", X"03", X"da", X"d5", X"d6", X"e6", X"fb", X"d3", X"f4", X"04", X"03", X"ec", X"df", X"be", X"1a",
                                                        X"ee", X"0c", X"fc", X"ef", X"cd", X"e5", X"f0", X"11", X"e4", X"07", X"fd", X"fa", X"f0", X"cb", X"08", X"f1", X"0f", X"16", X"f9", X"f3", X"fb", X"fb", X"e8", X"04", X"ee", X"08",
                                                        X"0d", X"f8", X"01", X"2f", X"e4", X"38", X"14", X"4b", X"e2", X"15", X"1b", X"f4", X"f6", X"f8", X"37", X"f5", X"fe", X"f1", X"43", X"14", X"03", X"f2", X"1a", X"15", X"f2", X"22",
                                                        X"01", X"34", X"2d", X"f7", X"04", X"fc", X"06", X"06", X"0a", X"03", X"20", X"f9", X"fb", X"f7", X"ca", X"f9", X"fe", X"21", X"15", X"01");
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

