-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block405.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block405
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage52/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block405 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block405;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block405 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fffa", X"fdd8", X"fe4c", X"0014", X"00bd", X"fe1a",
                                                        X"ffa0", X"0225", X"013c", X"01cc", X"0010", X"0188", X"000c", X"ff31", X"fe77", X"0100", X"ff9c", X"00f6", X"fea3", X"019d",
                                                        X"0122", X"fd7b", X"0292", X"fea5", X"ff05", X"fe55", X"fd10", X"fed0", X"00a0", X"0050", X"0030", X"ffe6", X"fec7", X"fef8",
                                                        X"01a6", X"0022", X"004a", X"ff11", X"ff0d", X"fda9", X"ff27", X"fd2c", X"00fd", X"0244", X"ff06", X"ffa9", X"01d9", X"fcdb",
                                                        X"fe42", X"fd6d", X"002f", X"022f", X"ffae", X"fd9e", X"fe74", X"0156", X"01ac", X"fe55", X"fe08", X"fceb", X"fd6e", X"fe37",
                                                        X"fd4f", X"0095", X"0224", X"fcc1", X"ff5e", X"02ca", X"fe45", X"fd16", X"0293", X"fdf1", X"006c", X"fda1", X"0006", X"01ef",
                                                        X"022c", X"0121", X"01f2", X"003c", X"0128", X"01ab", X"01c3", X"fdb3", X"fea6", X"000b", X"fdb3", X"01dd", X"0017", X"004b",
                                                        X"0257", X"fcaa", X"027f", X"febd", X"0102", X"fd53", X"00e1", X"00e4", X"0017", X"01bb", X"fd7f", X"0181", X"0158", X"025d",
                                                        X"fd7e", X"fe8d", X"fdd1", X"fd0e", X"0298", X"fee7", X"00a4", X"fcbd", X"022d", X"fe06", X"004e", X"0122", X"0269", X"01ce",
                                                        X"02b7", X"fe4d", X"fee4", X"fde1", X"fdef", X"021f", X"fd33", X"0100", X"fcbc", X"ffc2", X"fea2", X"fdbf", X"fd17", X"ff3a",
                                                        X"02c0", X"0078", X"ff55", X"ff98", X"0004", X"ffa5", X"fedd", X"0084", X"017f", X"feb5", X"fe7d", X"00dd", X"ff5a", X"002d",
                                                        X"fd95", X"02a0", X"fd17", X"fe6c", X"fd3c", X"ff83", X"fdc5", X"fe6a", X"fd94", X"0198", X"02c1", X"fe78", X"fd9f", X"001f",
                                                        X"0181", X"01f5", X"0240", X"ff10", X"fcd3", X"003c", X"025a", X"fd71", X"ff1a", X"0136", X"000b", X"ff3d", X"0061", X"ffd7",
                                                        X"fcd1", X"0137", X"fff5", X"0215", X"ff69", X"005f", X"fdcf", X"fcd0", X"ff76", X"ffe2", X"ff9f", X"005c", X"fed0", X"fdcd",
                                                        X"0191", X"ffb3", X"ffd9", X"fce0", X"ff63", X"fe64", X"ffa1", X"0002", X"0134", X"01c3", X"ffd6", X"fd2e", X"0149", X"fdeb",
                                                        X"025c", X"0036", X"ff3e", X"01ce", X"fefc", X"fe5a", X"020f", X"ff0d", X"015a", X"fe05", X"fea6", X"fccf", X"0173", X"fc9b",
                                                        X"00ef", X"fc64", X"004b", X"fe2d", X"fea6", X"fdc4", X"fe4a", X"01a5", X"fed8", X"fe91", X"fff1", X"ffb0", X"fdde", X"0167",
                                                        X"023c", X"fd74", X"0147", X"ffe2", X"fdb4", X"fe37", X"fd00", X"ff4e", X"ffda", X"ffa8", X"ffd2", X"01e0", X"0256", X"0050",
                                                        X"0256", X"01e0", X"ff38", X"0163", X"0098", X"00e0", X"fe36", X"fdd9", X"00fe", X"ffe6", X"ff06", X"fdba", X"ff71", X"ff00",
                                                        X"fd20", X"fe92", X"0019", X"fdf5", X"fdc4", X"fef9", X"ff92", X"0109", X"0045", X"0023", X"feae", X"ff85", X"0025", X"00cf",
                                                        X"00c5", X"fcdd", X"fd02", X"ff1d", X"fe12", X"01f8", X"0251", X"fddd", X"fd61", X"0220", X"ffd9", X"0022", X"001b", X"00d3",
                                                        X"0064", X"0292", X"02d5", X"0050", X"fe61", X"009f", X"fe12", X"00b7", X"017c", X"ff79", X"0255", X"ff2c", X"019b", X"0173",
                                                        X"0042", X"fea1", X"01b2", X"fcf7", X"0001", X"ff05", X"0142", X"011e", X"0007", X"fd2e", X"ffa9", X"ff20", X"02b7", X"fd5a",
                                                        X"0002", X"fef0", X"006e", X"02d2", X"fe3a", X"fd6a", X"00fe", X"002a", X"ffa6", X"fe57", X"fee8", X"00ca", X"ff46", X"fcc5",
                                                        X"0122", X"0139", X"ff3e", X"fd4a", X"011b", X"fe29", X"00bb", X"00e3", X"0291", X"0044", X"00fc", X"ffa9", X"007b", X"00b9",
                                                        X"0175", X"021b", X"fe81", X"0146", X"001f", X"ff09", X"fe01", X"029f", X"fe67", X"fd60", X"ffd7", X"fe43", X"feaf", X"fed7",
                                                        X"fd7f", X"fdf9", X"ff3c", X"022e", X"019b", X"ffa4", X"fd7e", X"fdc0", X"02e1", X"0119", X"feb8", X"012e", X"fe0f", X"fde6",
                                                        X"014f", X"feca", X"ff8d", X"024f", X"fe74", X"010c", X"0079", X"fef7", X"0229", X"ff75", X"ff57", X"017c", X"fe17", X"fe26",
                                                        X"00f2", X"00a4", X"ff13", X"fd64", X"fdd9", X"0034", X"feb1", X"01fd", X"fd48", X"0179", X"01e7", X"0032", X"024a", X"fffd",
                                                        X"feb5", X"fd4c", X"ff5e", X"fe06", X"fe0d", X"fe85", X"0300", X"fcbb", X"02ec", X"fd97", X"030d", X"000a", X"0188", X"fd25",
                                                        X"fe21", X"fef7", X"0211", X"fdcb", X"fd68", X"015d", X"fd27", X"01dd", X"02b0", X"0041", X"00ed", X"fe27", X"fd39", X"019b",
                                                        X"ff96", X"ff6c", X"fcc3", X"020d", X"01cb", X"fd09", X"0279", X"01e1", X"fdf3", X"00db", X"0148", X"fddc", X"fff2", X"fddf",
                                                        X"0193", X"ff4c", X"fe1a", X"ff4f", X"01b9", X"ff9c", X"feb3", X"ff7d", X"019a", X"fe96", X"ff89", X"00af", X"fdf0", X"fd82",
                                                        X"0051", X"fe5e", X"fcab", X"fd52", X"fcec", X"fed2", X"ff36", X"0263", X"fe78", X"fcdd", X"0100", X"fe4e", X"0014", X"00d3",
                                                        X"fde8", X"fd6a", X"0148", X"ff76", X"ff59", X"ffc0", X"fcf3", X"01ee", X"fd6f", X"ff26", X"fde8", X"01c3", X"0244", X"fe2f",
                                                        X"fd97", X"ffa5", X"fe3d", X"fddf", X"ff5e", X"009c", X"fd67", X"ff40", X"0064", X"fe19", X"0114", X"fe69", X"0167", X"0180",
                                                        X"0073", X"ff48", X"0160", X"fd66", X"003b", X"fcdc", X"fd45", X"ff02", X"0115", X"0279", X"ff93", X"ffcb", X"fef6", X"ff28",
                                                        X"fdc3", X"ff17", X"004a", X"0090", X"fdce", X"ff6d", X"0227", X"00a9", X"fdd9", X"0048", X"0197", X"026e", X"02bd", X"0012",
                                                        X"fdf8", X"ff51", X"0117", X"0224", X"feef", X"ff98", X"ff51", X"fed7", X"0177", X"ff89", X"fd9d", X"0032", X"fd17", X"0146",
                                                        X"00f7", X"fe37", X"ffa1", X"0066", X"ffb7", X"fe50", X"ff44", X"fe39", X"001c", X"0253", X"fe7e", X"fde4", X"fdae", X"fe5c",
                                                        X"fdf9", X"0206", X"fc8a", X"ff0f", X"0256", X"fe31", X"fdf2", X"fe98", X"fda4", X"ff29", X"fe2a", X"fe3f", X"ff86", X"fdb6",
                                                        X"0276", X"fd4d", X"01e1", X"fdcf", X"fd17", X"0257", X"fede", X"fcad", X"fca8", X"fe0c", X"00db", X"0212", X"fd9c", X"0197",
                                                        X"fd25", X"fcd4", X"0000", X"ff7e", X"001a", X"fd9c", X"0159", X"fd3c", X"0327", X"ff7f", X"fea1", X"fdf9", X"00db", X"0260",
                                                        X"0110", X"fdc3", X"ff2e", X"fd0f", X"fe98", X"fdb5", X"01cb", X"fcf4", X"0040", X"0098", X"019a", X"00d2", X"00e5", X"00eb",
                                                        X"00ea", X"fd29", X"005b", X"0128", X"fcd5", X"feb0", X"fe30", X"fd2b", X"0115", X"ff16", X"ff38", X"fde4", X"fcf2", X"fd9f",
                                                        X"01c0", X"0044", X"fe8c", X"01b3", X"02a8", X"01b5", X"fffa", X"021e", X"01e2", X"0098", X"fe80", X"fdad", X"fda2", X"ff46",
                                                        X"028f", X"0054", X"feb2", X"ffe6", X"fe3f", X"0078", X"fd4d", X"ff49", X"ff4c", X"fcf1", X"014f", X"01cf", X"feb6", X"019a",
                                                        X"fdb7", X"ffb9", X"fd89", X"fefe", X"ffda", X"fd80", X"fcc4", X"ff8c", X"0262", X"0158", X"ff62", X"fdf5", X"fffc", X"011a",
                                                        X"004c", X"0103", X"01bb", X"01d5", X"0125", X"01d0", X"fdd5", X"ff6f", X"ff97", X"0196", X"0067", X"02f2", X"fd92", X"0203",
                                                        X"0267", X"018a", X"0201", X"0192", X"fcfd", X"0135", X"00bd", X"fd1e", X"fdda", X"fed2", X"fe9b", X"0198", X"0152", X"ffba",
                                                        X"fe50", X"01a4", X"00cc", X"ffc7", X"0005", X"ff8b", X"01bd", X"00eb", X"fea1", X"0189", X"fccd", X"0199", X"ff8e", X"0121",
                                                        X"019e", X"fd17", X"0027", X"fd6f", X"fdca", X"fe06", X"fe9f", X"fdac", X"00ff", X"fea8", X"fe02", X"00d3", X"fdc3", X"fc7b",
                                                        X"fe48", X"fd2c", X"005f", X"0021", X"0174", X"fcc3", X"015d", X"0274", X"030d", X"0179", X"00a9", X"ffd1", X"01ca", X"020e",
                                                        X"012c", X"fca6", X"fed2", X"ff1b", X"feaa", X"00a2", X"ffd6", X"fe87", X"007b", X"0120", X"feb9", X"020f", X"ff5c", X"0132",
                                                        X"0235", X"013a", X"fd57", X"01d7", X"ffad", X"fda0", X"fdf8", X"ffcd", X"fdb9", X"fe78", X"0193", X"fff2", X"0151", X"ff3a",
                                                        X"fedb", X"fe01", X"fe36", X"007f", X"fdfc", X"ff8f", X"fe1f", X"0043", X"fe86", X"0274", X"ff54", X"00b3", X"fd68", X"0097",
                                                        X"017b", X"0145", X"00b6", X"0051", X"02be", X"ff9d", X"0077", X"fd94", X"01a9", X"01b0", X"0090", X"020c", X"019f", X"fede",
                                                        X"ff1f", X"01b8", X"fe2d", X"0089", X"ffba", X"fef2", X"024f", X"fe53", X"fe72", X"ffaa", X"0204", X"fdaa", X"ff78", X"016c",
                                                        X"ffdd", X"ff0f", X"0180", X"febc", X"fea5", X"fcdb", X"01dc", X"021e", X"0045", X"fe83", X"0056", X"0052", X"025a", X"fd4f",
                                                        X"028a", X"fd6b", X"00e3", X"feef", X"0248", X"fd87", X"fdb8", X"fc9a", X"00f0", X"025f", X"ff64", X"0204", X"feae", X"01d5",
                                                        X"fed2", X"0288", X"0150", X"ff98", X"ff8f", X"ff81", X"013e", X"014a", X"fd09", X"fe80", X"fe12", X"fe60", X"0134", X"0188",
                                                        X"0188", X"00fd", X"fd6d", X"fce5", X"01f5", X"0276", X"fe5b", X"00da", X"0029", X"002e", X"ff15", X"fe59", X"ffd9", X"ff3c",
                                                        X"fdb6", X"fd54", X"0146", X"0084", X"ff24", X"0084", X"01b3", X"0093", X"feb0", X"fcab", X"0231", X"012d", X"fe26", X"00fd",
                                                        X"fd04", X"fd5c", X"014e", X"010a", X"ff02", X"feee", X"019f", X"0080", X"0076", X"022e", X"fde5", X"fcb8", X"012b", X"fe0e",
                                                        X"ffb6", X"fe01", X"0158", X"fcf8", X"00a5", X"0218", X"007b", X"fed9", X"ff30", X"fe22", X"fdb5", X"0176", X"fde5", X"fe29",
                                                        X"fe4e", X"00d3", X"fe16", X"fcfc", X"fec2", X"fe1c", X"008e", X"00c8", X"0168", X"feda", X"fcdd", X"00fa", X"fdf7", X"01f1",
                                                        X"fe25", X"fecb", X"00f5", X"fdb7", X"00c6", X"0137", X"0162", X"fecf", X"fffc", X"ffe4", X"01f7", X"ffec", X"fece", X"fcac",
                                                        X"ffaf", X"01f5", X"fd7a", X"ffe2", X"fda2", X"fceb", X"ff6c", X"ff5a", X"002f", X"fde5", X"fffc", X"01d7", X"00ed", X"0121",
                                                        X"00a8", X"fdac", X"fd01", X"ff59", X"018a", X"fc57", X"ff4b", X"0053", X"0037", X"00e0", X"fd4a", X"fef8", X"fe63", X"0012",
                                                        X"0283", X"00a5", X"fddc", X"fc8b", X"fe42", X"025c", X"02a6", X"fc53", X"00e7", X"ff49", X"fed2", X"02cb", X"ff59", X"003d",
                                                        X"014e", X"0072", X"fd88", X"fd22", X"0200", X"003c", X"020e", X"0205", X"012c", X"0154", X"00b3", X"fef1", X"023d", X"005c",
                                                        X"ff94", X"fdbc", X"023b", X"0021", X"fea2", X"0086", X"ff96", X"00a5", X"fe74", X"ff73", X"ffef", X"fcbf", X"fd85", X"ff01",
                                                        X"fdb0", X"fda4", X"0202", X"01bd", X"ffff", X"fea6", X"fe88", X"00c8", X"01ea", X"fd75", X"01f7", X"fea7", X"fdba", X"023b",
                                                        X"fef5", X"009b", X"0289", X"ff70", X"0012", X"01aa", X"0032", X"00f0", X"fd11", X"fd5e", X"00ed", X"fd20", X"0020", X"01d5",
                                                        X"fde3", X"0197", X"ff8d", X"015c", X"fe69", X"ff3e", X"ff41", X"002a", X"00b0", X"fd5b", X"ff96", X"fde6", X"fcb5", X"ff5b",
                                                        X"00cc", X"fdc5", X"ff9c", X"ff8a", X"feb7", X"012e", X"fdcf", X"fcd0", X"feee", X"fd1a", X"fd8f", X"01a8", X"0128", X"029e",
                                                        X"ff15", X"fdfb", X"0160", X"fe2c", X"fd8f", X"fded", X"fd87", X"fed2", X"fe59", X"fd28", X"0159", X"feeb", X"feed", X"fe8c",
                                                        X"0127", X"fdc4", X"fe6a", X"0078", X"fcd6", X"feb6", X"fd04", X"011b", X"02e6", X"0010", X"0008", X"00b2", X"0010", X"fd06",
                                                        X"00ce", X"0049", X"fe2f", X"fde7", X"fe9a", X"fd5e", X"003c", X"006f", X"0063", X"012a", X"ff16", X"020b", X"ffa4", X"fe94",
                                                        X"fe27", X"00f6", X"fe71", X"00fb", X"fe90", X"fc73", X"ffe5", X"fefe", X"ff35", X"02fa", X"018e", X"fe85", X"02b7", X"fd76",
                                                        X"ff7c", X"fe62", X"0222", X"ff00", X"fce5", X"fd4a", X"fddf", X"fc1e", X"fe35", X"fcc8", X"0035", X"fe74", X"fd01", X"fd70",
                                                        X"fde3", X"fef2", X"fe41", X"0011", X"ffcc", X"00d9", X"fd92", X"0203", X"fe79", X"ffce", X"005d", X"0043", X"ffae", X"0254",
                                                        X"00a5", X"00d5", X"001b", X"fcc5", X"01f6", X"fd4e", X"fd73", X"01eb", X"0054", X"ff27", X"fe4f", X"027a", X"fdb9", X"0204",
                                                        X"01d5", X"0012", X"01c9", X"ffb1", X"ff36", X"0035", X"018a", X"fd7c", X"0039", X"01e7", X"01c3", X"fe29", X"ff1f", X"fded",
                                                        X"ffb0", X"fcfe", X"0292", X"0078", X"fe8c", X"fd4b", X"fd8a", X"ff26", X"00d1", X"ff24", X"fe10", X"01cd", X"ff6c", X"ffee",
                                                        X"01d6", X"fd00", X"0148", X"fdc8", X"0166", X"0052", X"0213", X"ff45", X"ff37", X"ffbb", X"fff4", X"0167", X"0074", X"00dd",
                                                        X"0198", X"fd6c", X"0065", X"fef1", X"ff4a", X"fee9", X"fefe", X"0049", X"0213", X"fc09", X"ff02", X"ff84", X"fd7c", X"0063",
                                                        X"fd67", X"00c0", X"00a2", X"0259", X"ffb5", X"01d0", X"00c6", X"fdcb", X"0151", X"fe38", X"ffa9", X"00bd", X"fe12", X"fec7",
                                                        X"ffd9", X"0132", X"fc9d", X"0224", X"fd92", X"fc82", X"0087", X"001d", X"01ec", X"ff2a", X"ff5a", X"028e", X"fec4", X"00fe",
                                                        X"026e", X"ff23", X"fd1d", X"fd1c", X"00c1", X"fe7f", X"0088", X"fe57", X"022d", X"fe8c", X"fd1b", X"ff43", X"011c", X"006d",
                                                        X"0111", X"fddb", X"ffb8", X"029b", X"ff78", X"fea8", X"fe27", X"027c", X"0226", X"01b2", X"ff15", X"fda5", X"fedb", X"fef5",
                                                        X"fe32", X"0207", X"0135", X"fc84", X"fe2f", X"fd7e", X"0078", X"fd90", X"009d", X"fe36", X"fd3b", X"001d", X"fd3e", X"0071",
                                                        X"fd8c", X"0002", X"ffa6", X"0203", X"feac", X"0214", X"fee3", X"004a", X"0108", X"fdb7", X"01ec", X"fe90", X"fd35", X"fee8",
                                                        X"fd37", X"fdda", X"017d", X"fe75", X"0186", X"fdd9", X"fe7d", X"fe45", X"026d", X"026a", X"feb8", X"ffb0", X"feca", X"ff41",
                                                        X"fdcc", X"0194", X"fee8", X"00aa", X"fdc7", X"0200", X"fd70", X"0239", X"fe7b", X"015f", X"020f", X"0045", X"014c", X"0032",
                                                        X"0188", X"fd43", X"00be", X"fe6b", X"005f", X"ff0a", X"0297", X"fd46", X"fe02", X"0153", X"015d", X"01a7", X"fdd3", X"fd12",
                                                        X"02b6", X"00cd", X"ff3e", X"025f", X"01a2", X"ff3c", X"febc", X"ff39", X"0113", X"01d8", X"fede", X"fed2", X"0097", X"00ee",
                                                        X"fde1", X"0208", X"00e2", X"fd24", X"fe16", X"fd52", X"000c", X"fe7d", X"ff3f", X"fcd5", X"fe2c", X"00b7", X"ff4e", X"014d",
                                                        X"fec3", X"fd0a", X"feab", X"00e0", X"00c9", X"fdc6", X"00a1", X"fd8c", X"fcf5", X"fe60", X"fc85", X"01ae", X"01ae", X"0012",
                                                        X"ff59", X"ff7b", X"ff21", X"00b3", X"fddf", X"fed0", X"0051", X"fc94", X"01de", X"fcb4", X"0291", X"01c2", X"fdd8", X"0093",
                                                        X"00ad", X"003b", X"ff5e", X"fff8", X"fd84", X"ff7e", X"fe49", X"00f4", X"0092", X"001f", X"fe98", X"0137", X"fe9c", X"fe8c",
                                                        X"feb3", X"019d", X"005b", X"008b", X"fe03", X"fe5c", X"fe7a", X"fc5e", X"fe37", X"01c5", X"fce6", X"00dc", X"fea1", X"0149",
                                                        X"0246", X"fe31", X"003b", X"fcc2", X"fe90", X"013e", X"fe9f", X"fd11", X"fff2", X"ff78", X"0091", X"00fd", X"fe9b", X"0280",
                                                        X"0130", X"fda8", X"0197", X"ff06", X"008e", X"fdbd", X"ff0b", X"0032", X"028b", X"fe80", X"fe3b", X"014e", X"0073", X"fd04",
                                                        X"fe51", X"fe4f", X"01c8", X"ff81", X"020e", X"fe4d", X"021d", X"fccd", X"fdce", X"fc5f", X"ffa4", X"ffb5", X"01b7", X"fc8e",
                                                        X"00cd", X"020c", X"fee7", X"ff4c", X"fdaa", X"fede", X"00e1", X"ff38", X"fd96", X"01d2", X"fece", X"ff42", X"00e2", X"fffc",
                                                        X"027a", X"fe77", X"02a3", X"0281", X"00f0", X"ff5d", X"000b", X"fdc3", X"ff18", X"fea8", X"fcb2", X"fe0a", X"fd57", X"fcd5",
                                                        X"0192", X"00d6", X"feef", X"00f0", X"0216", X"fff2", X"fd9d", X"ff3c", X"fc4b", X"fe93", X"0147", X"ffe9", X"013c", X"00f1",
                                                        X"ff9e", X"00e6", X"0008", X"fe50", X"ffe0", X"0231", X"01af", X"fd46", X"017a", X"0056", X"01e2", X"01ea", X"fe79", X"01d0",
                                                        X"fe21", X"fe3c", X"fd88", X"ffb2", X"02a6", X"0149", X"fd61", X"011b", X"0182", X"ff98", X"fd56", X"0168", X"0075", X"0208",
                                                        X"fdd7", X"ff01", X"01a2", X"010c", X"0093", X"fec2", X"fee5", X"fe0a", X"00d8", X"feb6", X"02a5", X"fe16", X"fcf2", X"fcf6",
                                                        X"ff68", X"0254", X"fe16", X"0201", X"fcf2", X"feaa", X"fe53", X"0166", X"fd2e", X"fd6f", X"fff3", X"00d2", X"01b6", X"feba",
                                                        X"fe77", X"012c", X"fe63", X"ff34", X"fe02", X"0237", X"fe6a", X"fcc0", X"fe14", X"01b1", X"000b", X"fe97", X"0254", X"000a",
                                                        X"fda2", X"ffcf", X"fe18", X"fe77", X"02b5", X"fd7e", X"0064", X"0261", X"0158", X"ff8f", X"fdb1", X"fe0a", X"fdb6", X"ff20",
                                                        X"0143", X"fe0a", X"fd75", X"fd10", X"fe9b", X"007f", X"ff17", X"ff8d", X"fe1f", X"00b3", X"fdcb", X"ff2c", X"0283", X"fe99",
                                                        X"fed9", X"00e0", X"fe1e", X"fd70", X"02d1", X"fcac", X"fe87", X"0138", X"ffdb", X"ffe3", X"fcfa", X"fdad", X"0056", X"fdcf",
                                                        X"fe28", X"ff11", X"0284", X"01eb", X"019e", X"00ab", X"fe65", X"0043", X"fda7", X"fd31", X"fd63", X"007e", X"ff79", X"0019",
                                                        X"fdd6", X"ff3f", X"0003", X"018c", X"00a5", X"0020", X"0025", X"ffc2", X"fd21", X"0289", X"0061", X"ff03", X"01d2", X"0240",
                                                        X"feca", X"fe6a", X"fe56", X"0119", X"0195", X"011d", X"0057", X"fe70", X"fe37", X"ff8f", X"fedd", X"feb3", X"fd39", X"010c",
                                                        X"fdbe", X"ff06", X"fe04", X"ffc1", X"ff3b", X"017a", X"febf", X"fc52", X"02ac", X"0058", X"fd08", X"fd74", X"fdfd", X"00e9",
                                                        X"ff38", X"ffae", X"fd9b", X"002f", X"0208", X"002a", X"fe50", X"01c2", X"feb7", X"fddf", X"fceb", X"009a", X"fdd5", X"fe27",
                                                        X"0281", X"0292", X"fff4", X"0165", X"fdd3", X"fda4", X"fd05", X"ff55", X"fca4", X"0158", X"0107", X"fd67", X"018e", X"ff39",
                                                        X"ff94", X"fc98", X"fd9a", X"022a", X"febb", X"0193", X"001d", X"01ae", X"fdf2", X"ff8a", X"00ff", X"0005", X"01cd", X"ff49",
                                                        X"ff8d", X"fe67", X"0197", X"fe1e", X"0245", X"0053", X"0124", X"fcc7", X"00ec", X"ff5f", X"0113", X"fdf8", X"fec4", X"0111",
                                                        X"01d2", X"fed2", X"007d", X"fed8", X"ffba", X"ffe5", X"016f", X"0042", X"01d5", X"fe31", X"fd56", X"fde7", X"ff37", X"fd15",
                                                        X"fdf8", X"01dc", X"fdd1", X"009c", X"02b9", X"ff7d", X"007b", X"00e8", X"01c1", X"fe86", X"0250", X"ff78", X"0276", X"025f",
                                                        X"007d", X"fd53", X"ff6d", X"ff9e", X"fd9b", X"feb8", X"006b", X"0299", X"fcbe", X"01e1", X"0114", X"fed3", X"feef", X"0035",
                                                        X"0163", X"0209", X"01d1", X"0249", X"01a8", X"ffbd", X"ffde", X"ffe1", X"fd68", X"0192", X"010d", X"ffff", X"0201", X"0215",
                                                        X"01d1", X"01fe", X"020b", X"0161", X"00fd", X"ff25", X"0177", X"fdd3", X"ffeb", X"01b6", X"fddb", X"02ba", X"01e3", X"01c9",
                                                        X"fe6c", X"fd8a", X"0107", X"fd04", X"01bf", X"fcb2", X"fe0e", X"fd76", X"003e", X"fcfd", X"0033", X"0213", X"ff1c", X"fe2b",
                                                        X"fd7e", X"fd7b", X"01c6", X"fceb", X"ff00", X"fd2c", X"ff46", X"feba", X"001f", X"00d0", X"fee3", X"fe37", X"ff69", X"fe9b",
                                                        X"fef0", X"032d", X"01e9", X"fe73", X"feda", X"0197", X"ff9b", X"003c", X"fe36", X"fe42", X"0272", X"0182", X"0114", X"ff7a",
                                                        X"fd29", X"01ba", X"fc50", X"02ab", X"0201", X"0014", X"fecc", X"fed0", X"fe13", X"0153", X"fdba", X"01e7", X"ffb9", X"fefb",
                                                        X"ff4b", X"fed9", X"000d", X"0165", X"021f", X"fd23", X"fd61", X"ff8e", X"ff89", X"000f", X"0130", X"fcaf", X"fd11", X"feb1",
                                                        X"ff59", X"0039", X"fd2d", X"fee6", X"fcfd", X"014b", X"ff56", X"ff4e", X"0105", X"fdef", X"fd96", X"015c", X"020d", X"0037",
                                                        X"0257", X"ffb5", X"ff8d", X"02cc", X"fdfd", X"fd76", X"0000", X"fd37", X"015f", X"ffe6", X"02d0", X"01c4", X"fed5", X"fe6c",
                                                        X"010c", X"0257", X"00d7", X"fef5", X"fe4e", X"0192", X"01af", X"fe0b", X"fe5c", X"fe4b", X"01f4", X"00fd", X"ffc6", X"01cf",
                                                        X"020a", X"ff25", X"013f", X"ff68", X"01d0", X"fdbd", X"ffb0", X"fd19", X"fe79", X"fcec", X"fe44", X"fd15", X"ffac", X"0170",
                                                        X"feed", X"0177", X"01ea", X"fd82", X"fe3e", X"fed1", X"fec8", X"ff64", X"fe4b", X"fd04", X"fe40", X"fde9", X"ffe2", X"fe1e",
                                                        X"fccb", X"0246", X"fdac", X"0087", X"fe00", X"fefc", X"004e", X"009c", X"fe6c", X"fe2b", X"ffd6", X"fe76", X"01ea", X"002c",
                                                        X"ff04", X"ff26", X"0078", X"0192", X"019e", X"fe45", X"fec2", X"fe8a", X"fe9d", X"025f", X"0105", X"fefc", X"023b", X"fe16",
                                                        X"fd8f", X"ff3b", X"0159", X"ffc1", X"003c", X"ff62", X"fe6f", X"ff68", X"feeb", X"fe72", X"fe26", X"fd44", X"00c4", X"fd33",
                                                        X"fee3", X"01ed", X"fcf8", X"fff1");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fff1";
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
