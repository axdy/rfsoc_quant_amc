-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block2.vhd
-- Created: 2024-11-04 16:44:08
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block2
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 1/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block2 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block2;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block2 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"f356", X"e9a8", X"010b", X"f868", X"11b5", X"fc17", X"ed60", X"e780", X"e7de", X"0df6", X"f378", X"f6ba", X"edb2", X"f45c",
                                                        X"158e", X"e710", X"f5be", X"2068", X"faea", X"1da4", X"08bf", X"103e", X"ec0b", X"0535", X"065c", X"046c", X"eaa9", X"ff0e",
                                                        X"f7cf", X"02a4", X"12e2", X"f493", X"1821", X"02df", X"0ae9", X"fa46", X"ed47", X"f348", X"1da9", X"ed6d", X"0f1e", X"055c",
                                                        X"f5fb", X"05fa", X"f7c2", X"fc27", X"ea98", X"1aa5", X"02ae", X"f9ff", X"089e", X"02f4", X"097e", X"1996", X"fc4d", X"ff6f",
                                                        X"0955", X"0774", X"fa98", X"1a5b", X"058e", X"fa95", X"f100", X"e7de", X"fd53", X"056a", X"f585", X"031f", X"fba3", X"ffa5",
                                                        X"01ce", X"0a69", X"0158", X"f33c", X"e7d0", X"ff9e", X"f2a3", X"217f", X"fa15", X"e8e7", X"03ed", X"05d1", X"fbb0", X"05ae",
                                                        X"1d28", X"0ff4", X"fae4", X"028f", X"0565", X"f457", X"04f4", X"fd2c", X"00cc", X"feb0", X"f487", X"ff65", X"0539", X"0573",
                                                        X"fc67", X"1772", X"15cd", X"eb9a", X"eab1", X"0be5", X"f907", X"fb93", X"fbb1", X"023e", X"1863", X"f557", X"03a2", X"0d1c",
                                                        X"fa37", X"fdf5", X"febd", X"0b0a", X"1079", X"0e28", X"0437", X"10ab", X"f606", X"eafa", X"fc11", X"19c3", X"0803", X"e97c",
                                                        X"0578", X"0158");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0158";
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
