-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block1.vhd
-- Created: 2024-11-04 16:44:08
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block1
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 2/Dense Layer 2/Weight Storage 0/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block1 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block1;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block1 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"f39f", X"e990", X"0149", X"f835", X"0a63", X"ffeb", X"ef4a", X"ee5a", X"f575", X"fa72", X"f6e7", X"e589", X"f8b1", X"f501",
                                                        X"eb9c", X"e9fc", X"034d", X"f447", X"f8c8", X"e692", X"0680", X"fac6", X"f6b3", X"f982", X"02dc", X"0254", X"eb4b", X"fe6c",
                                                        X"027d", X"fca6", X"1541", X"0558", X"0d00", X"0032", X"018a", X"0492", X"efcd", X"fabd", X"e3db", X"f22b", X"fb88", X"0337",
                                                        X"1a62", X"29e5", X"0236", X"070f", X"f28d", X"d973", X"fec7", X"001d", X"ff1f", X"04ca", X"f0d6", X"eafd", X"01fd", X"fd19",
                                                        X"1dc4", X"0809", X"f7ef", X"d764", X"3845", X"fa48", X"fa98", X"ee08", X"0495", X"0417", X"f3d9", X"053c", X"0289", X"01f5",
                                                        X"0e76", X"e78d", X"02e5", X"025c", X"f332", X"04df", X"062b", X"ff7c", X"f4f1", X"f0d4", X"021e", X"f883", X"0879", X"fcdd",
                                                        X"f514", X"edc0", X"fd22", X"0260", X"01b0", X"04ef", X"048f", X"f853", X"0f71", X"02b7", X"fbd0", X"fe54", X"fd36", X"fa6a",
                                                        X"0559", X"e57f", X"0af1", X"ecdf", X"e9d8", X"0a90", X"f79d", X"fb9c", X"fb7b", X"f2d6", X"02c2", X"fa0c", X"034b", X"f875",
                                                        X"fbab", X"02f0", X"fc35", X"0380", X"e92e", X"10dd", X"02af", X"10d7", X"f614", X"e7f9", X"039a", X"f550", X"f157", X"f208",
                                                        X"fabf", X"fd9a");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fd9a";
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

