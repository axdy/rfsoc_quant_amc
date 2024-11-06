-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block418.vhd
-- Created: 2024-11-04 16:44:18
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block418
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage64/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block418 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block418;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block418 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fdf3", X"02be", X"f258", X"fa42", X"01c6", X"f48a",
                                                        X"fb78", X"fa15", X"0419", X"f9c0", X"f5cb", X"fc48", X"fd4d", X"fc56", X"ffdf", X"f8a7", X"fe1f", X"ffad", X"f696", X"fd04",
                                                        X"ff46", X"f8a1", X"fe44", X"f5cd", X"058c", X"fd2e", X"fae7", X"fa1b", X"fb62", X"f676", X"0577", X"f9ec", X"0037", X"0208",
                                                        X"fc98", X"02dd", X"00ac", X"f950", X"0592", X"fe03", X"ff1c", X"fe5f", X"fc56", X"01b6", X"f9cf", X"fe0f", X"00a6", X"fcf4",
                                                        X"fe38", X"0103", X"ff94", X"f371", X"f7b1", X"fab0", X"fd1d", X"016c", X"0145", X"fccd", X"fda7", X"fa08", X"fd58", X"01df",
                                                        X"0135", X"fd0b", X"faf7", X"026c", X"0276", X"fab1", X"fd6f", X"f6bb", X"fca6", X"0224", X"fd09", X"fc2d", X"ffe7", X"fbaf",
                                                        X"fdab", X"fc51", X"ffc7", X"fd5e", X"fb54", X"065a", X"fcc2", X"fc2f", X"ffca", X"fb3d", X"f6ca", X"fd39", X"fec5", X"fa1f",
                                                        X"014b", X"fe73", X"fcd6", X"fa87", X"fcaa", X"fb3a", X"fba9", X"00a3", X"f7fd", X"0438", X"fa34", X"f71c", X"efdf", X"f90e",
                                                        X"ff65", X"fa09", X"009e", X"fbf3", X"fd7d", X"fd55", X"f9ce", X"f768", X"fb4d", X"fc5e", X"f641", X"f946", X"f8ad", X"fc35",
                                                        X"f792", X"fd0d", X"05ed", X"f6be", X"fdc6", X"fc5b", X"fc11", X"fc87", X"0073", X"f645", X"fb71", X"f7d2", X"fbb1", X"f8f4",
                                                        X"fad2", X"fa90", X"f525", X"fb59", X"00d2", X"f991", X"f8fe", X"f784", X"f85e", X"fe4f", X"011d", X"fc6e", X"f99d", X"045c",
                                                        X"f81f", X"f687", X"00ca", X"f97a", X"f059", X"0189", X"ffe1", X"00cd", X"fbf5", X"0117", X"ffcc", X"fb85", X"fc7c", X"fd17",
                                                        X"f74d", X"0012", X"ef90", X"f6d0", X"ffe0", X"fae2", X"f284", X"0028", X"003a", X"0345", X"febe", X"fd6c", X"fd6b", X"ff23",
                                                        X"fccf", X"fb33", X"f7f9", X"fd7d", X"f8d0", X"04a1", X"fbe7", X"f91b", X"f850", X"fc64", X"fcd4", X"0119", X"fa62", X"fa0e",
                                                        X"0129", X"fc87", X"f8d6", X"fb3f", X"0243", X"0047", X"fa72", X"0150", X"f822", X"f78a", X"000c", X"fbcc", X"0207", X"febb",
                                                        X"fb57", X"fb01", X"fc15", X"fe8c", X"018c", X"fe0a", X"fe5b", X"0034", X"f912", X"fae0", X"0026", X"f700", X"f0df", X"fbda",
                                                        X"0288", X"054f", X"fe28", X"fb58", X"ff93", X"f7c5", X"00c8", X"fc0f", X"000c", X"ff4a", X"f748", X"fa5d", X"0158", X"f89c",
                                                        X"f4ec", X"fcd7", X"02d5", X"03f9", X"fc25", X"019b", X"fb6c", X"fcc4", X"0150", X"fd6a", X"fd96", X"00d7", X"f761", X"fd50",
                                                        X"015a", X"fa4d", X"ffe3", X"fb18", X"fd2c", X"0734", X"fc96", X"04ae", X"0021", X"fc5b", X"ff6f", X"fb22", X"024b", X"0103",
                                                        X"fea6", X"0beb", X"fcf1", X"fee4", X"0066", X"fe71", X"00e0", X"01a9", X"fbe0", X"fb37", X"029f", X"04de", X"004f", X"fc99",
                                                        X"0635", X"040b", X"fcba", X"fbbe", X"000a", X"fcbf", X"fd70", X"0043", X"016b", X"053c", X"fcda", X"faae", X"044b", X"01df",
                                                        X"04f5", X"fe5e", X"fdfd", X"ff57", X"fb0b", X"0168", X"0284", X"fa3a", X"fe76", X"0196", X"0453", X"03d9", X"fd26", X"0124",
                                                        X"06da", X"0605", X"0727", X"fe7c", X"fde0", X"04e1", X"f9d1", X"f033", X"0092", X"fc9e", X"02ea", X"0008", X"0597", X"07b6",
                                                        X"0187", X"fd2f", X"01b1", X"0053", X"02ed", X"ffe6", X"fb21", X"06de", X"fa15", X"00c5", X"060e", X"fd9a", X"085f", X"fcbb",
                                                        X"06ab", X"059a", X"02de", X"0235", X"fa0a", X"fe37", X"0336", X"0003", X"f779", X"0255", X"f59d", X"0acc", X"04c9", X"fa99",
                                                        X"02f3", X"febe", X"00d1", X"05b3", X"00d5", X"fc58", X"fdaa", X"fe1a", X"03be", X"ff9e", X"fd43", X"00e7", X"f776", X"09ef",
                                                        X"0201", X"fbbe", X"02b0", X"fe37", X"feaf", X"0595", X"0184", X"fad4", X"faed", X"0236", X"005a", X"01fc", X"02e0", X"fe4f",
                                                        X"fa8a", X"fd4f", X"0388", X"f8f1", X"fde8", X"fdd9", X"fdbf", X"02a8", X"fa48", X"fc97", X"fe6b", X"fd20", X"0330", X"fc12",
                                                        X"00d1", X"0142", X"f8a0", X"ff1a", X"014d", X"fbfa", X"062b", X"fe82", X"005d", X"036d", X"fed8", X"04de", X"fd46", X"0561",
                                                        X"0239", X"fd44", X"01e5", X"0251", X"fecf", X"00aa", X"0019", X"ff90", X"0a03", X"0064", X"007f", X"03ad", X"fd3f", X"01fb",
                                                        X"00ff", X"0281", X"ffaa", X"f9a4", X"fd05", X"fe0a", X"f79f", X"fbfb", X"fbba", X"fdd9", X"fc66", X"fb96", X"00c1", X"00cd",
                                                        X"f775", X"ff2d", X"ff65", X"fe7e", X"02cf", X"fa9a", X"fb78", X"fbe4", X"0225", X"0188", X"ff65", X"f8d2", X"09b4", X"ffac",
                                                        X"f9ea", X"fdb1", X"fad0", X"0059", X"0008", X"fef1", X"0091", X"ff11", X"fc28", X"fd6c", X"01c7", X"fbfe", X"fbf6", X"f76b",
                                                        X"f846", X"fcd1", X"00e1", X"fafb", X"fa4d", X"fc16", X"f93f", X"fa4b", X"fecf", X"fbc3", X"fa7d", X"fc89", X"f8ce", X"f70f",
                                                        X"f8bb", X"fc28", X"fdfd", X"ff0d", X"f7b3", X"f752", X"f6df", X"fd88", X"fa50", X"f93f", X"fb1e", X"f6b3", X"fcb8", X"0100",
                                                        X"f5e6", X"f6d0", X"f8cc", X"f678", X"fb89", X"fea3", X"fc46", X"f684", X"fe7e", X"f4e7", X"ff20", X"f4f2", X"ff53", X"f756",
                                                        X"fb95", X"fee2", X"fa34", X"fd14", X"f9c2", X"f9c8", X"f6cd", X"fc2c", X"fb3d", X"f317", X"fabb", X"f8aa", X"f572", X"f39a",
                                                        X"fc5b", X"f4c0", X"f89c", X"fbc0", X"f9e4", X"f39f", X"f2fb", X"f8dd", X"f98e", X"fd14", X"fda9", X"f384", X"ff01", X"fb1c",
                                                        X"fd9a", X"f6df", X"fe30", X"f4f2", X"fbed", X"faaf", X"fe44", X"fb7a", X"f885", X"f785", X"f5b7", X"fa65", X"fc57", X"ef35",
                                                        X"f5c6", X"0081", X"f270", X"f298", X"f560", X"f7f2", X"f73e", X"fc95", X"f5ca", X"f424", X"f42e", X"f5ec", X"f886", X"f8f0",
                                                        X"fa38", X"edef", X"fb08", X"02e1", X"ee4d", X"f766", X"f16b", X"f8f1", X"fa62", X"032c", X"f97a", X"f27f", X"f13a", X"f6a6",
                                                        X"eea8", X"fde8", X"fcf2", X"ea08", X"f921", X"fbf2", X"f585", X"f4f2", X"f565", X"f3f9", X"fab7", X"fae6", X"f898", X"0097",
                                                        X"f10d", X"f684", X"ea7a", X"fd92", X"fb35", X"eca1", X"f848", X"ef69", X"f22b", X"f87c", X"f850", X"f5b5", X"f9bb", X"f658",
                                                        X"ef20", X"f809", X"f1ca", X"f2dd", X"e24e", X"ff91", X"fe5b", X"e93f", X"f5a2", X"f421", X"f0c1", X"fcab", X"f8e7", X"f517",
                                                        X"f5be", X"f78d", X"fc6e", X"003f", X"ef41", X"f2a1", X"d49a", X"f4d9", X"fa47", X"e961", X"f611", X"01bb", X"ed4e", X"f317",
                                                        X"f9d7", X"f53d", X"f980", X"f41c", X"f8d0", X"fa4c", X"f59d", X"f167", X"d96a", X"f6f7", X"fe2a", X"eaaf", X"f8c7", X"f85c",
                                                        X"f310", X"f38b", X"fc3f", X"f2db", X"fb2a", X"fa74", X"efdf", X"f241", X"f32f", X"f337", X"da72", X"003d", X"001e", X"ec8b",
                                                        X"f7d6", X"fcf8", X"f78d", X"f8d0", X"fc56", X"f6bd", X"fcf0", X"fcc6", X"fb04", X"ff3f", X"faba", X"f72b", X"e2af", X"01e8",
                                                        X"013b", X"ee06", X"fb9c", X"f0c5", X"f3ef", X"fc76", X"02fc", X"f452", X"f8a2", X"016c", X"f1c9", X"f53e", X"f8dd", X"f5e9",
                                                        X"e286", X"fd63", X"fb81", X"ee26", X"f717", X"fdb8", X"f9f4", X"f0f7", X"fb90", X"f64e", X"f8bb", X"027a", X"f4d7", X"fd49",
                                                        X"f464", X"f675", X"e84d", X"feca", X"fac7", X"f0d8", X"fbf0", X"05d4", X"f8aa", X"edd5", X"fc9d", X"f82a", X"fad4", X"fbaa",
                                                        X"ff20", X"05cb", X"f860", X"f749", X"eec6", X"fd50", X"fcac", X"f490", X"fb9e", X"fa19", X"01f4", X"f752", X"00ce", X"fa8b",
                                                        X"fca5", X"009d", X"f947", X"04fb", X"f967", X"faac", X"f091", X"0245", X"fa03", X"f6bb", X"f88e", X"08cf", X"fe9f", X"fcb3",
                                                        X"fdff", X"fca6", X"fa7d", X"00dd", X"f17b", X"03bd", X"feb3", X"fc38", X"df0a", X"0176", X"fe54", X"f8b7", X"f74b", X"0161",
                                                        X"fac5", X"056b", X"000f", X"fe90", X"fe9b", X"fc75", X"fad8", X"0040", X"02f0", X"fb5c", X"f572", X"fcff", X"00db", X"fe40",
                                                        X"fd7a", X"08a0", X"ff40", X"0434", X"063a", X"0248", X"0046", X"fc08", X"04f6", X"08b7", X"ff32", X"fcad", X"f57c", X"fed9",
                                                        X"024b", X"035d", X"002a", X"0555", X"009d", X"0219", X"03b2", X"0066", X"033b", X"032f", X"0321", X"02cd", X"ff1c", X"000a",
                                                        X"fee8", X"0284", X"028d", X"01bd", X"00c8", X"fe0a", X"04b8", X"fb9b", X"01bf", X"fc50", X"02e7", X"0172", X"01c7", X"0614",
                                                        X"0585", X"fbdd", X"f2e1", X"ff43", X"ff6e", X"0742", X"fe7a", X"09bc", X"0043", X"f5a3", X"021c", X"018c", X"018c", X"fd50",
                                                        X"fa75", X"fe40", X"0710", X"fee4", X"f709", X"ffc7", X"019b", X"0ab9", X"fc8a", X"014f", X"0285", X"03ab", X"012b", X"00cb",
                                                        X"0184", X"00a1", X"0355", X"f728", X"08f5", X"00f1", X"004d", X"0052", X"0201", X"0a57", X"fd98", X"0584", X"02c4", X"000c",
                                                        X"038e", X"ff5d", X"01a0", X"0792", X"0529", X"0887", X"07e3", X"fe20", X"0c45", X"ff43", X"035f", X"0d6f", X"0071", X"03b5",
                                                        X"045f", X"fcde", X"085c", X"06e6", X"ffa9", X"0c7c", X"07fd", X"0240", X"06ba", X"0089", X"08c5", X"0576", X"0335", X"0e52",
                                                        X"039b", X"fcf0", X"0424", X"051e", X"09ea", X"0461", X"011c", X"06b1", X"0481", X"0136", X"0a72", X"fe98", X"1451", X"fcc5",
                                                        X"0160", X"12d6", X"0653", X"ffb3", X"ffee", X"0517", X"077a", X"04e1", X"023e", X"034a", X"04c7", X"0318", X"0d09", X"01c6",
                                                        X"0e26", X"fe6d", X"01b4", X"12c8", X"0029", X"04b4", X"0466", X"03fe", X"0ae3", X"0243", X"019f", X"05aa", X"0fba", X"03d7",
                                                        X"0a62", X"0471", X"1349", X"fe77", X"0639", X"0e62", X"04fa", X"0210", X"0725", X"02d3", X"0a23", X"0498", X"00f8", X"0a32",
                                                        X"0d2b", X"fd22", X"0789", X"046f", X"0942", X"034a", X"032f", X"1303", X"050e", X"079d", X"0583", X"0b7d", X"098e", X"04f2",
                                                        X"00a0", X"03bb", X"00b4", X"07a0", X"0c46", X"0178", X"0d45", X"fed9", X"03ff", X"11f3", X"05e2", X"fe77", X"0a98", X"038c",
                                                        X"095a", X"0594", X"0481", X"07d7", X"0074", X"07af", X"05ef", X"02de", X"1170", X"fe6e", X"ffdd", X"1451", X"0710", X"fc03",
                                                        X"0607", X"0596", X"09eb", X"05e7", X"00db", X"09ed", X"0531", X"fdb9", X"0ad9", X"0100", X"1000", X"0219", X"00a8", X"12bf",
                                                        X"03b0", X"00ef", X"082b", X"fb87", X"0c21", X"0592", X"03ef", X"04e1", X"0dde", X"fe25", X"0a02", X"017a", X"138c", X"fefa",
                                                        X"018d", X"0dcb", X"061b", X"ff88", X"0727", X"0532", X"092a", X"010c", X"0318", X"04d0", X"ff0c", X"fde4", X"05ec", X"019f",
                                                        X"1260", X"fe43", X"0038", X"0d13", X"025d", X"041c", X"0276", X"fc63", X"0399", X"04ae", X"052c", X"0623", X"00b8", X"f454",
                                                        X"07f4", X"fdf8", X"0f98", X"05dd", X"04bf", X"0ab6", X"02af", X"0773", X"0088", X"0321", X"073e", X"039d", X"0040", X"fddf",
                                                        X"0360", X"fb26", X"079e", X"fcfe", X"0e64", X"0366", X"01f8", X"0c7c", X"fd20", X"02af", X"054c", X"02b7", X"0980", X"03a0",
                                                        X"03f8", X"02b2", X"ff44", X"035e", X"0423", X"fe67", X"1121", X"00e6", X"0590", X"07d0", X"0047", X"fe23", X"053d", X"ff52",
                                                        X"057a", X"feed", X"0233", X"0121", X"0091", X"f94e", X"fd45", X"fed6", X"0554", X"ff19", X"fb75", X"03b5", X"fb2d", X"02c7",
                                                        X"015a", X"fe7d", X"04df", X"fe9b", X"02ac", X"fdbd", X"fccd", X"fae2", X"045a", X"fb6d", X"0622", X"fd3a", X"ff63", X"0662",
                                                        X"ffc7", X"fcad", X"027e", X"fc42", X"04af", X"fe78", X"ff65", X"fdc7", X"030f", X"f6b9", X"ff39", X"f8df", X"0606", X"fe8d",
                                                        X"0092", X"0404", X"ffae", X"fc16", X"f4ec", X"fce0", X"064d", X"0076", X"ff61", X"0285", X"faea", X"efd3", X"003a", X"fb77",
                                                        X"043e", X"fe2b", X"ffe1", X"0889", X"ffa0", X"fb4a", X"fa93", X"f937", X"0315", X"f94f", X"fcfd", X"0437", X"0019", X"fc94",
                                                        X"00d7", X"f8c1", X"090e", X"fdf6", X"0676", X"027c", X"fced", X"f820", X"fc74", X"f79d", X"014e", X"fb7c", X"0098", X"044b",
                                                        X"fa3e", X"fbd6", X"ffad", X"f94f", X"0046", X"0299", X"032a", X"fe31", X"fef4", X"f998", X"0035", X"fb5a", X"fbdd", X"f8c5",
                                                        X"014b", X"0567", X"f83a", X"02e8", X"0013", X"f7d3", X"f941", X"fe61", X"03bc", X"fd81", X"fc32", X"f33c", X"ff2c", X"fca2",
                                                        X"ff1d", X"fb2e", X"fbc3", X"fc19", X"f5bd", X"f4c0", X"fc65", X"f7b2", X"f4b0", X"fcd8", X"018a", X"fe44", X"fb7d", X"ffc4",
                                                        X"fbfe", X"fa89", X"0042", X"0008", X"0054", X"f74f", X"f10e", X"fb47", X"011a", X"f749", X"f11b", X"fe89", X"03a1", X"fc12",
                                                        X"fac1", X"039e", X"fb38", X"f52c", X"fd8e", X"0066", X"0210", X"ff92", X"fc9c", X"fdb5", X"00f4", X"fdeb", X"fa5b", X"fc91",
                                                        X"0262", X"02e8", X"fc60", X"032e", X"f9dd", X"f581", X"0017", X"fd8a", X"00c4", X"fbd1", X"f760", X"f6e2", X"0135", X"fb64",
                                                        X"f17f", X"fe95", X"073c", X"0087", X"fd11", X"0002", X"fedf", X"fd3d", X"02db", X"0238", X"fb73", X"fbb4", X"f89d", X"041c",
                                                        X"05ab", X"fc1d", X"f02f", X"feb5", X"fc24", X"02bd", X"ffaa", X"fa50", X"fd7c", X"0573", X"fef1", X"feea", X"ff91", X"fdae",
                                                        X"fe4e", X"01b4", X"0588", X"ff89", X"fc11", X"fe3c", X"fefa", X"01d3", X"fa95", X"fe88", X"00e1", X"ffe3", X"fd8c", X"fbaa",
                                                        X"00c5", X"019b", X"025a", X"032b", X"05a0", X"00ea", X"fb23", X"fffb", X"fef5", X"07ac", X"ff89", X"fc49", X"ffb7", X"00f6",
                                                        X"00f4", X"0068", X"fec4", X"025d", X"041f", X"fa0e", X"060d", X"fbe8", X"fe56", X"fd4e", X"ff67", X"036e", X"024d", X"fabd",
                                                        X"05cb", X"007c", X"0882", X"febf", X"ff84", X"07fe", X"0482", X"f8bc", X"07ac", X"00c0", X"02ec", X"fedf", X"fc5c", X"0891",
                                                        X"01dc", X"fce0", X"0737", X"fa0c", X"044c", X"0344", X"feca", X"ff42", X"0079", X"fa33", X"060b", X"0005", X"02a3", X"02f3",
                                                        X"00eb", X"085b", X"fc4d", X"fefd", X"017b", X"fd63", X"079a", X"ff07", X"0131", X"fc44", X"fe9f", X"fe32", X"0a0e", X"fede",
                                                        X"00e1", X"017b", X"0870", X"0c0a", X"0208", X"fe6a", X"011f", X"084f", X"0da6", X"fe62", X"05d5", X"0137", X"05fb", X"fcbc",
                                                        X"0605", X"0025", X"03f1", X"035b", X"01c2", X"0768", X"0320", X"fe77", X"ffbc", X"059d", X"0cc3", X"025f", X"06dc", X"0a3c",
                                                        X"044e", X"0365", X"0960", X"0075", X"0431", X"03fd", X"02af", X"0c15", X"071b", X"072a", X"060d", X"fb82", X"0702", X"04e5",
                                                        X"ffdc", X"0708", X"04d1", X"02e0", X"03ca", X"0027", X"1036", X"ffed", X"01c5", X"0e26", X"fff7", X"023e", X"0b54", X"00dd",
                                                        X"0ab7", X"01bc", X"031c", X"0674", X"0dd7", X"fe59", X"0b43", X"0571", X"13c3", X"fd41", X"0398", X"1034", X"0655", X"0202",
                                                        X"0933", X"06e1", X"0761", X"02db", X"02de", X"0627", X"05ab", X"ff1d", X"0918", X"0207", X"0789", X"0008", X"008f", X"0ad9",
                                                        X"0847", X"08d7", X"0423", X"040f", X"058f", X"04d7", X"0602", X"0341", X"097f", X"0892", X"0861", X"00f3", X"084d", X"fddd",
                                                        X"0a70", X"0fd5", X"078e", X"0202", X"0359", X"0291", X"0adb", X"038c", X"056b", X"04c1", X"0486", X"0462", X"0a7d", X"0232",
                                                        X"0681", X"02c5", X"02ff", X"0ee9", X"0130", X"0875", X"02a2", X"03ae", X"0728", X"0542", X"05a2", X"0178", X"0d48", X"03aa",
                                                        X"0d8a", X"ff9a", X"077d", X"ff8d", X"01a7", X"09c6", X"01bc", X"fb59", X"00a1", X"04f3", X"03b1", X"fddb", X"012b", X"082f",
                                                        X"0295", X"008f", X"0b1f", X"0163", X"0819", X"019a", X"04b3", X"0c78", X"fd61", X"041b", X"00a9", X"fd10", X"06fd", X"ffd5",
                                                        X"0151", X"025a", X"043e", X"fc9f", X"0593", X"fdb2", X"0b60", X"ff1d", X"05b4", X"08ec", X"ff35", X"fef6", X"02a9", X"fb2f",
                                                        X"07d2", X"0299", X"046f", X"0195", X"01bb", X"0162", X"0a3b", X"ff10", X"0299", X"0144", X"036a", X"08f6", X"fe25", X"fcee",
                                                        X"fe5d", X"0527", X"04ff", X"0878", X"04e4", X"001b", X"fb70", X"fa1c", X"01d4", X"fdb8", X"0830", X"fcbd", X"03b0", X"0b95",
                                                        X"fedb", X"01c1", X"fc62", X"fe9d", X"0253", X"0179", X"021b", X"01f0", X"fbc3", X"05c4", X"00c0", X"fe80", X"02e7", X"011f",
                                                        X"0214", X"06b2", X"021b", X"0018", X"fe18", X"0049", X"02d8", X"045a", X"061b", X"ffd4", X"fccb", X"fe52", X"0320", X"feee",
                                                        X"075d", X"ff58", X"03e4", X"03ce", X"01a5", X"fd89", X"fa9f", X"0322", X"05e1", X"ff67", X"fea6", X"ff19", X"fc3a", X"0105",
                                                        X"0114", X"fb39", X"01fa", X"fe71", X"0238", X"0315", X"faf2", X"fd36", X"031c", X"02f0", X"047a", X"fbd7", X"04b3", X"fd28",
                                                        X"fe5b", X"fc9b", X"0066", X"fdb1", X"fb4e", X"fef8", X"02e5", X"0416", X"fa39", X"fff3", X"035c", X"0129", X"0693", X"0062",
                                                        X"ff30", X"fb8e", X"fc49", X"fa38", X"0380", X"fb17", X"fb33", X"fcd0", X"feb8", X"0010", X"faea", X"feea", X"fba2", X"020c",
                                                        X"0106", X"fee3", X"f96b", X"00e5", X"015f", X"ffec", X"001b", X"f8b7", X"f8fb", X"fe30", X"fec6", X"048c", X"feac", X"faa6",
                                                        X"fdf0", X"fa07", X"03e1", X"fbe0", X"fa91", X"fc49", X"0024", X"f9a4", X"fabe", X"f915", X"0362", X"fded", X"0389", X"0439",
                                                        X"fe54", X"fef8", X"fe60", X"ff85", X"050d", X"fba8", X"fdb2", X"0089", X"ff55", X"fef6", X"0055", X"00fb", X"07c5", X"fe27",
                                                        X"024b", X"052f", X"fedb", X"fc4a", X"06fb", X"06c3", X"03eb", X"fb31", X"fe61", X"04fc", X"f9e6", X"f39d", X"0107", X"ff3d",
                                                        X"fe06", X"02c7", X"019e", X"0643", X"040f", X"fcd1", X"fdc1", X"0617", X"04bf", X"ff24", X"fdce", X"00d1", X"fa2c", X"faed",
                                                        X"febc", X"feeb", X"0008", X"0215", X"fc13", X"027f", X"025d", X"fc49", X"fc44", X"ffc9", X"0642", X"ff25", X"009a", X"039e",
                                                        X"faa4", X"065a", X"047d", X"fe29", X"f594", X"0191", X"fec1", X"0303", X"fbc8", X"f6c9", X"fff3", X"02bc", X"08ad", X"050c",
                                                        X"ff66", X"02ad", X"fafd", X"ff3e", X"0740", X"fc19", X"0031", X"0026", X"ffc7", X"07df", X"fb20", X"fe26", X"0267", X"03ec",
                                                        X"0661", X"018c", X"01c7", X"fd67", X"ff82", X"0192", X"0494", X"fdd8", X"0034", X"0169", X"0a47", X"0a39", X"036e", X"0186",
                                                        X"068c", X"0b43", X"0883", X"018a", X"00d4", X"fe3b", X"05fe", X"fe45", X"0592", X"013c", X"fefb", X"fcb5", X"03d3", X"0ae5",
                                                        X"fce5", X"0370", X"ff35", X"0160", X"063b", X"0253", X"021a", X"0142", X"04fa", X"f889", X"0540", X"fcde", X"f78a", X"fb14",
                                                        X"04d6", X"0bad", X"0127", X"fe03", X"0485", X"052e", X"0763", X"006e", X"07db", X"034a", X"ff54", X"041c", X"08a3", X"fcc3",
                                                        X"fcc3", X"01e2", X"0088", X"0b75", X"0109", X"f970", X"03f9", X"0187", X"0369", X"0252", X"0660", X"0133", X"0a73", X"081e",
                                                        X"06ff", X"00c5", X"1000", X"0116", X"038b", X"0ea1", X"030b", X"ff5d", X"0cd8", X"ffd4", X"0a61", X"0125", X"02da", X"05aa",
                                                        X"0e7a", X"023d", X"0b0f", X"0001", X"0cee", X"0319", X"0a0e", X"07df", X"06ae", X"fd84", X"0988", X"030b", X"0cd4", X"04a1",
                                                        X"04c8", X"076a", X"00a9", X"0323", X"0abc", X"02cb", X"02fb", X"019f", X"04c6", X"0c83", X"08a9", X"feb8", X"094a", X"fc70",
                                                        X"093f", X"061e", X"0838", X"08e7", X"06de", X"0124", X"0abc", X"04db", X"116c", X"ff3e", X"fff3", X"137c", X"05d9", X"fe34",
                                                        X"04f7", X"0142", X"0a74", X"03cf", X"fed9", X"0590", X"0520", X"feac", X"08dd", X"0368", X"1183", X"024f", X"010e", X"15f0",
                                                        X"05fa", X"fb7e", X"03bc", X"0553", X"0bfd", X"0949", X"0287", X"0698", X"0e02", X"09e6", X"0968", X"033f", X"11e1", X"0084",
                                                        X"02e6", X"0fc2", X"02b5", X"fba5", X"039b", X"0a23", X"0d96", X"015f", X"06c2", X"03a2", X"07d6", X"facd", X"0ae8", X"0267",
                                                        X"1a9e", X"fc64", X"fff7", X"10d4", X"0058", X"058c", X"09db", X"0e49", X"0df9", X"0228", X"0167", X"053e", X"091e", X"028b",
                                                        X"0b1e", X"017c", X"164d", X"fac8", X"0128", X"0ddb", X"ff4a", X"0130", X"0478", X"0e77", X"0b53", X"041b", X"00f6", X"0508",
                                                        X"fe5e", X"0671", X"0950", X"0103", X"1254", X"fd5c", X"ffd3", X"0eb2", X"fffb", X"01dd", X"ffde", X"0052", X"08b2", X"041a",
                                                        X"fec3", X"0831", X"0162", X"fa0b", X"0afe", X"fb3c", X"10ee", X"01c8", X"0822", X"13e9", X"ff41", X"feee", X"ff0e", X"fd39",
                                                        X"0d92", X"053b", X"036e", X"0230", X"f9d1", X"f8bf", X"0c4f", X"fdab", X"0a0f", X"01fe", X"0730", X"18d6", X"01fd", X"03db",
                                                        X"008b", X"fc78", X"0cef", X"03aa");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"03aa";
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
