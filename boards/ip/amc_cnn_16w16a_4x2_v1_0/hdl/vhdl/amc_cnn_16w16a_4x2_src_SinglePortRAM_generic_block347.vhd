-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block347.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block347
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage114/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block347 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block347;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block347 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"064d", X"f6c5", X"fc03", X"edfe", X"0720", X"fb15",
                                                        X"fcec", X"e88c", X"0a3f", X"0514", X"133b", X"166d", X"f65a", X"ecb5", X"03bd", X"f642", X"0675", X"fb2d", X"0537", X"eb75",
                                                        X"0759", X"fb2d", X"fc56", X"f612", X"040e", X"01ca", X"103b", X"09d0", X"fa91", X"f5d5", X"0050", X"faf4", X"0512", X"f3a5",
                                                        X"009e", X"f733", X"01f7", X"fe7b", X"06e2", X"f931", X"fa0c", X"0379", X"091b", X"1012", X"fd9c", X"ecb4", X"04b8", X"0248",
                                                        X"01df", X"fe47", X"0338", X"fd06", X"04c9", X"fea4", X"f7b2", X"fcf8", X"fb28", X"0161", X"018e", X"0620", X"f7cc", X"f849",
                                                        X"f82a", X"05f0", X"ff91", X"0980", X"f873", X"f9e2", X"069b", X"0021", X"f8f1", X"fe9f", X"046c", X"fd7d", X"fc80", X"0288",
                                                        X"00ac", X"fc47", X"033c", X"03e7", X"0257", X"fc3a", X"00bf", X"f8a7", X"fc63", X"fdb3", X"f637", X"06d7", X"08e0", X"0023",
                                                        X"f3df", X"065f", X"f235", X"083b", X"017f", X"005b", X"f4c0", X"fb56", X"feba", X"04be", X"f905", X"056b", X"fd1b", X"ff94",
                                                        X"fd20", X"028a", X"ea75", X"0692", X"0405", X"02ca", X"ff75", X"f842", X"fd20", X"fc66", X"02e0", X"011c", X"ffb7", X"036e",
                                                        X"022d", X"0482", X"0f84", X"fa72", X"f863", X"0080", X"03e0", X"f813", X"0179", X"fef6", X"fab7", X"fa2b", X"fdd6", X"0f08",
                                                        X"fd56", X"037d", X"0091", X"03c7", X"fe89", X"0107", X"f7f2", X"ffe2", X"fc19", X"071f", X"fc01", X"01cf", X"fd54", X"0025",
                                                        X"f9b4", X"0906", X"fc3c", X"ff64", X"fcd4", X"050c", X"fde5", X"ffcc", X"fb10", X"fd22", X"04d4", X"07e6", X"f74b", X"fb07",
                                                        X"f997", X"07ca", X"fff1", X"03e1", X"fd60", X"010e", X"f996", X"053c", X"fcf9", X"fe37", X"fe64", X"f9f5", X"fe00", X"01d9",
                                                        X"ff87", X"fd6d", X"fdcf", X"04ff", X"fadf", X"0a5d", X"018c", X"01be", X"05fc", X"0392", X"00d0", X"fead", X"01bb", X"f38b",
                                                        X"fe8b", X"ec1f", X"fc66", X"fd89", X"f982", X"02ab", X"fe6f", X"08db", X"ff04", X"028a", X"0a5f", X"fc88", X"009b", X"f9ac",
                                                        X"00af", X"f69d", X"04f1", X"e946", X"fad5", X"ffcc", X"fee8", X"fe10", X"fb58", X"0c40", X"ffe7", X"fe49", X"0439", X"fd4a",
                                                        X"0683", X"fdce", X"0434", X"f841", X"032a", X"f9ad", X"03b9", X"0253", X"040e", X"0076", X"fe12", X"0024", X"03c4", X"fd05",
                                                        X"0aac", X"fb1c", X"f2b9", X"fa25", X"0acf", X"f49a", X"fc59", X"f7da", X"ff0c", X"fcce", X"0002", X"01e7", X"01f6", X"00f9",
                                                        X"052d", X"fe4a", X"fb75", X"feb2", X"03e7", X"f51c", X"0632", X"f91c", X"fd6d", X"047e", X"fcb0", X"fa17", X"015f", X"04c2",
                                                        X"f632", X"0211", X"067a", X"fe1b", X"0046", X"fcb8", X"04fc", X"0024", X"0715", X"0561", X"0012", X"06c9", X"fd1e", X"fee7",
                                                        X"03f3", X"0511", X"01b0", X"feb8", X"fc5b", X"ffaa", X"0a9e", X"fe4d", X"03cc", X"0217", X"04c0", X"0596", X"fb37", X"06a1",
                                                        X"04e9", X"00fc", X"fd03", X"fc80", X"fdf2", X"f8c0", X"03c7", X"fbf3", X"fb29", X"fbb8", X"fb79", X"0a64", X"0525", X"097f",
                                                        X"feb4", X"0300", X"0177", X"ffa7", X"059f", X"0511", X"f910", X"f16c", X"0960", X"ff23", X"fa75", X"01e8", X"0705", X"0330",
                                                        X"f736", X"0c24", X"fc5d", X"ef18", X"ff0f", X"ff8d", X"0048", X"fd84", X"00cb", X"f7f7", X"ffb1", X"fcf3", X"f765", X"feca",
                                                        X"0495", X"0444", X"fe2c", X"042e", X"019a", X"f39e", X"fbb2", X"00ad", X"003f", X"04c2", X"f9c5", X"fd88", X"0240", X"00f3",
                                                        X"f9e1", X"04fe", X"0cf9", X"fe19", X"f239", X"0518", X"f3e6", X"08d5", X"02c9", X"0039", X"fecb", X"fe23", X"ff4e", X"088f",
                                                        X"0106", X"fd22", X"f7d0", X"06f0", X"f766", X"040a", X"edfd", X"fc5b", X"042b", X"f847", X"fcf1", X"07f7", X"faa6", X"fa3a",
                                                        X"0491", X"0d61", X"fdad", X"0350", X"0235", X"01d1", X"fb63", X"fb30", X"ec4f", X"000b", X"044d", X"fac0", X"f613", X"03d7",
                                                        X"fd11", X"04e3", X"f797", X"0cdc", X"044c", X"fdca", X"ff6f", X"0784", X"f638", X"fafa", X"f802", X"f8cb", X"fb85", X"00a6",
                                                        X"f905", X"0440", X"fe4e", X"057f", X"ff2b", X"08f4", X"03e7", X"ffc6", X"ee83", X"0c22", X"f966", X"fab3", X"0241", X"fbbf",
                                                        X"0501", X"11ba", X"f529", X"004b", X"00cb", X"fe75", X"f70c", X"09fe", X"fd03", X"06d6", X"fdd0", X"06aa", X"015b", X"02a9",
                                                        X"fc71", X"fb40", X"0037", X"fa3d", X"fdcf", X"fcf4", X"0404", X"0717", X"fdbf", X"0705", X"0077", X"067b", X"0871", X"01da",
                                                        X"fd9a", X"01a4", X"030f", X"fc3a", X"05f2", X"0258", X"0a46", X"fd53", X"0714", X"f8f1", X"01f3", X"fcfa", X"fb5b", X"0497",
                                                        X"014d", X"fb12", X"f876", X"0326", X"0209", X"fa87", X"0753", X"0101", X"04f2", X"fefc", X"063c", X"0037", X"faab", X"ff3e",
                                                        X"fda3", X"00f0", X"0070", X"fe16", X"f930", X"ff52", X"0276", X"f366", X"00f1", X"0ee5", X"f7a3", X"ff85", X"06bc", X"fa23",
                                                        X"ff61", X"0323", X"fe78", X"018d", X"ff7f", X"fb2a", X"01f8", X"ffae", X"07ed", X"f5b4", X"01b8", X"fa34", X"fb9e", X"fde0",
                                                        X"fec6", X"fcc2", X"fa45", X"fb76", X"0038", X"f72c", X"0849", X"f1d8", X"ff85", X"030c", X"064d", X"fdec", X"00d6", X"eb0a",
                                                        X"0400", X"00fd", X"ff9f", X"fd10", X"f4d0", X"053e", X"02b0", X"fd16", X"016d", X"fbf7", X"f0c2", X"07fd", X"0b2b", X"0729",
                                                        X"fa6b", X"f69f", X"ff7d", X"fc8c", X"02e8", X"00b1", X"fc5d", X"fd23", X"0077", X"01e7", X"190d", X"f7e6", X"f983", X"0762",
                                                        X"06c1", X"0a1c", X"fcf8", X"f521", X"032d", X"02f5", X"fefd", X"fa77", X"fe18", X"f6a5", X"fc17", X"feee", X"151c", X"fd32",
                                                        X"0776", X"0a92", X"0447", X"0d40", X"fdfd", X"ef62", X"0c5b", X"02e3", X"fff5", X"ff54", X"ffeb", X"fa86", X"0070", X"fe66",
                                                        X"00bd", X"028c", X"ff64", X"047c", X"001e", X"0197", X"f902", X"fcf7", X"fb93", X"0340", X"fdb1", X"01f9", X"f4ae", X"f6bb",
                                                        X"03c5", X"020d", X"f538", X"052e", X"f86f", X"05e3", X"fc48", X"0691", X"fdc6", X"eb2d", X"face", X"00f7", X"ff23", X"01f1",
                                                        X"f8b7", X"03d1", X"02c8", X"ffcb", X"f93d", X"0774", X"fff1", X"04b8", X"f26d", X"039c", X"01b1", X"0158", X"fd70", X"fc96",
                                                        X"f93b", X"0332", X"fffa", X"fdbd", X"04ba", X"02c4", X"ebf4", X"0183", X"0390", X"fe48", X"ec85", X"0250", X"fc19", X"fe58",
                                                        X"ff65", X"01ef", X"00d9", X"05ed", X"feca", X"03d8", X"00c1", X"0219", X"f68e", X"056c", X"07cd", X"00d7", X"f448", X"034b",
                                                        X"fd3d", X"05fb", X"fe55", X"fe70", X"fdb8", X"0a20", X"ff50", X"099a", X"003a", X"fd44", X"fdb7", X"091e", X"08d9", X"f960",
                                                        X"f8c7", X"013e", X"f5d4", X"025b", X"fbc4", X"ff8a", X"fffc", X"075f", X"fb8a", X"033c", X"0152", X"0159", X"f828", X"0490",
                                                        X"fc51", X"ff46", X"f240", X"048f", X"f4c2", X"f3f6", X"f803", X"05db", X"0177", X"ff9d", X"fdf8", X"0c41", X"fd4c", X"00e7",
                                                        X"f485", X"ff60", X"02ef", X"fb9e", X"fc05", X"ffb2", X"0250", X"f95b", X"fd6f", X"07d5", X"fed1", X"ffc0", X"fff9", X"13e1",
                                                        X"f60d", X"013b", X"fb38", X"031f", X"071a", X"facf", X"ff47", X"ee0a", X"01a3", X"f3dc", X"fd7d", X"fcb8", X"070a", X"0723",
                                                        X"02b6", X"0ce0", X"f7da", X"01a8", X"1032", X"f934", X"0125", X"f988", X"fc71", X"f2db", X"0072", X"fc51", X"fdf1", X"fb80",
                                                        X"0bd6", X"ffe1", X"0126", X"0949", X"05da", X"ff5a", X"05fd", X"f4ff", X"06b1", X"ff96", X"0a26", X"f4c0", X"0483", X"f01c",
                                                        X"01cf", X"01f3", X"07dc", X"00d8", X"f7de", X"0a57", X"fe11", X"0301", X"f767", X"f665", X"035f", X"fd14", X"0c61", X"02e6",
                                                        X"fb9d", X"fa3c", X"02c6", X"fc0e", X"05ac", X"fd2b", X"f845", X"0874", X"01e7", X"fdab", X"09be", X"f72f", X"00ca", X"01c5",
                                                        X"1003", X"fb5d", X"fb92", X"025e", X"01b2", X"fe1a", X"01d8", X"05ac", X"fc3e", X"0606", X"ffec", X"fd87", X"1430", X"f765",
                                                        X"fb3a", X"0547", X"0816", X"fefa", X"f890", X"effc", X"0504", X"fcda", X"fd45", X"fe92", X"fff8", X"fc13", X"0746", X"f882",
                                                        X"09a1", X"fceb", X"f3ca", X"02a1", X"07bc", X"048f", X"f8bd", X"ef74", X"fb10", X"ff69", X"fc14", X"056d", X"fbb4", X"f479",
                                                        X"09b7", X"fe90", X"fffd", X"f88b", X"f387", X"01af", X"fedc", X"0ce9", X"086a", X"e87b", X"fc58", X"fede", X"03e2", X"f85b",
                                                        X"ff0f", X"f81a", X"01b2", X"0099", X"f926", X"fced", X"00f9", X"009e", X"fc81", X"0640", X"ff69", X"f013", X"ffed", X"024f",
                                                        X"00c2", X"f421", X"ff78", X"fe26", X"ff74", X"02b6", X"fcec", X"07c0", X"01b4", X"0b0e", X"f84a", X"03be", X"0758", X"e7fa",
                                                        X"0377", X"ff41", X"00ae", X"f94e", X"fe10", X"0183", X"fd44", X"0122", X"0fba", X"0814", X"07d8", X"0668", X"fc29", X"087e",
                                                        X"03be", X"f8d1", X"04ca", X"0010", X"f71e", X"fe73", X"03cc", X"fe4c", X"fe40", X"fdb2", X"04ab", X"0538", X"f24f", X"0110",
                                                        X"f12a", X"0841", X"fff4", X"f7e7", X"fa7b", X"010d", X"fbee", X"058d", X"fb3b", X"0007", X"ff65", X"fdef", X"f6ae", X"05b2",
                                                        X"faf5", X"00eb", X"f18f", X"0374", X"fd1c", X"0339", X"fec8", X"0476", X"0070", X"fdb8", X"ff87", X"0223", X"0146", X"004b",
                                                        X"05c1", X"0805", X"ff55", X"fb5f", X"f75c", X"fe77", X"f99c", X"0419", X"f864", X"025c", X"0349", X"007f", X"fc33", X"03d9",
                                                        X"feab", X"0341", X"f534", X"0ba9", X"fb25", X"fdde", X"eedf", X"f6c2", X"fb2d", X"0424", X"f85f", X"ff4b", X"05bb", X"0583",
                                                        X"00a7", X"0da9", X"0386", X"05df", X"ed03", X"00ff", X"fce0", X"f79e", X"fc31", X"f480", X"fc72", X"f359", X"ffec", X"fb90",
                                                        X"0730", X"04f7", X"fe99", X"05bf", X"02f5", X"0234", X"f942", X"febe", X"0677", X"fdc4", X"03f0", X"f1db", X"fb2e", X"02eb",
                                                        X"ffcb", X"0021", X"05a2", X"029b", X"052b", X"037a", X"fc45", X"ff88", X"10c4", X"fde8", X"0609", X"f92f", X"0af5", X"f617",
                                                        X"0182", X"f49f", X"fdc5", X"fd49", X"01c3", X"084b", X"fade", X"03d9", X"0514", X"fcfe", X"0084", X"f440", X"f2ee", X"0179",
                                                        X"10bf", X"fb20", X"0617", X"fc51", X"fa55", X"029e", X"fdac", X"f886", X"02b0", X"05ff", X"fb92", X"fe16", X"06ce", X"f2dd",
                                                        X"0776", X"faeb", X"0d2a", X"018a", X"f4a6", X"f564", X"035f", X"fc5f", X"fcba", X"fa78", X"0066", X"fc84", X"003f", X"fc09",
                                                        X"05cd", X"ebb9", X"01ef", X"f8fb", X"0c17", X"fa61", X"fde2", X"f446", X"05e0", X"0265", X"fd74", X"f527", X"0692", X"fb11",
                                                        X"0323", X"fd20", X"f81a", X"e531", X"ffbb", X"f893", X"0786", X"0133", X"fd73", X"022f", X"fc3a", X"0050", X"fe91", X"f907",
                                                        X"fd12", X"00be", X"fc4d", X"00e7", X"05cb", X"fad2", X"fd80", X"021c", X"0a4f", X"01b8", X"06f1", X"fd29", X"0318", X"03b8",
                                                        X"ff17", X"fd5e", X"f940", X"f7a7", X"fd2d", X"fd56", X"f864", X"f450", X"fd14", X"07e3", X"02d9", X"03d1", X"fff8", X"f273",
                                                        X"04e1", X"031b", X"fde5", X"01bc", X"f9ef", X"f8f0", X"ff39", X"024a", X"00ff", X"0363", X"fe9c", X"0da1", X"fe0b", X"108e",
                                                        X"fab1", X"ffda", X"038b", X"048f", X"ff2d", X"ff45", X"f959", X"01fe", X"ffdf", X"ff10", X"0f50", X"0b71", X"ff0f", X"02bd",
                                                        X"fb55", X"0bf8", X"f857", X"f53a", X"0008", X"ffd3", X"fad1", X"fd66", X"f4ab", X"f71d", X"fdbb", X"fc6c", X"047f", X"0743",
                                                        X"febd", X"025a", X"f935", X"07eb", X"083c", X"043e", X"febf", X"0390", X"fca5", X"0292", X"f61e", X"f7e8", X"fcab", X"0138",
                                                        X"f8dd", X"0d05", X"025e", X"0258", X"f4be", X"028d", X"0ab6", X"f6fa", X"001d", X"ffd7", X"fdf3", X"f88c", X"ff36", X"01d6",
                                                        X"ffb6", X"0149", X"05d2", X"0b62", X"ffde", X"fccc", X"f396", X"fba7", X"053b", X"f8b1", X"f6fa", X"008f", X"ff8b", X"fb94",
                                                        X"fc3e", X"0b33", X"fd41", X"fdad", X"f9e1", X"03a7", X"fff4", X"fa8a", X"f533", X"fe95", X"0588", X"f867", X"fa4e", X"0300",
                                                        X"fa94", X"f8cd", X"fb07", X"0b2d", X"fc89", X"fc1e", X"ee4b", X"05e8", X"0453", X"fa0e", X"f0df", X"f917", X"fd11", X"0522",
                                                        X"fdcb", X"fc14", X"0526", X"fc3d", X"fec4", X"0a46", X"fee4", X"fdec", X"022a", X"feb6", X"fdf5", X"f898", X"f626", X"ecf4",
                                                        X"05d9", X"0ea2", X"f782", X"0043", X"07bd", X"fb46", X"f995", X"0727", X"fae1", X"ffaf", X"098c", X"fda5", X"fe66", X"fa7b",
                                                        X"fe2b", X"fe73", X"0218", X"0983", X"fcec", X"fc5a", X"0041", X"ff2e", X"f476", X"0704", X"fb4d", X"01c6", X"fe55", X"008f",
                                                        X"007a", X"f7a9", X"0778", X"0285", X"0544", X"fc6d", X"fef2", X"fd16", X"05d2", X"06cf", X"fcea", X"0717", X"0132", X"03a8",
                                                        X"f817", X"f2d5", X"04af", X"fa2c", X"03b6", X"fac8", X"01eb", X"05c9", X"fefd", X"0236", X"04c5", X"0351", X"0020", X"01df",
                                                        X"089f", X"0401", X"0012", X"faaf", X"ff2e", X"fec1", X"067a", X"fff6", X"fa83", X"fd6c", X"035d", X"fb97", X"044a", X"f99a",
                                                        X"03fc", X"ffcd", X"023b", X"fe34", X"0797", X"f5e6", X"fcb5", X"02d5", X"07a3", X"fb59", X"0054", X"ff53", X"020b", X"f9cf",
                                                        X"00f5", X"0346", X"0482", X"066b", X"ffc1", X"ff0e", X"ffe7", X"f15a", X"f5a1", X"0028", X"0426", X"013d", X"fc58", X"edfd",
                                                        X"05f3", X"01cc", X"0436", X"fa49", X"0020", X"0100", X"0406", X"fc3f", X"0857", X"fa23", X"fc37", X"06b6", X"0943", X"099a",
                                                        X"0d8f", X"ff1b", X"01b2", X"fc7a", X"05ea", X"075a", X"0325", X"f9f1", X"0a12", X"fe97", X"07e3", X"0383", X"052e", X"05d8",
                                                        X"01b3", X"0bcf", X"fe79", X"f75a", X"fd6e", X"fea9", X"0574", X"f66c", X"ff50", X"f08b", X"0432", X"ff62", X"f78a", X"f96e",
                                                        X"0161", X"0717", X"0240", X"0050", X"fa21", X"0098", X"044c", X"0190", X"0887", X"f817", X"0246", X"faee", X"fdaa", X"febb",
                                                        X"00aa", X"fe1c", X"fa33", X"05b4", X"f50f", X"fff9", X"04ef", X"05a3", X"0391", X"0534", X"01f9", X"fe2d", X"00bb", X"f726",
                                                        X"fdb5", X"fd7e", X"fd87", X"00d5", X"065b", X"fc57", X"f865", X"0454", X"01b8", X"feff", X"fd2f", X"fb84", X"f746", X"fa82",
                                                        X"fdb1", X"0294", X"0345", X"fe36", X"0b8b", X"016d", X"011a", X"fb84", X"f319", X"0a3b", X"fc7b", X"ffdf", X"fb18", X"f636",
                                                        X"f55e", X"040e", X"00ef", X"0c3c", X"061f", X"00ce", X"fec3", X"03aa", X"0256", X"f768", X"fb7c", X"0459", X"fdf7", X"0da4",
                                                        X"fd7c", X"fef8", X"014f", X"0336", X"ff08", X"004d", X"0822", X"fd8d", X"fd80", X"07f0", X"f703", X"fd10", X"fcc9", X"f6a1",
                                                        X"007b", X"11f4", X"ff24", X"05e0", X"04ce", X"0439", X"00b9", X"0f01", X"014c", X"fdc1", X"0480", X"0546", X"f73d", X"fff2",
                                                        X"f6f7", X"fb3a", X"fd9f", X"0746", X"f908", X"02ff", X"04f7", X"0094", X"ff5a", X"02cc", X"08df", X"fe06", X"f84f", X"03af",
                                                        X"fe3e", X"035a", X"f644", X"f845", X"037d", X"115b", X"f9ff", X"03e3", X"00fb", X"fa1b", X"fec5", X"0cee", X"fed8", X"fcbf",
                                                        X"ec90", X"fbf4", X"068f", X"f8e3", X"fc17", X"f700", X"057c", X"0c05", X"019b", X"fa4f", X"f9cb", X"fdd3", X"f968", X"0336",
                                                        X"f545", X"00e4", X"f810", X"f99e", X"005a", X"f254", X"03ab", X"f0fc", X"060f", X"fc07", X"ffc3", X"facc", X"0421", X"0a05",
                                                        X"0200", X"0a6a", X"fe12", X"030d", X"0270", X"f711", X"07ae", X"fd96", X"0919", X"f941", X"0219", X"02a6", X"0439", X"f93f",
                                                        X"06e3", X"fb49", X"fa7c", X"04e1", X"000a", X"fccb", X"ed1c", X"f255", X"fd30", X"fb2f", X"0c71", X"f186", X"fc00", X"0b52",
                                                        X"fe10", X"f95b", X"0b55", X"016b", X"0251", X"fc99", X"081b", X"0105", X"fdf9", X"f9c7", X"0657", X"ffda", X"0e57", X"ff8d",
                                                        X"f989", X"0bcd", X"0222", X"fa6f", X"03ca", X"f839", X"037b", X"020a", X"fed6", X"ffd8", X"fb4b", X"f1b6", X"08f6", X"fc4e",
                                                        X"0a16", X"086d", X"f7b2", X"039c", X"0362", X"fd40", X"0395", X"fe56", X"00a9", X"f5ed", X"047d", X"00af", X"f87c", X"f77b",
                                                        X"040e", X"fd21", X"0273", X"0797", X"0915", X"fae1", X"03c4", X"fe71", X"02e7", X"f3b0", X"f9a4", X"ee6b", X"fca9", X"0376",
                                                        X"fe31", X"f282", X"0508", X"067c", X"02b8", X"08f4", X"0320", X"0323", X"03b0", X"00f6", X"fe39", X"fdf4", X"fd1b", X"ffa7",
                                                        X"004e", X"00f1", X"f2a6", X"0123", X"04f4", X"02aa", X"0456", X"0a44", X"fc67", X"facb", X"01fa", X"02c8", X"fece", X"fd2f",
                                                        X"0218", X"fed2", X"f94b", X"ff5c", X"eb8a", X"04bd", X"fdbd", X"026c", X"fb1c", X"0304", X"fcec", X"f1e4", X"0210", X"08e6",
                                                        X"fa1c", X"fcb8", X"fef9", X"f996", X"fd4e", X"fedf", X"fe95", X"061e", X"fdf9", X"02f5", X"f0a1", X"0b1b", X"ff1f", X"f403",
                                                        X"fb1f", X"02cb", X"fdda", X"fdf1", X"ff14", X"01c8", X"fe86", X"0212", X"06d2", X"0a57", X"01ad", X"0088", X"f8c9", X"0622",
                                                        X"06bd", X"f9aa", X"02ff", X"01a3", X"0247", X"fcfd", X"fdd2", X"fdef", X"ffe3", X"051f", X"fe50", X"0d16", X"fc83", X"fe07",
                                                        X"f4a1", X"ff77", X"07be", X"ee59", X"faa7", X"0376", X"fb75", X"ff8d", X"00b9", X"0362", X"fe5f", X"0196", X"f91e", X"0a30",
                                                        X"0195", X"f9d6", X"f8d1", X"fec9", X"fc33", X"fe9a", X"f65d", X"fd63", X"fc6b", X"019f", X"fcd8", X"0751", X"0779", X"01f7",
                                                        X"fa71", X"09f9", X"fde3", X"fc91", X"006f", X"fa19", X"009e", X"023d", X"fdb4", X"0333", X"0741", X"0cb2", X"00d1", X"11d6",
                                                        X"0217", X"0388", X"005a", X"03eb", X"0173", X"024a", X"004e", X"fdc1", X"0629", X"f55f", X"029c", X"ff5b", X"0411", X"0827",
                                                        X"0080", X"037b", X"ffcd", X"02a6", X"fe96", X"fdbe", X"ff0e", X"ff99", X"fff0", X"f192", X"0058", X"fe25", X"fe60", X"01ef",
                                                        X"059c", X"f807", X"07e4", X"06fc", X"fbe4", X"0228", X"f8f0", X"fae6", X"03bb", X"fcd6", X"0953", X"f632", X"febd", X"fe46",
                                                        X"01de", X"0100", X"0967", X"ff10", X"0296", X"0c07", X"fb41", X"ff0b", X"0765", X"f436", X"f757", X"f59b", X"08d1", X"f86d",
                                                        X"f853", X"03d1", X"0010", X"ffbe", X"012c", X"fc24", X"0195", X"fba6", X"0311", X"fd25", X"01cd", X"f6a0", X"ff0c", X"f7d9",
                                                        X"0949", X"f4f4", X"01fd", X"f62f", X"fd02", X"f519", X"ffb0", X"f603", X"0365", X"ffb5", X"0202", X"ffbe", X"f71a", X"f363",
                                                        X"facd", X"f936", X"0c8c", X"0221", X"f2c0", X"f108", X"03b0", X"fbd8", X"08a3", X"feb6", X"fe99", X"01f8", X"087d", X"ff3b",
                                                        X"0a96", X"f78a", X"04c1", X"006f", X"0b5d", X"011f", X"0499", X"fc2e", X"ffb4", X"ffe2", X"0114", X"fdfd", X"fffd", X"fcfe",
                                                        X"00e7", X"fffa", X"04f5", X"fa28", X"026c", X"fc36", X"02a6", X"084b", X"005e", X"013b", X"fc29", X"fc27", X"00bb", X"f7c5",
                                                        X"00a6", X"fe6b", X"ffbf", X"00ed", X"05c2", X"f68f", X"0204", X"0b8b", X"0299", X"062c", X"01cb", X"f9cf", X"0142", X"00b0",
                                                        X"fdfb", X"03db", X"fb50", X"f74e", X"0532", X"fe35", X"04af", X"0082", X"07a1", X"07aa", X"fc31", X"073d", X"027c", X"ef9b",
                                                        X"05c2", X"ff63", X"0593", X"ffd5", X"ff51", X"f70b", X"fe6a", X"fd54", X"f911", X"ffd7", X"fcbc", X"078a", X"f1ef", X"052d",
                                                        X"f825", X"ec06", X"fcbc", X"00f4", X"ff43", X"0326", X"f691", X"fac3", X"0041", X"ffa1", X"f63a", X"0519", X"ff2e", X"0608",
                                                        X"e742", X"0648", X"0458", X"fac6", X"fa9f", X"fd58", X"044a", X"025d", X"ffe0", X"f3cc", X"03a9", X"00ef", X"ff0b", X"0888",
                                                        X"f977", X"fe91", X"e91b", X"01ff", X"01eb", X"0a70", X"fdf0", X"ffbb", X"f846", X"013f", X"fd34", X"052e", X"0031", X"02ab",
                                                        X"f9e3", X"03bd", X"fb0e", X"f9f8", X"f225", X"036f", X"0084", X"faa3", X"fdd2", X"03b2", X"f7ba", X"fe31", X"04ca", X"01af",
                                                        X"ff17", X"01fd", X"faed", X"0543", X"fe6c", X"f8ec", X"f650", X"ff60", X"0738", X"f9a8", X"fc5a", X"047a", X"fd97", X"0505",
                                                        X"0253", X"0a6f", X"f4d5", X"015b", X"fac1", X"0ac0", X"0644", X"0206", X"f8c9", X"fffd", X"0317", X"0651", X"fa88", X"ffb5",
                                                        X"0091", X"052b", X"f91c", X"00e0", X"03ba", X"00f9", X"fe5a", X"039b", X"fa20", X"fc24", X"fea2", X"fcc3", X"02e2", X"ff79",
                                                        X"fb8f", X"fd14", X"0147", X"f9f9", X"02c0", X"169e", X"f7e5", X"fceb", X"0c84", X"f6a7", X"fe05", X"f18c", X"0ae3", X"ecae",
                                                        X"ff66", X"f4e8", X"01bc", X"fcaa");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fcaa";
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
