-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block410.vhd
-- Created: 2024-11-04 16:44:18
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block410
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage57/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block410 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block410;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block410 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"01ae", X"024d", X"0515", X"0549", X"06d7", X"fd41",
                                                        X"fd82", X"03ac", X"099a", X"f3a8", X"0727", X"03c8", X"0640", X"0f42", X"f404", X"fa30", X"ff1c", X"ff7f", X"fae1", X"f979",
                                                        X"0302", X"fd1d", X"f1fb", X"001b", X"06d1", X"f8ef", X"fbef", X"0a23", X"feb4", X"04e3", X"f5b1", X"f972", X"fd8c", X"f73a",
                                                        X"fab7", X"0228", X"02cb", X"f9ff", X"f7bd", X"0029", X"0be3", X"f598", X"032d", X"090d", X"05b0", X"0649", X"f832", X"ff8a",
                                                        X"ff22", X"f413", X"f5ea", X"0362", X"017c", X"f8e9", X"f6ca", X"fecb", X"0fb9", X"fd3a", X"0394", X"0354", X"0182", X"064e",
                                                        X"f7b0", X"0517", X"03ef", X"fc0e", X"f89e", X"020c", X"04d5", X"f745", X"0513", X"fe3e", X"106b", X"fd96", X"0106", X"f94d",
                                                        X"06b4", X"1377", X"f214", X"0280", X"0711", X"f8ed", X"fa13", X"0068", X"ffa0", X"f84e", X"0847", X"fe28", X"0d17", X"012d",
                                                        X"007b", X"0705", X"ff05", X"1550", X"03d9", X"022c", X"0302", X"f059", X"052b", X"03f9", X"05f8", X"fd01", X"030c", X"fc24",
                                                        X"060c", X"fce1", X"fb9c", X"08c2", X"fdac", X"12ec", X"fcea", X"ff3f", X"06e4", X"ff18", X"fc88", X"fc92", X"0487", X"00c5",
                                                        X"0340", X"022e", X"0bab", X"ffcc", X"fdb7", X"0524", X"0232", X"0cc8", X"f8e4", X"fa1a", X"0686", X"05ac", X"01b9", X"0bc2",
                                                        X"0053", X"fe90", X"02f7", X"03e9", X"03f4", X"02ed", X"fdef", X"0152", X"007f", X"059f", X"f81d", X"fbe3", X"00e1", X"ff80",
                                                        X"fc73", X"0a22", X"0184", X"fecd", X"ff61", X"0356", X"05a5", X"0229", X"feef", X"04f0", X"088b", X"07b1", X"fc01", X"f943",
                                                        X"fe97", X"fee8", X"fe3f", X"0525", X"057f", X"fe13", X"00aa", X"0142", X"01ae", X"fdb6", X"ff2b", X"006a", X"03b6", X"0107",
                                                        X"f7d7", X"faa1", X"fdaa", X"f8a4", X"ff23", X"0fef", X"04de", X"fbe5", X"f752", X"ff11", X"0512", X"fa94", X"0480", X"fed2",
                                                        X"0372", X"f915", X"f79b", X"0147", X"fe92", X"fb68", X"fded", X"0be4", X"04b6", X"f882", X"046a", X"ffcc", X"07e1", X"fcb5",
                                                        X"fcc8", X"fe37", X"fc64", X"0ace", X"f189", X"feb5", X"0327", X"02fc", X"fd4e", X"06ec", X"fe8e", X"fbec", X"043f", X"0045",
                                                        X"14a3", X"fde5", X"0083", X"f810", X"0177", X"0d40", X"ff7e", X"0797", X"0184", X"fd44", X"fc09", X"0563", X"01e8", X"fbab",
                                                        X"035f", X"0210", X"083f", X"fec7", X"01ec", X"f93e", X"0111", X"0c16", X"fc74", X"0052", X"ff3b", X"0356", X"fa8d", X"06ef",
                                                        X"fca3", X"fd0a", X"0865", X"ff60", X"0ffe", X"ffea", X"0121", X"fdba", X"fecd", X"12ca", X"0392", X"fd66", X"fbc3", X"00b4",
                                                        X"f93a", X"0921", X"fc15", X"f978", X"fd3a", X"0052", X"09e2", X"fd6b", X"0102", X"f980", X"0952", X"0421", X"f7c8", X"031b",
                                                        X"01c5", X"02cf", X"fead", X"fccd", X"fbf8", X"f9bf", X"0818", X"001c", X"0c34", X"fc60", X"032c", X"00a2", X"0543", X"0442",
                                                        X"fdaf", X"0409", X"faf9", X"fc3e", X"fa74", X"0766", X"0148", X"f807", X"fa3f", X"fd8b", X"fe95", X"faad", X"fe82", X"056a",
                                                        X"0815", X"ffd9", X"fd39", X"ff4f", X"0300", X"f927", X"fa56", X"fde0", X"00d4", X"fb97", X"ff43", X"fed8", X"0417", X"ffc6",
                                                        X"0393", X"05b8", X"0468", X"0796", X"fa63", X"0175", X"04a1", X"fb3f", X"0312", X"fdb4", X"fe2e", X"fafc", X"03ed", X"0487",
                                                        X"0ec5", X"ff5f", X"05b1", X"0095", X"ffce", X"0e42", X"fd2c", X"0456", X"0438", X"fdaf", X"fade", X"03bb", X"05a9", X"fa03",
                                                        X"fcbe", X"036d", X"0cff", X"023a", X"ff3e", X"0690", X"04da", X"096e", X"fb9c", X"fd69", X"0003", X"fa0c", X"fa76", X"fcea",
                                                        X"0477", X"fdfe", X"015d", X"0571", X"0ab8", X"0113", X"fc1e", X"05c7", X"03a3", X"0b75", X"f686", X"feea", X"039a", X"0331",
                                                        X"fa9a", X"01a4", X"01b3", X"00e8", X"000e", X"0520", X"0ca3", X"030a", X"0159", X"ff8f", X"03f0", X"0278", X"fd77", X"0000",
                                                        X"0326", X"018a", X"fa37", X"08c9", X"fd4a", X"fdb8", X"fd65", X"0c49", X"ff58", X"fc1d", X"f98f", X"035f", X"070b", X"f9e3",
                                                        X"f484", X"f9cc", X"06f8", X"ff99", X"04b1", X"05ab", X"02c7", X"01c1", X"fba8", X"05a6", X"02df", X"fa40", X"feb1", X"0069",
                                                        X"ff3c", X"00f1", X"f4d2", X"ff49", X"0104", X"fac9", X"01bb", X"0b56", X"fdca", X"fe4a", X"ff10", X"f95b", X"02e8", X"fdf7",
                                                        X"f587", X"ffd7", X"0044", X"03c9", X"f8c7", X"f9b6", X"0859", X"f7e7", X"02b3", X"08b9", X"01e9", X"fc35", X"05a1", X"fdac",
                                                        X"061c", X"f923", X"fe52", X"fdff", X"fa4b", X"07f0", X"fbb7", X"ffb9", X"0deb", X"f3fb", X"0054", X"0e1d", X"fc36", X"02b8",
                                                        X"040d", X"f8cb", X"0a32", X"f8a6", X"0478", X"f876", X"fe37", X"0b69", X"f7fc", X"fd56", X"026d", X"029f", X"faf2", X"0a24",
                                                        X"006b", X"005d", X"092e", X"01e6", X"16fd", X"fcaa", X"02e7", X"0560", X"033d", X"1a66", X"fe95", X"fdf4", X"007f", X"fc88",
                                                        X"faf8", X"0985", X"0200", X"ffff", X"06bd", X"fd2c", X"1260", X"0154", X"04de", X"03a3", X"06a9", X"0bb6", X"007a", X"00b5",
                                                        X"ff2d", X"feca", X"f9e8", X"0b2d", X"04e6", X"fa3a", X"05d8", X"035d", X"129b", X"01b7", X"08ae", X"fd56", X"018d", X"fe91",
                                                        X"fc4b", X"fe95", X"fd44", X"0094", X"0193", X"0541", X"fdca", X"fb0d", X"087e", X"012a", X"fc7b", X"fe42", X"0b7e", X"0620",
                                                        X"0125", X"0040", X"f81b", X"006b", X"f282", X"fe16", X"fe96", X"0c60", X"fd0e", X"f955", X"fd51", X"fa68", X"02e3", X"f866",
                                                        X"0936", X"07b9", X"08a4", X"06b7", X"fa4b", X"0455", X"fc20", X"fa13", X"016a", X"04f9", X"fce7", X"fc06", X"f61d", X"026d",
                                                        X"fd0b", X"fc7f", X"03b5", X"0c4b", X"0047", X"05f4", X"f1b2", X"ff53", X"fc29", X"f846", X"0204", X"03c0", X"017b", X"fc6c",
                                                        X"fcb9", X"0297", X"0347", X"fba9", X"00f5", X"0999", X"f587", X"082d", X"f854", X"0398", X"0431", X"fa09", X"03e4", X"0cc0",
                                                        X"0178", X"fcfc", X"fb4f", X"044e", X"0b3e", X"0052", X"03b3", X"018e", X"f866", X"0991", X"ff37", X"00d8", X"03ed", X"03c4",
                                                        X"fd57", X"02e9", X"02b6", X"f9ef", X"fecc", X"0507", X"10d4", X"02db", X"017e", X"03e3", X"ffaf", X"06e2", X"f97e", X"0203",
                                                        X"0289", X"0003", X"00fd", X"feb0", X"07f8", X"fc38", X"1115", X"0664", X"0fc3", X"03ac", X"04be", X"0431", X"0a0f", X"0c31",
                                                        X"fb36", X"fd04", X"0510", X"023a", X"f6d1", X"fefe", X"0390", X"0166", X"05de", X"09c7", X"0dd7", X"0375", X"03e7", X"0499",
                                                        X"fa20", X"070f", X"f8b3", X"fcb2", X"fea2", X"ff41", X"fc3b", X"0fd8", X"fe18", X"ff24", X"051d", X"0606", X"08c5", X"ffad",
                                                        X"faf5", X"059f", X"fe20", X"06fa", X"f564", X"fbc2", X"fd1d", X"00ed", X"f9ce", X"0dd5", X"01d9", X"faf6", X"f70b", X"0341",
                                                        X"0349", X"f8a5", X"fc21", X"fb7e", X"026f", X"fbea", X"f8f7", X"fae5", X"ff79", X"fb8b", X"fcde", X"0497", X"03f1", X"fb4c",
                                                        X"fa66", X"080e", X"01b3", X"0084", X"fe08", X"ffbe", X"0145", X"0191", X"f2bc", X"fc6e", X"0134", X"f9e5", X"ff26", X"10e3",
                                                        X"fe45", X"fb51", X"fe9f", X"fda2", X"104b", X"fe69", X"01ac", X"fb0e", X"00c8", X"0b58", X"f7dc", X"fba3", X"fe33", X"020c",
                                                        X"fad4", X"0d6b", X"088c", X"fd37", X"f3eb", X"01fc", X"0cb8", X"009f", X"0290", X"00a5", X"feff", X"1708", X"fa90", X"fdfc",
                                                        X"0633", X"017b", X"f7db", X"08d0", X"05c0", X"fb90", X"0577", X"ff38", X"0bf4", X"ff72", X"0541", X"f8ce", X"01ef", X"1857",
                                                        X"fbb9", X"fdaa", X"0315", X"faf9", X"f87d", X"0a4e", X"feff", X"ffb3", X"ff21", X"0111", X"11e7", X"00a3", X"0920", X"f789",
                                                        X"0273", X"0e74", X"0490", X"feef", X"04f6", X"fcc7", X"fd49", X"05be", X"fa3d", X"f9cf", X"033f", X"fe96", X"0a89", X"fa33",
                                                        X"069b", X"fbc1", X"0095", X"100d", X"fae3", X"ff30", X"00ee", X"fb54", X"fa5e", X"08cf", X"0529", X"f8bc", X"0590", X"fb86",
                                                        X"0597", X"fbb8", X"0368", X"0773", X"0546", X"fa21", X"faa8", X"0293", X"fa69", X"f2f9", X"0493", X"0266", X"011e", X"fd77",
                                                        X"f809", X"fbd5", X"01e2", X"fb55", X"01b6", X"07d4", X"001d", X"005e", X"f85e", X"0199", X"004f", X"f818", X"f88a", X"ff0f",
                                                        X"05ad", X"fcb6", X"0016", X"fe42", X"ffe2", X"02db", X"ff1d", X"0579", X"03bd", X"045b", X"fb28", X"039e", X"04be", X"0129",
                                                        X"f9e1", X"0747", X"048e", X"ffe4", X"ffdd", X"00ee", X"01c1", X"fc27", X"fd8e", X"0235", X"04c4", X"0874", X"fb14", X"0396",
                                                        X"020f", X"061e", X"fc26", X"0d90", X"0702", X"fa37", X"fc63", X"05e3", X"113a", X"02a8", X"037f", X"01ca", X"00bf", X"0b38",
                                                        X"fd46", X"0341", X"0734", X"01d9", X"fca6", X"febb", X"0990", X"fae7", X"031d", X"0bba", X"0e62", X"ff91", X"ff19", X"0341",
                                                        X"01c2", X"0a35", X"f605", X"fdad", X"fc87", X"ff0a", X"03c2", X"065f", X"00b7", X"fbd5", X"028f", X"020f", X"0bbb", X"feaa",
                                                        X"fc9e", X"ffe5", X"ffe3", X"0a02", X"f9f9", X"0245", X"03e1", X"f8f0", X"fae1", X"079d", X"fc27", X"fdbf", X"f62c", X"01f2",
                                                        X"1197", X"fe69", X"fdf4", X"fe0d", X"fd3d", X"0983", X"0031", X"fee1", X"0356", X"f7c3", X"f7a4", X"ff85", X"f782", X"0233",
                                                        X"01ac", X"0692", X"0f49", X"01ee", X"f6ff", X"02b0", X"02ac", X"06e1", X"fca5", X"f8d6", X"025b", X"00d9", X"fa79", X"0904",
                                                        X"fdee", X"019d", X"0231", X"02ec", X"ff4a", X"fcb5", X"f3bf", X"fd75", X"fbdb", X"03b8", X"f79c", X"fa94", X"ff61", X"fbf7",
                                                        X"fc6c", X"03e8", X"fee4", X"ff39", X"f422", X"04ff", X"087f", X"fd26", X"f644", X"feef", X"fb59", X"008e", X"fc63", X"f85c",
                                                        X"010e", X"faec", X"fc1f", X"0b68", X"01d6", X"ff63", X"fcb3", X"0315", X"0bae", X"f71b", X"f77e", X"f7ec", X"fe53", X"01bf",
                                                        X"f68d", X"fba2", X"0562", X"03a0", X"fdb9", X"0bb6", X"0a45", X"fbe3", X"fcdb", X"041f", X"0cb7", X"f934", X"091d", X"f389",
                                                        X"05b6", X"0a85", X"f83a", X"fc80", X"0489", X"0126", X"fea4", X"0495", X"0d43", X"fb9d", X"05f8", X"fe47", X"0906", X"ff48",
                                                        X"07bf", X"fe5f", X"0221", X"11cc", X"f6e6", X"0946", X"019e", X"028c", X"f688", X"0275", X"0919", X"f9c1", X"0967", X"fac6",
                                                        X"09fd", X"0362", X"06bd", X"00b7", X"026c", X"09aa", X"faa9", X"0413", X"fe93", X"f9cc", X"f7db", X"0adb", X"04dd", X"f89e",
                                                        X"0c25", X"00ae", X"04dd", X"ffe9", X"0297", X"0118", X"01f8", X"02eb", X"fc2b", X"0240", X"fbd3", X"faa8", X"f9ba", X"fbcf",
                                                        X"004a", X"fc47", X"00b1", X"fc9d", X"0219", X"feb1", X"0527", X"0a22", X"03e0", X"fe6a", X"fc1a", X"004d", X"f937", X"f5b5",
                                                        X"0364", X"02fa", X"fcf5", X"fb5d", X"fd13", X"fcbe", X"06e3", X"fc02", X"047c", X"0642", X"0a44", X"061d", X"ff8e", X"fd19",
                                                        X"01ef", X"f5ef", X"ff67", X"fcd1", X"0416", X"f7e1", X"e913", X"f789", X"050d", X"f845", X"0162", X"076e", X"0bdf", X"fd90",
                                                        X"f893", X"04ba", X"fe9a", X"fe7f", X"038d", X"ffee", X"02b1", X"f673", X"fc71", X"fb67", X"0956", X"faae", X"0147", X"06b6",
                                                        X"fbb8", X"0374", X"f685", X"024c", X"fcea", X"f7cf", X"fe13", X"0b47", X"00b2", X"f8e4", X"f3e1", X"06c4", X"0de2", X"f8fd",
                                                        X"038f", X"0246", X"fc54", X"10fa", X"fe83", X"00e9", X"ff37", X"fdf4", X"f303", X"0222", X"fd10", X"faba", X"f705", X"0517",
                                                        X"09e6", X"0201", X"04cb", X"033d", X"049a", X"0f60", X"f97f", X"00b0", X"fea7", X"fde2", X"0159", X"016c", X"016f", X"fdb3",
                                                        X"0ab4", X"0491", X"1096", X"043f", X"01a2", X"0740", X"0c75", X"0c36", X"fe02", X"005d", X"fee8", X"fd28", X"fb00", X"ff98",
                                                        X"028a", X"ff2d", X"09f7", X"05aa", X"0830", X"02d5", X"0219", X"01aa", X"fb39", X"0d69", X"f08e", X"faea", X"03e5", X"fcba",
                                                        X"004b", X"0484", X"00c5", X"fea4", X"0a68", X"07d0", X"056a", X"0218", X"fe3a", X"0b92", X"f5cb", X"06d5", X"f8fd", X"fc37",
                                                        X"02cf", X"fd80", X"fa80", X"018b", X"ff22", X"fb72", X"f402", X"064b", X"039c", X"00c3", X"f2d3", X"03b7", X"f87c", X"0368",
                                                        X"eff6", X"fad2", X"0245", X"01be", X"f7fc", X"116a", X"004a", X"fb32", X"faa7", X"03c0", X"fe25", X"f925", X"f1e1", X"ff52",
                                                        X"fd15", X"f956", X"eec1", X"fb41", X"0109", X"024a", X"fb2b", X"08db", X"fdd3", X"fd3f", X"fb24", X"016c", X"07ac", X"fc4f",
                                                        X"f908", X"01ca", X"07ad", X"09ef", X"f680", X"faaf", X"0325", X"fffb", X"ff28", X"0b76", X"fe14", X"fec9", X"f741", X"0349",
                                                        X"0f90", X"f673", X"01e0", X"f4b4", X"02de", X"0500", X"f695", X"ff57", X"0341", X"0405", X"fe9e", X"05dd", X"0125", X"0049",
                                                        X"fd5c", X"0269", X"110f", X"f70b", X"069b", X"fd18", X"03d6", X"0521", X"f73b", X"ffbb", X"feb1", X"01df", X"034d", X"ffbd",
                                                        X"065a", X"ffbe", X"f934", X"0248", X"0fa8", X"fc0e", X"0764", X"06df", X"00d4", X"0a39", X"fc0f", X"fb6c", X"017b", X"0788",
                                                        X"f986", X"0b24", X"053c", X"0180", X"026b", X"0840", X"0d2e", X"fe7b", X"07f2", X"046b", X"07b6", X"0d02", X"fc38", X"fcb2",
                                                        X"fcfd", X"01e6", X"ffc2", X"0353", X"fefc", X"018d", X"037f", X"fff6", X"0432", X"fd84", X"04ea", X"03b3", X"030d", X"032e",
                                                        X"fe39", X"011d", X"fe07", X"fcbb", X"03f9", X"0f6f", X"ffdc", X"fc2c", X"016f", X"02dd", X"00bf", X"038f", X"0207", X"03e8",
                                                        X"079c", X"0ba3", X"0398", X"ff45", X"fe58", X"fefc", X"fbd1", X"0336", X"01e0", X"faaa", X"01dd", X"fb29", X"046e", X"fef6",
                                                        X"06d2", X"0bcb", X"fdf7", X"fa58", X"f49e", X"fe2a", X"003b", X"fed0", X"f79d", X"033f", X"0670", X"fddb", X"f6cc", X"f43d",
                                                        X"030b", X"fc27", X"0159", X"fc48", X"0548", X"1070", X"f537", X"00a5", X"0322", X"0030", X"fad4", X"01d3", X"0478", X"f8a1",
                                                        X"fb00", X"fc94", X"0c10", X"035e", X"ff0d", X"02b9", X"0686", X"0d3b", X"fb17", X"070e", X"03dc", X"0124", X"fdb6", X"04bf",
                                                        X"07f7", X"fa89", X"f59f", X"056f", X"1076", X"0233", X"0399", X"fdef", X"001f", X"07e1", X"f78b", X"032f", X"fb78", X"01a9",
                                                        X"0095", X"0479", X"0436", X"fd14", X"000f", X"0443", X"1047", X"03e9", X"0059", X"0764", X"fe05", X"0494", X"fcff", X"005f",
                                                        X"010d", X"0845", X"fc55", X"0581", X"fe22", X"fff0", X"1032", X"06ef", X"0a30", X"04af", X"0299", X"08c7", X"0092", X"0ccd",
                                                        X"f90e", X"030a", X"0089", X"fe35", X"ff94", X"0c39", X"f871", X"ffb5", X"0cab", X"0788", X"06c4", X"fd36", X"fe6b", X"ff70",
                                                        X"0013", X"069c", X"ff02", X"fc90", X"ffcc", X"fa97", X"fd96", X"0e73", X"fc9d", X"fb3c", X"0699", X"04da", X"0801", X"0146",
                                                        X"fcd2", X"0245", X"03c2", X"0b1d", X"f941", X"ffe4", X"0162", X"02bb", X"f98e", X"0bbc", X"02ae", X"fbbe", X"f62d", X"fe46",
                                                        X"0826", X"ff0d", X"fcae", X"08ad", X"016a", X"0800", X"f53e", X"ff80", X"ff98", X"feba", X"f826", X"1000", X"06b8", X"fa58",
                                                        X"fc13", X"005b", X"0772", X"fe62", X"0190", X"011e", X"fe2d", X"065f", X"f65d", X"fe6d", X"04a7", X"0574", X"fcea", X"fd8a",
                                                        X"feeb", X"ff32", X"0586", X"002e", X"0c6d", X"fe2e", X"0716", X"fec5", X"02b8", X"feb2", X"fb78", X"0260", X"0181", X"0419",
                                                        X"0631", X"005b", X"0186", X"fe35", X"0ca1", X"f95b", X"0e34", X"ff9a", X"02e4", X"fc39", X"06e6", X"0933", X"fbe9", X"03b0",
                                                        X"fd81", X"fb34", X"f941", X"04cb", X"fef7", X"f8c8", X"00fa", X"0354", X"0b06", X"011c", X"0685", X"fa43", X"0457", X"0753",
                                                        X"f8c1", X"027c", X"00a6", X"fc88", X"fa1d", X"feb1", X"fe7f", X"fb87", X"0806", X"0221", X"0d83", X"0247", X"0563", X"fdb0",
                                                        X"04e1", X"0167", X"fa86", X"ff56", X"f943", X"fd00", X"fc1b", X"0582", X"03f9", X"f8ff", X"0379", X"01ce", X"07a5", X"f87d",
                                                        X"04f7", X"fae3", X"0111", X"ff8e", X"fa56", X"0290", X"00c3", X"ff59", X"02b7", X"0789", X"05ce", X"f897", X"f4e5", X"fecc",
                                                        X"fb7b", X"facd", X"00fa", X"0847", X"02c3", X"fbfc", X"f7e0", X"026f", X"feb9", X"fa6d", X"fa83", X"1078", X"fe8a", X"fbfe",
                                                        X"0300", X"fe76", X"05d8", X"fdba", X"03a7", X"03f4", X"0112", X"fc31", X"fb0a", X"007e", X"fc45", X"fc07", X"f8f6", X"ffac",
                                                        X"01c4", X"f958", X"fd09", X"0274", X"0ae9", X"0227", X"00b0", X"fd6d", X"ff0b", X"0cc8", X"fc02", X"fe16", X"0534", X"ff20",
                                                        X"01b0", X"00f2", X"0511", X"f941", X"fc1b", X"0741", X"0d51", X"ff65", X"0020", X"0065", X"0277", X"05c2", X"f9ad", X"0473",
                                                        X"02b4", X"0809", X"fd81", X"01bb", X"0613", X"0068", X"069d", X"0a43", X"093c", X"ff0c", X"fc89", X"0845", X"ffdf", X"1480",
                                                        X"f304", X"fd1b", X"ff84", X"ff43", X"fe7d", X"04a2", X"fce2", X"fd92", X"049c", X"04a0", X"0655", X"020d", X"ff8e", X"0349",
                                                        X"0125", X"0503", X"f823", X"fde6", X"fabe", X"ff73", X"fc9a", X"02b1", X"0142", X"fbc1", X"04a2", X"0700", X"03ad", X"fde5",
                                                        X"0057", X"008e", X"04b3", X"0167", X"ff0f", X"f77d", X"035e", X"fad9", X"00df", X"0428", X"fb2a", X"fb1a", X"02cd", X"010a",
                                                        X"069d", X"f9c4", X"fe69", X"01fd", X"05e5", X"05c9", X"fdc2", X"f7e3", X"00ba", X"fa93", X"fdd6", X"07b8", X"0202", X"ffbd",
                                                        X"fcea", X"03e5", X"01d6", X"0088", X"f546", X"043d", X"ff16", X"fbf4", X"f9e6", X"fb5d", X"0463", X"faf5", X"fc8e", X"085f",
                                                        X"f889", X"fa06", X"fef3", X"fe86", X"07e3", X"fd45", X"0071", X"06e1", X"03c0", X"05f5", X"fdcd", X"fb70", X"fdd5", X"fc6f",
                                                        X"f9cf", X"042d", X"fdb7", X"f8f4", X"eeee", X"fffa", X"0dcb", X"fb15", X"0209", X"fec2", X"0bb8", X"0a64", X"fe1a", X"fd52",
                                                        X"0a95", X"fa41", X"facf", X"0c6e", X"0256", X"fc59", X"f903", X"0015", X"0e02", X"f9f7", X"06f2", X"f909", X"0257", X"0817",
                                                        X"f5bc", X"0310", X"0305", X"0702", X"fd05", X"0207", X"06d4", X"fc5a", X"0674", X"0555", X"0bc1", X"017c", X"094e", X"ff92",
                                                        X"01a4", X"0d45", X"f6bc", X"028b", X"0038", X"0365", X"fbec", X"ffb8", X"06e3", X"fb55", X"0487", X"0292", X"12e9", X"02b6",
                                                        X"05c8", X"f91e", X"fa65", X"0f50", X"01df", X"ffb5", X"fe33", X"ffbc", X"fb3f", X"03b9", X"04a3", X"faee", X"0401", X"03a1",
                                                        X"0dd9", X"fddf", X"06aa", X"fc92", X"0000", X"0b0f", X"fa8b", X"fdee", X"ffe1", X"0554", X"fe83", X"052d", X"0025", X"fb96",
                                                        X"0286", X"fd85", X"06b8", X"f80d", X"ff48", X"0762", X"02e0", X"04f6", X"f853", X"fd6a", X"0374", X"fd69", X"fcc5", X"05d5",
                                                        X"fc82", X"fc85", X"fe0f", X"fe1a", X"0b77", X"fcde", X"fc93", X"ffee", X"001e", X"0157", X"f989", X"fdb3", X"008a", X"fade",
                                                        X"fb5a", X"0228", X"fef8", X"f8a4", X"fca3", X"fc7b", X"0e96", X"fc57", X"fc14", X"08db", X"07c4", X"fba1", X"fcf1", X"ff24",
                                                        X"00e7", X"05d3", X"ffd0", X"0221", X"0375", X"fa3e", X"fcaa", X"03b4", X"0668", X"fb4f", X"0475", X"08ee", X"0251", X"05d5",
                                                        X"fc64", X"ff5f", X"0349", X"ff41", X"f729", X"fffd", X"fe02", X"f932", X"017a", X"0363", X"0ba9", X"0197", X"fec3", X"fca8",
                                                        X"03aa", X"0b93", X"f846", X"0434", X"fd2f", X"004c", X"f953", X"05f2", X"fe93", X"f72d", X"f92b", X"02ac", X"0f3f", X"fd4d",
                                                        X"0022", X"fef9", X"063f", X"1112", X"f96e", X"0025", X"ff01", X"fd3f", X"f423", X"0dc3", X"fcd1", X"fc42", X"03d4", X"066f",
                                                        X"0c60", X"025a", X"0943", X"00ac", X"01f7", X"106a", X"f844", X"04e4", X"04a5", X"ffc2", X"fb49", X"01f7", X"ff4b", X"0015",
                                                        X"0165", X"0803", X"0cdc", X"019f", X"05d6", X"fe9f", X"fe32", X"07e8", X"fa03", X"00e1", X"0407", X"f9e4", X"02f3", X"05b4",
                                                        X"0045", X"fe6f", X"078f", X"0404", X"08a1", X"fc70", X"fbe2", X"076f", X"fda8", X"0207", X"fad0", X"0143", X"04ad", X"f814",
                                                        X"fa28", X"fdbd", X"ff2d", X"ff3d", X"fed2", X"04e9", X"fda2", X"fc88", X"fe4c", X"feae", X"fd6f", X"0a84", X"f6c7", X"fc34",
                                                        X"032f", X"f9c7", X"f770", X"f88b", X"0004", X"fbb9", X"fd06", X"0313", X"0832", X"fa64", X"fd80", X"00f1", X"032f", X"0961",
                                                        X"f72a", X"ff79", X"05c2", X"fbe4", X"f76b", X"082d", X"0b2f", X"fb14", X"f6dc", X"02f5", X"1026", X"f651", X"04df", X"fb61",
                                                        X"051c", X"136d", X"f445", X"ffb9");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ffb9";
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

