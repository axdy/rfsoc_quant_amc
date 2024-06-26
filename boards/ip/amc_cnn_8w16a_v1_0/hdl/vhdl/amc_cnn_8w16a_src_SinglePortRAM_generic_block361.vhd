-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block361.vhd
-- Created: 2023-08-07 19:04:41
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block361
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage127/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block361 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block361;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block361 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"ec", X"10", X"03", X"d3", X"1b", X"e2", X"ec", X"2e", X"f1", X"28", X"0a", X"03", X"05", X"fb",
                                                        X"05", X"18", X"e2", X"f9", X"00", X"f2", X"f0", X"3e", X"00", X"0b", X"07", X"01", X"e7", X"04", X"e0", X"2f", X"d4", X"01", X"ed", X"02", X"09", X"02", X"02", X"20", X"36", X"1f",
                                                        X"16", X"04", X"0e", X"f5", X"d5", X"19", X"be", X"06", X"fc", X"1b", X"18", X"10", X"de", X"29", X"25", X"c2", X"12", X"f3", X"e3", X"f1", X"da", X"06", X"ba", X"fc", X"fc", X"06",
                                                        X"11", X"f3", X"e5", X"fd", X"f4", X"d2", X"12", X"1e", X"d9", X"16", X"e4", X"05", X"d9", X"0f", X"f6", X"0c", X"f4", X"f5", X"ed", X"3f", X"fb", X"d9", X"11", X"df", X"1b", X"05",
                                                        X"06", X"f1", X"f6", X"fe", X"dc", X"02", X"f3", X"f3", X"17", X"2c", X"27", X"03", X"14", X"15", X"d6", X"00", X"1a", X"e6", X"00", X"06", X"27", X"16", X"1c", X"03", X"f2", X"e8",
                                                        X"f8", X"de", X"f2", X"27", X"e2", X"fd", X"05", X"f4", X"01", X"14", X"18", X"ff", X"0d", X"03", X"fc", X"0e", X"08", X"ed", X"15", X"e5", X"ef", X"02", X"17", X"da", X"ee", X"0c",
                                                        X"d9", X"01", X"e5", X"23", X"f4", X"ef", X"f3", X"d0", X"f7", X"2a", X"14", X"06", X"19", X"ee", X"20", X"f5", X"14", X"04", X"fd", X"f6", X"f5", X"db", X"e2", X"f3", X"f4", X"19",
                                                        X"05", X"fc", X"e9", X"e9", X"22", X"ee", X"e8", X"fc", X"05", X"08", X"ef", X"c4", X"eb", X"f0", X"19", X"d3", X"e4", X"09", X"ed", X"12", X"fb", X"fe", X"2f", X"ff", X"07", X"f5",
                                                        X"13", X"d4", X"d6", X"24", X"fd", X"19", X"22", X"0e", X"19", X"f4", X"fe", X"05", X"24", X"ff", X"f2", X"fd", X"16", X"e7", X"e4", X"2e", X"f5", X"34", X"fd", X"1e", X"2d", X"e4",
                                                        X"0d", X"0a", X"c4", X"fc", X"1e", X"da", X"df", X"ed", X"f5", X"ce", X"03", X"e1", X"cf", X"05", X"0b", X"06", X"ee", X"fb", X"e3", X"01", X"09", X"f4", X"1e", X"0b", X"dd", X"13",
                                                        X"fb", X"30", X"0c", X"0f", X"e1", X"05", X"0d", X"17", X"d0", X"fe", X"11", X"f7", X"f4", X"0e", X"1d", X"fe", X"03", X"f5", X"c8", X"16", X"05", X"f9", X"e7", X"02", X"ff", X"03",
                                                        X"09", X"f7", X"0e", X"26", X"0c", X"da", X"ff", X"34", X"17", X"f8", X"0a", X"1d", X"fd", X"07", X"1d", X"00", X"08", X"03", X"d9", X"1f", X"ff", X"e9", X"f4", X"e2", X"13", X"e7",
                                                        X"f0", X"f0", X"e6", X"05", X"46", X"03", X"fb", X"05", X"d4", X"f0", X"32", X"1a", X"fa", X"d8", X"f9", X"ec", X"e6", X"13", X"c5", X"04", X"e9", X"fe", X"ff", X"10", X"07", X"e2",
                                                        X"0f", X"10", X"fb", X"d7", X"cc", X"ef", X"d2", X"1d", X"d6", X"08", X"04", X"ed", X"02", X"1e", X"f2", X"28", X"2e", X"f9", X"0b", X"c2", X"10", X"f2", X"f0", X"f1", X"eb", X"09",
                                                        X"f9", X"f6", X"f9", X"04", X"ff", X"37", X"f8", X"17", X"09", X"10", X"e4", X"fe", X"f8", X"e9", X"ea", X"ea", X"24", X"0b", X"0c", X"1a", X"01", X"e3", X"00", X"f9", X"fe", X"eb",
                                                        X"02", X"0d", X"fb", X"e9", X"15", X"11", X"3f", X"0b", X"f7", X"14", X"0e", X"2a", X"e8", X"10", X"f9", X"de", X"df", X"fd", X"34", X"db", X"fe", X"0b", X"ea", X"f6", X"f7", X"1e",
                                                        X"f6", X"f3", X"f1", X"fa", X"03", X"0e", X"ef", X"04", X"08", X"f4", X"01", X"fb", X"ec", X"0c", X"0a", X"27", X"13", X"d8", X"0b", X"09", X"fa", X"e3", X"0b", X"07", X"f7", X"0b",
                                                        X"fb", X"fb", X"e0", X"04", X"ef", X"fd", X"ec", X"e4", X"ce", X"29", X"01", X"fd", X"01", X"15", X"11", X"f0", X"ee", X"fd", X"18", X"fc", X"0b", X"fe", X"ea", X"cf", X"bf", X"ef",
                                                        X"06", X"29", X"18", X"26", X"fc", X"05", X"16", X"02", X"23", X"0a", X"01", X"e4", X"00", X"d3", X"d1", X"0b", X"06", X"e6", X"0d", X"0f", X"f4", X"cf", X"12", X"05", X"f1", X"ef",
                                                        X"00", X"f2", X"f6", X"e3", X"ef", X"32", X"00", X"1a", X"0d", X"28", X"eb", X"13", X"f2", X"15", X"d7", X"16", X"fd", X"f5", X"ff", X"f4", X"0e", X"36", X"fc", X"f0", X"d2", X"1b",
                                                        X"f4", X"00", X"17", X"10", X"e0", X"f9", X"13", X"f4", X"ef", X"11", X"12", X"0b", X"f8", X"39", X"0b", X"ff", X"e3", X"ee", X"e4", X"0c", X"d0", X"06", X"02", X"fb", X"06", X"19",
                                                        X"e9", X"ed", X"08", X"e3", X"e9", X"fe", X"f8", X"f9", X"ed", X"07", X"eb", X"02", X"ff", X"05", X"ce", X"0a", X"33", X"f5", X"fc", X"ee", X"ef", X"ea", X"03", X"08", X"ee", X"10",
                                                        X"db", X"0d", X"03", X"f3", X"04", X"06", X"d4", X"07", X"0b", X"06", X"07", X"fb", X"fc", X"f7", X"e1", X"f9", X"3f", X"f0", X"14", X"07", X"e5", X"df", X"1f", X"22", X"13", X"df",
                                                        X"e0", X"ed", X"f8", X"e3", X"da", X"fc", X"ef", X"00", X"06", X"08", X"00", X"2f", X"0f", X"fc", X"14", X"ca", X"de", X"fc", X"ef", X"fd", X"ef", X"05", X"e4", X"fd", X"fd", X"14",
                                                        X"0f", X"24", X"31", X"f8", X"f2", X"f2", X"e7", X"0c", X"0a", X"f9", X"ee", X"0e", X"1b", X"f7", X"fa", X"24", X"e9", X"23", X"19", X"e9", X"0c", X"05", X"f5", X"f8", X"fa", X"eb",
                                                        X"fd", X"fc", X"f3", X"07", X"07", X"24", X"f9", X"fb", X"fa", X"20", X"03", X"e4", X"0d", X"f4", X"0f", X"f0", X"10", X"00", X"f2", X"f8", X"03", X"fb", X"19", X"01", X"f2", X"24",
                                                        X"02", X"0d", X"00", X"ef", X"fc", X"fb", X"13", X"04", X"48", X"fb", X"ff", X"31", X"f9", X"fb", X"d9", X"eb", X"f4", X"ef", X"fb", X"11", X"1f", X"d4", X"ff", X"e9", X"e9", X"10",
                                                        X"fc", X"17", X"f6", X"e7", X"e1", X"e0", X"14", X"ed", X"11", X"0a", X"0b", X"22", X"10", X"0c", X"01", X"08", X"0b", X"09", X"dc", X"cc", X"d4", X"e2", X"02", X"1b", X"fe", X"13",
                                                        X"fd", X"ed", X"2e", X"ec", X"42", X"01", X"13", X"fa", X"11", X"c7", X"e6", X"fc", X"f0", X"d2", X"fd", X"08", X"16", X"15", X"19", X"0e", X"f7", X"06", X"f5", X"fa", X"17", X"ea",
                                                        X"d2", X"ef", X"03", X"fc", X"d4", X"04", X"05", X"19", X"1c", X"f4", X"23", X"1b", X"0e", X"de", X"0f", X"fe", X"fb", X"d9", X"fc", X"de", X"20", X"12", X"df", X"f9", X"15", X"18",
                                                        X"d8", X"08", X"13", X"f1", X"05", X"0b", X"fe", X"0a", X"e8", X"28", X"d1", X"f3", X"f9", X"25", X"02", X"fb", X"dc", X"fa", X"13", X"02", X"15", X"ee", X"f7", X"d2", X"fb", X"3a",
                                                        X"e9", X"04", X"07", X"2a", X"fb", X"04", X"f1", X"f6", X"fb", X"ed", X"03", X"22", X"f6", X"d0", X"f4", X"f0", X"15", X"13", X"f9", X"ea", X"ee", X"09", X"21", X"02", X"16", X"05",
                                                        X"f0", X"3c", X"39", X"fc", X"0b", X"04", X"05", X"e5", X"07", X"11", X"ca", X"fa", X"0e", X"fd", X"0e", X"03", X"df", X"25", X"0e", X"c5", X"01", X"06", X"fd", X"f3", X"d3", X"06",
                                                        X"bd", X"ff", X"00", X"0a", X"ee", X"07", X"dc", X"37", X"e4", X"e2", X"03", X"0a", X"e0", X"fc", X"eb", X"02", X"e6", X"f0", X"12", X"11", X"00", X"fa", X"e6", X"3d", X"10", X"e4",
                                                        X"13", X"dc", X"ef", X"02", X"f6", X"d6", X"d3", X"0a", X"26", X"0d", X"ff", X"11", X"e8", X"04", X"0c", X"e3", X"f5", X"e5", X"f8", X"e9", X"0c", X"dd", X"10", X"03", X"11", X"f5",
                                                        X"ed", X"0c", X"e6", X"1a", X"fa", X"dd", X"fd", X"12", X"e5", X"df", X"04", X"f9", X"ec", X"01", X"fe", X"00", X"f9", X"13", X"09", X"dc", X"04", X"ef", X"eb", X"d8", X"23", X"fd",
                                                        X"11", X"f8", X"1c", X"f4", X"14", X"ee", X"fe", X"1c", X"1f", X"0f", X"18", X"f0", X"f4", X"11", X"fa", X"21", X"20", X"f2", X"df", X"fa", X"db", X"02", X"05", X"01", X"e5", X"dd",
                                                        X"ed", X"1a", X"f9", X"2c", X"09", X"f2", X"13", X"0c", X"33", X"f1", X"de", X"fe", X"04", X"16", X"ef", X"b7", X"c6", X"13", X"14", X"cf", X"f5", X"f9", X"0f", X"e8", X"00", X"f5",
                                                        X"f7", X"05", X"f2", X"0e", X"0c", X"d4", X"e0", X"f0", X"1a", X"15", X"e1", X"12", X"08", X"03", X"27", X"f1", X"e4", X"04", X"f4", X"fe", X"00", X"e9", X"df", X"ea", X"f6", X"11",
                                                        X"da", X"06", X"15", X"fe", X"f7", X"02", X"2f", X"09", X"02", X"f0", X"01", X"ea", X"da", X"ee", X"04", X"e7", X"f3", X"07", X"ff", X"07", X"e1", X"0f", X"16", X"0e", X"02", X"db",
                                                        X"f7", X"13", X"d5", X"20", X"07", X"dd", X"fc", X"0c", X"16", X"0e", X"f1", X"fa", X"df", X"f6", X"1c", X"0e", X"16", X"26", X"ef", X"37", X"f8", X"26", X"06", X"09", X"ef", X"d7",
                                                        X"fd", X"17", X"2c", X"04", X"12", X"ea", X"0d", X"f8", X"0c", X"26", X"09", X"21", X"ec", X"07", X"fa", X"15", X"e6", X"07", X"24", X"f8", X"03", X"e8", X"fc", X"42", X"0f", X"d1",
                                                        X"fb", X"ff", X"e1", X"fa", X"f2", X"d8", X"e6", X"11", X"eb", X"00", X"00", X"02", X"e8", X"f0", X"08", X"e2", X"0a", X"c5", X"fd", X"01", X"ef", X"04", X"db", X"f7", X"12", X"fa",
                                                        X"0b", X"fe", X"09", X"05", X"36", X"18", X"21", X"cb", X"f3", X"fa", X"e5", X"19", X"e3", X"14", X"36", X"00", X"00", X"0f", X"f9", X"0d", X"11", X"e1", X"06", X"10", X"df", X"e7",
                                                        X"f2", X"fc", X"ec", X"fc", X"f6", X"0d", X"04", X"f3", X"f7", X"f4", X"41", X"16", X"1c", X"15", X"f2", X"ec", X"fe", X"fb", X"ea", X"08", X"da", X"12", X"ff", X"e9", X"ea", X"1f",
                                                        X"ef", X"d5", X"05", X"f3", X"e9", X"e5", X"ef", X"df", X"00", X"00", X"ed", X"f5", X"00", X"11", X"ff", X"21", X"0b", X"e7", X"eb", X"1a", X"f5", X"f8", X"15", X"d3", X"fb", X"10",
                                                        X"f5", X"10", X"02", X"fd", X"07", X"dc", X"ef", X"f1", X"04", X"2e", X"1e", X"fe", X"0c", X"03", X"07", X"04", X"ea", X"f5", X"04", X"06", X"f9", X"e5", X"10", X"30", X"fd", X"0d",
                                                        X"15", X"0f", X"f9", X"03", X"f2", X"f9", X"2e", X"01", X"fe", X"fa", X"01", X"e2", X"fa", X"db", X"06", X"28", X"e0", X"0a", X"09", X"02", X"20", X"ee", X"fa", X"f7", X"ff", X"10",
                                                        X"e9", X"b8", X"d2", X"16", X"ee", X"d2", X"16", X"05", X"e8", X"0a", X"35", X"fa", X"eb", X"0f", X"09", X"0f", X"01", X"d3", X"dc", X"f7", X"13", X"04", X"29", X"27", X"f0", X"e7",
                                                        X"f9", X"f7", X"33", X"f3", X"f3", X"ec", X"07", X"df", X"d5", X"f8", X"fe", X"f8", X"ee", X"01", X"04", X"0b", X"26", X"fb", X"ed", X"fc", X"01", X"f8", X"f7", X"0c", X"09", X"05",
                                                        X"ec", X"27", X"0f", X"1f", X"0d", X"e7", X"13", X"f6", X"29", X"f6", X"06", X"f4", X"e6", X"f4", X"1a", X"0a", X"f3", X"0b", X"18", X"17", X"0a", X"03", X"f8", X"07", X"da", X"05",
                                                        X"05", X"fc", X"f7", X"2f", X"fb", X"f6", X"0d", X"31", X"fb", X"ef", X"1f", X"fc", X"f5", X"0f", X"23", X"01", X"09", X"ed", X"0c", X"ff", X"26", X"2e", X"f8", X"0c", X"db", X"04",
                                                        X"da", X"ea", X"e5", X"05", X"05", X"05", X"fe", X"ea", X"d8", X"2f", X"ef", X"cf", X"26", X"d8", X"fd", X"f2", X"e8", X"fa", X"db", X"fb", X"0c", X"09", X"fd", X"fb", X"e7", X"06",
                                                        X"fd", X"13", X"04", X"db", X"e8", X"ef", X"e1", X"14", X"e6", X"f9", X"eb", X"ff", X"f3", X"08", X"de", X"02", X"31", X"1b", X"0a", X"01", X"1d", X"03", X"f6", X"06", X"cb", X"01",
                                                        X"3d", X"09", X"ea", X"19", X"e7", X"24", X"ef", X"e8", X"ff", X"d2", X"21", X"f9", X"f0", X"02", X"f0", X"0b", X"2b", X"01", X"fd", X"0a", X"d2", X"07", X"05", X"e2", X"f1", X"cf",
                                                        X"f4", X"f7", X"fc", X"e0", X"f7", X"fa", X"fc", X"f7", X"f7", X"20", X"0e", X"14", X"0b", X"35", X"f9", X"19", X"e5", X"e4", X"0b", X"e2", X"14", X"f9", X"15", X"07", X"04", X"14",
                                                        X"1e", X"16", X"f9", X"2c", X"03", X"05", X"2b", X"ed", X"fd", X"f2", X"f6", X"03", X"15", X"fc", X"04", X"0f", X"e8", X"fb", X"e0", X"05", X"09", X"10", X"c5", X"08", X"2d", X"fb",
                                                        X"06", X"f2", X"f2", X"f6", X"06", X"22", X"fd", X"d9", X"04", X"27", X"03", X"ef", X"c9", X"f1", X"ff", X"fa", X"06", X"f6", X"ca", X"0b", X"0d", X"06", X"ee", X"e1", X"c1", X"e2",
                                                        X"f4", X"e8", X"23", X"f6", X"2a", X"15", X"14", X"06", X"36", X"0b", X"12", X"10", X"e4", X"c4", X"de", X"05", X"06", X"15", X"e4", X"0d", X"19", X"00", X"0b", X"f1", X"d4", X"0a",
                                                        X"fa", X"f1", X"d8", X"d9", X"df", X"02", X"ef", X"dd", X"e9", X"0a", X"fd", X"17", X"f5", X"00", X"fa", X"10", X"10", X"0a", X"eb", X"01", X"e7", X"17", X"fd", X"f7", X"0f", X"f7",
                                                        X"30", X"10", X"ed", X"13", X"0e", X"1a", X"ff", X"e8", X"0e", X"17", X"1d", X"26", X"fb", X"f0", X"e3", X"04", X"1d", X"0a", X"fb", X"12", X"db", X"04", X"12", X"05", X"f4", X"00",
                                                        X"f6", X"09", X"ff", X"e1", X"ca", X"0d", X"ff", X"1d", X"19", X"06", X"e5", X"f4", X"fa", X"e0", X"01", X"01", X"df", X"fc", X"f3", X"1f", X"16", X"02", X"eb", X"07", X"e0", X"0c",
                                                        X"ca", X"fc", X"17", X"0c", X"fd", X"12", X"1b", X"18", X"00", X"f6", X"07", X"f5", X"f9", X"f2", X"ec", X"fa", X"1d", X"f9", X"06", X"05", X"ea", X"0a", X"fa", X"ff", X"18", X"15",
                                                        X"08", X"e1", X"ee", X"13", X"eb", X"fe", X"07", X"02", X"04", X"03", X"fa", X"27", X"14", X"fe", X"02", X"c3", X"fc", X"f5", X"d2", X"ea", X"cd", X"ff", X"13", X"00", X"ea", X"f3",
                                                        X"f9", X"31", X"fc", X"07", X"01", X"d4", X"de", X"ed", X"ed", X"f1", X"e5", X"fb", X"1c", X"0b", X"f3", X"04", X"da", X"26", X"e4", X"10", X"03", X"d5", X"fa", X"fe", X"12", X"fb",
                                                        X"f4", X"03", X"20", X"17", X"0d", X"17", X"ef", X"f5", X"02", X"43", X"0a", X"d3", X"d5", X"e2", X"07", X"e0", X"e9", X"fd", X"f9", X"07", X"0d", X"25", X"ff", X"d8", X"20", X"25",
                                                        X"e5", X"2a", X"00", X"f1", X"fe", X"c7", X"0a", X"14", X"fe", X"0d", X"01", X"14", X"11", X"fb", X"09", X"06", X"29", X"d2", X"dc", X"05", X"0e", X"f7", X"08", X"f3", X"ce", X"09",
                                                        X"04", X"f7", X"de", X"d4", X"d9", X"c6", X"e5", X"04", X"f2", X"10", X"f8", X"fd", X"fa", X"f2", X"f3", X"fb", X"0c", X"10", X"03", X"e2", X"f4", X"24", X"07", X"24", X"ef", X"0a",
                                                        X"30", X"20", X"0b", X"02", X"f0", X"f9", X"00", X"08", X"d9", X"cf", X"e7", X"0a", X"05", X"db", X"11", X"06", X"f6", X"0e", X"ee", X"f8", X"df", X"00", X"09", X"f6", X"02", X"ca",
                                                        X"c9", X"e6", X"09", X"ec", X"09", X"15", X"34", X"02", X"f2", X"ee", X"22", X"02", X"07", X"11", X"ed", X"f4", X"ed", X"13", X"fd", X"cc", X"1a", X"00", X"36", X"ea", X"02", X"01",
                                                        X"d7", X"15", X"07", X"ed", X"2f", X"de", X"c2", X"34", X"fe", X"df", X"bc", X"f2", X"0e", X"0e", X"10", X"07", X"28", X"0c", X"f5", X"08", X"0e", X"fa", X"fe", X"ef", X"11", X"2f",
                                                        X"11", X"f9", X"de", X"10", X"00", X"08", X"ee", X"eb", X"13", X"eb", X"f0", X"0b", X"e1", X"2e", X"fa", X"13", X"ea", X"02", X"16", X"f4", X"d0", X"04", X"08", X"00", X"0a", X"f3",
                                                        X"f6", X"01", X"33", X"28", X"f1", X"22", X"01", X"00", X"01", X"de", X"e1", X"05", X"e3", X"fb", X"03", X"ea", X"18", X"f9", X"0d", X"e8", X"05", X"18", X"06", X"00", X"de", X"dd",
                                                        X"ce", X"fe", X"33", X"06", X"05", X"03", X"fc", X"ee", X"00", X"c8", X"0b", X"1d", X"ea", X"e5", X"dc", X"27", X"d3", X"18", X"f6", X"05", X"07", X"18", X"00", X"02", X"41", X"0e",
                                                        X"0b", X"00", X"fa", X"e9", X"eb", X"e8", X"d0", X"1c", X"35", X"03", X"fa", X"ed", X"f9", X"f8", X"25", X"dd", X"08", X"d5", X"f1", X"f7", X"f6", X"e5", X"da", X"fb", X"03", X"f9",
                                                        X"f7", X"eb", X"18", X"49", X"0d", X"fb", X"f3", X"c7", X"fa", X"f3", X"f3", X"ee", X"f4", X"0c", X"f9", X"fd", X"f6", X"30", X"df", X"fe", X"19", X"2b", X"f8", X"fe", X"f0", X"03",
                                                        X"1c", X"e7", X"e6", X"05", X"27", X"f6", X"01", X"38", X"fa", X"a0", X"de", X"1e", X"ec", X"d6", X"f2", X"12", X"3d", X"e7", X"28", X"05");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"05";
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

