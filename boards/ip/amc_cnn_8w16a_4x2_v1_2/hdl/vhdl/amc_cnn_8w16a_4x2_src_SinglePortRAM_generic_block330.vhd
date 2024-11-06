-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block330.vhd
-- Created: 2024-11-05 16:19:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block330
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage1/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block330 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block330;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block330 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"08", X"01", X"f0", X"b9", X"fa", X"0b", X"0b", X"b9", X"02", X"09", X"fe", X"07", X"08", X"fa",
                                                        X"0d", X"01", X"01", X"00", X"f4", X"b9", X"ff", X"01", X"06", X"b9", X"06", X"06", X"f8", X"04", X"00", X"f6", X"08", X"fd", X"ff", X"03", X"f6", X"bb", X"08", X"03", X"00", X"b9",
                                                        X"05", X"07", X"f7", X"03", X"fc", X"ee", X"06", X"00", X"00", X"ff", X"f7", X"b9", X"05", X"05", X"ff", X"b9", X"05", X"03", X"f5", X"ff", X"fc", X"f1", X"00", X"fe", X"01", X"03",
                                                        X"f7", X"b8", X"01", X"08", X"03", X"bb", X"02", X"05", X"f8", X"07", X"fc", X"f1", X"01", X"fd", X"00", X"06", X"f6", X"b8", X"fe", X"06", X"04", X"b9", X"fe", X"04", X"f9", X"09",
                                                        X"fd", X"f3", X"03", X"01", X"02", X"08", X"f5", X"b9", X"01", X"08", X"04", X"b9", X"00", X"05", X"fe", X"0a", X"fe", X"f2", X"02", X"02", X"fd", X"08", X"f7", X"b9", X"03", X"06",
                                                        X"04", X"bb", X"01", X"05", X"00", X"09", X"02", X"f1", X"05", X"03", X"08", X"03", X"f7", X"bd", X"00", X"02", X"02", X"b9", X"07", X"01", X"fc", X"06", X"03", X"ee", X"08", X"01",
                                                        X"05", X"04", X"f7", X"bc", X"00", X"06", X"05", X"b8", X"09", X"01", X"fc", X"04", X"fe", X"ee", X"04", X"02", X"06", X"02", X"f8", X"c7", X"04", X"07", X"04", X"bc", X"04", X"03",
                                                        X"01", X"06", X"01", X"f0", X"06", X"ff", X"ff", X"06", X"f5", X"ba", X"01", X"07", X"05", X"b8", X"04", X"04", X"00", X"06", X"fd", X"ee", X"06", X"04", X"03", X"08", X"f3", X"bd",
                                                        X"02", X"03", X"03", X"b9", X"02", X"05", X"00", X"07", X"02", X"ef", X"0a", X"05", X"04", X"06", X"f7", X"bc", X"ff", X"05", X"06", X"be", X"02", X"05", X"ff", X"09", X"02", X"f3",
                                                        X"06", X"02", X"01", X"0a", X"f9", X"c2", X"fc", X"06", X"06", X"bc", X"00", X"07", X"fe", X"0a", X"03", X"f1", X"07", X"01", X"03", X"05", X"fb", X"c9", X"fe", X"08", X"06", X"ba",
                                                        X"01", X"04", X"00", X"05", X"06", X"ee", X"07", X"01", X"07", X"03", X"f8", X"d3", X"00", X"03", X"00", X"c1", X"05", X"02", X"01", X"06", X"04", X"ed", X"03", X"00", X"06", X"06",
                                                        X"f6", X"c4", X"08", X"01", X"03", X"c1", X"02", X"03", X"fe", X"03", X"01", X"ed", X"02", X"fe", X"03", X"02", X"f3", X"c2", X"0b", X"00", X"03", X"b8", X"03", X"02", X"00", X"05",
                                                        X"ff", X"ed", X"04", X"01", X"04", X"02", X"f1", X"ba", X"04", X"07", X"04", X"b8", X"01", X"00", X"fd", X"06", X"ff", X"ee", X"03", X"00", X"03", X"06", X"f3", X"ba", X"01", X"06",
                                                        X"01", X"bb", X"04", X"01", X"03", X"04", X"fe", X"f3", X"08", X"fe", X"00", X"06", X"f4", X"bc", X"ff", X"06", X"01", X"ba", X"fe", X"05", X"01", X"04", X"00", X"f2", X"03", X"02",
                                                        X"ff", X"04", X"f3", X"b9", X"03", X"08", X"05", X"b9", X"fc", X"07", X"00", X"03", X"00", X"f1", X"06", X"fe", X"ff", X"08", X"f6", X"c0", X"00", X"04", X"06", X"b9", X"00", X"04",
                                                        X"fb", X"07", X"03", X"f4", X"08", X"01", X"fb", X"03", X"f7", X"c2", X"fc", X"01", X"01", X"b9", X"03", X"07", X"fb", X"06", X"ff", X"f0", X"07", X"02", X"ff", X"06", X"f9", X"c2",
                                                        X"fe", X"02", X"01", X"b8", X"04", X"08", X"fa", X"05", X"fe", X"f1", X"05", X"ff", X"00", X"05", X"fd", X"c3", X"05", X"00", X"ff", X"b9", X"06", X"09", X"f9", X"04", X"00", X"f4",
                                                        X"01", X"00", X"04", X"05", X"f9", X"ca", X"01", X"02", X"01", X"b9", X"03", X"02", X"fb", X"06", X"04", X"f1", X"04", X"ff", X"03", X"08", X"f5", X"c5", X"f8", X"02", X"07", X"bb",
                                                        X"01", X"04", X"fb", X"02", X"01", X"f2", X"08", X"02", X"04", X"06", X"f6", X"bd", X"00", X"05", X"05", X"bb", X"fd", X"05", X"ff", X"05", X"08", X"f3", X"08", X"04", X"02", X"09",
                                                        X"f9", X"be", X"00", X"04", X"06", X"ba", X"01", X"05", X"00", X"06", X"03", X"ef", X"05", X"02", X"03", X"0a", X"fa", X"bd", X"ff", X"ff", X"04", X"b9", X"0a", X"04", X"ff", X"07",
                                                        X"00", X"f5", X"06", X"04", X"05", X"08", X"fd", X"c1", X"06", X"03", X"04", X"b8", X"0c", X"05", X"fe", X"07", X"00", X"ef", X"04", X"03", X"fd", X"0a", X"fe", X"c2", X"09", X"03",
                                                        X"02", X"b9", X"08", X"06", X"fe", X"02", X"01", X"f1", X"00", X"04", X"00", X"04", X"fa", X"bd", X"06", X"03", X"02", X"b9", X"03", X"06", X"fc", X"06", X"00", X"f0", X"01", X"05",
                                                        X"00", X"09", X"f6", X"be", X"fa", X"06", X"05", X"ba", X"02", X"07", X"fd", X"08", X"02", X"f0", X"05", X"02", X"03", X"07", X"f8", X"ba", X"f3", X"07", X"06", X"b9", X"06", X"05",
                                                        X"fb", X"07", X"05", X"f0", X"05", X"05", X"02", X"06", X"fc", X"c5", X"ff", X"04", X"04", X"b9", X"04", X"06", X"00", X"07", X"02", X"f1", X"02", X"05", X"05", X"06", X"fc", X"c3",
                                                        X"06", X"05", X"06", X"bc", X"05", X"0a", X"02", X"08", X"03", X"f1", X"07", X"07", X"fc", X"07", X"f7", X"cb", X"09", X"02", X"06", X"be", X"02", X"05", X"fc", X"06", X"03", X"f4",
                                                        X"03", X"02", X"05", X"07", X"f8", X"c4", X"09", X"00", X"02", X"c3", X"05", X"06", X"00", X"04", X"04", X"f4", X"06", X"03", X"07", X"04", X"fd", X"cf", X"05", X"fd", X"02", X"c2",
                                                        X"0a", X"02", X"00", X"03", X"02", X"f0", X"03", X"ff", X"04", X"06", X"f8", X"d7", X"01", X"02", X"04", X"d1", X"06", X"03", X"ff", X"02", X"04", X"f2", X"05", X"02", X"07", X"09",
                                                        X"f7", X"d3", X"00", X"00", X"03", X"c7", X"08", X"04", X"fc", X"05", X"08", X"ee", X"08", X"04", X"08", X"03", X"f7", X"c5", X"0b", X"02", X"01", X"bd", X"06", X"01", X"fe", X"07",
                                                        X"05", X"f1", X"06", X"01", X"05", X"07", X"f5", X"ba", X"07", X"fd", X"04", X"b9", X"04", X"02", X"01", X"04", X"03", X"f0", X"08", X"02", X"ff", X"07", X"f6", X"ba", X"08", X"04",
                                                        X"05", X"b9", X"00", X"01", X"fd", X"03", X"03", X"ee", X"05", X"03", X"ff", X"05", X"f2", X"c4", X"fb", X"05", X"ff", X"b9", X"00", X"02", X"ff", X"01", X"fd", X"ee", X"03", X"fe",
                                                        X"fd", X"07", X"f7", X"c3", X"fa", X"04", X"ff", X"b8", X"04", X"03", X"f9", X"01", X"fe", X"ee", X"04", X"fd", X"fb", X"00", X"f7", X"b9", X"fe", X"02", X"01", X"b9", X"06", X"05",
                                                        X"fc", X"01", X"fd", X"ed", X"ff", X"fe", X"fb", X"00", X"f9", X"c0", X"01", X"03", X"01", X"b8", X"02", X"03", X"fa", X"ff", X"fc", X"ef", X"01", X"01", X"fd", X"fd", X"f8", X"be",
                                                        X"fb", X"02", X"01", X"b9", X"01", X"08", X"f9", X"fe", X"ff", X"ea", X"03", X"03", X"fb", X"03", X"f7", X"b9", X"fe", X"01", X"00", X"b8", X"00", X"03", X"fe", X"01", X"02", X"ea",
                                                        X"03", X"01", X"01", X"03", X"f5", X"bc", X"fe", X"04", X"00", X"b9", X"fe", X"01", X"fa", X"02", X"07", X"ef", X"06", X"fe", X"02", X"08", X"f7", X"be", X"01", X"07", X"02", X"bc",
                                                        X"00", X"01", X"00", X"03", X"07", X"ef", X"04", X"ff", X"00", X"02", X"f6", X"c3", X"06", X"fd", X"05", X"b9", X"04", X"02", X"fe", X"06", X"02", X"f1", X"06", X"00", X"00", X"03",
                                                        X"f6", X"c3", X"fb", X"00", X"00", X"b9", X"02", X"04", X"f8", X"05", X"03", X"ef", X"05", X"03", X"fd", X"04", X"f7", X"c4", X"fe", X"fc", X"02", X"be", X"05", X"04", X"f9", X"00",
                                                        X"01", X"ed", X"01", X"ff", X"fe", X"02", X"f8", X"be", X"fc", X"01", X"ff", X"b9", X"03", X"05", X"f8", X"03", X"fe", X"ed", X"01", X"00", X"02", X"08", X"f8", X"b9", X"03", X"04",
                                                        X"02", X"b9", X"09", X"07", X"fb", X"06", X"00", X"f2", X"00", X"00", X"07", X"09", X"f7", X"b9", X"01", X"02", X"03", X"b9", X"05", X"08", X"01", X"05", X"00", X"ee", X"00", X"05",
                                                        X"04", X"07", X"f7", X"c2", X"08", X"03", X"03", X"bb", X"00", X"05", X"04", X"05", X"05", X"ee", X"06", X"ff", X"04", X"08", X"f8", X"b9", X"09", X"04", X"01", X"ba", X"ff", X"03",
                                                        X"fe", X"02", X"06", X"f0", X"01", X"02", X"01", X"09", X"f8", X"c5", X"01", X"00", X"00", X"b9", X"06", X"03", X"fd", X"01", X"03", X"f3", X"07", X"04", X"05", X"03", X"fa", X"c0",
                                                        X"00", X"00", X"04", X"b8", X"0b", X"03", X"fd", X"02", X"ff", X"f1", X"04", X"03", X"02", X"05", X"fb", X"c5", X"ff", X"01", X"05", X"bb", X"08", X"05", X"fa", X"02", X"02", X"f2",
                                                        X"05", X"03", X"00", X"03", X"f9", X"c5", X"05", X"02", X"02", X"c2", X"06", X"08", X"fb", X"04", X"fa", X"ee", X"07", X"00", X"fe", X"05", X"f4", X"c6", X"fd", X"04", X"05", X"c1",
                                                        X"02", X"03", X"fb", X"03", X"fb", X"eb", X"08", X"ff", X"01", X"04", X"f3", X"c8", X"fe", X"04", X"05", X"b9", X"fe", X"00", X"fe", X"06", X"fe", X"eb", X"0b", X"01", X"06", X"03",
                                                        X"f2", X"cb", X"fd", X"06", X"04", X"bc", X"00", X"ff", X"fe", X"05", X"01", X"f3", X"0a", X"00", X"05", X"05", X"f2", X"c3", X"05", X"04", X"06", X"ba", X"fe", X"fe", X"00", X"03",
                                                        X"01", X"f4", X"06", X"ff", X"04", X"04", X"f4", X"b9", X"04", X"05", X"05", X"b9", X"04", X"03", X"fd", X"05", X"ff", X"f4", X"05", X"fd", X"ff", X"04", X"f6", X"b9", X"08", X"01",
                                                        X"02", X"b9", X"fe", X"03", X"ff", X"01", X"ff", X"ed", X"03", X"00", X"01", X"05", X"f8", X"bb", X"07", X"02", X"01", X"b9", X"05", X"02", X"fd", X"04", X"fe", X"f1", X"01", X"fe",
                                                        X"fd", X"02", X"f7", X"c7", X"03", X"00", X"fd", X"bd", X"03", X"02", X"f9", X"01", X"00", X"ee", X"04", X"fd", X"05", X"06", X"f8", X"c1", X"fd", X"00", X"00", X"ba", X"03", X"fe",
                                                        X"fb", X"05", X"06", X"ed", X"00", X"01", X"05", X"07", X"f6", X"ba", X"02", X"fe", X"01", X"b9", X"07", X"02", X"fe", X"03", X"05", X"ef", X"03", X"01", X"04", X"07", X"f6", X"bd",
                                                        X"00", X"02", X"02", X"b9", X"01", X"ff", X"fe", X"04", X"05", X"ee", X"01", X"02", X"06", X"06", X"f7", X"bc", X"06", X"04", X"04", X"b9", X"fc", X"03", X"01", X"03", X"06", X"ee",
                                                        X"05", X"03", X"04", X"05", X"f5", X"c6", X"00", X"09", X"03", X"b9", X"00", X"02", X"01", X"08", X"07", X"ee", X"03", X"00", X"00", X"05", X"f8", X"c6", X"02", X"02", X"03", X"b9",
                                                        X"06", X"04", X"fb", X"03", X"02", X"ec", X"00", X"fe", X"04", X"03", X"f7", X"c9", X"03", X"00", X"ff", X"bc", X"07", X"02", X"fb", X"03", X"00", X"ed", X"04", X"00", X"00", X"01",
                                                        X"fd", X"c8", X"06", X"02", X"fe", X"b9", X"04", X"03", X"fa", X"ff", X"fa", X"ec", X"00", X"fe", X"ff", X"02", X"fa", X"c5", X"03", X"04", X"fe", X"b9", X"06", X"05", X"fc", X"ff",
                                                        X"fe", X"ed", X"04", X"fd", X"02", X"01", X"fa", X"bd", X"ff", X"02", X"04", X"b9", X"06", X"05", X"fe", X"02", X"01", X"ec", X"05", X"ff", X"00", X"02", X"f8", X"c1", X"fe", X"05",
                                                        X"ff", X"b8", X"03", X"07", X"f9", X"04", X"02", X"f1", X"07", X"fd", X"02", X"02", X"f9", X"c3", X"01", X"05", X"01", X"ba", X"01", X"03", X"f9", X"03", X"02", X"f0", X"05", X"00",
                                                        X"02", X"fd", X"f8", X"c0", X"08", X"fe", X"02", X"b9", X"06", X"00", X"fa", X"ff", X"02", X"ee", X"06", X"ff", X"06", X"01", X"f7", X"bb", X"05", X"fe", X"03", X"b9", X"09", X"00",
                                                        X"fd", X"ff", X"02", X"e9", X"09", X"fc", X"00", X"01", X"f4", X"c9", X"04", X"01", X"03", X"b8", X"07", X"00", X"ff", X"02", X"03", X"e8", X"08", X"fc", X"ff", X"ff", X"f2", X"ca",
                                                        X"f5", X"fb", X"02", X"bc", X"06", X"00", X"fa", X"01", X"01", X"eb", X"02", X"fe", X"08", X"ff", X"ef", X"c9", X"f0", X"00", X"02", X"b9", X"05", X"00", X"f8", X"fe", X"03", X"ec",
                                                        X"05", X"fb", X"05", X"02", X"f0", X"be", X"00", X"04", X"00", X"ba", X"02", X"00", X"fe", X"02", X"04", X"ee", X"04", X"ff", X"04", X"ff", X"f1", X"ba", X"03", X"03", X"00", X"b9",
                                                        X"01", X"01", X"00", X"02", X"ff", X"f0", X"07", X"fd", X"ff", X"02", X"f1", X"ba", X"05", X"02", X"04", X"ba", X"00", X"01", X"ff", X"02", X"ff", X"ed", X"05", X"fc", X"02", X"ff",
                                                        X"f3", X"c0", X"ff", X"07", X"00", X"b9", X"03", X"03", X"f8", X"ff", X"ff", X"f2", X"02", X"fe", X"fb", X"fc", X"f5", X"bf", X"f6", X"00", X"00", X"b9", X"04", X"05", X"f8", X"00",
                                                        X"fe", X"ed", X"02", X"ff", X"fe", X"ff", X"f5", X"b9", X"00", X"ff", X"fe", X"b9", X"06", X"05", X"f8", X"01", X"fe", X"ed", X"05", X"02", X"fc", X"ff", X"f5", X"b8", X"08", X"04",
                                                        X"04", X"b8", X"02", X"06", X"f9", X"ff", X"fc", X"ee", X"04", X"03", X"00", X"ff", X"f5", X"b9", X"03", X"02", X"00", X"b8", X"03", X"06", X"f8", X"ff", X"fe", X"eb", X"03", X"fd",
                                                        X"07", X"03", X"f3", X"b8", X"fb", X"06", X"03", X"b8", X"08", X"04", X"ff", X"04", X"fe", X"ed", X"08", X"ff", X"05", X"05", X"f2", X"b9", X"fb", X"05", X"07", X"b8", X"03", X"03",
                                                        X"fd", X"04", X"01", X"ee", X"07", X"fb", X"01", X"05", X"f4", X"bb", X"fb", X"04", X"06", X"b8", X"fe", X"00", X"00", X"04", X"05", X"f0", X"08", X"fd", X"00", X"04", X"f3", X"b9",
                                                        X"ff", X"ff", X"05", X"b8", X"01", X"00", X"ff", X"02", X"03", X"ee", X"07", X"00", X"00", X"03", X"f5", X"bf", X"03", X"ff", X"02", X"b9", X"04", X"04", X"fd", X"00", X"fe", X"ee",
                                                        X"05", X"ff", X"04", X"01", X"f8", X"ba", X"fd", X"03", X"05", X"b8", X"05", X"05", X"fc", X"01", X"00", X"f0", X"08", X"02", X"fd", X"02", X"f8", X"b9", X"fd", X"00", X"04", X"b8",
                                                        X"06", X"02", X"f8", X"05", X"01", X"ef", X"05", X"01", X"06", X"04", X"f7", X"ba", X"05", X"ff", X"03", X"b9", X"05", X"06", X"fb", X"03", X"05", X"f1", X"07", X"01", X"05", X"02",
                                                        X"f7", X"b9", X"06", X"fd", X"04", X"b9", X"0a", X"04", X"f9", X"05", X"fe", X"f6", X"0a", X"01", X"03", X"06", X"f7", X"bb", X"06", X"03", X"03", X"ba", X"05", X"06", X"fd", X"06",
                                                        X"03", X"f8", X"08", X"ff", X"00", X"09", X"f8", X"b9", X"07", X"05", X"07", X"ba", X"02", X"06", X"ff", X"05", X"02", X"f5", X"05", X"03", X"03", X"04", X"f4", X"c1", X"fd", X"08",
                                                        X"03", X"b9", X"03", X"00", X"04", X"06", X"04", X"f1", X"05", X"00", X"05", X"04", X"f7", X"be", X"fc", X"01", X"02", X"bb", X"07", X"00", X"fd", X"03", X"04", X"ef", X"05", X"00",
                                                        X"04", X"05", X"f8", X"b9", X"01", X"02", X"03", X"b8", X"07", X"05", X"fc", X"04", X"ff", X"eb", X"03", X"fe", X"fd", X"05", X"f8", X"bb", X"09", X"ff", X"03", X"bd", X"05", X"08",
                                                        X"fd", X"00", X"fd", X"ec", X"00", X"01", X"00", X"ff", X"f6", X"b9", X"fc", X"02", X"03", X"ba", X"05", X"03", X"fb", X"01", X"fc", X"ed", X"06", X"01", X"01", X"01", X"f4", X"bd",
                                                        X"fb", X"02", X"04", X"b8", X"03", X"02", X"fc", X"ff", X"fe", X"e9", X"05", X"fd", X"01", X"03", X"f2", X"b9", X"fc", X"03", X"02", X"b9", X"01", X"00", X"f7", X"01", X"ff", X"eb",
                                                        X"03", X"fc", X"ff", X"02", X"f2", X"b9", X"00", X"02", X"03", X"b9", X"04", X"02", X"f8", X"01", X"fd", X"e9", X"03", X"f9", X"f9", X"ff", X"f1", X"ba", X"03", X"04", X"00", X"b9",
                                                        X"01", X"00", X"f9", X"fe", X"fd", X"ed", X"00", X"ff", X"ff", X"02", X"f3", X"b9", X"08", X"ff", X"00", X"b9", X"01", X"04", X"f8", X"ff", X"fe", X"ec", X"01", X"fc", X"ff", X"04",
                                                        X"f8", X"b9", X"02", X"fd", X"fe", X"b9", X"01", X"fe", X"f7", X"03", X"fe", X"e9", X"ff", X"fb", X"01", X"05", X"f7", X"b9", X"fa", X"fe", X"ff", X"b9", X"00", X"02", X"f4", X"03",
                                                        X"04", X"ed", X"04", X"f9", X"ff", X"05", X"f6", X"b8", X"f7", X"09", X"05", X"b9", X"fd", X"07", X"f8", X"07", X"04", X"ee", X"04", X"fd");
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
