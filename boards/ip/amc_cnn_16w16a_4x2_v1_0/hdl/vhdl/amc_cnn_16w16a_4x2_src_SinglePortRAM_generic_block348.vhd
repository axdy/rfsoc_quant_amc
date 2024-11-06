-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block348.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block348
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage115/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block348 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block348;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block348 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fefd", X"03bb", X"fcf6", X"f544", X"042c", X"f8da",
                                                        X"0fdc", X"f453", X"0836", X"0b14", X"fe57", X"fb6c", X"0335", X"09a3", X"0e36", X"f474", X"fcf5", X"0908", X"006b", X"f6d4",
                                                        X"06b2", X"fd5d", X"0e00", X"f89d", X"05c7", X"0ac2", X"ff79", X"f515", X"0362", X"00f2", X"0c00", X"fc57", X"fc87", X"0805",
                                                        X"fc4f", X"f325", X"0a8a", X"ffd9", X"06d6", X"f75d", X"ff98", X"07a9", X"fecc", X"f39e", X"0065", X"fac4", X"06c8", X"00a0",
                                                        X"0143", X"04ad", X"0adb", X"f397", X"0951", X"ffe7", X"1501", X"fac8", X"0089", X"070f", X"fe22", X"ec1b", X"0222", X"0d10",
                                                        X"0a33", X"02a2", X"ff41", X"048b", X"029b", X"f7bf", X"09b5", X"fa0e", X"142f", X"fbcc", X"0389", X"03c9", X"00b8", X"ec5a",
                                                        X"fe65", X"0500", X"0a79", X"029d", X"fd44", X"060e", X"021e", X"f3dc", X"08b8", X"fb74", X"106a", X"fce0", X"005f", X"00d9",
                                                        X"fd59", X"f75b", X"feba", X"ff2c", X"079e", X"00e3", X"fce0", X"04e5", X"059a", X"f571", X"0a27", X"ffc8", X"08ed", X"fc3c",
                                                        X"0670", X"08a2", X"003a", X"fcf1", X"fc42", X"ff0c", X"09b7", X"fd24", X"f95a", X"017c", X"06b9", X"f556", X"0990", X"fd77",
                                                        X"0005", X"fdd7", X"ffdc", X"086f", X"021b", X"f66b", X"fee9", X"032e", X"09ab", X"014b", X"fc1a", X"064c", X"fd2a", X"ef39",
                                                        X"0718", X"ffde", X"0c63", X"feae", X"0333", X"082e", X"fcb6", X"f7ed", X"02cd", X"022d", X"063f", X"0231", X"ffb5", X"065e",
                                                        X"07b9", X"f4b6", X"0b0b", X"0232", X"1040", X"fd71", X"00ff", X"0bf5", X"00eb", X"ec98", X"fb17", X"03fe", X"08d1", X"01de",
                                                        X"fd92", X"0d0b", X"0a56", X"f19d", X"0ad9", X"fe82", X"0f0b", X"fefe", X"ffcf", X"0871", X"0013", X"ec80", X"fe4b", X"0514",
                                                        X"0028", X"04ce", X"fbae", X"0909", X"0b3d", X"f754", X"0b15", X"fe84", X"0e6a", X"02ac", X"fa53", X"05f2", X"0352", X"f1d0",
                                                        X"f937", X"0922", X"05de", X"ffdb", X"fde6", X"0797", X"09c9", X"fac3", X"0554", X"fe85", X"102c", X"fb3f", X"0006", X"02e2",
                                                        X"fe7c", X"f3b6", X"fddb", X"05eb", X"06fd", X"fb6b", X"fe17", X"06d5", X"0766", X"f968", X"0a05", X"fdfd", X"0fe8", X"fb1d",
                                                        X"fcf2", X"05bc", X"fd5d", X"f9ca", X"ffe5", X"0653", X"034b", X"f7f6", X"f7f4", X"0825", X"05e2", X"f6b2", X"01c0", X"fb84",
                                                        X"08b4", X"fd3b", X"fb71", X"02d2", X"fc83", X"f64e", X"ff12", X"07c0", X"0697", X"faf9", X"fc62", X"0aae", X"02c4", X"f928",
                                                        X"06fe", X"fd1a", X"1199", X"02f2", X"fd89", X"06ed", X"fe37", X"f7ce", X"fe0d", X"01aa", X"09df", X"fa5d", X"0034", X"05c8",
                                                        X"04d6", X"fb0a", X"0914", X"fca0", X"05b2", X"fe24", X"ffee", X"0994", X"022a", X"f691", X"fe50", X"098c", X"07b8", X"f882",
                                                        X"fbab", X"0dbe", X"fe7d", X"f620", X"06bb", X"ff51", X"0f91", X"fc9d", X"ffea", X"08fd", X"fee8", X"f164", X"02fb", X"05cd",
                                                        X"0ae4", X"fdcc", X"003c", X"045c", X"049c", X"f6a6", X"073d", X"0027", X"1082", X"fee4", X"03a2", X"0aa3", X"0382", X"f725",
                                                        X"fdd8", X"04c8", X"104e", X"f9ab", X"00b7", X"07a6", X"09b3", X"f02b", X"0b9f", X"004e", X"1167", X"ff83", X"00f0", X"091e",
                                                        X"01ed", X"f47f", X"0429", X"0669", X"0981", X"fb3e", X"fd51", X"062e", X"0a5c", X"f471", X"080d", X"fba9", X"109a", X"fad2",
                                                        X"fd98", X"0810", X"ffb0", X"ef1a", X"00d4", X"08ed", X"0510", X"fcca", X"fa0f", X"038d", X"0a87", X"fb9f", X"00da", X"feb0",
                                                        X"1080", X"fd2f", X"0821", X"04c6", X"03ed", X"f8ae", X"faae", X"fd27", X"0aff", X"fe53", X"fb8c", X"0135", X"ffa6", X"ef2d",
                                                        X"03ba", X"fd5c", X"0b95", X"f92d", X"fd20", X"08d8", X"ff88", X"faef", X"f7bb", X"0150", X"07fd", X"fed2", X"fdec", X"04dd",
                                                        X"01b8", X"f960", X"071d", X"fc41", X"0606", X"fa0c", X"fcb7", X"0b71", X"ff49", X"f7ee", X"fc40", X"03b2", X"09ba", X"fc21",
                                                        X"fd9b", X"036e", X"fd93", X"f837", X"03ed", X"fd21", X"07cf", X"f5a8", X"0336", X"0acc", X"fe54", X"f458", X"fff5", X"022b",
                                                        X"0af2", X"fcae", X"00a3", X"0786", X"ff3d", X"f6fe", X"0437", X"fbc1", X"0650", X"fb9d", X"fffe", X"07b4", X"fd5f", X"f1b3",
                                                        X"01bb", X"03c7", X"0b3c", X"fc6f", X"fdb2", X"0a04", X"041d", X"f1d3", X"0825", X"0053", X"0880", X"fb9a", X"033e", X"0a26",
                                                        X"0244", X"ee91", X"017a", X"0185", X"0613", X"0235", X"ff4c", X"0c64", X"03d9", X"e8b9", X"08f1", X"fd96", X"100f", X"fcfa",
                                                        X"0198", X"0909", X"06ef", X"f3be", X"010f", X"037f", X"077b", X"02da", X"f965", X"066c", X"08df", X"f252", X"0350", X"fc8b",
                                                        X"0c04", X"ff76", X"01b7", X"0a7b", X"fe9a", X"f0cd", X"ffca", X"0190", X"088a", X"fd1b", X"f964", X"002e", X"0865", X"f90d",
                                                        X"fce6", X"fd9d", X"0a3e", X"fb33", X"0327", X"05a4", X"fe4a", X"f9d5", X"fac3", X"0147", X"0c7b", X"fad0", X"f75f", X"06e7",
                                                        X"0938", X"f7bc", X"06f7", X"ff7a", X"07bf", X"fb03", X"06e0", X"04d1", X"0182", X"f891", X"fe33", X"042f", X"0d72", X"fa05",
                                                        X"f958", X"02ec", X"04cf", X"f7d5", X"0107", X"fd17", X"0581", X"00e5", X"032d", X"02d4", X"01f6", X"f812", X"fe13", X"026e",
                                                        X"0aff", X"fa80", X"fe40", X"0581", X"fd83", X"f617", X"0021", X"018e", X"02e3", X"02f6", X"fd0d", X"0776", X"fbe8", X"f4e6",
                                                        X"0066", X"055c", X"09ec", X"fb95", X"fe08", X"06cd", X"03f9", X"f78c", X"014d", X"feea", X"0c66", X"ff75", X"055f", X"0477",
                                                        X"fc36", X"f85e", X"fd93", X"043f", X"0d1d", X"fc98", X"f99c", X"05b4", X"0430", X"f6da", X"013b", X"fca4", X"0ee6", X"fe0c",
                                                        X"04c6", X"0462", X"fdba", X"f828", X"fd2f", X"03f9", X"0c03", X"fb6e", X"faeb", X"05b5", X"01ad", X"f837", X"fd70", X"fed5",
                                                        X"132e", X"fc70", X"00cc", X"03cb", X"fb4e", X"f744", X"f977", X"077d", X"05d5", X"ff45", X"f764", X"0070", X"0ea0", X"fcfa",
                                                        X"003a", X"feb0", X"178a", X"ff54", X"0307", X"fe0c", X"f96b", X"f47c", X"fbc2", X"0c60", X"0600", X"fa77", X"fa3e", X"0125",
                                                        X"0fe1", X"fa7a", X"feb7", X"f849", X"075b", X"fd12", X"047d", X"fea9", X"f79e", X"fbbc", X"fbc0", X"01e4", X"0745", X"f71e",
                                                        X"f85d", X"03ff", X"0790", X"f541", X"fb7f", X"fa12", X"030f", X"f90c", X"0252", X"001a", X"fa04", X"fec9", X"0377", X"fad2",
                                                        X"05e6", X"f386", X"f931", X"0001", X"0526", X"ef30", X"fa65", X"fc05", X"012e", X"f85f", X"036a", X"0101", X"fa94", X"f914",
                                                        X"0634", X"fa28", X"0986", X"f5d7", X"f9d5", X"027a", X"0679", X"f3a6", X"028f", X"fad7", X"02b7", X"f8c0", X"0200", X"03f6",
                                                        X"f8cb", X"f87b", X"00d7", X"ffb7", X"09e2", X"f726", X"fcc8", X"051d", X"0369", X"fb21", X"026b", X"0017", X"0a49", X"fb37",
                                                        X"0769", X"0304", X"fa50", X"f7b4", X"0519", X"fa5d", X"0b0c", X"fa54", X"fb46", X"05f6", X"048b", X"f04f", X"0112", X"fc34",
                                                        X"0767", X"faf9", X"04f5", X"0706", X"fc7d", X"f540", X"03f5", X"fed5", X"06ea", X"fcc0", X"f7d4", X"01b1", X"0757", X"f062",
                                                        X"02b2", X"fd3f", X"0e54", X"fce3", X"009b", X"0799", X"fc03", X"ef26", X"0211", X"fbd5", X"0bd8", X"fdf8", X"fdfd", X"00de",
                                                        X"066e", X"ee56", X"00eb", X"ffda", X"09e9", X"f92b", X"ffcf", X"0504", X"fb84", X"f75f", X"fcb2", X"06ad", X"0525", X"f59a",
                                                        X"fed6", X"0363", X"0103", X"f342", X"0218", X"fc7f", X"0bb6", X"f9d9", X"061d", X"09fd", X"fe95", X"f7fa", X"fba0", X"fe03",
                                                        X"0714", X"fafd", X"f7d8", X"04a8", X"076f", X"ffde", X"014a", X"fe0c", X"0a70", X"f818", X"feb9", X"0825", X"ffca", X"f664",
                                                        X"0032", X"0273", X"08d1", X"fab3", X"faf2", X"02be", X"0594", X"f902", X"03fe", X"fe4e", X"0a1a", X"f85b", X"fe63", X"0626",
                                                        X"fab3", X"ffb4", X"0094", X"fef2", X"06e9", X"fe82", X"fbb6", X"00d4", X"073f", X"f98e", X"0437", X"fd06", X"0a99", X"fab4",
                                                        X"07bd", X"0652", X"f9cb", X"f8ff", X"fbfe", X"00b5", X"05b8", X"fc27", X"0062", X"0201", X"05c2", X"f563", X"ff2c", X"fe9d",
                                                        X"0e20", X"fd04", X"078a", X"079c", X"fe3e", X"f8ac", X"fccc", X"036c", X"0ad0", X"0168", X"01c7", X"0632", X"063f", X"eea0",
                                                        X"04f5", X"033a", X"0b46", X"fc4b", X"0295", X"086c", X"fe88", X"f963", X"ff2b", X"0c1b", X"104c", X"0047", X"02fd", X"02b1",
                                                        X"0eb3", X"f4e8", X"0375", X"006b", X"0bb2", X"fa35", X"03cc", X"0349", X"fde6", X"ef60", X"02ab", X"085d", X"0580", X"fbdf",
                                                        X"fc8c", X"fb7d", X"0e28", X"f92f", X"0311", X"ff74", X"0c42", X"f766", X"01e8", X"0087", X"fa3d", X"f535", X"ff81", X"0839",
                                                        X"04f7", X"fc10", X"ff1a", X"ff41", X"066b", X"fb8a", X"ff1c", X"fa46", X"07f1", X"f565", X"00d7", X"0190", X"fc01", X"fa20",
                                                        X"0117", X"069c", X"0b68", X"fd52", X"fc8d", X"fe4e", X"021a", X"fbeb", X"ff5f", X"fd70", X"0e60", X"f910", X"00ba", X"00c6",
                                                        X"fb3a", X"f6f0", X"02f5", X"02b5", X"0bbe", X"f6e8", X"0083", X"02f5", X"0753", X"f3e5", X"0508", X"fe48", X"0f2f", X"f771",
                                                        X"fe09", X"03da", X"ffba", X"f827", X"fcee", X"0147", X"056a", X"f958", X"fdf1", X"0c89", X"01ca", X"f80b", X"ffe9", X"fecf",
                                                        X"06a0", X"fc50", X"fdca", X"0367", X"019a", X"f9a4", X"fde4", X"06a4", X"0969", X"fe31", X"00c9", X"0a8b", X"fe7d", X"fbf9",
                                                        X"0377", X"0196", X"0b6b", X"fc75", X"00e8", X"0687", X"fe42", X"f4a7", X"021f", X"065b", X"0990", X"ffb9", X"fd3f", X"0964",
                                                        X"0495", X"f0a3", X"069d", X"0228", X"10f0", X"fd4c", X"fb06", X"0b38", X"fdc3", X"f6a6", X"05b9", X"03e4", X"0e2d", X"ff11",
                                                        X"0022", X"09a3", X"0f42", X"ef8a", X"0812", X"fea5", X"0e09", X"fc30", X"fc82", X"0933", X"012c", X"edfc", X"0412", X"01ed",
                                                        X"081c", X"ffc5", X"f97c", X"0a37", X"05b6", X"f3fb", X"08c5", X"00f8", X"0e04", X"fd4b", X"ff9f", X"05b0", X"ffb3", X"f725",
                                                        X"fff3", X"06e6", X"0836", X"fe88", X"fb4d", X"09c2", X"0417", X"fce1", X"082a", X"faf1", X"0eb1", X"fde8", X"0380", X"091a",
                                                        X"0047", X"ed68", X"ff70", X"06e6", X"0878", X"fd4a", X"fe6a", X"04fa", X"054e", X"f756", X"0938", X"fde4", X"0c7d", X"fa61",
                                                        X"00b6", X"03b9", X"0044", X"fb77", X"fd7c", X"05cd", X"06fd", X"fcca", X"ff0c", X"0661", X"0742", X"f40e", X"092d", X"fcff",
                                                        X"0de3", X"fb0f", X"feba", X"0705", X"01b3", X"f8a8", X"fd15", X"0863", X"091f", X"feac", X"0539", X"0709", X"070e", X"f4be",
                                                        X"03da", X"fecf", X"0dea", X"fe93", X"03e2", X"095d", X"ff85", X"f3ac", X"fee9", X"0865", X"0f41", X"fd24", X"fdd6", X"078c",
                                                        X"0c54", X"f6dd", X"04e8", X"0099", X"0f02", X"fcf9", X"02a6", X"08ad", X"03b9", X"f288", X"fff9", X"0aad", X"0897", X"fc40",
                                                        X"fa8a", X"0d09", X"01fb", X"f588", X"0246", X"ffc0", X"0fd6", X"faad", X"03b0", X"0452", X"05d9", X"f802", X"faa2", X"05db",
                                                        X"0c8d", X"fdbc", X"fb5a", X"0b9b", X"067a", X"ff1f", X"03e7", X"0019", X"115a", X"fe26", X"00eb", X"01df", X"030d", X"f049",
                                                        X"fd83", X"038f", X"0a05", X"0011", X"fa5c", X"078e", X"0d88", X"fbde", X"ff74", X"00a7", X"1826", X"fb59", X"0685", X"02d0",
                                                        X"0099", X"efe1", X"feea", X"0405", X"0921", X"f9fd", X"fbab", X"0724", X"0cc8", X"f737", X"fbae", X"fb45", X"0ddf", X"fc29",
                                                        X"ff0f", X"ffaf", X"fbba", X"f160", X"fa2a", X"01d3", X"05bd", X"f95b", X"f57e", X"025e", X"094b", X"fddf", X"0028", X"fb07",
                                                        X"0355", X"f9da", X"001f", X"0299", X"f84d", X"f6fb", X"fd6e", X"fe39", X"07de", X"f3d6", X"f6b9", X"0340", X"0036", X"f6e3",
                                                        X"faee", X"fcfa", X"00fe", X"fd13", X"01c2", X"02c6", X"fc46", X"f9f6", X"f7e3", X"0234", X"0799", X"f37c", X"fc8e", X"0085",
                                                        X"ff5d", X"f69f", X"ffa0", X"0046", X"01d4", X"00df", X"ffc8", X"06ac", X"fab8", X"f3a3", X"ff5f", X"fb96", X"095a", X"f6ae",
                                                        X"fec0", X"0309", X"0167", X"f386", X"fd6b", X"fdf7", X"0928", X"f8a2", X"fc3a", X"037e", X"fe1b", X"f250", X"020a", X"fac2",
                                                        X"0796", X"fc8f", X"ffff", X"03fb", X"04c3", X"f33a", X"fd98", X"fe7c", X"11cd", X"f773", X"020d", X"089a", X"fa02", X"f6b4",
                                                        X"01ef", X"f9f4", X"0e1e", X"f8aa", X"f94f", X"0590", X"0295", X"fe65", X"01b3", X"fb83", X"0e6b", X"f93b", X"ff45", X"038c",
                                                        X"fe45", X"f6e7", X"01d0", X"fddd", X"0c00", X"fc04", X"fede", X"04ef", X"0524", X"fd19", X"0078", X"fe15", X"109d", X"f869",
                                                        X"0685", X"0404", X"01a4", X"f59d", X"001b", X"fbf2", X"12b0", X"f91a", X"ff17", X"0313", X"068f", X"f7fb", X"fb0b", X"fdc8",
                                                        X"071d", X"fad2", X"0826", X"0295", X"fe83", X"f6ca", X"0222", X"f5e2", X"0bd0", X"faa0", X"f55f", X"fdf0", X"0b2a", X"f9a6",
                                                        X"fdbc", X"fa8f", X"0cfa", X"fb58", X"0403", X"012e", X"fd2e", X"fcb0", X"022f", X"fb3b", X"0d46", X"f70b", X"f5c2", X"ff6d",
                                                        X"066a", X"f698", X"fa76", X"fab3", X"089e", X"fae0", X"02a0", X"01d7", X"f92f", X"f9cf", X"009e", X"f835", X"0995", X"f5f2",
                                                        X"f8f9", X"0678", X"fd10", X"f2b1", X"fce6", X"fdf0", X"0b0b", X"f9e6", X"0149", X"0183", X"fce3", X"f6c7", X"0311", X"fb99",
                                                        X"0c19", X"fbf7", X"fc6f", X"0583", X"fcad", X"f45c", X"fc93", X"fc3f", X"0b1c", X"f8f8", X"006f", X"0254", X"fc9c", X"f23e",
                                                        X"0013", X"f698", X"078f", X"fa78", X"fb00", X"0546", X"faa2", X"f613", X"0052", X"fc66", X"0701", X"faf5", X"0302", X"06e3",
                                                        X"fc56", X"f85b", X"03a7", X"f982", X"0d65", X"fc79", X"fa77", X"01df", X"0aba", X"f55e", X"fc31", X"01e8", X"0d0b", X"fd19",
                                                        X"02a4", X"03bb", X"fa49", X"fdfc", X"feae", X"fd05", X"0b6f", X"f9a8", X"fd8e", X"ffce", X"097a", X"f539", X"00ff", X"fff7",
                                                        X"09d0", X"f9f8", X"034c", X"0390", X"fa47", X"f73f", X"fd6c", X"06fe", X"0bf5", X"fa9f", X"fbf3", X"ff84", X"0524", X"f992",
                                                        X"fb10", X"fd58", X"06fe", X"fc7e", X"033a", X"00f0", X"f8b1", X"f6b8", X"041c", X"feee", X"0939", X"fac5", X"faa6", X"0699",
                                                        X"06d1", X"fcd5", X"fc6a", X"ff1f", X"0665", X"fd8d", X"fe3a", X"ff1e", X"f7e9", X"fd8d", X"0250", X"f7f1", X"0880", X"f9b7",
                                                        X"fc19", X"0213", X"0386", X"f979", X"0027", X"fdb9", X"05c5", X"fcc6", X"0347", X"02ac", X"ffa9", X"fa04", X"fec6", X"0090",
                                                        X"0aa9", X"fc89", X"fb38", X"ffca", X"04c7", X"fdce", X"0269", X"fe4c", X"08bd", X"fb98", X"fc1f", X"0327", X"fced", X"fa8b",
                                                        X"01b4", X"055c", X"09cb", X"fc73", X"f988", X"02f2", X"05c6", X"ffa6", X"06d8", X"fc4b", X"0b34", X"fbc2", X"012e", X"064d",
                                                        X"fcd6", X"f830", X"0283", X"082b", X"06c1", X"ffd2", X"fd82", X"08eb", X"0617", X"fe65", X"08d5", X"011b", X"0b69", X"fc4b",
                                                        X"0110", X"0ba2", X"fd7b", X"f0f3", X"0430", X"02f5", X"09a9", X"0154", X"fee9", X"04a9", X"fe6d", X"fb59", X"0737", X"ffc7",
                                                        X"188b", X"ff83", X"016e", X"0a1d", X"017f", X"ed43", X"0028", X"04d0", X"0a28", X"feb0", X"fda0", X"08f5", X"0d7f", X"fb8c",
                                                        X"097b", X"fe4b", X"13a3", X"fab2", X"ffb8", X"065f", X"0168", X"f22a", X"fe04", X"052e", X"0a08", X"fb44", X"fa8d", X"055b",
                                                        X"0630", X"f3b6", X"0691", X"fc0e", X"0b5d", X"fc45", X"fe7e", X"067a", X"fed9", X"f7c2", X"fc1d", X"07b0", X"07f1", X"fc87",
                                                        X"fb0a", X"0959", X"068c", X"f604", X"06a0", X"0077", X"0bdd", X"0072", X"fe32", X"02cd", X"fe89", X"fa81", X"fb7c", X"03db",
                                                        X"05f0", X"ff60", X"fce4", X"05c8", X"04fe", X"f1ec", X"02e0", X"fe88", X"112e", X"fe2c", X"005f", X"08e6", X"023c", X"f499",
                                                        X"f98e", X"fe91", X"0c2c", X"fff6", X"fd18", X"09b0", X"0591", X"e871", X"033f", X"0079", X"09c6", X"fce7", X"0149", X"0930",
                                                        X"027d", X"f43a", X"016b", X"ff37", X"0813", X"fdf1", X"fc83", X"0b83", X"0294", X"f23d", X"02b7", X"fdb1", X"1097", X"01c0",
                                                        X"fdd3", X"0543", X"fdac", X"ec35", X"05a2", X"075d", X"09b1", X"fe8b", X"f892", X"0dc3", X"052f", X"f0c2", X"0310", X"00d0",
                                                        X"1491", X"fff7", X"033a", X"09de", X"0502", X"ef3a", X"fe94", X"072b", X"0b0a", X"ff30", X"fb17", X"092e", X"057a", X"fa80",
                                                        X"00ad", X"ffa6", X"0d8f", X"01dc", X"01d2", X"083e", X"026b", X"fd45", X"f86c", X"04b0", X"06e8", X"fb22", X"fe78", X"086d",
                                                        X"0a48", X"f38e", X"070c", X"fec9", X"0e1c", X"ff3b", X"fbbb", X"0217", X"0061", X"fbdc", X"fa15", X"06f1", X"0612", X"fbc9",
                                                        X"ffd4", X"0843", X"0751", X"fcb0", X"0621", X"ff6c", X"11f3", X"fd05", X"00b5", X"04b1", X"fb15", X"f6cb", X"fcb2", X"00a8",
                                                        X"0659", X"009a", X"0136", X"0587", X"0279", X"f4ca", X"0354", X"ff37", X"0e0b", X"fe61", X"0320", X"ffb4", X"faa5", X"fb0e",
                                                        X"0152", X"0451", X"0827", X"fc53", X"fc79", X"061a", X"04c9", X"f90f", X"02c1", X"ff7c", X"088d", X"fe03", X"00a4", X"00f7",
                                                        X"fbb5", X"f619", X"0597", X"014e", X"0690", X"faee", X"fef9", X"01f8", X"0204", X"f6aa", X"032d", X"ffe8", X"0690", X"fd18",
                                                        X"001a", X"0509", X"fad2", X"f8b6", X"fc9c", X"fe80", X"0ab6", X"fee8", X"02d2", X"0610", X"0300", X"f904", X"05ce", X"fd55",
                                                        X"0bed", X"fdf1", X"0167", X"0905", X"019b", X"f5ac", X"ff5f", X"032b", X"033f", X"fbc1", X"0116", X"0792", X"fcbf", X"ee80",
                                                        X"0b83", X"0018", X"0a39", X"01a0", X"07ae", X"0839", X"00f6", X"eff4", X"fd8c", X"00fb", X"06c4", X"016b", X"fdbb", X"0898",
                                                        X"0cda", X"f3d0", X"0ba4", X"fc3e", X"1066", X"fec7", X"ff40", X"0715", X"00ba", X"f106", X"fb0d", X"0214", X"0848", X"ffbb",
                                                        X"fb23", X"0954", X"0844", X"f20a", X"078c", X"0075", X"1000", X"fb7b", X"00ec", X"0933", X"ffbe", X"f1a8", X"0280", X"fb0b",
                                                        X"069a", X"ffd8", X"fd67", X"052d", X"0890", X"f0ec", X"03d3", X"fcd8", X"1435", X"002d", X"01ff", X"06a1", X"0068", X"f3ed",
                                                        X"03c2", X"064a", X"06d8", X"fa68", X"f787", X"02f7", X"0705", X"007a", X"03d9", X"fd67", X"144a", X"fca8", X"0816", X"07e2",
                                                        X"fe76", X"f254", X"fce8", X"05be", X"0bc1", X"fed8", X"fa36", X"098a", X"05b1", X"f561", X"02d1", X"fa1e", X"08b0", X"ff48",
                                                        X"01a9", X"05a4", X"0145", X"f783", X"ffa4", X"00c2", X"0a16", X"fe19", X"f83a", X"053f", X"ff9c", X"f0ee", X"042d", X"fed8",
                                                        X"0427", X"fd9a", X"032f", X"09c1", X"015d", X"fcab", X"0126", X"02d7", X"0b18", X"fda3", X"fca3", X"048a", X"081a", X"eec2",
                                                        X"058b", X"fec1", X"0a07", X"fce0", X"fd4b", X"08f9", X"fd33", X"fa63", X"ff39", X"05e2", X"08b4", X"025c", X"fd2f", X"076f",
                                                        X"01da", X"f531", X"08b4", X"fce6", X"0d37", X"fc7e", X"0433", X"0b66", X"fd91", X"f5b3", X"031d", X"0250", X"08ce", X"0305",
                                                        X"fb6f", X"05b8", X"0bbd", X"f12b", X"038c", X"fd52", X"162c", X"fe50", X"ff75", X"0605", X"fd3c", X"f3b8", X"fea2", X"037a",
                                                        X"0843", X"01ee", X"fa24", X"05e5", X"0c9b", X"ee24", X"089b", X"fb87", X"10b8", X"fe75", X"018d", X"0296", X"ff15", X"f56b",
                                                        X"fc7f", X"0417", X"0642", X"fff9", X"f8d2", X"036b", X"07ca", X"f99c", X"053b", X"fa26", X"0d13", X"facb", X"ff50", X"01b4",
                                                        X"fb3d", X"f1c3", X"0001", X"0a31", X"0544", X"fca0", X"f4af", X"01a9", X"0806", X"fb38", X"0109", X"f973", X"076e", X"f9e9",
                                                        X"018a", X"0582", X"fcec", X"f604", X"fe5d", X"0815", X"0a9b", X"fdbf", X"f915", X"043d", X"0bcc", X"f7de", X"050e", X"fe7f",
                                                        X"06fb", X"fc57", X"0524", X"037b", X"fa0b", X"f951", X"0361", X"0279", X"0bd3", X"f93c", X"f735", X"07d3", X"0940", X"fb0d",
                                                        X"07b5", X"fb7d", X"09e8", X"fc7a", X"013d", X"03ac", X"fe6f", X"ed45", X"02e2", X"04a6", X"0ca4", X"fa66", X"fcf9", X"04c5",
                                                        X"087a", X"f94d", X"0aaf", X"fe33", X"022e", X"ff6f", X"034e", X"07d6", X"feed", X"f4d4", X"00d1", X"fef2", X"0993", X"fa5f",
                                                        X"fdeb", X"0aed", X"0656", X"f83f", X"0b48", X"fbc0", X"0dd7", X"fe69", X"0264", X"080f", X"fedd", X"ef87", X"fc18", X"fdc2",
                                                        X"08e5", X"fa84", X"fb93", X"0e86", X"02ac", X"f8bf", X"0478", X"fc46", X"0fa1", X"fe5f", X"03b4", X"0bb7", X"00da", X"f1ce",
                                                        X"f7b0", X"ffcb", X"0f6e", X"f617");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f617";
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

