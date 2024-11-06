-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block438.vhd
-- Created: 2024-11-04 16:44:20
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block438
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage82/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block438 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block438;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block438 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0291", X"086d", X"0698", X"f6dd", X"feea", X"0067",
                                                        X"0cde", X"0734", X"06a2", X"04cd", X"0a6c", X"fa8d", X"f9e0", X"f6a2", X"012b", X"0a51", X"0172", X"05be", X"008e", X"fbff",
                                                        X"fcd3", X"fd16", X"05e3", X"fda1", X"fdd3", X"0236", X"0613", X"f7af", X"fa47", X"ffe9", X"ff7b", X"0378", X"fa2e", X"0b47",
                                                        X"045e", X"f48b", X"054b", X"fb09", X"03d4", X"026a", X"05a2", X"fe04", X"02a7", X"f7e8", X"fee8", X"fa48", X"fddd", X"03f5",
                                                        X"f942", X"0316", X"026e", X"f29f", X"0319", X"fde4", X"08c3", X"f9f5", X"074a", X"fec5", X"03cf", X"f6fa", X"fdf6", X"008a",
                                                        X"fea5", X"051b", X"ff15", X"02f8", X"0006", X"f78d", X"00ef", X"0077", X"0a1f", X"fec6", X"07c8", X"fdaa", X"ff7e", X"fa55",
                                                        X"fd77", X"f831", X"fb50", X"01ce", X"fe9a", X"06dd", X"011c", X"05d8", X"fab8", X"ff65", X"0cde", X"fcee", X"09d0", X"fcc3",
                                                        X"01b3", X"f724", X"f8dc", X"fbe4", X"07ad", X"035a", X"01ab", X"0227", X"fae5", X"f6ad", X"fd54", X"fe7c", X"0604", X"01be",
                                                        X"025f", X"0517", X"0279", X"f656", X"fe54", X"f8f2", X"0498", X"0503", X"0552", X"01c1", X"fed1", X"f78a", X"0098", X"0111",
                                                        X"fe8c", X"0088", X"066f", X"0426", X"0196", X"fbeb", X"fa20", X"f22c", X"03eb", X"0517", X"0747", X"0b48", X"fd11", X"0273",
                                                        X"0465", X"02ea", X"0a83", X"fed4", X"01a9", X"00c1", X"011e", X"f29f", X"ff62", X"fe7d", X"0483", X"04d3", X"0869", X"0b8c",
                                                        X"01b3", X"fb71", X"020e", X"001d", X"08f2", X"ff31", X"078b", X"02e5", X"0540", X"f7c5", X"f861", X"f7f2", X"0167", X"0603",
                                                        X"050f", X"096e", X"0259", X"fd05", X"026b", X"02f3", X"0ab1", X"ffaf", X"0b7c", X"04c9", X"050a", X"f04a", X"014d", X"fa56",
                                                        X"0469", X"01a5", X"00a1", X"0171", X"fe79", X"f372", X"fb36", X"ff9e", X"0ce8", X"ff31", X"05af", X"00b0", X"0788", X"f3e5",
                                                        X"f9a2", X"f771", X"0746", X"fe19", X"0329", X"04fd", X"0291", X"f885", X"fe83", X"0135", X"06c3", X"fb02", X"0578", X"0116",
                                                        X"00b6", X"00d3", X"fca3", X"faad", X"07ac", X"fde9", X"0092", X"03f6", X"03f0", X"f102", X"0097", X"0276", X"05ab", X"ffb0",
                                                        X"01d7", X"fc33", X"00c6", X"fb3b", X"efec", X"021e", X"0266", X"fcc7", X"ff2f", X"0134", X"06b6", X"f13f", X"fc2a", X"0188",
                                                        X"0d77", X"fc78", X"ffc5", X"fd6c", X"fe22", X"f8e6", X"fa02", X"f8fe", X"0125", X"fb16", X"02d8", X"03fb", X"fb9f", X"fdf9",
                                                        X"ffac", X"fcd6", X"0347", X"fa2e", X"06dc", X"fda3", X"ff06", X"f97a", X"fae8", X"f9a9", X"fc0f", X"0336", X"067e", X"03dc",
                                                        X"fdd3", X"fae8", X"fba6", X"fd90", X"068a", X"f8b6", X"060e", X"ffba", X"fd99", X"f422", X"fcc3", X"f424", X"022a", X"01b2",
                                                        X"0504", X"0450", X"fb7b", X"fdc9", X"02b4", X"01cd", X"0345", X"f93b", X"02bb", X"ffaa", X"04c5", X"f31f", X"fdef", X"0083",
                                                        X"018e", X"03a3", X"0a63", X"0337", X"fbd5", X"f985", X"0669", X"01f5", X"0faf", X"fba2", X"0118", X"0139", X"064a", X"f947",
                                                        X"fd87", X"fa31", X"fed3", X"0403", X"07de", X"02d0", X"0701", X"f31f", X"00f3", X"ffe9", X"08c7", X"fe10", X"05c2", X"00c9",
                                                        X"02e9", X"f5cf", X"feb1", X"fb64", X"fdbf", X"0672", X"0430", X"061f", X"05a4", X"f653", X"fe41", X"002a", X"083e", X"025e",
                                                        X"0872", X"fcaa", X"ff09", X"0025", X"fb1f", X"fd8e", X"ff6a", X"04ae", X"ff5c", X"06da", X"0351", X"f61e", X"009f", X"f8ea",
                                                        X"088e", X"ff21", X"02ee", X"fc08", X"fddf", X"0095", X"fdbf", X"f69c", X"fa7c", X"012c", X"00ee", X"0310", X"0031", X"fda1",
                                                        X"00a5", X"fe3f", X"07d0", X"fbb3", X"016e", X"fa83", X"fd4c", X"f4f4", X"f92d", X"01dc", X"f93a", X"0440", X"feae", X"0adf",
                                                        X"ff57", X"f5a9", X"f94c", X"fde5", X"07f1", X"04b4", X"001b", X"ff86", X"fddd", X"fb22", X"fa0a", X"eb6a", X"fbf1", X"0309",
                                                        X"ff9d", X"fecf", X"fdcd", X"f6ef", X"06aa", X"fc23", X"fe39", X"01a1", X"ffe7", X"01fe", X"fdf1", X"f782", X"01c4", X"fca3",
                                                        X"0205", X"045c", X"01e0", X"053e", X"faeb", X"fa20", X"0253", X"01b9", X"fc88", X"0341", X"febd", X"fdc9", X"ffd5", X"f6c9",
                                                        X"fd42", X"fdcd", X"0158", X"0066", X"06c2", X"0613", X"f897", X"f077", X"06dc", X"ffe3", X"0329", X"03ed", X"ff9d", X"029d",
                                                        X"031d", X"f994", X"0141", X"06d2", X"fa53", X"05b9", X"01ec", X"0143", X"0522", X"f936", X"fee9", X"feca", X"07e0", X"fb2f",
                                                        X"03b0", X"0318", X"fb9e", X"f51e", X"00c8", X"fc93", X"0186", X"01f7", X"ff76", X"fe15", X"04e9", X"fead", X"00d7", X"fee4",
                                                        X"0c17", X"fef3", X"fca6", X"0197", X"002e", X"fbab", X"f8dc", X"fb9a", X"fdbd", X"028c", X"fc64", X"ffc6", X"0683", X"fbf8",
                                                        X"fc31", X"fddb", X"0692", X"f9f7", X"0402", X"f99f", X"0103", X"036f", X"ffc0", X"f9c7", X"fdf5", X"0213", X"ffec", X"02ca",
                                                        X"0344", X"fe8e", X"fe5d", X"0067", X"03ab", X"fdfe", X"01af", X"015a", X"ffa7", X"f39a", X"f83e", X"fca8", X"fe2d", X"05ab",
                                                        X"033f", X"0334", X"fbdc", X"fccd", X"fb74", X"fed0", X"07c0", X"fbee", X"010c", X"0196", X"fa3a", X"fda3", X"f9b3", X"ff75",
                                                        X"fdba", X"015b", X"064e", X"00ab", X"0678", X"fabf", X"fdc6", X"ff27", X"0956", X"fe93", X"ff90", X"0003", X"0249", X"f80b",
                                                        X"f9e9", X"02e9", X"0009", X"019d", X"0279", X"0368", X"fd20", X"f65e", X"fe96", X"0142", X"07f3", X"fd0f", X"056c", X"fea9",
                                                        X"00f7", X"0380", X"f6d4", X"0478", X"fe86", X"ff41", X"04a5", X"07f9", X"fda4", X"fcd6", X"019e", X"052d", X"0503", X"ffd4",
                                                        X"0194", X"ff40", X"01bc", X"fa78", X"ff35", X"0114", X"fe87", X"fe27", X"01e8", X"071f", X"0263", X"f976", X"05b2", X"03c7",
                                                        X"0cdc", X"02c7", X"0607", X"00c2", X"054e", X"f3e9", X"f8bd", X"fb74", X"fe9a", X"0296", X"0293", X"05fe", X"0174", X"f847",
                                                        X"02f5", X"00d0", X"03d4", X"fda4", X"fff0", X"030a", X"0270", X"f8ac", X"f3a8", X"008b", X"fd87", X"05d6", X"0153", X"011c",
                                                        X"04ec", X"ff39", X"fe31", X"0197", X"0a0f", X"006d", X"0aa2", X"fcad", X"fc7b", X"f449", X"f6c0", X"fc71", X"ff9a", X"0239",
                                                        X"0164", X"0392", X"02cb", X"f712", X"00de", X"fe9e", X"0e6f", X"ff91", X"00f7", X"ffcf", X"fe82", X"032f", X"fa3d", X"ef29",
                                                        X"fe0f", X"0091", X"fd6a", X"07df", X"00a9", X"f28f", X"fa4c", X"0188", X"ffd2", X"fb94", X"0309", X"0303", X"0194", X"02d2",
                                                        X"f92c", X"f4ba", X"02d4", X"00d1", X"ffe1", X"050f", X"fcea", X"fa22", X"fbbc", X"03a7", X"fc4e", X"05db", X"0a14", X"05e6",
                                                        X"012f", X"f9db", X"fd8c", X"0389", X"01b8", X"035c", X"01d8", X"069d", X"01a6", X"f979", X"01ef", X"058b", X"09f8", X"0452",
                                                        X"055f", X"04c1", X"0601", X"f890", X"f58d", X"0553", X"00e1", X"0107", X"02fb", X"04ce", X"036e", X"006e", X"0520", X"ffd8",
                                                        X"0c84", X"010a", X"0271", X"047a", X"06b7", X"eebf", X"f947", X"0092", X"fc60", X"0482", X"0105", X"0b68", X"08e5", X"f537",
                                                        X"081f", X"007a", X"0b09", X"078e", X"05b9", X"0082", X"0274", X"fadb", X"f806", X"f8d9", X"ff23", X"0525", X"02e1", X"0859",
                                                        X"0253", X"f02e", X"ffef", X"01a2", X"0ece", X"0029", X"043a", X"fff6", X"ffce", X"fb20", X"fa13", X"fc59", X"fd9e", X"00c3",
                                                        X"ffd4", X"0422", X"fec8", X"f308", X"feca", X"021a", X"1095", X"01a5", X"02d9", X"fe91", X"025f", X"fe45", X"ff15", X"f331",
                                                        X"02ea", X"0028", X"016b", X"04ae", X"fcac", X"fb94", X"fedc", X"0233", X"02f5", X"01dd", X"032a", X"0153", X"0511", X"f6aa",
                                                        X"fde9", X"fb4d", X"fd5e", X"0583", X"06e7", X"0bc4", X"ff84", X"f73b", X"ffdf", X"01c8", X"0783", X"046e", X"0ae2", X"0692",
                                                        X"035c", X"f54c", X"fb39", X"00d6", X"0450", X"02c5", X"03b2", X"098b", X"fae4", X"f6e7", X"fe7c", X"0342", X"0a0e", X"044a",
                                                        X"006a", X"0a4f", X"fe34", X"f76b", X"0052", X"0183", X"0081", X"032e", X"0528", X"08f3", X"0165", X"fdc2", X"fd8a", X"0562",
                                                        X"042d", X"0871", X"04cd", X"0859", X"06d5", X"f1b5", X"f942", X"fb69", X"0389", X"0896", X"044e", X"114f", X"0045", X"f96d",
                                                        X"020e", X"03a4", X"0a7c", X"073e", X"024e", X"0353", X"0772", X"f2de", X"fe52", X"fac5", X"05c1", X"04fa", X"03a9", X"08c8",
                                                        X"08fa", X"fe33", X"0217", X"fe19", X"04f4", X"0221", X"01d5", X"0058", X"062a", X"f2c4", X"0157", X"faa2", X"00c5", X"040e",
                                                        X"0252", X"0429", X"034b", X"f84e", X"0161", X"fe7d", X"061a", X"0244", X"05f5", X"0063", X"06f9", X"fd04", X"f81f", X"fc2e",
                                                        X"ffe6", X"0047", X"0109", X"0321", X"0255", X"f363", X"0165", X"0066", X"feb8", X"ff10", X"00da", X"ff66", X"00b4", X"ff07",
                                                        X"fc8f", X"fe68", X"fb3b", X"ffcb", X"fe6a", X"0c1c", X"0172", X"f65d", X"fcb8", X"fd0b", X"0bd8", X"00ab", X"0133", X"0194",
                                                        X"ff05", X"fd9e", X"004b", X"f677", X"0007", X"02cf", X"02bc", X"0331", X"fa3a", X"f0ea", X"fe92", X"ffdf", X"0162", X"0057",
                                                        X"054d", X"0434", X"ff90", X"00ed", X"0202", X"fd10", X"06a5", X"03a5", X"0296", X"0520", X"fc61", X"fb75", X"fc9f", X"03fa",
                                                        X"0307", X"02f7", X"0b3b", X"028e", X"0379", X"f7c5", X"fbe6", X"0051", X"0366", X"0720", X"07e3", X"0ae2", X"ff28", X"f993",
                                                        X"0600", X"0055", X"0664", X"0374", X"01f1", X"01f3", X"febb", X"f54e", X"fd50", X"00b1", X"02ed", X"06bc", X"03b7", X"0890",
                                                        X"02e3", X"f8f2", X"0064", X"023e", X"05cb", X"fde4", X"0276", X"ff56", X"fe7f", X"edca", X"fd56", X"f5d2", X"00d1", X"04db",
                                                        X"0335", X"052a", X"0910", X"f359", X"0009", X"059e", X"08fd", X"02ab", X"027d", X"02d7", X"0382", X"f883", X"fa1a", X"fa3c",
                                                        X"fd54", X"0323", X"ff07", X"ffd0", X"0e15", X"f0ef", X"f931", X"02d3", X"13a1", X"ff94", X"02fe", X"041a", X"fea8", X"faaf",
                                                        X"029d", X"f999", X"fff7", X"007c", X"009f", X"fd68", X"ff9c", X"fa8a", X"faf4", X"fea1", X"1191", X"fe6b", X"03ef", X"0361",
                                                        X"00bc", X"f9a5", X"fd64", X"f34a", X"fed5", X"fe03", X"02d3", X"ff62", X"fd38", X"f189", X"fbae", X"fe7d", X"034f", X"0137",
                                                        X"001f", X"03f5", X"0290", X"f6f0", X"f9f8", X"fdef", X"0014", X"044a", X"0115", X"0224", X"fee0", X"f99f", X"016d", X"ff8e",
                                                        X"0589", X"fae3", X"0965", X"0428", X"064a", X"f62f", X"fae9", X"fdfc", X"0481", X"fef6", X"02d4", X"0de9", X"f57f", X"ee96",
                                                        X"f91a", X"0179", X"0094", X"03b1", X"02a7", X"0953", X"07dd", X"f16c", X"f79d", X"fbd2", X"fae5", X"03bc", X"ff3f", X"0647",
                                                        X"004c", X"f5e5", X"0052", X"04ed", X"1628", X"0737", X"04da", X"06ea", X"098e", X"f8a3", X"f811", X"fa6d", X"02c1", X"fefc",
                                                        X"0136", X"04e9", X"0720", X"f9b4", X"01f0", X"00f6", X"0972", X"0181", X"059d", X"0477", X"0596", X"038f", X"f2c4", X"fbf4",
                                                        X"02bd", X"fc92", X"038f", X"09df", X"05fc", X"f7dd", X"fc7d", X"007f", X"1318", X"fc28", X"03ce", X"01b0", X"0547", X"faed",
                                                        X"f9c8", X"f3ed", X"00cb", X"ff71", X"0560", X"0752", X"098d", X"faef", X"f995", X"02c3", X"090d", X"feb6", X"fec6", X"fda8",
                                                        X"0109", X"fab0", X"fb9f", X"001b", X"f926", X"fd82", X"ff90", X"0128", X"fdf2", X"f62c", X"fb3a", X"fd92", X"07ff", X"fbab",
                                                        X"04a8", X"fd49", X"031a", X"fc19", X"00a1", X"fea7", X"fd26", X"ff6e", X"fda9", X"003f", X"05ae", X"f057", X"ff28", X"0158",
                                                        X"06fc", X"fdbd", X"0416", X"0088", X"0080", X"0168", X"fcc0", X"fddb", X"faca", X"fe1a", X"02ee", X"02cd", X"fdcc", X"f6f5",
                                                        X"fd12", X"0218", X"0ba3", X"fc55", X"07ae", X"0513", X"012e", X"0613", X"f846", X"fa7f", X"fcab", X"01b2", X"041e", X"0259",
                                                        X"069b", X"f894", X"fdfc", X"03dc", X"0c86", X"fbce", X"08f7", X"034b", X"ff0e", X"fb58", X"f8b3", X"fb08", X"fe82", X"03c0",
                                                        X"f9b7", X"0594", X"fc40", X"f038", X"02f0", X"ffd6", X"03e7", X"03de", X"fe15", X"05cc", X"061f", X"fa6a", X"fa30", X"f871",
                                                        X"01fe", X"04c3", X"0208", X"0829", X"0271", X"f974", X"047f", X"fb73", X"176e", X"0479", X"ff26", X"030a", X"0587", X"f2a2",
                                                        X"f6a8", X"f651", X"f5c9", X"0381", X"052e", X"06fe", X"01e0", X"f6cb", X"0167", X"fca0", X"0912", X"05ae", X"0709", X"01a0",
                                                        X"ff63", X"f894", X"fc52", X"ff57", X"fb52", X"0706", X"0029", X"024e", X"fab8", X"eee4", X"04d4", X"fe83", X"0d95", X"030b",
                                                        X"fcf2", X"0689", X"00b7", X"fe42", X"fa29", X"ff70", X"ff72", X"0704", X"fa44", X"0566", X"021c", X"f95b", X"fe8c", X"fcee",
                                                        X"04d9", X"0033", X"fff6", X"035d", X"fb6d", X"faaa", X"004d", X"f63a", X"fe87", X"01b6", X"fb3a", X"076d", X"f936", X"f7f1",
                                                        X"fe02", X"ff89", X"08a1", X"0101", X"036e", X"0304", X"ff1c", X"019d", X"0160", X"fcd0", X"fb7e", X"069f", X"fe6b", X"037d",
                                                        X"017b", X"006e", X"fbf1", X"ff34", X"01af", X"010c", X"0830", X"03fd", X"fe5e", X"f8a7", X"034e", X"f6e5", X"00d6", X"053f",
                                                        X"fe90", X"043a", X"fcbb", X"0678", X"0087", X"0421", X"0e67", X"04ec", X"0623", X"0289", X"0126", X"f66f", X"0320", X"f724",
                                                        X"03af", X"05e3", X"02bf", X"07a3", X"f9a9", X"fbff", X"fd7c", X"0450", X"092d", X"0270", X"039a", X"0699", X"091b", X"f8ff",
                                                        X"fe90", X"fc0c", X"03f8", X"0213", X"04ed", X"0800", X"fecd", X"ff5e", X"02ba", X"fff6", X"10d1", X"023d", X"0498", X"01ac",
                                                        X"0107", X"f0a0", X"feb4", X"022c", X"02cc", X"feb7", X"059a", X"00bf", X"066d", X"fc8b", X"0421", X"016d", X"17a1", X"ff5e",
                                                        X"f9da", X"0242", X"fe4c", X"fbc1", X"fb20", X"fcb5", X"fdb8", X"01f8", X"00b3", X"0003", X"02e1", X"f714", X"ff07", X"00d9",
                                                        X"0f01", X"fd7b", X"0134", X"02fb", X"0391", X"03e8", X"f9ac", X"fc93", X"fdf6", X"0041", X"fdf2", X"fc39", X"073c", X"f852",
                                                        X"f730", X"fba6", X"0aa6", X"fded", X"02c7", X"fe5d", X"03b7", X"f8b0", X"fed8", X"fba8", X"0076", X"0102", X"0309", X"0027",
                                                        X"fe08", X"f7e1", X"faa6", X"00f8", X"fecb", X"0060", X"04bd", X"fc09", X"02ad", X"f906", X"ff85", X"f45f", X"fe5b", X"0116",
                                                        X"02e3", X"0539", X"fc3f", X"f331", X"022e", X"fdc7", X"04da", X"fb6b", X"028b", X"02c6", X"03b3", X"f89b", X"fc02", X"fa22",
                                                        X"01ed", X"01e9", X"ff6f", X"fbbb", X"0210", X"f72c", X"00e6", X"02fe", X"03b1", X"fda4", X"0020", X"03cc", X"004b", X"fbf1",
                                                        X"f9f5", X"fa23", X"0526", X"01af", X"032b", X"ff27", X"fd97", X"ef3f", X"fd22", X"0187", X"0a3e", X"fc5b", X"010a", X"02fd",
                                                        X"0124", X"fa55", X"f898", X"f4a1", X"04c6", X"0423", X"015b", X"06f7", X"ff32", X"ef39", X"00d4", X"018a", X"0dd8", X"fc21",
                                                        X"00ed", X"00d1", X"041c", X"f911", X"f72b", X"f7c1", X"02e4", X"068b", X"01a0", X"08bf", X"0407", X"f111", X"030d", X"fdd4",
                                                        X"12b9", X"02ca", X"ff27", X"ff77", X"054e", X"f915", X"f208", X"030d", X"02a2", X"05f3", X"fef8", X"0641", X"0307", X"ef63",
                                                        X"fea7", X"ff39", X"0ee1", X"fe40", X"06b3", X"03ac", X"0455", X"fc2e", X"f73d", X"fe7e", X"ff5e", X"0557", X"f8ce", X"fee6",
                                                        X"facf", X"f3f6", X"feac", X"fd18", X"0739", X"0026", X"032a", X"00d0", X"05da", X"fe14", X"f995", X"fb11", X"fe93", X"0234",
                                                        X"02ee", X"09d2", X"fbf0", X"f93d", X"fca6", X"0247", X"0bb6", X"01bc", X"085b", X"02af", X"05df", X"fb60", X"fbf7", X"fb00",
                                                        X"ff75", X"0336", X"fb34", X"0382", X"febf", X"fc8a", X"fbab", X"0352", X"0693", X"01aa", X"050b", X"fd1f", X"0780", X"f466",
                                                        X"f8e3", X"fcd3", X"03ce", X"ff1c", X"fc13", X"09bb", X"02fa", X"fde8", X"f65b", X"02aa", X"017c", X"044c", X"0869", X"0097",
                                                        X"01e8", X"fdc8", X"06cc", X"f98e", X"050a", X"01d2", X"ffca", X"035b", X"03a9", X"f88e", X"fce5", X"fdeb", X"04ac", X"0373",
                                                        X"03b2", X"fff0", X"0390", X"f9c8", X"fc4c", X"f7f9", X"032c", X"0191", X"0532", X"0d76", X"feea", X"f889", X"fc76", X"0118",
                                                        X"0803", X"01f1", X"0a9d", X"04da", X"ffc5", X"0496", X"fb59", X"efb7", X"0223", X"032a", X"0073", X"034a", X"f763", X"f52f",
                                                        X"fb65", X"0268", X"0294", X"ff91", X"000b", X"044e", X"0024", X"fc52", X"0481", X"ed98", X"fe09", X"031f", X"048a", X"020e",
                                                        X"035a", X"fb92", X"fb03", X"00fb", X"07d2", X"fb6a", X"099b", X"01a8", X"fd1b", X"f7e9", X"fc6c", X"f9ad", X"07f3", X"066f",
                                                        X"02c4", X"0351", X"08e3", X"f5b3", X"fa31", X"02d4", X"0d90", X"ffda", X"00d1", X"fed6", X"fffd", X"fb83", X"fe66", X"fded",
                                                        X"fede", X"040a", X"0470", X"0663", X"ff3d", X"008b", X"ff84", X"0118", X"0681", X"fe3f", X"041b", X"fdff", X"ffea", X"fc59",
                                                        X"fc90", X"01ba", X"00af", X"02b2", X"037d", X"0948", X"01d3", X"f9ed", X"faa6", X"03b8", X"098a", X"fddf", X"0ab2", X"fe92",
                                                        X"021f", X"f70c", X"f9a1", X"f915", X"0244", X"ff1f", X"0110", X"0266", X"fd33", X"f6e0", X"0069", X"0040", X"0c56", X"000f",
                                                        X"f89d", X"0032", X"0784", X"f686", X"feba", X"f31f", X"fea9", X"028e", X"0320", X"059f", X"00bc", X"f6db", X"ffad", X"0144",
                                                        X"0b05", X"0053", X"0196", X"035e", X"0739", X"f9f5", X"fae5", X"013d", X"0002", X"00ae", X"ffc6", X"0a58", X"faa8", X"f6e0",
                                                        X"032b", X"ff29", X"0d00", X"ff54", X"02f1", X"07b0", X"08cd", X"f49f", X"fd68", X"f927", X"0120", X"ffc8", X"0084", X"02ad",
                                                        X"0187", X"f62b", X"fac1", X"ffa4", X"05de", X"00dd", X"0334", X"04c6", X"0621", X"f7b0", X"fac2", X"fac4", X"0654", X"0506",
                                                        X"01f3", X"0487", X"0706", X"f324", X"0105", X"ff31", X"1163", X"fdfd", X"fa5c", X"0395", X"0701", X"f226", X"fb16", X"f417",
                                                        X"01b0", X"fe30", X"0472", X"fe87", X"02d6", X"ef71", X"0271", X"fad5", X"0aa0", X"f9b9", X"02bc", X"fad0", X"01cd", X"f81c",
                                                        X"fb82", X"fc03", X"fd75", X"02b3", X"00c7", X"0595", X"0192", X"f69f", X"fc2b", X"fbe1", X"0fdf", X"feb2", X"0120", X"fb7b",
                                                        X"0580", X"0211", X"fa12", X"fc02", X"ff0c", X"027c", X"038b", X"0488", X"0033", X"fc29", X"fe82", X"0115", X"0455", X"ffe2",
                                                        X"0787", X"0031", X"03fb", X"f751", X"fa84", X"0289", X"01d2", X"ff73", X"01d7", X"084d", X"fcd2", X"f497", X"02b5", X"0166",
                                                        X"04cb", X"0102", X"f9f8", X"0523", X"ff8d", X"f97e", X"fc7d", X"fa36", X"05bc", X"03c5", X"ff12", X"07b6", X"02ff", X"f423",
                                                        X"0043", X"ff14", X"02dd", X"004f", X"02ff", X"01fa", X"049d", X"fdb2", X"ff17", X"fd16", X"00b2", X"0335", X"fd2c", X"04a6",
                                                        X"07a5", X"f85b", X"01f2", X"0302", X"0c94", X"fcb3", X"0973", X"fc97", X"f9dc", X"f5fb", X"fe7e", X"f964", X"fd91", X"01a2",
                                                        X"fd21", X"0056", X"0116", X"f77c", X"ff35", X"00b4", X"0a6a", X"fb50", X"fb57", X"ff91", X"feb0", X"f773", X"f8a8", X"ff0c",
                                                        X"fa72", X"0695", X"007e", X"0697", X"0786", X"f3e3", X"ffce", X"fd9d", X"0e49", X"ff95", X"fa10", X"f9e6", X"ff6e", X"f412",
                                                        X"f34a", X"f957", X"ffb5", X"02f8", X"008c", X"099d", X"029f", X"f2e1", X"fea0", X"fa52", X"0d02", X"01e9", X"01e2", X"0033",
                                                        X"0112", X"fbcb", X"faf1", X"f7f8", X"fa46", X"03f0", X"fff0", X"005d", X"006e", X"f754", X"fd27", X"fe9b", X"f895", X"fe78",
                                                        X"ffaf", X"f983", X"f893", X"f673", X"fb87", X"f2ae", X"fbcd", X"ff49", X"fc8f", X"0445", X"ffb7", X"f68d", X"0225", X"ff21",
                                                        X"026f", X"ff20", X"0209", X"fea3", X"02e1", X"f6a3", X"f5e8", X"fac3", X"001b", X"01c0", X"039d", X"0441", X"fe5d", X"faec",
                                                        X"0036", X"ff06", X"0460", X"fd86", X"fec6", X"0102", X"fdc0", X"ecfd", X"fa83", X"facb", X"fca7", X"0381", X"058a", X"073f",
                                                        X"fe57", X"f8b1", X"039e", X"ffaf", X"088f", X"fce8", X"0660", X"ffba", X"0317", X"ee77", X"fa6d", X"000b", X"fe5c", X"ff3a",
                                                        X"07e5", X"ffe4", X"fcfe", X"f970", X"0173", X"fe03", X"fcbc", X"020e", X"0519", X"02af", X"04e7", X"f0ce", X"f9b2", X"0197",
                                                        X"090f", X"fefa", X"09f0", X"0a7a", X"f6e6", X"f4c8", X"01e7", X"fffd", X"01dc", X"0508", X"05b0", X"0b46", X"0cb5", X"ff20",
                                                        X"004d", X"02a2", X"057c", X"00ca");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"00ca";
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
