-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block4.vhd
-- Created: 2024-11-05 16:19:09
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block4
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 3/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block4 IS
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
END amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block4;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_SinglePortRAM_generic_block4 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"ed", X"1f", X"f8", X"d0", X"e5", X"d4", X"01", X"e3", X"05", X"d9", X"03", X"fe", X"0a", X"fe", X"e6", X"02", X"1e", X"f8", X"d6", X"f0", X"16", X"f3", X"05", X"eb", X"f6", X"fe",
                                                        X"06", X"fb", X"fb", X"f7", X"e1", X"00", X"08", X"0f", X"01", X"0d", X"f8", X"d6", X"07", X"14", X"cb", X"05", X"f0", X"e4", X"ff", X"fb", X"06", X"e3", X"f2", X"ea", X"e1", X"0a",
                                                        X"e5", X"cc", X"ff", X"ef", X"f3", X"03", X"0b", X"f5", X"fd", X"02", X"e6", X"ed", X"eb", X"06", X"f3", X"e1", X"f8", X"05", X"fe", X"e6", X"e5", X"d2", X"fb", X"fa", X"ef", X"05",
                                                        X"fb", X"eb", X"f7", X"f0", X"e0", X"02", X"e4", X"e3", X"eb", X"f9", X"db", X"f2", X"0c", X"0e", X"f9", X"da", X"de", X"08", X"f3", X"f8", X"11", X"06", X"d6", X"01", X"f1", X"08",
                                                        X"ed", X"0e", X"d1", X"f6", X"0c", X"f3", X"f7", X"01", X"f9", X"f2", X"fc", X"de", X"e8", X"f2", X"cf", X"03", X"f9", X"20", X"01", X"ed", X"d8", X"06", X"ea", X"ef");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ef";
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

