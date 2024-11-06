-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block426.vhd
-- Created: 2024-11-04 16:44:19
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block426
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage71/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block426 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block426;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block426 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fad0", X"fdd8", X"fc54", X"007f", X"021d", X"f4fe",
                                                        X"fbb6", X"05e9", X"1af2", X"f90d", X"06ef", X"015d", X"0046", X"fd48", X"f2fa", X"fe2f", X"fba2", X"00e9", X"fc1b", X"05a3",
                                                        X"ff29", X"fb18", X"002e", X"03f4", X"10e8", X"fed5", X"0089", X"021f", X"037d", X"f670", X"fa58", X"fef6", X"ff02", X"ff3e",
                                                        X"003a", X"03fe", X"ff8a", X"fba3", X"0241", X"009b", X"0ca3", X"0330", X"fffa", X"fe89", X"02a1", X"fe65", X"f8cf", X"fccd",
                                                        X"00ab", X"0092", X"0157", X"0732", X"fda2", X"f954", X"0c70", X"0218", X"0ad6", X"026f", X"017b", X"fbf0", X"fe07", X"fc71",
                                                        X"f626", X"0068", X"01b4", X"0278", X"03bf", X"f9fa", X"01d5", X"f7c9", X"0c91", X"0356", X"0b06", X"0126", X"020c", X"fc9d",
                                                        X"00de", X"fae8", X"f926", X"fdf8", X"036d", X"034d", X"04b6", X"0029", X"03c8", X"f82d", X"0a30", X"0422", X"0d1f", X"00a0",
                                                        X"01e7", X"fe57", X"fcfa", X"ff8d", X"f3f5", X"0161", X"055f", X"fdf1", X"011d", X"fabf", X"04ad", X"fa1a", X"0a1b", X"fedb",
                                                        X"0bb0", X"fefc", X"0159", X"00dc", X"fe57", X"0381", X"f30a", X"01ea", X"051c", X"fdea", X"0042", X"0161", X"0238", X"f83e",
                                                        X"01f7", X"00e2", X"0d96", X"ff92", X"004d", X"06f0", X"057d", X"00da", X"f765", X"00ef", X"0267", X"fde9", X"fd45", X"014f",
                                                        X"008d", X"f613", X"01f9", X"02d1", X"0a88", X"ffd6", X"00b8", X"fd81", X"016f", X"fe1a", X"f6c9", X"040d", X"fc87", X"fcaf",
                                                        X"ff4c", X"004e", X"ffee", X"f686", X"fde6", X"00c7", X"0ed3", X"00c7", X"01e1", X"0277", X"03af", X"00d8", X"f67b", X"0360",
                                                        X"fcf6", X"ff8b", X"fbd2", X"fe88", X"0209", X"fbb8", X"038d", X"0242", X"0c93", X"02d3", X"0101", X"fd2d", X"000e", X"fa8d",
                                                        X"f531", X"018d", X"fc60", X"019a", X"fa1a", X"0176", X"0347", X"f78b", X"05fc", X"0283", X"0ea1", X"0256", X"024a", X"fa95",
                                                        X"fda2", X"f97e", X"f2b2", X"fed1", X"026c", X"feda", X"027a", X"ff06", X"02b7", X"f6b3", X"09cb", X"01f3", X"06fc", X"0105",
                                                        X"00db", X"f592", X"fea0", X"fe99", X"f37c", X"00d1", X"068c", X"0035", X"0067", X"fb04", X"0462", X"f615", X"0483", X"04b8",
                                                        X"1206", X"0136", X"0048", X"f3ef", X"00b8", X"fafc", X"f50e", X"02e6", X"0243", X"0408", X"f8ec", X"fd54", X"062b", X"f791",
                                                        X"05fd", X"0268", X"0fa8", X"0009", X"023f", X"feb5", X"04d2", X"ffcd", X"f507", X"ff17", X"0360", X"016d", X"04fe", X"01c7",
                                                        X"048f", X"f773", X"010f", X"000d", X"1112", X"fc22", X"02bf", X"ff86", X"0166", X"fe0a", X"f436", X"fc51", X"0494", X"0070",
                                                        X"ff35", X"f9bd", X"04ed", X"fb23", X"041f", X"ffd6", X"1264", X"ff82", X"0072", X"fc41", X"fe26", X"fe5b", X"f477", X"fe62",
                                                        X"02d2", X"fffb", X"0448", X"00c4", X"039b", X"fc57", X"ffaf", X"0105", X"0b76", X"fe53", X"020b", X"fc47", X"fd45", X"031b",
                                                        X"f35b", X"fcb7", X"fec8", X"feb2", X"fb4c", X"0267", X"0063", X"f8d7", X"02e8", X"ffc6", X"07d6", X"0219", X"0154", X"faa3",
                                                        X"022e", X"fe4c", X"f911", X"faf6", X"01c3", X"00e8", X"fe60", X"f9c8", X"02fd", X"f945", X"04a6", X"0306", X"09da", X"ffea",
                                                        X"019b", X"f82d", X"059a", X"00ca", X"f813", X"ffcf", X"02e5", X"fd78", X"ff74", X"fc31", X"0342", X"faeb", X"0579", X"0162",
                                                        X"0b28", X"fd0d", X"046a", X"fea6", X"02e0", X"fe0b", X"f944", X"fce1", X"021e", X"0015", X"ffff", X"02ec", X"02bc", X"f938",
                                                        X"0a4d", X"00dd", X"0bdb", X"fd19", X"069a", X"fc66", X"02cd", X"fe25", X"f7a3", X"fbdd", X"02b4", X"0203", X"03e8", X"fb92",
                                                        X"fe9f", X"fc9d", X"08f2", X"0600", X"0f44", X"fe09", X"047e", X"faf8", X"fc5d", X"fd5c", X"fb55", X"fec0", X"0273", X"fcb8",
                                                        X"003d", X"fe20", X"ffad", X"f97a", X"04d5", X"010d", X"10c1", X"fe95", X"04bc", X"032f", X"012c", X"fadc", X"f7d2", X"02f5",
                                                        X"0463", X"f904", X"fe17", X"fcb2", X"06be", X"fca7", X"045d", X"038d", X"0c12", X"fed2", X"0347", X"03e5", X"038c", X"fec3",
                                                        X"f3f5", X"02b3", X"011b", X"facb", X"fc50", X"0220", X"019d", X"fa97", X"feed", X"00c3", X"08d5", X"fd3d", X"01c2", X"072b",
                                                        X"fed4", X"f819", X"f36a", X"ff34", X"feca", X"ffdf", X"fa9c", X"00dd", X"0141", X"f840", X"fff5", X"ffb7", X"0982", X"0256",
                                                        X"01ed", X"011c", X"fd8b", X"f391", X"f694", X"01b9", X"ff96", X"fc5a", X"fde9", X"f996", X"0439", X"fbac", X"0252", X"04f6",
                                                        X"05b7", X"0310", X"0274", X"fd58", X"fe23", X"f22c", X"f99a", X"fd67", X"0117", X"fd2c", X"0985", X"f4be", X"0485", X"f977",
                                                        X"0430", X"04c0", X"0f46", X"004a", X"0213", X"fe22", X"fdee", X"f86c", X"f6cc", X"fdff", X"0011", X"fcd1", X"042e", X"0067",
                                                        X"04c2", X"fa71", X"ff79", X"061f", X"11a7", X"0163", X"0306", X"fd87", X"049f", X"f96e", X"f687", X"ffa9", X"032d", X"ff60",
                                                        X"ff5c", X"05e9", X"02f7", X"fb34", X"081a", X"009d", X"1152", X"ffa2", X"00a1", X"f82f", X"05bb", X"fbe5", X"f8b0", X"fe51",
                                                        X"05dd", X"ffc7", X"0402", X"04a8", X"06f2", X"f764", X"084d", X"00c7", X"1519", X"fd69", X"035b", X"f22f", X"017c", X"00bb",
                                                        X"f81a", X"03f6", X"0684", X"017f", X"00f1", X"fcb6", X"0665", X"fada", X"0055", X"ffbb", X"0b75", X"00ed", X"0129", X"f7da",
                                                        X"fe4f", X"0237", X"f105", X"ff1f", X"019b", X"0382", X"fb84", X"003e", X"0439", X"faef", X"fe6a", X"0009", X"0fb5", X"fe92",
                                                        X"02c3", X"f618", X"fd30", X"0141", X"f50f", X"fe54", X"ffd5", X"fe48", X"ff33", X"00ad", X"00ac", X"fa29", X"08d3", X"feed",
                                                        X"0a12", X"00ad", X"0408", X"f80c", X"fefa", X"fda1", X"fa89", X"fec6", X"0221", X"ffa5", X"059f", X"ffed", X"000d", X"fd95",
                                                        X"02eb", X"ffd8", X"07b8", X"fd5a", X"0070", X"fe24", X"fb6b", X"fb30", X"f434", X"ff8a", X"01ca", X"fb38", X"fe73", X"fc6b",
                                                        X"0631", X"fb82", X"0350", X"03a5", X"0951", X"ff75", X"0221", X"0272", X"023c", X"f774", X"f7e4", X"fc27", X"012f", X"fecd",
                                                        X"fd2d", X"0020", X"05ed", X"fa1a", X"04fe", X"07a6", X"0c22", X"016f", X"0500", X"0225", X"0083", X"f8ba", X"f44a", X"007c",
                                                        X"fef6", X"01cd", X"fe3d", X"fa48", X"07f5", X"f6a6", X"02dc", X"0842", X"0f9a", X"00d1", X"04bb", X"01ea", X"05a3", X"fd83",
                                                        X"f641", X"ffc9", X"045b", X"fef8", X"fd85", X"fcc4", X"0260", X"f779", X"006a", X"0474", X"107f", X"fbe7", X"040d", X"f967",
                                                        X"0151", X"ff44", X"f2de", X"fed2", X"0516", X"03ae", X"00d3", X"fdc0", X"0311", X"f7e5", X"fdea", X"06cd", X"0e02", X"ff3a",
                                                        X"011d", X"f6f7", X"febe", X"00c7", X"f64b", X"007d", X"fff0", X"fb53", X"004b", X"faf1", X"05b7", X"f7df", X"ff50", X"0365",
                                                        X"0b69", X"ff9c", X"fdca", X"fabb", X"0124", X"ff2e", X"f7da", X"00b6", X"040b", X"fdbf", X"017d", X"01ab", X"06af", X"f9d0",
                                                        X"0ac3", X"03f3", X"0217", X"00b2", X"fe8a", X"fa93", X"fcb5", X"f9c9", X"f758", X"fdbe", X"042d", X"ffd0", X"fe6c", X"052f",
                                                        X"028e", X"f7ea", X"0503", X"0104", X"0c08", X"fef2", X"04d8", X"ffbc", X"0371", X"f47e", X"f5e8", X"fa91", X"02e0", X"00a9",
                                                        X"fbc1", X"fd31", X"fe6c", X"fc82", X"fdde", X"fed0", X"0cc5", X"fe5b", X"0306", X"fb75", X"06d4", X"fc32", X"f512", X"feae",
                                                        X"001d", X"fe9e", X"0378", X"ffcb", X"01ec", X"f86b", X"09a4", X"ff1f", X"0f0c", X"fe70", X"013b", X"fd12", X"04ab", X"f9ff",
                                                        X"fda9", X"fdb5", X"0178", X"fa77", X"fd62", X"fb55", X"011e", X"f987", X"0178", X"0066", X"0f11", X"0241", X"0256", X"0056",
                                                        X"02b6", X"fe46", X"f9ca", X"fbaf", X"078d", X"ff6c", X"0133", X"f4d1", X"fffc", X"f74d", X"08c7", X"011d", X"1579", X"0389",
                                                        X"04e8", X"0290", X"0335", X"feb4", X"f952", X"0002", X"073d", X"028d", X"05d4", X"f4cd", X"0436", X"f9c9", X"00f4", X"039a",
                                                        X"0e8d", X"00fc", X"038c", X"fa80", X"fbb2", X"fc09", X"f1fc", X"0106", X"0385", X"fc6a", X"fbbf", X"fbd4", X"039b", X"fc3f",
                                                        X"fda9", X"00be", X"0e04", X"0011", X"0144", X"fe26", X"fe4d", X"f661", X"f7c4", X"0020", X"0251", X"ffa0", X"fd71", X"faf5",
                                                        X"069d", X"fba5", X"fadd", X"052a", X"0ac1", X"fe83", X"0273", X"f189", X"032b", X"fd4a", X"f4d3", X"0524", X"ff81", X"fa2b",
                                                        X"ff9d", X"043b", X"0154", X"fbdd", X"0691", X"0290", X"0866", X"ff1d", X"0185", X"f716", X"050a", X"f951", X"f489", X"ff35",
                                                        X"01e2", X"012b", X"ffb2", X"fe63", X"0395", X"fbab", X"022e", X"003b", X"0856", X"fbf4", X"fe66", X"fe74", X"025d", X"ffeb",
                                                        X"f5a2", X"007b", X"030d", X"0161", X"05f6", X"01cf", X"ff05", X"f870", X"070e", X"00ae", X"0ee9", X"f9f9", X"0069", X"ff5f",
                                                        X"ff01", X"fc14", X"f3ba", X"fefa", X"049d", X"01c7", X"03b6", X"0060", X"0270", X"f7a7", X"0674", X"0209", X"1314", X"fc75",
                                                        X"02f9", X"f703", X"ff46", X"fca1", X"f6c2", X"0432", X"0661", X"01c1", X"fb08", X"ffe2", X"03ee", X"fa6f", X"06ca", X"0279",
                                                        X"0e9e", X"fcec", X"0326", X"fda6", X"01cf", X"033c", X"f81d", X"0405", X"0550", X"02f6", X"f964", X"fec4", X"0401", X"f68c",
                                                        X"01d5", X"0336", X"0e81", X"027e", X"0631", X"f46e", X"02a7", X"fd7a", X"f945", X"fd93", X"01be", X"035f", X"00e8", X"f98a",
                                                        X"042b", X"f8a5", X"046c", X"011a", X"08d8", X"ff8a", X"ffb2", X"fc3a", X"fdb0", X"ff0f", X"f4ff", X"fe6e", X"004b", X"01d2",
                                                        X"0215", X"f898", X"077c", X"f849", X"05e0", X"01a2", X"0b69", X"0239", X"0222", X"009e", X"ff42", X"0366", X"f43c", X"0081",
                                                        X"02ed", X"02ed", X"ff98", X"fb89", X"0346", X"f85a", X"050f", X"01be", X"0762", X"ffc7", X"0190", X"ff82", X"0298", X"fef8",
                                                        X"f4ce", X"fd41", X"0285", X"fe63", X"fd76", X"02d9", X"fd2d", X"fc4f", X"097d", X"fee8", X"0dac", X"fff6", X"feee", X"f4a5",
                                                        X"01f3", X"fc35", X"fa3b", X"021a", X"ff6b", X"fede", X"fb7f", X"f98a", X"fc62", X"f8d9", X"02a0", X"05c7", X"0d79", X"fde6",
                                                        X"00a7", X"ff79", X"0476", X"fdb6", X"fbf1", X"fd36", X"0546", X"fe37", X"fd9c", X"fb43", X"0304", X"fb58", X"0271", X"02b7",
                                                        X"0ddc", X"0095", X"0204", X"05ff", X"0442", X"fc15", X"f556", X"00da", X"0003", X"fb5d", X"f88a", X"fb9c", X"03a0", X"f8e2",
                                                        X"0328", X"047e", X"0e61", X"fd9c", X"040b", X"0503", X"026c", X"fe7a", X"f570", X"0062", X"02a1", X"01bb", X"04da", X"fddd",
                                                        X"038a", X"f99a", X"fc7b", X"03e3", X"11d0", X"fefd", X"056b", X"04a7", X"fe6a", X"f86f", X"f759", X"0187", X"fdbd", X"0017",
                                                        X"fc98", X"05c7", X"01fb", X"f91c", X"fb63", X"0340", X"0d00", X"0156", X"0336", X"fe52", X"0211", X"fc3e", X"fbc7", X"fdc0",
                                                        X"fc1f", X"ff01", X"fc1a", X"0c3d", X"0218", X"ff32", X"0269", X"0541", X"08d9", X"0429", X"0026", X"f995", X"00fb", X"fde9",
                                                        X"f9ef", X"fd70", X"ff21", X"06d1", X"01a0", X"04af", X"057f", X"fa53", X"1104", X"ff98", X"06fd", X"0401", X"0532", X"fad1",
                                                        X"fa53", X"f9e4", X"f940", X"fae9", X"011f", X"01fe", X"0703", X"feed", X"0348", X"f8ae", X"12c7", X"0635", X"0c93", X"012c",
                                                        X"053c", X"f907", X"fee3", X"faa9", X"f637", X"0182", X"06ba", X"ff06", X"fd62", X"02e9", X"05d6", X"fafc", X"0cf9", X"0422",
                                                        X"0acb", X"feac", X"04a6", X"fa80", X"0246", X"fe7c", X"f315", X"ff33", X"062b", X"04eb", X"fca1", X"0139", X"0696", X"fd1d",
                                                        X"ffab", X"0577", X"0c7e", X"fd1d", X"02d3", X"fe37", X"060e", X"ff20", X"f2a5", X"0425", X"04b9", X"fd0b", X"f821", X"06dc",
                                                        X"030a", X"f9a7", X"0c6b", X"048b", X"0fa0", X"feed", X"ff91", X"ffba", X"fd0b", X"fc14", X"f3c5", X"ff3b", X"0754", X"fe6a",
                                                        X"04f6", X"f6d4", X"0125", X"fa52", X"074d", X"01a9", X"0db4", X"fca6", X"03f1", X"01e4", X"fe94", X"fbd1", X"f966", X"019c",
                                                        X"024d", X"fbed", X"016c", X"fdc3", X"0175", X"fae5", X"0468", X"0297", X"0ac7", X"01c3", X"fe30", X"020e", X"00fd", X"f9e4",
                                                        X"f643", X"fdee", X"007b", X"fa57", X"f4f6", X"fbaa", X"013e", X"fb76", X"03d7", X"036d", X"0a76", X"ff48", X"fe0b", X"00ba",
                                                        X"04b5", X"fb33", X"f775", X"ffce", X"0149", X"fdfa", X"fe96", X"ff6a", X"00c7", X"fcad", X"06e2", X"052e", X"055a", X"0274",
                                                        X"0255", X"fdd3", X"0669", X"fd47", X"f50b", X"fec2", X"ff4e", X"ff7c", X"ff7a", X"0259", X"0097", X"f8df", X"038b", X"00dc",
                                                        X"07f9", X"01ae", X"0196", X"0526", X"076f", X"fb25", X"f61d", X"0123", X"036e", X"00bb", X"01f9", X"0135", X"041f", X"fbaa",
                                                        X"09b3", X"028c", X"0e78", X"019f", X"03a5", X"fb77", X"0033", X"0022", X"fb2f", X"015f", X"057d", X"ff2a", X"06cc", X"0042",
                                                        X"015f", X"fa96", X"0e7a", X"0436", X"0e05", X"0060", X"06b0", X"044b", X"0100", X"fff8", X"f99e", X"020d", X"0470", X"0229",
                                                        X"0729", X"0559", X"032f", X"f87b", X"057d", X"04a1", X"0fc9", X"0153", X"05de", X"fcdd", X"030f", X"fe55", X"f5ea", X"04c1",
                                                        X"030d", X"fdd2", X"fc32", X"0137", X"0142", X"f5cf", X"044f", X"018f", X"0f6e", X"016d", X"0027", X"01bb", X"0313", X"fd5b",
                                                        X"f924", X"fdec", X"00e7", X"fa50", X"fb8a", X"f7d7", X"ff96", X"f8b0", X"ffc9", X"0124", X"0a23", X"003f", X"0262", X"fff1",
                                                        X"007b", X"034f", X"f9b6", X"fd8e", X"fedf", X"fc1f", X"fbee", X"fd9a", X"fb65", X"fd60", X"ffdc", X"0440", X"0654", X"fdab",
                                                        X"ff64", X"f7e7", X"0115", X"00ae", X"f5ff", X"fcfa", X"fad8", X"fba9", X"0541", X"02c2", X"f9cb", X"fe8a", X"0ebe", X"040b",
                                                        X"0e74", X"fea8", X"012e", X"ff49", X"01b2", X"fca9", X"f81a", X"fa98", X"016f", X"fc44", X"0838", X"ffae", X"ffb1", X"fc33",
                                                        X"058c", X"ff2f", X"0f94", X"fefb", X"0062", X"fd9b", X"fd4c", X"fde6", X"f7aa", X"ff09", X"0322", X"0147", X"01c4", X"ffc8",
                                                        X"0035", X"fad2", X"015e", X"0265", X"0bc9", X"ff1e", X"0179", X"021b", X"00e9", X"02c9", X"f5cd", X"fc06", X"02d0", X"004e",
                                                        X"0193", X"0415", X"055c", X"f93d", X"0026", X"08da", X"1237", X"fec3", X"023c", X"fcb7", X"02b9", X"05f7", X"f6c7", X"fff0",
                                                        X"01bd", X"029e", X"fea1", X"0543", X"03b8", X"fc02", X"0323", X"050c", X"0d52", X"0195", X"065a", X"fabe", X"0360", X"0154",
                                                        X"f7c2", X"024c", X"0578", X"02fe", X"01b6", X"0503", X"0268", X"f669", X"fe4f", X"0034", X"0e12", X"00ad", X"05dd", X"f9bd",
                                                        X"0229", X"01af", X"f54d", X"05a5", X"0216", X"0024", X"0176", X"03db", X"032c", X"fa80", X"0148", X"0261", X"0b75", X"0016",
                                                        X"ff85", X"00a6", X"0113", X"05f5", X"f75f", X"026e", X"00f8", X"010a", X"0294", X"fc74", X"0632", X"f803", X"06aa", X"0223",
                                                        X"09b6", X"0291", X"04ab", X"fce6", X"0189", X"fb2d", X"f8cb", X"02ac", X"02d7", X"ffcc", X"0204", X"fbdc", X"01a8", X"f7f3",
                                                        X"0ae8", X"0061", X"0d43", X"035b", X"0118", X"fc41", X"035e", X"f5b8", X"f508", X"fd32", X"00be", X"02f5", X"009c", X"0026",
                                                        X"0324", X"fa0e", X"0e21", X"01bb", X"0844", X"0257", X"fff5", X"f71e", X"0089", X"f8df", X"f8ce", X"00b4", X"039b", X"040f",
                                                        X"fd62", X"fc6a", X"fe94", X"fccd", X"0bc0", X"04f2", X"0f66", X"02bc", X"029c", X"fae4", X"fe75", X"fc42", X"f78f", X"fe2e",
                                                        X"0500", X"fd11", X"0208", X"fb28", X"03e4", X"f97f", X"094b", X"023d", X"125c", X"00c8", X"02f3", X"f980", X"f99b", X"ff33",
                                                        X"faea", X"0359", X"064e", X"fd19", X"0357", X"fd32", X"0716", X"f9a2", X"044a", X"044d", X"0fe9", X"fe06", X"0472", X"fa85",
                                                        X"fc45", X"fffc", X"f78d", X"01bb", X"02ab", X"041c", X"feea", X"0cd0", X"07d1", X"f8c1", X"004d", X"0428", X"0990", X"ff35",
                                                        X"0304", X"011b", X"01d4", X"0438", X"f26f", X"023e", X"0142", X"ff44", X"023d", X"0404", X"0854", X"fb09", X"0280", X"026e",
                                                        X"0ed6", X"fce2", X"019d", X"fbdb", X"03aa", X"fd13", X"f27a", X"00fc", X"050c", X"ff53", X"041a", X"006a", X"044a", X"f842",
                                                        X"06b9", X"0366", X"097e", X"0445", X"fe93", X"f8f9", X"02f6", X"f88c", X"f0d6", X"0003", X"051c", X"0085", X"fd5a", X"faae",
                                                        X"0284", X"fbb6", X"07c2", X"fbba", X"088c", X"02b8", X"fcc9", X"ff3f", X"ff11", X"fb99", X"f55b", X"0012", X"03be", X"fb9f",
                                                        X"01af", X"fcaa", X"00dd", X"f84c", X"07ec", X"03a0", X"09d5", X"00ca", X"0054", X"0576", X"fcb9", X"fe42", X"f807", X"0380",
                                                        X"0101", X"01ba", X"007c", X"f914", X"0921", X"f800", X"108b", X"037f", X"1048", X"00dd", X"0225", X"0143", X"0446", X"fa30",
                                                        X"f679", X"fdc4", X"0676", X"ff7e", X"fcaf", X"fad0", X"027a", X"feab", X"035b", X"03cb", X"09f5", X"fd35", X"00a3", X"00e5",
                                                        X"031d", X"ffc6", X"f494", X"02b6", X"018c", X"0146", X"fb63", X"fbdf", X"ffdb", X"fcb2", X"ffdd", X"05c3", X"0b3b", X"fe36",
                                                        X"0199", X"0221", X"0259", X"fab6", X"f678", X"007d", X"0357", X"ffc0", X"fe9a", X"fc26", X"00b9", X"fb65", X"fd2c", X"0135",
                                                        X"0d93", X"fe49", X"04e6", X"f6cc", X"019e", X"00cd", X"f86a", X"ff42", X"01a7", X"0231", X"ffd7", X"0163", X"07c9", X"fbef",
                                                        X"010c", X"00c1", X"100f", X"0468", X"0439", X"fc2e", X"0179", X"fc5d", X"f915", X"01d8", X"0275", X"fee2", X"fb51", X"fdc6",
                                                        X"0525", X"fe59", X"0678", X"0331", X"0f4b", X"04db", X"ff91", X"fe78", X"01b1", X"f827", X"f756", X"011a", X"038e", X"026a",
                                                        X"0185", X"fd2d", X"01d6", X"f9df", X"07b4", X"01f6", X"0e9a", X"03ad", X"fd71", X"fcc8", X"0028", X"f858", X"f6a8", X"009a",
                                                        X"00f8", X"0006", X"fd07", X"fcee", X"0468", X"fc25", X"0736", X"0369", X"067e", X"029f", X"fe8f", X"fcf9", X"fe02", X"f6d4",
                                                        X"f81f", X"02d3", X"02b7", X"00a1", X"04d6", X"fd92", X"00fd", X"fb88", X"0c2a", X"0057", X"0ca7", X"00f2", X"fd91", X"fe2c",
                                                        X"00b3", X"fffd", X"f692", X"0294", X"0550", X"fc81", X"feea", X"0213", X"0372", X"fa32", X"0798", X"054d", X"0d89", X"fd75",
                                                        X"064f", X"f863", X"fd9f", X"01e2", X"f394", X"ff57", X"00c3", X"fe59", X"fe77", X"fc31", X"0899", X"f6c1", X"0696", X"07cd",
                                                        X"127e", X"fadb", X"03bb", X"fcd8", X"01fd", X"05c2", X"f3f7", X"ff41", X"ffea", X"fdbb", X"ff34", X"fa03", X"075a", X"f8ef",
                                                        X"0981", X"091e", X"0b81", X"013a", X"0719", X"01f3", X"0270", X"fec0", X"f63e", X"0327", X"ffbb", X"ff3d", X"fc6e", X"0515",
                                                        X"04e4", X"f8ca", X"fea6", X"031a", X"0dac", X"ffcf", X"04c9", X"f792", X"017d", X"0541", X"f7e3", X"033c", X"fef9", X"0278",
                                                        X"fa28", X"fd75", X"041c", X"fc05", X"041b", X"0643", X"0933", X"01b3", X"0382", X"fb28", X"039a", X"fe86", X"f3e8", X"fea3",
                                                        X"fe49", X"0094", X"fc7e", X"f84a", X"03df", X"fa5a", X"fdcd", X"0069", X"0bec", X"02ea", X"072a", X"faf6", X"023c", X"fe33",
                                                        X"f4b8", X"02ac", X"0091", X"ff9f", X"044e", X"ffe7", X"04ec", X"fb64", X"06c0", X"02d5", X"0ad1", X"ffc8", X"03f9", X"fc57",
                                                        X"0014", X"ff10", X"f81a", X"febc", X"04e6", X"fff2", X"03fa", X"0692", X"022e", X"f717", X"0875", X"01a5", X"0e70", X"0275",
                                                        X"02b5", X"fcf4", X"0012", X"fffe", X"f5da", X"ff32", X"0438", X"0193", X"0197", X"079a", X"089e", X"fb71", X"fb11", X"03fa",
                                                        X"103b", X"fcad", X"037f", X"fc70", X"028a", X"031a", X"f3ef", X"0265", X"062a", X"0169", X"00ac", X"00fd", X"09fe", X"fb53",
                                                        X"018f", X"02d4", X"1144", X"00d3", X"0165", X"f867", X"fceb", X"fce3", X"f300", X"fe0a", X"05ee", X"051e", X"fde7", X"fbd7",
                                                        X"08b7", X"f869", X"0269", X"01d5", X"0fa3", X"046b", X"01ef", X"fc30", X"01de", X"0246", X"f461", X"0094", X"0199", X"02b0",
                                                        X"f941", X"002f", X"0732", X"fc9c", X"faea", X"ffbc", X"0fd1", X"ffe6", X"0214", X"fd04", X"0193", X"ff76", X"f6f4", X"ff59",
                                                        X"0527", X"ffd9", X"0023", X"00db", X"02a7", X"fa1a", X"0001", X"00a4", X"0b40", X"02ee", X"002a", X"facf", X"00e9", X"ff0f",
                                                        X"fa78", X"0082", X"0350", X"ffdc", X"03cb", X"078a", X"0ae5", X"faaa", X"0c32", X"00a8", X"0d58", X"fde0", X"058b", X"fd81",
                                                        X"0120", X"055f", X"f422", X"00e6");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"00e6";
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
