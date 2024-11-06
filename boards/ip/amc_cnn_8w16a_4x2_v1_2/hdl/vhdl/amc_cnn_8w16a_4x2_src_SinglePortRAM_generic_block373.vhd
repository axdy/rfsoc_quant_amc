-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block373.vhd
-- Created: 2024-11-05 16:19:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block373
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage23/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block373 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block373;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block373 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"07", X"02", X"02", X"fe", X"0e", X"03", X"02", X"04", X"15", X"06", X"03", X"02", X"06", X"f5",
                                                        X"07", X"04", X"10", X"03", X"f2", X"f7", X"dc", X"0e", X"fd", X"fd", X"f7", X"f4", X"13", X"01", X"0b", X"01", X"05", X"fe", X"fe", X"00", X"ec", X"f8", X"c4", X"14", X"01", X"fd",
                                                        X"d1", X"f8", X"0b", X"06", X"11", X"0e", X"0a", X"fb", X"f7", X"00", X"f4", X"fc", X"ba", X"0d", X"01", X"01", X"d3", X"fc", X"09", X"01", X"12", X"0d", X"06", X"fc", X"fe", X"fe",
                                                        X"f5", X"ff", X"ca", X"13", X"05", X"00", X"e5", X"fc", X"06", X"00", X"0f", X"09", X"02", X"ff", X"00", X"ff", X"f7", X"05", X"fb", X"08", X"fb", X"04", X"fe", X"f8", X"07", X"fc",
                                                        X"08", X"09", X"04", X"fa", X"10", X"fd", X"fa", X"f4", X"0a", X"09", X"fd", X"f1", X"05", X"fd", X"02", X"01", X"06", X"07", X"02", X"fa", X"11", X"fe", X"05", X"f8", X"0e", X"03",
                                                        X"fe", X"ff", X"0f", X"fd", X"fa", X"fd", X"02", X"04", X"01", X"ff", X"08", X"02", X"05", X"01", X"03", X"04", X"ff", X"fc", X"0c", X"01", X"f2", X"fc", X"fe", X"02", X"fa", X"ff",
                                                        X"f8", X"03", X"09", X"f8", X"fc", X"01", X"01", X"00", X"04", X"06", X"f3", X"01", X"ff", X"04", X"fc", X"07", X"da", X"fd", X"04", X"f7", X"f5", X"08", X"01", X"fb", X"f9", X"09",
                                                        X"ee", X"02", X"01", X"fb", X"f9", X"08", X"c6", X"ff", X"03", X"f0", X"00", X"03", X"01", X"fb", X"fb", X"0b", X"f0", X"fe", X"02", X"00", X"fb", X"08", X"d7", X"fe", X"03", X"f6",
                                                        X"ed", X"02", X"00", X"fd", X"f9", X"0c", X"f2", X"fe", X"00", X"f0", X"ff", X"05", X"f9", X"ff", X"03", X"ff", X"01", X"ff", X"03", X"01", X"07", X"0a", X"f7", X"fd", X"f5", X"f6",
                                                        X"01", X"0a", X"05", X"fc", X"04", X"00", X"11", X"fd", X"00", X"02", X"08", X"00", X"f8", X"fe", X"f6", X"fb", X"04", X"05", X"0c", X"ff", X"fb", X"f8", X"18", X"02", X"fb", X"f9",
                                                        X"04", X"fe", X"02", X"fe", X"02", X"f6", X"03", X"01", X"09", X"01", X"f7", X"f6", X"03", X"06", X"01", X"fd", X"ff", X"f7", X"05", X"fd", X"00", X"fd", X"03", X"fe", X"05", X"03",
                                                        X"f6", X"fc", X"df", X"0d", X"00", X"01", X"ed", X"f6", X"07", X"01", X"0b", X"fd", X"fe", X"fb", X"fa", X"ff", X"f3", X"ff", X"d5", X"06", X"fb", X"01", X"e2", X"f9", X"05", X"00",
                                                        X"0e", X"05", X"fe", X"fa", X"f0", X"01", X"f6", X"03", X"b8", X"10", X"fb", X"06", X"d7", X"fb", X"00", X"02", X"0e", X"08", X"fd", X"00", X"01", X"03", X"f7", X"02", X"c8", X"15",
                                                        X"fa", X"fe", X"e7", X"fd", X"07", X"02", X"10", X"05", X"ff", X"fc", X"0a", X"05", X"f8", X"03", X"e5", X"05", X"fe", X"05", X"f9", X"fa", X"07", X"03", X"0d", X"07", X"06", X"ff",
                                                        X"11", X"08", X"ff", X"06", X"01", X"0b", X"ff", X"07", X"0c", X"f9", X"05", X"01", X"0b", X"01", X"03", X"fb", X"10", X"04", X"05", X"07", X"13", X"05", X"03", X"06", X"0a", X"fe",
                                                        X"01", X"fe", X"03", X"fd", X"00", X"fe", X"08", X"06", X"07", X"fc", X"05", X"f9", X"ff", X"fc", X"0b", X"09", X"fc", X"02", X"fa", X"fa", X"fd", X"03", X"f4", X"ff", X"04", X"f6",
                                                        X"04", X"ff", X"02", X"fa", X"06", X"0a", X"f0", X"01", X"f8", X"f8", X"f7", X"04", X"cd", X"00", X"08", X"f8", X"f9", X"f8", X"fe", X"f7", X"fd", X"0d", X"e6", X"04", X"02", X"fe",
                                                        X"f4", X"06", X"ba", X"fd", X"06", X"f9", X"ed", X"fc", X"01", X"f9", X"fc", X"0e", X"e2", X"02", X"fc", X"f6", X"f8", X"04", X"e1", X"04", X"08", X"f6", X"fa", X"ff", X"01", X"fb",
                                                        X"09", X"0a", X"ed", X"00", X"ff", X"f6", X"ff", X"07", X"00", X"00", X"05", X"f3", X"fd", X"fe", X"fe", X"f9", X"04", X"07", X"f0", X"fd", X"fd", X"f4", X"f9", X"07", X"0b", X"02",
                                                        X"00", X"fa", X"09", X"fa", X"fe", X"fc", X"07", X"02", X"fb", X"03", X"ff", X"ee", X"00", X"05", X"0c", X"fd", X"01", X"fa", X"0f", X"fd", X"fe", X"fc", X"0a", X"fb", X"fb", X"fb",
                                                        X"ff", X"fa", X"01", X"fe", X"07", X"01", X"fd", X"00", X"11", X"02", X"fd", X"03", X"00", X"fa", X"02", X"ff", X"05", X"f9", X"03", X"fa", X"07", X"02", X"f0", X"f9", X"ea", X"0f",
                                                        X"fe", X"f7", X"eb", X"f3", X"07", X"fe", X"0b", X"fb", X"00", X"f6", X"fa", X"00", X"ee", X"fc", X"ca", X"0f", X"f9", X"fc", X"db", X"f5", X"04", X"00", X"0d", X"0a", X"fb", X"fa",
                                                        X"f7", X"fe", X"ec", X"f9", X"b9", X"13", X"fd", X"fd", X"d0", X"f7", X"05", X"01", X"0a", X"01", X"00", X"fa", X"fa", X"fe", X"f7", X"fd", X"b9", X"0f", X"fb", X"fe", X"e1", X"fd",
                                                        X"03", X"00", X"0b", X"0c", X"01", X"f8", X"07", X"00", X"01", X"fe", X"dc", X"08", X"fa", X"f9", X"02", X"fd", X"04", X"02", X"0d", X"02", X"00", X"f9", X"0e", X"05", X"fe", X"fa",
                                                        X"fd", X"00", X"02", X"f4", X"0e", X"fd", X"04", X"00", X"0d", X"fc", X"ff", X"fc", X"12", X"04", X"00", X"00", X"0f", X"fd", X"03", X"ff", X"0c", X"fb", X"07", X"fe", X"04", X"04",
                                                        X"01", X"02", X"02", X"02", X"01", X"fd", X"09", X"f8", X"01", X"f9", X"01", X"ff", X"ff", X"00", X"ff", X"fa", X"fe", X"06", X"f0", X"fe", X"07", X"f9", X"fd", X"02", X"fe", X"fa",
                                                        X"00", X"07", X"ea", X"02", X"fd", X"fa", X"f7", X"04", X"d8", X"fb", X"0a", X"f9", X"f0", X"04", X"01", X"fa", X"fe", X"06", X"dd", X"01", X"fc", X"ff", X"fb", X"04", X"c0", X"00",
                                                        X"04", X"f3", X"ee", X"06", X"04", X"f7", X"02", X"0e", X"e1", X"01", X"fe", X"f5", X"fa", X"08", X"df", X"fc", X"05", X"f9", X"f8", X"00", X"03", X"fc", X"02", X"0a", X"f1", X"04",
                                                        X"fc", X"fa", X"fe", X"09", X"fb", X"02", X"01", X"fe", X"f3", X"fe", X"06", X"ff", X"00", X"04", X"f4", X"03", X"fa", X"ee", X"00", X"04", X"0a", X"fc", X"02", X"04", X"0d", X"fe",
                                                        X"00", X"03", X"ff", X"fe", X"fd", X"f8", X"fc", X"ef", X"ff", X"fe", X"0e", X"fe", X"fb", X"fe", X"13", X"04", X"fb", X"fd", X"08", X"f5", X"fd", X"fa", X"f7", X"f5", X"fe", X"fb",
                                                        X"0c", X"05", X"fd", X"f8", X"07", X"07", X"fe", X"fd", X"ff", X"f8", X"05", X"fe", X"00", X"f5", X"fc", X"fc", X"04", X"01", X"fa", X"f6", X"ec", X"03", X"fc", X"fd", X"f6", X"f9",
                                                        X"06", X"01", X"0b", X"00", X"fc", X"fa", X"00", X"ff", X"f0", X"fb", X"bd", X"0a", X"ff", X"fe", X"dc", X"fc", X"0a", X"00", X"07", X"01", X"01", X"fc", X"f5", X"ff", X"f6", X"03",
                                                        X"b8", X"16", X"ff", X"06", X"d1", X"fb", X"0a", X"02", X"0d", X"08", X"fe", X"fc", X"f7", X"fe", X"f5", X"fb", X"c9", X"13", X"fe", X"ff", X"dc", X"f8", X"09", X"01", X"06", X"0f",
                                                        X"ff", X"fd", X"03", X"00", X"f3", X"f5", X"ef", X"08", X"fe", X"f7", X"fb", X"f9", X"06", X"03", X"0a", X"05", X"02", X"03", X"0b", X"03", X"ff", X"fa", X"09", X"08", X"00", X"fb",
                                                        X"09", X"fb", X"06", X"03", X"07", X"01", X"00", X"00", X"07", X"02", X"00", X"fd", X"0c", X"07", X"fe", X"f7", X"01", X"fc", X"fc", X"04", X"fc", X"01", X"ff", X"01", X"05", X"02",
                                                        X"ff", X"f9", X"0e", X"ff", X"00", X"fa", X"08", X"01", X"f4", X"01", X"01", X"ff", X"fc", X"fe", X"f9", X"fe", X"05", X"f5", X"f4", X"fe", X"03", X"f4", X"03", X"08", X"eb", X"fc",
                                                        X"f7", X"fb", X"f8", X"00", X"d8", X"ff", X"02", X"f8", X"fa", X"fd", X"01", X"f9", X"fe", X"0a", X"e9", X"fb", X"f8", X"f6", X"f6", X"06", X"b8", X"fe", X"01", X"f9", X"e9", X"0b",
                                                        X"01", X"fe", X"f6", X"0a", X"e6", X"02", X"f9", X"f8", X"f3", X"09", X"d2", X"ff", X"06", X"00", X"f4", X"04", X"05", X"00", X"f8", X"08", X"ed", X"ff", X"f8", X"f9", X"f9", X"0b",
                                                        X"f6", X"01", X"08", X"fe", X"02", X"02", X"07", X"02", X"05", X"0e", X"f4", X"04", X"f9", X"fc", X"fe", X"06", X"05", X"03", X"0b", X"03", X"15", X"01", X"05", X"05", X"0d", X"07",
                                                        X"f7", X"fe", X"fa", X"f9", X"00", X"05", X"10", X"05", X"05", X"04", X"14", X"fd", X"03", X"02", X"0d", X"fc", X"02", X"fe", X"01", X"f2", X"01", X"03", X"08", X"03", X"fd", X"ff",
                                                        X"0f", X"06", X"fe", X"fc", X"0c", X"f9", X"06", X"fd", X"05", X"f9", X"01", X"00", X"0c", X"02", X"f2", X"fb", X"e3", X"09", X"fe", X"fc", X"f4", X"ff", X"0c", X"02", X"0b", X"00",
                                                        X"ff", X"fd", X"fa", X"fe", X"ef", X"05", X"c7", X"15", X"fc", X"02", X"de", X"fa", X"0b", X"fe", X"0e", X"08", X"00", X"f8", X"f5", X"01", X"f1", X"fe", X"b9", X"0d", X"fc", X"01",
                                                        X"d5", X"f8", X"07", X"fd", X"10", X"08", X"fd", X"fc", X"ff", X"fc", X"f1", X"fa", X"c4", X"0f", X"00", X"f7", X"e5", X"f6", X"07", X"01", X"0b", X"04", X"02", X"ff", X"0b", X"fd",
                                                        X"fb", X"04", X"ef", X"0c", X"ff", X"04", X"01", X"f7", X"04", X"ff", X"05", X"05", X"04", X"ff", X"0c", X"03", X"00", X"ff", X"07", X"06", X"fe", X"fe", X"07", X"f6", X"04", X"fe",
                                                        X"03", X"04", X"00", X"fe", X"0d", X"01", X"05", X"ff", X"0c", X"03", X"ff", X"04", X"0b", X"fb", X"ff", X"01", X"fd", X"03", X"fe", X"03", X"09", X"05", X"0b", X"fc", X"0b", X"fc",
                                                        X"00", X"f6", X"0d", X"03", X"f5", X"00", X"fe", X"fc", X"fb", X"05", X"f3", X"fe", X"0f", X"fc", X"fe", X"03", X"fe", X"fb", X"09", X"0a", X"ed", X"00", X"f9", X"01", X"f7", X"02",
                                                        X"dc", X"fc", X"0c", X"f8", X"f5", X"02", X"03", X"f9", X"fe", X"11", X"e5", X"02", X"fa", X"fd", X"f7", X"08", X"c4", X"ff", X"07", X"f8", X"e5", X"01", X"03", X"fc", X"fb", X"0d",
                                                        X"e8", X"ff", X"01", X"f9", X"fc", X"06", X"e3", X"fe", X"06", X"fa", X"e7", X"fd", X"02", X"f9", X"ff", X"0c", X"ec", X"00", X"fd", X"f7", X"fe", X"06", X"f4", X"ff", X"04", X"03",
                                                        X"fe", X"f8", X"fe", X"02", X"07", X"07", X"f4", X"fc", X"fc", X"fb", X"ff", X"07", X"0b", X"01", X"07", X"04", X"0d", X"fa", X"fd", X"03", X"0c", X"04", X"fc", X"fc", X"fa", X"fb",
                                                        X"00", X"05", X"13", X"01", X"fd", X"f9", X"10", X"fc", X"ff", X"fc", X"11", X"00", X"00", X"fe", X"00", X"f0", X"ff", X"00", X"14", X"02", X"fa", X"fb", X"04", X"05", X"01", X"fc",
                                                        X"03", X"fa", X"0a", X"ff", X"08", X"f8", X"04", X"fe", X"07", X"01", X"f7", X"fe", X"eb", X"0d", X"00", X"fe", X"fe", X"f8", X"0a", X"ff", X"04", X"02", X"03", X"fd", X"f6", X"01",
                                                        X"f3", X"01", X"d2", X"0f", X"fe", X"fe", X"e5", X"00", X"05", X"01", X"0d", X"0a", X"fc", X"fc", X"f7", X"fd", X"f7", X"fa", X"be", X"0e", X"fd", X"f8", X"d9", X"fe", X"fe", X"00",
                                                        X"0e", X"09", X"00", X"fd", X"fd", X"fc", X"f2", X"fc", X"c3", X"0b", X"00", X"f8", X"dd", X"fa", X"0f", X"fc", X"0d", X"03", X"03", X"fd", X"05", X"04", X"f9", X"03", X"ef", X"0b",
                                                        X"fe", X"ff", X"f8", X"f3", X"0b", X"ff", X"0c", X"03", X"02", X"fc", X"0a", X"00", X"fe", X"fe", X"08", X"00", X"ff", X"fd", X"02", X"f6", X"01", X"05", X"09", X"05", X"01", X"ff",
                                                        X"09", X"01", X"01", X"00", X"0f", X"fb", X"00", X"fc", X"09", X"ff", X"fb", X"fb", X"00", X"fa", X"fe", X"ff", X"0b", X"01", X"07", X"ff", X"0c", X"fd", X"04", X"fb", X"08", X"03",
                                                        X"f7", X"00", X"01", X"02", X"00", X"05", X"f7", X"01", X"07", X"fd", X"f9", X"fa", X"fa", X"fa", X"02", X"00", X"ef", X"04", X"00", X"f7", X"fb", X"07", X"db", X"01", X"02", X"fe",
                                                        X"f4", X"fc", X"05", X"fd", X"ff", X"0c", X"ee", X"05", X"00", X"04", X"fc", X"08", X"cd", X"fc", X"0b", X"fe", X"ee", X"03", X"05", X"fd", X"f9", X"0e", X"e4", X"02", X"fd", X"f9",
                                                        X"fb", X"0b", X"dd", X"03", X"09", X"f5", X"f5", X"00", X"07", X"f7", X"fb", X"0e", X"e5", X"04", X"03", X"f5", X"f7", X"06", X"01", X"04", X"09", X"fa", X"f8", X"fe", X"01", X"fd",
                                                        X"02", X"06", X"fb", X"04", X"ff", X"fe", X"fb", X"04", X"12", X"04", X"03", X"fc", X"07", X"ff", X"00", X"fb", X"02", X"01", X"fa", X"fc", X"fb", X"f0", X"fb", X"02", X"0f", X"06",
                                                        X"ff", X"f9", X"1d", X"fe", X"01", X"f9", X"08", X"fb", X"04", X"fd", X"05", X"f3", X"03", X"00", X"0a", X"02", X"fb", X"00", X"0e", X"03", X"ff", X"fe", X"06", X"f9", X"0b", X"fc",
                                                        X"03", X"f7", X"05", X"fd", X"03", X"04", X"f2", X"f2", X"f5", X"12", X"00", X"f5", X"f9", X"fd", X"08", X"ff", X"0e", X"09", X"03", X"fc", X"ff", X"fe", X"ed", X"00", X"c8", X"10",
                                                        X"ff", X"fc", X"df", X"f7", X"07", X"02", X"0f", X"10", X"02", X"fe", X"f7", X"fa", X"f7", X"01", X"be", X"0d", X"ff", X"00", X"d6", X"fc", X"03", X"03", X"12", X"0c", X"05", X"fe",
                                                        X"fc", X"fe", X"f4", X"02", X"c7", X"09", X"01", X"fc", X"de", X"f5", X"07", X"03", X"15", X"01", X"06", X"fc", X"01", X"06", X"f8", X"02", X"ef", X"0d", X"fd", X"02", X"fc", X"f9",
                                                        X"03", X"02", X"0e", X"04", X"02", X"fb", X"0e", X"ff", X"fa", X"f9", X"15", X"08", X"00", X"f7", X"08", X"f7", X"07", X"02", X"09", X"02", X"00", X"fc", X"0c", X"04", X"ff", X"fa",
                                                        X"0e", X"03", X"fd", X"f7", X"0a", X"fc", X"01", X"01", X"03", X"00", X"ff", X"fc", X"04", X"02", X"05", X"f7", X"0d", X"fe", X"fe", X"f7", X"09", X"01", X"f7", X"fc", X"ff", X"fa",
                                                        X"ff", X"00", X"ef", X"fe", X"08", X"fb", X"f5", X"fe", X"fe", X"ff", X"01", X"08", X"e6", X"fe", X"fe", X"ff", X"f7", X"05", X"d6", X"fe", X"06", X"04", X"ed", X"fc", X"03", X"00",
                                                        X"fd", X"0a", X"e2", X"fd", X"03", X"fc", X"f8", X"07", X"c0", X"fa", X"05", X"fe", X"e8", X"fd", X"03", X"00", X"fd", X"0b", X"e0", X"fc", X"ff", X"f3", X"f7", X"03", X"d5", X"fd",
                                                        X"05", X"f9", X"f1", X"f8", X"02", X"fb", X"02", X"09", X"ee", X"fe", X"f8", X"f7", X"fc", X"06", X"fc", X"00", X"05", X"fe", X"fa", X"01", X"00", X"fe", X"04", X"0c", X"f7", X"00",
                                                        X"fc", X"f5", X"02", X"04", X"0d", X"00", X"00", X"f9", X"0b", X"fa", X"04", X"f6", X"0c", X"05", X"f8", X"00", X"fa", X"fa", X"04", X"04", X"12", X"00", X"00", X"01", X"0b", X"fb",
                                                        X"04", X"01", X"0d", X"fb", X"03", X"fd", X"03", X"f6", X"03", X"03", X"0a", X"ff", X"fc", X"ff", X"05", X"04", X"03", X"fa", X"05", X"fc", X"09", X"ff", X"0a", X"00", X"02", X"ff",
                                                        X"06", X"00", X"f1", X"fd", X"dd", X"08", X"02", X"fc", X"f4", X"f9", X"0f", X"00", X"10", X"06", X"07", X"ff", X"fd", X"00", X"ef", X"fc", X"b9", X"0b", X"ff", X"fa", X"e3", X"fe",
                                                        X"03", X"02", X"0c", X"07", X"03", X"fc", X"f6", X"02", X"f6", X"01", X"b8", X"09", X"fd", X"fe", X"db", X"fd", X"04", X"04", X"13", X"08", X"fd", X"fe", X"fb", X"fd", X"f5", X"fc",
                                                        X"c2", X"08", X"fd", X"fe", X"e5", X"f8", X"07", X"02", X"11", X"03", X"fd", X"fd", X"0a", X"ff", X"fa", X"fc", X"e4", X"0e", X"fc", X"03", X"02", X"f6", X"02", X"fa", X"08", X"01",
                                                        X"fd", X"00", X"13", X"01", X"02", X"fc", X"09", X"ff", X"fd", X"fe", X"04", X"f7", X"07", X"01", X"03", X"05", X"01", X"ff", X"0b", X"fb", X"00", X"03", X"10", X"fe", X"fb", X"01",
                                                        X"07", X"f9", X"fb", X"fb", X"ff", X"fd", X"ff", X"fe", X"03", X"fe", X"03", X"f8", X"0f", X"fa", X"ff", X"f9", X"0a", X"06", X"f3", X"fc", X"00", X"00", X"fc", X"01", X"f0", X"ff",
                                                        X"00", X"00", X"04", X"fd", X"03", X"f6", X"00", X"04", X"ef", X"00", X"04", X"fc", X"fe", X"ff", X"ce", X"ff", X"08", X"f9", X"fd", X"fd", X"01", X"fc", X"05", X"0e", X"e1", X"fd",
                                                        X"ff", X"ff", X"f7", X"04", X"b8", X"fa", X"0d", X"f3", X"f4", X"ff", X"ff", X"f8", X"0d", X"18", X"d7", X"fb", X"f9", X"f8", X"f6", X"0c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0c";
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

