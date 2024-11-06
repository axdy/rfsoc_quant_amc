-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block447.vhd
-- Created: 2024-11-05 16:19:22
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block447
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage90/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block447 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block447;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block447 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"c8", X"fd", X"fc", X"00", X"db", X"0a", X"0e", X"fa", X"f7", X"19", X"e8", X"0b", X"04", X"00",
                                                        X"fc", X"0f", X"0b", X"03", X"f8", X"02", X"ff", X"01", X"02", X"fa", X"07", X"03", X"fd", X"ff", X"fe", X"fc", X"03", X"01", X"23", X"03", X"fd", X"03", X"10", X"f6", X"fb", X"f8",
                                                        X"12", X"f1", X"08", X"f6", X"f9", X"f6", X"04", X"fb", X"23", X"01", X"04", X"fd", X"1c", X"f7", X"fc", X"ff", X"1b", X"f3", X"04", X"f5", X"fc", X"f5", X"04", X"f8", X"13", X"00",
                                                        X"04", X"02", X"05", X"fc", X"fd", X"fa", X"15", X"f5", X"fd", X"fb", X"fc", X"f8", X"ff", X"fa", X"fb", X"02", X"ff", X"f1", X"f0", X"02", X"fd", X"f6", X"02", X"02", X"fa", X"03",
                                                        X"0a", X"ff", X"ff", X"02", X"ea", X"01", X"00", X"f3", X"d9", X"0e", X"01", X"f7", X"ed", X"0e", X"f3", X"06", X"0f", X"06", X"fa", X"01", X"e6", X"ff", X"00", X"f8", X"c6", X"0b",
                                                        X"03", X"f8", X"e4", X"0e", X"fa", X"03", X"0d", X"0d", X"fd", X"05", X"f3", X"fb", X"fe", X"fd", X"e6", X"0a", X"01", X"fc", X"fa", X"05", X"fd", X"01", X"0c", X"03", X"01", X"fd",
                                                        X"09", X"00", X"ff", X"fe", X"05", X"fe", X"fa", X"f4", X"0e", X"f9", X"fd", X"02", X"06", X"fb", X"04", X"fa", X"1d", X"03", X"03", X"06", X"1b", X"fa", X"f9", X"fa", X"19", X"f6",
                                                        X"fe", X"fc", X"f9", X"f2", X"02", X"fc", X"20", X"04", X"03", X"fd", X"18", X"f7", X"fa", X"f6", X"1c", X"f7", X"03", X"f5", X"f3", X"f4", X"01", X"fe", X"10", X"01", X"00", X"ff",
                                                        X"09", X"f8", X"00", X"ff", X"11", X"fd", X"fe", X"fc", X"f6", X"f4", X"02", X"00", X"ff", X"03", X"00", X"f6", X"f5", X"04", X"03", X"fa", X"04", X"0b", X"fb", X"00", X"ff", X"fe",
                                                        X"01", X"05", X"e1", X"02", X"f9", X"f4", X"e5", X"09", X"08", X"f8", X"f2", X"11", X"fb", X"07", X"05", X"03", X"02", X"07", X"d7", X"fd", X"f6", X"f2", X"e4", X"09", X"0a", X"fd",
                                                        X"ee", X"0a", X"f5", X"06", X"0c", X"07", X"fe", X"07", X"e7", X"fe", X"f6", X"f8", X"f0", X"05", X"09", X"fc", X"fa", X"05", X"f7", X"01", X"06", X"02", X"02", X"03", X"0e", X"02",
                                                        X"f8", X"fe", X"02", X"fa", X"03", X"fd", X"07", X"ff", X"04", X"fc", X"02", X"fd", X"03", X"02", X"1a", X"00", X"fd", X"01", X"15", X"f5", X"f9", X"fb", X"12", X"f6", X"05", X"f9",
                                                        X"f7", X"f3", X"05", X"fc", X"1f", X"03", X"fe", X"fb", X"18", X"f8", X"fb", X"fc", X"1a", X"f2", X"ff", X"f8", X"f6", X"fb", X"03", X"fe", X"12", X"03", X"fc", X"f6", X"0d", X"fc",
                                                        X"01", X"f1", X"11", X"00", X"fb", X"fe", X"04", X"f9", X"01", X"fb", X"f6", X"03", X"00", X"fc", X"fd", X"03", X"03", X"fc", X"ff", X"06", X"fd", X"ff", X"08", X"06", X"fe", X"fe",
                                                        X"f0", X"fe", X"00", X"fc", X"dd", X"10", X"03", X"01", X"f0", X"11", X"fe", X"03", X"0e", X"0a", X"02", X"04", X"e8", X"fe", X"fd", X"fe", X"d0", X"14", X"03", X"fb", X"ea", X"0f",
                                                        X"00", X"05", X"0e", X"08", X"fd", X"02", X"f5", X"fe", X"fb", X"fa", X"e3", X"06", X"fe", X"f5", X"f9", X"09", X"fb", X"ff", X"09", X"03", X"02", X"00", X"04", X"fd", X"02", X"02",
                                                        X"05", X"ff", X"fa", X"f7", X"0b", X"fa", X"fe", X"00", X"fe", X"fb", X"01", X"fb", X"16", X"ff", X"02", X"04", X"19", X"fe", X"fa", X"fd", X"17", X"f3", X"04", X"fc", X"fa", X"f2",
                                                        X"01", X"fd", X"1b", X"05", X"01", X"03", X"12", X"f9", X"f8", X"fc", X"19", X"f7", X"fe", X"f8", X"f8", X"f3", X"01", X"fe", X"0e", X"04", X"01", X"fd", X"09", X"f9", X"fe", X"fc",
                                                        X"0b", X"fb", X"fa", X"fe", X"fd", X"f6", X"ff", X"01", X"fa", X"00", X"fd", X"f6", X"f4", X"fe", X"04", X"fa", X"01", X"05", X"f8", X"00", X"03", X"ff", X"fc", X"06", X"de", X"01",
                                                        X"f5", X"f8", X"e9", X"0c", X"08", X"f5", X"f2", X"0d", X"f4", X"07", X"0c", X"01", X"fb", X"0a", X"dc", X"03", X"f5", X"f4", X"e1", X"10", X"0b", X"f3", X"ef", X"0b", X"f1", X"08",
                                                        X"08", X"09", X"fc", X"04", X"f1", X"00", X"f6", X"ff", X"e4", X"0a", X"08", X"f7", X"f9", X"04", X"fb", X"01", X"04", X"ff", X"ff", X"04", X"0a", X"ff", X"fc", X"fd", X"fd", X"05",
                                                        X"00", X"f7", X"07", X"f9", X"f7", X"fe", X"fc", X"fa", X"01", X"fb", X"17", X"02", X"04", X"fe", X"16", X"f9", X"fd", X"f7", X"13", X"f4", X"ff", X"f9", X"fa", X"f1", X"01", X"fd",
                                                        X"19", X"02", X"01", X"fb", X"18", X"fa", X"fc", X"f8", X"1d", X"f5", X"01", X"f9", X"f7", X"ec", X"01", X"fb", X"12", X"01", X"fe", X"fb", X"0e", X"fb", X"fb", X"f9", X"19", X"fa",
                                                        X"fb", X"fc", X"ff", X"f7", X"01", X"ff", X"fb", X"fe", X"fb", X"f8", X"eb", X"ff", X"ff", X"f6", X"fd", X"08", X"fc", X"04", X"04", X"04", X"01", X"03", X"ea", X"fd", X"fb", X"f7",
                                                        X"da", X"0d", X"00", X"f9", X"ea", X"0d", X"f7", X"02", X"0b", X"07", X"00", X"01", X"e6", X"fe", X"fb", X"fe", X"c7", X"0f", X"01", X"fb", X"e2", X"09", X"f9", X"03", X"0f", X"0e",
                                                        X"00", X"02", X"f0", X"fb", X"00", X"00", X"e1", X"0c", X"00", X"fb", X"f4", X"06", X"fa", X"01", X"0a", X"07", X"00", X"ff", X"07", X"02", X"fc", X"04", X"01", X"08", X"fd", X"fa",
                                                        X"0b", X"f7", X"01", X"02", X"07", X"03", X"fd", X"ff", X"1b", X"02", X"00", X"fd", X"17", X"fa", X"f7", X"f6", X"19", X"f1", X"ff", X"fb", X"fd", X"f9", X"01", X"f9", X"1f", X"04",
                                                        X"04", X"fe", X"18", X"f9", X"f8", X"f2", X"19", X"f7", X"05", X"fd", X"f6", X"f5", X"02", X"f9", X"16", X"06", X"04", X"fd", X"06", X"f9", X"fd", X"fc", X"14", X"fc", X"fb", X"fe",
                                                        X"f5", X"f9", X"fe", X"00", X"fc", X"03", X"00", X"f1", X"f8", X"05", X"03", X"f7", X"ff", X"0a", X"f7", X"03", X"fb", X"fe", X"fb", X"06", X"da", X"fd", X"fa", X"eb", X"e5", X"0d",
                                                        X"06", X"f4", X"f1", X"0c", X"f9", X"03", X"0d", X"04", X"fd", X"0b", X"d4", X"fc", X"f0", X"ee", X"e4", X"0d", X"0d", X"f5", X"ea", X"0b", X"fa", X"06", X"0b", X"06", X"03", X"07",
                                                        X"ef", X"fc", X"f7", X"fa", X"e7", X"07", X"08", X"f6", X"f3", X"03", X"fa", X"01", X"09", X"02", X"02", X"06", X"0c", X"01", X"fc", X"06", X"fc", X"01", X"00", X"fe", X"06", X"fc",
                                                        X"ff", X"fa", X"fc", X"fe", X"01", X"fe", X"1e", X"ff", X"fd", X"06", X"12", X"f3", X"fb", X"fe", X"18", X"f2", X"00", X"f6", X"f7", X"fa", X"05", X"fd", X"1b", X"04", X"02", X"fb",
                                                        X"1a", X"f6", X"fe", X"fb", X"1a", X"f5", X"01", X"f9", X"fb", X"f7", X"04", X"fd", X"10", X"ff", X"00", X"f4", X"0d", X"ff", X"fc", X"f9", X"11", X"fa", X"00", X"fb", X"ff", X"ff",
                                                        X"01", X"fd", X"f8", X"ff", X"ff", X"fb", X"f6", X"08", X"fe", X"fe", X"fd", X"03", X"00", X"02", X"03", X"07", X"fd", X"01", X"e9", X"00", X"ff", X"f9", X"cf", X"0b", X"fd", X"fc",
                                                        X"ed", X"0d", X"fc", X"07", X"0b", X"0f", X"fe", X"02", X"e1", X"ff", X"fd", X"fa", X"d0", X"0d", X"01", X"f4", X"e2", X"0f", X"f5", X"07", X"0d", X"0a", X"01", X"03", X"f0", X"fd",
                                                        X"00", X"fe", X"e6", X"06", X"03", X"fd", X"f3", X"07", X"f9", X"00", X"09", X"02", X"00", X"00", X"08", X"fe", X"fd", X"07", X"fa", X"02", X"fe", X"fe", X"0c", X"fa", X"fe", X"00",
                                                        X"03", X"02", X"03", X"fe", X"1b", X"05", X"02", X"01", X"15", X"ff", X"f9", X"00", X"16", X"f4", X"ff", X"fb", X"fe", X"f5", X"03", X"f9", X"21", X"03", X"02", X"01", X"16", X"f4",
                                                        X"f9", X"fc", X"19", X"f6", X"fe", X"fb", X"fa", X"f9", X"fd", X"fe", X"15", X"00", X"02", X"f4", X"09", X"f6", X"fd", X"ff", X"0e", X"ff", X"fd", X"fd", X"f7", X"f6", X"01", X"01",
                                                        X"00", X"01", X"fc", X"f1", X"f6", X"03", X"01", X"f8", X"02", X"07", X"f7", X"02", X"fd", X"fe", X"fb", X"07", X"eb", X"ff", X"f8", X"f6", X"dc", X"06", X"0b", X"f2", X"f1", X"0b",
                                                        X"f7", X"04", X"08", X"03", X"ff", X"07", X"d3", X"02", X"fc", X"f9", X"e1", X"04", X"07", X"fc", X"ec", X"0a", X"f8", X"03", X"0a", X"04", X"00", X"03", X"eb", X"ff", X"fb", X"fe",
                                                        X"e8", X"07", X"07", X"fa", X"f5", X"08", X"f9", X"01", X"06", X"03", X"02", X"05", X"0c", X"fe", X"fb", X"f9", X"fd", X"ff", X"02", X"f6", X"0b", X"00", X"fd", X"fb", X"fc", X"f8",
                                                        X"02", X"ff", X"1f", X"00", X"ff", X"fa", X"13", X"f1", X"fa", X"f3", X"15", X"f5", X"03", X"f9", X"fb", X"f3", X"00", X"fb", X"1d", X"02", X"fb", X"fa", X"14", X"f4", X"fa", X"f0",
                                                        X"1a", X"f1", X"ff", X"f8", X"fd", X"f5", X"ff", X"f8", X"13", X"01", X"fd", X"f9", X"0c", X"fe", X"fb", X"f2", X"11", X"fa", X"02", X"ff", X"02", X"ff", X"ff", X"f7", X"fe", X"02",
                                                        X"02", X"f6", X"fa", X"07", X"fd", X"f0", X"04", X"07", X"f9", X"02", X"07", X"07", X"fd", X"00", X"e8", X"ff", X"02", X"ed", X"d8", X"0d", X"05", X"f5", X"f1", X"0d", X"fa", X"06",
                                                        X"0b", X"07", X"fb", X"ff", X"e2", X"fe", X"fc", X"f9", X"d5", X"0a", X"03", X"f2", X"ea", X"11", X"fe", X"02", X"0a", X"09", X"00", X"02", X"f3", X"00", X"fe", X"fb", X"e5", X"0d",
                                                        X"03", X"f3", X"f7", X"05", X"ff", X"04", X"05", X"02", X"03", X"00", X"0e", X"ff", X"00", X"ff", X"03", X"02", X"01", X"f9", X"0d", X"f9", X"01", X"fb", X"04", X"00", X"00", X"fb",
                                                        X"22", X"01", X"02", X"05", X"1f", X"f5", X"f9", X"f9", X"1c", X"f3", X"05", X"f7", X"fa", X"fa", X"05", X"fc", X"21", X"04", X"03", X"fc", X"19", X"f4", X"f7", X"f5", X"1d", X"f6",
                                                        X"01", X"f7", X"f7", X"f4", X"ff", X"fd", X"16", X"01", X"ff", X"f4", X"05", X"f8", X"fb", X"f3", X"11", X"ff", X"fc", X"fb", X"f7", X"fe", X"00", X"ff", X"f7", X"00", X"fe", X"e6",
                                                        X"f7", X"f7", X"06", X"ec", X"01", X"06", X"f2", X"ff", X"02", X"fb", X"f9", X"03", X"e1", X"ff", X"f7", X"ef", X"df", X"09", X"0a", X"f8", X"ea", X"09", X"f5", X"04", X"09", X"05",
                                                        X"00", X"06", X"d4", X"03", X"f7", X"f5", X"d3", X"0b", X"07", X"f9", X"ed", X"0b", X"f5", X"06", X"0a", X"04", X"02", X"06", X"ea", X"fd", X"fa", X"fe", X"de", X"05", X"05", X"f8",
                                                        X"f5", X"0b", X"f5", X"04", X"09", X"00", X"09", X"08", X"0a", X"00", X"fd", X"01", X"fe", X"fc", X"05", X"fb", X"09", X"ff", X"fe", X"fb", X"00", X"fa", X"05", X"02", X"19", X"02",
                                                        X"05", X"07", X"17", X"f6", X"fb", X"fd", X"13", X"f4", X"00", X"f5", X"fa", X"f5", X"02", X"fa", X"21", X"01", X"fc", X"fc", X"1a", X"f1", X"f8", X"f6", X"1a", X"f1", X"ff", X"f9",
                                                        X"fa", X"f5", X"03", X"fc", X"13", X"04", X"00", X"fb", X"10", X"fe", X"fc", X"f2", X"15", X"fb", X"fb", X"ff", X"fd", X"ff", X"02", X"fc", X"fa", X"02", X"fd", X"f1", X"f6", X"06",
                                                        X"ff", X"f1", X"03", X"04", X"f7", X"01", X"06", X"08", X"00", X"fe", X"e9", X"00", X"02", X"f7", X"d8", X"0a", X"00", X"f8", X"ed", X"0f", X"fc", X"09", X"0a", X"08", X"fc", X"03",
                                                        X"e4", X"00", X"fd", X"f9", X"c9", X"0e", X"04", X"f9", X"e7", X"0b", X"fc", X"04", X"0b", X"05", X"fd", X"02", X"f2", X"fd", X"fd", X"fd", X"db", X"08", X"04", X"fc", X"f6", X"05",
                                                        X"01", X"03", X"0b", X"07", X"ff", X"04", X"08", X"fe", X"01", X"00", X"02", X"02", X"fd", X"f7", X"0d", X"f9", X"00", X"03", X"04", X"ff", X"04", X"00", X"1b", X"02", X"09", X"02",
                                                        X"15", X"f9", X"fc", X"fa", X"1a", X"f6", X"fe", X"fa", X"00", X"f5", X"06", X"fe", X"1c", X"01", X"03", X"04", X"19", X"f6", X"f8", X"fb", X"1b", X"f5", X"00", X"f6", X"f9", X"f5",
                                                        X"02", X"fd", X"13", X"02", X"00", X"f9", X"0b", X"f9", X"fd", X"fb", X"13", X"00", X"fd", X"fe", X"fd", X"f9", X"ff", X"fe", X"00", X"02", X"f9", X"ee", X"f5", X"01", X"00", X"f6",
                                                        X"fd", X"05", X"fb", X"02", X"04", X"fe", X"fb", X"01", X"dd", X"ff", X"f8", X"f0", X"de", X"09", X"04", X"fe", X"f1", X"0e", X"f5", X"07", X"09", X"01", X"ff", X"06", X"d8", X"fe",
                                                        X"fb", X"f8", X"de", X"0c", X"08", X"00", X"f0", X"0b", X"f5", X"04", X"0c", X"fe", X"03", X"09", X"f1", X"fb", X"fa", X"fa", X"e9", X"05", X"03", X"f8", X"f6", X"06", X"f7", X"03",
                                                        X"06", X"04", X"03", X"04", X"0e", X"02", X"fb", X"00", X"01", X"fa", X"03", X"f3", X"08", X"fa", X"00", X"fc", X"fb", X"fd", X"08", X"04", X"1a", X"02", X"01", X"01", X"12", X"f1",
                                                        X"fc", X"ef", X"16", X"f7", X"ff", X"fc", X"f7", X"f6", X"02", X"fe", X"1d", X"05", X"01", X"fc", X"1f", X"f5", X"f8", X"f3", X"19", X"f5", X"fe", X"fa", X"f7", X"f5", X"fe", X"fb",
                                                        X"0e", X"ff", X"01", X"f6", X"05", X"00", X"fd", X"f3", X"14", X"f9", X"01", X"fa", X"00", X"f7", X"02", X"fe", X"fb", X"00", X"01", X"f1", X"ef", X"08", X"ff", X"ef", X"03", X"06",
                                                        X"ff", X"03", X"09", X"05", X"00", X"ff", X"e9", X"00", X"fe", X"f4", X"d0", X"07", X"00", X"fd", X"ee", X"0c", X"f7", X"06", X"0d", X"09", X"fe", X"01", X"e4", X"fd", X"fd", X"fc",
                                                        X"d2", X"0c", X"03", X"ff", X"e7", X"10", X"f6", X"04", X"0a", X"09", X"ff", X"00", X"f3", X"fc", X"fa", X"fe", X"e9", X"0b", X"01", X"fb", X"f7", X"05", X"ff", X"ff", X"06", X"02",
                                                        X"02", X"00", X"13", X"00", X"fe", X"07", X"fe", X"fe", X"fd", X"f9", X"0a", X"f9", X"03", X"01", X"04", X"fc", X"04", X"fe", X"1d", X"04", X"00", X"ff", X"1c", X"f6", X"f9", X"f6",
                                                        X"1a", X"f4", X"05", X"ff", X"fb", X"f7", X"02", X"fb", X"1e", X"02", X"06", X"ff", X"18", X"f2", X"fa", X"f9", X"1a", X"f7", X"fd", X"fb", X"f7", X"f7", X"02", X"fa", X"12", X"00",
                                                        X"0a", X"fe", X"0f", X"f8", X"fe", X"fb", X"15", X"04", X"f9", X"fd", X"f8", X"f9", X"01", X"01", X"f3", X"00", X"fe", X"f6", X"f6", X"02", X"05", X"f7", X"03", X"0c", X"f4", X"01",
                                                        X"ff", X"00", X"00", X"05", X"ce", X"01", X"fb", X"f6", X"e4", X"0a", X"08", X"f9", X"f3", X"0a", X"f3", X"08", X"07", X"01", X"fe", X"07", X"d7", X"03", X"f6", X"f6", X"db", X"0a",
                                                        X"0a", X"f9", X"f3", X"09", X"f6", X"05", X"0c", X"04", X"02", X"0c", X"f2", X"fd", X"f7", X"00", X"e9", X"07", X"05", X"fb", X"f7", X"04", X"fb", X"01", X"05", X"00", X"00", X"03",
                                                        X"0a", X"fc", X"fc", X"01", X"02", X"f7", X"01", X"f6", X"09", X"ff", X"fb", X"fc", X"00", X"fb", X"fd", X"fc", X"1b", X"03", X"01", X"07", X"18", X"f4", X"fa", X"fa", X"17", X"f5",
                                                        X"00", X"f9", X"f6", X"f6", X"03", X"fb", X"1c", X"03", X"01", X"fc", X"17", X"fb", X"fc", X"f1", X"1f", X"f9", X"fe", X"fd", X"f8", X"f5", X"01", X"fe", X"13", X"06", X"05", X"04",
                                                        X"11", X"fc", X"ff", X"ff", X"19", X"f8", X"fe", X"fe", X"03", X"fd", X"05", X"fa", X"fa", X"00", X"00", X"fb", X"f3", X"08", X"ff", X"fc", X"03", X"05", X"fb", X"00", X"09", X"05",
                                                        X"00", X"fb", X"e9", X"03", X"01", X"00", X"d1", X"0a", X"01", X"00", X"ec", X"0b", X"fd", X"04", X"0a", X"05", X"00", X"02", X"e2", X"00", X"fc", X"fe", X"c4", X"12", X"02", X"f8",
                                                        X"e5", X"0e", X"f7", X"07", X"0b", X"0b", X"ff", X"03", X"f3", X"02", X"fe", X"ff", X"e1", X"08", X"01", X"ff", X"f0", X"03", X"fe", X"03", X"08", X"00", X"00", X"03", X"0e", X"01",
                                                        X"fd", X"01", X"02", X"07", X"fc", X"f7", X"0b", X"f6", X"03", X"fe", X"04", X"ff", X"02", X"fd", X"1f", X"02", X"03", X"f7", X"1a", X"f9", X"f9", X"f1", X"1b", X"f2", X"08", X"f8",
                                                        X"fe", X"f5", X"01", X"f9", X"11", X"02", X"0c", X"f2", X"26", X"ee", X"f5", X"ef", X"26", X"ff", X"f7", X"fb", X"eb", X"f2", X"ff", X"ff");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ff";
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
