/*
 * File Name:         hdl_prj/ipcore/DMAController_v3_0/include/DMAController_addr.h
 * Description:       C Header File
 * Created:           2023-01-24 23:01:07
*/

#ifndef DMACONTROLLER_H_
#define DMACONTROLLER_H_

#define  IPCore_Reset_DMAController       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_DMAController      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_DMAController   0x8  //contains unique IP timestamp (yymmddHHMM): 2301242301
#define  ready_dma_Data_DMAController     0x100  //data register for Inport ready_dma

#endif /* DMACONTROLLER_H_ */
