-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_ReLU_3.vhd
-- Created: 2024-11-04 16:44:22
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_ReLU_3
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/ReLU 3
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_ReLU_3 IS
  PORT( in_rsvd                           :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En9
        out_rsvd                          :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En9
        );
END amc_cnn_16w16a_4x2_src_ReLU_3;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_ReLU_3 IS

  -- Signals
  SIGNAL in_signed                        : signed(15 DOWNTO 0);  -- sfix16_En9
  SIGNAL out_tmp                          : signed(15 DOWNTO 0);  -- sfix16_En9

BEGIN
  in_signed <= signed(in_rsvd);

  -- Perform the ReLU activation function. 
  --     relu = max(fi(0,in.numerictype),in);
  --     relu = max(fi(0,1,16,0),fi(in,1,16,0));
  -- %     clip = fi(relu,1,2,1);
  --     out  = relu;
  
  out_tmp <= in_signed WHEN to_signed(16#0000#, 16) < in_signed ELSE
      to_signed(16#0000#, 16);
  --     clip = fi(relu,1,2,1);

  out_rsvd <= std_logic_vector(out_tmp);

END rtl;

