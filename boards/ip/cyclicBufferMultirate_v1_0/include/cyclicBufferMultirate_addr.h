/*
 * File Name:         hdl_prj/ipcore/cyclicBufferMultirate_v1_0/include/cyclicBufferMultirate_addr.h
 * Description:       C Header File
 * Created:           2022-12-20 15:59:05
*/

#ifndef CYCLICBUFFERMULTIRATE_H_
#define CYCLICBUFFERMULTIRATE_H_

#define  IPCore_Reset_cyclicBufferMultirate       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_cyclicBufferMultirate      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_cyclicBufferMultirate   0x8  //contains unique IP timestamp (yymmddHHMM): 2212201559
#define  writeMem_Data_cyclicBufferMultirate      0x100  //data register for Inport writeMem
#define  enable_Data_cyclicBufferMultirate        0x104  //data register for Inport enable
#define  reset_Data_cyclicBufferMultirate         0x108  //data register for Inport reset
#define  state_Data_cyclicBufferMultirate         0x10C  //data register for Outport state

#endif /* CYCLICBUFFERMULTIRATE_H_ */
