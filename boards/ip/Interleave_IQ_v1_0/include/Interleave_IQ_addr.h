/*
 * File Name:         hdl_prj/ipcore/Interleave_IQ_v1_0/include/Interleave_IQ_addr.h
 * Description:       C Header File
 * Created:           2023-02-02 13:09:19
*/

#ifndef INTERLEAVE_IQ_H_
#define INTERLEAVE_IQ_H_

#define  IPCore_Reset_Interleave_IQ                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_Interleave_IQ                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_Interleave_IQ   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_Interleave_IQ                       0xC  //contains unique IP timestamp (yymmddHHMM): 2302021309

#endif /* INTERLEAVE_IQ_H_ */
