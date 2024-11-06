-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block383.vhd
-- Created: 2024-11-05 16:19:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block383
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage32/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block383 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block383;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block383 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"e9", X"f9", X"03", X"e6", X"f5", X"09", X"fe", X"f4", X"f1", X"11", X"fb", X"03", X"02", X"13",
                                                        X"f8", X"07", X"f1", X"fa", X"fc", X"f2", X"ef", X"03", X"02", X"f6", X"e9", X"0d", X"04", X"03", X"06", X"12", X"f8", X"03", X"f3", X"fb", X"fb", X"fb", X"f8", X"09", X"01", X"fb",
                                                        X"eb", X"09", X"09", X"03", X"02", X"0e", X"ff", X"00", X"f1", X"fc", X"ff", X"f2", X"f5", X"04", X"01", X"fa", X"f3", X"0b", X"07", X"03", X"02", X"0d", X"fb", X"03", X"f8", X"fc",
                                                        X"ff", X"f0", X"fb", X"07", X"ff", X"f7", X"f5", X"09", X"05", X"03", X"06", X"14", X"fe", X"05", X"f9", X"fa", X"fe", X"f4", X"00", X"06", X"01", X"f6", X"f2", X"09", X"03", X"03",
                                                        X"02", X"12", X"01", X"07", X"f7", X"fe", X"fe", X"f5", X"fb", X"06", X"03", X"f8", X"f1", X"0a", X"07", X"06", X"0a", X"15", X"03", X"04", X"f4", X"fc", X"06", X"f5", X"fd", X"07",
                                                        X"05", X"fc", X"f2", X"10", X"0b", X"05", X"06", X"0f", X"02", X"05", X"f7", X"02", X"08", X"fc", X"f7", X"05", X"04", X"fb", X"f1", X"10", X"0a", X"05", X"07", X"12", X"00", X"07",
                                                        X"f5", X"fc", X"fe", X"f6", X"fc", X"ff", X"01", X"f9", X"f4", X"0c", X"05", X"02", X"ff", X"10", X"fc", X"03", X"f6", X"fc", X"fd", X"f6", X"f5", X"03", X"04", X"fc", X"eb", X"09",
                                                        X"08", X"03", X"05", X"0c", X"fd", X"09", X"f3", X"fc", X"fa", X"f4", X"f6", X"07", X"ff", X"f8", X"ef", X"03", X"05", X"01", X"09", X"0d", X"fb", X"04", X"fa", X"00", X"fe", X"f6",
                                                        X"fa", X"06", X"00", X"f5", X"f2", X"0a", X"0a", X"06", X"06", X"12", X"fd", X"08", X"f7", X"fd", X"fc", X"f2", X"f9", X"0b", X"ff", X"fc", X"f0", X"09", X"08", X"07", X"0b", X"13",
                                                        X"fa", X"05", X"f9", X"02", X"fc", X"f4", X"fd", X"03", X"00", X"fa", X"f4", X"0d", X"07", X"06", X"07", X"0d", X"ff", X"05", X"f0", X"00", X"03", X"fa", X"f9", X"09", X"03", X"fd",
                                                        X"ee", X"0f", X"0f", X"02", X"06", X"0b", X"ff", X"07", X"f7", X"fd", X"ff", X"f9", X"f4", X"00", X"03", X"fa", X"f4", X"0b", X"08", X"03", X"04", X"08", X"ff", X"04", X"f3", X"fc",
                                                        X"ff", X"fd", X"fa", X"05", X"fe", X"fd", X"f5", X"0b", X"06", X"02", X"03", X"0f", X"fc", X"05", X"f8", X"fe", X"04", X"f6", X"fb", X"00", X"02", X"f5", X"f2", X"08", X"01", X"03",
                                                        X"05", X"0e", X"fc", X"06", X"f7", X"fe", X"fe", X"fb", X"fc", X"03", X"02", X"fb", X"ef", X"0b", X"08", X"03", X"08", X"0b", X"fd", X"0b", X"f6", X"fd", X"04", X"f5", X"fe", X"03",
                                                        X"00", X"fb", X"f1", X"0f", X"02", X"03", X"02", X"0f", X"fe", X"07", X"fa", X"00", X"03", X"ee", X"f7", X"07", X"03", X"fa", X"ee", X"0b", X"07", X"0b", X"06", X"11", X"fc", X"08",
                                                        X"f5", X"f9", X"02", X"ee", X"f3", X"06", X"05", X"f4", X"f4", X"0c", X"07", X"05", X"08", X"12", X"00", X"09", X"fe", X"ff", X"00", X"f4", X"fd", X"07", X"05", X"f2", X"f0", X"0a",
                                                        X"0b", X"06", X"08", X"0f", X"fc", X"04", X"fd", X"fd", X"fc", X"ff", X"fe", X"0b", X"05", X"fc", X"ef", X"0a", X"06", X"04", X"07", X"07", X"fb", X"00", X"f5", X"fe", X"fb", X"f4",
                                                        X"f3", X"04", X"05", X"f8", X"f0", X"0b", X"04", X"02", X"06", X"0e", X"00", X"01", X"f8", X"ff", X"fe", X"f2", X"f7", X"04", X"05", X"f8", X"ef", X"0d", X"03", X"07", X"08", X"15",
                                                        X"01", X"02", X"f5", X"fa", X"02", X"f1", X"fd", X"08", X"03", X"f0", X"f4", X"0f", X"04", X"03", X"07", X"13", X"ff", X"ff", X"f5", X"00", X"00", X"f4", X"03", X"06", X"03", X"f3",
                                                        X"f0", X"0f", X"05", X"04", X"0a", X"13", X"fd", X"03", X"f5", X"ff", X"ff", X"f2", X"f7", X"07", X"02", X"f8", X"f1", X"0b", X"04", X"08", X"08", X"0f", X"ff", X"07", X"fb", X"fd",
                                                        X"fb", X"ee", X"f9", X"08", X"00", X"f5", X"f5", X"10", X"08", X"05", X"05", X"11", X"fd", X"06", X"fd", X"fe", X"fc", X"f5", X"f5", X"04", X"02", X"f7", X"ee", X"0c", X"08", X"06",
                                                        X"03", X"07", X"ff", X"03", X"f5", X"fa", X"ff", X"f9", X"fa", X"05", X"07", X"f7", X"fa", X"0d", X"06", X"01", X"ff", X"06", X"03", X"02", X"f4", X"f9", X"fc", X"f9", X"f2", X"0b",
                                                        X"03", X"f9", X"f5", X"0b", X"00", X"01", X"04", X"0d", X"02", X"00", X"f6", X"fa", X"fe", X"f7", X"fb", X"07", X"04", X"fa", X"f7", X"0f", X"04", X"ff", X"05", X"0e", X"02", X"fd",
                                                        X"f2", X"fc", X"ff", X"f6", X"fa", X"06", X"04", X"fa", X"f0", X"08", X"04", X"03", X"05", X"10", X"ff", X"02", X"fa", X"fa", X"fd", X"ed", X"f9", X"02", X"01", X"f1", X"f6", X"10",
                                                        X"03", X"02", X"02", X"13", X"01", X"04", X"f5", X"fe", X"fe", X"f0", X"fb", X"08", X"06", X"f8", X"f7", X"0e", X"05", X"06", X"07", X"11", X"00", X"07", X"f8", X"fc", X"fd", X"ec",
                                                        X"f9", X"01", X"01", X"f1", X"f2", X"09", X"06", X"04", X"06", X"14", X"fa", X"05", X"f6", X"fb", X"fb", X"f5", X"f4", X"06", X"03", X"fd", X"f0", X"0b", X"08", X"04", X"07", X"0e",
                                                        X"fc", X"03", X"f3", X"fb", X"fa", X"f3", X"f3", X"06", X"03", X"f7", X"ef", X"0e", X"03", X"03", X"03", X"13", X"fa", X"05", X"f3", X"fb", X"00", X"f8", X"f4", X"05", X"ff", X"fc",
                                                        X"ed", X"0c", X"01", X"03", X"06", X"0f", X"fd", X"04", X"f6", X"fd", X"00", X"fc", X"ef", X"05", X"04", X"f9", X"ea", X"0d", X"05", X"01", X"01", X"0a", X"fe", X"01", X"f7", X"fe",
                                                        X"02", X"fe", X"f2", X"07", X"05", X"ff", X"ef", X"08", X"03", X"02", X"04", X"0a", X"fb", X"03", X"fa", X"ff", X"fd", X"fe", X"f7", X"05", X"02", X"fd", X"e8", X"08", X"06", X"03",
                                                        X"05", X"08", X"f8", X"04", X"fb", X"00", X"ff", X"f4", X"fc", X"05", X"ff", X"f8", X"ef", X"09", X"07", X"06", X"0c", X"0b", X"fb", X"05", X"f8", X"fe", X"f9", X"f3", X"f1", X"05",
                                                        X"04", X"fa", X"ef", X"0c", X"04", X"09", X"04", X"12", X"fc", X"04", X"f0", X"02", X"00", X"f2", X"f7", X"02", X"02", X"f8", X"ef", X"0c", X"08", X"09", X"08", X"0d", X"fa", X"06",
                                                        X"fb", X"fe", X"02", X"f2", X"f4", X"0a", X"01", X"f2", X"ee", X"08", X"03", X"04", X"04", X"0c", X"01", X"fd", X"f4", X"f6", X"f9", X"ed", X"f6", X"04", X"05", X"f1", X"f2", X"0a",
                                                        X"02", X"05", X"04", X"0e", X"01", X"ff", X"f4", X"f7", X"00", X"f4", X"ee", X"02", X"01", X"f8", X"f3", X"0a", X"fb", X"fe", X"01", X"08", X"00", X"00", X"f6", X"fb", X"fc", X"f5",
                                                        X"f1", X"01", X"01", X"f9", X"f7", X"09", X"01", X"02", X"01", X"10", X"02", X"03", X"f0", X"fa", X"ff", X"fa", X"f1", X"06", X"05", X"fe", X"f0", X"07", X"03", X"02", X"08", X"0e",
                                                        X"fe", X"08", X"f4", X"f9", X"01", X"f5", X"f6", X"02", X"09", X"ff", X"f5", X"0c", X"03", X"04", X"04", X"0d", X"00", X"05", X"fb", X"fb", X"fd", X"ec", X"fa", X"04", X"05", X"ef",
                                                        X"f6", X"0d", X"06", X"03", X"06", X"11", X"01", X"05", X"f8", X"fa", X"fe", X"f3", X"f8", X"04", X"04", X"f3", X"f4", X"09", X"00", X"06", X"02", X"13", X"fc", X"04", X"fb", X"fc",
                                                        X"fa", X"fd", X"f1", X"04", X"00", X"ff", X"ee", X"07", X"01", X"01", X"08", X"15", X"fa", X"03", X"f4", X"00", X"ff", X"f6", X"f0", X"04", X"01", X"f7", X"f3", X"0b", X"01", X"fe",
                                                        X"03", X"10", X"f9", X"01", X"f5", X"ff", X"00", X"f8", X"f8", X"06", X"01", X"f7", X"ef", X"0c", X"05", X"04", X"02", X"0f", X"f9", X"06", X"f8", X"00", X"03", X"f1", X"f1", X"01",
                                                        X"fd", X"fd", X"f5", X"0b", X"04", X"04", X"03", X"0f", X"f9", X"04", X"f8", X"fe", X"01", X"f6", X"f4", X"06", X"03", X"f6", X"f5", X"0e", X"00", X"06", X"06", X"12", X"fa", X"02",
                                                        X"fb", X"ff", X"01", X"f8", X"ed", X"0a", X"01", X"fd", X"f9", X"0b", X"05", X"01", X"07", X"0f", X"fc", X"02", X"f6", X"fe", X"fd", X"f6", X"f6", X"05", X"02", X"fc", X"ef", X"0d",
                                                        X"04", X"05", X"0a", X"0e", X"fa", X"04", X"f1", X"ff", X"fb", X"f9", X"f7", X"07", X"01", X"03", X"ef", X"0b", X"09", X"07", X"06", X"08", X"fb", X"06", X"f3", X"01", X"fa", X"f7",
                                                        X"f8", X"07", X"01", X"f6", X"ee", X"07", X"0a", X"08", X"04", X"0e", X"f9", X"02", X"f1", X"fa", X"f9", X"f1", X"e7", X"07", X"03", X"f3", X"ea", X"0a", X"00", X"01", X"0a", X"10",
                                                        X"fc", X"00", X"f5", X"fb", X"fa", X"f5", X"ea", X"01", X"03", X"f5", X"f0", X"08", X"02", X"01", X"03", X"0b", X"fd", X"01", X"f1", X"00", X"01", X"f4", X"f4", X"06", X"03", X"fa",
                                                        X"ee", X"0a", X"ff", X"02", X"04", X"11", X"fd", X"03", X"f4", X"fc", X"01", X"ec", X"fc", X"00", X"00", X"f7", X"ed", X"0d", X"05", X"03", X"02", X"0e", X"ff", X"03", X"f5", X"fc",
                                                        X"00", X"f1", X"f6", X"fd", X"00", X"fd", X"f6", X"0d", X"08", X"03", X"09", X"0f", X"fc", X"04", X"f2", X"f9", X"fa", X"f4", X"f6", X"05", X"02", X"f5", X"f4", X"0d", X"08", X"05",
                                                        X"03", X"0a", X"fd", X"03", X"f1", X"f9", X"f5", X"f6", X"f0", X"03", X"fd", X"f9", X"ef", X"11", X"00", X"01", X"08", X"0c", X"fa", X"04", X"f7", X"fa", X"fb", X"f2", X"f8", X"00",
                                                        X"03", X"f0", X"f1", X"0a", X"ff", X"02", X"09", X"12", X"fe", X"01", X"ef", X"fc", X"fb", X"f2", X"fe", X"06", X"00", X"f3", X"ef", X"0a", X"ff", X"06", X"05", X"12", X"fb", X"05",
                                                        X"f5", X"01", X"fa", X"f3", X"f6", X"0b", X"ff", X"f5", X"ea", X"08", X"09", X"02", X"07", X"0f", X"fb", X"01", X"f6", X"ff", X"02", X"f7", X"f0", X"06", X"05", X"f7", X"ed", X"0a",
                                                        X"04", X"02", X"08", X"0f", X"fd", X"04", X"f4", X"fa", X"fe", X"ef", X"f4", X"00", X"03", X"fc", X"ef", X"0b", X"03", X"00", X"09", X"15", X"00", X"03", X"f2", X"fc", X"03", X"f8",
                                                        X"f5", X"0d", X"01", X"f9", X"f4", X"0e", X"02", X"04", X"0a", X"14", X"00", X"04", X"f1", X"f8", X"ff", X"f8", X"f2", X"05", X"01", X"f8", X"ed", X"0c", X"05", X"04", X"0b", X"13",
                                                        X"fa", X"08", X"f5", X"fc", X"02", X"f8", X"f7", X"08", X"02", X"fb", X"f1", X"0c", X"04", X"03", X"09", X"13", X"f8", X"03", X"f5", X"ff", X"01", X"01", X"ef", X"07", X"fe", X"fe",
                                                        X"ed", X"07", X"09", X"06", X"06", X"0d", X"fa", X"05", X"f2", X"ff", X"fd", X"f9", X"f8", X"09", X"00", X"f6", X"f1", X"0d", X"03", X"03", X"03", X"08", X"f7", X"04", X"fc", X"00",
                                                        X"01", X"f7", X"fa", X"05", X"03", X"fa", X"f2", X"0a", X"08", X"03", X"06", X"08", X"fb", X"02", X"f9", X"fc", X"01", X"f1", X"fe", X"fe", X"03", X"fc", X"f3", X"0c", X"0b", X"06",
                                                        X"05", X"0a", X"fb", X"03", X"f6", X"fb", X"f7", X"fd", X"f8", X"03", X"02", X"01", X"f2", X"07", X"07", X"01", X"04", X"0b", X"00", X"05", X"f7", X"fc", X"ff", X"f3", X"ff", X"03",
                                                        X"01", X"fa", X"f7", X"0e", X"05", X"04", X"08", X"0c", X"fa", X"05", X"fa", X"fa", X"fd", X"f4", X"f7", X"08", X"07", X"f6", X"f1", X"0d", X"06", X"02", X"06", X"0b", X"01", X"07",
                                                        X"fe", X"fa", X"fe", X"f9", X"00", X"04", X"02", X"f8", X"f6", X"0f", X"08", X"04", X"03", X"12", X"00", X"06", X"f1", X"fa", X"04", X"ff", X"f9", X"05", X"03", X"fc", X"f2", X"0d",
                                                        X"00", X"01", X"06", X"0d", X"ff", X"01", X"ea", X"f8", X"fe", X"f5", X"f7", X"05", X"02", X"f7", X"ee", X"0e", X"02", X"01", X"07", X"0b", X"02", X"06", X"f1", X"f6", X"fe", X"f4",
                                                        X"f3", X"06", X"00", X"fb", X"f2", X"0f", X"02", X"02", X"07", X"09", X"ff", X"06", X"f2", X"fa", X"fb", X"ee", X"f7", X"04", X"03", X"f5", X"ee", X"0a", X"01", X"03", X"06", X"0a",
                                                        X"fb", X"ff", X"f9", X"fd", X"fc", X"f8", X"f0", X"0a", X"00", X"f9", X"f0", X"08", X"01", X"03", X"04", X"0f", X"fe", X"fd", X"ff", X"fe", X"02", X"f2", X"f5", X"07", X"07", X"f7",
                                                        X"f2", X"0c", X"03", X"01", X"01", X"12", X"fe", X"02", X"f7", X"fb", X"01", X"f8", X"f7", X"06", X"02", X"f2", X"ed", X"09", X"01", X"03", X"09", X"13", X"f9", X"04", X"ef", X"fb",
                                                        X"fd", X"fd", X"f8", X"07", X"fc", X"f5", X"ef", X"0a", X"fb", X"00", X"08", X"0c", X"f8", X"00", X"f4", X"01", X"04", X"01", X"f1", X"04", X"ff", X"02", X"ef", X"08", X"00", X"04",
                                                        X"01", X"0c", X"f9", X"01", X"ee", X"fc", X"fd", X"ee", X"f0", X"02", X"fb", X"f6", X"f0", X"0b", X"00", X"02", X"04", X"0d", X"f6", X"01", X"f5", X"fa", X"00", X"f4", X"f6", X"04",
                                                        X"fd", X"fc", X"f3", X"0b", X"05", X"02", X"02", X"07", X"f6", X"fe", X"f1", X"f9", X"04", X"f2", X"fb", X"06", X"fa", X"f7", X"f3", X"0f", X"01", X"03", X"05", X"0d", X"f7", X"00",
                                                        X"f6", X"f9", X"ff", X"f4", X"fc", X"fc", X"00", X"fd", X"ed", X"09", X"06", X"01", X"04", X"06", X"fe", X"00", X"f1", X"fd", X"fe", X"f5", X"f3", X"02", X"ff", X"f5", X"ed", X"09",
                                                        X"04", X"05", X"07", X"0d", X"fa", X"02", X"f8", X"ff", X"ff", X"fd", X"f1", X"02", X"01", X"fa", X"ef", X"07", X"03", X"06", X"05", X"0b", X"f9", X"04", X"fb", X"fc", X"01", X"fb",
                                                        X"f8", X"04", X"03", X"fa", X"ed", X"0b", X"04", X"02", X"06", X"10", X"f9", X"03", X"f6", X"00", X"05", X"fc", X"f2", X"ff", X"04", X"fd", X"f4", X"08", X"07", X"07", X"0a", X"14",
                                                        X"fa", X"00", X"f5", X"ff", X"00", X"f9", X"f8", X"08", X"01", X"f8", X"ee", X"0a", X"06", X"03", X"06", X"0f", X"fa", X"02", X"f9", X"fa", X"ff", X"f5", X"ff", X"01", X"02", X"f6",
                                                        X"ef", X"0a", X"06", X"ff", X"00", X"0c", X"fa", X"03", X"f8", X"f9", X"ff", X"f7", X"f5", X"03", X"02", X"fa", X"f5", X"0a", X"09", X"04", X"00", X"10", X"fb", X"04", X"f6", X"f9",
                                                        X"ff", X"ef", X"f1", X"ff", X"05", X"f5", X"f2", X"0f", X"05", X"01", X"07", X"0b", X"fc", X"05", X"ef", X"ff", X"00", X"f3", X"ec", X"09", X"07", X"f7", X"ea", X"0b", X"06", X"07",
                                                        X"0b", X"0c", X"fd", X"07", X"f9", X"fc", X"fc", X"f3", X"f4", X"06", X"03", X"fb", X"f3", X"0b", X"04", X"05", X"02", X"13", X"fa", X"03", X"f8", X"f8", X"00", X"f4", X"fc", X"07",
                                                        X"07", X"f3", X"ed", X"08", X"0a", X"00", X"01", X"0f", X"fe", X"05", X"f5", X"fe", X"fc", X"ee", X"fd", X"05", X"05", X"f0", X"f1", X"09", X"0e", X"06", X"02", X"12", X"00", X"06",
                                                        X"f8", X"fe", X"ff", X"f5", X"f5", X"0e", X"05", X"fc", X"f0", X"0a", X"0e", X"06", X"06", X"0d", X"00", X"04", X"f3", X"f8", X"fd", X"f6", X"fa", X"04", X"01", X"f5", X"ef", X"09",
                                                        X"05", X"04", X"08", X"0a", X"ff", X"01", X"f1", X"f9", X"02", X"fc", X"f9", X"ff", X"00", X"01", X"f0", X"0a", X"08", X"02", X"08", X"10", X"00", X"03", X"ec", X"fc", X"fe", X"fb",
                                                        X"f7", X"07", X"03", X"ff", X"f4", X"0d", X"02", X"02", X"05", X"0b", X"fb", X"04", X"f0", X"01", X"04", X"fc", X"fa", X"04", X"ff", X"fb", X"f5", X"0f", X"03", X"07", X"05", X"12",
                                                        X"fa", X"07", X"f6", X"fe", X"fe", X"f1", X"fc", X"06", X"03", X"f0", X"f5", X"08", X"fd", X"08", X"06", X"11", X"f9", X"0a", X"f6", X"fe", X"00", X"f3", X"f5", X"03", X"ff", X"f8",
                                                        X"ed", X"0b", X"ff", X"06", X"03", X"17", X"fd", X"01", X"f5", X"fe", X"ff", X"f6", X"f7", X"07", X"02", X"f6", X"e7", X"09", X"03", X"04", X"02", X"0e", X"f7", X"00", X"f3", X"fc",
                                                        X"ff", X"f2", X"f6", X"07", X"fd", X"fa", X"e7", X"09", X"06", X"03", X"02", X"0b", X"f7", X"04", X"f5", X"fd", X"fe", X"fc", X"f5", X"08", X"fc", X"fd", X"ef", X"0a", X"06", X"02",
                                                        X"02", X"10", X"f9", X"06", X"ec", X"fa", X"fb", X"f1", X"f7", X"04", X"01", X"f6", X"ed", X"0f", X"01", X"02", X"08", X"14", X"fa", X"07");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"07";
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
