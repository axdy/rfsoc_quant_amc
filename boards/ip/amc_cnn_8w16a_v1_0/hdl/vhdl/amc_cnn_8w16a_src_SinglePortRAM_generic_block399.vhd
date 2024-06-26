-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block399.vhd
-- Created: 2023-08-07 19:04:46
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block399
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage47/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block399 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block399;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block399 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"37", X"ef", X"ea", X"d4", X"a1", X"f7", X"0c", X"04", X"f8", X"4d", X"e7", X"03", X"06", X"c1",
                                                        X"05", X"07", X"ed", X"ff", X"ee", X"05", X"e0", X"28", X"d4", X"42", X"11", X"5d", X"fe", X"f5", X"ec", X"c9", X"0c", X"fa", X"58", X"f6", X"f6", X"06", X"f1", X"04", X"fe", X"26",
                                                        X"f8", X"22", X"25", X"03", X"2c", X"e2", X"e9", X"ee", X"d3", X"e9", X"07", X"fa", X"e0", X"fc", X"fc", X"df", X"f3", X"1c", X"06", X"15", X"cb", X"e6", X"f5", X"f0", X"ff", X"f5",
                                                        X"f6", X"f2", X"ea", X"41", X"d4", X"fa", X"fc", X"33", X"f4", X"eb", X"11", X"cf", X"0b", X"ee", X"e1", X"03", X"f3", X"f2", X"e4", X"d8", X"cf", X"1e", X"f3", X"fb", X"06", X"fd",
                                                        X"0e", X"e6", X"f6", X"ed", X"d9", X"fb", X"fb", X"f2", X"e2", X"23", X"e4", X"f8", X"03", X"4b", X"f9", X"06", X"ce", X"f3", X"f4", X"07", X"2a", X"de", X"ed", X"f7", X"fb", X"18",
                                                        X"14", X"f5", X"f7", X"24", X"fa", X"ff", X"f3", X"fa", X"ee", X"fa", X"37", X"e1", X"f5", X"e2", X"cf", X"06", X"0d", X"3e", X"f3", X"27", X"0a", X"ff", X"0f", X"d1", X"00", X"ea",
                                                        X"ed", X"f3", X"e4", X"ef", X"ba", X"02", X"04", X"0e", X"06", X"29", X"fd", X"01", X"d2", X"e8", X"02", X"fb", X"d8", X"df", X"e8", X"0a", X"c6", X"ce", X"ed", X"4f", X"f1", X"00",
                                                        X"fc", X"09", X"24", X"0d", X"06", X"fe", X"e2", X"f9", X"e7", X"df", X"24", X"30", X"1f", X"d9", X"03", X"fc", X"fd", X"07", X"cd", X"12", X"fc", X"ff", X"45", X"ff", X"f9", X"fe",
                                                        X"15", X"f6", X"da", X"45", X"f9", X"f8", X"14", X"fd", X"d6", X"0e", X"06", X"06", X"60", X"e2", X"f8", X"ea", X"e2", X"fc", X"e3", X"4a", X"fa", X"02", X"00", X"f5", X"c6", X"cc",
                                                        X"18", X"03", X"5a", X"f0", X"e7", X"e9", X"ca", X"de", X"22", X"fe", X"f0", X"4f", X"12", X"11", X"fe", X"e3", X"f9", X"f6", X"00", X"e2", X"e7", X"e7", X"eb", X"d5", X"0e", X"0f",
                                                        X"0b", X"ef", X"01", X"ee", X"24", X"e8", X"04", X"f8", X"1e", X"e9", X"dc", X"ec", X"fe", X"f1", X"d3", X"47", X"f5", X"0f", X"04", X"fe", X"da", X"de", X"f7", X"f1", X"06", X"eb",
                                                        X"e5", X"00", X"e6", X"f5", X"2b", X"31", X"02", X"f6", X"f4", X"0a", X"d6", X"04", X"1c", X"12", X"46", X"f1", X"f4", X"fa", X"d7", X"ff", X"de", X"1c", X"f8", X"1e", X"06", X"ff",
                                                        X"f8", X"ee", X"04", X"06", X"30", X"ef", X"ea", X"e9", X"fe", X"0e", X"0a", X"03", X"dd", X"35", X"21", X"26", X"ca", X"fc", X"17", X"01", X"f3", X"e5", X"ef", X"fc", X"f0", X"de",
                                                        X"27", X"05", X"f0", X"e6", X"11", X"0b", X"14", X"1f", X"12", X"01", X"17", X"dd", X"f1", X"ef", X"f6", X"22", X"25", X"34", X"0f", X"17", X"f5", X"0a", X"f1", X"e9", X"d9", X"f0",
                                                        X"e2", X"f2", X"df", X"ec", X"fa", X"d2", X"32", X"d7", X"fd", X"12", X"12", X"ea", X"14", X"dd", X"f2", X"f8", X"21", X"e8", X"fb", X"dd", X"e4", X"f2", X"d7", X"1f", X"f1", X"3f",
                                                        X"18", X"f5", X"f7", X"09", X"f0", X"fd", X"cd", X"f4", X"f4", X"f8", X"e3", X"25", X"0d", X"10", X"fb", X"24", X"07", X"f5", X"03", X"ed", X"0b", X"09", X"c7", X"f7", X"f0", X"e7",
                                                        X"c1", X"18", X"dc", X"18", X"02", X"20", X"01", X"09", X"df", X"0d", X"04", X"02", X"02", X"e8", X"ef", X"de", X"02", X"e1", X"f6", X"e5", X"f4", X"0f", X"fe", X"0e", X"18", X"ef",
                                                        X"e1", X"09", X"19", X"ee", X"ee", X"11", X"cd", X"fd", X"e0", X"2d", X"06", X"0c", X"0d", X"26", X"f5", X"ee", X"17", X"f4", X"1b", X"f8", X"e9", X"d3", X"e9", X"14", X"dd", X"2e",
                                                        X"fc", X"28", X"08", X"08", X"d8", X"e6", X"1c", X"fb", X"26", X"e6", X"f6", X"fa", X"df", X"1e", X"25", X"e2", X"ff", X"21", X"02", X"15", X"eb", X"ed", X"1d", X"ef", X"12", X"00",
                                                        X"f2", X"01", X"03", X"db", X"d4", X"ff", X"04", X"53", X"13", X"fe", X"00", X"0f", X"f3", X"05", X"fa", X"f9", X"f5", X"f0", X"e8", X"10", X"e1", X"d4", X"01", X"39", X"ff", X"0b",
                                                        X"e2", X"dd", X"15", X"18", X"51", X"f6", X"e1", X"07", X"19", X"ec", X"fd", X"41", X"03", X"0a", X"12", X"0b", X"e5", X"de", X"ed", X"ed", X"33", X"f1", X"f9", X"e2", X"e8", X"fe",
                                                        X"f0", X"27", X"0d", X"00", X"ef", X"07", X"e3", X"c9", X"dd", X"08", X"d6", X"f8", X"fb", X"0a", X"d3", X"05", X"fe", X"54", X"f6", X"4a", X"f7", X"00", X"fc", X"ec", X"06", X"fc",
                                                        X"f5", X"f9", X"f5", X"ff", X"cd", X"c9", X"ff", X"3e", X"fa", X"0f", X"02", X"24", X"0c", X"00", X"f5", X"ed", X"e0", X"ef", X"fb", X"f6", X"d9", X"0a", X"e6", X"d4", X"0f", X"05",
                                                        X"fc", X"0b", X"cc", X"ce", X"e6", X"0a", X"0d", X"ee", X"ed", X"ec", X"ef", X"e7", X"0f", X"57", X"f0", X"15", X"00", X"17", X"09", X"e9", X"01", X"00", X"2a", X"e9", X"f0", X"10",
                                                        X"0c", X"da", X"19", X"fb", X"e9", X"08", X"0a", X"00", X"cd", X"ff", X"0b", X"fd", X"1a", X"e9", X"f9", X"ff", X"ca", X"e6", X"e8", X"1c", X"05", X"3a", X"fc", X"fd", X"12", X"d5",
                                                        X"fe", X"f9", X"04", X"ff", X"e5", X"07", X"e6", X"10", X"12", X"4e", X"f9", X"e8", X"f6", X"02", X"dc", X"e0", X"fb", X"fa", X"16", X"f8", X"f6", X"06", X"f1", X"ef", X"ed", X"0e",
                                                        X"f2", X"54", X"f7", X"16", X"e3", X"d2", X"15", X"fd", X"fd", X"f0", X"fa", X"ed", X"d3", X"da", X"f8", X"2f", X"00", X"33", X"06", X"f1", X"dd", X"fb", X"ef", X"09", X"ef", X"e9",
                                                        X"e1", X"05", X"e8", X"25", X"17", X"d3", X"06", X"43", X"01", X"1b", X"25", X"f7", X"f7", X"01", X"01", X"f7", X"f5", X"f2", X"df", X"29", X"27", X"cf", X"0e", X"19", X"0d", X"15",
                                                        X"06", X"09", X"06", X"09", X"0b", X"ea", X"f4", X"ec", X"09", X"03", X"fd", X"cc", X"05", X"1b", X"f2", X"f3", X"f7", X"ec", X"0a", X"0e", X"1b", X"e7", X"f5", X"e1", X"0a", X"1a",
                                                        X"f7", X"f2", X"04", X"2c", X"00", X"fd", X"e5", X"d1", X"1f", X"0c", X"0c", X"f3", X"e9", X"e5", X"c3", X"0b", X"fc", X"25", X"f2", X"4d", X"ff", X"06", X"f7", X"f8", X"13", X"1e",
                                                        X"d8", X"f8", X"f3", X"fa", X"04", X"fb", X"31", X"d6", X"f0", X"37", X"15", X"01", X"da", X"f5", X"db", X"0e", X"5b", X"f1", X"e9", X"d2", X"c2", X"e6", X"d2", X"d3", X"08", X"39",
                                                        X"09", X"08", X"d9", X"fa", X"e4", X"05", X"65", X"e1", X"f2", X"fb", X"21", X"0d", X"f3", X"03", X"fe", X"36", X"13", X"f5", X"1e", X"dc", X"e5", X"00", X"e5", X"dd", X"fc", X"db",
                                                        X"ed", X"ff", X"d2", X"da", X"0d", X"4b", X"03", X"14", X"24", X"f1", X"05", X"03", X"05", X"f8", X"01", X"f5", X"da", X"27", X"d1", X"3c", X"0c", X"dc", X"00", X"13", X"19", X"d2",
                                                        X"27", X"fc", X"f5", X"f4", X"f9", X"e2", X"ef", X"f7", X"d4", X"ea", X"07", X"ec", X"09", X"f1", X"07", X"09", X"d8", X"0a", X"36", X"f9", X"e7", X"e5", X"da", X"e5", X"1e", X"37",
                                                        X"fe", X"01", X"09", X"04", X"e7", X"f5", X"00", X"fb", X"4f", X"e5", X"ed", X"01", X"0c", X"00", X"ec", X"12", X"07", X"63", X"06", X"f6", X"17", X"d4", X"0e", X"f3", X"c8", X"eb",
                                                        X"f6", X"ee", X"f6", X"f0", X"fe", X"ca", X"e7", X"49", X"03", X"ff", X"da", X"0e", X"ca", X"f8", X"36", X"ee", X"e9", X"e0", X"00", X"00", X"f8", X"2d", X"0c", X"30", X"fb", X"05",
                                                        X"06", X"d5", X"08", X"de", X"3e", X"e7", X"f4", X"d3", X"b5", X"13", X"fe", X"f2", X"fe", X"52", X"ee", X"27", X"02", X"e9", X"fa", X"f4", X"de", X"ec", X"f3", X"fa", X"c9", X"22",
                                                        X"00", X"21", X"e7", X"e6", X"01", X"f9", X"0e", X"15", X"cd", X"f7", X"fa", X"ee", X"fe", X"e8", X"fc", X"f6", X"e6", X"3a", X"07", X"4e", X"12", X"12", X"fe", X"f1", X"0d", X"05",
                                                        X"ea", X"f9", X"fb", X"f6", X"db", X"1b", X"dd", X"22", X"f8", X"57", X"09", X"03", X"fa", X"d7", X"fc", X"f7", X"41", X"04", X"f7", X"09", X"ed", X"e9", X"e1", X"17", X"fa", X"04",
                                                        X"04", X"05", X"26", X"ec", X"e0", X"06", X"20", X"f1", X"f3", X"ee", X"f7", X"e2", X"e2", X"f9", X"02", X"2d", X"0e", X"0a", X"ec", X"08", X"f6", X"0d", X"3c", X"01", X"e5", X"f4",
                                                        X"f9", X"05", X"ec", X"3f", X"fd", X"d4", X"13", X"03", X"ef", X"cf", X"e3", X"05", X"10", X"e8", X"e2", X"02", X"fe", X"f1", X"ea", X"47", X"f6", X"1c", X"f8", X"0a", X"dd", X"ed",
                                                        X"fe", X"f2", X"f5", X"cb", X"f1", X"ea", X"db", X"06", X"cb", X"e6", X"03", X"04", X"03", X"14", X"1b", X"cd", X"ee", X"06", X"19", X"ee", X"e8", X"ed", X"ad", X"15", X"f5", X"09",
                                                        X"ec", X"da", X"ff", X"05", X"05", X"eb", X"e8", X"ec", X"53", X"f7", X"ed", X"f6", X"1a", X"f0", X"e0", X"1d", X"13", X"14", X"f4", X"19", X"fe", X"18", X"f4", X"00", X"44", X"f4",
                                                        X"f7", X"11", X"e8", X"1e", X"36", X"07", X"f6", X"ef", X"f2", X"16", X"ff", X"d9", X"f6", X"fd", X"e3", X"f1", X"f6", X"0a", X"e9", X"0c", X"e5", X"15", X"ff", X"4e", X"1a", X"1b",
                                                        X"ff", X"de", X"06", X"0b", X"e9", X"ee", X"e3", X"f2", X"f5", X"03", X"ed", X"45", X"f7", X"f8", X"ff", X"f3", X"d5", X"15", X"e5", X"01", X"df", X"f1", X"f6", X"00", X"d6", X"3d",
                                                        X"01", X"07", X"f4", X"14", X"0a", X"f7", X"07", X"03", X"ef", X"13", X"57", X"ee", X"f9", X"e2", X"bd", X"17", X"f2", X"1e", X"f4", X"14", X"04", X"1c", X"26", X"06", X"08", X"06",
                                                        X"06", X"f6", X"e6", X"eb", X"fb", X"17", X"e9", X"d4", X"ff", X"24", X"f9", X"05", X"16", X"c5", X"e1", X"f6", X"dc", X"f7", X"ec", X"e1", X"fb", X"1c", X"e3", X"d9", X"04", X"05",
                                                        X"1e", X"fd", X"c6", X"14", X"19", X"fe", X"57", X"f2", X"eb", X"0d", X"ca", X"15", X"e1", X"1d", X"f2", X"06", X"01", X"15", X"08", X"1e", X"15", X"0a", X"54", X"f2", X"fb", X"e3",
                                                        X"e2", X"1f", X"e3", X"50", X"0b", X"e3", X"10", X"08", X"12", X"d7", X"f6", X"0b", X"db", X"f0", X"ec", X"1b", X"03", X"f3", X"ea", X"57", X"fa", X"3b", X"08", X"00", X"0d", X"c8",
                                                        X"fd", X"f4", X"00", X"f8", X"ec", X"f1", X"d4", X"ea", X"ec", X"f2", X"0a", X"ff", X"04", X"fe", X"02", X"fa", X"09", X"ff", X"3a", X"f4", X"f6", X"01", X"d4", X"f0", X"26", X"ea",
                                                        X"f9", X"4b", X"fb", X"05", X"c9", X"ce", X"17", X"fb", X"df", X"f2", X"f3", X"00", X"cc", X"0c", X"08", X"d6", X"f1", X"3d", X"f9", X"11", X"f6", X"ec", X"eb", X"08", X"25", X"f4",
                                                        X"f3", X"ef", X"f0", X"37", X"fd", X"25", X"fd", X"02", X"f3", X"f7", X"22", X"f5", X"1e", X"06", X"1c", X"f8", X"e8", X"12", X"c7", X"e0", X"09", X"e9", X"f6", X"e4", X"fd", X"08",
                                                        X"cf", X"d6", X"f5", X"f4", X"18", X"ed", X"eb", X"f9", X"08", X"18", X"ff", X"2e", X"f3", X"41", X"08", X"0e", X"eb", X"d0", X"14", X"ea", X"c9", X"e9", X"02", X"f5", X"b3", X"d1",
                                                        X"28", X"3e", X"f6", X"26", X"03", X"08", X"d8", X"ef", X"07", X"f8", X"25", X"f7", X"f3", X"f5", X"18", X"c5", X"1a", X"f6", X"02", X"fc", X"12", X"f7", X"eb", X"ff", X"f6", X"0a",
                                                        X"25", X"ed", X"e8", X"06", X"d6", X"19", X"07", X"15", X"03", X"12", X"0a", X"12", X"02", X"03", X"13", X"08", X"34", X"f2", X"d7", X"ed", X"f4", X"11", X"be", X"f3", X"09", X"43",
                                                        X"20", X"0d", X"db", X"cc", X"f2", X"fa", X"ff", X"e8", X"e5", X"dd", X"f0", X"f5", X"e9", X"18", X"03", X"33", X"1e", X"0e", X"eb", X"e2", X"f9", X"e7", X"06", X"f0", X"f8", X"f7",
                                                        X"09", X"25", X"0e", X"13", X"fd", X"3a", X"10", X"02", X"fd", X"f7", X"02", X"00", X"47", X"fd", X"ec", X"f6", X"bd", X"0e", X"f4", X"dd", X"f3", X"f0", X"0b", X"2a", X"d2", X"d7",
                                                        X"f2", X"e7", X"0e", X"ec", X"e1", X"f3", X"0e", X"02", X"d5", X"42", X"fe", X"f8", X"08", X"11", X"2d", X"f7", X"ed", X"fc", X"10", X"f4", X"eb", X"da", X"d6", X"26", X"c9", X"d1",
                                                        X"f7", X"42", X"16", X"13", X"14", X"f3", X"01", X"fc", X"f8", X"f7", X"fb", X"04", X"0c", X"f6", X"e2", X"f9", X"f5", X"26", X"14", X"03", X"f8", X"ea", X"e4", X"fc", X"d7", X"f5",
                                                        X"fc", X"e4", X"25", X"ec", X"0d", X"0e", X"f4", X"3a", X"01", X"f9", X"d9", X"fd", X"ea", X"f3", X"ef", X"f3", X"e7", X"ed", X"fd", X"0b", X"fb", X"05", X"0e", X"55", X"11", X"15",
                                                        X"de", X"d2", X"09", X"fb", X"ff", X"f0", X"f4", X"e9", X"bf", X"04", X"01", X"02", X"01", X"26", X"01", X"f8", X"e4", X"fc", X"05", X"ff", X"37", X"df", X"f1", X"f5", X"e6", X"ee",
                                                        X"ff", X"28", X"db", X"52", X"14", X"fd", X"e7", X"f7", X"02", X"14", X"bf", X"ef", X"f4", X"eb", X"1b", X"ed", X"ef", X"4a", X"fb", X"e7", X"09", X"09", X"e4", X"ee", X"11", X"fb",
                                                        X"35", X"e3", X"f0", X"d2", X"05", X"e6", X"e1", X"e9", X"ef", X"2f", X"13", X"09", X"d4", X"ed", X"ee", X"f5", X"45", X"f7", X"ff", X"f4", X"15", X"e7", X"ff", X"12", X"ee", X"18",
                                                        X"05", X"ed", X"0a", X"d0", X"f0", X"00", X"13", X"01", X"ef", X"d7", X"dd", X"fa", X"ff", X"fa", X"f9", X"38", X"07", X"f0", X"1b", X"e1", X"ff", X"ee", X"24", X"fc", X"07", X"00",
                                                        X"f4", X"f3", X"15", X"08", X"03", X"36", X"1f", X"f8", X"da", X"e6", X"fa", X"f3", X"05", X"f1", X"f8", X"06", X"da", X"04", X"11", X"54", X"03", X"26", X"fd", X"03", X"0a", X"02",
                                                        X"08", X"03", X"19", X"eb", X"ef", X"ea", X"ee", X"ee", X"0d", X"1a", X"fc", X"2a", X"fd", X"09", X"30", X"d0", X"03", X"fc", X"17", X"f7", X"f5", X"05", X"c9", X"f2", X"06", X"38",
                                                        X"f6", X"e3", X"09", X"f8", X"f0", X"da", X"f8", X"ec", X"da", X"f0", X"e9", X"ed", X"05", X"f9", X"13", X"17", X"0e", X"0f", X"03", X"16", X"c2", X"0c", X"0f", X"02", X"e1", X"f3",
                                                        X"e6", X"f4", X"dc", X"d3", X"fb", X"28", X"fb", X"09", X"04", X"1b", X"d9", X"f4", X"e7", X"0a", X"36", X"f2", X"e4", X"ff", X"e9", X"fd", X"e1", X"2a", X"f1", X"14", X"fa", X"0a",
                                                        X"f5", X"ef", X"f8", X"fb", X"f7", X"f3", X"ea", X"e9", X"1b", X"d9", X"d1", X"4a", X"0c", X"1c", X"02", X"05", X"e9", X"f5", X"0d", X"0e", X"52", X"eb", X"ef", X"dc", X"d8", X"ef",
                                                        X"dd", X"e9", X"05", X"e2", X"09", X"12", X"e9", X"e1", X"0d", X"01", X"f4", X"f5", X"ee", X"fa", X"21", X"35", X"23", X"43", X"01", X"17", X"08", X"f9", X"0e", X"ee", X"f1", X"f3",
                                                        X"0a", X"fe", X"f2", X"04", X"09", X"eb", X"f8", X"0d", X"0c", X"f6", X"26", X"06", X"d7", X"ff", X"ec", X"fa", X"f1", X"e9", X"ef", X"fb", X"d6", X"e6", X"ef", X"df", X"00", X"3d",
                                                        X"06", X"08", X"f4", X"e8", X"f2", X"06", X"01", X"e8", X"fb", X"f4", X"0c", X"db", X"1c", X"12", X"fb", X"37", X"06", X"f1", X"f8", X"ee", X"f3", X"fa", X"59", X"e8", X"df", X"de",
                                                        X"fa", X"df", X"39", X"00", X"fb", X"ef", X"e5", X"eb", X"f8", X"f9", X"f2", X"ea", X"38", X"e6", X"f2", X"e5", X"f6", X"ee", X"e3", X"01", X"ff", X"01", X"fc", X"14", X"ea", X"ea",
                                                        X"f3", X"00", X"2f", X"f0", X"f7", X"0a", X"19", X"29", X"e7", X"fc", X"f9", X"16", X"ec", X"fd", X"ff", X"f1", X"09", X"01", X"27", X"f3", X"ff", X"da", X"ed", X"f0", X"10", X"fb",
                                                        X"fd", X"11", X"05", X"f9", X"f7", X"dd", X"dc", X"08", X"26", X"f5", X"fa", X"e4", X"d5", X"ee", X"1a", X"1f", X"fb", X"15", X"00", X"0d", X"26", X"0e", X"19", X"01", X"14", X"ee",
                                                        X"f1", X"04", X"e9", X"f0", X"2d", X"f9", X"fb", X"3d", X"fa", X"ee", X"27", X"e3", X"fe", X"ff", X"58", X"ec", X"ea", X"f1", X"ed", X"11", X"09", X"f4", X"0d", X"29", X"00", X"11",
                                                        X"07", X"cd", X"20", X"13", X"06", X"df", X"d2", X"ea", X"b5", X"0c", X"00", X"e8", X"f2", X"66", X"03", X"1c", X"18", X"ce", X"dd", X"f6");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f6";
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

