-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block431.vhd
-- Created: 2024-11-05 16:19:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block431
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage76/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block431 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block431;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block431 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"04", X"fb", X"fc", X"00", X"f2", X"04", X"08", X"03", X"f5", X"fa", X"0f", X"fd", X"00", X"06",
                                                        X"06", X"00", X"11", X"ff", X"f4", X"02", X"ec", X"07", X"fd", X"02", X"f8", X"f8", X"0a", X"00", X"06", X"09", X"01", X"02", X"0e", X"02", X"f9", X"00", X"f4", X"ff", X"fe", X"fc",
                                                        X"f5", X"f8", X"08", X"00", X"02", X"06", X"03", X"fd", X"06", X"00", X"fa", X"00", X"eb", X"02", X"00", X"02", X"f3", X"f9", X"0a", X"00", X"02", X"01", X"fe", X"01", X"15", X"02",
                                                        X"fb", X"ff", X"e9", X"06", X"ff", X"01", X"f4", X"f7", X"10", X"ff", X"08", X"0a", X"00", X"02", X"13", X"09", X"04", X"ff", X"e6", X"08", X"02", X"ff", X"f7", X"fb", X"0d", X"02",
                                                        X"07", X"04", X"ff", X"00", X"17", X"09", X"fa", X"05", X"e3", X"0a", X"fe", X"01", X"f9", X"fa", X"11", X"06", X"07", X"04", X"00", X"fe", X"11", X"08", X"02", X"04", X"e5", X"00",
                                                        X"02", X"04", X"f0", X"f8", X"0f", X"01", X"07", X"ff", X"ff", X"fa", X"17", X"05", X"fd", X"02", X"eb", X"03", X"fe", X"02", X"f9", X"fa", X"11", X"fe", X"07", X"03", X"01", X"fd",
                                                        X"12", X"01", X"fa", X"01", X"e4", X"00", X"fc", X"05", X"f5", X"f6", X"0d", X"fc", X"06", X"fd", X"fe", X"ff", X"19", X"01", X"fa", X"fe", X"e5", X"05", X"fb", X"00", X"f3", X"f5",
                                                        X"0a", X"06", X"01", X"03", X"01", X"02", X"13", X"02", X"f3", X"fb", X"f2", X"05", X"02", X"01", X"f7", X"f7", X"09", X"01", X"0b", X"05", X"02", X"fe", X"15", X"fe", X"f7", X"00",
                                                        X"dd", X"f8", X"02", X"04", X"f0", X"fa", X"13", X"fc", X"01", X"08", X"02", X"fd", X"0a", X"01", X"fa", X"01", X"e4", X"04", X"01", X"03", X"f5", X"fc", X"0a", X"00", X"04", X"0b",
                                                        X"ff", X"fe", X"09", X"ff", X"fc", X"fc", X"e7", X"03", X"00", X"fe", X"f0", X"ff", X"04", X"fe", X"02", X"08", X"02", X"ff", X"03", X"fd", X"f8", X"00", X"f1", X"09", X"02", X"00",
                                                        X"ec", X"01", X"08", X"fd", X"05", X"04", X"05", X"01", X"06", X"fc", X"fc", X"fd", X"f1", X"03", X"ff", X"ff", X"f1", X"fb", X"ff", X"fc", X"ff", X"04", X"02", X"fe", X"06", X"f9",
                                                        X"fc", X"f6", X"f2", X"06", X"01", X"fd", X"f6", X"04", X"ff", X"02", X"01", X"00", X"01", X"03", X"fd", X"f9", X"06", X"fb", X"fa", X"09", X"01", X"02", X"ff", X"06", X"fc", X"fe",
                                                        X"00", X"05", X"00", X"04", X"00", X"00", X"05", X"ff", X"00", X"07", X"05", X"ff", X"fa", X"02", X"05", X"02", X"03", X"04", X"01", X"06", X"06", X"fc", X"02", X"fb", X"00", X"ff",
                                                        X"01", X"01", X"ff", X"00", X"fe", X"fb", X"03", X"01", X"05", X"05", X"07", X"00", X"00", X"fc", X"00", X"01", X"fd", X"01", X"fd", X"fe", X"05", X"01", X"09", X"07", X"ff", X"07",
                                                        X"fb", X"fd", X"06", X"02", X"00", X"00", X"ff", X"05", X"fa", X"04", X"01", X"fe", X"03", X"fe", X"01", X"03", X"01", X"ff", X"00", X"03", X"06", X"fe", X"ff", X"03", X"fd", X"04",
                                                        X"03", X"00", X"03", X"fc", X"ff", X"01", X"05", X"fd", X"00", X"04", X"04", X"fc", X"00", X"07", X"f6", X"fd", X"01", X"00", X"07", X"fc", X"00", X"02", X"0e", X"ff", X"fe", X"fc",
                                                        X"02", X"01", X"00", X"02", X"fa", X"06", X"02", X"ff", X"02", X"04", X"01", X"04", X"0d", X"00", X"00", X"fd", X"f8", X"02", X"02", X"fe", X"05", X"03", X"f9", X"fd", X"05", X"00",
                                                        X"fe", X"03", X"08", X"fe", X"ff", X"fc", X"f5", X"00", X"04", X"fd", X"f6", X"ff", X"07", X"03", X"01", X"fc", X"fe", X"05", X"06", X"00", X"fb", X"ff", X"f6", X"fd", X"ff", X"05",
                                                        X"fb", X"03", X"07", X"fb", X"05", X"ff", X"fe", X"03", X"00", X"00", X"fc", X"04", X"fa", X"00", X"fe", X"08", X"f8", X"00", X"09", X"01", X"01", X"02", X"ff", X"03", X"03", X"ff",
                                                        X"f2", X"ff", X"fd", X"01", X"ff", X"ff", X"f7", X"02", X"02", X"ff", X"07", X"ff", X"01", X"02", X"04", X"01", X"fc", X"0a", X"fc", X"02", X"04", X"09", X"fa", X"fe", X"04", X"ff",
                                                        X"06", X"00", X"07", X"02", X"0f", X"04", X"fb", X"00", X"00", X"00", X"04", X"f9", X"fd", X"01", X"04", X"02", X"00", X"ff", X"02", X"00", X"0b", X"04", X"fd", X"03", X"07", X"fe",
                                                        X"02", X"fe", X"fd", X"05", X"06", X"03", X"02", X"05", X"fe", X"fe", X"0a", X"03", X"fd", X"fa", X"07", X"04", X"00", X"f8", X"ff", X"04", X"0d", X"ff", X"03", X"00", X"00", X"ff",
                                                        X"07", X"02", X"01", X"f3", X"09", X"fd", X"fb", X"f6", X"f9", X"01", X"05", X"01", X"07", X"0a", X"fb", X"ff", X"07", X"ff", X"02", X"fc", X"fe", X"00", X"00", X"fa", X"f8", X"02",
                                                        X"07", X"01", X"03", X"01", X"fc", X"02", X"ff", X"fe", X"fc", X"f9", X"ff", X"fc", X"02", X"ff", X"ff", X"07", X"06", X"fd", X"07", X"05", X"ff", X"06", X"01", X"01", X"fa", X"ff",
                                                        X"00", X"04", X"f9", X"01", X"ff", X"03", X"ff", X"ff", X"01", X"04", X"fd", X"01", X"fd", X"fe", X"fd", X"03", X"05", X"00", X"fa", X"05", X"fc", X"03", X"fe", X"00", X"00", X"fc",
                                                        X"ff", X"ff", X"03", X"fa", X"00", X"fd", X"0a", X"0a", X"fc", X"03", X"ff", X"01", X"f9", X"fd", X"fb", X"05", X"fd", X"fc", X"00", X"fe", X"03", X"fb", X"fe", X"fa", X"00", X"00",
                                                        X"fd", X"02", X"ff", X"f9", X"01", X"02", X"fa", X"00", X"fd", X"02", X"03", X"fd", X"fe", X"08", X"fd", X"ff", X"f9", X"04", X"fe", X"fd", X"ff", X"01", X"fb", X"00", X"01", X"00",
                                                        X"02", X"fd", X"0a", X"ff", X"ff", X"00", X"03", X"07", X"06", X"fc", X"02", X"07", X"fd", X"04", X"01", X"02", X"00", X"fe", X"0f", X"05", X"fb", X"fa", X"00", X"06", X"ff", X"fe",
                                                        X"02", X"fd", X"f9", X"02", X"fd", X"01", X"fe", X"fd", X"11", X"01", X"fd", X"03", X"03", X"01", X"fe", X"03", X"01", X"00", X"fd", X"01", X"fd", X"02", X"01", X"f9", X"0a", X"01",
                                                        X"fe", X"02", X"fe", X"00", X"fe", X"fc", X"ff", X"ff", X"fe", X"fe", X"fa", X"01", X"03", X"05", X"07", X"06", X"fc", X"08", X"fc", X"01", X"02", X"fa", X"ff", X"03", X"fb", X"04",
                                                        X"f9", X"fd", X"01", X"fe", X"11", X"ff", X"fd", X"04", X"fb", X"01", X"02", X"fd", X"fd", X"fc", X"fb", X"fe", X"f8", X"fd", X"fb", X"04", X"12", X"ff", X"fc", X"0a", X"fd", X"ff",
                                                        X"fc", X"fa", X"fb", X"fe", X"fd", X"03", X"f7", X"fe", X"fc", X"04", X"0f", X"06", X"fe", X"01", X"00", X"00", X"03", X"ff", X"f9", X"00", X"fd", X"05", X"01", X"03", X"00", X"fb",
                                                        X"0a", X"fa", X"ff", X"03", X"fe", X"04", X"fd", X"03", X"fc", X"00", X"f8", X"05", X"fd", X"04", X"00", X"fd", X"10", X"fe", X"00", X"fd", X"02", X"0b", X"fb", X"05", X"01", X"04",
                                                        X"fa", X"07", X"ff", X"05", X"06", X"03", X"16", X"03", X"fc", X"ff", X"08", X"0e", X"03", X"02", X"01", X"fe", X"fa", X"04", X"ff", X"ff", X"03", X"fa", X"1b", X"ff", X"ff", X"fc",
                                                        X"08", X"0e", X"fe", X"04", X"ff", X"ff", X"fc", X"00", X"02", X"00", X"fb", X"fc", X"12", X"ff", X"fb", X"f9", X"03", X"00", X"ff", X"fd", X"fd", X"fd", X"f5", X"01", X"fa", X"05",
                                                        X"01", X"04", X"15", X"00", X"01", X"05", X"fb", X"03", X"06", X"fd", X"05", X"04", X"f9", X"04", X"f6", X"01", X"ff", X"00", X"0d", X"01", X"fd", X"07", X"f7", X"01", X"03", X"fa",
                                                        X"fe", X"f7", X"f9", X"00", X"fe", X"01", X"fc", X"01", X"04", X"fc", X"fb", X"ff", X"f6", X"03", X"03", X"fc", X"fe", X"fa", X"fb", X"03", X"f4", X"fb", X"ff", X"ff", X"0b", X"fb",
                                                        X"fa", X"01", X"fc", X"ff", X"fc", X"fe", X"fc", X"fe", X"fb", X"05", X"ff", X"00", X"fb", X"fa", X"0d", X"f9", X"ff", X"f7", X"fa", X"00", X"03", X"ff", X"01", X"02", X"ff", X"01",
                                                        X"05", X"fd", X"01", X"00", X"0a", X"05", X"01", X"00", X"fd", X"fd", X"fc", X"f4", X"f6", X"fc", X"fc", X"00", X"06", X"02", X"fe", X"ff", X"0f", X"05", X"fb", X"00", X"fc", X"00",
                                                        X"05", X"fd", X"02", X"05", X"f8", X"00", X"f8", X"01", X"00", X"fa", X"0b", X"00", X"00", X"f9", X"ff", X"08", X"01", X"00", X"00", X"04", X"f8", X"01", X"fc", X"ff", X"fc", X"fb",
                                                        X"0f", X"f9", X"01", X"fe", X"fd", X"09", X"01", X"fc", X"05", X"04", X"fd", X"00", X"ff", X"ff", X"08", X"fe", X"12", X"fd", X"01", X"fd", X"04", X"0a", X"05", X"ff", X"03", X"09",
                                                        X"ff", X"02", X"02", X"00", X"fe", X"01", X"10", X"02", X"01", X"ff", X"fe", X"07", X"04", X"05", X"07", X"01", X"02", X"06", X"f9", X"fe", X"01", X"fd", X"06", X"fe", X"00", X"01",
                                                        X"02", X"08", X"08", X"ff", X"02", X"05", X"ff", X"06", X"fc", X"fe", X"fd", X"fc", X"0c", X"01", X"03", X"ff", X"fb", X"05", X"04", X"01", X"03", X"fe", X"02", X"04", X"f9", X"00",
                                                        X"fd", X"f6", X"04", X"03", X"fc", X"ff", X"02", X"04", X"07", X"01", X"ff", X"fb", X"ff", X"06", X"03", X"00", X"fe", X"00", X"05", X"04", X"ff", X"01", X"fc", X"06", X"04", X"ff",
                                                        X"ff", X"fb", X"01", X"02", X"f8", X"ff", X"00", X"fd", X"0a", X"ff", X"fc", X"02", X"f7", X"07", X"00", X"fe", X"05", X"01", X"fb", X"01", X"fb", X"ff", X"ff", X"02", X"05", X"f9",
                                                        X"00", X"03", X"fb", X"02", X"ff", X"ff", X"fd", X"02", X"fa", X"ff", X"fd", X"ff", X"fc", X"f8", X"13", X"fc", X"ff", X"f7", X"06", X"09", X"03", X"ff", X"06", X"fe", X"ff", X"fe",
                                                        X"01", X"02", X"fa", X"ff", X"08", X"fe", X"00", X"01", X"00", X"07", X"06", X"ff", X"06", X"00", X"04", X"00", X"06", X"01", X"f9", X"f8", X"04", X"04", X"ff", X"fb", X"fe", X"01",
                                                        X"fe", X"03", X"06", X"04", X"00", X"02", X"06", X"ff", X"02", X"fe", X"09", X"01", X"fe", X"01", X"ff", X"01", X"fe", X"fd", X"00", X"00", X"ff", X"01", X"02", X"ff", X"03", X"f8",
                                                        X"03", X"02", X"fc", X"00", X"ff", X"05", X"06", X"fc", X"06", X"fc", X"ff", X"ff", X"00", X"fe", X"01", X"02", X"03", X"02", X"fc", X"05", X"fb", X"02", X"06", X"fa", X"fc", X"03",
                                                        X"f9", X"fe", X"10", X"04", X"01", X"fc", X"13", X"fa", X"f8", X"01", X"fe", X"03", X"08", X"fb", X"fb", X"03", X"fb", X"fd", X"05", X"fc", X"00", X"fd", X"11", X"fb", X"fb", X"01",
                                                        X"03", X"05", X"02", X"fd", X"05", X"09", X"ff", X"01", X"03", X"fc", X"00", X"02", X"0a", X"fd", X"ff", X"03", X"02", X"0b", X"fe", X"ff", X"06", X"07", X"ff", X"04", X"04", X"fd",
                                                        X"01", X"08", X"0f", X"07", X"01", X"03", X"03", X"0b", X"fb", X"00", X"fe", X"08", X"fd", X"03", X"00", X"fe", X"05", X"ff", X"02", X"ff", X"fd", X"00", X"fa", X"0b", X"f8", X"01",
                                                        X"fe", X"0d", X"fb", X"00", X"fd", X"fd", X"fe", X"fc", X"fe", X"fd", X"ff", X"fe", X"03", X"0c", X"fd", X"fd", X"fa", X"04", X"fc", X"02", X"f9", X"fe", X"fd", X"f7", X"04", X"fe",
                                                        X"fd", X"fd", X"01", X"0c", X"00", X"fc", X"fe", X"03", X"fb", X"03", X"f8", X"fd", X"02", X"fd", X"07", X"03", X"00", X"01", X"fb", X"05", X"ff", X"00", X"f9", X"fd", X"fe", X"03",
                                                        X"f2", X"f9", X"fb", X"01", X"09", X"fe", X"fe", X"04", X"fb", X"02", X"fd", X"fd", X"f9", X"fc", X"fb", X"02", X"ef", X"f4", X"fa", X"ff", X"07", X"fe", X"01", X"06", X"fd", X"0b",
                                                        X"ff", X"f9", X"f8", X"fd", X"04", X"05", X"ee", X"fc", X"fc", X"07", X"0b", X"f9", X"fa", X"03", X"f9", X"06", X"f8", X"02", X"fc", X"05", X"fe", X"08", X"f0", X"fc", X"01", X"fa",
                                                        X"1b", X"fb", X"fd", X"00", X"fd", X"04", X"f3", X"01", X"fe", X"01", X"01", X"04", X"f4", X"fc", X"fc", X"fd", X"17", X"fe", X"ff", X"ff", X"fb", X"09", X"fb", X"fa", X"04", X"02",
                                                        X"fe", X"02", X"ea", X"fe", X"ff", X"01", X"11", X"f9", X"fe", X"01", X"00", X"0f", X"fd", X"00", X"fb", X"0e", X"fc", X"07", X"e1", X"03", X"fc", X"fb", X"1c", X"ff", X"f9", X"ff",
                                                        X"04", X"0b", X"fe", X"00", X"ff", X"f7", X"fc", X"05", X"ee", X"fc", X"04", X"fe", X"18", X"f6", X"fe", X"fd", X"06", X"0d", X"fe", X"03", X"01", X"ff", X"fd", X"07", X"e9", X"ff",
                                                        X"02", X"ff", X"1d", X"fb", X"fd", X"fc", X"00", X"0c", X"f2", X"ff", X"01", X"06", X"fe", X"04", X"e5", X"04", X"03", X"03", X"1f", X"f8", X"04", X"05", X"0b", X"0c", X"fa", X"ff",
                                                        X"01", X"09", X"fe", X"06", X"e3", X"ff", X"04", X"03", X"14", X"f8", X"02", X"07", X"ff", X"0e", X"f4", X"fd", X"fb", X"01", X"fd", X"03", X"e7", X"01", X"02", X"01", X"14", X"02",
                                                        X"fe", X"01", X"07", X"10", X"f7", X"fd", X"00", X"04", X"fc", X"07", X"e9", X"fd", X"09", X"fb", X"1a", X"ff", X"05", X"fb", X"07", X"13", X"f4", X"02", X"00", X"04", X"02", X"06",
                                                        X"e5", X"00", X"06", X"00", X"17", X"fc", X"02", X"fe", X"02", X"13", X"f0", X"fd", X"fe", X"03", X"f9", X"08", X"e0", X"fe", X"06", X"fe", X"1e", X"ff", X"05", X"fe", X"09", X"13",
                                                        X"f1", X"fb", X"fe", X"00", X"fd", X"06", X"dc", X"ff", X"04", X"02", X"22", X"f9", X"01", X"07", X"0d", X"10", X"fb", X"fa", X"fb", X"00", X"fb", X"09", X"d1", X"fc", X"04", X"ff",
                                                        X"1a", X"02", X"ff", X"00", X"04", X"0b", X"ef", X"00", X"fe", X"fe", X"01", X"08", X"db", X"fb", X"01", X"f9", X"17", X"fe", X"fd", X"fd", X"02", X"0f", X"ed", X"01", X"f9", X"00",
                                                        X"fc", X"00", X"ec", X"fb", X"06", X"fa", X"15", X"07", X"01", X"fe", X"0b", X"0e", X"ee", X"ff", X"ff", X"02", X"fc", X"05", X"eb", X"ff", X"09", X"ef", X"26", X"fd", X"05", X"fa",
                                                        X"07", X"10", X"f5", X"fe", X"fb", X"fd", X"fc", X"0a", X"e6", X"05", X"08", X"fa", X"16", X"fe", X"fd", X"fb", X"04", X"0f", X"fd", X"04", X"fe", X"ff", X"f9", X"06", X"ec", X"00",
                                                        X"01", X"fa", X"23", X"f9", X"00", X"fe", X"06", X"10", X"f8", X"00", X"01", X"01", X"00", X"03", X"f2", X"fd", X"03", X"01", X"17", X"f7", X"fd", X"fd", X"02", X"0c", X"f7", X"01",
                                                        X"fe", X"f9", X"fd", X"07", X"e9", X"f6", X"04", X"f9", X"1a", X"fa", X"00", X"fb", X"08", X"0d", X"f8", X"fa", X"fb", X"03", X"fc", X"05", X"f5", X"f9", X"ff", X"f7", X"11", X"f6",
                                                        X"fd", X"fb", X"01", X"0a", X"fc", X"fd", X"fa", X"fe", X"00", X"02", X"f0", X"f7", X"01", X"fe", X"04", X"f9", X"fe", X"00", X"00", X"05", X"f6", X"f9", X"fc", X"ff", X"01", X"01",
                                                        X"f4", X"f5", X"01", X"02", X"11", X"fc", X"fe", X"05", X"01", X"08", X"fb", X"f9", X"f9", X"ff", X"02", X"00", X"f1", X"f5", X"fd", X"02", X"fd", X"f8", X"ff", X"fd", X"09", X"0c",
                                                        X"fd", X"f9", X"f4", X"fe", X"fe", X"05", X"f6", X"f5", X"fa", X"ff", X"04", X"ff", X"fc", X"00", X"00", X"06", X"f8", X"00", X"f0", X"fc", X"00", X"05", X"fc", X"fa", X"fe", X"fd",
                                                        X"10", X"04", X"01", X"fd", X"fe", X"08", X"fb", X"ff", X"f9", X"03", X"03", X"01", X"fc", X"f8", X"0a", X"01", X"11", X"ff", X"07", X"04", X"02", X"04", X"fe", X"fc", X"fd", X"01",
                                                        X"06", X"ff", X"fb", X"fd", X"05", X"fc", X"0d", X"04", X"ff", X"fc", X"02", X"03", X"fd", X"fd", X"fd", X"fc", X"00", X"04", X"00", X"f9", X"ff", X"f9", X"07", X"fa", X"02", X"fb",
                                                        X"fe", X"05", X"05", X"f9", X"fe", X"fc", X"00", X"ff", X"06", X"f6", X"fa", X"fc", X"05", X"04", X"01", X"f8", X"04", X"03", X"02", X"fe", X"02", X"03", X"04", X"02", X"09", X"fd",
                                                        X"fa", X"fa", X"04", X"02", X"fe", X"f6", X"fe", X"01", X"02", X"03", X"00", X"02", X"01", X"ff", X"0a", X"fe", X"05", X"fa", X"11", X"02", X"03", X"ff", X"01", X"05", X"fe", X"ff",
                                                        X"fb", X"07", X"01", X"04", X"01", X"fc", X"02", X"f9", X"0a", X"05", X"03", X"ff", X"fd", X"01", X"00", X"ff", X"f9", X"02", X"fc", X"05");
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

