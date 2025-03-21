-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block5.vhd
-- Created: 2024-11-04 16:44:08
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block5
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 4/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block5 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block5;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block5 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"f697", X"e4da", X"fc87", X"fbe0", X"146f", X"fac8", X"f0e9", X"ee8a", X"f1e8", X"fc55", X"f599", X"0b12", X"ff20", X"fcfe",
                                                        X"f5bf", X"e1f9", X"0254", X"ee7d", X"f2fd", X"ee8a", X"05d2", X"fac2", X"f419", X"fbaa", X"fd3e", X"fa7a", X"e359", X"047e",
                                                        X"04dd", X"0043", X"18e7", X"0414", X"dee4", X"fbc8", X"0733", X"06bc", X"ebae", X"fc0f", X"e69e", X"ea99", X"ff43", X"093a",
                                                        X"f087", X"dc10", X"0241", X"025c", X"f0f8", X"e7fb", X"03f9", X"0514", X"fb65", X"0017", X"f092", X"e371", X"01db", X"ff71",
                                                        X"ee66", X"0bcf", X"f78d", X"ec67", X"d478", X"fe11", X"fd3b", X"e6a0", X"fc2f", X"02af", X"f44f", X"ff4b", X"fc61", X"0264",
                                                        X"ff7c", X"f58a", X"ff23", X"04b9", X"f54b", X"fd85", X"04a9", X"e362", X"fb56", X"ef51", X"037c", X"f3a7", X"07f1", X"ff57",
                                                        X"de69", X"fa76", X"fbc8", X"0398", X"0d06", X"0207", X"033c", X"fa97", X"0755", X"03f2", X"fb4b", X"fe9c", X"fa99", X"ffbb",
                                                        X"068a", X"eb79", X"fdfd", X"e393", X"dfa0", X"f5eb", X"faa6", X"012d", X"fbc4", X"ee43", X"0a41", X"f8ab", X"0408", X"f986",
                                                        X"0717", X"fe65", X"f9fb", X"fab7", X"fb4a", X"f470", X"019f", X"172a", X"f47a", X"defc", X"fe06", X"e44a", X"f1a0", X"ee04",
                                                        X"04fb", X"04e8");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"04e8";
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

