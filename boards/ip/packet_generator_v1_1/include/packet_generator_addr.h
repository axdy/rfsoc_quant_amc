/*
 * File Name:         hdl_prj/ipcore/packet_generator_v1_1/include/packet_generator_addr.h
 * Description:       C Header File
 * Created:           2023-01-11 17:03:51
*/

#ifndef PACKET_GENERATOR_H_
#define PACKET_GENERATOR_H_

#define  IPCore_Reset_packet_generator       0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_packet_generator      0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_Timestamp_packet_generator   0x8  //contains unique IP timestamp (yymmddHHMM): 2301111703
#define  capture_Data_packet_generator       0x100  //data register for Inport capture
#define  captureSize_Data_packet_generator   0x104  //data register for Inport captureSize

#endif /* PACKET_GENERATOR_H_ */
