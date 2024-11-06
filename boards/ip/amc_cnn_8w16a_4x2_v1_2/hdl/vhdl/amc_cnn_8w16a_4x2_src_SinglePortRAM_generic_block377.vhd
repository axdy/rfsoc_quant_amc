-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block377.vhd
-- Created: 2024-11-05 16:19:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block377
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage27/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block377 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block377;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block377 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"07", X"07", X"f2", X"b9", X"fd", X"0d", X"0b", X"b9", X"02", X"0c", X"01", X"0b", X"0c", X"04",
                                                        X"04", X"04", X"05", X"05", X"f4", X"b9", X"fc", X"06", X"03", X"b9", X"05", X"03", X"f9", X"05", X"04", X"fe", X"00", X"fe", X"ff", X"fe", X"f9", X"ba", X"02", X"02", X"00", X"b9",
                                                        X"fe", X"04", X"f7", X"fe", X"02", X"f6", X"fe", X"fd", X"02", X"fd", X"fb", X"b9", X"04", X"01", X"fe", X"ba", X"03", X"00", X"f8", X"ff", X"fe", X"f4", X"02", X"fd", X"ff", X"03",
                                                        X"f8", X"b9", X"05", X"04", X"00", X"bb", X"03", X"ff", X"fa", X"03", X"02", X"f2", X"fd", X"fd", X"04", X"04", X"fa", X"b9", X"07", X"03", X"03", X"b9", X"06", X"03", X"f8", X"02",
                                                        X"02", X"fa", X"03", X"ff", X"01", X"01", X"fb", X"b9", X"06", X"00", X"03", X"b9", X"08", X"08", X"fe", X"08", X"05", X"f7", X"01", X"02", X"fc", X"03", X"f9", X"b9", X"01", X"fd",
                                                        X"02", X"b9", X"04", X"05", X"ff", X"04", X"06", X"fb", X"04", X"03", X"05", X"04", X"fc", X"bd", X"ff", X"00", X"06", X"b9", X"07", X"03", X"ff", X"07", X"07", X"f8", X"06", X"00",
                                                        X"04", X"04", X"fc", X"b9", X"fc", X"03", X"01", X"b9", X"0a", X"07", X"fc", X"03", X"05", X"fd", X"02", X"ff", X"00", X"ff", X"fe", X"bb", X"02", X"ff", X"05", X"b9", X"05", X"06",
                                                        X"fe", X"04", X"03", X"fa", X"05", X"ff", X"fb", X"01", X"f7", X"b9", X"07", X"03", X"01", X"b9", X"06", X"06", X"fa", X"04", X"04", X"fb", X"02", X"03", X"02", X"01", X"f9", X"ba",
                                                        X"05", X"fb", X"ff", X"ba", X"06", X"02", X"fc", X"03", X"06", X"fb", X"05", X"01", X"05", X"04", X"fb", X"bc", X"03", X"01", X"00", X"bb", X"09", X"07", X"fc", X"06", X"03", X"f7",
                                                        X"02", X"02", X"03", X"04", X"f8", X"b9", X"03", X"ff", X"01", X"b9", X"04", X"04", X"fc", X"06", X"06", X"fb", X"00", X"fe", X"04", X"00", X"f6", X"b9", X"fe", X"05", X"02", X"b9",
                                                        X"03", X"06", X"fe", X"02", X"05", X"f9", X"04", X"fd", X"00", X"00", X"fa", X"b9", X"fd", X"04", X"fe", X"b9", X"04", X"03", X"f8", X"00", X"ff", X"f9", X"01", X"00", X"fd", X"01",
                                                        X"f9", X"b8", X"01", X"fe", X"00", X"b9", X"04", X"06", X"f8", X"ff", X"ff", X"fb", X"ff", X"fd", X"ff", X"ff", X"fb", X"b9", X"05", X"00", X"01", X"b9", X"05", X"02", X"f9", X"01",
                                                        X"00", X"f7", X"ff", X"fb", X"02", X"fc", X"fa", X"b9", X"01", X"01", X"02", X"b8", X"07", X"06", X"f7", X"ff", X"01", X"f6", X"01", X"fc", X"03", X"fc", X"f4", X"b8", X"fa", X"00",
                                                        X"ff", X"b8", X"07", X"01", X"fa", X"00", X"05", X"f5", X"00", X"fd", X"03", X"ff", X"f6", X"b8", X"00", X"02", X"00", X"b8", X"02", X"01", X"00", X"ff", X"04", X"f6", X"00", X"f7",
                                                        X"09", X"fe", X"f2", X"b8", X"08", X"ff", X"fd", X"b9", X"fa", X"01", X"ff", X"00", X"ff", X"f5", X"04", X"f6", X"05", X"ff", X"f2", X"b9", X"01", X"01", X"01", X"b8", X"ff", X"ff",
                                                        X"fc", X"fd", X"07", X"f5", X"ff", X"fb", X"ff", X"fb", X"f2", X"b8", X"00", X"ff", X"01", X"b9", X"fd", X"03", X"f7", X"02", X"02", X"f5", X"02", X"fc", X"fe", X"fd", X"f8", X"b9",
                                                        X"03", X"00", X"fd", X"b8", X"ff", X"03", X"f6", X"fe", X"03", X"f7", X"fd", X"fc", X"fb", X"fe", X"f6", X"b9", X"0d", X"00", X"fb", X"b9", X"03", X"01", X"f5", X"fc", X"fe", X"f6",
                                                        X"fd", X"fc", X"00", X"fa", X"f9", X"bb", X"08", X"fe", X"fc", X"b9", X"04", X"ff", X"f4", X"fc", X"fc", X"f2", X"01", X"fc", X"05", X"ff", X"f7", X"ba", X"fd", X"fd", X"fc", X"b9",
                                                        X"03", X"01", X"f4", X"fd", X"ff", X"f2", X"00", X"f7", X"01", X"fe", X"f4", X"b9", X"fe", X"05", X"fc", X"b9", X"00", X"fd", X"fa", X"01", X"ff", X"f2", X"02", X"fb", X"04", X"ff",
                                                        X"f3", X"b9", X"04", X"02", X"fd", X"b9", X"00", X"ff", X"ff", X"ff", X"04", X"f6", X"fd", X"fb", X"01", X"00", X"f2", X"b9", X"01", X"02", X"01", X"b9", X"02", X"fe", X"fd", X"00",
                                                        X"03", X"f5", X"00", X"fb", X"04", X"01", X"f7", X"b8", X"02", X"05", X"fc", X"b9", X"06", X"fd", X"fb", X"ff", X"fe", X"f6", X"00", X"fd", X"02", X"00", X"f8", X"b8", X"02", X"fd",
                                                        X"fd", X"b9", X"08", X"04", X"fd", X"02", X"02", X"f5", X"fd", X"fc", X"ff", X"ff", X"fa", X"b9", X"fe", X"fe", X"fd", X"b9", X"00", X"00", X"ff", X"fe", X"02", X"fa", X"fd", X"00",
                                                        X"00", X"00", X"f7", X"b9", X"f9", X"ff", X"01", X"b9", X"01", X"ff", X"fc", X"02", X"02", X"f6", X"fe", X"00", X"05", X"03", X"f9", X"b9", X"f6", X"01", X"02", X"b9", X"00", X"01",
                                                        X"fa", X"02", X"04", X"f7", X"01", X"00", X"03", X"03", X"f7", X"b9", X"ff", X"fe", X"04", X"b9", X"04", X"05", X"00", X"01", X"08", X"f5", X"01", X"00", X"06", X"00", X"f9", X"ba",
                                                        X"06", X"ff", X"05", X"b9", X"02", X"01", X"ff", X"02", X"07", X"f5", X"01", X"01", X"00", X"04", X"f6", X"bc", X"05", X"03", X"02", X"ba", X"02", X"03", X"ff", X"04", X"06", X"f7",
                                                        X"ff", X"fc", X"01", X"fe", X"f5", X"b9", X"08", X"04", X"ff", X"b9", X"01", X"02", X"ff", X"00", X"02", X"fb", X"02", X"fe", X"05", X"02", X"fa", X"b8", X"09", X"04", X"02", X"b9",
                                                        X"02", X"03", X"fc", X"03", X"04", X"f9", X"00", X"ff", X"ff", X"fe", X"f9", X"bc", X"06", X"00", X"02", X"b9", X"06", X"04", X"fc", X"01", X"02", X"f7", X"05", X"fe", X"03", X"fe",
                                                        X"fb", X"bf", X"01", X"04", X"02", X"b9", X"0a", X"05", X"f5", X"05", X"01", X"fa", X"02", X"fd", X"09", X"fe", X"fb", X"bb", X"07", X"03", X"02", X"bd", X"0a", X"04", X"f7", X"05",
                                                        X"01", X"fb", X"01", X"01", X"05", X"00", X"f8", X"b9", X"03", X"03", X"03", X"b9", X"04", X"01", X"fb", X"03", X"01", X"f8", X"06", X"fc", X"ff", X"fe", X"f4", X"ba", X"02", X"07",
                                                        X"ff", X"ba", X"ff", X"ff", X"fe", X"04", X"03", X"fa", X"01", X"fe", X"04", X"fe", X"f4", X"ba", X"fd", X"06", X"03", X"bb", X"ff", X"ff", X"fd", X"ff", X"03", X"f7", X"03", X"fc",
                                                        X"02", X"02", X"f9", X"ba", X"f9", X"00", X"01", X"b9", X"04", X"03", X"fe", X"02", X"03", X"f6", X"02", X"fd", X"fe", X"01", X"fc", X"b9", X"06", X"ff", X"fd", X"b9", X"07", X"01",
                                                        X"fa", X"ff", X"04", X"fb", X"fc", X"fb", X"fc", X"ff", X"ff", X"bc", X"05", X"01", X"fd", X"b9", X"06", X"02", X"fb", X"ff", X"04", X"f9", X"f9", X"fa", X"fb", X"00", X"fd", X"bb",
                                                        X"fd", X"ff", X"ff", X"b9", X"07", X"05", X"f7", X"fd", X"00", X"f2", X"fd", X"fd", X"fd", X"fe", X"fa", X"b9", X"fc", X"01", X"ff", X"b8", X"06", X"00", X"f8", X"02", X"02", X"f7",
                                                        X"01", X"fd", X"02", X"03", X"fb", X"b8", X"09", X"01", X"03", X"b9", X"04", X"00", X"fe", X"04", X"01", X"f5", X"00", X"fd", X"04", X"06", X"f9", X"b8", X"09", X"04", X"03", X"b8",
                                                        X"04", X"05", X"fe", X"06", X"05", X"fd", X"ff", X"02", X"01", X"07", X"fc", X"b8", X"0c", X"01", X"08", X"ba", X"05", X"05", X"00", X"04", X"05", X"fb", X"04", X"05", X"05", X"05",
                                                        X"fc", X"b9", X"ff", X"02", X"02", X"bb", X"05", X"06", X"00", X"07", X"04", X"fd", X"05", X"06", X"00", X"03", X"fd", X"b9", X"08", X"02", X"01", X"b9", X"04", X"09", X"fd", X"07",
                                                        X"01", X"ff", X"07", X"06", X"fd", X"01", X"fb", X"b9", X"06", X"04", X"03", X"b8", X"08", X"09", X"fc", X"08", X"02", X"fe", X"04", X"07", X"02", X"06", X"fd", X"b9", X"09", X"05",
                                                        X"03", X"b9", X"09", X"0a", X"fc", X"05", X"ff", X"fe", X"05", X"06", X"09", X"03", X"fc", X"bc", X"01", X"05", X"04", X"b8", X"03", X"05", X"01", X"05", X"03", X"fd", X"00", X"05",
                                                        X"07", X"05", X"fb", X"bd", X"04", X"08", X"02", X"b9", X"04", X"04", X"fe", X"03", X"08", X"fd", X"05", X"00", X"04", X"04", X"f8", X"bd", X"09", X"03", X"04", X"b9", X"f9", X"04",
                                                        X"02", X"02", X"07", X"fa", X"04", X"ff", X"06", X"08", X"f8", X"bf", X"07", X"03", X"05", X"be", X"04", X"ff", X"02", X"02", X"04", X"fd", X"05", X"fd", X"0a", X"03", X"fb", X"b9",
                                                        X"04", X"06", X"04", X"b9", X"06", X"04", X"ff", X"03", X"02", X"fb", X"01", X"fe", X"02", X"03", X"fa", X"b9", X"06", X"00", X"05", X"b9", X"08", X"05", X"fc", X"02", X"01", X"fa",
                                                        X"00", X"ff", X"fb", X"03", X"fa", X"bd", X"04", X"03", X"00", X"ba", X"05", X"05", X"f9", X"00", X"fe", X"fc", X"ff", X"02", X"fb", X"00", X"f6", X"b9", X"f8", X"02", X"01", X"bb",
                                                        X"03", X"04", X"fd", X"02", X"fd", X"f5", X"00", X"01", X"00", X"02", X"f7", X"b9", X"fb", X"04", X"04", X"b9", X"03", X"02", X"fc", X"02", X"03", X"f7", X"02", X"fe", X"02", X"00",
                                                        X"f9", X"bc", X"03", X"ff", X"05", X"b9", X"fe", X"02", X"fe", X"00", X"03", X"fa", X"03", X"fd", X"05", X"05", X"f7", X"b9", X"03", X"03", X"01", X"b9", X"04", X"04", X"fb", X"01",
                                                        X"03", X"fd", X"02", X"ff", X"04", X"07", X"fa", X"b8", X"08", X"01", X"05", X"b9", X"ff", X"04", X"01", X"01", X"05", X"fb", X"fe", X"00", X"fd", X"03", X"f7", X"b9", X"03", X"03",
                                                        X"ff", X"b9", X"00", X"04", X"fe", X"01", X"06", X"f8", X"00", X"01", X"fd", X"05", X"f8", X"b9", X"08", X"01", X"01", X"b9", X"02", X"06", X"ff", X"03", X"08", X"fb", X"02", X"fd",
                                                        X"fe", X"ff", X"f9", X"be", X"0b", X"ff", X"02", X"b9", X"01", X"02", X"fc", X"02", X"06", X"f7", X"01", X"ff", X"07", X"03", X"f9", X"bb", X"09", X"fe", X"fd", X"bb", X"08", X"04",
                                                        X"fc", X"02", X"04", X"fa", X"00", X"01", X"0c", X"01", X"fd", X"ba", X"0c", X"fc", X"ff", X"b9", X"08", X"02", X"fa", X"02", X"00", X"f9", X"02", X"ff", X"07", X"01", X"f9", X"b9",
                                                        X"04", X"03", X"ff", X"b9", X"0b", X"fe", X"ff", X"02", X"ff", X"f8", X"00", X"ff", X"07", X"00", X"f9", X"b9", X"0c", X"09", X"02", X"b9", X"02", X"01", X"ff", X"01", X"02", X"f7",
                                                        X"05", X"01", X"0c", X"02", X"f7", X"b9", X"03", X"07", X"02", X"b9", X"01", X"06", X"00", X"00", X"00", X"f7", X"02", X"fd", X"03", X"02", X"f9", X"b8", X"06", X"03", X"01", X"b8",
                                                        X"06", X"05", X"fe", X"01", X"fa", X"f4", X"ff", X"fd", X"02", X"01", X"fa", X"b9", X"00", X"02", X"fd", X"b9", X"04", X"01", X"fb", X"00", X"f9", X"f5", X"fd", X"fa", X"fa", X"fd",
                                                        X"f9", X"bb", X"02", X"03", X"fb", X"b9", X"00", X"fe", X"f8", X"fe", X"ff", X"f7", X"00", X"fb", X"fa", X"fe", X"f7", X"be", X"01", X"04", X"fe", X"b9", X"02", X"01", X"f7", X"ff",
                                                        X"01", X"f1", X"fc", X"fb", X"02", X"fd", X"f2", X"ba", X"fe", X"02", X"fc", X"b9", X"04", X"ff", X"f6", X"fd", X"00", X"f5", X"00", X"fb", X"04", X"fe", X"f5", X"b9", X"fd", X"04",
                                                        X"fd", X"b9", X"01", X"00", X"f7", X"00", X"01", X"f8", X"ff", X"fc", X"04", X"02", X"f5", X"b9", X"fe", X"05", X"fd", X"b9", X"ff", X"00", X"f7", X"04", X"03", X"f8", X"01", X"fa",
                                                        X"08", X"05", X"f9", X"b9", X"fe", X"ff", X"04", X"b9", X"01", X"03", X"f8", X"03", X"06", X"f9", X"fe", X"fd", X"06", X"05", X"f7", X"b9", X"fd", X"ff", X"04", X"b9", X"05", X"03",
                                                        X"f9", X"06", X"06", X"fe", X"ff", X"fe", X"fa", X"07", X"fc", X"b8", X"04", X"04", X"00", X"b9", X"06", X"03", X"f9", X"05", X"06", X"f6", X"fc", X"fe", X"ff", X"07", X"fb", X"b9",
                                                        X"00", X"fd", X"01", X"bb", X"08", X"04", X"f8", X"01", X"06", X"fa", X"fb", X"03", X"03", X"04", X"f9", X"b8", X"ff", X"ff", X"00", X"bb", X"0b", X"07", X"fc", X"05", X"07", X"fa",
                                                        X"fc", X"02", X"09", X"05", X"fc", X"b9", X"0a", X"02", X"05", X"ba", X"0a", X"05", X"02", X"04", X"01", X"f8", X"03", X"02", X"08", X"08", X"fc", X"b8", X"0b", X"05", X"07", X"b9",
                                                        X"0a", X"08", X"01", X"03", X"04", X"fc", X"03", X"03", X"08", X"0b", X"fb", X"b9", X"0f", X"04", X"09", X"b9", X"07", X"0b", X"04", X"0a", X"04", X"00", X"05", X"04", X"09", X"08",
                                                        X"ff", X"b9", X"03", X"08", X"0c", X"b9", X"09", X"0c", X"fe", X"08", X"05", X"01", X"02", X"07", X"06", X"09", X"02", X"b9", X"fe", X"05", X"08", X"b9", X"06", X"0f", X"ff", X"09",
                                                        X"08", X"04", X"06", X"09", X"03", X"07", X"06", X"b9", X"06", X"ff", X"0a", X"b9", X"0b", X"10", X"fc", X"09", X"05", X"02", X"03", X"07", X"01", X"09", X"01", X"bd", X"07", X"fd",
                                                        X"09", X"b9", X"09", X"0d", X"fa", X"0c", X"08", X"04", X"05", X"09", X"03", X"07", X"00", X"c3", X"04", X"02", X"07", X"ba", X"0d", X"0b", X"fd", X"09", X"06", X"fe", X"03", X"07",
                                                        X"07", X"08", X"03", X"ba", X"03", X"02", X"05", X"be", X"0d", X"06", X"fd", X"0b", X"05", X"fb", X"08", X"08", X"07", X"0b", X"03", X"b8", X"0c", X"ff", X"06", X"b8", X"08", X"08",
                                                        X"fd", X"0b", X"06", X"ff", X"03", X"03", X"07", X"0a", X"00", X"b8", X"07", X"06", X"08", X"b9", X"07", X"07", X"02", X"08", X"05", X"02", X"02", X"05", X"07", X"0b", X"fd", X"bb",
                                                        X"09", X"00", X"04", X"be", X"04", X"08", X"ff", X"09", X"05", X"fd", X"00", X"01", X"03", X"06", X"fe", X"c1", X"09", X"fe", X"04", X"bc", X"07", X"05", X"fe", X"04", X"01", X"fc",
                                                        X"01", X"03", X"01", X"04", X"fb", X"c3", X"07", X"01", X"ff", X"bc", X"04", X"03", X"fa", X"03", X"02", X"f8", X"ff", X"01", X"01", X"00", X"fd", X"c0", X"03", X"fe", X"03", X"bb",
                                                        X"04", X"00", X"fc", X"02", X"00", X"f4", X"fe", X"00", X"03", X"00", X"fa", X"bd", X"06", X"fe", X"01", X"bf", X"fe", X"ff", X"f8", X"00", X"04", X"f5", X"fd", X"fd", X"03", X"05",
                                                        X"f6", X"ba", X"04", X"00", X"ff", X"c0", X"02", X"02", X"f8", X"04", X"04", X"f4", X"fc", X"fa", X"06", X"02", X"f3", X"b9", X"07", X"00", X"fe", X"b9", X"04", X"00", X"fb", X"03",
                                                        X"00", X"f3", X"fc", X"fc", X"02", X"07", X"f4", X"b9", X"05", X"02", X"ff", X"b9", X"fe", X"ff", X"00", X"00", X"02", X"f5", X"fb", X"f8", X"03", X"06", X"f6", X"b9", X"fe", X"03",
                                                        X"fe", X"b9", X"01", X"fd", X"fd", X"03", X"02", X"f6", X"fb", X"fb", X"02", X"05", X"f5", X"b9", X"fc", X"ff", X"00", X"b9", X"01", X"03", X"fa", X"03", X"04", X"f7", X"ff", X"fd",
                                                        X"fd", X"00", X"f5", X"b8", X"05", X"00", X"fb", X"b9", X"02", X"01", X"fb", X"03", X"01", X"f6", X"fc", X"f8", X"fa", X"ff", X"f9", X"b9", X"0a", X"fd", X"fb", X"b9", X"ff", X"05",
                                                        X"f6", X"02", X"fe", X"f6", X"fc", X"ff", X"01", X"00", X"fa", X"b8", X"f9", X"fe", X"ff", X"b9", X"07", X"00", X"f5", X"00", X"01", X"f2", X"00", X"fe", X"01", X"03", X"f7", X"b8",
                                                        X"f9", X"00", X"03", X"b8", X"04", X"04", X"fb", X"ff", X"06", X"f5", X"02", X"fc", X"04", X"01", X"f4", X"b9", X"04", X"02", X"00", X"b9", X"02", X"05", X"fa", X"02", X"06", X"f8",
                                                        X"03", X"fc", X"02", X"01", X"f5", X"b9", X"03", X"02", X"00", X"b9", X"00", X"00", X"ff", X"01", X"04", X"fa", X"05", X"fe", X"02", X"03", X"f7", X"b9", X"04", X"02", X"01", X"b9",
                                                        X"01", X"00", X"fa", X"01", X"01", X"f9", X"04", X"fc", X"fd", X"06", X"f5", X"ba", X"00", X"05", X"02", X"b9", X"ff", X"05", X"fa", X"01", X"04", X"fb", X"02", X"fe", X"00", X"03",
                                                        X"fa", X"b9", X"fd", X"08", X"02", X"b9", X"00", X"01", X"fa", X"05", X"06", X"fa", X"fd", X"ff", X"ff", X"05", X"fb", X"b9", X"01", X"04", X"03", X"b8", X"06", X"04", X"f8", X"08",
                                                        X"03", X"fd", X"01", X"fc", X"04", X"07", X"fe", X"b9", X"09", X"08", X"00", X"b9", X"08", X"08", X"f8", X"0d", X"05", X"00", X"02", X"03");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"03";
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

