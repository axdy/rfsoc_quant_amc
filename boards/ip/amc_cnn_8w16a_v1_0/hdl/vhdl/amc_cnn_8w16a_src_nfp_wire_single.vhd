-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_nfp_wire_single.vhd
-- Created: 2023-08-07 19:04:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_nfp_wire_single
-- Source Path: amc_model_w8a16/DUT HDL/nfp_wire_single
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_nfp_wire_single IS
  PORT( nfp_in                            :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        nfp_out                           :   OUT   std_logic_vector(31 DOWNTO 0)  -- ufix32
        );
END amc_cnn_8w16a_src_nfp_wire_single;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_nfp_wire_single IS

BEGIN
  nfp_out <= nfp_in;

END rtl;

