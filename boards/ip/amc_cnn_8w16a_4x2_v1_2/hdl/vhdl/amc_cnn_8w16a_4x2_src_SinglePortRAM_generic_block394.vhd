-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block394.vhd
-- Created: 2024-11-05 16:19:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block394
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage42/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block394 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block394;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block394 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"f9", X"00", X"ef", X"f8", X"c3", X"0f", X"01", X"00", X"d3", X"05", X"07", X"07", X"15", X"16",
                                                        X"01", X"f7", X"eb", X"fc", X"00", X"ff", X"c4", X"08", X"01", X"fd", X"e7", X"05", X"fe", X"04", X"08", X"0d", X"01", X"fb", X"f9", X"fd", X"fd", X"f8", X"e5", X"05", X"fc", X"f9",
                                                        X"ff", X"03", X"fa", X"02", X"08", X"fe", X"ff", X"00", X"0b", X"00", X"f9", X"02", X"00", X"0a", X"fc", X"fe", X"0b", X"f3", X"fe", X"fb", X"05", X"fb", X"00", X"ff", X"16", X"01",
                                                        X"fa", X"fb", X"0e", X"fe", X"03", X"fd", X"0f", X"f3", X"fd", X"fb", X"fe", X"f5", X"02", X"fc", X"14", X"04", X"03", X"fa", X"18", X"f8", X"fd", X"01", X"13", X"fa", X"f8", X"fc",
                                                        X"f7", X"ff", X"01", X"01", X"0d", X"01", X"07", X"f7", X"0e", X"04", X"03", X"fe", X"0c", X"02", X"f7", X"fe", X"fb", X"fe", X"02", X"04", X"ee", X"fd", X"04", X"f7", X"f6", X"01",
                                                        X"07", X"02", X"ff", X"08", X"f1", X"00", X"ff", X"02", X"fc", X"0b", X"d4", X"fe", X"fc", X"f6", X"e8", X"08", X"0a", X"00", X"f6", X"0a", X"f3", X"03", X"04", X"08", X"ff", X"0c",
                                                        X"d7", X"fc", X"ff", X"f9", X"e3", X"04", X"07", X"02", X"f2", X"0d", X"f4", X"02", X"02", X"06", X"ff", X"08", X"f3", X"fd", X"fb", X"f2", X"f8", X"00", X"07", X"f9", X"fd", X"08",
                                                        X"f9", X"00", X"fd", X"fe", X"ff", X"04", X"0f", X"fe", X"ff", X"f8", X"09", X"f8", X"fd", X"f7", X"10", X"fc", X"02", X"fc", X"fe", X"ef", X"07", X"ff", X"1b", X"02", X"fd", X"fc",
                                                        X"0b", X"f9", X"fe", X"f8", X"10", X"f5", X"03", X"fe", X"02", X"f0", X"03", X"f8", X"10", X"03", X"00", X"00", X"19", X"f8", X"fc", X"00", X"10", X"f0", X"01", X"fe", X"04", X"f4",
                                                        X"05", X"fb", X"00", X"ff", X"00", X"fe", X"04", X"02", X"fd", X"fd", X"05", X"fc", X"00", X"ff", X"0a", X"fe", X"ff", X"fd", X"f7", X"fe", X"f6", X"f5", X"e0", X"08", X"fe", X"f7",
                                                        X"f4", X"02", X"fd", X"04", X"0e", X"09", X"fd", X"00", X"e7", X"fd", X"f4", X"f4", X"d1", X"0e", X"fe", X"01", X"e7", X"06", X"01", X"05", X"0e", X"0f", X"00", X"02", X"ea", X"fe",
                                                        X"f7", X"f7", X"df", X"10", X"00", X"fd", X"e5", X"0a", X"01", X"04", X"0f", X"0f", X"01", X"fb", X"f7", X"ff", X"fa", X"fa", X"f6", X"04", X"fe", X"fd", X"00", X"fb", X"01", X"00",
                                                        X"0a", X"02", X"fe", X"fd", X"10", X"fe", X"ff", X"fd", X"0c", X"06", X"fe", X"00", X"0f", X"f9", X"fb", X"ff", X"04", X"fa", X"05", X"fb", X"19", X"fd", X"03", X"ff", X"14", X"fe",
                                                        X"f9", X"fb", X"14", X"f6", X"fe", X"f6", X"01", X"fc", X"02", X"fa", X"1a", X"01", X"01", X"fb", X"10", X"f8", X"fe", X"fa", X"0e", X"fa", X"03", X"fa", X"fb", X"fd", X"00", X"00",
                                                        X"0e", X"fc", X"fb", X"ef", X"01", X"ff", X"01", X"f2", X"06", X"ff", X"f7", X"fb", X"ff", X"ff", X"fe", X"05", X"f3", X"fc", X"00", X"f6", X"f7", X"01", X"07", X"fd", X"fc", X"0b",
                                                        X"fb", X"04", X"07", X"08", X"00", X"09", X"d7", X"fd", X"01", X"fa", X"ee", X"ff", X"0a", X"03", X"f6", X"12", X"ee", X"02", X"05", X"0a", X"00", X"07", X"d7", X"fe", X"00", X"00",
                                                        X"ea", X"08", X"0b", X"02", X"f4", X"0e", X"f4", X"01", X"01", X"05", X"fe", X"08", X"f8", X"ff", X"05", X"ff", X"f2", X"fd", X"04", X"ff", X"f9", X"05", X"f7", X"01", X"fd", X"00",
                                                        X"fe", X"05", X"07", X"02", X"ff", X"f9", X"01", X"f5", X"02", X"f7", X"0b", X"01", X"02", X"fe", X"ff", X"f4", X"01", X"00", X"19", X"fd", X"01", X"05", X"10", X"f6", X"fd", X"ff",
                                                        X"12", X"f7", X"08", X"f9", X"01", X"f2", X"08", X"01", X"19", X"01", X"04", X"0c", X"14", X"01", X"00", X"05", X"14", X"f3", X"09", X"ff", X"03", X"f8", X"08", X"01", X"06", X"00",
                                                        X"fd", X"04", X"f8", X"00", X"fe", X"03", X"08", X"f8", X"01", X"03", X"0a", X"04", X"04", X"fe", X"f6", X"fd", X"00", X"06", X"db", X"08", X"01", X"03", X"f4", X"05", X"f8", X"03",
                                                        X"0a", X"0d", X"05", X"fd", X"e2", X"fa", X"00", X"08", X"cb", X"0d", X"05", X"09", X"e1", X"0f", X"fa", X"02", X"0e", X"0e", X"02", X"fe", X"e8", X"fd", X"fe", X"07", X"cd", X"0d",
                                                        X"00", X"fe", X"ec", X"07", X"fe", X"02", X"0c", X"09", X"00", X"fc", X"fc", X"fe", X"01", X"03", X"eb", X"0e", X"fd", X"00", X"fb", X"fe", X"fd", X"01", X"11", X"08", X"ff", X"01",
                                                        X"14", X"01", X"f9", X"fa", X"03", X"09", X"fd", X"f6", X"05", X"f3", X"03", X"fe", X"08", X"f8", X"01", X"f9", X"15", X"00", X"06", X"00", X"16", X"fd", X"fe", X"fb", X"0c", X"f6",
                                                        X"03", X"fd", X"01", X"fe", X"03", X"fd", X"1c", X"fe", X"07", X"fc", X"10", X"f7", X"fa", X"fa", X"12", X"fb", X"fc", X"fe", X"fb", X"f6", X"03", X"00", X"0e", X"ff", X"03", X"fc",
                                                        X"06", X"f5", X"04", X"01", X"0b", X"07", X"fa", X"fb", X"fd", X"fa", X"06", X"04", X"ed", X"ff", X"fe", X"f2", X"f1", X"fc", X"06", X"fb", X"00", X"0b", X"f1", X"ff", X"fd", X"06",
                                                        X"ff", X"09", X"c9", X"fc", X"fd", X"f9", X"ec", X"01", X"05", X"02", X"f2", X"0b", X"ed", X"08", X"00", X"05", X"fc", X"0b", X"d7", X"ff", X"00", X"f8", X"e8", X"08", X"06", X"fd",
                                                        X"f2", X"0d", X"f1", X"03", X"01", X"02", X"fe", X"09", X"ec", X"fa", X"01", X"f9", X"ff", X"02", X"07", X"fc", X"01", X"03", X"f0", X"fd", X"fd", X"ff", X"fd", X"06", X"0f", X"01",
                                                        X"ff", X"fa", X"05", X"f7", X"02", X"fb", X"0c", X"fe", X"ff", X"fb", X"fc", X"f0", X"04", X"fe", X"20", X"ff", X"fb", X"01", X"13", X"f9", X"fb", X"fc", X"16", X"f7", X"0d", X"f6",
                                                        X"f7", X"ef", X"00", X"ff", X"17", X"fc", X"fc", X"02", X"10", X"fa", X"fd", X"f9", X"11", X"f1", X"03", X"fc", X"02", X"f4", X"03", X"f7", X"0e", X"fc", X"fc", X"fb", X"f8", X"ff",
                                                        X"fb", X"f9", X"06", X"fc", X"02", X"00", X"0a", X"02", X"06", X"f9", X"f8", X"f7", X"fa", X"f6", X"d8", X"0f", X"00", X"fb", X"f6", X"09", X"fa", X"00", X"09", X"0f", X"ff", X"fb",
                                                        X"ed", X"fc", X"00", X"fa", X"d1", X"0e", X"ff", X"00", X"e8", X"0f", X"fc", X"03", X"09", X"14", X"ff", X"02", X"f4", X"00", X"fa", X"f1", X"d7", X"0f", X"ff", X"ff", X"ef", X"09",
                                                        X"02", X"03", X"0a", X"0a", X"fc", X"ff", X"fd", X"00", X"f8", X"fd", X"f9", X"09", X"fe", X"00", X"fe", X"00", X"05", X"00", X"0c", X"0a", X"01", X"02", X"0e", X"03", X"fe", X"fb",
                                                        X"0e", X"04", X"00", X"fb", X"08", X"f4", X"02", X"fc", X"05", X"fe", X"05", X"fc", X"18", X"00", X"03", X"fc", X"1e", X"fe", X"fd", X"fb", X"17", X"f4", X"05", X"fd", X"03", X"fd",
                                                        X"02", X"fd", X"1b", X"01", X"ff", X"fc", X"13", X"f5", X"fd", X"fe", X"13", X"f6", X"00", X"fb", X"fd", X"f6", X"ff", X"01", X"0a", X"03", X"ff", X"fb", X"04", X"fb", X"fb", X"ff",
                                                        X"0b", X"03", X"f8", X"ff", X"f5", X"f8", X"fd", X"06", X"e8", X"ff", X"fe", X"fb", X"f9", X"00", X"07", X"00", X"f9", X"0c", X"f1", X"01", X"fc", X"02", X"fc", X"0d", X"d0", X"fb",
                                                        X"fb", X"f2", X"e9", X"04", X"09", X"f7", X"fc", X"15", X"f3", X"03", X"06", X"00", X"fd", X"0d", X"e4", X"fa", X"fe", X"fb", X"e3", X"0c", X"09", X"f6", X"f4", X"11", X"f5", X"04",
                                                        X"02", X"04", X"ff", X"08", X"fc", X"fb", X"00", X"fe", X"f7", X"09", X"04", X"fc", X"05", X"09", X"f4", X"00", X"00", X"01", X"02", X"03", X"16", X"fb", X"01", X"fc", X"09", X"fc",
                                                        X"01", X"fa", X"0f", X"fc", X"fd", X"fb", X"fb", X"fb", X"03", X"fd", X"1c", X"fe", X"03", X"fe", X"15", X"f8", X"fd", X"fa", X"14", X"fa", X"03", X"f8", X"f6", X"f9", X"ff", X"fc",
                                                        X"19", X"00", X"fe", X"fe", X"18", X"fb", X"f5", X"07", X"1a", X"f7", X"05", X"fa", X"fb", X"fc", X"ff", X"fd", X"0b", X"fe", X"f9", X"f8", X"01", X"03", X"fa", X"ff", X"07", X"f9",
                                                        X"07", X"01", X"06", X"03", X"01", X"fc", X"fa", X"ff", X"f7", X"f5", X"dc", X"06", X"03", X"00", X"f6", X"05", X"08", X"02", X"0e", X"08", X"01", X"fe", X"e8", X"01", X"f4", X"f7",
                                                        X"d7", X"0e", X"fd", X"ff", X"ec", X"0c", X"07", X"06", X"0e", X"0a", X"ff", X"03", X"f1", X"fd", X"f8", X"fc", X"d7", X"0d", X"fe", X"01", X"ed", X"0d", X"fe", X"06", X"0e", X"0e",
                                                        X"01", X"01", X"f9", X"fd", X"ff", X"fb", X"f8", X"0d", X"fb", X"fe", X"f9", X"ff", X"f9", X"ff", X"05", X"03", X"fe", X"ff", X"0a", X"fb", X"01", X"ff", X"03", X"07", X"fa", X"fe",
                                                        X"0a", X"f4", X"fe", X"fd", X"05", X"fd", X"ff", X"fd", X"13", X"03", X"03", X"f9", X"10", X"fc", X"fa", X"f4", X"12", X"f0", X"fc", X"f7", X"fc", X"f1", X"03", X"fa", X"1e", X"02",
                                                        X"03", X"fc", X"1b", X"fb", X"fd", X"f9", X"0f", X"f8", X"f8", X"fc", X"fb", X"f6", X"03", X"fe", X"0c", X"01", X"02", X"fc", X"01", X"fb", X"04", X"fd", X"03", X"01", X"f8", X"fb",
                                                        X"f9", X"f9", X"fe", X"02", X"eb", X"fa", X"02", X"f9", X"eb", X"04", X"08", X"fe", X"01", X"06", X"f8", X"fe", X"fb", X"f8", X"fe", X"06", X"d8", X"01", X"ff", X"f2", X"e7", X"05",
                                                        X"07", X"fd", X"f5", X"0d", X"f3", X"01", X"05", X"00", X"03", X"0a", X"da", X"fb", X"ff", X"f6", X"db", X"02", X"03", X"fd", X"ee", X"0f", X"f3", X"06", X"07", X"fc", X"fd", X"0c",
                                                        X"f2", X"fd", X"fd", X"f6", X"f0", X"06", X"04", X"fc", X"fc", X"08", X"f3", X"fd", X"03", X"00", X"fd", X"02", X"06", X"fb", X"fa", X"03", X"05", X"fb", X"02", X"01", X"01", X"fb",
                                                        X"fe", X"fb", X"fb", X"ec", X"08", X"ff", X"17", X"fe", X"f8", X"fb", X"0d", X"fa", X"fc", X"fc", X"0b", X"f0", X"02", X"f6", X"f5", X"f1", X"05", X"fb", X"16", X"02", X"fd", X"fd",
                                                        X"11", X"02", X"fa", X"00", X"10", X"f2", X"09", X"fa", X"ff", X"02", X"05", X"f8", X"06", X"02", X"fc", X"fa", X"07", X"05", X"fc", X"fc", X"0e", X"f9", X"fd", X"00", X"01", X"03",
                                                        X"05", X"f8", X"f2", X"fc", X"fe", X"ff", X"d5", X"0a", X"fe", X"05", X"fb", X"01", X"ff", X"00", X"0b", X"0e", X"04", X"ff", X"eb", X"00", X"fb", X"ff", X"d7", X"12", X"00", X"02",
                                                        X"de", X"0a", X"fd", X"05", X"13", X"0c", X"fd", X"fb", X"f2", X"00", X"fc", X"00", X"d7", X"10", X"04", X"02", X"eb", X"06", X"01", X"01", X"10", X"0e", X"fe", X"03", X"f7", X"ff",
                                                        X"f8", X"fb", X"ec", X"09", X"fc", X"fa", X"fc", X"fb", X"fe", X"fe", X"06", X"05", X"00", X"fe", X"0a", X"05", X"00", X"08", X"07", X"01", X"fc", X"02", X"06", X"f0", X"fc", X"03",
                                                        X"02", X"f7", X"02", X"fe", X"11", X"01", X"09", X"f9", X"18", X"fb", X"f9", X"f9", X"14", X"f0", X"fc", X"fd", X"ff", X"f4", X"ff", X"ff", X"1b", X"02", X"04", X"fe", X"16", X"f8",
                                                        X"fe", X"fc", X"0b", X"f4", X"ff", X"fc", X"f8", X"f4", X"02", X"fe", X"04", X"00", X"04", X"f5", X"06", X"fb", X"ff", X"f7", X"0b", X"05", X"f3", X"01", X"fa", X"fc", X"fd", X"02",
                                                        X"ea", X"ff", X"fe", X"f5", X"f1", X"01", X"01", X"fb", X"fd", X"09", X"f6", X"02", X"fb", X"03", X"fa", X"05", X"d5", X"fc", X"00", X"f3", X"ea", X"01", X"05", X"fb", X"f2", X"0d",
                                                        X"ed", X"00", X"00", X"05", X"fe", X"08", X"e1", X"f9", X"00", X"f6", X"e6", X"04", X"08", X"f5", X"f0", X"0c", X"ef", X"02", X"fe", X"fe", X"ff", X"06", X"fb", X"f9", X"fc", X"fa",
                                                        X"f4", X"fc", X"04", X"f7", X"fd", X"08", X"f4", X"04", X"02", X"01", X"02", X"02", X"08", X"f8", X"fb", X"ff", X"ff", X"fe", X"01", X"00", X"04", X"f7", X"fa", X"f8", X"ff", X"f3",
                                                        X"05", X"fd", X"18", X"fd", X"fb", X"02", X"13", X"f7", X"f7", X"fa", X"0e", X"f6", X"05", X"f8", X"fd", X"f2", X"fe", X"fc", X"12", X"fd", X"fa", X"03", X"0a", X"fb", X"f5", X"01",
                                                        X"0e", X"f1", X"04", X"fa", X"02", X"fa", X"02", X"fe", X"06", X"00", X"fd", X"ff", X"00", X"0d", X"f8", X"08", X"0b", X"f9", X"01", X"fe", X"03", X"02", X"00", X"fd", X"f6", X"00",
                                                        X"fb", X"fb", X"e1", X"0d", X"04", X"05", X"f8", X"03", X"04", X"00", X"09", X"0a", X"03", X"00", X"ea", X"01", X"fd", X"ff", X"cf", X"0f", X"fe", X"0b", X"e9", X"09", X"05", X"04",
                                                        X"0e", X"0f", X"ff", X"01", X"e8", X"ff", X"f4", X"fe", X"d5", X"11", X"fe", X"02", X"e7", X"09", X"03", X"06", X"0e", X"0a", X"fd", X"00", X"fc", X"fd", X"fc", X"00", X"ec", X"12",
                                                        X"02", X"fa", X"fd", X"fd", X"fe", X"01", X"0b", X"0b", X"01", X"fb", X"0e", X"fa", X"fd", X"f8", X"ff", X"01", X"fb", X"f4", X"08", X"f6", X"f5", X"fc", X"00", X"00", X"02", X"fe",
                                                        X"16", X"01", X"01", X"f8", X"0f", X"fc", X"fd", X"f3", X"11", X"f5", X"fe", X"fe", X"f6", X"f2", X"04", X"ff", X"1c", X"04", X"06", X"fc", X"0e", X"ef", X"fd", X"fa", X"14", X"f7",
                                                        X"ff", X"f9", X"f5", X"f2", X"fe", X"04", X"0d", X"04", X"01", X"fb", X"0a", X"f8", X"00", X"fd", X"08", X"01", X"00", X"01", X"fd", X"f9", X"fc", X"05", X"f8", X"01", X"fc", X"ef",
                                                        X"f4", X"ff", X"07", X"f8", X"01", X"05", X"f7", X"01", X"fa", X"03", X"fa", X"06", X"d0", X"00", X"02", X"f2", X"ea", X"07", X"0a", X"fc", X"ef", X"0c", X"f0", X"03", X"03", X"08",
                                                        X"fa", X"0a", X"d4", X"fe", X"01", X"f3", X"e4", X"00", X"07", X"fd", X"f5", X"0f", X"eb", X"05", X"04", X"01", X"fc", X"08", X"eb", X"fd", X"02", X"03", X"f7", X"05", X"05", X"02",
                                                        X"fc", X"06", X"f5", X"00", X"fd", X"fc", X"03", X"06", X"07", X"00", X"03", X"00", X"06", X"f8", X"fd", X"01", X"0a", X"fd", X"fd", X"fc", X"fe", X"f1", X"ff", X"fc", X"19", X"ff",
                                                        X"ff", X"04", X"11", X"f8", X"fb", X"00", X"15", X"f2", X"03", X"fb", X"f9", X"f2", X"02", X"fd", X"16", X"03", X"fd", X"01", X"0e", X"fd", X"fe", X"01", X"18", X"f7", X"05", X"fb",
                                                        X"fc", X"f9", X"09", X"fd", X"0a", X"03", X"fd", X"06", X"00", X"01", X"ff", X"01", X"03", X"f9", X"04", X"ff", X"08", X"03", X"00", X"fe", X"f5", X"03", X"f9", X"ff", X"e6", X"06",
                                                        X"fc", X"06", X"f9", X"04", X"06", X"04", X"0c", X"08", X"02", X"01", X"e3", X"00", X"f9", X"06", X"d0", X"10", X"fe", X"02", X"e1", X"0e", X"ff", X"06", X"07", X"10", X"00", X"00",
                                                        X"e7", X"ff", X"f9", X"01", X"d9", X"0d", X"00", X"fe", X"ea", X"0a", X"fa", X"05", X"0e", X"08", X"00", X"01", X"fa", X"01", X"fa", X"f9", X"f1", X"0b", X"fe", X"fb", X"03", X"01",
                                                        X"fe", X"01", X"08", X"0a", X"fd", X"fb", X"12", X"ff", X"fe", X"fd", X"fe", X"04", X"fd", X"00", X"0c", X"f4", X"fd", X"fb", X"fc", X"fd", X"ff", X"fc", X"1d", X"05", X"07", X"02",
                                                        X"14", X"02", X"f9", X"ff", X"13", X"f3", X"04", X"fb", X"f9", X"f3", X"04", X"fe", X"1d", X"06", X"02", X"f8", X"1a", X"fa", X"fb", X"f8", X"11", X"fa", X"00", X"fd", X"f9", X"f8",
                                                        X"fe", X"01", X"0e", X"07", X"02", X"f4", X"09", X"fa", X"ff", X"fd", X"08", X"02", X"fa", X"01", X"00", X"00", X"ff", X"05", X"ec", X"fc", X"fe", X"f9", X"ee", X"02", X"01", X"01",
                                                        X"fd", X"06", X"f4", X"fe", X"01", X"02", X"fc", X"08", X"cb", X"fc", X"01", X"f5", X"e3", X"04", X"09", X"fd", X"f2", X"0f", X"f1", X"02", X"09", X"06", X"fc", X"0c", X"cf", X"fe",
                                                        X"fa", X"f5", X"ea", X"0a", X"05", X"fa", X"f8", X"0c", X"ef", X"03", X"04", X"03", X"fc", X"0a", X"fb", X"fb", X"fc", X"f8", X"f1", X"00", X"01", X"f6", X"00", X"03", X"f4", X"01",
                                                        X"fe", X"f9", X"04", X"02", X"29", X"03", X"fc", X"fe", X"ff", X"06", X"01", X"f4", X"05", X"ee", X"08", X"ff", X"fe", X"ec", X"06", X"f8");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f8";
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

