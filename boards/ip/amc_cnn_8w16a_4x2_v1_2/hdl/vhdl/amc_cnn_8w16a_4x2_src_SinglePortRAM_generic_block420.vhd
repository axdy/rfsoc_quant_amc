-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block420.vhd
-- Created: 2024-11-05 16:19:20
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block420
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage66/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block420 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block420;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block420 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00",
                                                        X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"00", X"1e", X"fb", X"06", X"08", X"12", X"f8", X"f7", X"f8", X"10", X"f4", X"0b", X"fe", X"02", X"09",
                                                        X"fa", X"03", X"14", X"fc", X"04", X"0e", X"04", X"fa", X"fd", X"fe", X"11", X"f8", X"09", X"02", X"ff", X"09", X"fe", X"05", X"13", X"fd", X"05", X"08", X"00", X"fe", X"fd", X"fb",
                                                        X"11", X"fd", X"0c", X"00", X"fd", X"04", X"fe", X"03", X"0f", X"f9", X"03", X"0b", X"08", X"fe", X"f8", X"fb", X"10", X"f9", X"0d", X"00", X"f9", X"04", X"f9", X"05", X"0e", X"01",
                                                        X"08", X"0a", X"0e", X"00", X"fc", X"fb", X"10", X"fa", X"0a", X"03", X"fc", X"02", X"ff", X"ff", X"13", X"fa", X"06", X"0c", X"0d", X"fb", X"fc", X"08", X"0e", X"f8", X"09", X"fb",
                                                        X"f8", X"06", X"fe", X"03", X"10", X"fa", X"08", X"11", X"09", X"01", X"f7", X"07", X"15", X"f4", X"08", X"fe", X"f7", X"06", X"fd", X"04", X"12", X"fc", X"08", X"08", X"00", X"fb",
                                                        X"fb", X"fb", X"13", X"fb", X"0d", X"ff", X"fc", X"01", X"fc", X"02", X"0f", X"f9", X"07", X"07", X"0a", X"00", X"fb", X"07", X"15", X"fe", X"0c", X"ff", X"fb", X"06", X"fa", X"05",
                                                        X"0d", X"fc", X"08", X"08", X"07", X"00", X"f9", X"fe", X"13", X"fa", X"08", X"ff", X"01", X"09", X"ff", X"00", X"0c", X"fb", X"09", X"0b", X"05", X"00", X"fb", X"fd", X"10", X"f6",
                                                        X"03", X"01", X"01", X"09", X"ff", X"03", X"13", X"fa", X"08", X"0a", X"02", X"01", X"00", X"fc", X"0d", X"f9", X"08", X"fe", X"01", X"07", X"fd", X"02", X"17", X"02", X"0a", X"0a",
                                                        X"07", X"01", X"fd", X"fd", X"0f", X"f7", X"0b", X"00", X"03", X"0c", X"fc", X"03", X"16", X"fd", X"0c", X"0f", X"06", X"f8", X"fc", X"02", X"0e", X"f8", X"0b", X"ff", X"02", X"0c",
                                                        X"ff", X"02", X"19", X"ff", X"07", X"0a", X"03", X"fa", X"ff", X"ff", X"16", X"f9", X"0a", X"fe", X"ff", X"09", X"fc", X"02", X"14", X"fd", X"06", X"0d", X"02", X"fa", X"f9", X"06",
                                                        X"17", X"f8", X"08", X"fe", X"fb", X"0b", X"ff", X"04", X"0b", X"fd", X"09", X"10", X"05", X"fb", X"f8", X"04", X"0f", X"f7", X"0b", X"fe", X"fe", X"07", X"fb", X"05", X"13", X"fb",
                                                        X"0c", X"0b", X"fe", X"fa", X"fd", X"fd", X"10", X"f9", X"07", X"ff", X"ff", X"0b", X"fc", X"06", X"14", X"fe", X"08", X"0b", X"06", X"fd", X"fe", X"f8", X"0e", X"fc", X"0c", X"01",
                                                        X"ff", X"04", X"f9", X"03", X"10", X"fd", X"09", X"0b", X"15", X"ff", X"fd", X"03", X"13", X"fc", X"0d", X"ff", X"f7", X"04", X"fe", X"01", X"12", X"f9", X"06", X"02", X"0c", X"fd",
                                                        X"fc", X"04", X"0d", X"f9", X"10", X"00", X"fc", X"08", X"fc", X"06", X"11", X"f9", X"05", X"09", X"06", X"02", X"fa", X"04", X"12", X"fb", X"06", X"fc", X"fe", X"06", X"fd", X"01",
                                                        X"0e", X"fb", X"06", X"0e", X"0b", X"fc", X"fb", X"00", X"0e", X"fa", X"08", X"02", X"02", X"09", X"ff", X"04", X"0c", X"fd", X"05", X"0b", X"07", X"fc", X"fd", X"04", X"12", X"fe",
                                                        X"05", X"02", X"ff", X"06", X"fc", X"07", X"0d", X"fd", X"0a", X"08", X"0a", X"ff", X"03", X"04", X"12", X"fd", X"07", X"04", X"01", X"0c", X"fd", X"02", X"12", X"fc", X"07", X"07",
                                                        X"0f", X"fe", X"fd", X"fc", X"0d", X"f8", X"0c", X"01", X"03", X"06", X"fd", X"05", X"11", X"f8", X"09", X"13", X"0a", X"fe", X"ff", X"00", X"11", X"f6", X"0a", X"01", X"03", X"06",
                                                        X"fd", X"03", X"10", X"fb", X"08", X"0e", X"06", X"f7", X"00", X"fe", X"15", X"f8", X"0b", X"fb", X"fc", X"06", X"ff", X"fd", X"12", X"fb", X"06", X"0e", X"07", X"fa", X"fb", X"fb",
                                                        X"13", X"f8", X"0c", X"fd", X"fd", X"07", X"fc", X"ff", X"0e", X"fb", X"05", X"07", X"06", X"00", X"fd", X"fa", X"13", X"f5", X"07", X"fc", X"00", X"00", X"ff", X"01", X"0f", X"fa",
                                                        X"01", X"11", X"04", X"fd", X"fa", X"06", X"0f", X"f6", X"06", X"ff", X"fd", X"fe", X"fa", X"04", X"0e", X"fc", X"03", X"0a", X"08", X"f9", X"fd", X"02", X"15", X"f7", X"08", X"01",
                                                        X"f9", X"00", X"fd", X"03", X"0f", X"fb", X"07", X"05", X"0a", X"03", X"fb", X"01", X"15", X"f8", X"07", X"03", X"fa", X"03", X"fa", X"ff", X"10", X"fb", X"08", X"07", X"08", X"fd",
                                                        X"fe", X"01", X"12", X"f6", X"07", X"00", X"01", X"06", X"fb", X"fe", X"14", X"fa", X"07", X"00", X"07", X"02", X"fc", X"fc", X"10", X"f9", X"0b", X"ff", X"fb", X"05", X"fe", X"ff",
                                                        X"19", X"f9", X"04", X"03", X"00", X"fe", X"fa", X"fc", X"13", X"fb", X"07", X"00", X"ff", X"07", X"fa", X"fd", X"12", X"f9", X"09", X"0b", X"0a", X"fc", X"00", X"fe", X"0a", X"f7",
                                                        X"0d", X"fe", X"01", X"06", X"fd", X"01", X"14", X"ff", X"09", X"0a", X"0c", X"00", X"fb", X"f9", X"0e", X"fb", X"07", X"02", X"ff", X"05", X"fb", X"00", X"14", X"fe", X"08", X"0e",
                                                        X"05", X"fc", X"fa", X"04", X"10", X"fb", X"05", X"fe", X"ff", X"04", X"ff", X"00", X"11", X"fc", X"08", X"0c", X"07", X"fe", X"ff", X"01", X"0e", X"fc", X"04", X"fe", X"fc", X"04",
                                                        X"fe", X"00", X"0e", X"fa", X"08", X"0c", X"08", X"fa", X"fe", X"04", X"12", X"fc", X"0a", X"01", X"00", X"06", X"fc", X"ff", X"10", X"fc", X"06", X"06", X"05", X"00", X"fd", X"fd",
                                                        X"0f", X"f8", X"08", X"fe", X"fb", X"03", X"fd", X"00", X"12", X"fd", X"08", X"0a", X"08", X"00", X"fd", X"ff", X"14", X"f5", X"0c", X"00", X"fd", X"01", X"00", X"04", X"17", X"fb",
                                                        X"06", X"09", X"03", X"02", X"fa", X"fa", X"0b", X"f5", X"06", X"02", X"fd", X"07", X"fc", X"02", X"11", X"f9", X"05", X"02", X"04", X"fd", X"fa", X"f6", X"0c", X"f4", X"04", X"fe",
                                                        X"fe", X"06", X"fb", X"fd", X"0d", X"fb", X"05", X"04", X"07", X"fb", X"f8", X"fb", X"0a", X"f5", X"08", X"fb", X"f7", X"02", X"f9", X"fc", X"12", X"fd", X"04", X"06", X"fc", X"f9",
                                                        X"fc", X"fc", X"08", X"f8", X"06", X"fc", X"fb", X"ff", X"fb", X"01", X"0b", X"f8", X"03", X"00", X"04", X"00", X"fa", X"fd", X"0b", X"f8", X"0b", X"fe", X"f8", X"00", X"fd", X"04",
                                                        X"0c", X"f8", X"fc", X"02", X"00", X"00", X"fa", X"fd", X"0b", X"fb", X"07", X"fd", X"fb", X"06", X"fc", X"05", X"0b", X"fa", X"04", X"0a", X"04", X"f9", X"fa", X"07", X"0b", X"f7",
                                                        X"04", X"01", X"f9", X"04", X"fb", X"00", X"0d", X"fb", X"0a", X"07", X"01", X"f9", X"f8", X"00", X"10", X"f9", X"07", X"fb", X"fc", X"00", X"fb", X"fc", X"0d", X"fc", X"09", X"0a",
                                                        X"0a", X"ff", X"f9", X"09", X"0e", X"f5", X"0c", X"f9", X"fc", X"03", X"fc", X"01", X"11", X"fa", X"ff", X"02", X"05", X"f9", X"fb", X"fe", X"0d", X"f5", X"0d", X"01", X"fd", X"04",
                                                        X"fd", X"00", X"16", X"fe", X"00", X"0e", X"09", X"f8", X"fb", X"ff", X"0c", X"f3", X"09", X"01", X"ff", X"05", X"fa", X"00", X"12", X"fe", X"04", X"12", X"07", X"fb", X"fc", X"02",
                                                        X"10", X"f7", X"04", X"00", X"fe", X"06", X"fc", X"00", X"12", X"fc", X"08", X"12", X"05", X"f9", X"fa", X"06", X"0c", X"f9", X"09", X"fd", X"fb", X"05", X"fc", X"fd", X"0e", X"01",
                                                        X"02", X"0f", X"09", X"fd", X"fa", X"04", X"10", X"fa", X"0d", X"fe", X"fc", X"09", X"fb", X"ff", X"13", X"f9", X"06", X"09", X"0b", X"00", X"f9", X"fc", X"0e", X"f9", X"08", X"fd",
                                                        X"fc", X"07", X"00", X"02", X"14", X"f8", X"0b", X"0b", X"0c", X"fe", X"fe", X"01", X"10", X"fb", X"06", X"ff", X"fc", X"08", X"01", X"fe", X"13", X"fc", X"09", X"0a", X"0b", X"fa",
                                                        X"fe", X"f8", X"0e", X"f9", X"03", X"01", X"00", X"07", X"ff", X"fe", X"14", X"f6", X"07", X"15", X"09", X"f9", X"00", X"03", X"0b", X"f8", X"09", X"ff", X"fd", X"06", X"00", X"fe",
                                                        X"0d", X"fd", X"03", X"0b", X"09", X"fe", X"fa", X"06", X"08", X"f8", X"0a", X"ff", X"ff", X"03", X"ff", X"02", X"12", X"f8", X"07", X"07", X"03", X"fc", X"fc", X"fd", X"0f", X"f9",
                                                        X"05", X"fd", X"fc", X"08", X"fb", X"ff", X"15", X"fb", X"05", X"05", X"08", X"fc", X"fb", X"fb", X"10", X"ff", X"05", X"01", X"00", X"08", X"fc", X"00", X"0b", X"fa", X"03", X"01",
                                                        X"04", X"fb", X"fd", X"f3", X"0d", X"fc", X"09", X"00", X"fe", X"09", X"fe", X"05", X"13", X"fd", X"03", X"10", X"05", X"00", X"fb", X"04", X"0d", X"f4", X"08", X"04", X"fc", X"04",
                                                        X"fa", X"03", X"16", X"fb", X"07", X"0e", X"05", X"fc", X"fc", X"04", X"0f", X"f4", X"02", X"02", X"fc", X"06", X"fc", X"01", X"12", X"fb", X"09", X"0c", X"02", X"f7", X"fa", X"04",
                                                        X"0e", X"f5", X"07", X"fe", X"f8", X"03", X"f9", X"fe", X"0a", X"fb", X"0d", X"10", X"02", X"fd", X"fa", X"ff", X"08", X"f3", X"03", X"fe", X"f8", X"05", X"f7", X"fd", X"12", X"ff",
                                                        X"05", X"0a", X"04", X"fc", X"f8", X"fa", X"0b", X"f8", X"06", X"fe", X"ff", X"03", X"f7", X"00", X"0f", X"fc", X"0a", X"0e", X"04", X"fd", X"fb", X"fd", X"0b", X"f5", X"04", X"fc",
                                                        X"fc", X"02", X"f7", X"ff", X"0d", X"fa", X"06", X"0b", X"09", X"fb", X"fa", X"fe", X"0d", X"f8", X"06", X"fb", X"fd", X"03", X"fd", X"ff", X"0c", X"fc", X"07", X"0b", X"02", X"01",
                                                        X"fc", X"00", X"09", X"f3", X"08", X"fe", X"f9", X"04", X"f8", X"fe", X"11", X"fa", X"08", X"01", X"03", X"ff", X"fe", X"fa", X"0b", X"f4", X"06", X"fd", X"f9", X"03", X"fa", X"ff",
                                                        X"14", X"fb", X"05", X"08", X"04", X"ff", X"00", X"fd", X"0b", X"f8", X"08", X"fd", X"fe", X"04", X"fa", X"00", X"11", X"fb", X"05", X"0d", X"02", X"fe", X"fb", X"03", X"0d", X"f6",
                                                        X"0c", X"fd", X"fb", X"02", X"fb", X"ff", X"12", X"fc", X"05", X"07", X"05", X"fa", X"fc", X"fb", X"0d", X"f8", X"08", X"fe", X"fa", X"03", X"fd", X"ff", X"0e", X"f5", X"04", X"0a",
                                                        X"00", X"fa", X"fd", X"ff", X"0c", X"f7", X"07", X"fd", X"fb", X"04", X"fc", X"00", X"0f", X"f6", X"04", X"01", X"08", X"f7", X"f9", X"00", X"0b", X"f5", X"09", X"00", X"f9", X"02",
                                                        X"f9", X"fd", X"0d", X"fa", X"02", X"03", X"0d", X"f8", X"f9", X"05", X"12", X"f4", X"05", X"01", X"fa", X"07", X"01", X"01", X"0a", X"f7", X"06", X"0a", X"0f", X"f8", X"f9", X"ff",
                                                        X"0b", X"f6", X"07", X"fa", X"f8", X"04", X"fd", X"01", X"10", X"fc", X"05", X"00", X"0e", X"f7", X"fa", X"f7", X"14", X"f7", X"0a", X"ff", X"00", X"06", X"fc", X"fe", X"16", X"fb",
                                                        X"04", X"09", X"03", X"fe", X"f6", X"fe", X"12", X"f3", X"05", X"fc", X"fe", X"01", X"fa", X"ff", X"13", X"fa", X"02", X"10", X"02", X"f9", X"fb", X"fc", X"0e", X"f2", X"07", X"fa",
                                                        X"ff", X"02", X"fc", X"fd", X"0d", X"f6", X"03", X"0b", X"01", X"ff", X"fa", X"fc", X"0e", X"f0", X"0a", X"f8", X"fe", X"fe", X"fa", X"fe", X"10", X"fc", X"03", X"02", X"03", X"fb",
                                                        X"fa", X"fb", X"0c", X"f5", X"09", X"fb", X"fa", X"ff", X"fe", X"fc", X"13", X"f8", X"09", X"09", X"09", X"fe", X"f9", X"fd", X"10", X"f5", X"02", X"fe", X"fc", X"02", X"fd", X"ff",
                                                        X"10", X"f8", X"08", X"04", X"07", X"f7", X"fb", X"fc", X"0f", X"f3", X"06", X"fa", X"00", X"02", X"fb", X"fe", X"0b", X"fb", X"07", X"0a", X"0c", X"f8", X"f8", X"fd", X"0c", X"f4",
                                                        X"05", X"fa", X"fd", X"ff", X"fb", X"01", X"09", X"fe", X"06", X"0d", X"08", X"fa", X"f5", X"fe", X"0a", X"f5", X"05", X"fd", X"00", X"01", X"f7", X"01", X"0f", X"fe", X"fe", X"04",
                                                        X"0b", X"ff", X"fd", X"fc", X"09", X"f3", X"09", X"fe", X"fd", X"fd", X"fa", X"fd", X"10", X"f8", X"fe", X"0e", X"05", X"00", X"fc", X"03", X"0a", X"f5", X"0b", X"ff", X"fe", X"01",
                                                        X"fb", X"ff", X"0f", X"fb", X"04", X"0d", X"08", X"01", X"fa", X"02", X"0c", X"f5", X"09", X"fd", X"fe", X"ff", X"fc", X"00", X"0e", X"fa", X"02", X"10", X"06", X"fb", X"f8", X"07",
                                                        X"09", X"f4", X"06", X"00", X"fe", X"01", X"fa", X"fe", X"13", X"f9", X"07", X"0a", X"09", X"fb", X"f9", X"00", X"10", X"f9", X"01", X"fe", X"ff", X"02", X"fe", X"fd", X"10", X"fd",
                                                        X"03", X"09", X"03", X"f8", X"f9", X"02", X"16", X"f7", X"0a", X"fa", X"fc", X"01", X"fb", X"00", X"0a", X"fa", X"08", X"07", X"06", X"fc", X"fd", X"ff", X"11", X"f9", X"06", X"00",
                                                        X"fc", X"03", X"fc", X"06", X"0e", X"fc", X"04", X"0b", X"06", X"f7", X"fa", X"0b", X"0d", X"fb", X"05", X"ff", X"fd", X"03", X"fc", X"05", X"0d", X"f9", X"09", X"0e", X"01", X"fc",
                                                        X"fa", X"04", X"14", X"f8", X"08", X"00", X"02", X"08", X"fe", X"04", X"11", X"fa", X"08", X"0a", X"09", X"fa", X"fc", X"fd", X"0e", X"f6", X"0b", X"fe", X"fe", X"07", X"fd", X"ff",
                                                        X"17", X"f9", X"03", X"00", X"0a", X"f9", X"fb", X"f4", X"0d", X"f8", X"0e", X"00", X"02", X"0b", X"fc", X"00", X"13", X"fb", X"07", X"0d", X"10", X"00", X"ff", X"ff", X"10", X"fe",
                                                        X"09", X"04", X"ff", X"09", X"00", X"04", X"10", X"fe", X"06", X"ff", X"0e", X"01", X"fa", X"f9", X"18", X"fc", X"08", X"05", X"ff", X"0c", X"fb", X"03", X"13", X"f9", X"0d", X"0a",
                                                        X"08", X"00", X"fc", X"02", X"19", X"fa", X"06", X"01", X"ff", X"09", X"02", X"06", X"0e", X"fa", X"05", X"05", X"0f", X"fa", X"fd", X"ff", X"10", X"fc", X"0a", X"fe", X"ff", X"07",
                                                        X"fc", X"00", X"0c", X"fb", X"08", X"0b", X"0b", X"fd", X"fc", X"01", X"14", X"fb", X"0b", X"02", X"fc", X"0b", X"00", X"01", X"0d", X"fa", X"06", X"07", X"09", X"02", X"fa", X"fc",
                                                        X"0f", X"fe", X"09", X"03", X"fd", X"08", X"fb", X"01", X"10", X"f9", X"06", X"09", X"0c", X"fc", X"fe", X"fd", X"15", X"fe", X"0a", X"00", X"00", X"09", X"fd", X"01", X"0d", X"fc",
                                                        X"03", X"0a", X"03", X"04", X"fd", X"04", X"14", X"fa", X"0d", X"ff", X"f9", X"07", X"fe", X"05", X"0d", X"fa", X"06", X"0c", X"04", X"ff", X"fb", X"02", X"11", X"fb", X"08", X"fe",
                                                        X"f9", X"02", X"fc", X"03", X"14", X"f9", X"06", X"0c", X"00", X"01", X"00", X"01", X"10", X"fb", X"06", X"00", X"fb", X"05", X"ff", X"01", X"11", X"fd", X"04", X"0d", X"09", X"02",
                                                        X"fe", X"fd", X"0c", X"f8", X"09", X"fd", X"fe", X"09", X"f9", X"03", X"0c", X"fe", X"09", X"0f", X"05", X"00", X"fb", X"07", X"0d", X"f7", X"09", X"fc", X"05", X"04", X"ff", X"00",
                                                        X"0a", X"fb", X"08", X"0b", X"15", X"fa", X"fc", X"01", X"0a", X"f9", X"0d", X"00", X"00", X"0a", X"fc", X"04", X"10", X"fa", X"09", X"0c", X"07", X"fd", X"fd", X"fe", X"11", X"f9",
                                                        X"0b", X"00", X"fe", X"04", X"fe", X"fe", X"0e", X"f6", X"08", X"05", X"00", X"fc", X"fb", X"00", X"10", X"fb", X"08", X"fd", X"fa", X"01", X"fa", X"01", X"13", X"f9", X"05", X"09",
                                                        X"09", X"fc", X"fc", X"ff", X"10", X"f6", X"0b", X"00", X"01", X"ff", X"fc", X"fe", X"0c", X"fb", X"02", X"08", X"09", X"f8", X"f8", X"fe", X"0c", X"f5", X"06", X"fa", X"fb", X"01",
                                                        X"fd", X"ff", X"0f", X"f8", X"00", X"07", X"06", X"fa", X"fa", X"00", X"0c", X"f6", X"08", X"fb", X"fd", X"06", X"fd", X"ff", X"13", X"f6", X"06", X"06", X"ff", X"01", X"fd", X"01",
                                                        X"0f", X"f7", X"06", X"00", X"fa", X"06", X"fc", X"ff", X"09", X"f9", X"06", X"04", X"07", X"02", X"fa", X"03", X"0e", X"fd", X"06", X"ff", X"f7", X"06", X"fc", X"ff", X"07", X"fa",
                                                        X"07", X"0b", X"02", X"fc", X"f9", X"00", X"0d", X"f7", X"03", X"ff", X"fa", X"ff", X"f9", X"fe", X"0e", X"f6", X"04", X"0f", X"09", X"00", X"fb", X"04", X"0f", X"f6", X"0b", X"fa",
                                                        X"fb", X"02", X"f7", X"00", X"1b", X"fa", X"00", X"0c", X"12", X"fe", X"f7", X"05", X"0f", X"f1", X"12", X"f5", X"fa", X"fd", X"f7", X"fa");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fa";
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

