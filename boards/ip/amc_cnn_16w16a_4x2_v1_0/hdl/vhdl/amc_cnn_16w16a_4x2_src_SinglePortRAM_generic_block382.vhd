-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block382.vhd
-- Created: 2024-11-04 16:44:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block382
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage31/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block382 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block382;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block382 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fe2e", X"fe38", X"0027", X"fe15", X"0247", X"02bc",
                                                        X"0031", X"012b", X"ff6e", X"0103", X"0065", X"fdc7", X"0013", X"023d", X"01b5", X"fe25", X"fd90", X"fe17", X"fe36", X"fe6d",
                                                        X"004d", X"ff4f", X"fd01", X"fdc3", X"fd5c", X"003a", X"ff38", X"fea1", X"fe80", X"fe3f", X"0186", X"0000", X"fda6", X"fff2",
                                                        X"0230", X"0131", X"ffbf", X"022e", X"fe2c", X"ffe6", X"fd9c", X"fe98", X"fea9", X"ff10", X"0226", X"fdda", X"0220", X"0090",
                                                        X"ff76", X"01b0", X"ff85", X"fdfc", X"ff91", X"ff4d", X"020e", X"fd86", X"fde9", X"fff7", X"fef9", X"ff27", X"fcff", X"0045",
                                                        X"ffc3", X"fd66", X"0011", X"0028", X"00e1", X"00f1", X"ff62", X"022e", X"0052", X"0256", X"0185", X"0133", X"00bb", X"02bb",
                                                        X"ff15", X"0100", X"01a6", X"fd06", X"ff5a", X"014f", X"0107", X"016e", X"fdb8", X"fd2c", X"027e", X"0216", X"fd79", X"ff14",
                                                        X"fec9", X"ffd5", X"ff29", X"ff17", X"fd33", X"ff63", X"fe13", X"020e", X"fe70", X"016e", X"0056", X"0117", X"028b", X"0034",
                                                        X"0171", X"fd39", X"ff34", X"02b1", X"ffe7", X"fd29", X"fff4", X"fe86", X"0098", X"ff43", X"011d", X"fd19", X"ffb3", X"00e3",
                                                        X"fda1", X"ff8f", X"0030", X"ffae", X"00c6", X"01af", X"0067", X"01eb", X"0165", X"01a2", X"0042", X"fdf8", X"fd8d", X"fd60",
                                                        X"013c", X"feda", X"0227", X"0039", X"fd77", X"fe0b", X"fda3", X"02b6", X"fccc", X"fe30", X"ffb4", X"ff76", X"021d", X"fd84",
                                                        X"00c0", X"0205", X"fd39", X"fd62", X"0098", X"fdb0", X"fed5", X"fcfb", X"fd91", X"01d0", X"feda", X"00ee", X"ff07", X"01fa",
                                                        X"01b5", X"029d", X"ffb1", X"fee9", X"ff8e", X"015f", X"ff5f", X"01e5", X"005f", X"006e", X"fe90", X"01f9", X"0099", X"0092",
                                                        X"ff60", X"00e1", X"006e", X"ff03", X"027b", X"ffdb", X"015c", X"fcce", X"ff8c", X"01b4", X"0259", X"ffd6", X"0058", X"0004",
                                                        X"fe63", X"fdc1", X"feea", X"01de", X"ff84", X"0058", X"00eb", X"029e", X"0199", X"0246", X"0063", X"0045", X"02cb", X"0051",
                                                        X"fef5", X"0017", X"fd2c", X"ff2c", X"fd47", X"fdf3", X"ff79", X"fd61", X"0106", X"ff71", X"fdc0", X"004d", X"ff3c", X"ffc1",
                                                        X"022e", X"017c", X"fe27", X"fe57", X"0205", X"fed8", X"fd9d", X"fe11", X"01f9", X"0034", X"02b3", X"0095", X"0154", X"0201",
                                                        X"ffeb", X"fdee", X"fe36", X"fe1c", X"fdb8", X"0192", X"fdae", X"ffb3", X"fd13", X"ffa1", X"0162", X"ff69", X"01e5", X"fe37",
                                                        X"007e", X"ff18", X"0040", X"01ac", X"026a", X"ffa0", X"0167", X"fd13", X"ff3b", X"ffbd", X"fdf5", X"fe23", X"ff24", X"011c",
                                                        X"0081", X"fe0e", X"01b0", X"ffcb", X"ff25", X"ff8c", X"ff77", X"fdc0", X"0126", X"fd1d", X"fed2", X"01db", X"fd2a", X"ffb3",
                                                        X"fea8", X"fe80", X"0124", X"01e1", X"fd15", X"ffce", X"ffa4", X"fd23", X"0063", X"fcb1", X"0194", X"02a5", X"0202", X"0186",
                                                        X"00aa", X"ff2d", X"fda3", X"ff42", X"01d6", X"02a6", X"fdae", X"007b", X"fc9b", X"fd2d", X"fede", X"fcc6", X"0149", X"01a4",
                                                        X"0072", X"fce1", X"ff00", X"fe6f", X"00ce", X"02b7", X"fda9", X"ffde", X"ff5a", X"fd33", X"00b6", X"fd21", X"0108", X"ff0b",
                                                        X"fe68", X"01b4", X"fe9b", X"0089", X"ffef", X"fe43", X"fe6d", X"fe3c", X"0210", X"ff36", X"00d4", X"fd95", X"fe2e", X"ffd0",
                                                        X"fd85", X"01a0", X"fe09", X"01a2", X"fd01", X"ff3e", X"0069", X"01f6", X"fe30", X"fe6f", X"fcf0", X"ff0b", X"007e", X"ff06",
                                                        X"019e", X"01f5", X"0066", X"0088", X"fe65", X"ff9e", X"00cd", X"0145", X"0009", X"fd87", X"fd63", X"0248", X"fded", X"01d3",
                                                        X"00ae", X"019c", X"0037", X"00c7", X"003d", X"fde0", X"00bc", X"fcef", X"0101", X"fe23", X"0060", X"fe19", X"fdaa", X"ff60",
                                                        X"fedb", X"01b5", X"fd56", X"019c", X"fd0e", X"fe44", X"00f1", X"0240", X"01c6", X"fcff", X"01cc", X"fea5", X"fe16", X"fe4d",
                                                        X"00e8", X"fd43", X"007f", X"0128", X"0236", X"fdd0", X"fe73", X"ff32", X"fdfc", X"fdeb", X"ff3d", X"012c", X"fe9c", X"ff21",
                                                        X"ff91", X"fd37", X"0222", X"fdb4", X"fd88", X"fda7", X"fe8b", X"fdfa", X"01c0", X"ff7f", X"0149", X"ff0c", X"fccc", X"01aa",
                                                        X"fd49", X"fecd", X"0216", X"0232", X"025d", X"0072", X"fec2", X"fdb1", X"014b", X"fd7f", X"0201", X"00bf", X"fee6", X"ff04",
                                                        X"fef8", X"fdfc", X"fe6e", X"012a", X"027e", X"ff0f", X"fceb", X"0186", X"ffa7", X"ffaf", X"fdf8", X"fef0", X"0136", X"fd81",
                                                        X"ff2d", X"013c", X"013d", X"fec0", X"fe93", X"fe82", X"fdf4", X"fefa", X"0168", X"01ed", X"ff86", X"0119", X"ff4c", X"025a",
                                                        X"ffe9", X"ffdb", X"fd7d", X"ff1a", X"003e", X"ffd9", X"00a7", X"0092", X"fe7a", X"fce2", X"fcd3", X"fd13", X"0170", X"ff40",
                                                        X"0212", X"021b", X"fd33", X"fff5", X"0270", X"fe10", X"0271", X"fec4", X"fe41", X"012f", X"fdcb", X"fe73", X"fcaf", X"000a",
                                                        X"fe75", X"019a", X"ffa4", X"fdf8", X"fddb", X"ff57", X"fe3b", X"006e", X"ff96", X"fd68", X"008a", X"fdf1", X"0201", X"fd58",
                                                        X"fe52", X"fd83", X"0190", X"ff95", X"fe94", X"ffcd", X"ff4e", X"fcf9", X"fd79", X"fd46", X"ff73", X"fe5d", X"fd08", X"fe99",
                                                        X"fe80", X"fd12", X"fcfe", X"fd06", X"fd59", X"ff67", X"0132", X"01ab", X"015a", X"ffb3", X"fd42", X"fef9", X"023a", X"02a4",
                                                        X"fd83", X"002d", X"0118", X"006a", X"fd7c", X"00b1", X"00e9", X"020f", X"01fe", X"00f2", X"fe4e", X"0132", X"fd39", X"ffdd",
                                                        X"0293", X"ff4e", X"fd3d", X"fda6", X"ff9e", X"0210", X"00cb", X"fdf8", X"0209", X"0020", X"0296", X"fdec", X"012b", X"ff53",
                                                        X"ff6d", X"ffb6", X"fe9a", X"ffba", X"0058", X"0162", X"ff52", X"009a", X"fd5b", X"00d9", X"02ce", X"fdc7", X"029d", X"fd35",
                                                        X"0228", X"fdd6", X"fe3d", X"0053", X"0044", X"008a", X"00bb", X"016a", X"fcde", X"0003", X"01d5", X"0016", X"01f9", X"ffe3",
                                                        X"013c", X"01d7", X"ff2f", X"00b3", X"fd4e", X"fd5a", X"016c", X"ff62", X"fe26", X"01e1", X"00f0", X"0187", X"fdca", X"012b",
                                                        X"fdeb", X"fdc2", X"00bb", X"fe23", X"025f", X"fd8d", X"0073", X"ffa3", X"016b", X"fdad", X"ff2d", X"ff81", X"ff97", X"00d5",
                                                        X"fe72", X"0234", X"fe3c", X"fd33", X"fd5c", X"fde6", X"0209", X"fd83", X"ff6a", X"01bd", X"fe5d", X"fd2c", X"0169", X"022b",
                                                        X"0229", X"fcfd", X"011b", X"ffa2", X"0046", X"0099", X"000f", X"ff75", X"0145", X"0192", X"00ee", X"0235", X"ff98", X"fca8",
                                                        X"0295", X"0132", X"ff0c", X"00fd", X"0158", X"fd71", X"008d", X"fedd", X"fcea", X"fd4f", X"027e", X"fe13", X"fda7", X"fef3",
                                                        X"fd6c", X"fe2f", X"ff28", X"0005", X"00fd", X"fcda", X"fcf9", X"0167", X"fe91", X"0227", X"fef2", X"ff8f", X"fd31", X"ff3f",
                                                        X"ff12", X"ffe9", X"fe1b", X"fd58", X"0216", X"fd65", X"027a", X"016d", X"ffeb", X"027c", X"fdae", X"ff17", X"ff7b", X"fea2",
                                                        X"012b", X"fdcf", X"fee5", X"014b", X"fd74", X"ffeb", X"fcd5", X"025b", X"027a", X"feaa", X"fee0", X"ff47", X"fd97", X"fed8",
                                                        X"fcf8", X"fe51", X"fe5d", X"0182", X"ff23", X"0133", X"00c9", X"0064", X"ff2a", X"fd17", X"fd62", X"fd13", X"002f", X"fdf5",
                                                        X"02ee", X"fdb6", X"fe1c", X"ff3a", X"00c3", X"fd78", X"0117", X"0187", X"fdf9", X"0180", X"fd76", X"fed4", X"0025", X"fe7f",
                                                        X"ff84", X"ffb7", X"ff40", X"fce2", X"fe64", X"feb0", X"ff26", X"fea7", X"fcff", X"fe03", X"fffe", X"feab", X"ff7b", X"ff74",
                                                        X"0113", X"ff34", X"fc9f", X"fea0", X"febf", X"fda1", X"0226", X"0066", X"01b0", X"ff5e", X"fdeb", X"fe1d", X"0247", X"fcf3",
                                                        X"0258", X"fe12", X"fe66", X"febd", X"fde9", X"fe35", X"fff4", X"019c", X"fef4", X"ff63", X"009e", X"ff53", X"015b", X"ff52",
                                                        X"fdcc", X"fdd2", X"0111", X"00af", X"ff01", X"01c3", X"fdd4", X"fde4", X"007a", X"00b0", X"fdd5", X"0253", X"ffe7", X"fe91",
                                                        X"fe60", X"fe6d", X"fe7d", X"0173", X"0153", X"fe82", X"004c", X"fede", X"ff34", X"fe02", X"00b9", X"02a7", X"01d2", X"ffca",
                                                        X"ff2e", X"fdd1", X"0174", X"00eb", X"0201", X"009a", X"021c", X"01ef", X"0215", X"fd59", X"fdf8", X"fe5a", X"fddd", X"00f6",
                                                        X"fdcf", X"0185", X"0165", X"00f1", X"feaa", X"0006", X"fcdc", X"fd67", X"0119", X"fdeb", X"fd3a", X"fe15", X"fd61", X"0051",
                                                        X"ff36", X"fdac", X"00a8", X"0023", X"0120", X"0185", X"feb9", X"ffa7", X"feae", X"fd7e", X"fd09", X"0163", X"00e3", X"020f",
                                                        X"ffd7", X"02b5", X"fd39", X"00dc", X"002f", X"0126", X"fe33", X"ff0e", X"fd12", X"00a6", X"fed6", X"0247", X"006c", X"ff71",
                                                        X"fcaa", X"fd11", X"fe0a", X"018f", X"fd22", X"fd7f", X"0249", X"fe74", X"fe9c", X"fd2a", X"fe8d", X"01ef", X"00ff", X"0121",
                                                        X"0169", X"fd4d", X"00c9", X"0218", X"0018", X"fece", X"01b1", X"fd51", X"fe30", X"0042", X"fd59", X"008c", X"ffca", X"fee2",
                                                        X"0231", X"ff35", X"0166", X"ffcf", X"014c", X"fd51", X"ff9e", X"fd17", X"003e", X"01d3", X"0017", X"fe50", X"010b", X"fe71",
                                                        X"fd2c", X"000e", X"021a", X"ff1d", X"00b0", X"fe1b", X"fff7", X"0034", X"ff63", X"ffff", X"fe32", X"011a", X"fcc2", X"fd21",
                                                        X"ffea", X"feba", X"00e4", X"ff2c", X"ff3e", X"ff38", X"01bb", X"fec3", X"00fe", X"006c", X"010c", X"000a", X"fe38", X"ffc6",
                                                        X"fe27", X"023a", X"006d", X"008b", X"021a", X"fdb4", X"fd54", X"ff8e", X"0054", X"001c", X"00c1", X"0161", X"fd78", X"fe99",
                                                        X"fec3", X"fd2e", X"fd1e", X"fd6d", X"0221", X"fecf", X"0099", X"fdac", X"fd32", X"fd90", X"00b4", X"01f8", X"fe7e", X"ffa7",
                                                        X"fdee", X"fe14", X"02b6", X"0045", X"007b", X"0085", X"fdbe", X"fefe", X"feaa", X"0216", X"fff9", X"ff4d", X"fd11", X"0163",
                                                        X"fccd", X"0144", X"0276", X"0023", X"013c", X"01c0", X"ffe7", X"fec2", X"fe41", X"fe67", X"00c4", X"0160", X"0174", X"0051",
                                                        X"fdd8", X"fcc4", X"fdd1", X"fe2f", X"0278", X"016c", X"fdb3", X"0270", X"012b", X"0068", X"fecf", X"fec4", X"0299", X"01ce",
                                                        X"0159", X"01c5", X"fd81", X"fe63", X"fdcc", X"ff9a", X"fe05", X"ff5f", X"00e6", X"ff51", X"ff40", X"fee8", X"fd1c", X"ff03",
                                                        X"fe18", X"fe74", X"00fa", X"0120", X"001e", X"0155", X"0058", X"fcca", X"fd32", X"0045", X"0110", X"01d9", X"fdca", X"008c",
                                                        X"fee4", X"fef8", X"0115", X"0245", X"ff91", X"01e2", X"fdf2", X"fec8", X"012c", X"fcb4", X"fe71", X"00c6", X"fe66", X"fec5",
                                                        X"0183", X"02a3", X"01d0", X"ff63", X"ff03", X"fd43", X"00e2", X"fd2e", X"0180", X"01ae", X"ffd5", X"ffff", X"0171", X"fdc8",
                                                        X"fd83", X"00d7", X"0217", X"027a", X"febc", X"0219", X"fd8f", X"feeb", X"020f", X"ff0d", X"ff37", X"fedf", X"fe1c", X"0077",
                                                        X"fdf1", X"0193", X"0036", X"0198", X"0068", X"ff72", X"01b8", X"fd76", X"00cc", X"0017", X"ffcf", X"fdfb", X"fe7c", X"00d7",
                                                        X"021a", X"fe8d", X"01a7", X"01c4", X"fdd5", X"ff26", X"fcbe", X"fecd", X"00f2", X"fd29", X"fdb2", X"0223", X"feaf", X"ff23",
                                                        X"fd0b", X"fcf5", X"0172", X"ff8c", X"fec4", X"0003", X"0136", X"0281", X"fe8f", X"fe47", X"005d", X"fe5c", X"fd6f", X"ff83",
                                                        X"000d", X"fcfa", X"ffff", X"ff91", X"ffb8", X"fd59", X"fe69", X"fdd9", X"00d4", X"ff2c", X"ff95", X"0103", X"01c3", X"ff1c",
                                                        X"0052", X"ff76", X"008d", X"0204", X"0266", X"01e0", X"fe85", X"019a", X"ffbb", X"0274", X"fd23", X"fee4", X"0164", X"ff03",
                                                        X"fe36", X"0099", X"019f", X"fd35", X"ff11", X"fd36", X"fe4e", X"ffed", X"fffa", X"fd1a", X"fdbe", X"0042", X"fe9b", X"0143",
                                                        X"0003", X"fed1", X"fdc5", X"0298", X"01ee", X"01cc", X"fe18", X"fe20", X"fd62", X"feab", X"ffd0", X"fee2", X"ff51", X"ff41",
                                                        X"0064", X"003b", X"00ca", X"fd5d", X"ffa4", X"010e", X"00ff", X"0221", X"fe88", X"ff8d", X"00b4", X"010b", X"022b", X"fe02",
                                                        X"0264", X"0145", X"fe6c", X"0198", X"fecc", X"00fa", X"027b", X"fee1", X"ff3c", X"015a", X"00e6", X"0149", X"fe25", X"fff4",
                                                        X"010a", X"fed6", X"0247", X"fec3", X"00db", X"fe0c", X"fe0d", X"00ed", X"fea9", X"fdd6", X"ffaa", X"fd6e", X"0020", X"fe44",
                                                        X"0027", X"feac", X"fdb9", X"fd3b", X"fe38", X"ffed", X"0071", X"021f", X"ffaf", X"016b", X"01d9", X"0064", X"0265", X"0119",
                                                        X"0240", X"001a", X"011b", X"0250", X"fdb5", X"fcfc", X"ffca", X"011c", X"ff81", X"00f4", X"0236", X"002e", X"01a7", X"0285",
                                                        X"fe67", X"ffbb", X"fcd8", X"ff99", X"0019", X"ffba", X"0106", X"fe1a", X"00d3", X"011a", X"00fe", X"017f", X"028e", X"0050",
                                                        X"ff64", X"ffc6", X"0097", X"fce3", X"fd55", X"fdf3", X"fd13", X"fd9b", X"ffbe", X"fcec", X"ffb7", X"fecc", X"0205", X"ff17",
                                                        X"00ec", X"004a", X"004e", X"fd7a", X"fda9", X"ff46", X"0235", X"00ab", X"ff8d", X"000c", X"fde2", X"0140", X"fd29", X"feac",
                                                        X"fd02", X"0181", X"ff52", X"fe32", X"fd95", X"fe4b", X"0063", X"fd39", X"fde8", X"fd35", X"0261", X"fe07", X"fd86", X"00de",
                                                        X"fe12", X"ff85", X"00ba", X"01b5", X"ff8c", X"fdf6", X"0089", X"01aa", X"fd2f", X"01e1", X"ffd2", X"ff9a", X"0263", X"0149",
                                                        X"fe66", X"01b9", X"fdcb", X"0159", X"0237", X"fd9a", X"ff0f", X"ff17", X"002e", X"0220", X"fe79", X"ff28", X"ff33", X"0102",
                                                        X"fe0f", X"ffb9", X"fe5a", X"007e", X"00ce", X"01b4", X"01fd", X"fd37", X"0145", X"009f", X"ff82", X"ff08", X"023d", X"00e2",
                                                        X"002b", X"003b", X"02ba", X"ffb3", X"01e0", X"fea6", X"0228", X"fe60", X"0066", X"ffcd", X"fe32", X"fd9d", X"fff8", X"01ca",
                                                        X"ffba", X"007c", X"fe1a", X"009b", X"fdc6", X"ff74", X"013f", X"ff8b", X"024f", X"fde4", X"ffae", X"fe1d", X"fffb", X"fcdc",
                                                        X"0143", X"024f", X"01ca", X"fe95", X"fd46", X"0055", X"0243", X"ffcc", X"01d9", X"ff9c", X"fcfe", X"fdc1", X"fe78", X"01c7",
                                                        X"0058", X"fd0f", X"0045", X"fdd8", X"fd30", X"0084", X"fdc4", X"ffca", X"fdd9", X"00d8", X"0092", X"ff8d", X"fe74", X"013c",
                                                        X"fe9a", X"00be", X"0145", X"0178", X"fd45", X"0208", X"014a", X"feec", X"fe7a", X"ffb2", X"019c", X"fecd", X"ff57", X"01b5",
                                                        X"fe08", X"fdc5", X"ffad", X"00ce", X"fd08", X"fdac", X"fdf7", X"0082", X"0012", X"feff", X"0096", X"fe07", X"fd37", X"fd4b",
                                                        X"0185", X"005d", X"00b2", X"fcf2", X"01ac", X"fd50", X"fe65", X"fd96", X"fd64", X"ff57", X"fe48", X"0193", X"fefc", X"0032",
                                                        X"0023", X"ff68", X"ff13", X"ff97", X"ff5a", X"01db", X"01fb", X"fdf5", X"fd59", X"fe0e", X"ff2a", X"01af", X"ff91", X"fd8b",
                                                        X"024d", X"fd84", X"001f", X"fe8f", X"005b", X"0162", X"fe8f", X"00fe", X"feb6", X"01fb", X"fe48", X"fcc2", X"0234", X"fd9e",
                                                        X"02b2", X"fee9", X"ffb9", X"fd0f", X"0084", X"fe0e", X"0091", X"fe78", X"fd80", X"ff48", X"0141", X"01e7", X"fcf5", X"fff3",
                                                        X"ff5e", X"00b8", X"025b", X"0025", X"ff09", X"01bb", X"fe5a", X"01c9", X"fdfe", X"fde5", X"fe6a", X"0099", X"00f9", X"ff08",
                                                        X"0266", X"fee8", X"fe96", X"00cc", X"01f5", X"fd0f", X"0011", X"01e4", X"0078", X"fe02", X"0241", X"fe0f", X"fde4", X"ff20",
                                                        X"0042", X"029f", X"ff98", X"fe8a", X"ffff", X"0014", X"fd1e", X"fe96", X"fd31", X"0040", X"017d", X"ff5d", X"fd6e", X"fd5e",
                                                        X"fd09", X"fce7", X"feb1", X"fe7a", X"00ca", X"fd74", X"fdb6", X"ff4d", X"0073", X"01d8", X"01ca", X"ff11", X"027c", X"ff94",
                                                        X"0100", X"fee5", X"00df", X"fe46", X"ff1e", X"fff2", X"ff91", X"ffc6", X"0044", X"fd15", X"00f7", X"fd60", X"0096", X"fe37",
                                                        X"ffb7", X"fd5e", X"fdd7", X"feb6", X"fd2f", X"fd8e", X"022e", X"0244", X"fe58", X"013b", X"01ed", X"0085", X"ff66", X"00d9",
                                                        X"fec3", X"fe46", X"ffd5", X"ffd3", X"fdbb", X"01fe", X"01c5", X"fd6e", X"0279", X"fe76", X"0002", X"fd8b", X"00da", X"0027",
                                                        X"0218", X"024a", X"fd7f", X"01df", X"fddc", X"ff7a", X"fd49", X"fd33", X"fd3d", X"fef8", X"fef0", X"0189", X"fe63", X"000a",
                                                        X"016b", X"fe19", X"004c", X"fe04", X"01ca", X"ff0c", X"01a4", X"fd5b", X"006d", X"ffd6", X"fec0", X"fce8", X"fdfa", X"02b9",
                                                        X"005d", X"01da", X"fd33", X"ffcb", X"003f", X"ffc2", X"0174", X"fd78", X"fec6", X"0272", X"01cd", X"fff4", X"0128", X"fdc5",
                                                        X"fdf2", X"010e", X"fda4", X"ff3f", X"02c3", X"0141", X"ff33", X"01de", X"fd41", X"ffa0", X"fdb5", X"fea6", X"fd93", X"0268",
                                                        X"fda3", X"022c", X"ff90", X"029b", X"028c", X"0095", X"ffcf", X"0149", X"ff00", X"ffe5", X"ff9f", X"01fc", X"fe0a", X"fda5",
                                                        X"fe4c", X"01f5", X"0261", X"fe46", X"ff54", X"fe1c", X"0203", X"0036", X"01d1", X"0290", X"fd08", X"0231", X"0029", X"00b6",
                                                        X"009c", X"fccd", X"fdb5", X"fe52", X"fe8c", X"fdf2", X"fd5a", X"ff1f", X"fdac", X"ff9b", X"0134", X"0262", X"0275", X"fe5c",
                                                        X"02a0", X"01ab", X"015d", X"016d", X"0222", X"00f6", X"fdd3", X"ff8b", X"00e9", X"ff8a", X"fe04", X"0179", X"ffc7", X"fe24",
                                                        X"0099", X"fd11", X"0268", X"fd8a", X"fe3c", X"ffbb", X"ff0d", X"015a", X"fe67", X"0241", X"fdd8", X"fe89", X"ff02", X"0198",
                                                        X"fe4b", X"0064", X"fecc", X"fe38", X"fdbd", X"0166", X"00bb", X"0050", X"0126", X"00c4", X"0188", X"00fc", X"fdaf", X"01ca",
                                                        X"0124", X"0225", X"fdb8", X"013e", X"fdd8", X"004c", X"feea", X"029e", X"fcee", X"0001", X"fdf0", X"fe01", X"01a5", X"fe21",
                                                        X"fdd0", X"00ef", X"0118", X"002e", X"ffd7", X"fec5", X"ffd9", X"ff3b", X"010d", X"02b7", X"fce5", X"fdc5", X"002f", X"fda8",
                                                        X"fe0c", X"0211", X"fd33", X"fd68", X"0097", X"fce2", X"0150", X"ffa0", X"ff29", X"0193", X"026e", X"0194", X"01cf", X"fe8a",
                                                        X"01e2", X"ffd4", X"ffc7", X"00c3", X"012a", X"fe0e", X"ff37", X"fddc", X"ff3a", X"0266", X"fe85", X"fe12", X"002f", X"0088",
                                                        X"fe76", X"fcf0", X"fe9c", X"0032", X"fe4f", X"00ba", X"fecc", X"0052", X"fdd4", X"fd30", X"ff7a", X"fe23", X"0075", X"fd3d",
                                                        X"fdc8", X"01c7", X"ff78", X"00b6", X"ff2a", X"014f", X"009e", X"ff06", X"fd87", X"fd9a", X"fd44", X"fde5", X"024f", X"0209",
                                                        X"fe6f", X"fff5", X"fe37", X"fee1", X"fffe", X"024f", X"fdd9", X"ff0a", X"fd40", X"013c", X"fd4b", X"fdfb", X"00aa", X"01ed",
                                                        X"01ea", X"ff9e", X"023f", X"fce6", X"fd49", X"01f1", X"0086", X"fe00", X"ffa4", X"fd67", X"0183", X"fefe", X"0292", X"fe98",
                                                        X"015a", X"fea8", X"fe6b", X"01b1", X"0220", X"00d2", X"ffd3", X"fea2", X"011e", X"0196", X"000c", X"fd11", X"0179", X"fe78",
                                                        X"0164", X"00ff", X"fd19", X"ff74", X"fd70", X"0136", X"fe84", X"ff60", X"fde9", X"0052", X"fca4", X"feb0", X"0152", X"027a",
                                                        X"fefb", X"0207", X"004e", X"fec5", X"ffb2", X"febf", X"ff3e", X"fcb9", X"fd14", X"001a", X"0000", X"ff75", X"0046", X"ff30",
                                                        X"fe7e", X"fedc", X"fd7a", X"fd14", X"ff68", X"fee9", X"0179", X"01f1", X"fe99", X"0188", X"fdf0", X"fcda", X"01c5", X"fedc",
                                                        X"fd96", X"feb1", X"fd21", X"ffed", X"015d", X"01cb", X"0124", X"0061", X"0190", X"fdb7", X"01bc", X"0037", X"01cf", X"0224",
                                                        X"006c", X"0156", X"ff28", X"fcfa", X"ff4a", X"fd88", X"00a8", X"fe29", X"018b", X"01a7", X"0146", X"0147", X"ff49", X"0189",
                                                        X"fd2b", X"fda0", X"ffd4", X"ff6a", X"ff7f", X"012c", X"ff1e", X"fe1b", X"fd5f", X"fef2", X"016c", X"0192", X"0133", X"fda1",
                                                        X"0135", X"0296", X"fe55", X"fe1c", X"fdc9", X"006e", X"fd4d", X"0288", X"fdd5", X"fdf2", X"003a", X"fe6d", X"017a", X"ffd5",
                                                        X"fd29", X"0283", X"0029", X"0003", X"010e", X"02c5", X"fe53", X"fda0", X"fdc1", X"fd55", X"fea6", X"fd75", X"0161", X"0074",
                                                        X"ff09", X"ffe0", X"fee4", X"002d", X"ffeb", X"011e", X"017a", X"fd5d", X"015a", X"021c", X"ffe2", X"00f4", X"fe62", X"0066",
                                                        X"0113", X"0027", X"fd82", X"fdbf", X"01b4", X"fe20", X"fd63", X"01b8", X"fd5d", X"ff7c", X"0143", X"01fc", X"fdfc", X"00af",
                                                        X"fdd2", X"01f7", X"0286", X"02eb", X"fe21", X"fdf7", X"01c7", X"ff7c", X"ff0b", X"00dc", X"ff69", X"fccd", X"00a6", X"0221",
                                                        X"018a", X"fef9", X"01be", X"0129");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0129";
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

