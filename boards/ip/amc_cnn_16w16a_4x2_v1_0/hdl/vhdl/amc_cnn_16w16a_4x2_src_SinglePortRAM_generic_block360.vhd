-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block360.vhd
-- Created: 2024-11-04 16:44:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block360
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage126/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block360 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block360;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block360 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"030c", X"0931", X"01a2", X"ff82", X"0a44", X"fe95",
                                                        X"1886", X"ffba", X"03b6", X"1516", X"0533", X"03f9", X"08b3", X"07d8", X"107d", X"073b", X"0434", X"0c2e", X"03dc", X"08be",
                                                        X"0ce5", X"0149", X"0ebe", X"002b", X"02e2", X"1304", X"06f1", X"058c", X"069a", X"fcf1", X"0835", X"07d6", X"047f", X"0527",
                                                        X"0ba9", X"067e", X"08bb", X"ffeb", X"0ab3", X"ff93", X"04f2", X"0f79", X"048e", X"0750", X"02d4", X"fac9", X"0ab0", X"06db",
                                                        X"03fb", X"0753", X"0692", X"095f", X"08c5", X"ff79", X"06e7", X"01fe", X"fd81", X"0e6f", X"ff13", X"0588", X"04dd", X"041d",
                                                        X"09ab", X"02c1", X"0270", X"0207", X"04a8", X"012b", X"09ed", X"0221", X"091e", X"fdd7", X"05c4", X"11c0", X"0528", X"fc2b",
                                                        X"06a4", X"0670", X"0a8f", X"0359", X"053b", X"0041", X"04a0", X"054d", X"0774", X"0260", X"0a73", X"0049", X"01dc", X"0f26",
                                                        X"04b8", X"06d5", X"04ca", X"0895", X"06ab", X"033a", X"04d0", X"0415", X"02ed", X"0d26", X"0650", X"0452", X"0c4d", X"fe55",
                                                        X"064d", X"0edf", X"0105", X"03ff", X"0246", X"0d54", X"0674", X"01a9", X"04bc", X"0436", X"0559", X"ff56", X"0974", X"0403",
                                                        X"1685", X"02be", X"066c", X"09dc", X"063c", X"fc74", X"012f", X"06ad", X"07a7", X"00f2", X"0101", X"04c8", X"0371", X"00dd",
                                                        X"08da", X"fe9d", X"17c2", X"02e7", X"069d", X"0e3f", X"02c7", X"04e8", X"0255", X"ffd0", X"05e1", X"04f9", X"00b3", X"0487",
                                                        X"00eb", X"0400", X"0913", X"fffd", X"119a", X"ff07", X"0169", X"091e", X"0553", X"06cf", X"00cd", X"033a", X"0570", X"026d",
                                                        X"024f", X"024e", X"0558", X"0649", X"0063", X"0123", X"1597", X"003d", X"fcb6", X"0a11", X"0385", X"02cd", X"0656", X"ffba",
                                                        X"07de", X"03e5", X"0152", X"031a", X"0b7e", X"0ba6", X"fdd4", X"0290", X"0d6d", X"fe2f", X"00df", X"035a", X"0356", X"00c6",
                                                        X"0234", X"fd97", X"0153", X"0464", X"003d", X"02de", X"fea1", X"fe92", X"001b", X"fc40", X"0c71", X"0353", X"0060", X"0275",
                                                        X"ff1d", X"0100", X"0019", X"f6b2", X"0187", X"017e", X"fefc", X"01d5", X"f211", X"0263", X"fce9", X"fb89", X"00b3", X"0121",
                                                        X"fe7b", X"fb75", X"fc86", X"fb67", X"fd33", X"0014", X"06ad", X"fd0b", X"ff9d", X"fbb0", X"f866", X"fa73", X"fc49", X"f89b",
                                                        X"ffc7", X"ff70", X"00f7", X"fdc1", X"fbde", X"ffa4", X"fe45", X"fd35", X"03a7", X"fd5e", X"fc64", X"fbb4", X"fdd6", X"fabd",
                                                        X"fa2d", X"f9da", X"fa81", X"ff1e", X"fb0b", X"f668", X"fc52", X"051c", X"fec2", X"02ac", X"feab", X"faad", X"fdd8", X"f93a",
                                                        X"f9d8", X"fd65", X"fc21", X"f6db", X"f279", X"0011", X"fa86", X"f8ea", X"fd48", X"fbd7", X"002b", X"fc15", X"fb6d", X"fc9f",
                                                        X"005a", X"fd41", X"fad2", X"f940", X"fc2d", X"f7b3", X"f8ea", X"001d", X"ffdb", X"f978", X"fde9", X"01c5", X"f6a0", X"fc64",
                                                        X"00f3", X"fcc2", X"fc22", X"faea", X"f73d", X"fa3e", X"f20e", X"f870", X"f02b", X"fb4e", X"fd0d", X"f543", X"f9ae", X"f9ec",
                                                        X"f341", X"f3de", X"fe9b", X"f3ac", X"fc99", X"f8e1", X"f4b7", X"f0e8", X"f0d6", X"f8e1", X"e948", X"0078", X"fcc0", X"f125",
                                                        X"f95f", X"fac4", X"f511", X"f7a7", X"fc6e", X"f554", X"f917", X"fcd3", X"f5a0", X"0011", X"f272", X"f549", X"e7dc", X"fa52",
                                                        X"f87f", X"f1e4", X"faf6", X"ffd2", X"f4e3", X"fb74", X"f6aa", X"f45e", X"f907", X"0196", X"f5c6", X"f745", X"f1fe", X"f78a",
                                                        X"efa7", X"0075", X"ffb6", X"f229", X"f964", X"014a", X"f695", X"f578", X"f21d", X"f250", X"f7e2", X"fdfd", X"f7b8", X"06f3",
                                                        X"f3ee", X"f451", X"e446", X"fe7b", X"fe40", X"f2dc", X"f4d0", X"fc09", X"f199", X"f20d", X"f951", X"f28d", X"f8a4", X"f6ac",
                                                        X"f429", X"fe00", X"f3d0", X"f50a", X"ddc0", X"fe7e", X"f9ee", X"eda3", X"f7e3", X"fbc5", X"f967", X"f53d", X"f93d", X"f8c3",
                                                        X"fffe", X"fd5c", X"fabf", X"04d1", X"f82a", X"f67b", X"e88a", X"fd20", X"f8ae", X"f09c", X"f725", X"012b", X"fec9", X"ef9c",
                                                        X"f38b", X"f477", X"fd7a", X"fcdb", X"f1cb", X"f83c", X"f604", X"fb2f", X"e295", X"024a", X"fe5f", X"efee", X"fae7", X"f520",
                                                        X"f6ef", X"eda4", X"f7e3", X"fa78", X"fe50", X"f710", X"f4c0", X"f9c6", X"f86a", X"f94a", X"e7db", X"fe07", X"ff21", X"f2cd",
                                                        X"ff01", X"fafd", X"f8a0", X"f50e", X"f96f", X"f789", X"fe7e", X"fa43", X"f5ed", X"0246", X"faff", X"f854", X"e846", X"f7ca",
                                                        X"f7dc", X"f369", X"fe90", X"fb04", X"f3e9", X"f760", X"fc2c", X"f853", X"fc33", X"fb35", X"f6ef", X"ff81", X"f393", X"f4d6",
                                                        X"eb6f", X"fc67", X"ff58", X"f555", X"f8b3", X"0270", X"f5ca", X"f4f4", X"fb40", X"fb28", X"fa01", X"ff4f", X"f94e", X"fa4f",
                                                        X"f8ea", X"f833", X"e9ef", X"fd33", X"fe49", X"f5f6", X"f7c6", X"fecb", X"fa68", X"f639", X"fc2a", X"fa6a", X"fbad", X"02dc",
                                                        X"f24a", X"fb63", X"f776", X"f924", X"e48f", X"fd3e", X"0229", X"f3f5", X"fc2d", X"025c", X"f527", X"009a", X"fb52", X"fa11",
                                                        X"fca1", X"ffd0", X"ef92", X"f870", X"f65c", X"f7e6", X"ec0e", X"0299", X"fe74", X"f8e0", X"0013", X"fe90", X"fc1c", X"fc30",
                                                        X"fe27", X"fded", X"fc5d", X"fdee", X"f377", X"077d", X"f915", X"fa72", X"eafb", X"0225", X"0686", X"f854", X"fe45", X"fdf0",
                                                        X"0401", X"0525", X"ffd9", X"fd72", X"ffeb", X"0383", X"fefa", X"030e", X"fc9e", X"fae4", X"ecdb", X"00b5", X"ffad", X"f78f",
                                                        X"fdc2", X"0269", X"fc99", X"fc83", X"fd6c", X"fe45", X"ff32", X"fbf9", X"f8ae", X"fd4c", X"fe46", X"face", X"e087", X"f9ee",
                                                        X"fa4f", X"fda8", X"fa0d", X"0172", X"fffd", X"fc88", X"fcfc", X"fa12", X"fd81", X"fd89", X"fc2d", X"05a9", X"fa51", X"fe64",
                                                        X"eab0", X"fc2f", X"fe62", X"0004", X"fc15", X"02bb", X"fc71", X"f748", X"ff47", X"ff8a", X"011b", X"0172", X"f482", X"063b",
                                                        X"ffec", X"fdf3", X"ebea", X"00dc", X"fc99", X"02c9", X"fd94", X"ff1e", X"fbcf", X"faab", X"02be", X"fb50", X"0279", X"0245",
                                                        X"f5fd", X"faf4", X"0438", X"fe23", X"ecba", X"febf", X"fc17", X"078e", X"fddc", X"ff63", X"fc8d", X"f5d5", X"0134", X"fe74",
                                                        X"0229", X"00fa", X"04c5", X"0052", X"ffb6", X"fd94", X"f63f", X"ff7e", X"ffb1", X"05a1", X"fefc", X"074d", X"fe25", X"fc4b",
                                                        X"0096", X"ff08", X"fe49", X"0259", X"ffff", X"02ec", X"0057", X"fe6b", X"f829", X"ff23", X"0386", X"0b4f", X"0428", X"0403",
                                                        X"0212", X"ff82", X"0057", X"0080", X"fddb", X"008c", X"fdca", X"066c", X"03ea", X"fcd0", X"fc04", X"ff2d", X"0411", X"06d9",
                                                        X"045d", X"0331", X"0544", X"fb25", X"0780", X"0302", X"ffb8", X"0197", X"0039", X"096a", X"0099", X"fe38", X"f853", X"feba",
                                                        X"0108", X"09cb", X"01d1", X"00f6", X"0333", X"fc6c", X"080b", X"050d", X"0513", X"01d8", X"fbe5", X"0a63", X"0469", X"0168",
                                                        X"ff8c", X"ff88", X"007c", X"0939", X"0124", X"00c4", X"06d2", X"03f3", X"0597", X"038d", X"0102", X"05dd", X"fed6", X"fc26",
                                                        X"0421", X"fec2", X"077c", X"0590", X"0366", X"0e81", X"01d2", X"047c", X"058f", X"1026", X"0a04", X"0221", X"035f", X"ff6e",
                                                        X"03e6", X"07a5", X"0972", X"feb7", X"036f", X"000a", X"02e5", X"0dd6", X"02dc", X"01e7", X"067c", X"06d6", X"0bd4", X"0430",
                                                        X"05dc", X"0036", X"02bb", X"ff56", X"0e04", X"02ae", X"fdef", X"ff0f", X"ff26", X"0a9e", X"02d6", X"0192", X"05d9", X"0e38",
                                                        X"05d7", X"059a", X"016b", X"089c", X"044c", X"0085", X"0ca8", X"0307", X"0d21", X"05f1", X"ffe6", X"0cdd", X"037c", X"0559",
                                                        X"05fe", X"05fb", X"0759", X"0997", X"03ba", X"037d", X"048a", X"06ce", X"0a72", X"ffbc", X"0c2c", X"ffcc", X"05b8", X"0b6e",
                                                        X"0361", X"0494", X"010e", X"058d", X"09ee", X"0720", X"04eb", X"0a10", X"fed2", X"01d7", X"0aff", X"0345", X"1145", X"fee2",
                                                        X"05c6", X"121b", X"03a9", X"0119", X"0a58", X"01d5", X"0ec5", X"0678", X"00e9", X"0a54", X"00e0", X"ff43", X"0ad7", X"034a",
                                                        X"0f4c", X"01ca", X"0508", X"0d89", X"0340", X"0097", X"09ad", X"0598", X"07c4", X"0182", X"01a9", X"0386", X"05df", X"035e",
                                                        X"0c9e", X"0043", X"0ca0", X"02ad", X"01ad", X"1310", X"05e8", X"fed7", X"0ccc", X"0421", X"0c66", X"08ed", X"076f", X"0775",
                                                        X"07b1", X"fe4e", X"0c6a", X"03a1", X"143c", X"0270", X"03b2", X"12c2", X"0375", X"06af", X"07ff", X"0724", X"05c1", X"0204",
                                                        X"0589", X"074d", X"feb0", X"06d1", X"0b05", X"0229", X"1188", X"040b", X"ffa5", X"12de", X"06fc", X"0307", X"09b4", X"008e",
                                                        X"06de", X"0461", X"03c0", X"08dd", X"0675", X"0186", X"0587", X"033a", X"1310", X"fe18", X"006a", X"12d5", X"05d3", X"0140",
                                                        X"ffcf", X"0289", X"0c59", X"0598", X"0117", X"02d0", X"0236", X"03af", X"068f", X"ffc8", X"14dc", X"ff75", X"049d", X"0e26",
                                                        X"04fa", X"ff42", X"080d", X"0287", X"0c46", X"0436", X"0328", X"03ae", X"fee8", X"03ab", X"08c7", X"0384", X"0c36", X"ffed",
                                                        X"000e", X"0880", X"0289", X"fb7c", X"05e8", X"000b", X"08d6", X"050b", X"01f6", X"0562", X"fef4", X"ff02", X"0a52", X"03d7",
                                                        X"13ab", X"03fb", X"055c", X"1160", X"0360", X"0472", X"0591", X"0927", X"0a11", X"04f0", X"03ad", X"02d8", X"04e7", X"fee1",
                                                        X"0a01", X"015c", X"0c2d", X"01df", X"0543", X"0c12", X"ff5d", X"fe48", X"0652", X"0283", X"030e", X"066f", X"032f", X"0469",
                                                        X"0377", X"fba6", X"05b0", X"fe94", X"0d01", X"019a", X"00f1", X"0972", X"0513", X"f82c", X"03ab", X"03c9", X"0435", X"05ae",
                                                        X"004b", X"025b", X"ffc8", X"fa38", X"019f", X"fea0", X"0e94", X"ff37", X"fdbc", X"076e", X"001b", X"0044", X"035a", X"ff67",
                                                        X"0263", X"004f", X"fef9", X"03ca", X"fe82", X"fc31", X"04c6", X"fdf3", X"082b", X"00b5", X"03b9", X"0280", X"ffca", X"f5e0",
                                                        X"0350", X"0327", X"ff66", X"fe02", X"0122", X"f9e9", X"fa1f", X"fad7", X"007d", X"fc47", X"fe3c", X"fdde", X"02b8", X"00b1",
                                                        X"fa00", X"f516", X"fdbb", X"0398", X"02b9", X"fe3b", X"00ce", X"0126", X"feb9", X"f991", X"fe0f", X"fd7a", X"ff9d", X"0016",
                                                        X"fedc", X"fe52", X"fc41", X"008f", X"f8d1", X"f413", X"04b3", X"fd2f", X"ff55", X"fd02", X"fcb2", X"fff3", X"fdfb", X"ffe5",
                                                        X"ffab", X"00b1", X"016c", X"015d", X"fd0a", X"fe82", X"fe6c", X"f49c", X"04dd", X"febb", X"ff00", X"fe5e", X"fe9d", X"ff0a",
                                                        X"fcf8", X"fbe3", X"f431", X"fd94", X"fa7c", X"025d", X"fa05", X"0237", X"f8f6", X"f7f2", X"009b", X"fe2a", X"fe5e", X"fecb",
                                                        X"f83a", X"f40c", X"f890", X"fc3a", X"fa5c", X"fc1f", X"fe65", X"ffa3", X"fda6", X"00e2", X"fb56", X"00d5", X"022f", X"fd04",
                                                        X"fb03", X"00da", X"f179", X"fd71", X"fc9c", X"f6cb", X"f0fa", X"feba", X"0653", X"fff2", X"fa65", X"ffda", X"00d3", X"0a4e",
                                                        X"01f8", X"fb70", X"fdb9", X"ffd5", X"f690", X"fc38", X"fe00", X"f6a0", X"f754", X"0019", X"fc8c", X"fe7f", X"feda", X"f8cf",
                                                        X"fef4", X"0223", X"feb5", X"faed", X"fe61", X"0240", X"f3d9", X"f949", X"fd7c", X"fc50", X"fb3e", X"fe31", X"0194", X"fe4f",
                                                        X"ffb5", X"034c", X"fe5f", X"03a7", X"00a0", X"fcd9", X"fb78", X"ff8c", X"fb5d", X"014b", X"ff6e", X"fcbe", X"ff15", X"01ac",
                                                        X"0658", X"ff11", X"ffdc", X"002c", X"fcf6", X"022f", X"fcd8", X"fdb5", X"ff62", X"fa82", X"fc89", X"f858", X"fd2b", X"ff27",
                                                        X"f1af", X"02a9", X"0002", X"03cd", X"012b", X"ff43", X"0248", X"fe01", X"0523", X"fba3", X"002e", X"fc42", X"fca6", X"013d",
                                                        X"ffc6", X"fe73", X"f122", X"ff84", X"ff5e", X"032f", X"fd60", X"0297", X"fed2", X"f85a", X"fd43", X"ff61", X"01f6", X"f9d1",
                                                        X"0196", X"ff6c", X"ff39", X"ffab", X"f3bf", X"fe89", X"fb31", X"0175", X"fe05", X"02d8", X"fe9b", X"f10b", X"ff07", X"fa56",
                                                        X"ff89", X"fe14", X"fbe1", X"fb08", X"0244", X"fa4f", X"f95d", X"fd96", X"fb6a", X"fccc", X"fbb5", X"ffbc", X"fd48", X"fb19",
                                                        X"03d8", X"fb32", X"fc79", X"06c3", X"feb8", X"f9e9", X"ffaf", X"fb04", X"f77b", X"0157", X"0756", X"003c", X"011c", X"0626",
                                                        X"ff51", X"0663", X"050b", X"ffdd", X"fe5e", X"0474", X"f5f0", X"fa36", X"011d", X"fdba", X"fb24", X"02ea", X"fce1", X"0333",
                                                        X"ff2d", X"ff2b", X"0200", X"0ba0", X"06a4", X"006c", X"ff8f", X"039e", X"ef86", X"ffef", X"fc28", X"fdb7", X"f22d", X"010e",
                                                        X"002c", X"01bc", X"fef9", X"fdae", X"ff89", X"fed6", X"07d2", X"ff9f", X"01d1", X"fdd6", X"febd", X"0521", X"ff92", X"faba",
                                                        X"fc75", X"fc96", X"046c", X"028a", X"01fd", X"f7f5", X"009f", X"ffef", X"0726", X"0212", X"0134", X"0178", X"0208", X"0934",
                                                        X"fcf1", X"003a", X"ffae", X"002f", X"fc4c", X"fdd0", X"ffc3", X"fb02", X"0479", X"fc43", X"018c", X"021f", X"fcee", X"036d",
                                                        X"feaf", X"fc69", X"fdcf", X"fd49", X"fd39", X"fd1e", X"f744", X"06e5", X"02b2", X"0523", X"ff80", X"0220", X"0142", X"fe7b",
                                                        X"fc53", X"0244", X"fb5d", X"fb21", X"02c2", X"fce2", X"f660", X"0144", X"fee0", X"067e", X"ffb3", X"fb33", X"f8cb", X"fecb",
                                                        X"045b", X"fdfd", X"0082", X"009f", X"f750", X"f0b3", X"009d", X"fe94", X"f9ca", X"0305", X"01f2", X"0651", X"0095", X"fd06",
                                                        X"fbb2", X"0710", X"0423", X"fe7a", X"00f9", X"03fb", X"fe0a", X"f614", X"0664", X"fdf8", X"f953", X"03cd", X"04ed", X"04ef",
                                                        X"0027", X"0424", X"061e", X"011f", X"01a5", X"0005", X"02f2", X"ff71", X"fbb5", X"fe4c", X"07bb", X"ffea", X"fd8f", X"02c5",
                                                        X"0430", X"0985", X"fe57", X"ff09", X"06fb", X"0828", X"0384", X"0046", X"0136", X"fdc6", X"fd25", X"fe0b", X"03da", X"fbc6",
                                                        X"f934", X"fee8", X"02ca", X"04f6", X"f910", X"fe1f", X"03eb", X"01c8", X"0018", X"01c5", X"009b", X"008f", X"fca3", X"098a",
                                                        X"fe9c", X"ff7b", X"fd23", X"ff62", X"00af", X"04d8", X"0019", X"f9f7", X"ff84", X"04f5", X"01c3", X"044f", X"fde0", X"ff9b",
                                                        X"fa5f", X"074c", X"01f4", X"fba9", X"fea2", X"0021", X"004f", X"0787", X"02b3", X"024b", X"fe83", X"fb23", X"02e4", X"0022",
                                                        X"0644", X"00e2", X"ff44", X"f874", X"0a87", X"ff26", X"f7e4", X"00cd", X"0586", X"09f2", X"05ed", X"fbf6", X"0472", X"fd99",
                                                        X"08b1", X"01ee", X"021b", X"ff4e", X"fb4e", X"083d", X"055b", X"ff95", X"03d2", X"0315", X"01cb", X"0dd8", X"0444", X"fd24",
                                                        X"0928", X"fd3f", X"0510", X"05f3", X"066c", X"0043", X"f77a", X"0129", X"04a6", X"00f9", X"025c", X"ffe3", X"fe9b", X"0938",
                                                        X"021d", X"fd86", X"0474", X"fda4", X"0783", X"0221", X"05fb", X"00c0", X"ff76", X"05a3", X"03a5", X"fe54", X"fcaa", X"fbb2",
                                                        X"00e6", X"0834", X"026d", X"fe5a", X"044b", X"00ff", X"0a9f", X"0623", X"061d", X"01c6", X"fa7d", X"fc0f", X"0772", X"01ba",
                                                        X"045b", X"fc18", X"0045", X"06dc", X"ffdb", X"06d8", X"0858", X"fa60", X"0ca0", X"02d1", X"05d9", X"021a", X"f5bc", X"fdf9",
                                                        X"06d8", X"0015", X"0300", X"feea", X"096a", X"0867", X"062d", X"fae9", X"068f", X"03e6", X"0bd3", X"067e", X"00f3", X"0c55",
                                                        X"f8f6", X"07b6", X"05d8", X"001c", X"07eb", X"03e1", X"03df", X"0e0e", X"ff88", X"fbd2", X"035b", X"00e5", X"0ec0", X"0851",
                                                        X"fedb", X"06b4", X"0023", X"01b2", X"0af6", X"fee4", X"0daf", X"ff08", X"01ad", X"0fb3", X"0443", X"01c4", X"05f8", X"043d",
                                                        X"0e0d", X"0a04", X"02d2", X"0500", X"020a", X"f94b", X"0b53", X"04c2", X"0e84", X"0268", X"0341", X"0d4a", X"02f1", X"ff2d",
                                                        X"0a1f", X"073a", X"0b40", X"067b", X"0506", X"04ed", X"015b", X"0356", X"0898", X"027d", X"141b", X"fdde", X"02ee", X"119f",
                                                        X"047b", X"04c3", X"0730", X"0929", X"07b2", X"04f6", X"0334", X"0c59", X"050f", X"ff54", X"0677", X"0100", X"0b77", X"0463",
                                                        X"fe51", X"0cd9", X"ff56", X"fba2", X"083c", X"0762", X"0838", X"0552", X"06e1", X"08fd", X"011f", X"072b", X"08a2", X"01ab",
                                                        X"0aba", X"022b", X"0731", X"138d", X"03fd", X"fa8c", X"08b4", X"008f", X"0958", X"0419", X"052c", X"07f4", X"0322", X"0054",
                                                        X"0e3d", X"011e", X"0cae", X"0412", X"0556", X"1108", X"034f", X"028c", X"0949", X"fd19", X"0200", X"044e", X"01a3", X"03e7",
                                                        X"044f", X"0657", X"08ff", X"0593", X"0cbc", X"ff54", X"ff7a", X"1307", X"fdd9", X"0098", X"0349", X"01da", X"050f", X"fef4",
                                                        X"00e1", X"0163", X"047d", X"07a9", X"06ca", X"0025", X"0feb", X"fe36", X"fcd2", X"0ed3", X"0022", X"0219", X"fdf3", X"fa3f",
                                                        X"023b", X"0328", X"016e", X"fe20", X"05ba", X"01b8", X"030f", X"02ed", X"0b74", X"0105", X"099a", X"0aa3", X"0469", X"fbc5",
                                                        X"ff10", X"031f", X"03e4", X"fe91", X"023c", X"fe91", X"fe78", X"fa36", X"01d5", X"fe30", X"13d0", X"fe85", X"06c4", X"0a26",
                                                        X"04c1", X"000f", X"00b3", X"001f", X"027a", X"fe41", X"02d2", X"04fe", X"029e", X"f6ec", X"01f1", X"ff7a", X"13fe", X"fc3e",
                                                        X"0284", X"05a3", X"00d9", X"ff51", X"f9a9", X"ff1f", X"0183", X"fe0b", X"0220", X"fe49", X"f7c0", X"f8d1", X"fda4", X"fcaf",
                                                        X"03b3", X"fb9e", X"ffe7", X"0000", X"006c", X"f913", X"f99d", X"05f4", X"08a7", X"fe14", X"0338", X"fc72", X"f3b8", X"031e",
                                                        X"fc78", X"fb72", X"002d", X"fc25", X"fd00", X"ff44", X"ff00", X"00e7", X"fb65", X"03a0", X"02b1", X"fca9", X"0065", X"fe7e",
                                                        X"f43a", X"007f", X"fbb7", X"fa46", X"05f8", X"04dd", X"0a21", X"f99d", X"ff7c", X"f76e", X"f7b5", X"0444", X"0519", X"fd0a",
                                                        X"ff82", X"fefc", X"f9ba", X"f482", X"ff88", X"f606", X"fff3", X"0361", X"0086", X"f7d6", X"ff77", X"0497", X"f82b", X"fdaa",
                                                        X"ff62", X"fa06", X"fb6a", X"fbf2", X"f4b5", X"fb90", X"f9fb", X"f7c3", X"f131", X"fd88", X"fc0f", X"f413", X"fa17", X"0261",
                                                        X"f7b6", X"03be", X"fb96", X"fe1f", X"f716", X"fd2b", X"f5a1", X"0292", X"f484", X"f90a", X"ec2e", X"fa8b", X"facf", X"f6df",
                                                        X"fa9c", X"f5ff", X"fb3c", X"f9bc", X"fb29", X"fc44", X"fd28", X"0268", X"efdb", X"013d", X"f0d7", X"f80e", X"f4b8", X"02fc",
                                                        X"fe8d", X"f6a7", X"fa93", X"ef4f", X"f540", X"f7f2", X"fd87", X"fc97", X"fe52", X"f9b1", X"f302", X"fdb0", X"f390", X"f8af",
                                                        X"f5b8", X"fe79", X"fea4", X"f383", X"fc63", X"f4c3", X"f87f", X"f854", X"ffd5", X"fd82", X"fe6d", X"f829", X"f605", X"fb49",
                                                        X"f6ce", X"f63e", X"f475", X"ff60", X"fbf4", X"f5f9", X"fa17", X"fb5e", X"fb17", X"f69d", X"fb47", X"f907", X"fcfb", X"fadf",
                                                        X"f2b7", X"f425", X"f610", X"f76f", X"ecf3", X"0048", X"fe3d", X"fa76", X"fa7a", X"fef3", X"fee7", X"f94c", X"f6c6", X"f5e7",
                                                        X"fe60", X"fd76", X"ea0a", X"ff83", X"f77f", X"f696", X"e8c7", X"fd44", X"fea3", X"f577", X"faf9", X"011c", X"fb68", X"fa79",
                                                        X"f7cf", X"f91e", X"faf2", X"fa1b", X"f28f", X"f73d", X"f58d", X"f9c9", X"f0ea", X"fe6e", X"ff57", X"f8eb", X"f8a1", X"fc2c",
                                                        X"f8f1", X"f9db", X"fbea", X"f8ba", X"ffde", X"fbc7", X"f8ab", X"0075", X"fd0b", X"f7c9", X"ec9b", X"002c", X"fec5", X"f6e9",
                                                        X"fc98", X"01d8", X"fbf3", X"f997", X"fdcc", X"fc62", X"f9f4", X"fd0a", X"fd81", X"0a4d", X"fba8", X"fa72", X"e46f", X"fb72",
                                                        X"ffe6", X"f9cf", X"fab6", X"fd29", X"fefc", X"fbd2", X"fc01", X"fbdf", X"fce8", X"fed5", X"fa22", X"0085", X"f925", X"f9b4",
                                                        X"ed2d", X"fbe6", X"0100", X"fcc5", X"fb18", X"00e2", X"fb6c", X"faba", X"fab9", X"f900", X"fd01", X"feab", X"f21f", X"074f",
                                                        X"f6f3", X"f886", X"ec25", X"fd93", X"0091", X"fb49", X"fd76", X"f846", X"fbb8", X"031d", X"0031", X"f7a3", X"fa37", X"fe72",
                                                        X"fb70", X"02eb", X"fc4c", X"f72e", X"f83e", X"ff17", X"fe8b", X"f860", X"fec6", X"fcd9", X"f748", X"ff1c", X"041f", X"f8db",
                                                        X"fd2e", X"fffd", X"fc05", X"f5e3", X"fb0b", X"f852", X"f897", X"ffb2", X"0304", X"f8a7", X"fe71", X"fd99", X"fd98", X"042f",
                                                        X"01cb", X"f8f4", X"f7aa", X"013b", X"f7b8", X"019d", X"fb6f", X"f229", X"fa06", X"f6b2", X"f720", X"fa54", X"f7c5", X"008f",
                                                        X"fd48", X"fbc2", X"fe77", X"f922");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f922";
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

