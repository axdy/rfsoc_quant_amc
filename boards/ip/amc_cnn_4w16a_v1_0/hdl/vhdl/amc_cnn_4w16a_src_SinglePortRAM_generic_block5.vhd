-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w4a16/amc_cnn_4w16a_src_SinglePortRAM_generic_block5.vhd
-- Created: 2023-06-15 16:02:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_4w16a_src_SinglePortRAM_generic_block5
-- Source Path: amc_model_w4a16/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 4/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_4w16a_src_SinglePortRAM_generic_block5 IS
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
END amc_cnn_4w16a_src_SinglePortRAM_generic_block5;


ARCHITECTURE rtl OF amc_cnn_4w16a_src_SinglePortRAM_generic_block5 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"09", X"f7", X"d3", X"2d", X"21", X"e4", X"fc", X"fa", X"2b", X"c8", X"e3", X"db", X"fc", X"00", X"0e", X"f1", X"d6", X"f5", X"f3", X"da", X"c1", X"e9", X"fa", X"1d", X"e7", X"e8",
                                                        X"ff", X"ef", X"f4", X"fe", X"e3", X"d6", X"f3", X"17", X"d9", X"d9", X"04", X"f9", X"d1", X"f0", X"12", X"0e", X"e1", X"c1", X"db", X"03", X"00", X"f4", X"fc", X"e9", X"12", X"e1",
                                                        X"d6", X"de", X"08", X"0f", X"f0", X"d6", X"f7", X"e3", X"14", X"de", X"0a", X"ea", X"fe", X"ed", X"ec", X"f1", X"fa", X"e4", X"12", X"c5", X"e7", X"eb", X"f8", X"e5", X"f7", X"f7",
                                                        X"ea", X"d9", X"22", X"f5", X"20", X"20", X"0b", X"0d", X"ef", X"13", X"fd", X"ea", X"ed", X"f5", X"2e", X"c1", X"15", X"df", X"ff", X"dd", X"db", X"c8", X"f4", X"f5", X"f1", X"e3",
                                                        X"f1", X"e1", X"ec", X"de", X"c1", X"db", X"dc", X"d5", X"dd", X"eb", X"f2", X"d0", X"1e", X"db", X"1a", X"11", X"07", X"fa", X"da", X"f8", X"20", X"d3", X"e3", X"2c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"2c";
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

