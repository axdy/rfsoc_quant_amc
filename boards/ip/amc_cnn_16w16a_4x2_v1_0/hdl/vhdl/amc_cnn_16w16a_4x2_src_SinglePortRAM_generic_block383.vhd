-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block383.vhd
-- Created: 2024-11-04 16:44:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block383
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage32/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block383 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block383;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block383 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fab9", X"0482", X"08fa", X"fda4", X"066f", X"f930",
                                                        X"fedd", X"ff6c", X"f828", X"f42b", X"faf5", X"fd8f", X"0650", X"0c23", X"f6a7", X"f766", X"001c", X"0722", X"01d0", X"0319",
                                                        X"08e4", X"fcc2", X"fc76", X"ff66", X"f765", X"fe20", X"fded", X"f7ff", X"fd09", X"fa23", X"fdcd", X"ff49", X"fd69", X"fe13",
                                                        X"0a85", X"0065", X"0028", X"014b", X"0a3b", X"fe52", X"06a6", X"04b4", X"fd0c", X"0431", X"0312", X"f883", X"00cb", X"0472",
                                                        X"fd8a", X"fa84", X"0a55", X"072a", X"01d7", X"fc67", X"0458", X"fefa", X"f663", X"08d3", X"f596", X"041e", X"0547", X"037e",
                                                        X"03a9", X"fe6a", X"056d", X"0070", X"077f", X"042a", X"03ff", X"00eb", X"07c0", X"f4a6", X"f96f", X"00f5", X"fbb2", X"0125",
                                                        X"0072", X"07a9", X"fa35", X"faff", X"0397", X"03e2", X"05ff", X"fd4b", X"fe19", X"fed5", X"0cff", X"f930", X"fefe", X"03d0",
                                                        X"f94c", X"02c5", X"ff99", X"ff2b", X"02d6", X"f91d", X"06a3", X"0156", X"0a2b", X"ff27", X"05d3", X"fc9a", X"ff45", X"ff4f",
                                                        X"f950", X"00d2", X"f8ab", X"fb64", X"f756", X"fc82", X"ffd5", X"fd89", X"fdb3", X"fb53", X"0d95", X"ffb3", X"01f4", X"fe61",
                                                        X"fd21", X"fafe", X"fece", X"054a", X"fa87", X"f9a8", X"ff0e", X"fe81", X"00b5", X"fe05", X"fe16", X"05ec", X"07a4", X"f365",
                                                        X"f981", X"fea5", X"ff26", X"03ea", X"f721", X"04fa", X"fb80", X"0193", X"04e3", X"fb4d", X"fcd8", X"f895", X"fc39", X"fcec",
                                                        X"06c5", X"ff92", X"0096", X"fd60", X"06b5", X"0445", X"fc3c", X"fece", X"fa62", X"fd32", X"031a", X"fd71", X"febb", X"fbab",
                                                        X"fd80", X"faca", X"0900", X"0147", X"fed2", X"fec4", X"012d", X"ff5d", X"fd42", X"fe08", X"ff63", X"0786", X"0054", X"fec3",
                                                        X"01db", X"fb51", X"ff2f", X"05b8", X"0ba6", X"f8a1", X"065f", X"ff1b", X"098d", X"fccb", X"f512", X"fad2", X"008b", X"ff77",
                                                        X"00cb", X"0394", X"fbce", X"0280", X"fc4d", X"f9a6", X"06c0", X"06b2", X"fe1b", X"00e3", X"f76c", X"fde4", X"fe62", X"f732",
                                                        X"f84e", X"f8fd", X"fe97", X"fef9", X"fe7e", X"fd6a", X"f802", X"f398", X"0492", X"fd1d", X"02f5", X"fead", X"0347", X"008f",
                                                        X"0302", X"00b3", X"fcb1", X"faa4", X"fe72", X"09f7", X"014d", X"fd40", X"0586", X"f970", X"08f6", X"057a", X"0851", X"f9e3",
                                                        X"076d", X"fc6e", X"f99d", X"ff5e", X"fbb7", X"01f6", X"fcd9", X"0881", X"f6d9", X"ff53", X"fc7e", X"fc4c", X"0657", X"02a2",
                                                        X"0392", X"f8e6", X"0753", X"f6b4", X"f92d", X"f5dd", X"fdb6", X"fbb6", X"0089", X"042c", X"f36e", X"fb55", X"fcc5", X"fef6",
                                                        X"0628", X"0011", X"0385", X"fe8d", X"0862", X"003f", X"fd8f", X"f7f3", X"037b", X"fcbb", X"0656", X"0ba3", X"fe85", X"fc06",
                                                        X"fec4", X"01ac", X"0d7d", X"0254", X"0664", X"fad7", X"0512", X"fc2b", X"0384", X"ff95", X"0362", X"ffd0", X"0681", X"f8b5",
                                                        X"0176", X"fc05", X"017f", X"0390", X"06fb", X"fb41", X"02d2", X"0103", X"fc5c", X"fc1b", X"0787", X"fd16", X"fbf5", X"05cd",
                                                        X"fe07", X"fad9", X"02b8", X"fa9e", X"ffc3", X"02c8", X"08e6", X"0478", X"0282", X"fd65", X"09f9", X"fccd", X"f9de", X"fc49",
                                                        X"0303", X"07a9", X"fb2d", X"020c", X"fa72", X"0008", X"01ac", X"022e", X"0cdc", X"ffc7", X"003c", X"fc14", X"1076", X"feb4",
                                                        X"0839", X"0215", X"fefd", X"0049", X"feed", X"0084", X"02e0", X"fcaa", X"00d2", X"0057", X"048e", X"0026", X"00f6", X"fc8b",
                                                        X"0e08", X"fe01", X"ffa9", X"f9d3", X"fdd9", X"fec3", X"0012", X"ff83", X"fd07", X"faba", X"ff5c", X"019d", X"07d8", X"04b5",
                                                        X"fe5b", X"ff17", X"0da7", X"fb42", X"fbc2", X"fd07", X"f680", X"034d", X"04cb", X"ffd3", X"feea", X"fb56", X"02a0", X"ff0e",
                                                        X"074f", X"06a5", X"011b", X"00b0", X"ff49", X"0092", X"f5b8", X"0109", X"fd3d", X"ffba", X"ff0a", X"fb78", X"0025", X"fc06",
                                                        X"09b7", X"043e", X"05fc", X"fc0b", X"048b", X"00a1", X"02fb", X"02d6", X"fbf4", X"fde7", X"f7c2", X"0606", X"011e", X"047d",
                                                        X"ffc6", X"f6e7", X"fe1f", X"fa66", X"0ce4", X"fc85", X"03de", X"feb1", X"00b3", X"018c", X"fb31", X"fd8a", X"fa1d", X"0761",
                                                        X"f862", X"084a", X"0178", X"0607", X"fc1c", X"0252", X"0d0d", X"03af", X"051b", X"fd53", X"00a9", X"ff4f", X"fa26", X"fd10",
                                                        X"fe6d", X"045a", X"04c0", X"0663", X"ff39", X"0515", X"fbe2", X"01c8", X"0035", X"fe76", X"0189", X"fd95", X"fefc", X"00fd",
                                                        X"06dd", X"fe5a", X"015f", X"ffcf", X"0656", X"06d8", X"ff30", X"05da", X"fcc7", X"fe39", X"0608", X"034b", X"ff46", X"0106",
                                                        X"f832", X"fc79", X"fccb", X"f878", X"fd15", X"f6ef", X"0154", X"fe6d", X"047f", X"02d7", X"fe73", X"0222", X"098b", X"06a7",
                                                        X"fe7e", X"fe15", X"1399", X"0061", X"fc2b", X"0078", X"031e", X"01f1", X"f889", X"02dc", X"fedc", X"01ba", X"fafc", X"f52a",
                                                        X"0a43", X"ffc8", X"00ef", X"fcd4", X"ff8b", X"f931", X"f98f", X"f97d", X"fa9c", X"0514", X"fd45", X"03bf", X"fce3", X"fe88",
                                                        X"02fe", X"fbd0", X"0485", X"0301", X"ff22", X"fb35", X"fb10", X"f582", X"fc52", X"0162", X"fca4", X"fc58", X"feec", X"0086",
                                                        X"00dc", X"feed", X"ff2b", X"f949", X"09ba", X"f6f8", X"042f", X"fe71", X"06ed", X"01ea", X"fbb7", X"fe92", X"fe55", X"033a",
                                                        X"0053", X"06e9", X"fe31", X"fe07", X"00d2", X"fc12", X"0941", X"0332", X"0599", X"fc95", X"0dfb", X"fb47", X"f76b", X"fdb3",
                                                        X"fd25", X"fed1", X"0022", X"07b6", X"fc94", X"fc03", X"f70a", X"01e4", X"0973", X"0415", X"fcbf", X"fb8d", X"09ae", X"ff6e",
                                                        X"fdb1", X"0027", X"fb62", X"045b", X"03cb", X"ff52", X"fbc7", X"fb37", X"fd46", X"0010", X"0d43", X"0035", X"03a3", X"006d",
                                                        X"065c", X"fdce", X"f644", X"fe02", X"f78b", X"07a1", X"00d2", X"fcc1", X"fabe", X"f6a4", X"fc7e", X"05e7", X"0953", X"07fb",
                                                        X"01b7", X"ff3f", X"03bd", X"0317", X"0017", X"fe46", X"fc51", X"fe17", X"fb2d", X"efa4", X"0448", X"fc33", X"ffaf", X"0652",
                                                        X"007f", X"fe90", X"fbe0", X"fe7f", X"0306", X"06fd", X"fea4", X"feef", X"f9e5", X"03cb", X"04f3", X"f8ff", X"fbdb", X"fb0e",
                                                        X"02c1", X"fd8e", X"07ed", X"05b3", X"0416", X"0034", X"11a1", X"0023", X"ff05", X"0298", X"fb4a", X"ffc4", X"027f", X"f5e0",
                                                        X"01eb", X"fd37", X"013e", X"fa90", X"0836", X"ff77", X"06b8", X"0065", X"124c", X"fab5", X"f7c9", X"010d", X"fde0", X"fc3a",
                                                        X"0c83", X"0192", X"fcbf", X"011b", X"02c6", X"0067", X"01be", X"0060", X"fb2c", X"0100", X"fe77", X"fc16", X"0853", X"fb4d",
                                                        X"fc87", X"fecb", X"04a6", X"fab1", X"00f4", X"fe91", X"fe0b", X"f4ef", X"0686", X"026b", X"fabb", X"fd1d", X"0469", X"fdb8",
                                                        X"ff27", X"f79d", X"ff85", X"f4fb", X"ff67", X"0677", X"0654", X"00d2", X"fea7", X"fbaf", X"04e7", X"082a", X"042a", X"fa3a",
                                                        X"fc3d", X"f573", X"f427", X"fb83", X"f99e", X"fdc2", X"0308", X"06a1", X"0478", X"fac3", X"0542", X"f848", X"0754", X"01b8",
                                                        X"00e3", X"fa6e", X"08e2", X"f278", X"fed8", X"022a", X"fa68", X"06ac", X"045d", X"f8cc", X"fd40", X"fdc9", X"fd0e", X"fa31",
                                                        X"feca", X"ff0f", X"ff5a", X"f920", X"ff39", X"fb68", X"0353", X"fee3", X"0165", X"0159", X"0931", X"fd56", X"fdbc", X"f96f",
                                                        X"fc89", X"ff9b", X"ffce", X"007e", X"febe", X"fb25", X"091f", X"fe9b", X"fd09", X"ffa6", X"fcbd", X"03fe", X"fabf", X"00f1",
                                                        X"fa8c", X"fd51", X"fdff", X"009e", X"0d34", X"030f", X"017d", X"fd0f", X"0065", X"fbbd", X"fdeb", X"0142", X"fe56", X"010c",
                                                        X"fdf9", X"0a9c", X"ffb6", X"fbfd", X"016e", X"00b6", X"099d", X"fc95", X"00cc", X"0052", X"fdd7", X"0067", X"f3e1", X"021e",
                                                        X"fe5a", X"fec1", X"ffd0", X"f8ff", X"ffa3", X"f980", X"02b3", X"0263", X"0781", X"0493", X"05fd", X"fca6", X"0976", X"0061",
                                                        X"f4e1", X"fd84", X"fb91", X"fff2", X"f8e6", X"09a8", X"0379", X"f885", X"0603", X"05d9", X"0942", X"ff16", X"05cf", X"fe96",
                                                        X"0b43", X"fc28", X"f60e", X"fcbd", X"fd28", X"fb32", X"ff03", X"012e", X"fcd3", X"f9d5", X"0314", X"054c", X"0d2b", X"015f",
                                                        X"060a", X"076b", X"0078", X"00f9", X"f7af", X"024c", X"f9c6", X"fe77", X"03d1", X"f5ec", X"fe76", X"fdd7", X"fe49", X"ff3f",
                                                        X"08ba", X"0316", X"fee6", X"020f", X"0952", X"fcdf", X"02cb", X"01ed", X"000f", X"fe08", X"fae9", X"fd89", X"0191", X"fb93",
                                                        X"fd31", X"063a", X"098c", X"fddc", X"fe9a", X"f9db", X"0987", X"fe00", X"fc05", X"fcbb", X"078a", X"029c", X"059a", X"083f",
                                                        X"fdc4", X"ffe2", X"fb9a", X"fe2f", X"077f", X"fc98", X"fdea", X"fecb", X"04dd", X"fb96", X"fcab", X"0326", X"fcda", X"0622",
                                                        X"f74b", X"0338", X"0029", X"fcb3", X"0351", X"fdfd", X"04da", X"fc51", X"f8e5", X"01d0", X"004c", X"f766", X"07a2", X"0043",
                                                        X"03db", X"fd2c", X"00b0", X"088c", X"01a3", X"fa48", X"fbb0", X"03ad", X"05d8", X"0135", X"0138", X"fc56", X"0b1e", X"01a2",
                                                        X"f93e", X"02fa", X"00b9", X"033a", X"011a", X"088a", X"02a3", X"fb42", X"fa92", X"fde6", X"0325", X"f7df", X"0612", X"fca4",
                                                        X"fbff", X"0596", X"031e", X"03ff", X"fe33", X"018c", X"fae9", X"0ec2", X"fae2", X"fb26", X"f77a", X"fd25", X"0682", X"f915",
                                                        X"09d2", X"ff77", X"0514", X"02fc", X"ff53", X"0579", X"fc60", X"fa62", X"073b", X"f9b4", X"fcfa", X"fe43", X"fd39", X"f66b",
                                                        X"0ab4", X"01fc", X"0255", X"fddb", X"0908", X"f8bb", X"fa97", X"0699", X"02a9", X"0431", X"0368", X"fcbf", X"0036", X"fedf",
                                                        X"016b", X"fec3", X"0951", X"04ee", X"015d", X"02e2", X"04c1", X"0143", X"fe4f", X"fda6", X"f88d", X"fe0a", X"fc64", X"fba7",
                                                        X"fd3e", X"fd72", X"fb84", X"0033", X"0eb4", X"ff62", X"004e", X"fd39", X"0e59", X"0582", X"fdf5", X"fba3", X"fa0d", X"fe0e",
                                                        X"fe7f", X"00d4", X"00b0", X"fc02", X"fd99", X"fa7c", X"066f", X"fd84", X"ff82", X"fc0e", X"fb35", X"fa85", X"fba1", X"f8b9",
                                                        X"fc7e", X"ff73", X"fe54", X"0134", X"0641", X"fe81", X"f8bc", X"fd92", X"090d", X"05cd", X"fd93", X"feeb", X"ffae", X"ff51",
                                                        X"f0e5", X"fb5b", X"fb56", X"00e7", X"04df", X"f85b", X"0143", X"f509", X"fe86", X"05dc", X"084a", X"0027", X"fee6", X"fe53",
                                                        X"fdc5", X"fe70", X"0274", X"fdc7", X"fd53", X"00c8", X"fc4a", X"f535", X"0206", X"ff31", X"fd33", X"ffdf", X"0a12", X"fe5f",
                                                        X"04a4", X"00a5", X"fe22", X"f986", X"f9b7", X"fe1b", X"ff6e", X"f798", X"0047", X"f97b", X"031d", X"fc8e", X"fb5d", X"fc1c",
                                                        X"0c3e", X"f603", X"fcfc", X"fe9a", X"093c", X"fba9", X"f60e", X"fe1b", X"01b6", X"ffb1", X"ffe3", X"f559", X"fc32", X"fd07",
                                                        X"035a", X"fcbe", X"0821", X"fcef", X"06a1", X"fb28", X"0363", X"065f", X"f852", X"fca2", X"0326", X"f76d", X"02fe", X"0187",
                                                        X"f87a", X"f9c3", X"fcd9", X"f51e", X"057a", X"fee1", X"087f", X"f9a7", X"0670", X"fe6d", X"fa6e", X"034d", X"00be", X"00a0",
                                                        X"f981", X"f837", X"0077", X"0069", X"feee", X"ffe5", X"0600", X"f944", X"066a", X"febe", X"0837", X"fae5", X"005c", X"0622",
                                                        X"fe18", X"fd09", X"00c5", X"fde2", X"fb1e", X"fb10", X"fbea", X"fd85", X"0697", X"01f0", X"050e", X"ffa5", X"0637", X"013c",
                                                        X"024f", X"00bc", X"05d9", X"05d0", X"fde5", X"f52e", X"00f7", X"fead", X"fd36", X"fad2", X"0f38", X"fe1d", X"006b", X"fdc9",
                                                        X"06bf", X"0548", X"fe36", X"052f", X"0162", X"fe03", X"0267", X"028d", X"07e3", X"00b7", X"fad1", X"01ed", X"0b79", X"fdc3",
                                                        X"0436", X"fef4", X"1008", X"fdaf", X"ffaf", X"f9ee", X"fddf", X"fe2a", X"fc09", X"fe11", X"f90d", X"fa3f", X"f85f", X"0a98",
                                                        X"0766", X"0115", X"03ca", X"fe49", X"13d1", X"fc90", X"fc88", X"fa4f", X"0363", X"fbf3", X"0417", X"0423", X"faf9", X"fdc7",
                                                        X"fe1f", X"0add", X"0487", X"096c", X"feb1", X"0022", X"0451", X"feb7", X"0311", X"0273", X"02ae", X"03b3", X"0066", X"049b",
                                                        X"06ad", X"ff01", X"fc9c", X"fbdf", X"09e8", X"028e", X"00d1", X"02a9", X"0970", X"00a2", X"0141", X"04b1", X"0221", X"fee2",
                                                        X"00a0", X"fa1f", X"ffc5", X"ff1f", X"ff1f", X"fe03", X"0d51", X"f996", X"0733", X"fcf8", X"07f4", X"03f3", X"0684", X"fecf",
                                                        X"fbc5", X"034c", X"015f", X"fae9", X"01e7", X"ff74", X"046d", X"0027", X"0a9f", X"fce5", X"0135", X"fca2", X"ff2d", X"009d",
                                                        X"ff74", X"0024", X"00f3", X"04e3", X"fe76", X"fc89", X"ffb5", X"0398", X"fe89", X"048a", X"056e", X"f8f5", X"02c7", X"043f",
                                                        X"0afa", X"fe98", X"fd4a", X"ffdf", X"fac6", X"fcf2", X"02e7", X"0bc8", X"016e", X"ffb9", X"fe65", X"033e", X"08a9", X"0684",
                                                        X"02ae", X"fef7", X"0f19", X"fd85", X"f57a", X"039a", X"049e", X"fae0", X"fbd0", X"ee44", X"fdb7", X"ffc7", X"fd64", X"0a53",
                                                        X"09b2", X"fed4", X"fbcd", X"fb2a", X"0d45", X"ff35", X"fbac", X"fd5c", X"fabd", X"fc1a", X"f6fb", X"0110", X"fcd9", X"f983",
                                                        X"fc1e", X"002d", X"0e42", X"fecb", X"0215", X"f94f", X"07c4", X"0326", X"fdae", X"f71a", X"ff3a", X"0385", X"f62f", X"faaf",
                                                        X"02dc", X"fbc8", X"f57a", X"02a4", X"043c", X"0480", X"0469", X"fd5a", X"feff", X"ffc4", X"fb5f", X"fc02", X"00df", X"ff32",
                                                        X"0363", X"f74c", X"017b", X"f759", X"fdee", X"fd61", X"ff9c", X"ff66", X"065f", X"fd54", X"062a", X"0087", X"ffed", X"0864",
                                                        X"019d", X"0220", X"0535", X"0aa6", X"fb06", X"fa77", X"ff5e", X"0058", X"06a5", X"025a", X"07c3", X"fdcc", X"05cb", X"0599",
                                                        X"fe99", X"ff78", X"0457", X"fdf2", X"fee0", X"048d", X"fea9", X"fccb", X"ffb1", X"fa2f", X"0429", X"fb4a", X"08cc", X"fa57",
                                                        X"035b", X"fbef", X"0007", X"fb3b", X"05ff", X"f6fc", X"fdca", X"07ce", X"0092", X"0543", X"fed5", X"0393", X"0546", X"0448",
                                                        X"0284", X"fee7", X"03cd", X"00e4", X"01ac", X"020d", X"00ed", X"fda9", X"fe54", X"0a7a", X"fd35", X"faff", X"fc6b", X"fe9c",
                                                        X"0643", X"fff0", X"01b5", X"0073", X"01b8", X"046f", X"0488", X"01e3", X"facd", X"ff7b", X"01b1", X"011c", X"0630", X"f7f0",
                                                        X"010c", X"fcfa", X"0b5a", X"fe3e", X"06dc", X"0045", X"0ee2", X"03c9", X"fe59", X"075d", X"fcc3", X"0442", X"fb4e", X"00bf",
                                                        X"04c9", X"fce3", X"fc1a", X"0465", X"0be8", X"0353", X"044c", X"fefc", X"0a37", X"0238", X"f8c0", X"02e7", X"fb1b", X"fac4",
                                                        X"fa50", X"fb50", X"fd35", X"023a", X"06b2", X"0562", X"095f", X"02bd", X"f784", X"fea1", X"0fe7", X"fe43", X"00ff", X"02cb",
                                                        X"f976", X"06a6", X"0571", X"01b3", X"041a", X"02f8", X"fd33", X"f994", X"0a4a", X"0982", X"02eb", X"f83e", X"089f", X"fbcd",
                                                        X"fc51", X"fb97", X"f678", X"fe79", X"04d7", X"fef3", X"043f", X"fdcb", X"029b", X"0846", X"fe2a", X"f6fb", X"fdf6", X"02b9",
                                                        X"f9f2", X"fbad", X"fd0a", X"0113", X"fb80", X"ff0a", X"fe03", X"fdc2", X"feb2", X"fda2", X"fec5", X"0218", X"05d1", X"0220",
                                                        X"f8c3", X"03e8", X"0dc1", X"f849", X"f93d", X"0736", X"026d", X"fa3c", X"022a", X"fa9c", X"ff3b", X"fd74", X"fedc", X"f93d",
                                                        X"04b1", X"013f", X"f980", X"029b", X"0344", X"0131", X"0468", X"02b5", X"fdd2", X"fad5", X"0383", X"0336", X"09e3", X"01f4",
                                                        X"03b6", X"f17c", X"08d9", X"0523", X"0644", X"0101", X"024c", X"fe96", X"fd8b", X"fbfc", X"fee5", X"fbaf", X"01b7", X"0460",
                                                        X"025d", X"fb9b", X"fd46", X"01ad", X"07ea", X"0407", X"0635", X"fda7", X"fe67", X"fb7f", X"ff40", X"fb1b", X"02f0", X"ffc9",
                                                        X"029b", X"0308", X"f718", X"fbc3", X"004f", X"ff05", X"0b28", X"fd00", X"fe23", X"ffc1", X"023c", X"000f", X"f900", X"ffe4",
                                                        X"0377", X"fff4", X"f8dd", X"ffe6", X"fb5e", X"03d7", X"fbca", X"fabc", X"00ce", X"ff81", X"026a", X"fb85", X"0458", X"f7b4",
                                                        X"ff32", X"026a", X"04c0", X"025e", X"0749", X"ee04", X"018b", X"0732", X"f45f", X"fef9", X"0519", X"02d1", X"fe87", X"fcce",
                                                        X"fe93", X"f677", X"f904", X"0232", X"ff18", X"ffc1", X"00ba", X"eece", X"0323", X"007a", X"f407", X"feb9", X"04cd", X"fc71",
                                                        X"f965", X"016e", X"04df", X"0094", X"fa10", X"04a8", X"ffd6", X"02f6", X"f8cf", X"f4b7", X"f957", X"fcf6", X"f6a9", X"0713",
                                                        X"0c45", X"fecc", X"01b3", X"ffcc", X"0489", X"0485", X"02e5", X"039e", X"fcd9", X"021c", X"f504", X"f8ee", X"011c", X"fb1c",
                                                        X"fa34", X"fdd5", X"057a", X"0654", X"febc", X"fe8a", X"0d4e", X"feba", X"02cf", X"0392", X"f630", X"0103", X"f853", X"ef9f",
                                                        X"01ef", X"fafb", X"fcde", X"0550", X"04c7", X"0040", X"fe26", X"fe0e", X"084b", X"feaf", X"fe63", X"fcb3", X"fbfa", X"f7ea",
                                                        X"0046", X"0427", X"f75a", X"f998", X"0697", X"0256", X"03a8", X"03dc", X"fdbb", X"01f9", X"009a", X"0462", X"044f", X"fac7",
                                                        X"f8dd", X"f883", X"0407", X"febe", X"fdde", X"f75e", X"014a", X"ff4d", X"02bc", X"fc73", X"01fc", X"ff9d", X"f795", X"0678",
                                                        X"fcd7", X"fcf2", X"fc89", X"fbc1", X"0619", X"f572", X"0076", X"f8ce", X"fe3b", X"f861", X"0af9", X"fa16", X"01b4", X"01f7",
                                                        X"06f7", X"f6ff", X"010d", X"f998", X"fcc0", X"f90f", X"03e1", X"fa0d", X"fcf8", X"fc88", X"003c", X"00d0", X"082b", X"0155",
                                                        X"06cc", X"ffb6", X"05eb", X"fbd5", X"0175", X"019b", X"ff1b", X"fa97", X"f723", X"050c", X"ffeb", X"0169", X"03e0", X"0000",
                                                        X"05c5", X"049f", X"02ca", X"01ab", X"0814", X"ff6d", X"023c", X"08b7", X"0296", X"0330", X"ffa8", X"0581", X"01cd", X"0128",
                                                        X"fb88", X"fc57", X"05ae", X"00d2", X"02f1", X"fd77", X"0a1b", X"ffc0", X"00b5", X"fd3d", X"f48f", X"fd9a", X"f80a", X"fc5f",
                                                        X"fccf", X"010f", X"f890", X"f8fd", X"0738", X"fc66", X"0156", X"fb54", X"0182", X"01e3", X"0142", X"feb3", X"feed", X"ff1c",
                                                        X"0073", X"f64d", X"fe4c", X"fcdb", X"fc2e", X"fce5", X"093e", X"f6b0", X"fc06", X"f9f3", X"0487", X"0245", X"0058", X"f8f1",
                                                        X"ff95", X"fb3b", X"fe53", X"f944", X"0074", X"001e", X"0250", X"fec6", X"04a5", X"0399", X"011f", X"fdc9", X"f925", X"02b0",
                                                        X"fba6", X"fcb4", X"ff1d", X"fc81", X"0260", X"0ba9", X"ff7f", X"003d", X"fb9e", X"ff70", X"0500", X"fc3e", X"0230", X"fba3",
                                                        X"047a", X"fc59", X"f50e", X"03c4", X"fead", X"0172", X"02a6", X"fcac", X"fc0e", X"0619", X"f718", X"ff42", X"0d0a", X"0293",
                                                        X"0242", X"fb56", X"09d4", X"fc2f", X"fb2a", X"f972", X"f87e", X"fcf4", X"ff0f", X"02ae", X"f651", X"fe74", X"fe9c", X"05e4",
                                                        X"0773", X"ff20", X"0089", X"f95e", X"0b78", X"00d4", X"0266", X"fb48", X"ffea", X"fc4d", X"f30c", X"fc76", X"fc01", X"0020",
                                                        X"fe46", X"0258", X"04c5", X"042d", X"0141", X"fc99", X"fdee", X"fa23", X"ffa4", X"f8b6", X"fc57", X"016f", X"0112", X"0865",
                                                        X"0076", X"fb10", X"fa2a", X"03e0", X"018b", X"fddf", X"00bd", X"fee7", X"fc69", X"01c4", X"0004", X"ff1e", X"f406", X"0120",
                                                        X"fd67", X"fa38", X"0287", X"fb47", X"fbb8", X"04ca", X"038e", X"005a", X"02f3", X"ff01", X"0144", X"f5b9", X"f96a", X"037f",
                                                        X"f3fa", X"ff8f", X"08cc", X"f5e5", X"fb45", X"fe29", X"00de", X"06c7", X"03a5", X"ffa2", X"fc82", X"01f2", X"0c89", X"fb9d",
                                                        X"0197", X"04af", X"fa7e", X"fb88", X"ff56", X"f415", X"fe0d", X"fcd1", X"0510", X"03a0", X"04b5", X"06ea", X"fe60", X"f9c4",
                                                        X"0609", X"011e", X"f97a", X"033c", X"fba2", X"feb5", X"fcfa", X"fda1", X"02b7", X"0016", X"013f", X"0677", X"fdfb", X"0917",
                                                        X"0441", X"fb37", X"fe5c", X"0528", X"fb1f", X"0283", X"fa5e", X"00ab", X"00a8", X"0531", X"014f", X"fcc6", X"06d9", X"fd45",
                                                        X"029f", X"01f9", X"019e", X"fd93", X"0979", X"fccb", X"08dd", X"009e", X"fe52", X"fc4d", X"029d", X"08b8", X"ff4f", X"fdd8",
                                                        X"0166", X"ff8d", X"0232", X"fdbd", X"f9e8", X"0290", X"0961", X"ffc2", X"03f4", X"fd89", X"f7a8", X"047e", X"03ba", X"02aa",
                                                        X"04d2", X"fb5f", X"028c", X"fe6f", X"0ccd", X"0283", X"0480", X"fd25", X"ff85", X"02ef", X"0295", X"f94d", X"ff98", X"fed7",
                                                        X"fd24", X"0399", X"030e", X"f7e2");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f7e2";
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

