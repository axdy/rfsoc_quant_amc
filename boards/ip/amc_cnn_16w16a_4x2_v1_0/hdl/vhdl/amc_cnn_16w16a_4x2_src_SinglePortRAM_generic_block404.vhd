-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block404.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block404
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage51/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block404 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block404;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block404 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0156", X"0b0b", X"0181", X"f5f0", X"0390", X"0423",
                                                        X"0df8", X"05ad", X"f9e7", X"0cbc", X"03fd", X"f847", X"03c1", X"0663", X"013b", X"fe77", X"fc8c", X"0a4f", X"02b6", X"fb40",
                                                        X"fea9", X"0193", X"0bab", X"02a1", X"fe28", X"0694", X"fd7d", X"ff26", X"fe98", X"ff33", X"0509", X"fc51", X"fbd8", X"0ca3",
                                                        X"0922", X"0200", X"001f", X"016e", X"0d71", X"fe4a", X"03ea", X"ff08", X"faa7", X"f8a4", X"02fc", X"f499", X"0313", X"02e0",
                                                        X"007e", X"05e0", X"fff2", X"fe15", X"ffce", X"00d0", X"0b2b", X"ffe9", X"047e", X"0430", X"033f", X"f8e9", X"0180", X"047a",
                                                        X"0546", X"0210", X"001b", X"063b", X"f8be", X"f620", X"066c", X"fd05", X"01c8", X"0548", X"0aae", X"0881", X"030b", X"fb0b",
                                                        X"07a5", X"056e", X"0755", X"0132", X"fcfd", X"011a", X"fc69", X"0151", X"fe4a", X"026d", X"0842", X"fef8", X"0719", X"077b",
                                                        X"0294", X"f2d8", X"03de", X"0584", X"0613", X"008c", X"f774", X"fb89", X"0419", X"f47c", X"fb33", X"fd94", X"0c5b", X"fbff",
                                                        X"0074", X"09dc", X"045c", X"faae", X"0667", X"ff61", X"0621", X"0444", X"fc12", X"03e7", X"009a", X"fd20", X"0173", X"fe97",
                                                        X"0015", X"0280", X"0566", X"0a07", X"0518", X"fb4a", X"0263", X"03c1", X"0696", X"046c", X"f848", X"01a8", X"fd7b", X"0152",
                                                        X"015e", X"ff54", X"0981", X"0011", X"0088", X"0889", X"02e9", X"f610", X"fcc9", X"0517", X"04d6", X"0419", X"fc89", X"fc63",
                                                        X"0540", X"063f", X"fb48", X"fe0a", X"0c46", X"f711", X"f736", X"03f0", X"0205", X"faac", X"f639", X"ff78", X"ff46", X"fe1a",
                                                        X"fc68", X"083c", X"03d4", X"04ac", X"0238", X"fed3", X"022f", X"f8fe", X"fb0f", X"fdd8", X"ffac", X"f862", X"f7cd", X"ffde",
                                                        X"ffa9", X"fe28", X"0127", X"07be", X"015f", X"ffa8", X"02b9", X"01e2", X"0346", X"0173", X"fdc3", X"06cd", X"fcfb", X"fc33",
                                                        X"ffa2", X"06d9", X"029e", X"f96d", X"07b3", X"0342", X"f5be", X"fc1b", X"01bd", X"0300", X"030f", X"007b", X"02d9", X"0802",
                                                        X"fceb", X"0206", X"f929", X"125a", X"00bf", X"fba8", X"0507", X"070f", X"fe88", X"0045", X"091e", X"ff5c", X"04fb", X"fa5a",
                                                        X"02e7", X"08a6", X"ff4f", X"fb09", X"fe49", X"0b3d", X"071f", X"01e9", X"05e3", X"07fa", X"fb0b", X"000b", X"0416", X"0271",
                                                        X"0fd2", X"fcc4", X"fdf7", X"0db1", X"fe51", X"f59f", X"09d4", X"0798", X"0230", X"fd60", X"0b2a", X"0b30", X"fa1c", X"fdc1",
                                                        X"06f6", X"fdae", X"1600", X"fdf9", X"0077", X"0e20", X"feb5", X"f90d", X"0237", X"06e8", X"02bf", X"fe87", X"00eb", X"0671",
                                                        X"ff73", X"f808", X"09b3", X"00dc", X"1303", X"0050", X"04ba", X"0805", X"0099", X"f6df", X"fc47", X"fecd", X"0000", X"0155",
                                                        X"054b", X"082b", X"fcd0", X"09c8", X"0512", X"fe82", X"0b44", X"f98a", X"f922", X"09e8", X"ffe4", X"fca6", X"fb82", X"06cd",
                                                        X"fdf4", X"0169", X"035f", X"00c1", X"fbe9", X"0638", X"03dd", X"fd46", X"0491", X"f7c9", X"f6bb", X"02ec", X"fc13", X"faf6",
                                                        X"07a8", X"00de", X"fe02", X"0325", X"fd3a", X"fd36", X"fc93", X"04ee", X"063c", X"016a", X"09a7", X"fa62", X"ff4d", X"04a2",
                                                        X"ff31", X"ff2d", X"07eb", X"078a", X"0285", X"04b4", X"fea6", X"0129", X"00ce", X"01ab", X"06bf", X"fe40", X"0d69", X"fa43",
                                                        X"ffe5", X"03ad", X"fe68", X"f394", X"feb4", X"0b3a", X"0247", X"037a", X"00c1", X"ffd2", X"f98a", X"fe0f", X"00bd", X"00a0",
                                                        X"07ba", X"fade", X"04e0", X"0aa1", X"03ef", X"f780", X"035e", X"fe95", X"04a6", X"056d", X"fb7a", X"fec4", X"fa04", X"f661",
                                                        X"05ef", X"fd19", X"0874", X"fb2a", X"0040", X"0921", X"0073", X"fe3e", X"05ce", X"0927", X"04de", X"0706", X"f566", X"01d3",
                                                        X"0452", X"ff0a", X"fef4", X"02b1", X"0f45", X"00d6", X"04a6", X"08eb", X"02e4", X"f53c", X"0170", X"fe2a", X"01c2", X"ffdf",
                                                        X"f627", X"0256", X"01e2", X"f93f", X"fade", X"fb88", X"0c2b", X"fbea", X"fd8a", X"05fb", X"fe98", X"f856", X"0036", X"071c",
                                                        X"00c7", X"feaf", X"face", X"0208", X"0357", X"fc0e", X"fae6", X"fd8b", X"1491", X"fe86", X"00c5", X"02ec", X"0081", X"fea6",
                                                        X"fab8", X"07ad", X"0326", X"034e", X"feb7", X"0308", X"0110", X"011a", X"feca", X"fc30", X"02dd", X"0059", X"018e", X"0658",
                                                        X"ff72", X"f45d", X"feda", X"0804", X"044e", X"00e1", X"fe99", X"fd76", X"fd27", X"fa3a", X"fcf9", X"fe79", X"0339", X"ff70",
                                                        X"0112", X"04e2", X"00eb", X"f947", X"f7cc", X"000d", X"03c1", X"f9d2", X"febc", X"0013", X"fed2", X"fa4d", X"000a", X"006e",
                                                        X"0438", X"027a", X"00de", X"0576", X"ff55", X"f56f", X"f8c0", X"f862", X"02d9", X"fe03", X"fedb", X"08af", X"fe92", X"0210",
                                                        X"feaa", X"00d9", X"130c", X"ffa3", X"0053", X"0826", X"ffac", X"f2a1", X"fd0f", X"fedc", X"03a9", X"ff05", X"0134", X"0a7e",
                                                        X"fd30", X"f704", X"fa62", X"ff10", X"0a96", X"fdad", X"fb91", X"09bc", X"f8ee", X"f4d8", X"ff46", X"f70f", X"0576", X"fae3",
                                                        X"fd6b", X"0051", X"01d1", X"f9af", X"ff17", X"fd58", X"0600", X"fc8a", X"fd7f", X"0544", X"fcb4", X"f9de", X"00d6", X"fe32",
                                                        X"0398", X"fc6e", X"006b", X"ff36", X"fc4d", X"0014", X"fe3f", X"0163", X"0e56", X"fdf5", X"0055", X"0308", X"0109", X"f491",
                                                        X"ff1a", X"0a77", X"051d", X"f944", X"059f", X"0415", X"ff1a", X"f8a4", X"00ce", X"00ee", X"0c51", X"fcc7", X"04b9", X"0652",
                                                        X"010d", X"006f", X"fbba", X"0155", X"0168", X"fdfd", X"fec2", X"0093", X"01ad", X"f98a", X"ffa2", X"ffcb", X"067f", X"fd65",
                                                        X"05a1", X"0298", X"025a", X"fa1e", X"f672", X"fa81", X"0499", X"fc1f", X"fe8e", X"004e", X"fc1d", X"fb7c", X"05d5", X"febf",
                                                        X"0616", X"fd6a", X"06a6", X"0349", X"01e4", X"f9bb", X"f93d", X"fea9", X"011d", X"fd48", X"0007", X"030c", X"fb18", X"f6ee",
                                                        X"0306", X"ff84", X"05dd", X"fb5b", X"fa9d", X"0781", X"fec8", X"fa1b", X"febc", X"0449", X"fd97", X"ff20", X"0065", X"0672",
                                                        X"f826", X"f857", X"fe26", X"00ae", X"0540", X"003c", X"0486", X"0770", X"005e", X"f826", X"00bc", X"0130", X"fe9c", X"01d3",
                                                        X"0020", X"0420", X"f598", X"f56b", X"00a1", X"0153", X"01eb", X"0213", X"060d", X"08cb", X"fe5b", X"f7cd", X"0172", X"fa09",
                                                        X"05c8", X"0389", X"0202", X"0251", X"fed3", X"f782", X"008b", X"011f", X"0787", X"fe28", X"0314", X"068f", X"fe47", X"fc1d",
                                                        X"f9d8", X"f7ba", X"0418", X"0277", X"00f7", X"0147", X"fc2f", X"f720", X"05a0", X"009c", X"085c", X"f89e", X"fc6b", X"0a2b",
                                                        X"ffd3", X"f9b3", X"083b", X"fcdf", X"fb47", X"01a3", X"f9dd", X"0273", X"fbaa", X"0414", X"03c7", X"ffad", X"043f", X"fcc6",
                                                        X"fd2d", X"082c", X"f826", X"fd33", X"ff93", X"fd0b", X"05fa", X"009b", X"fd21", X"01fc", X"fcf8", X"01b8", X"084a", X"feca",
                                                        X"04cd", X"fd9a", X"fe49", X"057c", X"00f9", X"fc2a", X"ff53", X"0a6a", X"009d", X"0103", X"f9a0", X"01fe", X"024c", X"f6d7",
                                                        X"0bd6", X"fe87", X"074f", X"0233", X"ff8f", X"0734", X"fc47", X"0078", X"fff2", X"07aa", X"fb49", X"04c2", X"f806", X"02cf",
                                                        X"0003", X"ef77", X"0489", X"000d", X"0f20", X"fb6a", X"fba8", X"0a31", X"05dd", X"feee", X"ff8d", X"0d1e", X"00f0", X"01fc",
                                                        X"fc97", X"0252", X"ff12", X"fed3", X"01b9", X"facc", X"0d96", X"fb46", X"0a19", X"08f4", X"00c4", X"f61b", X"04c8", X"01d0",
                                                        X"0625", X"024a", X"f642", X"040b", X"fb95", X"0092", X"fd44", X"fd1b", X"098c", X"fd4f", X"ffdf", X"051a", X"00bb", X"f667",
                                                        X"021c", X"00ea", X"0587", X"0230", X"f6b5", X"00ce", X"0070", X"f97c", X"fbcb", X"fab7", X"0f0b", X"0227", X"0064", X"0541",
                                                        X"0186", X"f47e", X"f919", X"0189", X"021c", X"01d2", X"fa9b", X"fe9d", X"001e", X"00ff", X"fe5d", X"ff88", X"073b", X"f751",
                                                        X"0272", X"0763", X"01f4", X"fb98", X"0282", X"f57a", X"08c0", X"0010", X"015d", X"0032", X"fd09", X"f5a1", X"0272", X"016a",
                                                        X"0c9b", X"fdbc", X"0318", X"0a2a", X"066f", X"f7c5", X"008a", X"fdc3", X"02a4", X"01b2", X"02cb", X"03de", X"fff0", X"fe28",
                                                        X"01f6", X"01c0", X"0c03", X"ff2a", X"00fd", X"0863", X"0003", X"f953", X"f785", X"08c8", X"0043", X"ffa0", X"07c8", X"062b",
                                                        X"020e", X"fcd6", X"0a38", X"fd4d", X"0786", X"fe96", X"0108", X"0919", X"0348", X"fccb", X"fba2", X"04e4", X"021d", X"00d3",
                                                        X"048f", X"035d", X"fe28", X"fd72", X"0322", X"ff5a", X"07d5", X"ff26", X"002d", X"05d6", X"ff02", X"f828", X"f8e2", X"fd9a",
                                                        X"ffac", X"fd6c", X"03d3", X"0607", X"f980", X"fa6d", X"03d0", X"fe7d", X"0937", X"feb0", X"fc1f", X"06e1", X"032d", X"f171",
                                                        X"05d4", X"fffd", X"fc5b", X"f8f3", X"fe06", X"0eb4", X"f59e", X"f105", X"0570", X"fe45", X"0402", X"0326", X"01af", X"085d",
                                                        X"0486", X"fad8", X"fb47", X"0422", X"079e", X"fb19", X"0226", X"05fa", X"fc8c", X"f7a5", X"00e0", X"fec6", X"0757", X"0449",
                                                        X"06bb", X"079e", X"feb0", X"fb42", X"ff4f", X"00d1", X"00cb", X"fc07", X"0189", X"08fc", X"fc51", X"f5b4", X"fd7b", X"02a6",
                                                        X"075e", X"0466", X"fb35", X"0bdd", X"ff72", X"f91b", X"00bd", X"00ea", X"022c", X"fb93", X"feb6", X"066a", X"02e9", X"f61b",
                                                        X"fd66", X"fd8b", X"07b9", X"0066", X"f64c", X"0913", X"ff79", X"fb81", X"0166", X"02fd", X"0101", X"fd56", X"0006", X"077a",
                                                        X"0176", X"f9b1", X"0471", X"fc6f", X"0900", X"0064", X"f698", X"009e", X"fac7", X"fb0b", X"0293", X"fd0f", X"f9c4", X"fe54",
                                                        X"f721", X"068d", X"fecd", X"f49c", X"02ba", X"fe9a", X"ff51", X"ffa2", X"f142", X"0362", X"ff2d", X"fd0e", X"0289", X"03bd",
                                                        X"fb90", X"0128", X"f983", X"009d", X"fa05", X"ea42", X"0174", X"fc32", X"ffef", X"0060", X"fed8", X"089b", X"0279", X"fdb0",
                                                        X"005c", X"02f3", X"fff7", X"0071", X"f8ce", X"fb86", X"ff96", X"000e", X"0090", X"fe40", X"0d46", X"fc8e", X"0264", X"085b",
                                                        X"02d5", X"f107", X"fb02", X"0189", X"0262", X"0332", X"f69f", X"01f2", X"0176", X"fee2", X"fa3c", X"fe04", X"0d8b", X"fae2",
                                                        X"fc1b", X"0b3c", X"0191", X"fcf3", X"021a", X"faf4", X"04c1", X"0295", X"fd0e", X"0000", X"02fd", X"03f5", X"ffde", X"fdeb",
                                                        X"1061", X"f7a8", X"fbc4", X"0a72", X"fe39", X"f65b", X"f774", X"025d", X"048e", X"0450", X"fc02", X"fd9f", X"fc42", X"0441",
                                                        X"fde1", X"fcf3", X"0e02", X"fba8", X"faa0", X"0cb1", X"fcc2", X"fb53", X"f43a", X"faa1", X"0059", X"0477", X"fb46", X"fe38",
                                                        X"011e", X"006d", X"034a", X"fc5b", X"0b8c", X"fe37", X"f888", X"067b", X"fd49", X"f89d", X"f3e4", X"0afa", X"fb96", X"06ad",
                                                        X"fd35", X"0792", X"fa2c", X"0876", X"01be", X"fda8", X"0734", X"fa5a", X"fc61", X"043f", X"fec4", X"fa78", X"fa63", X"017d",
                                                        X"01ad", X"00fd", X"fba9", X"023c", X"f501", X"ffbd", X"fedb", X"ff14", X"06d0", X"faaf", X"fb27", X"0727", X"fb10", X"fc49",
                                                        X"fdfe", X"01e3", X"05ba", X"ffb6", X"fdfc", X"0394", X"ff4f", X"0945", X"ffe5", X"026b", X"0d0c", X"fcc7", X"fdc3", X"0506",
                                                        X"00d6", X"f86e", X"fafb", X"0c4f", X"011a", X"fdaf", X"0410", X"0778", X"ff65", X"f56c", X"053b", X"01f2", X"056d", X"f984",
                                                        X"fdbe", X"0975", X"ff39", X"f5f1", X"fd8c", X"fce4", X"022b", X"fe71", X"0094", X"0af8", X"016f", X"f989", X"0425", X"0045",
                                                        X"1070", X"feb7", X"fe17", X"08da", X"fd39", X"f5d4", X"f9f6", X"ffd4", X"0256", X"ffcc", X"fcd1", X"028d", X"0281", X"016d",
                                                        X"005b", X"0194", X"0a20", X"03e6", X"ffe0", X"0608", X"facf", X"f945", X"faf0", X"01c3", X"07f5", X"fa73", X"0477", X"0500",
                                                        X"0398", X"f5c7", X"0182", X"fc77", X"0e5d", X"01e3", X"f50a", X"01c1", X"fe14", X"fae6", X"01cf", X"068e", X"0479", X"f845",
                                                        X"021d", X"08af", X"00c0", X"f904", X"02e7", X"0037", X"12ab", X"0774", X"f3c0", X"0276", X"fede", X"fb31", X"fc00", X"020c",
                                                        X"fcf8", X"f7d2", X"0041", X"0566", X"fe47", X"f4ab", X"04f7", X"fd94", X"0d14", X"fc64", X"f771", X"fd4e", X"fed0", X"f9b0",
                                                        X"f92a", X"0162", X"f8e2", X"fd32", X"06a5", X"078e", X"022c", X"f92c", X"ff40", X"fdc9", X"0d57", X"fbc8", X"fb9d", X"0443",
                                                        X"fce0", X"fca5", X"f912", X"0361", X"fbfe", X"0165", X"01cf", X"030b", X"fd6d", X"f62e", X"02f9", X"fa41", X"080f", X"fe56",
                                                        X"fcd8", X"058b", X"0578", X"fc79", X"fd77", X"04ff", X"fe1b", X"ffe7", X"024e", X"0b7a", X"fec0", X"f0cb", X"03c1", X"ffc7",
                                                        X"fc95", X"f9cd", X"feb9", X"0bda", X"fcdb", X"0061", X"fd70", X"081f", X"0014", X"0192", X"fb4a", X"05f1", X"f884", X"f439",
                                                        X"0058", X"fbd3", X"0963", X"fe27", X"01f6", X"0aef", X"020c", X"f18d", X"f470", X"044b", X"0059", X"fe12", X"fb3f", X"036f",
                                                        X"00e1", X"fee5", X"0190", X"01b0", X"0896", X"01f0", X"fc6d", X"050d", X"0166", X"f589", X"02ce", X"0163", X"00a8", X"ff89",
                                                        X"f82b", X"08c4", X"fb63", X"fe92", X"fda8", X"fa29", X"0e82", X"02a1", X"fa11", X"040c", X"02a9", X"fb2f", X"fa68", X"fe15",
                                                        X"03f7", X"00b4", X"f813", X"0753", X"03e6", X"f791", X"0655", X"fc2a", X"0313", X"ff6f", X"f763", X"0688", X"009f", X"ff7b",
                                                        X"0045", X"01fd", X"fa3a", X"003c", X"fbf1", X"0275", X"fdf0", X"fb65", X"08ac", X"fdd7", X"0865", X"fbaf", X"f52a", X"0229",
                                                        X"fd46", X"f467", X"0269", X"00f8", X"fcc0", X"0460", X"fedc", X"0027", X"ff6d", X"f73b", X"023c", X"f9e9", X"111f", X"fa37",
                                                        X"f7f4", X"083d", X"0126", X"fa65", X"fa06", X"07d8", X"fc07", X"056c", X"007d", X"059f", X"fa4d", X"00f2", X"0706", X"ff77",
                                                        X"040f", X"fc1d", X"fc8a", X"05d1", X"fefd", X"ee3a", X"fde0", X"11fc", X"0282", X"06c4", X"fe27", X"040f", X"0354", X"fb40",
                                                        X"0186", X"fd40", X"016f", X"fb65", X"fd85", X"04ee", X"0560", X"f602", X"0462", X"063b", X"0017", X"0438", X"0445", X"0492",
                                                        X"fd74", X"ff76", X"03fa", X"ffb8", X"0348", X"fdc7", X"01f2", X"0981", X"ffd9", X"f0e4", X"f824", X"fc09", X"ffa5", X"fd4e",
                                                        X"02e4", X"07ea", X"fe81", X"f2dd", X"03a5", X"fae1", X"0b44", X"ff84", X"fa5d", X"030f", X"03f0", X"f70d", X"fcc8", X"029a",
                                                        X"ffe8", X"00cf", X"009c", X"070e", X"0752", X"f4c7", X"0566", X"fe3c", X"0fbc", X"ffbe", X"fd69", X"02c0", X"ff7c", X"ffa6",
                                                        X"fc23", X"0d7f", X"0228", X"fd6f", X"ffb8", X"0758", X"0280", X"fbcc", X"0189", X"febf", X"0dca", X"fcc6", X"fcbf", X"03fc",
                                                        X"fd5d", X"fc6b", X"fb8a", X"0538", X"fc8c", X"fba3", X"01bb", X"0559", X"fe49", X"fd85", X"00ab", X"fdcb", X"0646", X"feda",
                                                        X"f9f1", X"0104", X"019b", X"fcdc", X"fe89", X"f9b1", X"fa5b", X"fac9", X"020e", X"04cd", X"ffc2", X"fe67", X"fe33", X"fefa",
                                                        X"0776", X"fe29", X"0000", X"021d", X"03a7", X"f8ac", X"f6d1", X"0f22", X"0179", X"fd71", X"01b6", X"0260", X"fcb8", X"fd8b",
                                                        X"01a3", X"ff77", X"06e9", X"fc77", X"00d5", X"0631", X"0152", X"fcdd", X"f645", X"06f4", X"03c4", X"fc5f", X"ffb1", X"0413",
                                                        X"ff41", X"f69c", X"068f", X"fe9e", X"ff6e", X"fa33", X"0269", X"034f", X"fcdd", X"ff74", X"ff11", X"0775", X"004e", X"fdb7",
                                                        X"fd85", X"0563", X"fb90", X"f4b0", X"0132", X"ff9e", X"05fa", X"fc85", X"f863", X"07ea", X"fbe7", X"fec9", X"01e2", X"ff5f",
                                                        X"fda1", X"ff5e", X"fc26", X"06a9", X"f7fc", X"f78d", X"fe3f", X"fb92", X"0a2f", X"ff54", X"05de", X"0604", X"ffbc", X"f8f8",
                                                        X"fe11", X"0526", X"ffeb", X"fddc", X"fbb9", X"041f", X"0247", X"052b", X"004e", X"fe94", X"0bd8", X"fc0a", X"fd6d", X"05fc",
                                                        X"fbd5", X"f993", X"fb7e", X"0308", X"0523", X"0063", X"fbf5", X"0251", X"fa00", X"039c", X"fee2", X"ff54", X"0b47", X"f9d7",
                                                        X"ff3f", X"04c4", X"fe9c", X"fc22", X"fddb", X"0469", X"045d", X"02b6", X"fe5e", X"002d", X"fb31", X"02a7", X"0209", X"fcc7",
                                                        X"0935", X"fc2a", X"feaf", X"0359", X"fbd1", X"fc77", X"01da", X"ffcd", X"fff3", X"ff53", X"fd1d", X"0599", X"ffab", X"019f",
                                                        X"0210", X"0074", X"061f", X"ff83", X"ff9b", X"048b", X"fd92", X"fe41", X"0253", X"0aca", X"009b", X"03d0", X"02f4", X"0443",
                                                        X"fd00", X"fa39", X"05b0", X"0348", X"016f", X"016c", X"fdc6", X"0881", X"00fb", X"f43d", X"03c4", X"fcae", X"00b4", X"06f2",
                                                        X"fdfc", X"0364", X"008d", X"0111", X"0012", X"feab", X"10f2", X"0248", X"0306", X"074b", X"0502", X"f420", X"066d", X"0526",
                                                        X"0424", X"04c0", X"febe", X"0277", X"fa26", X"fec8", X"fd10", X"013e", X"0cc3", X"0210", X"0ae7", X"0c5c", X"0065", X"f7fb",
                                                        X"0509", X"0208", X"0bfc", X"0543", X"fa11", X"039e", X"fc1a", X"fbdb", X"fbd8", X"022c", X"0dbb", X"032f", X"0679", X"0734",
                                                        X"014d", X"f8ad", X"fcd6", X"fd9f", X"092c", X"fe62", X"fe99", X"0203", X"01e9", X"00af", X"fc34", X"ffbe", X"141b", X"f578",
                                                        X"ff7a", X"0af6", X"0555", X"f279", X"02f6", X"fec7", X"068f", X"fd8d", X"ff98", X"08dc", X"0043", X"06a4", X"fce7", X"ffb2",
                                                        X"1051", X"f977", X"fb57", X"0c88", X"0176", X"f807", X"fa4c", X"07f5", X"0563", X"fd12", X"0692", X"04cc", X"f883", X"f804",
                                                        X"0680", X"ff7d", X"0849", X"ffe6", X"fc8a", X"05e5", X"03d5", X"f95e", X"f31d", X"0ad2", X"022d", X"00f1", X"091f", X"0543",
                                                        X"fe25", X"faba", X"06d3", X"026f", X"05e9", X"fa9e", X"f9e6", X"089b", X"fe63", X"fa1e", X"fb6a", X"0e9f", X"0592", X"ffdf",
                                                        X"08bd", X"09b9", X"ff0a", X"fe89", X"06a9", X"004c", X"0557", X"fdbc", X"02fb", X"0bef", X"0582", X"fc73", X"fd1c", X"05fc",
                                                        X"042c", X"fabd", X"022d", X"0840", X"ffe6", X"fcc3", X"059f", X"01e3", X"113f", X"004f", X"0347", X"0a8f", X"0242", X"fb8f",
                                                        X"0514", X"051a", X"005f", X"ffa4", X"04a3", X"fe2b", X"fb81", X"fffe", X"ffde", X"02af", X"0ec9", X"f65f", X"0812", X"096b",
                                                        X"0231", X"f479", X"feeb", X"0e0b", X"0e60", X"01ca", X"020b", X"05f6", X"ffff", X"fe0b", X"0628", X"ffec", X"1125", X"fdb1",
                                                        X"fe9c", X"0ce8", X"02ee", X"f924", X"00ab", X"0145", X"0140", X"fd74", X"fb24", X"05bf", X"032f", X"fcbc", X"02e3", X"0358",
                                                        X"0f72", X"00c2", X"ffe3", X"0a60", X"01fc", X"070d", X"fdee", X"fab4", X"04c3", X"fe90", X"fe42", X"fc01", X"05e5", X"fcc0",
                                                        X"001d", X"0145", X"0d92", X"f90c", X"019f", X"03cd", X"021b", X"0109", X"ffcc", X"0387", X"0526", X"0054", X"fe19", X"fedd",
                                                        X"0550", X"00fb", X"01c5", X"ff3d", X"0f74", X"fcd0", X"0115", X"00e6", X"fca0", X"ffca", X"00be", X"fe8d", X"01ac", X"01c1",
                                                        X"0256", X"00e8", X"00a0", X"fbc3", X"0931", X"0121", X"0b7c", X"fdfe", X"fc9a", X"0312", X"017f", X"fd44", X"054e", X"02e6",
                                                        X"fdae", X"fec6", X"0372", X"008c", X"fbd7", X"fe27", X"06b8", X"ff10", X"0f59", X"004e", X"04ce", X"0514", X"03c5", X"fab8",
                                                        X"010b", X"0423", X"0146", X"00bc", X"fea2", X"0473", X"f7f3", X"f1c6", X"0222", X"0435", X"0734", X"05cb", X"0911", X"0651",
                                                        X"036a", X"ffe0", X"02af", X"0c40", X"06fe", X"0119", X"037b", X"07e4", X"fdf3", X"f46b", X"ff36", X"0053", X"0b1e", X"0142",
                                                        X"05eb", X"0d1c", X"00fa", X"f98a", X"0043", X"097e", X"0470", X"023f", X"febb", X"057f", X"0a05", X"fd29", X"0327", X"ff6d",
                                                        X"1026", X"0203", X"0587", X"06ea", X"0261", X"f644", X"055f", X"0698", X"05ab", X"02e2", X"fd3c", X"04ff", X"0215", X"fa33",
                                                        X"fe99", X"0283", X"08f8", X"02e8", X"048a", X"0ac5", X"fd78", X"f8cc", X"00c8", X"01ab", X"04e6", X"031a", X"fde3", X"089e",
                                                        X"0404", X"efe9", X"0789", X"fed9", X"097a", X"fe77", X"fc0d", X"0894", X"fd28", X"fcfc", X"fcb6", X"0c1b", X"f9d2", X"03fc",
                                                        X"014c", X"04d8", X"fb56", X"fa81", X"0e86", X"fd9e", X"0d33", X"022d", X"fe22", X"06ab", X"fef5", X"fd85", X"03f6", X"0f30",
                                                        X"00f3", X"03d3", X"001b", X"fc61", X"f51c", X"0109", X"065e", X"feb9", X"00e8", X"fe6e", X"fe2b", X"0a54", X"0131", X"f6ab",
                                                        X"00e7", X"1867", X"046d", X"03e9");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"03e9";
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
