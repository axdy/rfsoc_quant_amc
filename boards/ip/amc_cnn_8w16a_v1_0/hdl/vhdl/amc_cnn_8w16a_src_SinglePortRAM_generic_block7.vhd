-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_SinglePortRAM_generic_block7.vhd
-- Created: 2023-08-07 19:04:34
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_SinglePortRAM_generic_block7
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 6/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_SinglePortRAM_generic_block7 IS
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
END amc_cnn_8w16a_src_SinglePortRAM_generic_block7;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_SinglePortRAM_generic_block7 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"3b", X"3f", X"3f", X"c0", X"e9", X"02", X"1f", X"3d", X"11", X"00", X"f5", X"f2", X"f2", X"20", X"35", X"c0", X"fd", X"d1", X"0b", X"40", X"3e", X"c3", X"c0", X"0a", X"1d", X"2a",
                                                        X"09", X"ce", X"0b", X"05", X"0c", X"cb", X"f0", X"2c", X"d0", X"16", X"1a", X"13", X"2c", X"31", X"13", X"c7", X"12", X"01", X"39", X"40", X"0d", X"25", X"d7", X"26", X"f3", X"2e",
                                                        X"e7", X"f3", X"09", X"20", X"04", X"fa", X"c0", X"eb", X"00", X"fa", X"40", X"11", X"c0", X"db", X"ed", X"1e", X"2c", X"1f", X"06", X"c0", X"35", X"ee", X"df", X"3e", X"ff", X"f9",
                                                        X"25", X"0c", X"14", X"fc", X"ef", X"16", X"18", X"d8", X"fd", X"f0", X"d2", X"11", X"eb", X"fb", X"f9", X"20", X"0c", X"18", X"40", X"d7", X"ee", X"d9", X"3c", X"0d", X"34", X"f4",
                                                        X"0d", X"2a", X"d4", X"0f", X"c0", X"fb", X"3c", X"40", X"d3", X"f1", X"40", X"0c", X"40", X"e1", X"0c", X"0f", X"ef", X"0b", X"02", X"d9", X"0d", X"01", X"02", X"1b");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"1b";
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

