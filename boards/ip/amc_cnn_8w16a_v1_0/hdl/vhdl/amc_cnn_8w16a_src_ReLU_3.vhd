-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_ReLU_3.vhd
-- Created: 2023-08-07 19:04:53
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_ReLU_3
-- Source Path: amc_model_w8a16/DUT HDL/Dense Layer 1/ReLU 3
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_src_ReLU_3 IS
  PORT( in_rsvd                           :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En1
        out_rsvd                          :   OUT   std_logic_vector(15 DOWNTO 0)  -- int16
        );
END amc_cnn_8w16a_src_ReLU_3;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_ReLU_3 IS

  -- Signals
  SIGNAL in_signed                        : signed(15 DOWNTO 0);  -- sfix16_En1
  SIGNAL out_tmp                          : signed(15 DOWNTO 0);  -- int16

BEGIN
  in_signed <= signed(in_rsvd);

  ReLU_3_output : PROCESS (in_signed)
    VARIABLE relu : signed(15 DOWNTO 0);
  BEGIN
    -- Perform the ReLU activation function. 
    --     relu = max(fi(0,in.numerictype),in);
    --     relu = max(fi(0,1,16,0),fi(in,1,16,0));
    -- %     clip = fi(relu,1,2,1);
    --     out  = relu;
    relu := (resize(in_signed(15 DOWNTO 1), 16)) + ('0' & in_signed(0));
    IF to_signed(16#0000#, 16) < relu THEN 
      NULL;
    ELSE 
      relu := to_signed(16#0000#, 16);
    END IF;
    --     clip = fi(relu,1,2,1);
    out_tmp <= relu;
  END PROCESS ReLU_3_output;


  out_rsvd <= std_logic_vector(out_tmp);

END rtl;

