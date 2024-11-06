-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_Frame_Slicer.vhd
-- Created: 2024-11-05 16:19:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_Frame_Slicer
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Conv Layer 2/Vector Slice Selection/Frame Slicer
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_8w16a_4x2_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_8w16a_4x2_src_Frame_Slicer IS
  PORT( frameIn                           :   IN    vector_of_std_logic_vector16(0 TO 63);  -- sfix16_En13 [64]
        slicedFrame                       :   OUT   vector_of_std_logic_vector16(0 TO 15)  -- sfix16_En13 [16]
        );
END amc_cnn_8w16a_4x2_src_Frame_Slicer;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_Frame_Slicer IS

  -- Signals
  SIGNAL frameIn_signed                   : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]

BEGIN
  frameIn_signed <= frameIn;

  slicedFrame(0) <= frameIn_signed(0);
  slicedFrame(1) <= frameIn_signed(1);
  slicedFrame(2) <= frameIn_signed(2);
  slicedFrame(3) <= frameIn_signed(3);
  slicedFrame(4) <= frameIn_signed(4);
  slicedFrame(5) <= frameIn_signed(5);
  slicedFrame(6) <= frameIn_signed(6);
  slicedFrame(7) <= frameIn_signed(7);
  slicedFrame(8) <= frameIn_signed(8);
  slicedFrame(9) <= frameIn_signed(9);
  slicedFrame(10) <= frameIn_signed(10);
  slicedFrame(11) <= frameIn_signed(11);
  slicedFrame(12) <= frameIn_signed(12);
  slicedFrame(13) <= frameIn_signed(13);
  slicedFrame(14) <= frameIn_signed(14);
  slicedFrame(15) <= frameIn_signed(15);

END rtl;

