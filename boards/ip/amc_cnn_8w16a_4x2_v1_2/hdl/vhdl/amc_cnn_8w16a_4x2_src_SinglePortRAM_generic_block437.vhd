-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block437.vhd
-- Created: 2024-11-05 16:19:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block437
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage81/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block437 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block437;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block437 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"07", X"fb", X"f9", X"ec", X"12", X"08", X"0b", X"f6", X"0d", X"0c", X"f7", X"09", X"02", X"fb",
                                                        X"06", X"00", X"04", X"ff", X"f6", X"f0", X"11", X"0b", X"05", X"fc", X"05", X"0b", X"f8", X"08", X"01", X"f4", X"ff", X"fd", X"06", X"ff", X"f5", X"ed", X"06", X"0a", X"04", X"01",
                                                        X"06", X"0d", X"01", X"01", X"0a", X"f4", X"fe", X"fd", X"02", X"00", X"f7", X"ee", X"07", X"06", X"01", X"fe", X"02", X"07", X"fc", X"06", X"03", X"f2", X"fd", X"fe", X"03", X"00",
                                                        X"f6", X"ea", X"0a", X"07", X"fb", X"f5", X"ff", X"08", X"fb", X"08", X"04", X"f1", X"00", X"fa", X"ff", X"fc", X"fd", X"ef", X"fe", X"07", X"00", X"f8", X"0a", X"0a", X"fc", X"01",
                                                        X"03", X"f7", X"fe", X"fc", X"0e", X"fd", X"f9", X"e8", X"02", X"04", X"02", X"f7", X"0c", X"09", X"fe", X"08", X"04", X"f7", X"fc", X"f8", X"01", X"01", X"fe", X"e9", X"ff", X"00",
                                                        X"fe", X"f6", X"0f", X"08", X"f4", X"07", X"07", X"f5", X"fa", X"fb", X"02", X"03", X"f8", X"f4", X"06", X"07", X"00", X"fb", X"0d", X"04", X"fb", X"06", X"0b", X"f4", X"00", X"02",
                                                        X"05", X"02", X"fd", X"f3", X"09", X"01", X"06", X"01", X"0b", X"0b", X"03", X"04", X"0e", X"f3", X"02", X"01", X"0c", X"ff", X"fc", X"f2", X"00", X"05", X"00", X"fb", X"02", X"05",
                                                        X"00", X"0b", X"0c", X"f7", X"fc", X"ff", X"05", X"03", X"f9", X"f3", X"02", X"06", X"01", X"fe", X"08", X"06", X"ff", X"03", X"0b", X"f3", X"ff", X"fc", X"03", X"fe", X"f3", X"ef",
                                                        X"05", X"0c", X"01", X"f3", X"fd", X"04", X"06", X"fe", X"04", X"f1", X"fe", X"f8", X"00", X"fb", X"f3", X"ed", X"0a", X"01", X"fc", X"ff", X"04", X"05", X"04", X"ff", X"0a", X"f1",
                                                        X"01", X"fd", X"06", X"fc", X"f4", X"f1", X"0c", X"0d", X"fc", X"f9", X"09", X"05", X"00", X"06", X"05", X"f4", X"01", X"fd", X"07", X"f9", X"f8", X"f7", X"00", X"ff", X"fe", X"03",
                                                        X"05", X"06", X"fe", X"00", X"02", X"f5", X"ff", X"fd", X"fd", X"fb", X"fc", X"f2", X"07", X"09", X"05", X"fe", X"06", X"04", X"fc", X"08", X"07", X"f9", X"02", X"02", X"08", X"fd",
                                                        X"fa", X"ed", X"05", X"05", X"01", X"f9", X"08", X"08", X"f5", X"07", X"0b", X"f4", X"01", X"ff", X"04", X"fa", X"fa", X"f0", X"ff", X"07", X"02", X"fd", X"05", X"0b", X"00", X"09",
                                                        X"05", X"f8", X"00", X"01", X"ff", X"f9", X"f7", X"f0", X"04", X"07", X"05", X"fc", X"01", X"05", X"03", X"02", X"05", X"f7", X"02", X"fe", X"06", X"fe", X"f6", X"f9", X"fa", X"06",
                                                        X"fd", X"03", X"00", X"04", X"08", X"00", X"05", X"f0", X"01", X"fd", X"07", X"fd", X"f1", X"f3", X"01", X"08", X"01", X"fa", X"09", X"06", X"fe", X"04", X"07", X"ee", X"ff", X"fd",
                                                        X"ff", X"f7", X"f7", X"f3", X"0a", X"04", X"02", X"01", X"0c", X"09", X"f8", X"05", X"06", X"f7", X"00", X"fc", X"08", X"fc", X"f9", X"f0", X"09", X"08", X"02", X"02", X"0b", X"04",
                                                        X"fd", X"02", X"08", X"f9", X"01", X"ff", X"05", X"00", X"fb", X"ef", X"08", X"0a", X"fe", X"fd", X"05", X"04", X"03", X"07", X"0a", X"f8", X"01", X"00", X"03", X"01", X"f8", X"f8",
                                                        X"0e", X"10", X"01", X"00", X"02", X"05", X"04", X"05", X"0b", X"f3", X"fd", X"00", X"07", X"00", X"f6", X"ee", X"00", X"06", X"fe", X"fb", X"0a", X"08", X"01", X"07", X"0b", X"f8",
                                                        X"fd", X"fd", X"0d", X"fe", X"ff", X"f4", X"fe", X"0a", X"fe", X"03", X"0a", X"05", X"03", X"0b", X"06", X"fa", X"fc", X"ff", X"11", X"fa", X"fd", X"f5", X"f7", X"05", X"04", X"02",
                                                        X"0a", X"08", X"02", X"01", X"02", X"f4", X"02", X"fb", X"04", X"00", X"fe", X"f3", X"04", X"08", X"01", X"01", X"07", X"0a", X"03", X"04", X"0b", X"f9", X"01", X"01", X"04", X"ff",
                                                        X"fb", X"ef", X"04", X"07", X"f8", X"fc", X"03", X"06", X"00", X"07", X"06", X"fd", X"ff", X"01", X"fc", X"fa", X"00", X"f2", X"06", X"08", X"04", X"00", X"08", X"0d", X"ff", X"04",
                                                        X"07", X"00", X"02", X"fc", X"02", X"f8", X"01", X"ee", X"0a", X"08", X"04", X"01", X"0d", X"09", X"fb", X"03", X"01", X"ff", X"02", X"fe", X"00", X"ff", X"fc", X"f1", X"05", X"0d",
                                                        X"01", X"fd", X"04", X"08", X"fd", X"09", X"08", X"f4", X"01", X"04", X"02", X"fe", X"01", X"f2", X"01", X"07", X"03", X"fd", X"09", X"0b", X"fb", X"04", X"0a", X"f7", X"05", X"03",
                                                        X"08", X"fd", X"ff", X"f8", X"04", X"03", X"00", X"fc", X"08", X"07", X"01", X"09", X"0e", X"fd", X"01", X"02", X"0f", X"00", X"02", X"f4", X"02", X"04", X"03", X"fd", X"07", X"09",
                                                        X"02", X"04", X"0c", X"f4", X"02", X"fe", X"09", X"01", X"fd", X"f4", X"01", X"03", X"05", X"fd", X"00", X"07", X"08", X"05", X"05", X"f9", X"01", X"ff", X"07", X"fc", X"fa", X"eb",
                                                        X"09", X"08", X"ff", X"fb", X"08", X"07", X"03", X"02", X"07", X"f5", X"00", X"00", X"ff", X"00", X"f8", X"ec", X"0a", X"0a", X"fe", X"ff", X"0c", X"05", X"ff", X"09", X"04", X"f6",
                                                        X"fe", X"01", X"f8", X"ff", X"fc", X"ee", X"09", X"0d", X"00", X"fa", X"07", X"06", X"fc", X"09", X"03", X"fa", X"fb", X"00", X"09", X"01", X"fb", X"ed", X"09", X"0b", X"ff", X"fd",
                                                        X"0a", X"07", X"05", X"05", X"0a", X"f5", X"fd", X"fc", X"0a", X"ff", X"f9", X"f5", X"0b", X"0c", X"00", X"fc", X"03", X"01", X"03", X"08", X"0d", X"f9", X"ff", X"ff", X"06", X"02",
                                                        X"fa", X"f2", X"06", X"05", X"00", X"ff", X"02", X"04", X"fd", X"0c", X"08", X"f5", X"00", X"fe", X"00", X"04", X"fd", X"f2", X"fd", X"10", X"fd", X"fe", X"02", X"02", X"02", X"07",
                                                        X"02", X"f6", X"ff", X"ff", X"01", X"00", X"ff", X"f8", X"0b", X"0a", X"01", X"08", X"06", X"08", X"02", X"06", X"07", X"fb", X"01", X"f9", X"00", X"fc", X"fc", X"ee", X"11", X"06",
                                                        X"fa", X"03", X"0e", X"07", X"05", X"04", X"08", X"fb", X"fd", X"00", X"05", X"fe", X"01", X"f5", X"11", X"06", X"fb", X"00", X"0c", X"06", X"fe", X"06", X"0a", X"f9", X"fe", X"fd",
                                                        X"01", X"fb", X"fc", X"f5", X"09", X"05", X"01", X"fa", X"09", X"0a", X"f8", X"09", X"06", X"f4", X"fc", X"fe", X"07", X"fb", X"fb", X"ef", X"06", X"05", X"03", X"f8", X"0c", X"08",
                                                        X"fd", X"03", X"0a", X"f6", X"03", X"fd", X"06", X"ff", X"fa", X"ee", X"fc", X"11", X"03", X"fa", X"08", X"0a", X"02", X"0a", X"0a", X"f6", X"03", X"00", X"04", X"fd", X"f8", X"f1",
                                                        X"fd", X"07", X"02", X"fd", X"05", X"08", X"fb", X"02", X"05", X"f2", X"fe", X"fe", X"0c", X"fc", X"f8", X"ec", X"fe", X"05", X"04", X"f6", X"08", X"06", X"fd", X"07", X"09", X"f3",
                                                        X"00", X"f9", X"01", X"fe", X"f9", X"f2", X"ff", X"08", X"00", X"fa", X"ff", X"03", X"fb", X"02", X"05", X"f4", X"fe", X"fe", X"fe", X"fd", X"f8", X"f1", X"ff", X"07", X"03", X"fc",
                                                        X"06", X"06", X"03", X"05", X"05", X"f7", X"fc", X"fd", X"00", X"fe", X"fc", X"f5", X"01", X"06", X"00", X"04", X"08", X"08", X"fd", X"08", X"02", X"f6", X"fe", X"fe", X"04", X"fb",
                                                        X"fd", X"f2", X"06", X"0a", X"00", X"fa", X"04", X"09", X"02", X"09", X"07", X"f3", X"04", X"00", X"fc", X"fc", X"f8", X"f9", X"08", X"0e", X"ff", X"00", X"02", X"0a", X"fc", X"04",
                                                        X"09", X"f3", X"04", X"ff", X"f9", X"fe", X"f7", X"ee", X"01", X"07", X"00", X"f9", X"00", X"0a", X"f6", X"08", X"0c", X"fa", X"02", X"fa", X"ff", X"00", X"f7", X"ec", X"03", X"08",
                                                        X"00", X"f6", X"01", X"09", X"fb", X"05", X"03", X"f8", X"ff", X"00", X"04", X"fe", X"fc", X"f2", X"08", X"07", X"00", X"f7", X"04", X"07", X"fe", X"08", X"05", X"eb", X"fd", X"fe",
                                                        X"08", X"00", X"fd", X"f4", X"fd", X"0c", X"fb", X"fc", X"ff", X"02", X"01", X"07", X"06", X"f1", X"ff", X"fe", X"06", X"ff", X"f8", X"f4", X"04", X"01", X"fd", X"fd", X"06", X"05",
                                                        X"01", X"08", X"06", X"f7", X"ff", X"ff", X"ff", X"03", X"ff", X"f4", X"00", X"ff", X"ff", X"fc", X"0b", X"08", X"fa", X"06", X"03", X"f7", X"f8", X"01", X"08", X"00", X"fe", X"f4",
                                                        X"02", X"07", X"fe", X"ff", X"05", X"07", X"fa", X"09", X"0b", X"f7", X"fe", X"00", X"08", X"04", X"fb", X"f0", X"06", X"05", X"03", X"f8", X"06", X"09", X"03", X"07", X"0b", X"fa",
                                                        X"fa", X"fe", X"ff", X"06", X"fd", X"ed", X"f7", X"07", X"01", X"f8", X"01", X"06", X"00", X"07", X"0c", X"fa", X"fb", X"01", X"03", X"fe", X"f7", X"f2", X"f9", X"05", X"f9", X"ff",
                                                        X"05", X"06", X"ff", X"09", X"09", X"f1", X"f8", X"00", X"01", X"00", X"00", X"fc", X"f9", X"09", X"00", X"08", X"05", X"04", X"03", X"05", X"0e", X"f2", X"fd", X"00", X"0b", X"ff",
                                                        X"ff", X"f0", X"02", X"02", X"ff", X"fe", X"08", X"07", X"01", X"09", X"04", X"f3", X"02", X"fc", X"01", X"01", X"00", X"f4", X"07", X"fb", X"03", X"03", X"01", X"04", X"f9", X"09",
                                                        X"08", X"fa", X"ff", X"fd", X"00", X"00", X"ff", X"f1", X"03", X"ff", X"03", X"fe", X"08", X"04", X"02", X"05", X"08", X"f9", X"01", X"ff", X"fd", X"ff", X"fa", X"f2", X"fc", X"06",
                                                        X"00", X"08", X"03", X"06", X"04", X"01", X"05", X"fd", X"fd", X"ff", X"06", X"fc", X"fb", X"ec", X"00", X"03", X"03", X"fd", X"05", X"08", X"08", X"06", X"05", X"f7", X"01", X"fe",
                                                        X"04", X"fc", X"f8", X"ef", X"ff", X"08", X"04", X"fb", X"ff", X"04", X"06", X"06", X"08", X"f7", X"05", X"02", X"05", X"fc", X"f5", X"f0", X"fe", X"04", X"00", X"fa", X"0b", X"05",
                                                        X"06", X"02", X"08", X"f6", X"01", X"ff", X"06", X"f9", X"f8", X"fb", X"fe", X"09", X"03", X"fe", X"05", X"02", X"02", X"04", X"07", X"f8", X"00", X"fe", X"05", X"fc", X"fb", X"f4",
                                                        X"fa", X"09", X"ff", X"02", X"06", X"07", X"02", X"01", X"0c", X"f3", X"ff", X"fa", X"06", X"fd", X"fe", X"f0", X"05", X"08", X"02", X"fc", X"10", X"0a", X"fd", X"06", X"0a", X"00",
                                                        X"00", X"fd", X"01", X"00", X"fa", X"e9", X"08", X"05", X"02", X"fa", X"10", X"08", X"ff", X"09", X"09", X"03", X"02", X"02", X"fd", X"fe", X"f9", X"f0", X"09", X"fb", X"fe", X"fe",
                                                        X"0c", X"0b", X"01", X"06", X"0d", X"f8", X"01", X"fe", X"06", X"00", X"fe", X"f7", X"f5", X"0b", X"02", X"00", X"08", X"09", X"ff", X"06", X"08", X"fe", X"03", X"fd", X"00", X"fa",
                                                        X"fb", X"f5", X"fd", X"07", X"01", X"06", X"00", X"04", X"01", X"07", X"08", X"f1", X"02", X"fd", X"00", X"fc", X"f2", X"ef", X"01", X"06", X"01", X"fe", X"fa", X"05", X"01", X"06",
                                                        X"09", X"f7", X"03", X"fe", X"ff", X"00", X"f9", X"f6", X"f8", X"07", X"04", X"03", X"fc", X"02", X"fd", X"07", X"07", X"fd", X"00", X"fb", X"03", X"00", X"fa", X"f2", X"04", X"09",
                                                        X"03", X"f9", X"04", X"06", X"03", X"04", X"01", X"f4", X"02", X"fb", X"04", X"00", X"fd", X"f1", X"04", X"07", X"05", X"fe", X"03", X"07", X"06", X"05", X"05", X"f8", X"03", X"fe",
                                                        X"02", X"ff", X"fe", X"f3", X"01", X"05", X"01", X"02", X"06", X"06", X"01", X"04", X"07", X"f1", X"01", X"00", X"07", X"00", X"f9", X"f0", X"00", X"03", X"01", X"00", X"0e", X"06",
                                                        X"02", X"06", X"03", X"f4", X"01", X"ff", X"02", X"fc", X"f8", X"ed", X"fd", X"03", X"fd", X"fb", X"02", X"06", X"01", X"06", X"04", X"f7", X"fc", X"fe", X"06", X"01", X"fe", X"ed",
                                                        X"01", X"05", X"fc", X"00", X"02", X"08", X"fe", X"08", X"07", X"f6", X"fe", X"ff", X"05", X"fd", X"fc", X"fa", X"ff", X"03", X"fd", X"03", X"00", X"04", X"fa", X"06", X"03", X"f4",
                                                        X"fd", X"fd", X"03", X"fb", X"f6", X"f4", X"02", X"0b", X"fc", X"04", X"06", X"05", X"fe", X"07", X"0c", X"ef", X"fd", X"fd", X"0a", X"02", X"f6", X"f8", X"fa", X"04", X"00", X"06",
                                                        X"06", X"03", X"f8", X"08", X"03", X"f0", X"02", X"01", X"ff", X"ff", X"ef", X"f0", X"01", X"03", X"03", X"f9", X"ff", X"06", X"03", X"08", X"03", X"f9", X"02", X"fd", X"fe", X"fc",
                                                        X"fc", X"ef", X"fe", X"05", X"ff", X"fb", X"04", X"09", X"01", X"03", X"02", X"f7", X"00", X"02", X"ff", X"fd", X"f9", X"e4", X"ff", X"07", X"fe", X"f4", X"0a", X"08", X"fd", X"07",
                                                        X"09", X"f1", X"ff", X"fc", X"fe", X"fa", X"fb", X"f6", X"f8", X"0d", X"00", X"00", X"08", X"09", X"f9", X"02", X"09", X"f4", X"fe", X"00", X"08", X"fe", X"f4", X"f3", X"ff", X"07",
                                                        X"00", X"fc", X"03", X"01", X"fd", X"04", X"02", X"ef", X"fb", X"fe", X"00", X"ff", X"f8", X"f4", X"fa", X"0d", X"01", X"ff", X"03", X"06", X"fc", X"02", X"05", X"f5", X"fa", X"fc",
                                                        X"02", X"02", X"f9", X"f4", X"fe", X"0e", X"fe", X"fd", X"04", X"05", X"fd", X"04", X"07", X"f4", X"00", X"fd", X"04", X"00", X"fb", X"f0", X"01", X"0a", X"ff", X"fb", X"03", X"08",
                                                        X"03", X"03", X"03", X"f4", X"ff", X"fc", X"07", X"01", X"fb", X"e8", X"08", X"0c", X"fc", X"fa", X"0a", X"07", X"f9", X"03", X"04", X"f2", X"fb", X"f9", X"01", X"fd", X"fe", X"ef",
                                                        X"05", X"0a", X"00", X"fa", X"0a", X"07", X"f9", X"05", X"01", X"f0", X"ff", X"fc", X"05", X"fc", X"00", X"ec", X"fa", X"0f", X"02", X"f5", X"08", X"0f", X"fb", X"04", X"07", X"f3",
                                                        X"ff", X"00", X"03", X"00", X"fc", X"ed", X"06", X"0d", X"04", X"fc", X"04", X"0a", X"fe", X"08", X"0a", X"f7", X"fe", X"fd", X"08", X"01", X"f7", X"ef", X"07", X"0a", X"03", X"fa",
                                                        X"00", X"05", X"04", X"05", X"0a", X"f3", X"fe", X"ff", X"02", X"02", X"fa", X"f6", X"03", X"05", X"01", X"ff", X"04", X"07", X"02", X"02", X"05", X"f1", X"fd", X"00", X"fc", X"01",
                                                        X"f3", X"f7", X"fb", X"08", X"fc", X"fd", X"fa", X"05", X"ff", X"02", X"04", X"ee", X"f8", X"fc", X"f9", X"fb", X"f0", X"f6", X"0f", X"02", X"fa", X"02", X"04", X"04", X"00", X"00",
                                                        X"04", X"f9", X"fd", X"fc", X"ff", X"00", X"f3", X"f2", X"0d", X"02", X"ff", X"ff", X"00", X"08", X"05", X"06", X"02", X"f2", X"ff", X"00", X"01", X"ff", X"f6", X"ec", X"ff", X"07",
                                                        X"02", X"f7", X"0a", X"0d", X"fb", X"07", X"02", X"fa", X"fd", X"ff", X"09", X"fd", X"fb", X"f2", X"fc", X"0d", X"04", X"fe", X"ff", X"0a", X"02", X"05", X"08", X"f9", X"04", X"ff",
                                                        X"08", X"02", X"f9", X"ef", X"04", X"0d", X"03", X"fa", X"08", X"0d", X"04", X"0a", X"09", X"fa", X"ff", X"00", X"0a", X"fe", X"fa", X"f3", X"fd", X"0a", X"01", X"ff", X"02", X"09",
                                                        X"00", X"06", X"09", X"fe", X"00", X"ff", X"04", X"03", X"f8", X"f0", X"fb", X"07", X"03", X"fa", X"03", X"0c", X"fe", X"08", X"01", X"f7", X"00", X"01", X"03", X"02", X"fc", X"f4",
                                                        X"01", X"04", X"01", X"f9", X"05", X"0b", X"fc", X"0a", X"04", X"f6", X"ff", X"01", X"04", X"ff", X"fb", X"ec", X"04", X"04", X"ff", X"f9", X"04", X"06", X"02", X"04", X"01", X"f4",
                                                        X"fe", X"fe", X"0a", X"fd", X"fa", X"f0", X"14", X"03", X"01", X"fc", X"04", X"06", X"02", X"07", X"04", X"f4", X"fb", X"ff", X"0e", X"ff", X"01", X"f1", X"07", X"04", X"02", X"fa",
                                                        X"0a", X"09", X"00", X"03", X"05", X"f2", X"00", X"01", X"0b", X"04", X"fe", X"e7", X"ff", X"04", X"fd", X"fc", X"0d", X"0c", X"02", X"06", X"06", X"f5", X"fd", X"00", X"04", X"00",
                                                        X"fb", X"f5", X"01", X"03", X"ff", X"03", X"08", X"0c", X"03", X"06", X"05", X"ef", X"00", X"ff", X"00", X"01", X"fd", X"f8", X"fe", X"00", X"ff", X"04", X"04", X"06", X"f9", X"01",
                                                        X"03", X"f9", X"ff", X"f9", X"0c", X"04", X"f9", X"ef", X"02", X"07", X"fb", X"f7", X"04", X"05", X"01", X"07", X"06", X"f0", X"02", X"fd");
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

