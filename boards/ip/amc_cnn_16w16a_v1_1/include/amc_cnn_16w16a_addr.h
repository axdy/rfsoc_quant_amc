/*
 * File Name:         hdl_prj/ipcore/amc_cnn_16w16a_v1_1/include/amc_cnn_16w16a_addr.h
 * Description:       C Header File
 * Created:           2023-08-04 11:28:10
*/

#ifndef AMC_CNN_16W16A_H_
#define AMC_CNN_16W16A_H_

#define  IPCore_Reset_amc_cnn_16w16a       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_amc_cnn_16w16a      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_amc_cnn_16w16a   0x8  //contains unique IP timestamp (yymmddHHMM): 2308041127
#define  enable_Data_amc_cnn_16w16a        0x100  //data register for Inport enable

#endif /* AMC_CNN_16W16A_H_ */
