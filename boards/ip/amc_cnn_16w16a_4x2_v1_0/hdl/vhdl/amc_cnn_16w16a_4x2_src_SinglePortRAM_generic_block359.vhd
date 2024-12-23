-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block359.vhd
-- Created: 2024-11-04 16:44:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block359
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage125/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block359 IS
  GENERIC( AddrWidth                      : integer := 1;
           DataWidth                      : integer := 1
           );
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        din                               :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
        addr                              :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
        we                                :   IN    std_logic;  -- ufix1
        dout                              :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
        );
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block359;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block359 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0038", X"011f", X"fff2", X"0242", X"005d", X"fc72",
                                                        X"fec3", X"ffe4", X"fdf1", X"00c7", X"fef9", X"002b", X"fd3d", X"00b5", X"0148", X"fdea", X"fdcc", X"ff41", X"fca3", X"0252",
                                                        X"fe62", X"feff", X"01c2", X"fed0", X"ff37", X"fdfb", X"fcba", X"01e9", X"010e", X"01fc", X"000f", X"0196", X"00ae", X"027d",
                                                        X"fdf6", X"ffde", X"ffea", X"ffcb", X"00f1", X"fd42", X"00c1", X"fcef", X"0055", X"ff5d", X"0032", X"ff92", X"0071", X"0019",
                                                        X"00e7", X"0216", X"024c", X"00a2", X"008f", X"01e5", X"ffe0", X"0018", X"febf", X"fcd8", X"ff9f", X"ff3d", X"fd31", X"020c",
                                                        X"022a", X"fff3", X"020a", X"fed0", X"01a4", X"001d", X"fd01", X"00ec", X"fddc", X"ff47", X"026b", X"fe4b", X"0062", X"fdcb",
                                                        X"ff0e", X"fd12", X"ff09", X"01a2", X"0252", X"fec2", X"fce5", X"000a", X"01fc", X"ffa5", X"fef6", X"fda1", X"ff72", X"fd22",
                                                        X"0084", X"0217", X"ff48", X"01ee", X"024f", X"001d", X"025d", X"fd7e", X"0224", X"fdd7", X"fcef", X"0062", X"016c", X"ffe0",
                                                        X"fe82", X"fdf7", X"0039", X"ff6a", X"fec4", X"fef7", X"02c1", X"01e5", X"0040", X"ff93", X"fdfa", X"0011", X"ff4d", X"fc5c",
                                                        X"fe1d", X"0101", X"0117", X"fe20", X"fdeb", X"fd17", X"ff46", X"ff2d", X"002f", X"fe86", X"fe81", X"fecf", X"00dc", X"fcf1",
                                                        X"0024", X"fcd9", X"00cb", X"0124", X"00b9", X"fe7f", X"ff18", X"ff28", X"0229", X"01d7", X"fea8", X"0096", X"0030", X"0204",
                                                        X"fde5", X"ff39", X"fc8d", X"0043", X"fe81", X"0121", X"ff37", X"fda3", X"fe2d", X"fe3a", X"00fb", X"01c6", X"ff6e", X"fe0e",
                                                        X"fd7d", X"00a1", X"fd8c", X"fe40", X"fcef", X"ff42", X"ff2a", X"fe63", X"00d3", X"00b1", X"fda7", X"ff39", X"fd25", X"ffb3",
                                                        X"fdf0", X"fe04", X"0283", X"fece", X"ff08", X"00e7", X"fe82", X"feb3", X"ff6d", X"fe30", X"0050", X"fdd8", X"fd83", X"fcdf",
                                                        X"0114", X"ffd1", X"fe81", X"fd59", X"0083", X"fe2d", X"01d1", X"00bc", X"00f0", X"fcc9", X"ff99", X"0125", X"01a6", X"0007",
                                                        X"fd6a", X"ff47", X"fd2f", X"020a", X"00e6", X"ffcb", X"014e", X"fe9d", X"feab", X"fda4", X"01cc", X"fd87", X"008a", X"00da",
                                                        X"023e", X"fda4", X"00f1", X"fe09", X"fe78", X"0182", X"fe6b", X"fe39", X"fdfc", X"fec1", X"fe43", X"02d0", X"fd9a", X"fe87",
                                                        X"000f", X"fd94", X"ff86", X"fcdf", X"01a8", X"0033", X"ff3a", X"fe0f", X"fd61", X"011b", X"feba", X"fe87", X"fd7b", X"fd17",
                                                        X"ff5d", X"00ee", X"fd22", X"00ea", X"009e", X"fe62", X"0072", X"fe47", X"ff4a", X"ffb0", X"febf", X"feb5", X"fd9e", X"0053",
                                                        X"fcc3", X"fd22", X"0038", X"01d9", X"fe01", X"fe25", X"0058", X"0009", X"fda4", X"fe95", X"fe79", X"02a0", X"feae", X"004b",
                                                        X"fecc", X"ff05", X"fefe", X"fde2", X"0089", X"fe05", X"0060", X"ffd2", X"ffea", X"021d", X"fd25", X"01a2", X"020d", X"fe86",
                                                        X"fdad", X"0031", X"002a", X"fde1", X"00a7", X"017d", X"fdf0", X"ff85", X"fd51", X"fde2", X"fea7", X"fd27", X"01d3", X"0068",
                                                        X"0234", X"fd4b", X"ffbf", X"001b", X"02a0", X"fe54", X"0196", X"fe77", X"fcdc", X"fe58", X"0231", X"ff77", X"fe8f", X"ff31",
                                                        X"fcfd", X"01aa", X"01e6", X"0189", X"fe54", X"fcfd", X"007e", X"00f1", X"0024", X"02a1", X"fef7", X"0017", X"0013", X"01c1",
                                                        X"00a4", X"fea0", X"ffb1", X"022a", X"fff6", X"fe82", X"ff21", X"fe93", X"ffdc", X"fda0", X"fcd2", X"fd62", X"fcf2", X"ff7f",
                                                        X"00a0", X"fe1e", X"0171", X"ff39", X"ff2b", X"fdb3", X"ff1c", X"ffc1", X"fddf", X"fd7e", X"ff6b", X"ff54", X"fcaf", X"ff10",
                                                        X"0056", X"ff78", X"011b", X"fe66", X"fe55", X"00be", X"fe90", X"fcca", X"fe4b", X"00d6", X"feeb", X"0070", X"01c8", X"0234",
                                                        X"016c", X"ff58", X"012d", X"00b5", X"fff1", X"ffe7", X"fd5b", X"fdca", X"fe74", X"fee8", X"024f", X"000c", X"ffda", X"ffbb",
                                                        X"fea3", X"0124", X"ff4e", X"ff0a", X"fd6f", X"fe07", X"01c8", X"fff7", X"0085", X"fffa", X"005f", X"fe43", X"fcfd", X"fdb6",
                                                        X"0097", X"fefc", X"fdc8", X"fe7c", X"0189", X"0037", X"0140", X"ff8c", X"02a0", X"00b8", X"fe74", X"fca8", X"fea7", X"0153",
                                                        X"01f3", X"0180", X"ff8d", X"fea5", X"fe56", X"fd21", X"014a", X"fd98", X"fd37", X"fde2", X"fdfb", X"fdf3", X"0231", X"fd69",
                                                        X"ff6e", X"0061", X"fd07", X"fd4d", X"ffdd", X"00e5", X"ff98", X"ffd7", X"fd0d", X"02d1", X"fcc4", X"0041", X"016e", X"003d",
                                                        X"fd7f", X"0125", X"ff6f", X"006a", X"ff72", X"01c2", X"001f", X"0118", X"ff49", X"01fa", X"fe2b", X"fedd", X"ff76", X"fde4",
                                                        X"020d", X"0000", X"ffc4", X"fd48", X"fdaf", X"0235", X"0153", X"fd72", X"fe0b", X"fe1a", X"00c1", X"ff64", X"fd28", X"023d",
                                                        X"fd59", X"feae", X"0224", X"ff34", X"01c4", X"00f4", X"fdc4", X"fe0b", X"fd37", X"ff05", X"013e", X"fec8", X"fda1", X"fdc4",
                                                        X"fde4", X"fd5e", X"01af", X"007b", X"0233", X"ffec", X"fe67", X"ff11", X"016a", X"00f7", X"feec", X"fcd6", X"0090", X"002e",
                                                        X"ffd6", X"fe6f", X"fd72", X"fe95", X"fed5", X"011d", X"fef1", X"00f0", X"fdf5", X"024e", X"0168", X"0136", X"fd0f", X"fd6c",
                                                        X"00d5", X"0156", X"ff13", X"fec4", X"ff2f", X"fe1b", X"ffcd", X"fd69", X"fdfc", X"fdb4", X"fd6e", X"fdf0", X"00c1", X"fe18",
                                                        X"ffe2", X"fd1a", X"fe11", X"fe07", X"006a", X"0091", X"ffb4", X"0203", X"fe62", X"00e8", X"fd14", X"fe01", X"fd90", X"0023",
                                                        X"01ee", X"fd8e", X"fd22", X"0231", X"015b", X"00e7", X"ff2f", X"010f", X"01f2", X"0094", X"fd5f", X"00e7", X"fdd6", X"fd73",
                                                        X"fe2c", X"fe14", X"fe8d", X"ffd8", X"02cd", X"0008", X"018d", X"fd43", X"ff00", X"00f4", X"fe4c", X"fcbb", X"01a2", X"fdbf",
                                                        X"01ce", X"ffab", X"fd41", X"fca0", X"fd19", X"ffc4", X"0184", X"0236", X"0075", X"0230", X"fe96", X"fe64", X"fde5", X"febf",
                                                        X"01cc", X"00b9", X"fe8b", X"ff1c", X"fede", X"fe56", X"fdb5", X"fd37", X"018b", X"fe44", X"0160", X"ff2a", X"01aa", X"019e",
                                                        X"0070", X"ff71", X"ff0e", X"fe9c", X"ff6a", X"002e", X"fdb7", X"fcdc", X"025f", X"fe04", X"026e", X"01b2", X"fd2d", X"01b8",
                                                        X"024d", X"ff68", X"00d9", X"0283", X"ff09", X"0201", X"0097", X"fe09", X"ff71", X"fd9b", X"fda4", X"ff91", X"fda7", X"fd45",
                                                        X"01f8", X"0183", X"fc8c", X"01ac", X"fd86", X"fe8d", X"018e", X"ff17", X"00ff", X"fd3f", X"011a", X"ff63", X"01db", X"00b6",
                                                        X"fe58", X"01b2", X"00e1", X"ff56", X"ff39", X"ff72", X"fd01", X"fe09", X"fea2", X"fdad", X"ffb6", X"0043", X"0232", X"0210",
                                                        X"016e", X"0208", X"fd78", X"feac", X"015f", X"ff40", X"01e3", X"ff25", X"fd4c", X"01b5", X"0253", X"ff07", X"024e", X"fece",
                                                        X"01fd", X"ff09", X"fee6", X"fd4e", X"0033", X"fee6", X"0183", X"fff3", X"fff9", X"fe7a", X"fe1a", X"01c2", X"ffbd", X"00aa",
                                                        X"022b", X"fea1", X"fd33", X"ff1d", X"00ad", X"023a", X"01c3", X"fe1f", X"fcdd", X"fe2e", X"fefb", X"ffbb", X"fea2", X"018f",
                                                        X"0227", X"00bb", X"ff7b", X"00fe", X"0137", X"fe5b", X"0245", X"fe70", X"fedd", X"feff", X"01ee", X"fdea", X"008a", X"00f4",
                                                        X"fd9f", X"0191", X"fd77", X"fd57", X"023c", X"ffdb", X"ff07", X"fcb1", X"fe29", X"0056", X"0192", X"fcea", X"0154", X"ffc3",
                                                        X"008e", X"0164", X"ff12", X"01b0", X"01ac", X"011d", X"ff29", X"fcc2", X"0184", X"ff43", X"00bb", X"fd4f", X"019d", X"0167",
                                                        X"0272", X"fdab", X"fe26", X"0065", X"010b", X"0117", X"ffd0", X"fe6f", X"018e", X"016a", X"ffa1", X"fe63", X"fea9", X"fd65",
                                                        X"fd55", X"024b", X"ff0a", X"fe62", X"0265", X"feac", X"0156", X"0123", X"fcb1", X"fdfa", X"fde7", X"0259", X"fdea", X"00c5",
                                                        X"fd90", X"fdb5", X"fe94", X"0254", X"007b", X"fe65", X"ff9c", X"ffc3", X"002b", X"fe64", X"feee", X"fc7d", X"ffb8", X"0149",
                                                        X"0138", X"fda1", X"01dc", X"028b", X"00be", X"0110", X"ff5f", X"ff07", X"fdcf", X"fed4", X"fd55", X"fe0c", X"fdc2", X"fc96",
                                                        X"fe13", X"fe9f", X"020a", X"fd96", X"024f", X"fdbf", X"ffca", X"fd9a", X"0023", X"01c4", X"fd6d", X"ff59", X"fceb", X"0178",
                                                        X"0163", X"fe24", X"004f", X"022b", X"0025", X"0082", X"fec9", X"010f", X"fd97", X"fd9b", X"fe04", X"fd88", X"fe61", X"0040",
                                                        X"fcf8", X"0138", X"0039", X"ffe9", X"ff04", X"00f1", X"fcd4", X"ff29", X"fda8", X"000d", X"0250", X"00c1", X"0239", X"0059",
                                                        X"011a", X"fef3", X"fe0f", X"fd3c", X"fece", X"0183", X"fe21", X"feda", X"019f", X"fe5b", X"01f4", X"00fd", X"fd70", X"00ec",
                                                        X"fd50", X"ffac", X"ff88", X"ff24", X"fe1f", X"012b", X"022d", X"006d", X"0126", X"0143", X"fd32", X"0108", X"ffb5", X"fefa",
                                                        X"fd6d", X"fe4b", X"fd32", X"0089", X"fe72", X"fd2f", X"fecc", X"fd52", X"00a5", X"0003", X"017a", X"ffca", X"fd96", X"ff8d",
                                                        X"0215", X"fe0f", X"fd74", X"fffc", X"021b", X"01b3", X"fda3", X"0201", X"feb0", X"fe69", X"017c", X"016a", X"0186", X"fe3f",
                                                        X"01f6", X"00e9", X"0121", X"0295", X"0257", X"016b", X"002b", X"fd00", X"fd9d", X"fe9f", X"fdd0", X"fcb5", X"fe4a", X"fd55",
                                                        X"0242", X"0208", X"fe86", X"fec4", X"ffbc", X"ff3b", X"fdae", X"fe17", X"fff2", X"0106", X"00e6", X"0178", X"0068", X"01bf",
                                                        X"fe2b", X"ff8c", X"01e0", X"fda7", X"fefa", X"fe2e", X"fd4a", X"011f", X"fd17", X"fecd", X"fdff", X"01a9", X"fe38", X"ff4e",
                                                        X"fd2d", X"feae", X"fda5", X"fff7", X"ff7f", X"01c4", X"0286", X"01ff", X"015b", X"fee2", X"ffa7", X"023c", X"0165", X"fe57",
                                                        X"fdc2", X"0161", X"fdbb", X"00aa", X"009b", X"ff0a", X"0118", X"ff33", X"febd", X"ff8d", X"003b", X"ffa8", X"fd38", X"0140",
                                                        X"ff01", X"0209", X"fcf4", X"fe80", X"ff5d", X"fccb", X"0056", X"fe87", X"ff26", X"fecb", X"fd3c", X"fee2", X"00a1", X"0109",
                                                        X"0019", X"00ed", X"fe6f", X"fe8d", X"00d2", X"fdb0", X"ff93", X"fce3", X"fe29", X"fdbd", X"fffe", X"01d7", X"01f4", X"0095",
                                                        X"0030", X"fe71", X"fda0", X"fed5", X"015b", X"015d", X"002e", X"021a", X"0253", X"0083", X"fff5", X"0168", X"fd50", X"fe88",
                                                        X"ff71", X"fff2", X"ffe7", X"fcc2", X"feec", X"00cd", X"ffe3", X"fdac", X"fda0", X"0173", X"0203", X"ffb5", X"fe06", X"01ec",
                                                        X"0151", X"ff3b", X"025e", X"fe7b", X"00a8", X"fd27", X"0261", X"01d2", X"fd8b", X"fdd8", X"ff8b", X"00c6", X"fe52", X"0062",
                                                        X"0192", X"fe2a", X"fd1c", X"fe07", X"0080", X"0098", X"fd30", X"fe9b", X"feb3", X"fed5", X"fffa", X"ffc9", X"fe75", X"fce6",
                                                        X"008b", X"ffef", X"024e", X"fe45", X"fe95", X"0046", X"fe9b", X"ff2c", X"003e", X"ff25", X"ff1c", X"fe39", X"0118", X"fdc1",
                                                        X"fd58", X"0016", X"0069", X"ffcb", X"0159", X"fdec", X"00b5", X"0047", X"01f4", X"00bf", X"ff40", X"fdf4", X"0092", X"0147",
                                                        X"0231", X"0202", X"fd9c", X"fe3c", X"ff4f", X"0270", X"0251", X"fe0a", X"00b7", X"ff97", X"00af", X"ffc7", X"fd3a", X"fef4",
                                                        X"006d", X"ffa9", X"0003", X"fcfa", X"0233", X"ff22", X"fca5", X"fe8b", X"0135", X"ff01", X"fd49", X"0189", X"023e", X"0087",
                                                        X"0254", X"0078", X"0158", X"fd43", X"02b7", X"01de", X"01d6", X"fe70", X"fca2", X"fdf2", X"fd71", X"fea8", X"fe5d", X"fddb",
                                                        X"fd6b", X"02cd", X"028a", X"0126", X"fdd6", X"fe05", X"fca2", X"0045", X"01ff", X"fd45", X"fd81", X"fde6", X"ff6c", X"ffe3",
                                                        X"ffe5", X"0171", X"0173", X"011b", X"fd9e", X"fe13", X"026b", X"00fc", X"0092", X"ff27", X"ff07", X"012c", X"00b1", X"0230",
                                                        X"fecb", X"00f7", X"00f3", X"fe32", X"00f8", X"0290", X"feee", X"fd8b", X"00e3", X"0260", X"ff8f", X"004c", X"fcfb", X"fdea",
                                                        X"fcd7", X"0030", X"0018", X"ff97", X"fded", X"01c0", X"00bb", X"ff09", X"01fa", X"fe50", X"013a", X"fdbe", X"021b", X"fe7d",
                                                        X"009e", X"0132", X"fdec", X"fdb0", X"fd80", X"019c", X"01a6", X"ff2c", X"025a", X"002c", X"025f", X"fecb", X"0207", X"ff9c",
                                                        X"fd69", X"ff94", X"fd2b", X"fd8d", X"0134", X"01ce", X"ffbb", X"fe62", X"0024", X"012b", X"ff39", X"fead", X"fde4", X"01c1",
                                                        X"0259", X"ffe7", X"014e", X"fc8b", X"fd92", X"020c", X"0055", X"fed3", X"ff80", X"fe1b", X"01cc", X"ff35", X"ff5f", X"ffc6",
                                                        X"fdd9", X"feed", X"017c", X"0052", X"fe3c", X"fff2", X"fdbc", X"0194", X"fd72", X"ff3e", X"0080", X"fd95", X"020d", X"ffa5",
                                                        X"0194", X"0012", X"fd6a", X"ffeb", X"fe19", X"fe94", X"0120", X"00d2", X"00bd", X"fe64", X"ff50", X"fee5", X"01ba", X"022a",
                                                        X"fe4a", X"0111", X"00be", X"ffc9", X"fd17", X"007f", X"fedb", X"0150", X"fe38", X"003d", X"fead", X"fec9", X"00bd", X"fd45",
                                                        X"fcf9", X"0124", X"fef7", X"ffa7", X"0046", X"fe6d", X"fec7", X"fe9f", X"01d3", X"fd97", X"00d5", X"0119", X"fe8f", X"fe4d",
                                                        X"0180", X"ffbd", X"ff2b", X"fe20", X"01d4", X"fde5", X"fe67", X"01ed", X"0287", X"016a", X"fd37", X"0075", X"00f4", X"fe4e",
                                                        X"fee0", X"ff4c", X"0131", X"fd4d", X"0082", X"00fa", X"01b3", X"feca", X"0018", X"00c1", X"ff01", X"fd8c", X"feba", X"fdd2",
                                                        X"fe99", X"fe41", X"fe6d", X"fe0a", X"ff96", X"0232", X"00de", X"017c", X"ff2c", X"0223", X"fde4", X"01c1", X"ff50", X"fe51",
                                                        X"00a7", X"fda8", X"00af", X"feb7", X"fe66", X"ff8a", X"0138", X"0013", X"fe5f", X"ff35", X"02d5", X"ff1d", X"0213", X"0155",
                                                        X"011b", X"0048", X"0180", X"fed2", X"ffa3", X"0120", X"01cc", X"fdf3", X"0138", X"fecf", X"fe73", X"0144", X"fdf5", X"fd66",
                                                        X"0284", X"002f", X"02a5", X"fea4", X"fc92", X"00eb", X"fcfd", X"fed3", X"fe54", X"fe22", X"0138", X"fed8", X"019f", X"001a",
                                                        X"013a", X"ff1a", X"008b", X"0177", X"fe9e", X"fdb5", X"fedd", X"021c", X"ff4b", X"fe49", X"0142", X"fe04", X"fe56", X"0277",
                                                        X"00cb", X"01c8", X"fd44", X"01be", X"fdbe", X"fec9", X"0209", X"ff02", X"fd67", X"ffc8", X"ffed", X"ff99", X"0116", X"fdf4",
                                                        X"fe90", X"fee0", X"fd28", X"00e3", X"fe11", X"fed8", X"00e6", X"0113", X"0268", X"0055", X"02a4", X"fda1", X"0082", X"ff7c",
                                                        X"01f7", X"ff5d", X"fd8d", X"ff4e", X"0159", X"fd4f", X"fdac", X"fe9e", X"0167", X"005d", X"fe5a", X"fd7b", X"fe20", X"fcfa",
                                                        X"fee2", X"fcc1", X"022d", X"00f2", X"fcff", X"ff44", X"01c5", X"fe50", X"fdb5", X"002a", X"0257", X"0006", X"fee1", X"ff6b",
                                                        X"ff5a", X"012a", X"fed5", X"00ae", X"003b", X"fefd", X"fe03", X"029e", X"0003", X"01e4", X"fddd", X"00f7", X"0024", X"00b7",
                                                        X"fda6", X"fcee", X"fdb3", X"fce7", X"fe2a", X"ffc8", X"ffac", X"fde2", X"fece", X"fe17", X"fe5a", X"fd96", X"0284", X"fdd9",
                                                        X"00d2", X"0119", X"0013", X"fe35", X"01a2", X"01e1", X"fd96", X"fead", X"ff66", X"fcd8", X"fdcb", X"fe8f", X"002f", X"feff",
                                                        X"016c", X"ff42", X"fdd1", X"0101", X"0070", X"fdb4", X"004f", X"ff38", X"01e2", X"0126", X"0114", X"0037", X"01a0", X"01ea",
                                                        X"006b", X"00ea", X"fead", X"fdc7", X"02ae", X"00d9", X"028d", X"ffe7", X"00ec", X"010f", X"fcf3", X"fd84", X"ffb3", X"fdb6",
                                                        X"00d6", X"0057", X"fc9e", X"ff37", X"fec8", X"00c8", X"ff3b", X"ff27", X"ff62", X"0286", X"0164", X"00ac", X"0181", X"0168",
                                                        X"ff4c", X"0292", X"0197", X"feaf", X"0173", X"fd1c", X"00ca", X"fe43", X"febe", X"014d", X"0164", X"fe05", X"fe6f", X"018f",
                                                        X"0095", X"00c7", X"0238", X"fe8e", X"ffff", X"fd25", X"00d0", X"fddd", X"018f", X"fd20", X"fe55", X"fd90", X"fe7e", X"0067",
                                                        X"0298", X"021a", X"01eb", X"fee0", X"fd23", X"01b1", X"0243", X"ff7a", X"00f8", X"fce2", X"fdf1", X"00f6", X"01c8", X"ff33",
                                                        X"fcc8", X"fe8a", X"ff21", X"00ae", X"01b4", X"016a", X"ffc7", X"fe87", X"008c", X"ffe3", X"002d", X"00d0", X"ff95", X"00db",
                                                        X"ff51", X"fcce", X"fcd1", X"0000", X"011c", X"fe2d", X"fe01", X"0270", X"ffa2", X"0134", X"ffa8", X"ff0f", X"0166", X"0060",
                                                        X"0178", X"feb6", X"00d8", X"fec1", X"fd7d", X"ff5b", X"01a5", X"ff81", X"0113", X"ff73", X"fd67", X"0017", X"ff23", X"fd4f",
                                                        X"ff5f", X"fd6d", X"0124", X"ffdc", X"014b", X"003d", X"fc89", X"016d", X"ff48", X"0255", X"0150", X"019b", X"ff00", X"01c1",
                                                        X"01cd", X"0155", X"fd10", X"ff35", X"001f", X"fef2", X"fe4c", X"003d", X"0120", X"fd37", X"ffc3", X"0225", X"0035", X"0201",
                                                        X"ffad", X"01a9", X"fe82", X"0018", X"fd71", X"0177", X"ffc2", X"fd64", X"0066", X"ffd1", X"fd97", X"0255", X"ffc0", X"fd54",
                                                        X"fe7d", X"ff5c", X"001f", X"fdc2", X"00a6", X"021c", X"ff15", X"ffbe", X"fd53", X"fdb2", X"02b7", X"0264", X"0126", X"ff7b",
                                                        X"0059", X"01ff", X"012d", X"fe40", X"014a", X"0139", X"005e", X"0122", X"fd39", X"fe54", X"feee", X"fe7d", X"02ab", X"fe5b",
                                                        X"0153", X"fd73", X"007b", X"fe0b", X"0179", X"003f", X"0237", X"fe9d", X"0114", X"012a", X"ffa5", X"fd82", X"ffc8", X"fd96",
                                                        X"fd6c", X"fd1b", X"0292", X"010a", X"fe0a", X"ff69", X"0172", X"fe9f", X"0126", X"febf", X"ff10", X"fff5", X"01a5", X"01e1",
                                                        X"0162", X"ff31", X"fec3", X"fe67", X"fd49", X"fff9", X"002d", X"001c", X"fdac", X"0129", X"0123", X"00a5", X"0160", X"fece",
                                                        X"ffed", X"ff69", X"0226", X"001c", X"0047", X"0183", X"ff58", X"026e", X"fcf9", X"fee3", X"00d1", X"fffe", X"ff11", X"0023",
                                                        X"fe77", X"febb", X"0217", X"fccb", X"fe02", X"0059", X"01d4", X"017e", X"0081", X"fce0", X"01b8", X"febc", X"fd39", X"ffd7",
                                                        X"007d", X"01db", X"0113", X"fd37", X"01f0", X"fe58", X"fd78", X"ffc3", X"ffa8", X"01d0", X"fd78", X"005e", X"feb7", X"026e",
                                                        X"fd47", X"ff69", X"fd4b", X"0117", X"0222", X"009d", X"fd04", X"001f", X"ffff", X"fdd3", X"0095", X"fd26", X"ff80", X"fe41",
                                                        X"fffb", X"fd38", X"ff1c", X"00d2", X"01cb", X"fd07", X"0209", X"021f", X"ff8b", X"fee5", X"0129", X"ffb5", X"ff97", X"fd9d",
                                                        X"fd85", X"fecf", X"014e", X"ff07", X"ff9b", X"ffee", X"01ff", X"fe6c", X"fd05", X"018d", X"001f", X"020d", X"00ad", X"ff9e",
                                                        X"01cd", X"0017", X"00b7", X"02b6", X"0078", X"ff32", X"fe55", X"ffc0", X"fe1f", X"00e5", X"fe77", X"fd71", X"ffd1", X"fdcb",
                                                        X"012a", X"fe56", X"ffa1", X"fe19", X"0172", X"fe7c", X"fd74", X"fd6e", X"feda", X"0064", X"fd13", X"fd8d", X"ff85", X"ff0f",
                                                        X"ff6e", X"fe27", X"01a9", X"ffd7", X"0213", X"fdec", X"0224", X"fd0f", X"01e4", X"febc", X"fe56", X"fe7f", X"fdfa", X"0095",
                                                        X"fdd8", X"fdff", X"fcc7", X"fefd", X"fd93", X"ff91", X"fe03", X"fda1", X"ffc8", X"fd1a", X"fecc", X"fe8f", X"fda5", X"fd6d",
                                                        X"fe65", X"fe34", X"01df", X"021a", X"0142", X"febc", X"fd74", X"0211", X"0234", X"00ac", X"fef0", X"ff79", X"00bc", X"024d",
                                                        X"ffcf", X"fe92", X"fd7e", X"0247", X"014b", X"fe67", X"fdf5", X"ffdc", X"0032", X"fd60", X"ff0d", X"0060", X"fe17", X"ff84",
                                                        X"fe17", X"fe42", X"0279", X"0233", X"fd50", X"023e", X"0139", X"fd2d", X"0135", X"ffe6", X"ff4e", X"0173", X"0245", X"ff69",
                                                        X"ff4c", X"fd39", X"fec2", X"0083", X"fd84", X"0176", X"fe46", X"ffe1", X"0113", X"fecb", X"fd2f", X"fcca", X"ffdf", X"0216",
                                                        X"fdcf", X"fd84", X"fdd2", X"fe54", X"005d", X"0042", X"fe54", X"fcfb", X"018d", X"01a9", X"fdda", X"fdc0", X"fc9e", X"00c7",
                                                        X"01e8", X"00bb", X"0132", X"ff30", X"fda5", X"ffc5", X"00d2", X"fea8", X"0124", X"fed4", X"ff0f", X"021f", X"023d", X"0100",
                                                        X"fdd6", X"00e5", X"fdb8", X"ff3a", X"ff66", X"014c", X"fe65", X"ffc7", X"0104", X"ff8a", X"fe54", X"00b8", X"fc8c", X"ffb4",
                                                        X"018a", X"fe36", X"00c3", X"fe42", X"fd2a", X"fed5", X"fe9e", X"feeb", X"0117", X"0190", X"00cf", X"0027", X"ff2d", X"01fa",
                                                        X"fd27", X"00ab", X"00d2", X"00bc", X"fefe", X"014c", X"0080", X"ff97", X"008e", X"fe0d", X"fdfe", X"fcf2", X"fe11", X"fdb2",
                                                        X"01f5", X"fe29", X"ff2f", X"ff9a", X"fd2c", X"fe7f", X"fffe", X"01cc", X"ff6c", X"005d", X"ffec", X"ffa1", X"01e2", X"fd69",
                                                        X"ffcf", X"012d", X"0170", X"028e");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"028e";
  SIGNAL addr_unsigned                    : unsigned(AddrWidth - 1 DOWNTO 0);  -- generic width

BEGIN
  addr_unsigned <= unsigned(addr);

  SinglePortRAM_generic_process: PROCESS (clk)
  BEGIN
    IF clk'event AND clk = '1' THEN
      IF enb = '1' THEN
        IF we = '1' THEN
          ram(to_integer(addr_unsigned)) <= din;
          data_int <= din;
        ELSE
          data_int <= ram(to_integer(addr_unsigned));
        END IF;
      END IF;
    END IF;
  END PROCESS SinglePortRAM_generic_process;

  dout <= data_int;

END rtl;

