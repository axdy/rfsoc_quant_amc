-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block343.vhd
-- Created: 2023-06-15 16:02:58
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block343
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage110/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block343 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block343;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block343 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"49", X"de", X"f0", X"0f", X"f7", X"12", X"b6", X"f3", X"f9", X"2b", X"f7", X"12", X"12", X"0f",
                                                        X"a8", X"dc", X"14", X"18", X"ea", X"e7", X"f3", X"de", X"19", X"06", X"04", X"01", X"fc", X"f1", X"14", X"ef", X"e1", X"f6", X"eb", X"0e", X"fd", X"e4", X"f7", X"14", X"41", X"16",
                                                        X"f9", X"05", X"e4", X"16", X"f0", X"06", X"1e", X"f3", X"e7", X"1c", X"0c", X"e6", X"e5", X"f5", X"33", X"0b", X"f3", X"01", X"f0", X"de", X"f3", X"01", X"eb", X"05", X"f9", X"03",
                                                        X"02", X"20", X"f3", X"f2", X"3d", X"02", X"04", X"e6", X"f5", X"eb", X"01", X"fa", X"29", X"04", X"0c", X"fe", X"00", X"38", X"f4", X"05", X"fc", X"ea", X"06", X"ea", X"f4", X"e9",
                                                        X"0d", X"e9", X"fe", X"fa", X"f9", X"f3", X"10", X"05", X"05", X"d3", X"ea", X"d7", X"06", X"e0", X"f1", X"39", X"f9", X"dd", X"eb", X"08", X"05", X"15", X"22", X"28", X"19", X"db",
                                                        X"fc", X"ef", X"24", X"f0", X"0a", X"07", X"f8", X"f3", X"f2", X"fd", X"03", X"01", X"e6", X"e2", X"fc", X"d1", X"f8", X"f3", X"09", X"14", X"e5", X"ef", X"fe", X"ff", X"28", X"08",
                                                        X"f3", X"17", X"0b", X"0b", X"02", X"1c", X"13", X"17", X"29", X"06", X"09", X"df", X"ea", X"fc", X"f8", X"16", X"f0", X"10", X"e5", X"e6", X"0a", X"29", X"1a", X"01", X"eb", X"09",
                                                        X"f9", X"23", X"1c", X"02", X"f7", X"0e", X"f0", X"10", X"00", X"df", X"fc", X"05", X"e7", X"14", X"1f", X"d8", X"ea", X"1d", X"f2", X"fd", X"06", X"f9", X"15", X"fc", X"ee", X"c7",
                                                        X"00", X"06", X"06", X"16", X"15", X"e2", X"08", X"0d", X"fd", X"ff", X"0c", X"07", X"0e", X"01", X"f2", X"15", X"00", X"eb", X"04", X"0f", X"0c", X"01", X"07", X"3d", X"ed", X"02",
                                                        X"01", X"f6", X"00", X"cc", X"ee", X"22", X"fb", X"f2", X"f2", X"1b", X"f8", X"3e", X"ee", X"18", X"0a", X"17", X"e0", X"eb", X"f5", X"f2", X"0b", X"ed", X"f9", X"e6", X"0b", X"06",
                                                        X"f1", X"ec", X"fc", X"20", X"1c", X"f0", X"ee", X"e7", X"2f", X"eb", X"f3", X"f8", X"f4", X"17", X"f4", X"08", X"32", X"27", X"ee", X"00", X"03", X"e9", X"d0", X"da", X"e4", X"10",
                                                        X"eb", X"1b", X"eb", X"f5", X"eb", X"12", X"06", X"f1", X"f3", X"2d", X"ea", X"f6", X"f7", X"ee", X"f5", X"0f", X"02", X"cb", X"fb", X"f6", X"00", X"09", X"12", X"f6", X"ff", X"02",
                                                        X"f8", X"f5", X"f3", X"e6", X"ea", X"01", X"04", X"38", X"ea", X"f0", X"0b", X"06", X"26", X"fc", X"09", X"e9", X"df", X"fb", X"15", X"0f", X"e7", X"09", X"17", X"2f", X"09", X"18",
                                                        X"e2", X"04", X"e3", X"d3", X"f8", X"0d", X"08", X"e2", X"2a", X"df", X"f7", X"2a", X"e9", X"da", X"e5", X"e2", X"fe", X"08", X"f9", X"20", X"c9", X"fe", X"03", X"f0", X"20", X"e9",
                                                        X"0e", X"f5", X"fe", X"20", X"05", X"03", X"1b", X"f1", X"0d", X"db", X"f9", X"03", X"0e", X"f1", X"17", X"00", X"ef", X"01", X"0c", X"df", X"fc", X"e3", X"d9", X"df", X"0c", X"13",
                                                        X"ff", X"03", X"f3", X"f2", X"17", X"04", X"1a", X"fb", X"16", X"10", X"e7", X"dd", X"42", X"04", X"fd", X"25", X"06", X"f6", X"e3", X"f0", X"ee", X"10", X"0a", X"18", X"12", X"e0",
                                                        X"0f", X"f9", X"ed", X"0e", X"17", X"dc", X"d9", X"ee", X"14", X"00", X"02", X"18", X"29", X"05", X"e0", X"12", X"f0", X"fb", X"f8", X"24", X"e8", X"fe", X"f7", X"f0", X"09", X"16",
                                                        X"fe", X"fd", X"df", X"fe", X"e1", X"15", X"ed", X"f8", X"15", X"21", X"e8", X"16", X"f7", X"0d", X"22", X"f2", X"02", X"07", X"f7", X"e9", X"08", X"c9", X"ef", X"38", X"ed", X"0c",
                                                        X"00", X"08", X"16", X"21", X"e8", X"01", X"01", X"fb", X"e8", X"ed", X"1c", X"c5", X"d7", X"29", X"1f", X"04", X"fd", X"e4", X"ff", X"0c", X"e1", X"ed", X"e1", X"fa", X"ff", X"da",
                                                        X"fb", X"cc", X"eb", X"ff", X"11", X"0f", X"29", X"1b", X"dd", X"e5", X"01", X"f3", X"f7", X"ee", X"e3", X"dc", X"e7", X"d9", X"09", X"2d", X"d6", X"de", X"0b", X"26", X"f5", X"2d",
                                                        X"f2", X"f1", X"df", X"ee", X"e9", X"e6", X"ff", X"0d", X"1a", X"ea", X"fd", X"01", X"1a", X"2d", X"eb", X"d6", X"f1", X"0f", X"cc", X"f4", X"ea", X"04", X"e3", X"25", X"00", X"24",
                                                        X"cb", X"13", X"fe", X"e7", X"ee", X"0e", X"e5", X"06", X"e4", X"f6", X"04", X"15", X"d9", X"1e", X"e6", X"ec", X"12", X"f8", X"05", X"d3", X"e9", X"f3", X"f1", X"02", X"f6", X"f4",
                                                        X"f0", X"0f", X"12", X"23", X"08", X"f8", X"0b", X"0a", X"e9", X"1b", X"02", X"15", X"0b", X"ff", X"17", X"eb", X"fd", X"13", X"0a", X"ed", X"d8", X"f8", X"ec", X"0a", X"e0", X"e9",
                                                        X"f3", X"db", X"eb", X"ed", X"ec", X"11", X"f1", X"02", X"e8", X"0e", X"fd", X"12", X"1c", X"f7", X"e8", X"26", X"f8", X"0d", X"f1", X"01", X"e0", X"f6", X"08", X"e5", X"04", X"ff",
                                                        X"ea", X"e9", X"34", X"e0", X"00", X"19", X"ea", X"f1", X"08", X"f6", X"f8", X"ee", X"05", X"09", X"22", X"1c", X"17", X"f5", X"38", X"ea", X"f3", X"d1", X"f5", X"d6", X"fe", X"06",
                                                        X"f1", X"0c", X"e4", X"08", X"f4", X"f3", X"ed", X"f5", X"15", X"10", X"03", X"20", X"10", X"11", X"00", X"ff", X"13", X"1e", X"f4", X"07", X"fa", X"ed", X"ee", X"e5", X"2b", X"f0",
                                                        X"fe", X"04", X"fb", X"20", X"f2", X"fe", X"19", X"21", X"0a", X"06", X"0e", X"dd", X"f1", X"0a", X"f9", X"f9", X"eb", X"cf", X"ea", X"f6", X"07", X"f6", X"e3", X"19", X"ff", X"07",
                                                        X"ed", X"da", X"ed", X"e1", X"00", X"0a", X"0d", X"02", X"f4", X"ec", X"1d", X"16", X"d1", X"24", X"1d", X"db", X"f0", X"db", X"f8", X"0d", X"f7", X"1d", X"04", X"2d", X"f3", X"15",
                                                        X"f6", X"f6", X"0b", X"00", X"06", X"04", X"fc", X"d8", X"0f", X"27", X"08", X"20", X"ff", X"16", X"ee", X"15", X"19", X"00", X"11", X"0c", X"e5", X"d5", X"ec", X"10", X"ea", X"2c",
                                                        X"ea", X"06", X"fc", X"30", X"ff", X"fa", X"1b", X"07", X"e3", X"fc", X"da", X"db", X"f7", X"f7", X"11", X"09", X"09", X"fc", X"dc", X"ed", X"fb", X"eb", X"08", X"1b", X"d3", X"f8",
                                                        X"f4", X"e3", X"f5", X"1f", X"fd", X"ec", X"06", X"fc", X"2d", X"38", X"fe", X"f7", X"e4", X"fb", X"fd", X"fb", X"14", X"ff", X"ee", X"e3", X"ef", X"1a", X"eb", X"1c", X"1b", X"2b",
                                                        X"df", X"e7", X"01", X"0b", X"de", X"f9", X"10", X"f9", X"09", X"01", X"f7", X"13", X"ec", X"08", X"18", X"06", X"03", X"21", X"ec", X"03", X"e8", X"f0", X"ff", X"f6", X"14", X"ec",
                                                        X"fe", X"08", X"09", X"19", X"e6", X"02", X"01", X"d8", X"15", X"e5", X"1e", X"1a", X"07", X"0d", X"29", X"0c", X"f3", X"0c", X"2f", X"fd", X"ed", X"d2", X"0d", X"d2", X"fe", X"0a",
                                                        X"25", X"10", X"0a", X"0f", X"07", X"07", X"f8", X"0a", X"34", X"fc", X"0c", X"e9", X"ef", X"04", X"fe", X"f4", X"e7", X"0a", X"fd", X"f5", X"fe", X"33", X"07", X"f1", X"12", X"ec",
                                                        X"05", X"f1", X"fd", X"0e", X"ff", X"f1", X"0a", X"ff", X"ec", X"19", X"0c", X"15", X"0c", X"dc", X"d9", X"06", X"ea", X"de", X"e9", X"1b", X"f3", X"03", X"12", X"0a", X"f9", X"f0",
                                                        X"0b", X"d8", X"f0", X"f1", X"f7", X"eb", X"e8", X"c3", X"fc", X"de", X"fc", X"00", X"15", X"33", X"08", X"f6", X"22", X"14", X"0d", X"d4", X"07", X"f6", X"fe", X"31", X"03", X"e2",
                                                        X"13", X"eb", X"0f", X"19", X"0a", X"fe", X"e1", X"19", X"f6", X"f9", X"28", X"fe", X"e4", X"e5", X"f0", X"0e", X"e5", X"08", X"e9", X"0d", X"1e", X"05", X"ee", X"f6", X"e6", X"ec",
                                                        X"ea", X"fd", X"ee", X"d6", X"fa", X"c3", X"f9", X"f5", X"de", X"26", X"e1", X"04", X"05", X"dd", X"f0", X"12", X"18", X"1b", X"13", X"c7", X"fc", X"fa", X"0f", X"04", X"01", X"0d",
                                                        X"24", X"fe", X"01", X"21", X"11", X"00", X"ea", X"04", X"f6", X"34", X"09", X"f5", X"f1", X"00", X"dc", X"02", X"25", X"f4", X"04", X"2d", X"f7", X"38", X"e5", X"09", X"ee", X"0e",
                                                        X"f7", X"ea", X"ef", X"e7", X"fe", X"16", X"01", X"f1", X"f0", X"d4", X"0b", X"e9", X"eb", X"ec", X"f7", X"fb", X"ef", X"44", X"08", X"0c", X"e6", X"02", X"fb", X"e1", X"de", X"d6",
                                                        X"0d", X"f4", X"dd", X"07", X"fb", X"f6", X"05", X"0e", X"f5", X"fb", X"dd", X"fd", X"fc", X"fe", X"11", X"18", X"f7", X"28", X"f6", X"03", X"02", X"cf", X"f3", X"1d", X"e9", X"fe",
                                                        X"f3", X"f6", X"1c", X"dd", X"0c", X"04", X"ed", X"11", X"e1", X"fb", X"f9", X"ff", X"ea", X"0e", X"ec", X"f8", X"00", X"f4", X"16", X"08", X"12", X"02", X"f4", X"f4", X"f9", X"19",
                                                        X"05", X"d0", X"06", X"d1", X"f6", X"ef", X"24", X"f9", X"0f", X"07", X"18", X"1e", X"fe", X"ed", X"e7", X"fd", X"e3", X"f0", X"02", X"e3", X"f5", X"f5", X"f7", X"22", X"19", X"f5",
                                                        X"01", X"22", X"fa", X"e9", X"0d", X"ff", X"fc", X"18", X"fd", X"19", X"f6", X"ec", X"ee", X"05", X"e8", X"10", X"20", X"05", X"13", X"f4", X"08", X"06", X"09", X"c3", X"01", X"0c",
                                                        X"06", X"fd", X"2e", X"10", X"f9", X"25", X"13", X"2a", X"03", X"07", X"f2", X"08", X"e8", X"00", X"10", X"d6", X"13", X"fe", X"33", X"ed", X"ee", X"1c", X"1c", X"04", X"ff", X"cd",
                                                        X"08", X"e1", X"f3", X"32", X"07", X"12", X"fc", X"0b", X"d6", X"10", X"05", X"1e", X"18", X"2d", X"17", X"df", X"13", X"e6", X"06", X"da", X"26", X"1e", X"17", X"f4", X"1e", X"24",
                                                        X"dc", X"fc", X"09", X"d4", X"fd", X"f8", X"01", X"05", X"12", X"bf", X"f1", X"20", X"14", X"05", X"ef", X"10", X"02", X"17", X"ef", X"ca", X"1b", X"f5", X"0f", X"09", X"11", X"38",
                                                        X"00", X"f6", X"03", X"fe", X"0e", X"22", X"ea", X"04", X"e9", X"e9", X"f0", X"2b", X"0a", X"0f", X"16", X"36", X"00", X"15", X"0c", X"02", X"0c", X"0d", X"f5", X"1f", X"04", X"fd",
                                                        X"1c", X"1f", X"f0", X"04", X"20", X"e9", X"04", X"0d", X"ee", X"05", X"23", X"1c", X"25", X"04", X"e8", X"f5", X"02", X"27", X"20", X"0a", X"f8", X"1b", X"f7", X"04", X"1d", X"16",
                                                        X"e3", X"0e", X"03", X"e9", X"03", X"cb", X"ef", X"f4", X"fd", X"0b", X"2c", X"fc", X"d8", X"15", X"f4", X"fd", X"ed", X"05", X"00", X"ec", X"dc", X"1a", X"03", X"ef", X"06", X"0c",
                                                        X"ff", X"2e", X"00", X"05", X"f4", X"03", X"f1", X"05", X"01", X"f6", X"0b", X"ed", X"01", X"0c", X"f6", X"fb", X"f7", X"3c", X"f2", X"29", X"f6", X"fc", X"db", X"f7", X"34", X"d0",
                                                        X"f5", X"1a", X"16", X"13", X"f5", X"ee", X"23", X"e0", X"f1", X"f3", X"e4", X"f6", X"e9", X"f0", X"db", X"06", X"f5", X"da", X"f5", X"26", X"25", X"f4", X"e9", X"cd", X"19", X"03",
                                                        X"f6", X"fe", X"ed", X"ed", X"f1", X"f6", X"08", X"cb", X"e9", X"1e", X"29", X"22", X"0f", X"3c", X"fd", X"fd", X"f2", X"e7", X"f6", X"fb", X"10", X"02", X"20", X"07", X"e5", X"27",
                                                        X"fc", X"18", X"fa", X"18", X"fa", X"ef", X"fd", X"f6", X"29", X"f9", X"10", X"03", X"13", X"26", X"ef", X"eb", X"e4", X"09", X"1c", X"c4", X"07", X"dc", X"05", X"e2", X"04", X"26",
                                                        X"f9", X"f6", X"10", X"cd", X"fb", X"06", X"05", X"26", X"f9", X"f0", X"ef", X"20", X"ef", X"02", X"3a", X"1e", X"13", X"01", X"02", X"ec", X"fa", X"e9", X"06", X"ec", X"f9", X"38",
                                                        X"04", X"d7", X"ed", X"01", X"0f", X"1d", X"05", X"02", X"fd", X"17", X"03", X"d0", X"08", X"f0", X"00", X"2f", X"fa", X"f0", X"03", X"f7", X"00", X"19", X"18", X"fb", X"f6", X"e6",
                                                        X"f8", X"d8", X"22", X"fa", X"1a", X"11", X"04", X"0d", X"10", X"07", X"e8", X"10", X"ef", X"f1", X"f0", X"e1", X"0a", X"02", X"1c", X"0f", X"f1", X"ee", X"ec", X"24", X"ed", X"01",
                                                        X"0c", X"fd", X"0f", X"07", X"05", X"20", X"00", X"e9", X"0e", X"18", X"19", X"d1", X"f1", X"08", X"f0", X"09", X"f9", X"05", X"13", X"e2", X"04", X"ea", X"06", X"2a", X"17", X"21",
                                                        X"0a", X"2f", X"00", X"fb", X"f2", X"03", X"fe", X"f9", X"26", X"05", X"eb", X"ed", X"17", X"fc", X"fa", X"06", X"e1", X"0a", X"16", X"fc", X"17", X"f0", X"ea", X"11", X"04", X"ef",
                                                        X"0f", X"30", X"06", X"00", X"e4", X"13", X"17", X"1d", X"fc", X"e3", X"04", X"f5", X"f4", X"12", X"16", X"ed", X"f3", X"2b", X"0f", X"04", X"e5", X"02", X"25", X"d4", X"ea", X"12",
                                                        X"e4", X"f7", X"e7", X"00", X"ee", X"df", X"f6", X"e3", X"17", X"25", X"eb", X"00", X"f5", X"d1", X"f3", X"f8", X"ef", X"f8", X"f3", X"ee", X"fe", X"fd", X"0a", X"03", X"e8", X"d0",
                                                        X"e1", X"28", X"2c", X"3c", X"f8", X"22", X"e1", X"e9", X"c3", X"f1", X"14", X"fb", X"ef", X"25", X"ff", X"0b", X"15", X"05", X"23", X"13", X"07", X"e9", X"05", X"10", X"ea", X"07",
                                                        X"15", X"fe", X"f2", X"d5", X"f5", X"00", X"28", X"0b", X"1d", X"df", X"13", X"06", X"ec", X"05", X"e1", X"03", X"e9", X"05", X"0a", X"1c", X"e2", X"0c", X"01", X"13", X"1d", X"14",
                                                        X"02", X"e2", X"fb", X"06", X"1d", X"ec", X"14", X"0f", X"00", X"e2", X"f7", X"e9", X"2c", X"11", X"16", X"cc", X"f8", X"1c", X"fc", X"f7", X"03", X"12", X"eb", X"fa", X"03", X"02",
                                                        X"f0", X"e3", X"fc", X"eb", X"f0", X"dd", X"f0", X"ec", X"f8", X"ee", X"e9", X"04", X"0b", X"25", X"21", X"29", X"e8", X"e8", X"0b", X"ff", X"f9", X"20", X"fa", X"e2", X"f2", X"e7",
                                                        X"e1", X"f9", X"f1", X"f1", X"ed", X"f1", X"f5", X"f8", X"18", X"02", X"ea", X"f2", X"f4", X"fe", X"0e", X"f5", X"e7", X"fa", X"ff", X"08", X"e9", X"f5", X"fb", X"ed", X"24", X"f8",
                                                        X"21", X"03", X"01", X"ee", X"f7", X"f2", X"0b", X"0f", X"fd", X"00", X"fb", X"dd", X"f0", X"fa", X"28", X"13", X"01", X"02", X"12", X"17", X"f3", X"ea", X"fe", X"06", X"00", X"02",
                                                        X"f1", X"1b", X"05", X"1d", X"eb", X"0e", X"e3", X"c1", X"0c", X"f5", X"f7", X"f9", X"e8", X"0e", X"ea", X"e0", X"f6", X"26", X"ff", X"0f", X"19", X"11", X"1a", X"f7", X"05", X"1d",
                                                        X"0c", X"ff", X"19", X"05", X"03", X"10", X"0a", X"b8", X"e6", X"ce", X"12", X"f7", X"1f", X"0f", X"07", X"26", X"f9", X"ed", X"07", X"fa", X"01", X"dd", X"02", X"b8", X"ef", X"27",
                                                        X"fa", X"10", X"26", X"dc", X"fb", X"c7", X"ed", X"04", X"f9", X"05", X"23", X"02", X"f0", X"1f", X"f8", X"01", X"e8", X"14", X"0d", X"23", X"f5", X"09", X"1b", X"eb", X"00", X"01",
                                                        X"fa", X"e1", X"e4", X"17", X"1b", X"0d", X"dd", X"06", X"18", X"1a", X"f9", X"14", X"f1", X"ff", X"e5", X"e3", X"df", X"ea", X"fe", X"14", X"1f", X"1b", X"05", X"17", X"09", X"cb",
                                                        X"f3", X"2e", X"0d", X"ff", X"f0", X"fe", X"e6", X"f6", X"18", X"d8", X"16", X"12", X"d6", X"1b", X"ef", X"ee", X"fd", X"02", X"2f", X"00", X"db", X"f1", X"fb", X"e0", X"11", X"24",
                                                        X"0c", X"16", X"17", X"fc", X"12", X"31", X"1d", X"1e", X"00", X"16", X"e8", X"09", X"16", X"00", X"e4", X"d4", X"16", X"1f", X"12", X"04", X"f9", X"1b", X"f9", X"d2", X"fc", X"08",
                                                        X"0d", X"f1", X"00", X"07", X"05", X"dc", X"fd", X"06", X"ee", X"f8", X"e9", X"df", X"09", X"ea", X"fb", X"f4", X"0d", X"07", X"03", X"19", X"01", X"1c", X"ec", X"0e", X"0f", X"13",
                                                        X"fd", X"0c", X"06", X"01", X"ef", X"02", X"fc", X"03", X"fd", X"02", X"f6", X"2a", X"e6", X"ff", X"07", X"ff", X"f5", X"f1", X"14", X"fe", X"fe", X"f2", X"12", X"07", X"ec", X"f2",
                                                        X"0b", X"f5", X"f1", X"06", X"49", X"ff", X"f0", X"1c", X"f3", X"09", X"fd", X"06", X"21", X"07", X"08", X"1c", X"fa", X"15", X"ff", X"dd", X"e8", X"fa", X"02", X"f2", X"ff", X"cf",
                                                        X"f1", X"04", X"06", X"10", X"fd", X"10", X"00", X"31", X"0e", X"02", X"00", X"fa", X"01", X"fb", X"f0", X"34", X"12", X"04", X"08", X"fc");
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

