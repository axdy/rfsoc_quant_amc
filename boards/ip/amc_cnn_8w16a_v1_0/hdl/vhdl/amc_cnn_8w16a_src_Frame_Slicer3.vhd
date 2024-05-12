-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16/amc_cnn_8w16a_src_Frame_Slicer3.vhd
-- Created: 2023-08-07 19:04:37
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_src_Frame_Slicer3
-- Source Path: amc_model_w8a16/DUT HDL/Conv Layer 2/Vector Slice Selection/Frame Slicer3
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.amc_cnn_8w16a_src_DUT_HDL_pkg.ALL;

ENTITY amc_cnn_8w16a_src_Frame_Slicer3 IS
  PORT( frameIn                           :   IN    vector_of_std_logic_vector16(0 TO 63);  -- int16 [64]
        slicedFrame                       :   OUT   vector_of_std_logic_vector16(0 TO 15)  -- int16 [16]
        );
END amc_cnn_8w16a_src_Frame_Slicer3;


ARCHITECTURE rtl OF amc_cnn_8w16a_src_Frame_Slicer3 IS

  -- Signals
  SIGNAL frameIn_signed                   : vector_of_std_logic_vector16(0 TO 63);  -- ufix16 [64]

BEGIN
  frameIn_signed <= frameIn;

  slicedFrame(0) <= frameIn_signed(48);
  slicedFrame(1) <= frameIn_signed(49);
  slicedFrame(2) <= frameIn_signed(50);
  slicedFrame(3) <= frameIn_signed(51);
  slicedFrame(4) <= frameIn_signed(52);
  slicedFrame(5) <= frameIn_signed(53);
  slicedFrame(6) <= frameIn_signed(54);
  slicedFrame(7) <= frameIn_signed(55);
  slicedFrame(8) <= frameIn_signed(56);
  slicedFrame(9) <= frameIn_signed(57);
  slicedFrame(10) <= frameIn_signed(58);
  slicedFrame(11) <= frameIn_signed(59);
  slicedFrame(12) <= frameIn_signed(60);
  slicedFrame(13) <= frameIn_signed(61);
  slicedFrame(14) <= frameIn_signed(62);
  slicedFrame(15) <= frameIn_signed(63);

END rtl;

