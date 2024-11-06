-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block440.vhd
-- Created: 2024-11-04 16:44:20
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block440
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage84/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block440 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block440;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block440 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0a2b", X"fe33", X"f29e", X"0619", X"08c0", X"fac6",
                                                        X"e560", X"07a5", X"1b59", X"fcf1", X"08ee", X"0395", X"fe80", X"0b99", X"f53b", X"0773", X"01de", X"fcd9", X"0204", X"023a",
                                                        X"03bb", X"fe26", X"f3f7", X"0167", X"0f71", X"fb73", X"02d8", X"01e3", X"01ae", X"0558", X"f565", X"0639", X"03dc", X"fb64",
                                                        X"f2e0", X"f8e7", X"0589", X"fddd", X"e49e", X"00d5", X"0e61", X"fa5e", X"0306", X"037f", X"fbac", X"fc90", X"f380", X"fe68",
                                                        X"0188", X"00bb", X"f590", X"fce9", X"05b6", X"f90e", X"eb78", X"0136", X"0c8a", X"fdc4", X"0135", X"0553", X"fccd", X"0236",
                                                        X"f34c", X"fe5b", X"fd4a", X"fd7c", X"f15c", X"f7a9", X"00ad", X"fc7d", X"dfb2", X"043f", X"08d7", X"fb59", X"ff77", X"014e",
                                                        X"fb26", X"ffa5", X"f5e7", X"0334", X"0007", X"ff0e", X"ed1d", X"00bd", X"0515", X"fc6e", X"eba9", X"05ec", X"0d8a", X"fb23",
                                                        X"fe46", X"012b", X"01bb", X"ff8e", X"f716", X"ffc9", X"0389", X"fb5f", X"fa2d", X"fe13", X"0257", X"0161", X"ebb6", X"04ef",
                                                        X"112e", X"fb59", X"0338", X"00aa", X"01de", X"ffd9", X"f496", X"0069", X"00d6", X"fb1b", X"f82a", X"032c", X"04b8", X"fd40",
                                                        X"ec52", X"0186", X"0dd3", X"fd1a", X"01e4", X"0152", X"035e", X"fd99", X"f645", X"01d5", X"0082", X"faee", X"fbff", X"0213",
                                                        X"05ce", X"fc61", X"e431", X"02b6", X"0e2c", X"fb9c", X"05c5", X"02d9", X"0114", X"021d", X"f578", X"ffe3", X"03c5", X"fe5d",
                                                        X"f9d0", X"0a98", X"07d4", X"fd68", X"f00f", X"01b9", X"0fa5", X"fe3a", X"020d", X"0511", X"fed6", X"0a58", X"f4db", X"014c",
                                                        X"04dd", X"fa80", X"f8b3", X"07e3", X"0cd5", X"fc9c", X"ea78", X"01d0", X"1079", X"fb0b", X"03f2", X"08cc", X"fac6", X"0162",
                                                        X"f2ce", X"fff5", X"027d", X"fd1f", X"f5c2", X"fcef", X"03cd", X"feff", X"e56a", X"070e", X"1130", X"fe26", X"036b", X"0cbc",
                                                        X"01a2", X"fbbc", X"f621", X"fffc", X"0209", X"fa06", X"f99a", X"06ac", X"0549", X"ffe7", X"f293", X"02ef", X"0e2d", X"f98a",
                                                        X"fead", X"06bf", X"01e5", X"086a", X"f77c", X"0074", X"060e", X"fbb0", X"f87e", X"fc1d", X"0607", X"0176", X"e68c", X"003e",
                                                        X"075c", X"f8d9", X"00ed", X"080a", X"ffd7", X"ffe1", X"f6d3", X"0081", X"03e1", X"f7fc", X"f168", X"ff9e", X"056e", X"ff5e",
                                                        X"e39a", X"0164", X"0b64", X"fdf0", X"0039", X"0828", X"0445", X"07e9", X"fa9a", X"01eb", X"003f", X"fb61", X"00ca", X"0185",
                                                        X"0648", X"ff00", X"e6f5", X"02dd", X"0c88", X"fdbc", X"fdbf", X"095f", X"fea3", X"0196", X"f73e", X"02b2", X"fee4", X"f974",
                                                        X"fc4c", X"03ad", X"0485", X"fe08", X"eb84", X"0345", X"0d5b", X"fc3f", X"04a5", X"09cc", X"ff05", X"ff29", X"f5d8", X"0297",
                                                        X"05ff", X"f7a1", X"014e", X"0088", X"0663", X"fbee", X"e08b", X"02f4", X"102a", X"f81c", X"008a", X"0294", X"fee6", X"0460",
                                                        X"f5ff", X"0139", X"055e", X"fad2", X"f785", X"0179", X"0515", X"fb08", X"e63f", X"03e0", X"0dfd", X"fb9f", X"0275", X"02cf",
                                                        X"ff6f", X"fbb7", X"f8e4", X"01b8", X"0401", X"fd1a", X"f336", X"03cf", X"04a5", X"fe39", X"edc9", X"05ec", X"0d27", X"f905",
                                                        X"052d", X"040e", X"0167", X"028d", X"f4a0", X"015a", X"04e4", X"facb", X"f31c", X"050e", X"03af", X"0019", X"e78b", X"04f9",
                                                        X"0e62", X"feb6", X"0612", X"0729", X"fee1", X"036a", X"f407", X"0274", X"01f2", X"fe31", X"f9df", X"01f3", X"0837", X"fdf2",
                                                        X"ea43", X"0618", X"0de5", X"fc09", X"02e4", X"0842", X"faa7", X"fb62", X"f65b", X"0295", X"03c7", X"0105", X"ff7c", X"fe52",
                                                        X"040f", X"fd2b", X"f038", X"0416", X"0bd5", X"fe57", X"03c7", X"0575", X"fbf8", X"fdbc", X"f75f", X"008e", X"fe59", X"f915",
                                                        X"f8fd", X"043b", X"0283", X"0044", X"e607", X"0472", X"0c7a", X"fd4a", X"00da", X"0516", X"fe71", X"020f", X"f530", X"02b1",
                                                        X"083e", X"f994", X"fac7", X"0112", X"0a64", X"fd72", X"e67b", X"0634", X"0e12", X"f961", X"00b8", X"009c", X"015c", X"04f6",
                                                        X"f124", X"034e", X"05c0", X"f91e", X"f9ba", X"027f", X"093e", X"fef0", X"dea1", X"0566", X"0d71", X"fb21", X"fefe", X"0356",
                                                        X"0116", X"0182", X"f538", X"02fc", X"0623", X"fb9c", X"fc64", X"fb6b", X"0327", X"fcfa", X"e02b", X"03cc", X"1350", X"f99f",
                                                        X"ff05", X"0382", X"008b", X"0505", X"f7ab", X"018a", X"0379", X"fba4", X"f66c", X"00d5", X"059f", X"fc58", X"e30b", X"0920",
                                                        X"1449", X"f89d", X"00b3", X"fe84", X"054f", X"00ae", X"f4c9", X"0074", X"fea7", X"fd8a", X"fe78", X"037d", X"0464", X"fd03",
                                                        X"eaf8", X"06fb", X"0e4e", X"fa27", X"0530", X"00fa", X"00c3", X"01bb", X"f723", X"ff7d", X"fff4", X"fc16", X"f294", X"028f",
                                                        X"05cc", X"fa8e", X"e6f6", X"0321", X"0caf", X"fcff", X"04be", X"0110", X"0065", X"ffa4", X"f21e", X"ffd1", X"0339", X"fb87",
                                                        X"f09c", X"030c", X"06c1", X"ff21", X"e91c", X"fdf3", X"0bd1", X"fd59", X"fdee", X"017b", X"f9ed", X"fe59", X"f50a", X"007a",
                                                        X"ffa6", X"feb2", X"f84f", X"ffed", X"0301", X"fc96", X"ed3c", X"01e6", X"0ecf", X"fae9", X"036a", X"06f7", X"fe4b", X"0279",
                                                        X"f899", X"0257", X"0644", X"fee8", X"fbf6", X"fad8", X"0663", X"ff36", X"ecbd", X"048f", X"0dc3", X"fabd", X"012c", X"09d7",
                                                        X"ffbb", X"01ae", X"f69b", X"02cd", X"050e", X"ff75", X"ff8e", X"027c", X"07ba", X"0048", X"eb1f", X"02ea", X"11eb", X"fbeb",
                                                        X"061c", X"0169", X"00f9", X"01a6", X"f67d", X"01b0", X"0111", X"fec3", X"f72b", X"ffe7", X"0084", X"fcd9", X"ea8b", X"059f",
                                                        X"0c6b", X"fbe8", X"0205", X"05f3", X"0165", X"0057", X"f6b3", X"0000", X"029c", X"fba6", X"f327", X"0381", X"0447", X"fd04",
                                                        X"ebae", X"0639", X"0f12", X"fb9e", X"028e", X"fe41", X"0139", X"00ce", X"f70c", X"021f", X"0166", X"f9c2", X"ec0b", X"0cf5",
                                                        X"0691", X"fd1c", X"e776", X"0238", X"0eec", X"fe2e", X"0277", X"01a0", X"03b2", X"0285", X"f4e9", X"0129", X"027d", X"fb5c",
                                                        X"f037", X"ff1a", X"03d2", X"feeb", X"e698", X"0070", X"0b11", X"fe6f", X"0088", X"08ae", X"0129", X"fe87", X"f866", X"00f6",
                                                        X"0207", X"f5a8", X"feeb", X"08d6", X"060b", X"fdce", X"e94e", X"01a8", X"0e9c", X"f979", X"ff2d", X"ff89", X"08ae", X"00ec",
                                                        X"f8b8", X"00f2", X"049a", X"f9c5", X"fac7", X"03c3", X"03c4", X"fcbb", X"e876", X"04ee", X"0cb8", X"fb68", X"02e4", X"069f",
                                                        X"0054", X"0323", X"f8ae", X"00af", X"0214", X"fe3a", X"fca4", X"fc5c", X"0456", X"0074", X"ea84", X"05b7", X"0f86", X"faab",
                                                        X"fe59", X"0a0b", X"fa59", X"fe36", X"fa3e", X"00e2", X"04f6", X"f8f6", X"f8b3", X"0212", X"0803", X"fb09", X"ea1d", X"0259",
                                                        X"1312", X"fce2", X"032f", X"0721", X"01e5", X"00c4", X"f333", X"046b", X"033d", X"0004", X"f919", X"0235", X"085c", X"fffa",
                                                        X"ebf1", X"05dc", X"0ce6", X"fe47", X"0677", X"05b2", X"003d", X"fda6", X"f51f", X"0252", X"0177", X"fe7b", X"f615", X"0402",
                                                        X"07e0", X"fc68", X"df55", X"0758", X"10d9", X"f946", X"08b2", X"025a", X"012a", X"fbfe", X"f730", X"ff6c", X"ffda", X"fba6",
                                                        X"f60c", X"0691", X"08fc", X"fee9", X"e4c5", X"ffeb", X"1024", X"008d", X"029e", X"0097", X"05fd", X"fb2e", X"f48e", X"0335",
                                                        X"073c", X"fd83", X"f85a", X"02b6", X"0774", X"fd41", X"f1f0", X"042a", X"09a4", X"fcd8", X"0232", X"03bc", X"00df", X"fdc5",
                                                        X"f20d", X"0493", X"04f1", X"f4c8", X"f889", X"07c4", X"0a00", X"fb62", X"eab5", X"00db", X"0ba4", X"fef8", X"0152", X"0289",
                                                        X"00a6", X"fd7a", X"f6c3", X"0316", X"060d", X"f943", X"f996", X"04ea", X"08f0", X"fc0c", X"e3e6", X"047f", X"093e", X"fc6b",
                                                        X"0138", X"0490", X"02d8", X"0451", X"f32e", X"01af", X"0538", X"fe85", X"fed8", X"0220", X"0711", X"fc38", X"e989", X"06e6",
                                                        X"0db9", X"fc3a", X"02a5", X"027a", X"022e", X"0241", X"f6c0", X"0594", X"0362", X"f96b", X"f872", X"07f0", X"02ae", X"ff4c",
                                                        X"ed1a", X"030d", X"1322", X"fa8b", X"053f", X"03e2", X"01f8", X"00e7", X"f6e9", X"0127", X"00a3", X"fd54", X"f88a", X"02aa",
                                                        X"00c1", X"fd31", X"e617", X"0798", X"0fe9", X"ff92", X"04d0", X"04c1", X"fc12", X"fbf3", X"f729", X"ff63", X"03b6", X"f8f2",
                                                        X"faf3", X"031a", X"0738", X"fc87", X"e871", X"078f", X"0ffc", X"fea3", X"01ff", X"0473", X"0503", X"faf0", X"f5db", X"0163",
                                                        X"0597", X"f9fb", X"ee55", X"00eb", X"0681", X"fe16", X"e4fa", X"02d9", X"0aa2", X"fbd1", X"02b6", X"0582", X"ff56", X"fc5a",
                                                        X"f420", X"01d7", X"00e8", X"fb07", X"f76f", X"015c", X"041d", X"ffc8", X"e159", X"047a", X"0ebd", X"fbe9", X"fda5", X"051c",
                                                        X"fd80", X"fd3e", X"f487", X"ff81", X"0213", X"fdb9", X"f6cd", X"0265", X"03ac", X"fbbb", X"e854", X"0611", X"0dd8", X"f9ef",
                                                        X"0190", X"fdae", X"0343", X"02be", X"f2a6", X"011f", X"0278", X"fee4", X"fb88", X"04e0", X"07c6", X"fbb1", X"e477", X"03d0",
                                                        X"0f96", X"fba2", X"fd88", X"0736", X"fe26", X"0212", X"f712", X"03c3", X"0330", X"f578", X"fa5e", X"fe7d", X"0903", X"fc92",
                                                        X"ece1", X"feb9", X"157e", X"fc22", X"0014", X"06e1", X"03d9", X"fe66", X"f426", X"016c", X"03df", X"f5dd", X"f65b", X"052f",
                                                        X"0575", X"fd01", X"e2c7", X"02c3", X"1125", X"f7f0", X"0301", X"08ec", X"fbb7", X"fdf3", X"f637", X"0211", X"015f", X"faaf",
                                                        X"fa06", X"0445", X"0655", X"fdc4", X"e27a", X"0788", X"0fd0", X"f9e7", X"0191", X"0614", X"fd6c", X"02e8", X"f2d0", X"0512",
                                                        X"0151", X"f7e0", X"f860", X"09ce", X"0820", X"fceb", X"e528", X"03ab", X"1031", X"fc71", X"0149", X"ffb1", X"fcde", X"ffaa",
                                                        X"f849", X"01d3", X"0708", X"fc76", X"f84f", X"fe6d", X"0705", X"fe6f", X"e943", X"04de", X"0eb7", X"fe9d", X"0223", X"0144",
                                                        X"00ab", X"0122", X"f684", X"01a7", X"06e8", X"fd1f", X"f6f0", X"04bb", X"0377", X"ffbc", X"e86d", X"0019", X"0c28", X"fa42",
                                                        X"ff25", X"06c6", X"016d", X"fd42", X"f27c", X"00e5", X"0499", X"f8f6", X"f3a5", X"fee8", X"03b8", X"fafd", X"e6eb", X"0368",
                                                        X"0b22", X"fc1c", X"007f", X"02f3", X"047c", X"fe1a", X"f458", X"02a9", X"01e0", X"fb55", X"f8ab", X"f9de", X"04b8", X"fad0",
                                                        X"eadb", X"06ed", X"0ba0", X"fc54", X"031f", X"06de", X"01df", X"0443", X"f46d", X"0204", X"0781", X"fb16", X"fceb", X"0132",
                                                        X"0a25", X"0064", X"ece1", X"08c0", X"129f", X"fb86", X"04c7", X"074c", X"00e2", X"ff40", X"f432", X"039f", X"04bd", X"fbec",
                                                        X"fa22", X"08a6", X"0734", X"fc85", X"e648", X"090c", X"0f2a", X"fc80", X"0394", X"06cb", X"fc7e", X"068a", X"f904", X"ff47",
                                                        X"023a", X"fd9a", X"f875", X"0172", X"08e2", X"f878", X"e467", X"02e6", X"1002", X"fd7e", X"02da", X"0211", X"f736", X"0312",
                                                        X"f791", X"fe6a", X"05af", X"fd65", X"f04d", X"001e", X"03cb", X"fdea", X"e909", X"0049", X"13e2", X"f946", X"02ba", X"fa3f",
                                                        X"fee1", X"010a", X"f609", X"0221", X"067d", X"fb89", X"f740", X"ffa3", X"0369", X"fcfb", X"ea77", X"ff65", X"090d", X"fcb2",
                                                        X"02d4", X"0966", X"fc67", X"0307", X"f9eb", X"ff91", X"0054", X"f7d9", X"f8c6", X"ff45", X"0129", X"ffd8", X"ec04", X"04fa",
                                                        X"1036", X"fbb3", X"fd20", X"0673", X"00d5", X"feb9", X"f8bb", X"0290", X"0077", X"f830", X"f3f7", X"0b5d", X"038a", X"fe8e",
                                                        X"eb37", X"0460", X"0d6d", X"fa8e", X"ff34", X"018c", X"fc7f", X"fec0", X"f70f", X"ffb6", X"031e", X"fc19", X"f7cf", X"ffd2",
                                                        X"0390", X"fc55", X"e7b5", X"05d8", X"100e", X"f8f1", X"008c", X"06e5", X"fec0", X"0094", X"f60f", X"02f2", X"03b5", X"fa72",
                                                        X"f347", X"021e", X"05a0", X"fe81", X"df72", X"047b", X"0f22", X"f8e2", X"03a8", X"ff28", X"ffee", X"00fd", X"f4e6", X"009e",
                                                        X"050c", X"f87a", X"f18c", X"fe8e", X"0b3f", X"f9c1", X"ee5b", X"003e", X"0da5", X"f97f", X"0593", X"06b9", X"015e", X"0207",
                                                        X"f356", X"0290", X"0577", X"f91d", X"f52e", X"0276", X"07da", X"fdd0", X"f2f9", X"028a", X"0e13", X"fb0f", X"06bd", X"0387",
                                                        X"fce2", X"0409", X"f4e6", X"043d", X"05e8", X"fbc9", X"f8fb", X"02db", X"0617", X"fc58", X"ec70", X"04dd", X"112e", X"fc78",
                                                        X"02dd", X"007f", X"fdf3", X"00cf", X"f89d", X"0345", X"03c8", X"fa8b", X"f7b1", X"ffe0", X"0310", X"fcaf", X"eaed", X"05fe",
                                                        X"0f6a", X"0041", X"02ce", X"0f26", X"ff67", X"f5d6", X"f647", X"0106", X"ff73", X"fe54", X"f59d", X"0549", X"ff38", X"fe00",
                                                        X"eada", X"0583", X"0b38", X"f9fa", X"0187", X"0109", X"fa8e", X"f911", X"f68b", X"0110", X"031b", X"fcc8", X"f456", X"fea6",
                                                        X"04f7", X"fbdd", X"ea7c", X"0327", X"0b2a", X"fd55", X"009b", X"0341", X"fe3b", X"f973", X"f455", X"fda9", X"04d2", X"fe44",
                                                        X"f49f", X"fee6", X"04dd", X"fcbf", X"ec87", X"013f", X"0e24", X"fbbc", X"02e8", X"04a4", X"0671", X"f8b0", X"f45b", X"0231",
                                                        X"0493", X"0006", X"f19c", X"ffa5", X"0513", X"fd85", X"e995", X"0548", X"0e6d", X"fb32", X"005a", X"032b", X"0353", X"0157",
                                                        X"f45a", X"0171", X"086b", X"fbe8", X"f328", X"0478", X"093d", X"fc67", X"e5aa", X"03b8", X"0cde", X"fa57", X"02b5", X"0416",
                                                        X"fe66", X"0340", X"f444", X"01ea", X"05c8", X"fd6c", X"f99b", X"fdd8", X"0701", X"fc4e", X"eb99", X"040f", X"0d80", X"f8fb",
                                                        X"0359", X"fbbd", X"fe91", X"0228", X"f3e4", X"01d0", X"045b", X"fc14", X"f70f", X"ffb1", X"07e3", X"fd4d", X"ebfb", X"071a",
                                                        X"0dd7", X"f9b4", X"0261", X"fb22", X"ff36", X"fd6b", X"f350", X"0271", X"06b2", X"faf1", X"f4b9", X"07f3", X"0347", X"ff78",
                                                        X"e94f", X"03bf", X"0dad", X"fb6a", X"0318", X"0799", X"fe0f", X"fd09", X"f78a", X"feda", X"02ad", X"fbc1", X"fe21", X"fcba",
                                                        X"0768", X"fa9c", X"e80e", X"03a8", X"0c8e", X"fd55", X"0139", X"0430", X"016b", X"fe4b", X"f456", X"fe84", X"01d0", X"fb92",
                                                        X"fd0c", X"fca2", X"066a", X"ff0a", X"f90f", X"03d2", X"0b24", X"fed4", X"0359", X"0973", X"016c", X"fb23", X"f524", X"fe74",
                                                        X"ff83", X"ffee", X"fd0a", X"013c", X"03b5", X"ff71", X"eb39", X"0519", X"0b17", X"fd35", X"ff53", X"0df0", X"fd0f", X"fff4",
                                                        X"f692", X"ff91", X"020a", X"fc73", X"fe51", X"094f", X"0450", X"fd23", X"e925", X"02c0", X"0f59", X"fc7b", X"01f0", X"05ec",
                                                        X"fb5b", X"0084", X"f7c6", X"022e", X"039f", X"fbf1", X"f468", X"035a", X"0696", X"fddb", X"e8a0", X"0052", X"0f1b", X"fa52",
                                                        X"0507", X"08ef", X"ff50", X"02a7", X"f6a2", X"02d4", X"0429", X"fcdf", X"f8e3", X"0180", X"0a13", X"fb0a", X"ea90", X"04dd",
                                                        X"12da", X"fdff", X"047c", X"0671", X"0519", X"000a", X"f538", X"05be", X"0250", X"fd71", X"f8ba", X"052c", X"057f", X"fe83",
                                                        X"e61f", X"04ce", X"0c36", X"fa7c", X"008d", X"095b", X"005b", X"00e3", X"f239", X"01a4", X"0824", X"fc95", X"f844", X"0255",
                                                        X"0880", X"fd86", X"ec39", X"0002", X"0c36", X"f9a8", X"0155", X"0391", X"0166", X"03c4", X"f2a4", X"00d4", X"01b4", X"fb07",
                                                        X"f757", X"0246", X"0144", X"fdde", X"e93d", X"0174", X"0b3c", X"fc4e", X"fd2a", X"025d", X"0034", X"03e2", X"f898", X"0103",
                                                        X"0357", X"f9ee", X"fe8c", X"fcad", X"fe77", X"fda8", X"e514", X"02b3", X"0b3f", X"fcaf", X"fdbe", X"ff23", X"00ab", X"0002",
                                                        X"f7a7", X"02d0", X"0535", X"fba0", X"f757", X"f2ca", X"020e", X"ffb2", X"e80c", X"0557", X"0e3e", X"fd75", X"00a2", X"03f1",
                                                        X"fc2c", X"fd39", X"f582", X"ff21", X"039d", X"faae", X"f299", X"ffb7", X"05ad", X"fba4", X"e7dc", X"0511", X"0e9d", X"fad2",
                                                        X"026c", X"0814", X"fd4f", X"ffdf", X"f957", X"fe84", X"03a6", X"f87a", X"f3b0", X"fd1b", X"0654", X"fbf4", X"ea7d", X"05c3",
                                                        X"0f15", X"f90f", X"0308", X"02d0", X"fe7a", X"fe87", X"f4d7", X"037e", X"0632", X"00a4", X"f6df", X"01b4", X"07ff", X"fe5d",
                                                        X"ea68", X"0493", X"10a3", X"fa60", X"ff18", X"0721", X"fc64", X"fecf", X"f1a8", X"01fd", X"02cc", X"f997", X"f0bb", X"02ba",
                                                        X"0779", X"0020", X"e658", X"02d2", X"0da9", X"fb98", X"01ab", X"01c2", X"ffdc", X"ff6f", X"f34f", X"00b3", X"ff66", X"fba7",
                                                        X"fa4e", X"068e", X"0181", X"0069", X"e88f", X"03ff", X"0ee9", X"fc9c", X"0051", X"0818", X"02e4", X"fcf0", X"f89e", X"0137",
                                                        X"027b", X"f929", X"f9b8", X"f798", X"0719", X"fdb2", X"e98c", X"03c2", X"0ea5", X"f9df", X"016a", X"03f7", X"025f", X"fca0",
                                                        X"f7ea", X"03d9", X"03a1", X"f649", X"f6f5", X"0055", X"0689", X"ff0e", X"e285", X"016a", X"0d88", X"fba8", X"0328", X"02c0",
                                                        X"004e", X"fbe2", X"f69f", X"004e", X"0414", X"fa5a", X"f77c", X"ff83", X"006e", X"fca0", X"e67e", X"02c2", X"0fbf", X"fbc7",
                                                        X"ff5c", X"0881", X"012d", X"ff2d", X"f48c", X"022f", X"037a", X"f942", X"f78c", X"ffd6", X"098c", X"fb48", X"e9d7", X"02ee",
                                                        X"12d9", X"fa19", X"0635", X"080a", X"fbf6", X"0986", X"f8de", X"02f9", X"0305", X"000d", X"fa1a", X"05b0", X"09c5", X"fc22",
                                                        X"ed1e", X"062a", X"0f7a", X"fb7f", X"02f4", X"0761", X"fb9d", X"039b", X"f64c", X"048a", X"06da", X"fafd", X"fb4d", X"fd11",
                                                        X"07d7", X"fe07", X"ef74", X"fe96", X"102b", X"f9ec", X"002e", X"03a7", X"ffb9", X"051c", X"f47e", X"029c", X"020a", X"ff7f",
                                                        X"f81c", X"0229", X"0558", X"fe34", X"de96", X"011e", X"0ead", X"fbba", X"fe39", X"04a4", X"fb19", X"ff7e", X"f5f6", X"ff6a",
                                                        X"0149", X"ff09", X"f9c0", X"0307", X"0632", X"fd88", X"e556", X"0362", X"118d", X"f8b5", X"06f7", X"00b2", X"017f", X"ff85",
                                                        X"f7cd", X"004d", X"0168", X"fdb6", X"ff6f", X"fdf1", X"03d6", X"fd60", X"ec6a", X"0545", X"0b97", X"fa9b", X"ff3b", X"0793",
                                                        X"02d5", X"fe89", X"f962", X"0174", X"0419", X"fb9b", X"f325", X"00a8", X"0669", X"fe8b", X"df95", X"0345", X"0ead", X"fade",
                                                        X"0126", X"014f", X"fcbb", X"0652", X"f91f", X"ff59", X"02a1", X"fe8b", X"fb76", X"0923", X"01e7", X"fcf0", X"e9bb", X"01be",
                                                        X"0f46", X"fd4d", X"001a", X"0313", X"ff00", X"03a2", X"f869", X"010c", X"058e", X"fbfb", X"f746", X"00e9", X"0501", X"ff07",
                                                        X"ee5c", X"060d", X"094e", X"fb51", X"0117", X"005c", X"fedb", X"fd5a", X"f6f7", X"01fc", X"07a5", X"fbf0", X"f39d", X"07c3",
                                                        X"04f1", X"fcf8", X"e31b", X"0184", X"0ce8", X"f63b", X"0110", X"0394", X"ffb0", X"fe60", X"f151", X"fe45", X"05ee", X"fbb6",
                                                        X"fc91", X"ffbb", X"06fd", X"fdb2", X"e479", X"0869", X"1217", X"f952", X"058e", X"0604", X"fe21", X"000d", X"f2f1", X"0329",
                                                        X"0315", X"faf3", X"f803", X"09f4", X"0154", X"fdeb", X"e44d", X"04d4", X"0d84", X"f8eb", X"0410", X"07c1", X"0130", X"07ae",
                                                        X"f682", X"0292", X"00d2", X"fc0a", X"f976", X"fe93", X"0018", X"fd11", X"eaa3", X"042e", X"0d9b", X"fc2a", X"02f3", X"01dd",
                                                        X"0287", X"ffa2", X"fa92", X"0250", X"0124", X"fc30", X"fb2b", X"0212", X"0218", X"fc77", X"e762", X"0185", X"0a90", X"fe82",
                                                        X"00e9", X"0745", X"016b", X"f918", X"f744", X"0208", X"02da", X"fd2a", X"f5c9", X"ff99", X"07e8", X"fee9", X"ec5a", X"0372",
                                                        X"0e7a", X"fba8", X"00f7", X"053c", X"006e", X"05df", X"f494", X"febb", X"0167", X"f9f4", X"f610", X"00c1", X"05e1", X"f9c2",
                                                        X"ed6d", X"0460", X"0eb7", X"fd4b", X"026e", X"04b8", X"fb89", X"00f8", X"f417", X"0212", X"00ff", X"f6c7", X"f770", X"f7a9",
                                                        X"04f6", X"fcd3", X"e891", X"0301", X"0dc4", X"fab2", X"fe0c", X"0560", X"015d", X"fedc", X"f536", X"04aa", X"0308", X"fab8",
                                                        X"f599", X"04d7", X"0485", X"0051", X"eeca", X"033d", X"10f9", X"f685", X"0065", X"037b", X"fdc0", X"00b1", X"f7d6", X"ff6d",
                                                        X"0451", X"f9f8", X"f782", X"02d4", X"0434", X"fa6b", X"ebb7", X"05bf", X"118c", X"f4aa", X"01a4", X"0785", X"f84c", X"0137",
                                                        X"f38a", X"fe81", X"079f", X"febd", X"f92b", X"fc34", X"0968", X"faf8", X"ec98", X"032e", X"17f6", X"f011", X"066a", X"ffe5",
                                                        X"f6ea", X"0b22", X"f1b9", X"fc91");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fc91";
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
