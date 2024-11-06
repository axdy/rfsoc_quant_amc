-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block331.vhd
-- Created: 2024-11-05 16:19:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block331
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage10/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block331 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block331;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block331 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"15", X"02", X"fc", X"00", X"14", X"f9", X"02", X"00", X"0f", X"fb", X"06", X"ff", X"fc", X"ef",
                                                        X"02", X"ff", X"fd", X"00", X"fd", X"ff", X"11", X"fa", X"02", X"03", X"06", X"f7", X"02", X"ff", X"01", X"e9", X"06", X"fe", X"05", X"04", X"fe", X"03", X"11", X"fc", X"ff", X"02",
                                                        X"0e", X"fc", X"fc", X"04", X"fe", X"f3", X"fe", X"00", X"0b", X"02", X"00", X"05", X"07", X"ff", X"02", X"01", X"06", X"fa", X"fb", X"fc", X"01", X"f0", X"fe", X"fc", X"01", X"01",
                                                        X"04", X"02", X"10", X"fd", X"00", X"01", X"0b", X"fc", X"01", X"fc", X"01", X"ed", X"ff", X"fb", X"0c", X"00", X"f7", X"02", X"0d", X"fc", X"05", X"02", X"06", X"fa", X"03", X"ff",
                                                        X"05", X"f0", X"02", X"00", X"0b", X"07", X"fc", X"01", X"03", X"03", X"fe", X"04", X"0e", X"f7", X"00", X"ff", X"01", X"e8", X"ff", X"fc", X"0d", X"01", X"fd", X"09", X"07", X"02",
                                                        X"06", X"08", X"09", X"fa", X"ff", X"00", X"02", X"ee", X"02", X"ff", X"0a", X"ff", X"f9", X"04", X"01", X"fe", X"00", X"08", X"09", X"fc", X"01", X"01", X"05", X"f2", X"ff", X"02",
                                                        X"0b", X"05", X"02", X"07", X"07", X"fd", X"01", X"0a", X"0c", X"f6", X"ff", X"fe", X"fc", X"ed", X"00", X"02", X"02", X"05", X"04", X"06", X"15", X"fe", X"02", X"02", X"0a", X"f9",
                                                        X"00", X"fe", X"fc", X"f2", X"01", X"fc", X"04", X"04", X"03", X"0a", X"0b", X"03", X"04", X"05", X"09", X"fd", X"fe", X"fd", X"fb", X"f2", X"fe", X"fb", X"05", X"05", X"00", X"06",
                                                        X"0e", X"09", X"00", X"02", X"06", X"fd", X"02", X"01", X"ff", X"f1", X"ff", X"fc", X"01", X"01", X"ff", X"00", X"0b", X"fc", X"02", X"04", X"0b", X"fe", X"07", X"fd", X"fd", X"ee",
                                                        X"03", X"00", X"0a", X"05", X"00", X"05", X"0c", X"fc", X"03", X"06", X"07", X"f8", X"06", X"02", X"fc", X"f0", X"05", X"fd", X"00", X"04", X"00", X"02", X"09", X"f9", X"00", X"01",
                                                        X"0b", X"fd", X"fe", X"fe", X"fe", X"f5", X"06", X"fe", X"08", X"03", X"fd", X"05", X"0c", X"04", X"04", X"04", X"08", X"f7", X"07", X"00", X"fc", X"f0", X"06", X"00", X"07", X"02",
                                                        X"03", X"07", X"11", X"fd", X"02", X"07", X"0c", X"f5", X"01", X"fe", X"f9", X"f3", X"01", X"fe", X"09", X"05", X"fd", X"ff", X"0b", X"f7", X"01", X"06", X"0a", X"fa", X"04", X"04",
                                                        X"ff", X"f2", X"01", X"fc", X"04", X"fb", X"00", X"03", X"0e", X"01", X"05", X"ff", X"0c", X"fd", X"fd", X"fb", X"fc", X"f7", X"03", X"fc", X"fd", X"00", X"fe", X"01", X"06", X"02",
                                                        X"02", X"ff", X"06", X"fc", X"ff", X"01", X"f8", X"f5", X"ff", X"00", X"03", X"00", X"fb", X"07", X"07", X"f6", X"05", X"02", X"06", X"fe", X"00", X"fd", X"ff", X"ef", X"ff", X"fc",
                                                        X"08", X"04", X"fc", X"01", X"10", X"01", X"03", X"00", X"06", X"fc", X"03", X"fe", X"00", X"f3", X"01", X"00", X"06", X"01", X"02", X"0a", X"0c", X"fd", X"01", X"08", X"0f", X"fc",
                                                        X"00", X"ff", X"fa", X"f2", X"00", X"03", X"04", X"05", X"ff", X"01", X"0d", X"fb", X"00", X"03", X"0f", X"ff", X"00", X"ff", X"fe", X"f6", X"01", X"00", X"03", X"03", X"fc", X"04",
                                                        X"10", X"ff", X"00", X"04", X"0d", X"fd", X"05", X"fe", X"fc", X"ea", X"ff", X"fb", X"09", X"03", X"fc", X"01", X"07", X"04", X"fe", X"05", X"09", X"f8", X"07", X"ff", X"ff", X"ee",
                                                        X"01", X"02", X"0a", X"03", X"01", X"fe", X"07", X"fc", X"ff", X"02", X"04", X"f9", X"01", X"ff", X"fe", X"eb", X"03", X"04", X"ff", X"04", X"02", X"06", X"0e", X"fe", X"04", X"03",
                                                        X"08", X"f8", X"03", X"01", X"ff", X"f6", X"04", X"fe", X"07", X"04", X"02", X"02", X"03", X"ff", X"02", X"03", X"03", X"fe", X"00", X"01", X"04", X"f0", X"04", X"fb", X"ff", X"03",
                                                        X"04", X"05", X"03", X"fd", X"04", X"03", X"06", X"fb", X"06", X"fc", X"fa", X"f2", X"ff", X"01", X"05", X"03", X"01", X"01", X"14", X"ff", X"00", X"07", X"08", X"fc", X"05", X"02",
                                                        X"f5", X"f4", X"05", X"05", X"fe", X"01", X"fe", X"04", X"06", X"ff", X"02", X"09", X"05", X"f7", X"ff", X"02", X"fa", X"ea", X"03", X"00", X"07", X"00", X"fe", X"04", X"15", X"04",
                                                        X"05", X"02", X"fc", X"f3", X"05", X"02", X"01", X"ef", X"04", X"fe", X"07", X"03", X"01", X"03", X"10", X"fc", X"fe", X"07", X"0e", X"f6", X"fd", X"01", X"fe", X"ef", X"fe", X"ff",
                                                        X"12", X"03", X"01", X"00", X"0f", X"ff", X"05", X"04", X"06", X"fd", X"07", X"03", X"fe", X"ed", X"00", X"ff", X"02", X"01", X"01", X"01", X"0f", X"fd", X"03", X"fd", X"05", X"f8",
                                                        X"00", X"fd", X"f9", X"f3", X"00", X"00", X"09", X"06", X"fd", X"03", X"0d", X"fc", X"02", X"fe", X"0a", X"f8", X"0e", X"03", X"ff", X"ee", X"ff", X"ff", X"06", X"04", X"03", X"01",
                                                        X"05", X"ff", X"ff", X"05", X"08", X"fb", X"03", X"fe", X"fa", X"e9", X"01", X"fe", X"01", X"06", X"fc", X"05", X"07", X"03", X"02", X"05", X"05", X"f6", X"02", X"fd", X"fd", X"ef",
                                                        X"03", X"01", X"ff", X"07", X"03", X"08", X"0d", X"fd", X"02", X"03", X"08", X"f7", X"00", X"fd", X"fd", X"e9", X"02", X"00", X"06", X"01", X"01", X"07", X"0b", X"ff", X"01", X"06",
                                                        X"0a", X"fa", X"05", X"ff", X"fb", X"f1", X"00", X"fd", X"03", X"02", X"ff", X"03", X"0c", X"fc", X"fe", X"05", X"0b", X"fe", X"02", X"fe", X"01", X"f0", X"00", X"00", X"00", X"06",
                                                        X"01", X"05", X"15", X"04", X"01", X"06", X"0c", X"fc", X"01", X"ff", X"fb", X"e9", X"03", X"00", X"08", X"04", X"05", X"03", X"10", X"fc", X"02", X"06", X"0f", X"fa", X"04", X"01",
                                                        X"fb", X"f4", X"02", X"00", X"06", X"02", X"02", X"01", X"06", X"03", X"05", X"03", X"08", X"fd", X"01", X"ff", X"fc", X"f5", X"01", X"01", X"05", X"00", X"ff", X"09", X"19", X"02",
                                                        X"02", X"05", X"08", X"fb", X"05", X"01", X"ff", X"ec", X"06", X"ff", X"00", X"05", X"ff", X"04", X"11", X"fe", X"ff", X"04", X"03", X"fc", X"03", X"00", X"00", X"e4", X"03", X"fb",
                                                        X"00", X"01", X"fa", X"07", X"0e", X"01", X"fd", X"0a", X"02", X"f4", X"02", X"fd", X"fd", X"e9", X"02", X"ff", X"0c", X"04", X"00", X"02", X"08", X"fa", X"00", X"05", X"08", X"f6",
                                                        X"04", X"fe", X"fc", X"f9", X"00", X"fe", X"0d", X"05", X"02", X"fc", X"11", X"fd", X"04", X"02", X"0b", X"ff", X"06", X"04", X"fd", X"ec", X"03", X"fe", X"06", X"07", X"03", X"ff",
                                                        X"0e", X"fd", X"00", X"03", X"0a", X"fd", X"07", X"02", X"fc", X"f0", X"02", X"ff", X"08", X"00", X"04", X"fd", X"11", X"03", X"03", X"01", X"0d", X"f7", X"05", X"02", X"fe", X"e9",
                                                        X"08", X"01", X"09", X"01", X"02", X"02", X"09", X"04", X"00", X"08", X"09", X"01", X"fe", X"fd", X"00", X"f2", X"04", X"03", X"03", X"00", X"ff", X"01", X"0c", X"fd", X"02", X"00",
                                                        X"09", X"fa", X"04", X"fe", X"fe", X"f3", X"05", X"01", X"03", X"04", X"01", X"05", X"09", X"f8", X"00", X"03", X"07", X"fb", X"01", X"04", X"00", X"f6", X"02", X"01", X"06", X"05",
                                                        X"00", X"04", X"0c", X"fb", X"04", X"06", X"0b", X"fc", X"05", X"fc", X"fe", X"f5", X"04", X"fc", X"01", X"03", X"03", X"05", X"0f", X"fd", X"fe", X"08", X"0b", X"fb", X"00", X"02",
                                                        X"f7", X"f6", X"02", X"01", X"05", X"05", X"06", X"04", X"15", X"00", X"00", X"02", X"0c", X"f9", X"fd", X"04", X"fc", X"f1", X"ff", X"fe", X"0a", X"09", X"fc", X"01", X"1a", X"02",
                                                        X"02", X"00", X"0c", X"fd", X"ff", X"00", X"fc", X"ed", X"fd", X"ff", X"07", X"04", X"03", X"05", X"0c", X"fc", X"00", X"05", X"0a", X"fd", X"05", X"00", X"ff", X"ef", X"03", X"01",
                                                        X"f8", X"05", X"00", X"01", X"0a", X"05", X"fd", X"ff", X"04", X"fe", X"04", X"03", X"fc", X"ed", X"ff", X"03", X"02", X"06", X"fe", X"fc", X"05", X"fd", X"02", X"fc", X"07", X"f5",
                                                        X"01", X"02", X"01", X"f2", X"03", X"02", X"00", X"01", X"03", X"01", X"05", X"fc", X"04", X"05", X"05", X"f8", X"05", X"fe", X"fc", X"ee", X"01", X"ff", X"04", X"02", X"04", X"06",
                                                        X"0f", X"fe", X"fe", X"02", X"05", X"fb", X"09", X"02", X"fe", X"ea", X"01", X"02", X"09", X"06", X"04", X"05", X"0b", X"fd", X"04", X"03", X"0f", X"fe", X"0a", X"04", X"fb", X"e6",
                                                        X"02", X"03", X"03", X"06", X"02", X"00", X"0b", X"fd", X"00", X"05", X"09", X"00", X"02", X"ff", X"fc", X"eb", X"01", X"05", X"09", X"ff", X"fa", X"00", X"05", X"fe", X"00", X"ff",
                                                        X"0a", X"fc", X"00", X"00", X"fe", X"ed", X"fe", X"ff", X"09", X"00", X"02", X"07", X"ff", X"00", X"00", X"02", X"0b", X"fd", X"05", X"fc", X"f8", X"ed", X"fb", X"00", X"0f", X"00",
                                                        X"ff", X"02", X"06", X"fe", X"01", X"05", X"05", X"fa", X"01", X"fd", X"fe", X"f5", X"03", X"00", X"08", X"04", X"04", X"05", X"0b", X"f8", X"05", X"02", X"08", X"fa", X"06", X"00",
                                                        X"fb", X"fb", X"04", X"02", X"06", X"06", X"02", X"02", X"0e", X"02", X"05", X"04", X"12", X"fb", X"06", X"fc", X"fd", X"f1", X"07", X"01", X"02", X"04", X"ff", X"06", X"06", X"01",
                                                        X"02", X"06", X"07", X"f5", X"04", X"02", X"03", X"eb", X"03", X"00", X"03", X"02", X"fe", X"06", X"ff", X"00", X"ff", X"09", X"07", X"f3", X"00", X"fc", X"fd", X"e8", X"00", X"00",
                                                        X"0c", X"00", X"ff", X"03", X"09", X"fb", X"fd", X"01", X"09", X"f5", X"02", X"f9", X"02", X"ed", X"ff", X"fd", X"ff", X"02", X"ff", X"04", X"19", X"fd", X"00", X"07", X"0c", X"fd",
                                                        X"09", X"fd", X"fd", X"ec", X"02", X"04", X"fd", X"01", X"fd", X"01", X"10", X"00", X"04", X"01", X"0d", X"fc", X"03", X"02", X"fb", X"ed", X"ff", X"02", X"06", X"fc", X"fd", X"09",
                                                        X"08", X"04", X"03", X"07", X"06", X"f7", X"fe", X"01", X"fa", X"f3", X"06", X"fe", X"01", X"04", X"fe", X"07", X"11", X"08", X"01", X"05", X"0a", X"f8", X"02", X"fd", X"fe", X"f4",
                                                        X"02", X"fd", X"08", X"00", X"fe", X"06", X"04", X"02", X"06", X"04", X"0a", X"f9", X"00", X"fb", X"fd", X"ea", X"05", X"02", X"0a", X"04", X"f6", X"03", X"11", X"ff", X"fc", X"02",
                                                        X"05", X"f7", X"01", X"01", X"ff", X"eb", X"fe", X"02", X"09", X"06", X"00", X"04", X"15", X"fd", X"01", X"06", X"07", X"f5", X"05", X"fe", X"fe", X"f0", X"01", X"fd", X"04", X"00",
                                                        X"fe", X"ff", X"07", X"f7", X"02", X"03", X"0b", X"f9", X"01", X"fc", X"fb", X"ee", X"01", X"ff", X"0c", X"00", X"ff", X"05", X"09", X"00", X"fe", X"05", X"0f", X"f6", X"01", X"ff",
                                                        X"fd", X"ee", X"05", X"00", X"0d", X"05", X"07", X"07", X"0b", X"04", X"04", X"05", X"0b", X"f5", X"03", X"01", X"00", X"e7", X"01", X"fd", X"10", X"02", X"01", X"05", X"0d", X"01",
                                                        X"04", X"05", X"0a", X"f7", X"00", X"fb", X"00", X"f4", X"01", X"fe", X"00", X"02", X"02", X"01", X"10", X"ff", X"fe", X"05", X"08", X"f8", X"07", X"fe", X"ff", X"ee", X"03", X"01",
                                                        X"fe", X"01", X"fc", X"fe", X"0c", X"07", X"fe", X"02", X"04", X"fc", X"07", X"fe", X"ff", X"ed", X"02", X"00", X"07", X"05", X"03", X"00", X"07", X"00", X"fe", X"05", X"04", X"f9",
                                                        X"fd", X"ff", X"01", X"ef", X"fd", X"01", X"06", X"05", X"03", X"03", X"0f", X"ff", X"ff", X"05", X"0f", X"ff", X"fe", X"fd", X"fc", X"f0", X"fd", X"00", X"09", X"04", X"fe", X"07",
                                                        X"08", X"fc", X"03", X"04", X"0d", X"fd", X"09", X"fb", X"ff", X"f1", X"fd", X"00", X"08", X"ff", X"fe", X"07", X"0c", X"00", X"00", X"07", X"0d", X"fa", X"07", X"01", X"fa", X"ec",
                                                        X"04", X"00", X"05", X"01", X"fc", X"03", X"13", X"fd", X"03", X"02", X"04", X"fd", X"04", X"03", X"fe", X"e9", X"03", X"fe", X"04", X"01", X"00", X"01", X"0e", X"00", X"03", X"fe",
                                                        X"0a", X"ff", X"fe", X"fe", X"fb", X"ec", X"00", X"01", X"fd", X"03", X"fc", X"06", X"14", X"03", X"06", X"09", X"02", X"fb", X"06", X"ff", X"ff", X"f1", X"05", X"03", X"07", X"07",
                                                        X"fe", X"fe", X"13", X"fb", X"04", X"02", X"08", X"fb", X"06", X"01", X"05", X"ec", X"01", X"05", X"06", X"01", X"01", X"06", X"07", X"01", X"01", X"06", X"08", X"f9", X"fb", X"00",
                                                        X"08", X"ef", X"02", X"01", X"02", X"04", X"00", X"02", X"13", X"02", X"02", X"09", X"0c", X"fb", X"fe", X"fb", X"01", X"f4", X"04", X"01", X"00", X"ff", X"fe", X"02", X"0b", X"fe",
                                                        X"01", X"08", X"0c", X"fb", X"07", X"fe", X"ff", X"f5", X"02", X"03", X"06", X"03", X"fc", X"04", X"14", X"fc", X"fd", X"04", X"0d", X"fb", X"ff", X"02", X"01", X"ee", X"03", X"05",
                                                        X"06", X"02", X"03", X"03", X"0b", X"05", X"ff", X"08", X"0b", X"ff", X"01", X"00", X"00", X"f6", X"04", X"00", X"0d", X"04", X"fe", X"00", X"08", X"02", X"00", X"05", X"0a", X"fc",
                                                        X"ff", X"00", X"fd", X"f1", X"04", X"fe", X"03", X"04", X"fb", X"ff", X"07", X"00", X"04", X"01", X"02", X"fb", X"03", X"04", X"00", X"f1", X"01", X"ff", X"08", X"02", X"fc", X"04",
                                                        X"10", X"05", X"02", X"07", X"09", X"ff", X"07", X"ff", X"fd", X"f0", X"fb", X"03", X"04", X"03", X"fc", X"07", X"0d", X"fd", X"00", X"08", X"0a", X"fc", X"02", X"fd", X"fe", X"ee",
                                                        X"fe", X"01", X"0c", X"03", X"03", X"06", X"14", X"f8", X"fe", X"0a", X"08", X"01", X"04", X"01", X"fb", X"ea", X"fd", X"00", X"0c", X"01", X"01", X"ff", X"07", X"ff", X"00", X"00",
                                                        X"0a", X"fc", X"04", X"ff", X"fa", X"f2", X"03", X"ff", X"09", X"03", X"02", X"09", X"10", X"fd", X"01", X"0b", X"0b", X"ff", X"04", X"fd", X"ff", X"f3", X"05", X"01", X"0a", X"07",
                                                        X"ff", X"01", X"0f", X"03", X"01", X"04", X"0f", X"fb", X"03", X"03", X"fa", X"ed", X"ff", X"01", X"04", X"05", X"00", X"02", X"12", X"fe", X"fc", X"01", X"12", X"f8", X"02", X"01",
                                                        X"fb", X"f1", X"01", X"fd", X"03", X"04", X"01", X"04", X"0c", X"fd", X"00", X"03", X"07", X"ff", X"01", X"ff", X"00", X"e8", X"01", X"fe", X"0a", X"00", X"ff", X"05", X"02", X"04",
                                                        X"fe", X"02", X"07", X"fc", X"02", X"ff", X"00", X"e4", X"02", X"00", X"02", X"04", X"00", X"09", X"0e", X"ff", X"03", X"06", X"09", X"fa", X"03", X"01", X"fa", X"e9", X"04", X"03",
                                                        X"05", X"04", X"00", X"02", X"0c", X"02", X"fd", X"06", X"0a", X"fa", X"ff", X"03", X"fe", X"e4", X"01", X"fe", X"07", X"07", X"05", X"03", X"16", X"01", X"05", X"09", X"0c", X"f9",
                                                        X"ff", X"01", X"ff", X"ee", X"07", X"01", X"07", X"03", X"02", X"fc", X"0b", X"ff", X"02", X"01", X"09", X"fc", X"00", X"ff", X"ff", X"ef", X"02", X"ff", X"12", X"00", X"fd", X"fc",
                                                        X"0c", X"f8", X"00", X"ff", X"0c", X"fc", X"03", X"ff", X"ff", X"f0", X"02", X"fe", X"09", X"00", X"ff", X"ff", X"01", X"02", X"01", X"03", X"07", X"fe", X"00", X"ff", X"01", X"eb",
                                                        X"00", X"fd", X"04", X"fc", X"fd", X"06", X"05", X"ff", X"fe", X"09", X"05", X"f4", X"ff", X"f9", X"ff", X"ee", X"fd", X"fe", X"0e", X"02", X"03", X"06", X"06", X"ff", X"00", X"07",
                                                        X"0b", X"ff", X"fb", X"03", X"fd", X"ef", X"fe", X"04", X"05", X"02", X"00", X"05", X"0f", X"f9", X"00", X"08", X"08", X"f9", X"03", X"fa", X"f5", X"f5", X"00", X"00", X"00", X"04",
                                                        X"01", X"08", X"0c", X"01", X"02", X"0b", X"07", X"fe", X"03", X"00", X"fc", X"f3", X"00", X"02", X"09", X"01", X"fa", X"03", X"05", X"fc", X"f9", X"05", X"07", X"f4", X"05", X"00",
                                                        X"fc", X"f0", X"fa", X"fe", X"05", X"05", X"ff", X"01", X"0c", X"03", X"fe", X"03", X"10", X"f7", X"04", X"02", X"fe", X"f2", X"00", X"fc");
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

