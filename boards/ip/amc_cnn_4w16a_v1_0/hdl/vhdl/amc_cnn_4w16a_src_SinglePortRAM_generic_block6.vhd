-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block6.vhd
-- Created: 2023-06-15 16:02:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block6
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 5/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block6 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block6;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block6 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"ef", X"2f", X"0a", X"dd", X"e8", X"1e", X"34", X"24", X"21", X"d9", X"15", X"1b", X"f1", X"33", X"f6", X"26", X"1a", X"0e", X"36", X"01", X"eb", X"23", X"e7", X"fd", X"27", X"03",
                                                        X"ed", X"f4", X"29", X"f7", X"e1", X"fe", X"16", X"de", X"d9", X"d3", X"1e", X"34", X"08", X"f6", X"fb", X"3f", X"1f", X"d7", X"1d", X"fb", X"00", X"2d", X"1d", X"e8", X"fd", X"33",
                                                        X"1f", X"13", X"c8", X"e0", X"2a", X"0d", X"ea", X"36", X"cf", X"3e", X"d3", X"25", X"04", X"e3", X"e8", X"27", X"25", X"28", X"00", X"1b", X"23", X"e7", X"2c", X"20", X"f5", X"2e",
                                                        X"e4", X"1a", X"f2", X"df", X"d3", X"f4", X"02", X"f5", X"34", X"02", X"16", X"ea", X"fb", X"ea", X"e7", X"d5", X"15", X"18", X"33", X"18", X"2c", X"eb", X"14", X"d1", X"17", X"18",
                                                        X"27", X"14", X"28", X"3b", X"19", X"32", X"2d", X"13", X"19", X"f5", X"29", X"24", X"d9", X"10", X"1c", X"0d", X"fa", X"36", X"e2", X"34", X"e1", X"f8", X"d4", X"d9");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"d9";
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

