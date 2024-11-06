-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block425.vhd
-- Created: 2024-11-04 16:44:19
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block425
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage70/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block425 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block425;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block425 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"041b", X"f95f", X"05d5", X"f6fd", X"f79f", X"0871",
                                                        X"034e", X"0648", X"fcff", X"fc0a", X"0b92", X"f938", X"fe81", X"fa3e", X"f9cb", X"03d3", X"0285", X"fa3e", X"f055", X"f751",
                                                        X"f9bc", X"0241", X"f61b", X"0055", X"ff6d", X"f867", X"06c8", X"0182", X"f8ca", X"fb77", X"f822", X"fdc2", X"0535", X"0165",
                                                        X"f99a", X"f656", X"f48e", X"fd87", X"fa67", X"0088", X"f698", X"f85a", X"0536", X"0323", X"f562", X"f8a2", X"f644", X"fd9a",
                                                        X"ffbb", X"02f5", X"edf2", X"f443", X"f84c", X"01a0", X"f37d", X"0593", X"ff30", X"f882", X"0428", X"fb7d", X"f5d6", X"fb10",
                                                        X"fc40", X"0275", X"022d", X"01ad", X"f507", X"f6ac", X"fb75", X"04f2", X"f274", X"061a", X"fe5e", X"fcec", X"0098", X"f775",
                                                        X"f8ca", X"0309", X"fd1a", X"00cd", X"08d0", X"0889", X"f87b", X"fe9b", X"fc5c", X"0375", X"ffbe", X"054c", X"022b", X"001f",
                                                        X"02b5", X"f513", X"f89e", X"02c8", X"fc4f", X"048a", X"067e", X"0483", X"f40e", X"f39e", X"f961", X"018f", X"0267", X"ff45",
                                                        X"0118", X"fb4f", X"fe2b", X"ebeb", X"fc9d", X"021e", X"fd4c", X"0448", X"04a8", X"01ec", X"f5d0", X"fd77", X"f8c6", X"010a",
                                                        X"08d2", X"01df", X"fe6e", X"f980", X"022f", X"f2b5", X"f50f", X"febe", X"fa5f", X"025b", X"06ba", X"0218", X"fbc3", X"f5d0",
                                                        X"fa2f", X"01f1", X"f8f0", X"01a9", X"fa07", X"f39e", X"fe4d", X"fe2d", X"f8d1", X"fbb6", X"f7c3", X"0303", X"04bb", X"fd0d",
                                                        X"ef70", X"f69e", X"f954", X"01f8", X"e96a", X"fe50", X"fbad", X"f6b5", X"fc88", X"faf4", X"f5de", X"fac1", X"f887", X"01ea",
                                                        X"0525", X"fc4f", X"f281", X"f81a", X"f64c", X"ff99", X"f83c", X"03a3", X"fca8", X"f6c6", X"fcdd", X"f31e", X"f994", X"f74b",
                                                        X"0018", X"03c0", X"01ad", X"fcbb", X"f198", X"fa00", X"f758", X"0268", X"fc4d", X"ffb4", X"02ee", X"f6fa", X"fd12", X"f511",
                                                        X"fb13", X"fcbb", X"020a", X"0300", X"02aa", X"fb4f", X"ee01", X"fbf9", X"f58d", X"02bf", X"000e", X"02d2", X"03cd", X"fac1",
                                                        X"02b6", X"ed8b", X"fc6a", X"088d", X"025f", X"093f", X"0303", X"f813", X"ecb5", X"f863", X"f802", X"01df", X"fe65", X"0348",
                                                        X"0516", X"fd29", X"0421", X"f261", X"fdfc", X"0205", X"0157", X"085c", X"0676", X"fb6c", X"f1b4", X"fe37", X"f902", X"0464",
                                                        X"04c9", X"fecc", X"fe3e", X"f97f", X"02fe", X"f2df", X"f85b", X"ff3e", X"fa90", X"06ab", X"066d", X"fea6", X"f556", X"f411",
                                                        X"fdf8", X"0369", X"feb9", X"ff72", X"030e", X"f964", X"0366", X"f71c", X"f466", X"02ba", X"fe5f", X"048f", X"03b4", X"025f",
                                                        X"f62d", X"fb74", X"f816", X"fe46", X"ff3b", X"041b", X"fea3", X"f989", X"0965", X"f742", X"f34b", X"ff2b", X"fb6a", X"04ae",
                                                        X"0162", X"ff06", X"ef61", X"f630", X"f9ce", X"01d2", X"f8cc", X"0361", X"f84d", X"f8fa", X"0356", X"fdca", X"fbd0", X"f6d4",
                                                        X"f598", X"01dd", X"fe83", X"0253", X"f530", X"f35f", X"f9a4", X"0587", X"fa93", X"04ab", X"facd", X"f6ff", X"02cb", X"fe89",
                                                        X"fcf2", X"ff5f", X"f7eb", X"0242", X"ff64", X"fbd3", X"f7e8", X"f9d8", X"f87d", X"010b", X"fcab", X"ff67", X"f945", X"fa6c",
                                                        X"0398", X"fc7a", X"fd0c", X"00ac", X"fa14", X"08ad", X"0278", X"02b7", X"f53f", X"f761", X"fae4", X"0499", X"f48d", X"0215",
                                                        X"ffb4", X"fe72", X"fdc6", X"f96b", X"f9a9", X"ffd3", X"faf3", X"04c6", X"043e", X"0239", X"f884", X"0567", X"fd8b", X"05a7",
                                                        X"0196", X"015a", X"01cb", X"fd2e", X"012d", X"ee8d", X"f781", X"ff0c", X"fc2f", X"0554", X"0595", X"fe64", X"f1a3", X"05af",
                                                        X"f91a", X"028e", X"fe6e", X"052d", X"0454", X"fe9d", X"010e", X"f87e", X"f773", X"05a9", X"ff03", X"096d", X"0644", X"fe6e",
                                                        X"febb", X"01dc", X"fc6b", X"05ab", X"02f9", X"0492", X"02d4", X"fbe2", X"0593", X"f53d", X"ffca", X"05b8", X"0089", X"0773",
                                                        X"01be", X"fa31", X"0222", X"0450", X"f828", X"021a", X"0063", X"01b7", X"051a", X"f5a3", X"ff03", X"fa3c", X"fd00", X"fd6c",
                                                        X"fd16", X"027f", X"0463", X"00a7", X"f9f8", X"04ff", X"f8c6", X"033b", X"fb31", X"fcca", X"0047", X"fa2e", X"ff67", X"019a",
                                                        X"f7bb", X"fa0f", X"fd99", X"fe64", X"03b3", X"0126", X"f675", X"ffaa", X"fed3", X"0344", X"fd99", X"fe93", X"fc52", X"fa58",
                                                        X"ffdf", X"fa50", X"f769", X"ff33", X"fc57", X"03ab", X"01d7", X"fbfd", X"f448", X"025f", X"fe74", X"04ce", X"fba2", X"00b5",
                                                        X"031e", X"fc43", X"0582", X"fb03", X"fc70", X"fdf1", X"fdb5", X"0782", X"082e", X"01fc", X"f5a5", X"ff90", X"ff41", X"06cb",
                                                        X"fc2c", X"032f", X"fde1", X"fc06", X"03ea", X"fc5e", X"fa71", X"00c0", X"00df", X"05c3", X"04b4", X"045e", X"fb2d", X"0211",
                                                        X"0093", X"05df", X"fefa", X"016c", X"04ad", X"fde6", X"0554", X"faa0", X"fd1e", X"02f3", X"0265", X"0a84", X"03f1", X"015c",
                                                        X"f8ec", X"fff9", X"fbb8", X"0724", X"0118", X"0546", X"ff10", X"fe21", X"0ae5", X"fe74", X"0206", X"f9a4", X"0398", X"0b69",
                                                        X"0635", X"02fa", X"f7d3", X"fc8a", X"fd06", X"08ad", X"0388", X"0b29", X"0018", X"011d", X"0292", X"0590", X"03bf", X"fb49",
                                                        X"fec8", X"0740", X"03da", X"0641", X"fdc8", X"f8e6", X"fcc4", X"0470", X"fc73", X"09b9", X"0046", X"02c0", X"060f", X"fbc5",
                                                        X"02a6", X"fe3c", X"004a", X"058e", X"feec", X"00fb", X"064d", X"fa36", X"ff9a", X"02c3", X"055a", X"05b8", X"015a", X"ffd8",
                                                        X"ffb0", X"0082", X"0551", X"f463", X"0139", X"0500", X"ff16", X"fba9", X"fe94", X"057b", X"ff05", X"02bb", X"fd7c", X"02d0",
                                                        X"fba1", X"fe7d", X"0208", X"ffd3", X"082d", X"0003", X"febf", X"02e5", X"0444", X"fd8f", X"f9dd", X"0440", X"fea2", X"04ce",
                                                        X"0500", X"ff41", X"fe35", X"fe14", X"ff26", X"f999", X"0171", X"fae6", X"fe0e", X"0913", X"059b", X"0535", X"f083", X"fd7a",
                                                        X"0146", X"06d9", X"01db", X"0014", X"0162", X"02c2", X"0286", X"00bd", X"fc88", X"fe44", X"0234", X"0861", X"03b7", X"fe07",
                                                        X"f552", X"f87d", X"05c3", X"092a", X"04fd", X"05a6", X"0209", X"04b8", X"0675", X"fc9b", X"fe2c", X"0a0c", X"0403", X"0787",
                                                        X"069d", X"feef", X"f52e", X"057b", X"0000", X"0826", X"07b0", X"02c2", X"04c4", X"023b", X"0600", X"010b", X"feb3", X"024a",
                                                        X"04d4", X"0af4", X"0579", X"0471", X"fd99", X"0503", X"01d6", X"08c4", X"071e", X"0602", X"03d2", X"ffbc", X"0214", X"faab",
                                                        X"0102", X"09a6", X"03a7", X"0730", X"09a5", X"02ff", X"050c", X"06a4", X"fe3d", X"065e", X"092a", X"06a1", X"03ad", X"fd71",
                                                        X"0344", X"f756", X"ff5e", X"054d", X"fd26", X"06c8", X"0803", X"0041", X"fff6", X"02e1", X"fb15", X"0509", X"040a", X"011b",
                                                        X"ff60", X"fbad", X"06b9", X"fb15", X"fa53", X"fabf", X"013e", X"013c", X"065f", X"ffb7", X"fac4", X"07f6", X"fb07", X"07b8",
                                                        X"fbe7", X"0190", X"fe58", X"f8e4", X"0641", X"014a", X"f997", X"fd0e", X"ff5e", X"0292", X"0282", X"fca9", X"ff2d", X"05a7",
                                                        X"02f1", X"04b3", X"ff07", X"0324", X"005f", X"faf1", X"04d1", X"fc19", X"fd5e", X"f967", X"003c", X"0653", X"0785", X"0441",
                                                        X"fedf", X"0413", X"fd10", X"029b", X"01cd", X"062a", X"ff1d", X"fea4", X"0630", X"01a5", X"fb15", X"fc01", X"fdeb", X"06ac",
                                                        X"052f", X"014f", X"fab7", X"01be", X"fe9a", X"0234", X"02d2", X"030d", X"0469", X"fd96", X"081d", X"fc0f", X"fed3", X"06b2",
                                                        X"fe79", X"0495", X"065b", X"00d7", X"01a9", X"ff86", X"f9a4", X"049b", X"07e4", X"00da", X"054b", X"fbbe", X"0a03", X"fcf4",
                                                        X"029a", X"044e", X"ff7b", X"0344", X"0401", X"02fa", X"fa5c", X"0163", X"0365", X"06f9", X"fe96", X"01cd", X"fb4d", X"f9f4",
                                                        X"0c41", X"0007", X"ff21", X"03f7", X"ff65", X"04f5", X"05b0", X"00ca", X"fe9e", X"fb5e", X"f943", X"055d", X"0147", X"05a4",
                                                        X"fe48", X"f9f6", X"031b", X"0342", X"ff1a", X"ff19", X"016a", X"0625", X"001b", X"0144", X"ff42", X"ffbd", X"f971", X"0646",
                                                        X"0530", X"0173", X"fe0d", X"fbad", X"0642", X"faf2", X"fc09", X"007e", X"ff91", X"0709", X"02d8", X"0034", X"f57a", X"0018",
                                                        X"f8fb", X"03d8", X"00e1", X"00e2", X"fc81", X"f8c8", X"01b3", X"f6a3", X"015e", X"f920", X"fc38", X"0196", X"01b8", X"fc5c",
                                                        X"f6b5", X"fa17", X"fc75", X"0470", X"0055", X"0112", X"0356", X"fd44", X"05d0", X"fc40", X"fc94", X"0142", X"fe9c", X"0224",
                                                        X"030e", X"0174", X"fad7", X"02d7", X"ff36", X"0540", X"ff49", X"0256", X"0042", X"02e4", X"033c", X"fb43", X"f9cb", X"fa8d",
                                                        X"ff63", X"0039", X"0a76", X"0696", X"fbae", X"f843", X"03d1", X"0278", X"0100", X"0292", X"ff42", X"fdbd", X"0639", X"022c",
                                                        X"f92d", X"0220", X"fa8d", X"0525", X"0605", X"00d4", X"031b", X"fbbb", X"012a", X"044f", X"0159", X"0303", X"fef7", X"fed9",
                                                        X"0537", X"f77b", X"fb3e", X"0370", X"f9a8", X"0086", X"0244", X"fcc6", X"fad8", X"fd00", X"faa2", X"06b1", X"ff56", X"063d",
                                                        X"01e7", X"fa56", X"060f", X"f847", X"f6fb", X"ffe4", X"fc6a", X"05a9", X"0134", X"fc11", X"faff", X"fd23", X"fb4e", X"01c7",
                                                        X"0581", X"0413", X"feac", X"fa17", X"013a", X"f88f", X"f9b2", X"011f", X"fcba", X"02d2", X"020b", X"fb59", X"f833", X"fca7",
                                                        X"fe08", X"03b8", X"fc37", X"0451", X"0555", X"fc58", X"fd8c", X"fa2d", X"fabb", X"fe20", X"ffa6", X"008b", X"00c3", X"fd3c",
                                                        X"eece", X"007a", X"f85e", X"ffae", X"f981", X"0245", X"058c", X"fa5e", X"0438", X"f65e", X"fb0b", X"fd41", X"fdec", X"fee7",
                                                        X"017a", X"0525", X"f072", X"01fb", X"f97d", X"04b2", X"f5d6", X"ff81", X"05e2", X"fde7", X"042f", X"f911", X"01bb", X"02ac",
                                                        X"004a", X"0244", X"056e", X"0512", X"f3f3", X"fc65", X"f931", X"0005", X"f3c6", X"01fc", X"03f4", X"fb1f", X"050a", X"f483",
                                                        X"fe69", X"fe28", X"011f", X"02a3", X"01c4", X"045d", X"fb6d", X"fca3", X"f728", X"030f", X"ff9a", X"04aa", X"0427", X"fcce",
                                                        X"0340", X"f760", X"fb59", X"00da", X"0078", X"0174", X"01ed", X"feaf", X"f779", X"feb5", X"fa8a", X"017c", X"03e9", X"007b",
                                                        X"020b", X"fd7a", X"03a1", X"f880", X"ff27", X"05b2", X"034b", X"037f", X"0418", X"00fe", X"f357", X"0540", X"f9b0", X"01cc",
                                                        X"f988", X"02d8", X"02aa", X"f9c6", X"07c4", X"fc9c", X"fea4", X"ff74", X"0221", X"0515", X"010f", X"fe6f", X"ef52", X"fab2",
                                                        X"f993", X"045e", X"fa2a", X"0293", X"00a1", X"fe44", X"02e5", X"fabb", X"0160", X"01f3", X"fe2b", X"03be", X"01ba", X"fbf7",
                                                        X"f182", X"febe", X"fd5c", X"0058", X"f611", X"feeb", X"ff0c", X"fcc9", X"02b9", X"fd03", X"fc00", X"03b5", X"fe3e", X"02c1",
                                                        X"0497", X"fc4a", X"f7d1", X"f78c", X"fbb6", X"feda", X"f551", X"00e4", X"ff6a", X"fe00", X"0637", X"fec8", X"ffa7", X"fb52",
                                                        X"fe85", X"05f6", X"0448", X"0108", X"fa44", X"ff8c", X"f91a", X"0409", X"fa47", X"ff49", X"0054", X"0079", X"03e0", X"f82f",
                                                        X"fccd", X"0208", X"fba2", X"0494", X"045f", X"0072", X"f8f0", X"f6e4", X"fe00", X"00c9", X"fce7", X"0411", X"ff9a", X"fbdf",
                                                        X"0180", X"f975", X"fb2c", X"00f0", X"fc67", X"028d", X"0aae", X"038f", X"f5f3", X"f4f8", X"fbc9", X"023f", X"f6c6", X"0230",
                                                        X"00af", X"ffb3", X"00ee", X"f7b7", X"fe5b", X"fbbe", X"fa99", X"0312", X"0733", X"0545", X"f78d", X"f34b", X"fb20", X"045b",
                                                        X"fff3", X"01f8", X"0265", X"fa82", X"01d5", X"f1d1", X"fb8d", X"fb30", X"fd22", X"0326", X"08f6", X"01da", X"fba3", X"fc59",
                                                        X"fb92", X"03a1", X"0923", X"fdf3", X"010a", X"fed4", X"012f", X"f700", X"00a0", X"f8bb", X"00a3", X"065d", X"05ff", X"ff2c",
                                                        X"fdb1", X"fa67", X"fa07", X"020a", X"06d5", X"ff12", X"01fd", X"fc73", X"feb5", X"f3e7", X"04a2", X"0359", X"fff0", X"06f6",
                                                        X"01a4", X"fda9", X"f5a6", X"f4d8", X"0015", X"035b", X"f8ee", X"ffc1", X"fff0", X"fca1", X"011b", X"0094", X"002c", X"fca1",
                                                        X"fa59", X"06e2", X"032a", X"fc46", X"ec5b", X"fc3c", X"fc87", X"02a2", X"f0c0", X"ffb1", X"0500", X"fd86", X"05d2", X"ff91",
                                                        X"fc0c", X"0170", X"fbab", X"045a", X"0432", X"ffee", X"fc4a", X"f599", X"fc97", X"0652", X"fcee", X"0279", X"01c9", X"fd5d",
                                                        X"01a3", X"fc2d", X"fb8f", X"fefc", X"fa10", X"07bd", X"0226", X"0120", X"fdc1", X"01b1", X"f96d", X"0607", X"0171", X"0495",
                                                        X"0419", X"fe2e", X"0136", X"f5ab", X"fdf5", X"fbd2", X"01bb", X"06a4", X"02dc", X"ffcc", X"f432", X"f940", X"fb4e", X"06d5",
                                                        X"fefa", X"053a", X"0330", X"0308", X"007a", X"fa6d", X"0221", X"024d", X"056e", X"090d", X"01d1", X"fcca", X"f53e", X"0748",
                                                        X"f735", X"0699", X"02d4", X"0818", X"05bd", X"ff94", X"018b", X"f83e", X"fe18", X"00d9", X"0218", X"076a", X"02ab", X"ffee",
                                                        X"fae1", X"0744", X"f6e1", X"0773", X"0019", X"02db", X"0757", X"0119", X"029e", X"f79c", X"fe26", X"003b", X"0741", X"0394",
                                                        X"06a7", X"fe8f", X"0241", X"0479", X"f615", X"06e4", X"031a", X"03b3", X"0105", X"fd57", X"05d8", X"fa0c", X"00ab", X"0114",
                                                        X"ff4b", X"0211", X"0277", X"046d", X"00ad", X"0486", X"00e0", X"00e5", X"f940", X"057e", X"fbfa", X"fbdb", X"0040", X"0110",
                                                        X"fe26", X"0423", X"01dd", X"006a", X"fd8c", X"0283", X"f914", X"036e", X"fdc6", X"038c", X"fb48", X"02fb", X"ffbc", X"000f",
                                                        X"048b", X"032c", X"fa4e", X"007f", X"fbbd", X"fff0", X"0180", X"07d6", X"f48d", X"fb63", X"fe65", X"042b", X"fa90", X"0256",
                                                        X"00c2", X"01c6", X"0879", X"fd86", X"0057", X"0068", X"0098", X"0492", X"0150", X"0a13", X"f7cf", X"01e3", X"fc72", X"03b5",
                                                        X"0584", X"06ea", X"02f7", X"02b8", X"0c00", X"02ef", X"0304", X"ffb4", X"01d3", X"039c", X"02cd", X"04c3", X"fb11", X"058b",
                                                        X"feb1", X"07c7", X"03b3", X"04a5", X"fed6", X"05ee", X"08e8", X"f8a5", X"05d1", X"fe6c", X"044f", X"06c8", X"0827", X"03b3",
                                                        X"fa1c", X"0086", X"feee", X"0757", X"0a3a", X"00c4", X"04b1", X"037d", X"0abf", X"f58f", X"0960", X"01fe", X"0691", X"0b47",
                                                        X"078e", X"fe41", X"01e5", X"ffa6", X"fed9", X"08a5", X"11da", X"fd16", X"05bd", X"03e0", X"0320", X"fecb", X"0674", X"fd0e",
                                                        X"0112", X"0544", X"06ed", X"fd1c", X"fe97", X"f9c1", X"ff5d", X"0381", X"0677", X"0336", X"0216", X"fd3a", X"01f1", X"017d",
                                                        X"fc88", X"fe6c", X"0188", X"076d", X"002e", X"fb62", X"fe00", X"fbdb", X"fd0c", X"0267", X"ff39", X"014f", X"fd0f", X"00b9",
                                                        X"fef6", X"fffb", X"02c6", X"fa35", X"024d", X"074a", X"02dc", X"faec", X"f5f4", X"0124", X"f9a2", X"0407", X"fd7f", X"fec5",
                                                        X"fdac", X"ff62", X"ffa3", X"023f", X"02a0", X"fd0c", X"024c", X"05e0", X"053e", X"00be", X"fcfd", X"05f5", X"fe42", X"0370",
                                                        X"ff09", X"01fa", X"fda8", X"00ca", X"ff4e", X"fda8", X"fcd4", X"fbe4", X"fcc7", X"0b87", X"0555", X"fe1a", X"f955", X"02d1",
                                                        X"fe83", X"05e6", X"0225", X"027e", X"0179", X"feea", X"0845", X"ffdb", X"fff1", X"026a", X"01b4", X"085f", X"05d6", X"022f",
                                                        X"fdd2", X"fcc7", X"fbe6", X"0936", X"0041", X"0875", X"ff49", X"00f4", X"057e", X"fd49", X"fc46", X"0014", X"0569", X"092d",
                                                        X"0852", X"0184", X"f819", X"fd7b", X"fe8a", X"07ae", X"0512", X"0475", X"0277", X"034e", X"0329", X"fe4f", X"feb4", X"feef",
                                                        X"0582", X"06ac", X"0556", X"03d0", X"070b", X"fa69", X"00b7", X"0af2", X"0d5a", X"064b", X"01ef", X"fee9", X"065c", X"036f",
                                                        X"ffac", X"fb93", X"fe12", X"03aa", X"057f", X"0246", X"fe20", X"056e", X"ffa3", X"0693", X"06a3", X"0886", X"0262", X"fac5",
                                                        X"05e5", X"002d", X"02fe", X"fbbe", X"006f", X"046b", X"01d0", X"0067", X"f894", X"f98c", X"f9ba", X"0319", X"0070", X"02db",
                                                        X"01ab", X"fc11", X"04e4", X"f527", X"fcf6", X"03f7", X"fd12", X"0061", X"ff10", X"fe57", X"f520", X"0118", X"f82e", X"035b",
                                                        X"ff12", X"0373", X"fed4", X"f920", X"04b4", X"f9ad", X"f83c", X"0046", X"fc5a", X"01b0", X"ffbd", X"037f", X"f411", X"ffdf",
                                                        X"fe7e", X"02a8", X"fe7b", X"0733", X"fe28", X"f8f2", X"0ae6", X"f8db", X"fc74", X"0178", X"fadf", X"fe7f", X"01de", X"0867",
                                                        X"f169", X"fbb2", X"fe71", X"ff2e", X"fe74", X"055a", X"015c", X"fd0c", X"092b", X"f3a9", X"fa3c", X"fff7", X"f75e", X"02e6",
                                                        X"03ab", X"ff68", X"f10f", X"f56f", X"faa4", X"04f9", X"f7e1", X"002d", X"fe49", X"fd60", X"0737", X"fa63", X"fd97", X"01bc",
                                                        X"f7ef", X"0567", X"016d", X"0104", X"fc90", X"f6d2", X"fe12", X"03ce", X"011f", X"00d9", X"fdf5", X"fa70", X"0329", X"fc8e",
                                                        X"020b", X"ffbc", X"00ee", X"04ac", X"0557", X"0287", X"fab7", X"fb0c", X"034f", X"026b", X"09ae", X"01b5", X"fcf0", X"fe69",
                                                        X"05e5", X"f40b", X"fcd8", X"00d5", X"fce4", X"03d9", X"02c1", X"02f7", X"fadc", X"f79d", X"fb3d", X"0140", X"0813", X"fd41",
                                                        X"ff14", X"f93f", X"014d", X"fb64", X"f8ed", X"fc48", X"fb4a", X"0446", X"0252", X"ff84", X"f91d", X"fe21", X"fe7a", X"fff8",
                                                        X"fd7a", X"0424", X"fb1b", X"fa5e", X"007b", X"00bb", X"f52d", X"fbe7", X"f881", X"0558", X"0625", X"fb17", X"ea30", X"f027",
                                                        X"fb07", X"fde2", X"f8f5", X"0158", X"fbae", X"f90c", X"004e", X"f701", X"f8b1", X"fb6b", X"fc36", X"0160", X"03eb", X"ffbc",
                                                        X"f0c7", X"f699", X"fcbf", X"02f9", X"f75e", X"0387", X"fd9b", X"fba1", X"01cd", X"f559", X"f7da", X"feb6", X"fa98", X"01f1",
                                                        X"0266", X"ffe5", X"f302", X"ffd0", X"f855", X"058a", X"f849", X"01f1", X"05bb", X"f6f7", X"ff3c", X"f398", X"f8cd", X"0660",
                                                        X"fd49", X"0508", X"0250", X"00a7", X"f5f7", X"f6d8", X"f8cd", X"0878", X"f8e4", X"0559", X"04d7", X"fafb", X"ff5c", X"f41b",
                                                        X"faae", X"06cb", X"0205", X"0578", X"00f3", X"0063", X"f8be", X"f413", X"f62a", X"0651", X"03a9", X"055d", X"ff64", X"fb8a",
                                                        X"07e1", X"f164", X"fc33", X"0077", X"ff02", X"0539", X"0075", X"fdde", X"f996", X"f684", X"f2f0", X"0147", X"00fa", X"0363",
                                                        X"feec", X"f837", X"037a", X"f73c", X"0163", X"01c9", X"f858", X"03f9", X"fc2b", X"fe65", X"f5e6", X"ffd6", X"f1de", X"fcc8",
                                                        X"f8db", X"0479", X"fc95", X"f863", X"fefd", X"f5cf", X"fde1", X"fb59", X"f78c", X"fd73", X"fc8a", X"fb9d", X"e8ba", X"f913",
                                                        X"fa5b", X"0173", X"f0ea", X"028a", X"fdcd", X"f874", X"0277", X"fefb", X"f443", X"ffc0", X"f60f", X"fedd", X"fc06", X"ff90",
                                                        X"ea38", X"f539", X"f9e5", X"0056", X"eba3", X"0101", X"fad9", X"fa95", X"fecc", X"f325", X"f81c", X"fb6b", X"f92c", X"03f9",
                                                        X"ff44", X"fe8c", X"e6d3", X"ffaa", X"fb43", X"ffd1", X"f7ca", X"047a", X"03e9", X"fac5", X"02fe", X"eee7", X"00a8", X"00f7",
                                                        X"fbea", X"029b", X"02cd", X"058a", X"f59a", X"fd98", X"feca", X"025e", X"01db", X"05af", X"0121", X"fe30", X"046b", X"f263",
                                                        X"f9eb", X"020d", X"f91e", X"04f7", X"0139", X"03d9", X"fbe6", X"f8c3", X"fcde", X"0488", X"fc31", X"0645", X"ffb1", X"fbe0",
                                                        X"02e3", X"f1c5", X"f970", X"02d4", X"fc6f", X"026b", X"05cb", X"ff63", X"fc2a", X"fbda", X"faab", X"03e6", X"08c2", X"0299",
                                                        X"fcfa", X"f74c", X"038e", X"f887", X"f122", X"0235", X"012e", X"034f", X"0470", X"fea6", X"f57f", X"f991", X"f997", X"046f",
                                                        X"fc82", X"012a", X"f9dc", X"f74f", X"03a8", X"f264", X"fbd6", X"fdf0", X"fbfb", X"04f3", X"03fa", X"fc3d", X"f15c", X"faa5",
                                                        X"f896", X"06e5", X"f9d1", X"0110", X"fcbc", X"f8f0", X"0230", X"f22a", X"fe25", X"fdc3", X"f914", X"0232", X"02bc", X"fd89",
                                                        X"f208", X"fae3", X"f5a1", X"0420", X"f32c", X"0489", X"ff4e", X"f9fb", X"0113", X"fa04", X"f311", X"fccb", X"fd33", X"ff47",
                                                        X"ff88", X"0089", X"edf0", X"f41c", X"f3c2", X"0594", X"f5c7", X"0400", X"fd22", X"f812", X"04e1", X"016f", X"fc42", X"fee1",
                                                        X"fbc6", X"ff5c", X"0812", X"ff94", X"e840", X"fc7c", X"f803", X"0bcb", X"fa23", X"0800", X"039f", X"f896", X"02aa", X"fcbe",
                                                        X"fb96", X"f818", X"fc53", X"0631");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0631";
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

