-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block371.vhd
-- Created: 2024-11-05 16:19:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block371
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage21/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block371 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block371;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block371 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"15", X"06", X"f1", X"dd", X"fd", X"fc", X"0c", X"de", X"1e", X"09", X"f8", X"05", X"f6", X"f3",
                                                        X"08", X"fc", X"0f", X"01", X"f0", X"e5", X"f9", X"f9", X"08", X"e1", X"1b", X"04", X"f2", X"00", X"f3", X"ec", X"0a", X"fb", X"10", X"00", X"ef", X"ea", X"f6", X"fb", X"06", X"ea",
                                                        X"15", X"02", X"f4", X"ff", X"f6", X"eb", X"08", X"fb", X"0b", X"03", X"f1", X"f2", X"fd", X"f7", X"05", X"ed", X"16", X"ff", X"f3", X"fe", X"f8", X"ef", X"05", X"f9", X"10", X"06",
                                                        X"f1", X"f1", X"f9", X"f7", X"02", X"e6", X"13", X"00", X"f8", X"03", X"fe", X"ec", X"07", X"f8", X"0f", X"07", X"ef", X"e8", X"fb", X"ff", X"04", X"e7", X"12", X"05", X"f4", X"01",
                                                        X"fe", X"f3", X"05", X"f8", X"10", X"03", X"f0", X"e9", X"ef", X"fc", X"02", X"eb", X"16", X"05", X"f9", X"06", X"fd", X"f4", X"02", X"fd", X"0f", X"07", X"f0", X"e9", X"ec", X"fa",
                                                        X"05", X"e1", X"16", X"06", X"f5", X"06", X"fd", X"f2", X"03", X"fd", X"10", X"06", X"f7", X"f3", X"f8", X"fc", X"05", X"f0", X"16", X"04", X"f5", X"02", X"fe", X"ef", X"03", X"ff",
                                                        X"0b", X"02", X"f4", X"f2", X"fb", X"fb", X"ff", X"eb", X"14", X"01", X"f3", X"00", X"f9", X"ed", X"01", X"f8", X"12", X"06", X"f3", X"f3", X"fa", X"fa", X"03", X"eb", X"14", X"04",
                                                        X"f3", X"01", X"f6", X"ef", X"00", X"fa", X"13", X"04", X"f2", X"ea", X"f1", X"fa", X"05", X"e6", X"15", X"02", X"f8", X"03", X"fd", X"ea", X"03", X"fa", X"10", X"08", X"f5", X"ed",
                                                        X"f3", X"fd", X"04", X"e3", X"16", X"05", X"f6", X"04", X"fa", X"ef", X"04", X"f9", X"0e", X"06", X"f6", X"ef", X"f8", X"fc", X"05", X"e7", X"11", X"03", X"fa", X"08", X"f9", X"f2",
                                                        X"03", X"fa", X"0c", X"08", X"f2", X"e8", X"f6", X"fe", X"03", X"de", X"17", X"04", X"f7", X"09", X"fc", X"ec", X"03", X"fa", X"0b", X"04", X"f4", X"ed", X"f3", X"fb", X"06", X"eb",
                                                        X"16", X"01", X"f3", X"04", X"fb", X"f0", X"05", X"fb", X"09", X"05", X"f2", X"e6", X"f1", X"fd", X"03", X"e5", X"11", X"01", X"f5", X"05", X"00", X"ee", X"05", X"fa", X"10", X"06",
                                                        X"f6", X"ea", X"ef", X"fd", X"02", X"e5", X"10", X"00", X"f2", X"07", X"fc", X"f2", X"05", X"fa", X"0d", X"05", X"f2", X"ea", X"f3", X"fd", X"04", X"e6", X"14", X"01", X"f1", X"04",
                                                        X"fd", X"f0", X"06", X"fb", X"12", X"04", X"f2", X"ec", X"fe", X"f9", X"00", X"e6", X"1a", X"02", X"f9", X"00", X"fe", X"ef", X"06", X"fc", X"11", X"04", X"f3", X"ed", X"ff", X"fb",
                                                        X"04", X"ea", X"16", X"04", X"fa", X"01", X"fd", X"ee", X"02", X"fb", X"0d", X"06", X"ef", X"f0", X"f8", X"f9", X"01", X"e5", X"11", X"05", X"f8", X"ff", X"fe", X"ef", X"05", X"fa",
                                                        X"0d", X"06", X"f1", X"f0", X"fa", X"fd", X"02", X"ec", X"0e", X"05", X"f5", X"04", X"fd", X"ed", X"07", X"fd", X"0b", X"07", X"f0", X"e8", X"f2", X"00", X"04", X"e3", X"0c", X"04",
                                                        X"f9", X"05", X"fe", X"f2", X"03", X"fd", X"0a", X"07", X"f0", X"ee", X"f2", X"ff", X"04", X"e8", X"0e", X"02", X"f8", X"02", X"fe", X"ee", X"05", X"ff", X"0d", X"06", X"f2", X"f3",
                                                        X"f9", X"f7", X"fe", X"ec", X"11", X"ff", X"f6", X"01", X"fa", X"ed", X"02", X"f9", X"0e", X"04", X"f3", X"f6", X"f8", X"fc", X"01", X"ec", X"15", X"01", X"f7", X"02", X"fb", X"ed",
                                                        X"03", X"f9", X"12", X"03", X"f4", X"e5", X"fa", X"f6", X"01", X"e7", X"19", X"04", X"f4", X"ff", X"f9", X"ef", X"02", X"fc", X"14", X"05", X"ef", X"e5", X"fc", X"f6", X"03", X"e5",
                                                        X"17", X"01", X"f4", X"07", X"fd", X"f1", X"03", X"fe", X"12", X"04", X"f4", X"e8", X"01", X"00", X"08", X"e0", X"13", X"04", X"f4", X"06", X"ff", X"f0", X"06", X"fe", X"13", X"07",
                                                        X"f3", X"f6", X"f3", X"fd", X"04", X"e9", X"12", X"02", X"fa", X"01", X"fc", X"eb", X"08", X"00", X"0b", X"03", X"f5", X"f0", X"ee", X"fd", X"07", X"e7", X"15", X"01", X"f8", X"03",
                                                        X"fc", X"f0", X"05", X"fd", X"10", X"03", X"f4", X"eb", X"f2", X"fc", X"01", X"e8", X"13", X"04", X"f3", X"04", X"f6", X"ef", X"02", X"fe", X"0e", X"04", X"f6", X"eb", X"f5", X"fb",
                                                        X"02", X"ef", X"15", X"02", X"f5", X"02", X"fa", X"f2", X"03", X"f9", X"12", X"03", X"f6", X"f0", X"fa", X"f9", X"02", X"f3", X"17", X"01", X"f8", X"00", X"fc", X"f1", X"07", X"fb",
                                                        X"12", X"00", X"f9", X"ef", X"f5", X"fa", X"04", X"ef", X"15", X"04", X"f3", X"00", X"f7", X"eb", X"03", X"fa", X"0d", X"01", X"f4", X"ed", X"f7", X"fb", X"03", X"ef", X"12", X"01",
                                                        X"f4", X"01", X"fb", X"ea", X"05", X"fb", X"0b", X"01", X"f3", X"ec", X"fa", X"f9", X"06", X"ea", X"10", X"02", X"f1", X"04", X"fe", X"ed", X"02", X"fc", X"0f", X"04", X"f5", X"ec",
                                                        X"f6", X"00", X"07", X"df", X"13", X"04", X"f3", X"02", X"fc", X"eb", X"01", X"fb", X"0c", X"05", X"f7", X"f3", X"f2", X"fc", X"02", X"f6", X"15", X"06", X"f3", X"05", X"fd", X"f0",
                                                        X"00", X"fa", X"0d", X"03", X"f7", X"ea", X"f8", X"ff", X"03", X"ee", X"11", X"06", X"f6", X"06", X"fb", X"f1", X"01", X"f9", X"0e", X"08", X"f4", X"e8", X"fb", X"03", X"05", X"e6",
                                                        X"13", X"05", X"f9", X"05", X"fe", X"f5", X"06", X"fc", X"14", X"07", X"f2", X"f2", X"f8", X"fd", X"03", X"e7", X"10", X"fe", X"f7", X"06", X"fe", X"ee", X"04", X"f8", X"12", X"0b",
                                                        X"f1", X"f5", X"f5", X"fb", X"06", X"f3", X"11", X"ff", X"f9", X"04", X"00", X"f1", X"03", X"f9", X"0d", X"04", X"f3", X"f5", X"f5", X"f9", X"02", X"ef", X"17", X"00", X"f3", X"01",
                                                        X"fd", X"ec", X"02", X"fb", X"0e", X"07", X"f3", X"ef", X"f5", X"fb", X"05", X"eb", X"10", X"06", X"f9", X"04", X"fc", X"eb", X"02", X"fe", X"10", X"03", X"f4", X"ec", X"fc", X"fa",
                                                        X"03", X"e7", X"14", X"05", X"f9", X"01", X"fc", X"ee", X"07", X"ff", X"0f", X"03", X"f0", X"e7", X"fc", X"f9", X"02", X"e8", X"17", X"06", X"f6", X"03", X"fa", X"f1", X"0a", X"ff",
                                                        X"10", X"03", X"f3", X"ef", X"f4", X"fb", X"05", X"ea", X"11", X"01", X"f9", X"02", X"fa", X"ed", X"06", X"fe", X"10", X"05", X"f6", X"f2", X"f3", X"fa", X"05", X"f1", X"14", X"03",
                                                        X"f3", X"00", X"f9", X"f1", X"04", X"fd", X"13", X"08", X"f5", X"f1", X"f2", X"fb", X"04", X"f1", X"11", X"01", X"f5", X"02", X"fb", X"ed", X"05", X"fd", X"10", X"04", X"f6", X"ed",
                                                        X"fd", X"fa", X"01", X"ec", X"12", X"03", X"f6", X"03", X"f7", X"ec", X"01", X"f9", X"0f", X"07", X"f5", X"ec", X"fb", X"fc", X"00", X"e9", X"12", X"05", X"f2", X"06", X"fd", X"f1",
                                                        X"04", X"fa", X"0d", X"06", X"f7", X"f0", X"fe", X"ff", X"01", X"eb", X"12", X"03", X"f5", X"05", X"fa", X"ec", X"02", X"fb", X"10", X"07", X"ef", X"eb", X"f7", X"fa", X"03", X"e2",
                                                        X"15", X"04", X"f4", X"03", X"fd", X"f2", X"01", X"fd", X"0f", X"06", X"f2", X"ee", X"f4", X"fc", X"01", X"e3", X"10", X"03", X"f7", X"05", X"02", X"ef", X"02", X"fb", X"09", X"07",
                                                        X"f6", X"ee", X"ef", X"ff", X"03", X"e7", X"11", X"02", X"f1", X"04", X"ff", X"ee", X"01", X"fb", X"11", X"03", X"f6", X"f1", X"f6", X"fc", X"00", X"f4", X"10", X"04", X"f1", X"05",
                                                        X"fa", X"ec", X"02", X"fa", X"11", X"02", X"f7", X"eb", X"f9", X"fc", X"00", X"ed", X"16", X"ff", X"f0", X"04", X"f8", X"ed", X"04", X"fb", X"0f", X"04", X"f0", X"f0", X"f8", X"fa",
                                                        X"04", X"f1", X"18", X"ff", X"f1", X"04", X"fc", X"ed", X"03", X"fb", X"12", X"05", X"f0", X"ef", X"f8", X"fc", X"01", X"eb", X"14", X"01", X"f6", X"03", X"fb", X"ef", X"03", X"fb",
                                                        X"0e", X"05", X"f3", X"e2", X"ff", X"01", X"05", X"e7", X"16", X"01", X"f4", X"02", X"fd", X"ec", X"03", X"ff", X"0d", X"00", X"f0", X"e7", X"f6", X"fe", X"03", X"e6", X"14", X"06",
                                                        X"f7", X"02", X"f9", X"f1", X"05", X"fc", X"0c", X"02", X"f4", X"ea", X"f5", X"fb", X"02", X"f0", X"13", X"07", X"f5", X"05", X"fb", X"f3", X"02", X"fc", X"0b", X"02", X"f5", X"f0",
                                                        X"f4", X"fb", X"02", X"e9", X"15", X"07", X"f2", X"02", X"f9", X"ee", X"04", X"fd", X"0e", X"09", X"f5", X"f3", X"fb", X"fa", X"04", X"ed", X"0f", X"03", X"f5", X"03", X"fd", X"ee",
                                                        X"05", X"fa", X"0f", X"04", X"f5", X"ed", X"f7", X"fa", X"01", X"ed", X"17", X"01", X"f6", X"05", X"f9", X"ef", X"02", X"fc", X"12", X"06", X"f4", X"e7", X"f4", X"f8", X"03", X"e5",
                                                        X"16", X"00", X"fa", X"03", X"f8", X"ed", X"00", X"fa", X"10", X"08", X"f6", X"e7", X"f5", X"fe", X"03", X"e1", X"13", X"05", X"fb", X"06", X"f9", X"f0", X"04", X"fd", X"0f", X"08",
                                                        X"f5", X"eb", X"fb", X"fa", X"01", X"e6", X"12", X"06", X"f3", X"04", X"fd", X"ef", X"02", X"fe", X"11", X"07", X"f9", X"f6", X"f4", X"fc", X"06", X"ef", X"13", X"07", X"f3", X"02",
                                                        X"fa", X"f1", X"03", X"fe", X"0c", X"02", X"f4", X"f4", X"fa", X"f9", X"05", X"f0", X"17", X"02", X"f8", X"04", X"fb", X"ec", X"02", X"fb", X"09", X"04", X"f7", X"f5", X"f6", X"fa",
                                                        X"02", X"f1", X"15", X"02", X"f6", X"04", X"fe", X"eb", X"04", X"ff", X"0f", X"03", X"f8", X"f1", X"f8", X"f7", X"05", X"ec", X"15", X"04", X"f2", X"05", X"fd", X"ef", X"07", X"ff",
                                                        X"15", X"05", X"f7", X"f7", X"fd", X"fa", X"04", X"e9", X"18", X"ff", X"f1", X"04", X"fa", X"ec", X"04", X"fd", X"10", X"05", X"f7", X"f5", X"fa", X"fa", X"04", X"eb", X"15", X"03",
                                                        X"f3", X"03", X"fd", X"ee", X"04", X"ff", X"11", X"03", X"f6", X"ee", X"f7", X"fa", X"03", X"f2", X"12", X"04", X"f5", X"01", X"fd", X"f0", X"04", X"00", X"0e", X"04", X"f8", X"ed",
                                                        X"f4", X"ff", X"03", X"f1", X"10", X"01", X"f5", X"03", X"fb", X"ef", X"00", X"fc", X"12", X"05", X"f9", X"ed", X"f6", X"fe", X"03", X"e8", X"12", X"04", X"f3", X"04", X"fe", X"ef",
                                                        X"05", X"fc", X"10", X"03", X"f4", X"f0", X"f5", X"fb", X"03", X"e8", X"17", X"04", X"f7", X"04", X"fb", X"f3", X"05", X"fe", X"0f", X"03", X"f7", X"f4", X"f4", X"fa", X"06", X"ed",
                                                        X"14", X"02", X"f1", X"05", X"fb", X"f2", X"05", X"fd", X"0e", X"08", X"fb", X"ec", X"f7", X"fa", X"01", X"e3", X"14", X"04", X"f0", X"06", X"fc", X"f2", X"04", X"fe", X"14", X"07",
                                                        X"f7", X"ea", X"fd", X"fd", X"03", X"e2", X"16", X"05", X"f7", X"05", X"fb", X"f0", X"04", X"fd", X"11", X"06", X"f6", X"f0", X"f9", X"fd", X"05", X"ec", X"16", X"04", X"f8", X"03",
                                                        X"fa", X"ea", X"05", X"fc", X"0e", X"08", X"f4", X"f1", X"f3", X"fd", X"03", X"f3", X"10", X"06", X"f6", X"05", X"fe", X"f0", X"04", X"fc", X"0f", X"04", X"f5", X"ef", X"f3", X"00",
                                                        X"00", X"ee", X"12", X"04", X"f7", X"07", X"f9", X"f1", X"05", X"fa", X"12", X"08", X"f3", X"ee", X"f2", X"fe", X"01", X"e9", X"15", X"02", X"f7", X"05", X"fa", X"f3", X"04", X"fb",
                                                        X"0e", X"05", X"f5", X"ea", X"f3", X"fc", X"03", X"e6", X"15", X"01", X"f5", X"04", X"fe", X"ed", X"02", X"fc", X"0c", X"05", X"f5", X"eb", X"fa", X"fc", X"06", X"f1", X"13", X"06",
                                                        X"f7", X"07", X"fe", X"f1", X"05", X"fc", X"0c", X"07", X"f4", X"f8", X"f8", X"f7", X"03", X"ef", X"15", X"04", X"f5", X"04", X"f9", X"f0", X"04", X"fe", X"0c", X"06", X"f4", X"f5",
                                                        X"f2", X"fc", X"03", X"f5", X"12", X"02", X"f2", X"06", X"fa", X"ee", X"01", X"fd", X"10", X"04", X"f3", X"e9", X"f7", X"01", X"06", X"e4", X"15", X"04", X"f4", X"04", X"fc", X"ee",
                                                        X"03", X"fb", X"0b", X"08", X"f4", X"e4", X"f9", X"fc", X"07", X"e1", X"19", X"03", X"f8", X"02", X"fb", X"ec", X"01", X"fc", X"0f", X"03", X"f4", X"e6", X"f8", X"fe", X"06", X"ec",
                                                        X"11", X"04", X"f9", X"05", X"fd", X"f1", X"04", X"fc", X"10", X"05", X"f3", X"ee", X"f7", X"00", X"03", X"ee", X"13", X"05", X"f2", X"05", X"fe", X"f2", X"06", X"01", X"0f", X"04",
                                                        X"f4", X"ee", X"f5", X"fe", X"06", X"ea", X"15", X"05", X"f0", X"02", X"fe", X"f0", X"01", X"ff", X"0d", X"02", X"f6", X"f5", X"f7", X"ff", X"06", X"f4", X"10", X"03", X"f3", X"02",
                                                        X"fe", X"ef", X"04", X"fe", X"0f", X"02", X"f2", X"f1", X"fc", X"f9", X"01", X"ee", X"1a", X"06", X"f6", X"01", X"fc", X"ee", X"04", X"fb", X"12", X"08", X"f1", X"f5", X"f5", X"f9",
                                                        X"05", X"ed", X"17", X"fd", X"f8", X"00", X"01", X"ee", X"01", X"f7", X"14", X"04", X"f3", X"f0", X"00", X"fc", X"01", X"ea", X"14", X"fe", X"f8", X"01", X"fe", X"eb", X"05", X"fc",
                                                        X"13", X"05", X"f0", X"f4", X"f5", X"f6", X"04", X"e8", X"0f", X"fe", X"fb", X"00", X"fa", X"ef", X"04", X"fc", X"07", X"03", X"f1", X"ec", X"fd", X"fe", X"02", X"ec", X"0f", X"03",
                                                        X"f6", X"05", X"fc", X"f0", X"02", X"f9", X"0d", X"08", X"f5", X"ec", X"f8", X"fd", X"06", X"ee", X"10", X"06", X"f6", X"06", X"fc", X"f2", X"05", X"fa", X"0f", X"04", X"f2", X"f3",
                                                        X"f4", X"fc", X"04", X"ec", X"10", X"06", X"f6", X"07", X"fb", X"f3", X"04", X"fd", X"0c", X"05", X"f6", X"f2", X"f9", X"fc", X"03", X"f5", X"12", X"07", X"f8", X"07", X"fd", X"ed",
                                                        X"04", X"fc", X"11", X"06", X"f4", X"fc", X"f6", X"fa", X"03", X"fe", X"11", X"02", X"f6", X"04", X"f9", X"ed", X"08", X"fb", X"0e", X"06", X"f4", X"ff", X"fb", X"f6", X"02", X"f6",
                                                        X"12", X"ff", X"f9", X"04", X"f9", X"ec", X"02", X"fc", X"16", X"02", X"f4", X"fc", X"f6", X"f7", X"01", X"04", X"17", X"01", X"f5", X"05", X"f8", X"ea", X"04", X"fa", X"14", X"05",
                                                        X"f3", X"f0", X"f9", X"fa", X"03", X"f5", X"1b", X"03", X"f6", X"03", X"fa", X"f1", X"05", X"fa", X"12", X"03", X"f2", X"ea", X"f8", X"fc", X"05", X"f5", X"14", X"04", X"f7", X"05",
                                                        X"fa", X"f2", X"03", X"fe", X"0e", X"03", X"f6", X"ee", X"f8", X"fc", X"06", X"e8", X"11", X"06", X"f6", X"06", X"00", X"f0", X"00", X"fb", X"0b", X"04", X"f4", X"ec", X"f7", X"fd",
                                                        X"04", X"ea", X"13", X"06", X"f6", X"06", X"ff", X"f0", X"02", X"fa", X"0d", X"08", X"f5", X"f3", X"f5", X"00", X"02", X"f3", X"13", X"02", X"f6", X"03", X"fd", X"ee", X"02", X"f8",
                                                        X"0a", X"03", X"f2", X"ef", X"fe", X"fd", X"02", X"ef", X"10", X"05", X"f4", X"00", X"fc", X"ee", X"01", X"f9", X"0a", X"04", X"f1", X"f2", X"f5", X"fc", X"02", X"f4", X"19", X"04",
                                                        X"f7", X"02", X"fd", X"ee", X"05", X"fc", X"11", X"07", X"f3", X"f1", X"f8", X"f8", X"ff", X"e2", X"12", X"03", X"f7", X"02", X"fb", X"ef", X"03", X"f8", X"13", X"03", X"ef", X"e6",
                                                        X"f5", X"fc", X"04", X"e2", X"11", X"00", X"f6", X"02", X"fa", X"f0", X"04", X"fc", X"10", X"06", X"f2", X"eb", X"f6", X"fd", X"07", X"e6", X"10", X"04", X"fb", X"04", X"ff", X"f6",
                                                        X"05", X"fb", X"13", X"06", X"f3", X"e5", X"eb", X"02", X"08", X"df", X"16", X"03", X"fd", X"05", X"fe", X"f4", X"05", X"fc", X"10", X"06", X"f3", X"eb", X"ee", X"01", X"05", X"e2",
                                                        X"18", X"06", X"f8", X"08", X"fc", X"f1", X"08", X"fc", X"0d", X"08", X"f8", X"e4", X"f8", X"fb", X"04", X"e3", X"12", X"09", X"f5", X"04", X"f8", X"f2", X"03", X"fb", X"0c", X"08",
                                                        X"f4", X"ef", X"f6", X"fc", X"02", X"e9", X"0f", X"05", X"f2", X"08", X"f9", X"ec", X"00", X"f9", X"0e", X"04", X"f8", X"e7", X"fe", X"f8", X"fd", X"ee", X"15", X"02", X"f0", X"02",
                                                        X"fb", X"eb", X"04", X"f4", X"1a", X"0a", X"f6", X"d8", X"02", X"fa", X"01", X"d5", X"19", X"02", X"f7", X"07", X"fb", X"e8", X"01", X"f5");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f5";
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
