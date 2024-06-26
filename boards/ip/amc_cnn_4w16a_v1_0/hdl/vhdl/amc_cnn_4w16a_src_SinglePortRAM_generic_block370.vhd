-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block370.vhd
-- Created: 2023-06-15 16:03:02
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block370
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage20/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block370 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block370;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block370 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"30", X"20", X"15", X"cc", X"d9", X"28", X"10", X"cd", X"1a", X"d5", X"bc", X"39", X"02", X"00",
                                                        X"b0", X"f4", X"d7", X"25", X"43", X"c8", X"e9", X"ff", X"1a", X"cf", X"c3", X"e4", X"da", X"fb", X"da", X"e5", X"0d", X"1f", X"03", X"1f", X"21", X"0d", X"fb", X"cd", X"20", X"f1",
                                                        X"db", X"f9", X"ed", X"04", X"f1", X"f7", X"14", X"14", X"1b", X"06", X"21", X"e3", X"02", X"d2", X"fa", X"0a", X"29", X"3e", X"0c", X"38", X"e8", X"08", X"06", X"00", X"09", X"cb",
                                                        X"01", X"2f", X"ef", X"46", X"c2", X"1c", X"28", X"17", X"20", X"fa", X"2e", X"03", X"e3", X"f9", X"1c", X"09", X"00", X"db", X"eb", X"35", X"f1", X"01", X"f9", X"cc", X"1e", X"1d",
                                                        X"ed", X"16", X"08", X"e9", X"22", X"05", X"de", X"00", X"e0", X"25", X"08", X"18", X"01", X"3d", X"1c", X"f8", X"f2", X"0e", X"cf", X"ef", X"e5", X"f6", X"eb", X"d1", X"fd", X"31",
                                                        X"19", X"fa", X"07", X"e9", X"f0", X"ea", X"e8", X"ef", X"02", X"f3", X"06", X"24", X"18", X"32", X"e2", X"ec", X"43", X"06", X"f9", X"d5", X"f5", X"ec", X"e5", X"f9", X"23", X"2d",
                                                        X"df", X"28", X"07", X"e6", X"eb", X"0c", X"06", X"ea", X"e3", X"f9", X"de", X"18", X"ed", X"e9", X"08", X"21", X"bc", X"24", X"01", X"09", X"06", X"01", X"0d", X"f6", X"e7", X"0b",
                                                        X"fb", X"d7", X"13", X"e7", X"e9", X"1c", X"fe", X"ee", X"19", X"31", X"fa", X"16", X"f5", X"06", X"1f", X"22", X"0d", X"c7", X"15", X"f9", X"fa", X"04", X"f5", X"e4", X"da", X"08",
                                                        X"e4", X"17", X"bd", X"24", X"e8", X"d9", X"f9", X"2f", X"f2", X"1a", X"d1", X"d9", X"0f", X"fa", X"f8", X"29", X"fb", X"42", X"fb", X"15", X"df", X"2d", X"0d", X"d6", X"39", X"04",
                                                        X"00", X"f3", X"d0", X"fb", X"e3", X"ce", X"e6", X"44", X"04", X"14", X"f2", X"e7", X"00", X"37", X"38", X"05", X"dc", X"05", X"04", X"00", X"0e", X"e6", X"03", X"2f", X"23", X"ee",
                                                        X"f6", X"cb", X"05", X"16", X"00", X"1a", X"06", X"ec", X"e9", X"12", X"1a", X"e4", X"f2", X"fc", X"ed", X"e8", X"f4", X"21", X"e1", X"dc", X"e0", X"ed", X"0d", X"10", X"da", X"21",
                                                        X"ea", X"d5", X"dc", X"dc", X"42", X"fb", X"ec", X"48", X"e6", X"29", X"0f", X"12", X"4c", X"10", X"e7", X"19", X"00", X"ed", X"c6", X"fd", X"14", X"03", X"00", X"20", X"f4", X"d5",
                                                        X"f4", X"fa", X"f1", X"12", X"da", X"f5", X"f5", X"07", X"f5", X"da", X"c7", X"fc", X"12", X"06", X"eb", X"01", X"d9", X"08", X"0d", X"f9", X"1e", X"f4", X"e6", X"0e", X"f2", X"2b",
                                                        X"f0", X"0a", X"fe", X"c2", X"09", X"04", X"0a", X"fe", X"e7", X"f6", X"05", X"d1", X"db", X"ea", X"f1", X"41", X"ec", X"10", X"1d", X"4c", X"0d", X"1e", X"ff", X"0e", X"12", X"eb",
                                                        X"df", X"fd", X"f4", X"27", X"1f", X"30", X"00", X"04", X"24", X"46", X"fe", X"f1", X"f2", X"11", X"dd", X"e7", X"fd", X"1c", X"14", X"1f", X"fc", X"24", X"ea", X"f4", X"11", X"ce",
                                                        X"f2", X"cc", X"f3", X"df", X"02", X"06", X"12", X"26", X"1f", X"ed", X"f1", X"f8", X"06", X"1a", X"03", X"c9", X"ec", X"ce", X"12", X"17", X"1b", X"fa", X"da", X"4a", X"ff", X"12",
                                                        X"f1", X"f4", X"41", X"01", X"1b", X"d5", X"f4", X"22", X"fd", X"e5", X"30", X"1d", X"dd", X"1a", X"01", X"00", X"03", X"fb", X"ee", X"d2", X"0f", X"c2", X"e3", X"08", X"e9", X"e2",
                                                        X"f5", X"18", X"eb", X"0f", X"0b", X"10", X"ee", X"e3", X"d4", X"df", X"e2", X"18", X"ee", X"18", X"e9", X"f1", X"0e", X"13", X"2e", X"05", X"e0", X"fe", X"0a", X"db", X"f2", X"18",
                                                        X"17", X"d5", X"07", X"16", X"2e", X"1a", X"d9", X"f7", X"2e", X"03", X"fc", X"1b", X"00", X"18", X"0f", X"08", X"2c", X"c2", X"13", X"33", X"f3", X"f8", X"d8", X"e4", X"28", X"f3",
                                                        X"fa", X"e4", X"00", X"43", X"06", X"10", X"2e", X"12", X"f4", X"d6", X"f0", X"22", X"dc", X"e4", X"0a", X"05", X"ec", X"cb", X"c6", X"fe", X"1d", X"ff", X"e1", X"f6", X"f9", X"fb",
                                                        X"28", X"ff", X"e4", X"f0", X"18", X"12", X"0e", X"1a", X"13", X"0f", X"22", X"f3", X"fc", X"0b", X"fd", X"e3", X"ec", X"03", X"17", X"0f", X"f3", X"13", X"16", X"12", X"e8", X"03",
                                                        X"28", X"e8", X"d4", X"c8", X"ee", X"1b", X"ec", X"03", X"0d", X"17", X"e8", X"21", X"0a", X"d3", X"e8", X"07", X"39", X"f6", X"e6", X"36", X"d5", X"fa", X"cc", X"e1", X"02", X"2e",
                                                        X"f2", X"e7", X"11", X"fe", X"d9", X"f5", X"f2", X"fe", X"e2", X"22", X"02", X"e6", X"ff", X"ea", X"28", X"02", X"e6", X"e9", X"04", X"e6", X"e3", X"f3", X"cd", X"f8", X"29", X"fe",
                                                        X"e5", X"20", X"11", X"0c", X"e3", X"f6", X"fa", X"f2", X"0f", X"01", X"df", X"26", X"c7", X"31", X"f1", X"f0", X"f7", X"1a", X"26", X"17", X"f5", X"ee", X"e9", X"f3", X"d6", X"34",
                                                        X"d9", X"43", X"e9", X"16", X"30", X"e4", X"12", X"f3", X"30", X"1c", X"1c", X"fc", X"25", X"ef", X"de", X"d7", X"fd", X"28", X"1e", X"f3", X"13", X"de", X"fb", X"e1", X"f3", X"ef",
                                                        X"f2", X"f0", X"0c", X"21", X"f8", X"11", X"e8", X"2a", X"07", X"e8", X"23", X"f1", X"e3", X"39", X"e6", X"f3", X"30", X"ed", X"e3", X"17", X"ff", X"e2", X"ff", X"e0", X"0e", X"f8",
                                                        X"de", X"2e", X"f0", X"da", X"e0", X"05", X"09", X"18", X"1b", X"42", X"0f", X"ed", X"d7", X"05", X"4c", X"ea", X"e1", X"c1", X"f2", X"d0", X"13", X"e3", X"f8", X"04", X"e3", X"f3",
                                                        X"14", X"e9", X"f0", X"e3", X"1a", X"1a", X"06", X"ff", X"f5", X"f6", X"0d", X"ff", X"1c", X"2e", X"df", X"f5", X"f2", X"0f", X"0e", X"29", X"24", X"f6", X"0c", X"d7", X"03", X"30",
                                                        X"fd", X"17", X"03", X"0a", X"fd", X"fc", X"e2", X"1f", X"ec", X"2f", X"e7", X"1a", X"30", X"c2", X"fa", X"3d", X"35", X"1c", X"da", X"e7", X"33", X"e6", X"d8", X"e8", X"f8", X"2a",
                                                        X"e5", X"05", X"f3", X"eb", X"f9", X"fd", X"12", X"fd", X"e6", X"00", X"ec", X"1f", X"dc", X"11", X"df", X"15", X"d5", X"0d", X"e7", X"14", X"07", X"03", X"0a", X"1f", X"d0", X"ff",
                                                        X"fb", X"00", X"0d", X"0b", X"15", X"28", X"30", X"f6", X"0c", X"c5", X"e3", X"e7", X"06", X"ea", X"10", X"ff", X"1a", X"11", X"ef", X"d0", X"03", X"ee", X"08", X"07", X"f8", X"1d",
                                                        X"ed", X"0b", X"e6", X"05", X"18", X"12", X"ea", X"15", X"29", X"04", X"f2", X"e5", X"10", X"f6", X"13", X"f7", X"ea", X"1e", X"f0", X"f9", X"42", X"28", X"fa", X"1f", X"f7", X"f0",
                                                        X"01", X"d1", X"2f", X"e5", X"f0", X"02", X"f7", X"26", X"f2", X"d6", X"eb", X"0e", X"d8", X"f7", X"0f", X"bb", X"e2", X"26", X"0e", X"19", X"ff", X"e6", X"18", X"06", X"f4", X"f5",
                                                        X"f8", X"ed", X"2e", X"00", X"bc", X"f8", X"e6", X"0f", X"c8", X"f3", X"00", X"19", X"05", X"15", X"0b", X"f6", X"06", X"e0", X"2f", X"fa", X"ee", X"3b", X"f2", X"04", X"db", X"10",
                                                        X"03", X"e8", X"0a", X"35", X"eb", X"0f", X"db", X"f3", X"ec", X"eb", X"13", X"06", X"fe", X"1c", X"ea", X"00", X"fb", X"46", X"d8", X"e3", X"14", X"0d", X"f1", X"e9", X"fd", X"05",
                                                        X"12", X"da", X"f1", X"22", X"02", X"0a", X"22", X"d5", X"ed", X"e1", X"14", X"07", X"09", X"05", X"11", X"20", X"fc", X"13", X"d8", X"0e", X"46", X"fe", X"25", X"4d", X"e5", X"b8",
                                                        X"10", X"ea", X"17", X"e7", X"02", X"22", X"03", X"06", X"d7", X"e3", X"38", X"f6", X"fd", X"10", X"e2", X"a3", X"f8", X"f9", X"06", X"12", X"e8", X"30", X"0c", X"16", X"fd", X"db",
                                                        X"f7", X"fb", X"d3", X"0c", X"fe", X"df", X"e4", X"d1", X"1f", X"28", X"0e", X"0d", X"0d", X"0d", X"13", X"18", X"d1", X"e7", X"d7", X"0f", X"0f", X"fc", X"11", X"e9", X"ea", X"fe",
                                                        X"04", X"df", X"cc", X"2b", X"d6", X"41", X"e4", X"0e", X"ef", X"d8", X"19", X"ed", X"2f", X"fc", X"11", X"f6", X"09", X"06", X"02", X"25", X"01", X"fa", X"c5", X"10", X"30", X"ea",
                                                        X"fb", X"12", X"ea", X"f5", X"ef", X"e3", X"e7", X"ee", X"0b", X"19", X"f5", X"54", X"e1", X"0b", X"f4", X"48", X"e7", X"df", X"11", X"18", X"d9", X"f4", X"e8", X"18", X"dd", X"0c",
                                                        X"fa", X"3a", X"dd", X"12", X"16", X"0d", X"ef", X"eb", X"e8", X"16", X"1b", X"f0", X"0e", X"fd", X"15", X"0b", X"fd", X"0a", X"17", X"f1", X"fa", X"b7", X"f1", X"e0", X"e0", X"ff",
                                                        X"1a", X"e7", X"03", X"1b", X"17", X"22", X"f8", X"16", X"45", X"dd", X"fd", X"d1", X"da", X"d0", X"de", X"ed", X"14", X"10", X"f8", X"0d", X"f7", X"19", X"fa", X"df", X"38", X"f0",
                                                        X"e7", X"12", X"e7", X"db", X"f8", X"e6", X"f7", X"1f", X"fb", X"0e", X"ee", X"12", X"d4", X"e2", X"fe", X"f4", X"e2", X"1e", X"f2", X"04", X"04", X"ef", X"df", X"09", X"0d", X"05",
                                                        X"05", X"1f", X"fb", X"1a", X"df", X"03", X"1e", X"1b", X"0d", X"c5", X"ec", X"09", X"eb", X"0c", X"f7", X"f4", X"08", X"10", X"ec", X"fe", X"f6", X"20", X"2c", X"23", X"0e", X"f8",
                                                        X"1c", X"14", X"00", X"f2", X"f2", X"fa", X"ff", X"13", X"06", X"52", X"af", X"0f", X"17", X"ee", X"23", X"1b", X"0a", X"08", X"07", X"e5", X"22", X"f7", X"0a", X"09", X"d6", X"f6",
                                                        X"cb", X"fe", X"3d", X"14", X"0c", X"e0", X"f2", X"07", X"0e", X"f4", X"08", X"e6", X"00", X"0d", X"29", X"f7", X"0f", X"f8", X"f5", X"12", X"ef", X"23", X"26", X"f8", X"19", X"06",
                                                        X"f1", X"3e", X"ec", X"e4", X"fd", X"d7", X"27", X"ec", X"04", X"14", X"f5", X"d2", X"f3", X"d1", X"f3", X"fa", X"ef", X"28", X"05", X"02", X"dc", X"00", X"4b", X"f1", X"d3", X"e0",
                                                        X"e9", X"15", X"f2", X"e9", X"16", X"23", X"0a", X"18", X"0b", X"1d", X"f4", X"fb", X"0d", X"06", X"f0", X"cc", X"e2", X"ed", X"e4", X"ea", X"14", X"25", X"00", X"17", X"fa", X"1e",
                                                        X"00", X"0e", X"d3", X"19", X"f6", X"e0", X"02", X"f8", X"08", X"13", X"f8", X"04", X"27", X"ff", X"13", X"c6", X"14", X"1c", X"19", X"08", X"0c", X"11", X"fd", X"f4", X"f2", X"15",
                                                        X"c9", X"ea", X"18", X"ea", X"d8", X"f2", X"e2", X"19", X"dd", X"10", X"ee", X"13", X"07", X"11", X"04", X"25", X"e2", X"eb", X"01", X"ec", X"e0", X"1d", X"e9", X"32", X"0e", X"23",
                                                        X"f2", X"2d", X"fe", X"d1", X"12", X"fe", X"f7", X"f6", X"29", X"16", X"ff", X"f9", X"1b", X"1c", X"1e", X"05", X"26", X"da", X"f3", X"e8", X"07", X"e5", X"e9", X"f2", X"e6", X"2a",
                                                        X"12", X"0d", X"fa", X"e1", X"19", X"f7", X"d9", X"31", X"f0", X"ca", X"f6", X"f8", X"19", X"20", X"d0", X"05", X"03", X"1e", X"e5", X"f9", X"14", X"e8", X"28", X"d8", X"0c", X"dc",
                                                        X"eb", X"e9", X"3f", X"0b", X"f1", X"1d", X"e4", X"cf", X"ea", X"fe", X"0e", X"fa", X"e6", X"d0", X"00", X"17", X"dd", X"e1", X"f8", X"1b", X"d4", X"ea", X"09", X"f1", X"f6", X"f3",
                                                        X"f8", X"22", X"15", X"30", X"0d", X"12", X"12", X"f8", X"1a", X"08", X"16", X"f6", X"fc", X"cd", X"fc", X"1e", X"cc", X"2d", X"31", X"fe", X"11", X"18", X"02", X"14", X"14", X"f9",
                                                        X"22", X"fe", X"e8", X"f4", X"f1", X"1a", X"dd", X"07", X"e1", X"3c", X"fb", X"24", X"e5", X"06", X"f3", X"e8", X"20", X"05", X"ff", X"2e", X"ea", X"37", X"14", X"07", X"e4", X"ed",
                                                        X"1a", X"ff", X"f9", X"1b", X"f7", X"eb", X"16", X"f1", X"0a", X"dd", X"f2", X"f1", X"ea", X"18", X"ef", X"e0", X"e4", X"ea", X"e5", X"17", X"0e", X"fb", X"08", X"1a", X"00", X"ec",
                                                        X"00", X"20", X"0a", X"ee", X"0c", X"37", X"ec", X"d8", X"14", X"e9", X"3b", X"ff", X"f6", X"34", X"0e", X"f4", X"ef", X"00", X"39", X"e7", X"09", X"f9", X"e5", X"19", X"eb", X"e6",
                                                        X"0c", X"28", X"ce", X"19", X"1e", X"05", X"ff", X"fb", X"1e", X"f7", X"d7", X"ec", X"ff", X"d0", X"f6", X"e6", X"00", X"02", X"1b", X"11", X"fa", X"16", X"0b", X"01", X"ed", X"f8",
                                                        X"e8", X"ba", X"08", X"d8", X"fe", X"05", X"0e", X"0d", X"2b", X"0b", X"f1", X"fd", X"fa", X"11", X"e2", X"0b", X"0a", X"08", X"ec", X"01", X"11", X"f9", X"10", X"f6", X"da", X"e2",
                                                        X"f5", X"29", X"f9", X"41", X"d7", X"37", X"0e", X"11", X"fd", X"e6", X"26", X"11", X"ef", X"ec", X"34", X"07", X"ec", X"13", X"f1", X"23", X"0d", X"04", X"1e", X"ed", X"18", X"06",
                                                        X"0f", X"0f", X"e4", X"e7", X"e2", X"01", X"03", X"db", X"ec", X"2f", X"f1", X"f9", X"ed", X"1b", X"ea", X"13", X"12", X"f4", X"fe", X"fa", X"ea", X"f6", X"20", X"e6", X"e2", X"21",
                                                        X"42", X"f7", X"dd", X"39", X"02", X"dc", X"f4", X"f8", X"f8", X"fd", X"f6", X"1f", X"f6", X"25", X"fa", X"fd", X"44", X"db", X"cf", X"fa", X"e4", X"dd", X"d1", X"e3", X"f6", X"16",
                                                        X"ed", X"03", X"00", X"06", X"ef", X"f4", X"1e", X"ec", X"e0", X"3b", X"d3", X"c9", X"14", X"ec", X"f7", X"12", X"f4", X"f2", X"ff", X"d3", X"ed", X"12", X"0a", X"0e", X"1d", X"d7",
                                                        X"cf", X"2e", X"f8", X"06", X"d3", X"13", X"ed", X"03", X"1b", X"cb", X"e8", X"e6", X"15", X"07", X"f1", X"33", X"15", X"de", X"e1", X"f7", X"20", X"f8", X"fc", X"f6", X"e4", X"30",
                                                        X"ea", X"3e", X"bf", X"16", X"fc", X"cb", X"11", X"30", X"fe", X"17", X"04", X"fd", X"35", X"f8", X"02", X"1c", X"f1", X"4a", X"ea", X"16", X"35", X"37", X"11", X"d2", X"e6", X"13",
                                                        X"de", X"e8", X"10", X"f5", X"e5", X"e3", X"f3", X"26", X"01", X"f2", X"fb", X"d2", X"f9", X"0a", X"f0", X"06", X"fb", X"e0", X"d3", X"19", X"fb", X"17", X"ed", X"03", X"41", X"f1",
                                                        X"d0", X"fc", X"fe", X"d8", X"de", X"fa", X"f4", X"07", X"07", X"1d", X"f3", X"f8", X"db", X"0b", X"10", X"01", X"df", X"14", X"f4", X"0c", X"fc", X"e1", X"23", X"29", X"e9", X"15",
                                                        X"f3", X"bc", X"ef", X"0d", X"33", X"06", X"e3", X"b8", X"e0", X"1f", X"f3", X"f3", X"e7", X"25", X"f4", X"24", X"eb", X"28", X"e1", X"ef", X"fb", X"f6", X"1a", X"0b", X"da", X"d8",
                                                        X"dc", X"fc", X"2b", X"17", X"f7", X"18", X"fc", X"ea", X"e7", X"d5", X"1b", X"0c", X"05", X"bc", X"e2", X"28", X"ee", X"10", X"d4", X"f9", X"24", X"f6", X"f9", X"02", X"f4", X"1a",
                                                        X"ca", X"28", X"27", X"f5", X"0c", X"26", X"31", X"f7", X"d6", X"f7", X"07", X"db", X"23", X"10", X"f7", X"29", X"d8", X"05", X"db", X"35", X"02", X"09", X"07", X"08", X"f7", X"e0",
                                                        X"2c", X"13", X"f5", X"e1", X"eb", X"44", X"dd", X"15", X"d7", X"35", X"00", X"fb", X"0d", X"ef", X"f9", X"f9", X"0d", X"13", X"ec", X"02", X"db", X"00", X"14", X"10", X"1e", X"2f",
                                                        X"08", X"fa", X"20", X"f4", X"fa", X"01", X"d7", X"fd", X"07", X"0f", X"f6", X"fa", X"21", X"da", X"da", X"cc", X"f2", X"e0", X"0e", X"e9", X"4b", X"0d", X"d0", X"18", X"2b", X"ce",
                                                        X"ee", X"11", X"ec", X"ef", X"f9", X"3c", X"f5", X"c7", X"fb", X"10", X"07", X"1a", X"d5", X"2a", X"1a", X"45", X"e3", X"d0", X"26", X"d9", X"02", X"1b", X"eb", X"f3", X"00", X"e8",
                                                        X"2a", X"1b", X"cf", X"dd", X"f6", X"c9", X"db", X"05", X"e5", X"13", X"05", X"cf", X"15", X"23", X"f8", X"1a", X"0c", X"11", X"27", X"e0", X"02", X"07", X"f1", X"08", X"ca", X"15",
                                                        X"22", X"42", X"fe", X"1f", X"26", X"1c", X"ee", X"db", X"f2", X"ef", X"ef", X"f8", X"e7", X"21", X"f4", X"15", X"fc", X"d0", X"18", X"25", X"32", X"21", X"ce", X"ea", X"e5", X"15",
                                                        X"f0", X"f7", X"e2", X"54", X"fd", X"21", X"3d", X"32", X"fc", X"f3", X"19", X"0d", X"f3", X"e4", X"e1", X"20", X"0e", X"2d", X"e9", X"f3", X"11", X"f9", X"f8", X"14", X"0a", X"e3",
                                                        X"e0", X"df", X"44", X"00", X"07", X"33", X"f4", X"ff", X"fe", X"e3", X"23", X"d4", X"bf", X"cc", X"da", X"0c", X"d7", X"b7", X"ff", X"25");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"25";
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

