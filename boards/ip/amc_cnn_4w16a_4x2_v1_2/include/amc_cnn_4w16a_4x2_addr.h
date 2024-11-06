/*
 * File Name:         hdl_prj/ipcore/amc_cnn_4w16a_4x2_v1_2/include/amc_cnn_4w16a_4x2_addr.h
 * Description:       C Header File
 * Created:           2024-11-05 20:04:10
*/

#ifndef AMC_CNN_4W16A_4X2_H_
#define AMC_CNN_4W16A_4X2_H_

#define  IPCore_Reset_amc_cnn_4w16a_4x2       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_amc_cnn_4w16a_4x2      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_amc_cnn_4w16a_4x2   0x8  //contains unique IP timestamp (yymmddHHMM): 2411052003
#define  enable_Data_amc_cnn_4w16a_4x2        0x100  //data register for Inport enable

#endif /* AMC_CNN_4W16A_4X2_H_ */
