-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block5.vhd
-- Created: 2023-08-07 19:04:34
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block5
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 4/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block5 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block5;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block5 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"e2", X"e6", X"d9", X"1d", X"1e", X"1a", X"e0", X"eb", X"ea", X"00", X"19", X"eb", X"ce", X"e4", X"e8", X"24", X"f8", X"15", X"ee", X"fb", X"f6", X"35", X"32", X"ec", X"13", X"f4",
                                                        X"e7", X"20", X"e6", X"dd", X"12", X"26", X"f7", X"e1", X"fb", X"ef", X"d9", X"e1", X"e0", X"e2", X"ea", X"fb", X"eb", X"df", X"f7", X"ee", X"0b", X"1c", X"f1", X"f6", X"e5", X"e1",
                                                        X"d9", X"d4", X"e4", X"da", X"e2", X"e2", X"e8", X"e7", X"de", X"dd", X"f4", X"e4", X"14", X"16", X"eb", X"06", X"21", X"fa", X"01", X"25", X"dc", X"20", X"c3", X"02", X"f3", X"e8",
                                                        X"e1", X"f9", X"e0", X"e8", X"02", X"e7", X"26", X"0f", X"0d", X"07", X"05", X"ef", X"f6", X"fa", X"fd", X"ef", X"f4", X"de", X"06", X"01", X"28", X"01", X"f7", X"fc", X"e7", X"04",
                                                        X"0b", X"05", X"04", X"eb", X"f9", X"dc", X"f9", X"07", X"26", X"ee", X"f7", X"e9", X"df", X"f7", X"de", X"dc", X"f9", X"ff", X"f4", X"1e", X"e8", X"d6", X"0e", X"c1");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"c1";
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

