-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block398.vhd
-- Created: 2023-06-15 16:03:06
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block398
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage46/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block398 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block398;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block398 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"dc", X"0a", X"e6", X"f1", X"e2", X"3c", X"2a", X"e7", X"04", X"d9", X"ee", X"41", X"f4", X"1a",
                                                        X"df", X"ea", X"03", X"d3", X"fb", X"d3", X"e5", X"db", X"02", X"ec", X"23", X"d0", X"de", X"f5", X"03", X"0e", X"f2", X"eb", X"28", X"f2", X"27", X"5a", X"06", X"db", X"05", X"e1",
                                                        X"3c", X"ca", X"f0", X"f0", X"18", X"fb", X"27", X"f3", X"ea", X"15", X"ec", X"36", X"df", X"fb", X"dc", X"de", X"f0", X"f3", X"f6", X"4f", X"cd", X"f3", X"19", X"1c", X"e8", X"e5",
                                                        X"f7", X"fe", X"df", X"42", X"23", X"08", X"30", X"29", X"02", X"dc", X"19", X"06", X"f8", X"ef", X"e9", X"13", X"1c", X"e9", X"d3", X"06", X"14", X"f3", X"f7", X"3e", X"0b", X"1f",
                                                        X"e2", X"fc", X"1d", X"14", X"01", X"f8", X"12", X"1c", X"fb", X"fd", X"0d", X"f5", X"15", X"44", X"02", X"f1", X"0f", X"f2", X"21", X"02", X"f7", X"f5", X"f7", X"1a", X"14", X"0c",
                                                        X"fc", X"f3", X"02", X"e5", X"f4", X"26", X"1b", X"ff", X"1b", X"fb", X"e8", X"e6", X"ea", X"15", X"0f", X"01", X"08", X"00", X"26", X"e6", X"f8", X"06", X"07", X"f0", X"1a", X"03",
                                                        X"05", X"02", X"16", X"fc", X"de", X"fe", X"0d", X"ee", X"fd", X"08", X"fd", X"d7", X"e9", X"05", X"f7", X"09", X"28", X"f1", X"ed", X"11", X"e2", X"3d", X"df", X"fa", X"f1", X"b9",
                                                        X"0e", X"3c", X"22", X"03", X"38", X"09", X"ec", X"e5", X"03", X"3b", X"0d", X"f6", X"12", X"f0", X"35", X"cc", X"ef", X"dc", X"dc", X"07", X"13", X"16", X"f7", X"f8", X"0a", X"d5",
                                                        X"de", X"2e", X"2e", X"e5", X"09", X"df", X"fa", X"34", X"f4", X"f8", X"fd", X"ee", X"ee", X"10", X"13", X"e9", X"01", X"0e", X"11", X"ef", X"2f", X"c3", X"ff", X"38", X"f3", X"0a",
                                                        X"1e", X"ff", X"0b", X"fd", X"f1", X"f8", X"07", X"15", X"09", X"07", X"d5", X"d7", X"00", X"2a", X"08", X"e8", X"f0", X"1c", X"16", X"fa", X"30", X"3b", X"ea", X"0d", X"ca", X"f3",
                                                        X"1e", X"01", X"00", X"c9", X"25", X"f9", X"13", X"f6", X"f1", X"09", X"05", X"e7", X"09", X"03", X"23", X"e1", X"03", X"e8", X"e6", X"31", X"e7", X"03", X"2c", X"ed", X"2c", X"0e",
                                                        X"f8", X"03", X"ff", X"14", X"e7", X"e0", X"e6", X"fb", X"00", X"f5", X"17", X"e5", X"eb", X"f0", X"da", X"ea", X"02", X"39", X"f1", X"2c", X"1e", X"f1", X"12", X"dc", X"ed", X"3e",
                                                        X"17", X"fb", X"3a", X"f1", X"1b", X"ea", X"f5", X"4e", X"02", X"05", X"d2", X"0b", X"00", X"d2", X"00", X"1e", X"23", X"f8", X"25", X"f6", X"1f", X"08", X"00", X"18", X"f0", X"f0",
                                                        X"21", X"f1", X"df", X"ed", X"ed", X"31", X"08", X"f4", X"17", X"ff", X"f8", X"ce", X"ec", X"07", X"e4", X"f5", X"fd", X"fe", X"ea", X"fc", X"ec", X"fa", X"20", X"14", X"0d", X"22",
                                                        X"13", X"fb", X"dd", X"f3", X"df", X"ff", X"d7", X"ec", X"de", X"32", X"f9", X"28", X"19", X"fc", X"11", X"1b", X"0d", X"fd", X"23", X"4d", X"03", X"ff", X"fd", X"eb", X"e1", X"d7",
                                                        X"e0", X"e9", X"16", X"f9", X"11", X"10", X"fe", X"1b", X"01", X"06", X"dd", X"e3", X"ec", X"f9", X"31", X"c2", X"01", X"ec", X"f2", X"10", X"f5", X"1a", X"08", X"f3", X"e6", X"00",
                                                        X"ee", X"e6", X"f7", X"ed", X"eb", X"19", X"08", X"26", X"ee", X"10", X"d4", X"25", X"18", X"13", X"06", X"4a", X"f1", X"1e", X"1e", X"fc", X"ea", X"0e", X"ec", X"11", X"d3", X"f5",
                                                        X"0b", X"e7", X"1b", X"f5", X"13", X"1d", X"ec", X"10", X"03", X"dc", X"04", X"0a", X"ec", X"ef", X"10", X"07", X"2d", X"1b", X"05", X"ee", X"e5", X"db", X"f4", X"2c", X"e2", X"e4",
                                                        X"e3", X"21", X"fa", X"fe", X"d0", X"ee", X"03", X"f3", X"26", X"fc", X"f2", X"2f", X"00", X"f9", X"29", X"e3", X"00", X"34", X"14", X"34", X"ee", X"f0", X"0b", X"f4", X"e6", X"ef",
                                                        X"f4", X"2e", X"0f", X"10", X"07", X"ec", X"15", X"be", X"ff", X"ff", X"09", X"fb", X"f2", X"0b", X"f8", X"ff", X"15", X"c2", X"02", X"f3", X"fd", X"ec", X"12", X"0b", X"fb", X"37",
                                                        X"21", X"09", X"17", X"dc", X"0b", X"02", X"f0", X"24", X"05", X"dc", X"ff", X"f0", X"22", X"c4", X"0f", X"04", X"e6", X"f1", X"f2", X"e8", X"1a", X"eb", X"e6", X"17", X"16", X"13",
                                                        X"1f", X"ef", X"23", X"34", X"f2", X"36", X"da", X"fc", X"f6", X"02", X"e8", X"0f", X"11", X"26", X"e8", X"f4", X"c5", X"d6", X"0f", X"4b", X"fb", X"26", X"f3", X"fa", X"15", X"ff",
                                                        X"03", X"10", X"1d", X"dc", X"de", X"ef", X"ef", X"f6", X"05", X"16", X"01", X"3a", X"db", X"12", X"43", X"e7", X"24", X"e7", X"f3", X"d1", X"ff", X"2b", X"fa", X"00", X"1d", X"12",
                                                        X"09", X"e7", X"0b", X"fd", X"2d", X"07", X"ff", X"05", X"ed", X"2e", X"14", X"31", X"f9", X"fa", X"ed", X"fe", X"f9", X"07", X"ec", X"eb", X"34", X"ed", X"26", X"f4", X"f3", X"ee",
                                                        X"ed", X"47", X"1d", X"03", X"e4", X"e5", X"f4", X"23", X"ef", X"04", X"1e", X"f0", X"06", X"fa", X"e1", X"fd", X"e8", X"ff", X"29", X"e1", X"e9", X"23", X"10", X"0e", X"ef", X"01",
                                                        X"05", X"07", X"f2", X"e4", X"f3", X"56", X"f7", X"00", X"dc", X"f5", X"e4", X"dd", X"30", X"f3", X"14", X"0f", X"e1", X"0c", X"18", X"0b", X"ee", X"ec", X"f0", X"1e", X"02", X"e6",
                                                        X"38", X"3a", X"f1", X"e5", X"e2", X"0a", X"3a", X"e9", X"2e", X"17", X"0e", X"51", X"06", X"11", X"2b", X"09", X"ff", X"c3", X"14", X"1d", X"fb", X"0d", X"09", X"fd", X"e6", X"e4",
                                                        X"e4", X"06", X"f0", X"0f", X"de", X"d9", X"18", X"26", X"05", X"33", X"03", X"f6", X"05", X"ff", X"f8", X"0a", X"07", X"10", X"10", X"1f", X"f9", X"fc", X"38", X"15", X"02", X"fd",
                                                        X"e9", X"02", X"1f", X"1e", X"fb", X"14", X"19", X"53", X"d3", X"56", X"1b", X"ef", X"f4", X"c4", X"1e", X"47", X"dd", X"0c", X"fc", X"09", X"21", X"f8", X"19", X"f5", X"07", X"0a",
                                                        X"2a", X"e9", X"19", X"f4", X"fc", X"f8", X"f6", X"01", X"fc", X"13", X"ee", X"e1", X"24", X"16", X"10", X"02", X"ec", X"eb", X"fa", X"d8", X"fc", X"ee", X"04", X"11", X"ee", X"11",
                                                        X"05", X"fc", X"31", X"fd", X"fd", X"2e", X"25", X"09", X"ee", X"0e", X"f9", X"e7", X"d4", X"02", X"fa", X"03", X"12", X"f1", X"10", X"57", X"13", X"02", X"e0", X"08", X"ef", X"e2",
                                                        X"ef", X"f4", X"dd", X"fc", X"03", X"0d", X"2b", X"14", X"fd", X"42", X"e3", X"15", X"15", X"f9", X"f3", X"35", X"f1", X"0f", X"ec", X"17", X"2b", X"08", X"07", X"e0", X"20", X"fa",
                                                        X"ff", X"f3", X"f1", X"d3", X"de", X"14", X"10", X"e5", X"1a", X"f3", X"f6", X"ec", X"16", X"eb", X"fc", X"0d", X"01", X"29", X"f5", X"f5", X"21", X"d7", X"00", X"28", X"1b", X"e7",
                                                        X"45", X"10", X"e3", X"18", X"01", X"06", X"e1", X"39", X"d9", X"eb", X"0d", X"df", X"fa", X"2a", X"e1", X"ee", X"36", X"f3", X"dc", X"fe", X"ef", X"17", X"00", X"2b", X"e4", X"0a",
                                                        X"f5", X"10", X"07", X"43", X"10", X"00", X"f8", X"0c", X"de", X"e1", X"04", X"22", X"ec", X"1b", X"f5", X"dc", X"d2", X"ef", X"db", X"e6", X"dc", X"0d", X"46", X"0b", X"1e", X"0d",
                                                        X"ef", X"fc", X"ee", X"ec", X"db", X"ea", X"ea", X"eb", X"09", X"24", X"da", X"eb", X"39", X"08", X"0e", X"0c", X"da", X"22", X"fa", X"ea", X"33", X"ea", X"1e", X"41", X"f1", X"18",
                                                        X"fb", X"f8", X"21", X"0a", X"1d", X"0a", X"01", X"38", X"09", X"16", X"e3", X"ee", X"de", X"3f", X"10", X"e9", X"03", X"07", X"01", X"0f", X"1b", X"1d", X"10", X"ea", X"e9", X"0d",
                                                        X"fd", X"dd", X"df", X"b7", X"ec", X"dd", X"0b", X"ff", X"19", X"fc", X"f4", X"fa", X"f4", X"2b", X"0c", X"f1", X"e9", X"e2", X"1b", X"11", X"fc", X"11", X"ec", X"f2", X"47", X"ed",
                                                        X"07", X"f1", X"dd", X"f7", X"d5", X"23", X"db", X"ef", X"e5", X"11", X"08", X"25", X"29", X"01", X"00", X"06", X"18", X"03", X"1a", X"32", X"04", X"1a", X"3d", X"06", X"13", X"fc",
                                                        X"12", X"01", X"e7", X"08", X"10", X"14", X"12", X"e6", X"fd", X"16", X"0f", X"25", X"18", X"e5", X"e6", X"13", X"0b", X"e0", X"1d", X"03", X"f0", X"04", X"03", X"01", X"ee", X"32",
                                                        X"f2", X"2c", X"e9", X"fc", X"db", X"d6", X"10", X"14", X"ef", X"11", X"3b", X"06", X"ee", X"fc", X"f0", X"f7", X"e6", X"f0", X"e2", X"e0", X"cd", X"eb", X"f0", X"2a", X"20", X"03",
                                                        X"f8", X"f9", X"0d", X"1d", X"e3", X"39", X"f9", X"12", X"e8", X"e7", X"f4", X"d8", X"17", X"e9", X"1e", X"f2", X"42", X"07", X"dc", X"ff", X"ea", X"14", X"ee", X"e0", X"e8", X"df",
                                                        X"0b", X"cd", X"ef", X"18", X"fc", X"f9", X"1a", X"fe", X"01", X"ff", X"fd", X"0d", X"fc", X"00", X"e8", X"f9", X"fe", X"4b", X"07", X"4a", X"de", X"f9", X"49", X"04", X"1a", X"ee",
                                                        X"e8", X"ed", X"dc", X"fb", X"cb", X"f7", X"02", X"d5", X"07", X"0f", X"e4", X"05", X"3a", X"f2", X"e4", X"f4", X"0f", X"3f", X"fd", X"1d", X"f5", X"e3", X"08", X"bc", X"00", X"26",
                                                        X"1a", X"11", X"34", X"e6", X"eb", X"14", X"14", X"18", X"ed", X"e5", X"fc", X"ee", X"04", X"4a", X"ef", X"0d", X"e6", X"f5", X"2c", X"0a", X"e1", X"e8", X"16", X"42", X"fe", X"fa",
                                                        X"c5", X"eb", X"05", X"fb", X"14", X"38", X"19", X"fc", X"17", X"e8", X"dc", X"19", X"fc", X"de", X"f3", X"32", X"e7", X"e5", X"13", X"17", X"16", X"18", X"05", X"06", X"25", X"16",
                                                        X"0f", X"ec", X"f6", X"16", X"ef", X"13", X"dd", X"f0", X"ed", X"1d", X"fa", X"e3", X"16", X"fa", X"06", X"f0", X"e0", X"e6", X"f8", X"45", X"04", X"01", X"3e", X"fa", X"2a", X"f4",
                                                        X"ee", X"23", X"09", X"11", X"4e", X"15", X"28", X"eb", X"0b", X"f0", X"f4", X"3f", X"3e", X"fd", X"0e", X"bf", X"f1", X"eb", X"e5", X"02", X"33", X"fc", X"23", X"0f", X"ee", X"4d",
                                                        X"12", X"fd", X"e4", X"ef", X"0c", X"e0", X"f5", X"50", X"f4", X"f5", X"3a", X"f7", X"19", X"fb", X"f3", X"24", X"e5", X"f6", X"f6", X"fa", X"35", X"2f", X"12", X"e0", X"e2", X"0d",
                                                        X"ff", X"1e", X"fd", X"ee", X"ef", X"ee", X"e7", X"1f", X"d9", X"e7", X"fc", X"1c", X"09", X"ea", X"1e", X"ef", X"54", X"05", X"05", X"0a", X"fc", X"33", X"f2", X"fa", X"1e", X"eb",
                                                        X"06", X"ee", X"0d", X"4c", X"06", X"10", X"1b", X"07", X"2e", X"0a", X"2d", X"31", X"03", X"17", X"fa", X"e9", X"e1", X"b8", X"04", X"f6", X"d3", X"fe", X"df", X"13", X"28", X"f4",
                                                        X"12", X"34", X"16", X"f3", X"2c", X"e8", X"12", X"06", X"e6", X"d4", X"11", X"0b", X"09", X"fe", X"07", X"01", X"f9", X"f9", X"03", X"f9", X"c9", X"e3", X"f2", X"d1", X"19", X"04",
                                                        X"e9", X"ea", X"29", X"06", X"fd", X"13", X"0b", X"38", X"f8", X"28", X"1d", X"f8", X"e6", X"3b", X"0c", X"18", X"08", X"03", X"02", X"fc", X"fd", X"f7", X"1c", X"5f", X"e6", X"e1",
                                                        X"d1", X"e7", X"2e", X"b8", X"f5", X"0b", X"ff", X"0c", X"1c", X"11", X"1b", X"01", X"02", X"e4", X"e7", X"1c", X"e1", X"ea", X"f0", X"3a", X"02", X"fe", X"27", X"06", X"33", X"01",
                                                        X"08", X"18", X"f1", X"13", X"02", X"27", X"1d", X"dd", X"e7", X"26", X"0e", X"f2", X"d7", X"f7", X"26", X"19", X"ef", X"dc", X"07", X"07", X"ef", X"28", X"f5", X"f2", X"04", X"dd",
                                                        X"0e", X"27", X"ff", X"07", X"1b", X"14", X"f6", X"0a", X"01", X"fa", X"f9", X"f4", X"e0", X"0b", X"f5", X"3d", X"00", X"f8", X"18", X"fc", X"31", X"e7", X"f3", X"10", X"03", X"e5",
                                                        X"11", X"ea", X"10", X"ea", X"1d", X"bb", X"0f", X"12", X"00", X"04", X"f4", X"0b", X"29", X"fb", X"fe", X"48", X"fe", X"fa", X"1d", X"f2", X"ee", X"eb", X"fb", X"13", X"1c", X"06",
                                                        X"05", X"ee", X"12", X"05", X"f6", X"27", X"f5", X"f1", X"ea", X"06", X"fd", X"cf", X"f6", X"1e", X"fb", X"03", X"1a", X"f7", X"08", X"16", X"df", X"d1", X"e8", X"01", X"22", X"f1",
                                                        X"ec", X"11", X"e5", X"44", X"07", X"ee", X"3d", X"e8", X"37", X"1d", X"db", X"09", X"fd", X"04", X"d7", X"08", X"07", X"d9", X"f7", X"eb", X"f2", X"ff", X"f7", X"01", X"22", X"1c",
                                                        X"f2", X"fa", X"e2", X"f2", X"dd", X"02", X"09", X"f1", X"23", X"25", X"0d", X"03", X"f7", X"06", X"ea", X"fa", X"fd", X"d2", X"ec", X"0c", X"fa", X"ef", X"17", X"3f", X"0d", X"2c",
                                                        X"eb", X"e4", X"e4", X"1a", X"e9", X"ff", X"03", X"06", X"0d", X"0d", X"35", X"f4", X"fe", X"fa", X"14", X"34", X"d8", X"f6", X"fc", X"fe", X"21", X"04", X"e2", X"35", X"ed", X"e6",
                                                        X"ff", X"08", X"db", X"12", X"0f", X"2b", X"e1", X"07", X"2a", X"ed", X"2d", X"e2", X"23", X"e1", X"ea", X"19", X"db", X"02", X"2e", X"f9", X"f5", X"f4", X"f8", X"02", X"16", X"ff",
                                                        X"10", X"05", X"f0", X"21", X"02", X"07", X"30", X"e5", X"d7", X"05", X"05", X"e0", X"fd", X"0d", X"11", X"08", X"f1", X"e0", X"fc", X"42", X"eb", X"30", X"0b", X"d7", X"0b", X"3f",
                                                        X"11", X"0c", X"ef", X"f0", X"11", X"f1", X"ea", X"0b", X"ee", X"d4", X"f3", X"f9", X"17", X"e6", X"01", X"f8", X"fd", X"2f", X"1f", X"00", X"ff", X"13", X"ef", X"d6", X"dc", X"f2",
                                                        X"02", X"fb", X"3b", X"e4", X"1a", X"25", X"fa", X"3b", X"1b", X"09", X"51", X"03", X"ff", X"f6", X"19", X"d7", X"fe", X"26", X"d7", X"f1", X"0e", X"1b", X"07", X"1f", X"1f", X"01",
                                                        X"39", X"1c", X"18", X"ef", X"2c", X"50", X"ea", X"e7", X"e0", X"ed", X"22", X"ed", X"f8", X"ee", X"12", X"02", X"08", X"04", X"30", X"fa", X"e2", X"07", X"f0", X"ea", X"fb", X"f0",
                                                        X"d2", X"21", X"0e", X"ee", X"fe", X"fe", X"08", X"0d", X"ec", X"03", X"25", X"f1", X"fe", X"ec", X"02", X"e7", X"0d", X"f0", X"1f", X"2a", X"0d", X"f3", X"23", X"fa", X"07", X"1e",
                                                        X"ed", X"4c", X"11", X"0b", X"2e", X"e3", X"ee", X"04", X"f9", X"12", X"0d", X"0c", X"e4", X"ec", X"33", X"05", X"07", X"e3", X"f6", X"2f", X"df", X"ee", X"e7", X"d9", X"08", X"3a",
                                                        X"f3", X"13", X"01", X"0c", X"05", X"f6", X"ff", X"2d", X"f4", X"00", X"e5", X"f0", X"d4", X"3e", X"0d", X"df", X"df", X"0e", X"1a", X"e7", X"10", X"e1", X"ea", X"0e", X"e0", X"02",
                                                        X"05", X"f7", X"01", X"bf", X"0e", X"24", X"1a", X"fa", X"0c", X"db", X"ff", X"1b", X"00", X"48", X"00", X"f1", X"11", X"f3", X"f3", X"2a", X"f5", X"49", X"fe", X"f8", X"07", X"07",
                                                        X"06", X"05", X"11", X"f2", X"de", X"09", X"e9", X"ec", X"fc", X"3b", X"09", X"0e", X"f0", X"06", X"ea", X"f9", X"2b", X"d0", X"e8", X"f4", X"f6", X"f0", X"ce", X"e7", X"df", X"b7",
                                                        X"fe", X"fe", X"e2", X"04", X"36", X"fb", X"12", X"ff", X"fa", X"46", X"ef", X"ee", X"16", X"f7", X"03", X"20", X"fe", X"20", X"1c", X"fd", X"11", X"f6", X"07", X"15", X"fb", X"d7",
                                                        X"e6", X"36", X"0b", X"d2", X"ed", X"fb", X"0c", X"f1", X"0e", X"08", X"32", X"e9", X"1f", X"0d", X"0a", X"41", X"10", X"fe", X"cb", X"f6", X"df", X"ed", X"fc", X"ed", X"fd", X"f2",
                                                        X"ea", X"2a", X"fa", X"02", X"f4", X"31", X"fa", X"16", X"2e", X"f4", X"06", X"f6", X"01", X"ea", X"e9", X"1c", X"1a", X"0d", X"1a", X"03", X"05", X"43", X"f2", X"0c", X"13", X"ef",
                                                        X"e4", X"f0", X"14", X"fb", X"f0", X"f1", X"34", X"0c", X"12", X"03", X"09", X"0f", X"ca", X"2f", X"fa", X"f0", X"f4", X"1f", X"df", X"f9", X"d2", X"05", X"d1", X"fc", X"e2", X"e3",
                                                        X"16", X"36", X"f6", X"29", X"1f", X"dd", X"16", X"f8", X"10", X"fa", X"e4", X"ee", X"0c", X"2e", X"1a", X"f0", X"f6", X"0a", X"04", X"f7", X"14", X"0d", X"16", X"05", X"ed", X"0c",
                                                        X"06", X"e1", X"ff", X"39", X"27", X"e9", X"f8", X"1b", X"00", X"f5", X"0f", X"f0", X"11", X"ed", X"fa", X"34", X"d1", X"0e", X"22", X"fd");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fd";
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

