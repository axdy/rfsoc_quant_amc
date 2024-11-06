-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block434.vhd
-- Created: 2024-11-04 16:44:20
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block434
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage79/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block434 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block434;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block434 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"01ad", X"038a", X"ff9d", X"feb3", X"f97a", X"0287",
                                                        X"0ffb", X"ff5d", X"012d", X"fe33", X"fd12", X"0294", X"f6e1", X"ff09", X"051f", X"fec6", X"fe6d", X"0402", X"f9b3", X"fbd6",
                                                        X"fcef", X"0196", X"feb3", X"0506", X"0295", X"ff54", X"fb0c", X"ff44", X"ff9d", X"fe7d", X"045a", X"0035", X"fe24", X"0472",
                                                        X"015f", X"01e3", X"fabc", X"fcde", X"ff38", X"0285", X"fb1e", X"fd43", X"fc2b", X"f710", X"0097", X"0170", X"053f", X"fd96",
                                                        X"fd83", X"04b0", X"02f4", X"07c6", X"fb07", X"04f7", X"071b", X"08ac", X"f68e", X"006d", X"01f5", X"f5ef", X"0520", X"0c08",
                                                        X"05aa", X"0018", X"ff9d", X"0cb5", X"f9bf", X"010a", X"f873", X"ffc2", X"0c08", X"fe47", X"fdc6", X"0029", X"ffb7", X"f9a0",
                                                        X"0166", X"0104", X"0742", X"fc3c", X"0419", X"02e8", X"00a4", X"fe2c", X"fc58", X"00ac", X"0dc5", X"0022", X"fe87", X"019e",
                                                        X"030c", X"fb95", X"08db", X"0825", X"0152", X"fdb6", X"ff49", X"ff94", X"f9e4", X"fb60", X"fd2d", X"039e", X"0943", X"027d",
                                                        X"00ea", X"fe41", X"00d4", X"0261", X"fc76", X"0842", X"05d0", X"0178", X"0250", X"fc16", X"031e", X"f91c", X"fa53", X"075f",
                                                        X"0d83", X"fd4a", X"f86c", X"01c9", X"049d", X"faf6", X"032d", X"0de4", X"0227", X"00d2", X"0261", X"ff09", X"019b", X"f8dd",
                                                        X"fa3d", X"0790", X"0f98", X"faac", X"f8f5", X"fec4", X"01a2", X"fae4", X"03be", X"0a8a", X"037b", X"0254", X"018d", X"feb4",
                                                        X"059e", X"fa7e", X"fe3d", X"0097", X"081c", X"fe77", X"fcf6", X"0190", X"015f", X"fd4e", X"fe9b", X"01b1", X"0324", X"0204",
                                                        X"ff9a", X"0013", X"fab6", X"ffb6", X"fb95", X"ff09", X"0200", X"0008", X"fe78", X"fe94", X"fe36", X"f8b1", X"ffab", X"0291",
                                                        X"021f", X"fef8", X"fedc", X"ffd8", X"f9f7", X"01ee", X"fd53", X"0324", X"1408", X"0084", X"fac8", X"00be", X"0937", X"fa84",
                                                        X"feab", X"090f", X"038f", X"00bb", X"ff32", X"ff58", X"fdd4", X"fd25", X"f656", X"01f3", X"020f", X"00b5", X"0283", X"fd71",
                                                        X"ffeb", X"f48c", X"f91f", X"feb6", X"0aa0", X"ff54", X"fff8", X"faa3", X"0443", X"03d4", X"f836", X"00bf", X"0f31", X"fd60",
                                                        X"ffbc", X"fd98", X"07ab", X"f8db", X"fdc2", X"09a0", X"06cf", X"029f", X"fdef", X"022c", X"00df", X"ff32", X"fa9d", X"0305",
                                                        X"077c", X"ff64", X"078a", X"00fd", X"01e6", X"007c", X"ff15", X"08ad", X"06b3", X"068a", X"01a7", X"f881", X"f97d", X"f316",
                                                        X"fb09", X"01ec", X"0748", X"fbed", X"0335", X"0418", X"fe90", X"0439", X"f718", X"ffa0", X"03ba", X"033c", X"01a0", X"ff65",
                                                        X"fd93", X"feaf", X"fbf8", X"02bc", X"0dc1", X"fdcd", X"ffca", X"05f1", X"fda5", X"fb37", X"f71e", X"0c54", X"07c8", X"022b",
                                                        X"0135", X"0149", X"0025", X"ff62", X"fd7d", X"0342", X"0cbb", X"face", X"f6f6", X"ff9c", X"fbbc", X"f9dc", X"011b", X"fd5e",
                                                        X"feec", X"017a", X"07a0", X"ff6a", X"fde3", X"f402", X"fed8", X"ffe8", X"0810", X"00c0", X"fbee", X"0138", X"0399", X"f59d",
                                                        X"017e", X"04f3", X"007f", X"01f5", X"04ce", X"03c9", X"0100", X"fde8", X"03d9", X"00f3", X"0902", X"06b8", X"fd28", X"fb7a",
                                                        X"fdfc", X"fd24", X"fb77", X"08be", X"ffc4", X"ffc8", X"04ac", X"0440", X"f85b", X"f741", X"fffa", X"03b1", X"001e", X"034a",
                                                        X"f5cc", X"00bd", X"fdd4", X"fe9e", X"019b", X"04c2", X"030e", X"0243", X"ff30", X"ff0c", X"fcca", X"fe99", X"f5ed", X"03e9",
                                                        X"0b36", X"ff14", X"f65a", X"012a", X"009d", X"fb4a", X"01ab", X"0563", X"0320", X"04f2", X"0363", X"0452", X"fd85", X"fe62",
                                                        X"fc22", X"016b", X"11ad", X"fe3e", X"fa75", X"059d", X"0137", X"fa29", X"fdc6", X"fd4b", X"0438", X"06b3", X"01ab", X"0193",
                                                        X"ffd2", X"fa73", X"ff87", X"030a", X"08d9", X"0279", X"fc2f", X"fe46", X"fcf2", X"f8a6", X"fbc2", X"fe64", X"01a7", X"053c",
                                                        X"fe62", X"fd37", X"0700", X"00da", X"fda3", X"026d", X"094b", X"0318", X"f6dc", X"003b", X"fc76", X"fb99", X"0041", X"0076",
                                                        X"02b8", X"00ae", X"00fe", X"058e", X"ff61", X"fc75", X"fa60", X"04a0", X"06fc", X"046a", X"f9de", X"00ae", X"fef1", X"00e8",
                                                        X"000b", X"ffaa", X"05ee", X"ff6b", X"fd54", X"007b", X"0a3d", X"01c4", X"fec9", X"0439", X"0837", X"04c6", X"fa71", X"fe17",
                                                        X"fedb", X"fa65", X"0028", X"0579", X"04d3", X"faae", X"02d9", X"fdf8", X"01a9", X"fe57", X"f92c", X"0114", X"0a3c", X"0030",
                                                        X"fd98", X"fb51", X"fb86", X"fe15", X"062b", X"060f", X"03c3", X"fcb3", X"0460", X"0a1d", X"fe47", X"fe67", X"fbad", X"0101",
                                                        X"03dc", X"032f", X"ff91", X"fbbd", X"fc01", X"fe26", X"0333", X"0728", X"00b4", X"f9dd", X"03f3", X"02cd", X"0096", X"01d3",
                                                        X"f837", X"0206", X"0312", X"fda4", X"fe0b", X"fbf8", X"fef7", X"faf8", X"ff6d", X"064d", X"06b9", X"ff8f", X"ff2a", X"02fb",
                                                        X"fd7d", X"fe84", X"f70a", X"0325", X"0422", X"00b6", X"fd3a", X"fd62", X"017d", X"fb51", X"fffe", X"0771", X"055f", X"00d3",
                                                        X"057d", X"fe6b", X"0194", X"f9d0", X"fbdb", X"029c", X"0deb", X"001a", X"fea8", X"0099", X"ffbf", X"fe15", X"0448", X"00d6",
                                                        X"039f", X"0264", X"0338", X"0559", X"fe59", X"f606", X"fbca", X"01d5", X"06bf", X"0020", X"0003", X"00b5", X"ffd4", X"f953",
                                                        X"002f", X"058e", X"069a", X"ffa5", X"0416", X"fd5a", X"fa15", X"f7f5", X"012a", X"02a9", X"0760", X"fe97", X"fe9d", X"0095",
                                                        X"012b", X"05bc", X"fe48", X"ff1c", X"ff53", X"0082", X"027e", X"049f", X"ff2e", X"fa38", X"0005", X"00d8", X"08be", X"020e",
                                                        X"fbb3", X"03a3", X"fd9d", X"fcb4", X"fc28", X"0632", X"02ce", X"0083", X"0291", X"fe38", X"ffab", X"f5a8", X"0351", X"027d",
                                                        X"0c29", X"0043", X"f7ba", X"ff6c", X"0367", X"f94b", X"fc4e", X"054b", X"0040", X"0755", X"fd0c", X"015b", X"0591", X"f6ba",
                                                        X"fcfa", X"0276", X"0296", X"ff66", X"fe75", X"fd96", X"000a", X"f7f5", X"0269", X"0b9e", X"0b92", X"04ea", X"fd8a", X"007d",
                                                        X"0037", X"01e6", X"fcb5", X"ffa8", X"10f1", X"0157", X"fac3", X"0192", X"feff", X"f8c1", X"fc22", X"0110", X"033d", X"fe12",
                                                        X"fe59", X"00b0", X"fe27", X"018e", X"fc07", X"013a", X"0c7e", X"fb7f", X"fda7", X"0063", X"0073", X"f7ba", X"037e", X"03b5",
                                                        X"02bb", X"00b3", X"008a", X"0522", X"fc02", X"fe4e", X"fbeb", X"011e", X"07fa", X"fe9b", X"fccd", X"05a0", X"fd92", X"f48c",
                                                        X"ffaa", X"0290", X"0726", X"00fb", X"fe9a", X"ff57", X"f9f5", X"fc6b", X"fd25", X"ff51", X"08b4", X"fe03", X"f9fe", X"007b",
                                                        X"032c", X"f648", X"fabf", X"0e7d", X"ffac", X"014a", X"fff1", X"0312", X"048b", X"f3f4", X"fb4b", X"0153", X"0bdd", X"0014",
                                                        X"fb28", X"feb3", X"01b3", X"f994", X"fc50", X"0ec3", X"022a", X"fe4e", X"fe2b", X"0a41", X"f706", X"ffe9", X"fe0e", X"fe9c",
                                                        X"093e", X"fde2", X"fceb", X"fd62", X"ffe6", X"00cf", X"fdd1", X"04c1", X"026e", X"fe38", X"fa84", X"0864", X"f70c", X"fe84",
                                                        X"0181", X"ff37", X"014b", X"04fd", X"fdc6", X"0374", X"ffaa", X"f8bb", X"f95e", X"00a5", X"03f1", X"fbfc", X"ff51", X"01b1",
                                                        X"f86a", X"f9f2", X"fc2a", X"00d1", X"0a6f", X"01d4", X"0096", X"fefe", X"fcee", X"f796", X"fe4c", X"01ab", X"07e4", X"026c",
                                                        X"0348", X"02d6", X"fbb7", X"fa4c", X"00c1", X"0031", X"0783", X"0219", X"00a8", X"003b", X"ffba", X"f2e5", X"02e3", X"075c",
                                                        X"00bd", X"04bf", X"0093", X"03e1", X"fa76", X"f8db", X"fd34", X"0068", X"04ff", X"01fa", X"f932", X"fe6d", X"02e0", X"ee69",
                                                        X"064f", X"071a", X"02c4", X"0115", X"fbdc", X"ffc5", X"01d7", X"feaa", X"005a", X"01e2", X"1411", X"f979", X"fe08", X"fcf1",
                                                        X"031c", X"f8ff", X"0269", X"01db", X"0664", X"0505", X"fdc6", X"05cc", X"fb56", X"f977", X"fe41", X"0005", X"085a", X"ffa7",
                                                        X"f996", X"0031", X"057a", X"f7c5", X"f8a1", X"02a1", X"0296", X"00e9", X"00e4", X"023c", X"fdda", X"ff29", X"f816", X"fec7",
                                                        X"0e36", X"ff3a", X"f6da", X"fec9", X"0279", X"f836", X"f7cb", X"046c", X"052e", X"0261", X"fcb0", X"05cb", X"fd99", X"0b12",
                                                        X"fdc0", X"fc27", X"00f3", X"fe5b", X"f830", X"fff5", X"0117", X"f9a0", X"f87c", X"fea6", X"02ae", X"ff06", X"0007", X"0472",
                                                        X"f804", X"f661", X"f7a2", X"fe2f", X"03d7", X"fb1a", X"00f2", X"f94a", X"02b0", X"ff10", X"fa5c", X"030a", X"01f2", X"fad4",
                                                        X"ff9c", X"04f9", X"01ca", X"f8c9", X"fd24", X"0446", X"062a", X"043a", X"fc8c", X"ff05", X"fdba", X"0221", X"fbb0", X"0394",
                                                        X"06bf", X"fb12", X"0711", X"0218", X"fd85", X"01ec", X"ffee", X"0113", X"0348", X"0181", X"fe6a", X"00f4", X"ff7a", X"ff04",
                                                        X"fe73", X"0eb5", X"0b68", X"febb", X"0556", X"0a62", X"fe77", X"f978", X"fb91", X"0564", X"1776", X"0284", X"ffa2", X"0667",
                                                        X"fdf5", X"fa53", X"fc3c", X"07d7", X"02d2", X"fc84", X"0210", X"016d", X"faa0", X"fc47", X"026a", X"0206", X"0fca", X"0633",
                                                        X"f857", X"02fc", X"0328", X"fc02", X"fceb", X"06b0", X"014e", X"0502", X"0265", X"06e3", X"0421", X"00d0", X"0091", X"0420",
                                                        X"0e08", X"0110", X"fcd4", X"f9a9", X"fea6", X"f3ae", X"fe9e", X"0fde", X"ffd0", X"014e", X"040f", X"0351", X"fd03", X"fc9d",
                                                        X"012e", X"01ac", X"04ee", X"fed9", X"fcba", X"0377", X"012e", X"f8fb", X"fe63", X"0a1a", X"03b7", X"02b8", X"0172", X"062b",
                                                        X"0376", X"fd2e", X"0129", X"0358", X"0614", X"fbc4", X"fe4e", X"ffc8", X"fd61", X"fbde", X"07b5", X"072a", X"0053", X"00fb",
                                                        X"02c2", X"ff5f", X"01d5", X"f419", X"fede", X"fe9a", X"09b6", X"0080", X"0038", X"006c", X"034f", X"fff1", X"ff4d", X"076d",
                                                        X"0587", X"08b2", X"ffb0", X"068a", X"f7ee", X"0021", X"ff47", X"0062", X"06e8", X"0435", X"fef2", X"061c", X"0255", X"fe16",
                                                        X"0259", X"fe21", X"030a", X"016a", X"ff22", X"0852", X"fc45", X"faae", X"fcef", X"0003", X"0cbc", X"068a", X"fef0", X"0186",
                                                        X"076c", X"f80a", X"0398", X"0578", X"044e", X"0174", X"02f3", X"0411", X"01bd", X"003f", X"ff0f", X"0445", X"08b5", X"04f5",
                                                        X"fc03", X"053f", X"070e", X"fb5d", X"fceb", X"0ab6", X"04da", X"073e", X"ffdd", X"013f", X"ff27", X"f890", X"007b", X"ffd1",
                                                        X"0a08", X"0585", X"fbbc", X"014b", X"05d0", X"f83f", X"017b", X"0458", X"ff2f", X"03c3", X"0303", X"05f9", X"00cd", X"f9de",
                                                        X"f8bc", X"fec9", X"0c1d", X"fbe0", X"fff3", X"014c", X"fe92", X"f3af", X"003a", X"0474", X"05a0", X"0542", X"ff3e", X"01d3",
                                                        X"fc7e", X"fd99", X"fd0f", X"ff05", X"08af", X"ff71", X"f556", X"feb6", X"fb01", X"fd84", X"fcb2", X"0495", X"01d2", X"04a3",
                                                        X"01e9", X"0585", X"fcb0", X"f7ae", X"fadb", X"0372", X"079c", X"feab", X"feed", X"fe6c", X"fbce", X"fb77", X"ffd8", X"ff59",
                                                        X"01d9", X"0077", X"01e6", X"ff3b", X"fb59", X"fef1", X"f99f", X"fe8b", X"0825", X"fbd2", X"0285", X"fce0", X"fc35", X"fb16",
                                                        X"ffca", X"042e", X"04cf", X"0101", X"0500", X"fe3f", X"ff85", X"fe16", X"fee3", X"0381", X"f797", X"ff52", X"0494", X"fbaa",
                                                        X"fe58", X"fd05", X"f9bb", X"fef9", X"013d", X"fddf", X"017e", X"07a7", X"05e0", X"fd24", X"ff96", X"0089", X"08ce", X"00b2",
                                                        X"fbee", X"008e", X"0059", X"fb77", X"0818", X"056c", X"0143", X"01c9", X"0168", X"03f9", X"01d4", X"f164", X"0195", X"fe21",
                                                        X"0677", X"ff97", X"fc03", X"00ae", X"0332", X"f962", X"059c", X"086f", X"ff05", X"0481", X"066f", X"081f", X"ff1e", X"f866",
                                                        X"01e8", X"ff5a", X"16c8", X"fdc1", X"fc8e", X"0279", X"fe23", X"fca3", X"fe75", X"0bfe", X"fdd9", X"027f", X"fd82", X"08d3",
                                                        X"f6da", X"0412", X"fb7b", X"feaa", X"11df", X"0295", X"0498", X"03dc", X"01e3", X"fb6a", X"fd39", X"06c5", X"0188", X"02b1",
                                                        X"015d", X"06f9", X"fc9d", X"faf7", X"fe5e", X"febb", X"0e57", X"03ef", X"0185", X"06cb", X"ff43", X"fe34", X"026f", X"0353",
                                                        X"08a3", X"0115", X"07d8", X"0413", X"f62d", X"f665", X"fd9d", X"00bb", X"037b", X"020e", X"ffd6", X"033f", X"fc84", X"f6e9",
                                                        X"fd34", X"059c", X"04e7", X"02ba", X"0537", X"0855", X"f77a", X"fd22", X"00d4", X"007c", X"0875", X"0968", X"ff0f", X"00b8",
                                                        X"0369", X"fa79", X"09c7", X"0fb0", X"05d6", X"0116", X"04d4", X"044e", X"fb35", X"0065", X"036d", X"02e5", X"11e5", X"0722",
                                                        X"f9fb", X"02f3", X"0315", X"fb95", X"0a18", X"0831", X"01dd", X"0267", X"0302", X"06c6", X"f6e9", X"01a1", X"026a", X"04cc",
                                                        X"0ce0", X"0209", X"fe94", X"0541", X"029d", X"f8c8", X"057e", X"01e5", X"06d1", X"0338", X"001d", X"01ac", X"fd16", X"007f",
                                                        X"fbd2", X"01fe", X"026c", X"fd6c", X"fa50", X"0220", X"0447", X"fb0c", X"0488", X"fac1", X"03fb", X"09a3", X"ffac", X"f76d",
                                                        X"068f", X"017e", X"f9da", X"ff1e", X"09f3", X"017a", X"06f5", X"fdc4", X"ffe7", X"fc41", X"0566", X"0339", X"09cb", X"06a4",
                                                        X"fef1", X"0152", X"fe80", X"fa07", X"fc3c", X"fea9", X"0a28", X"fed8", X"fa55", X"fe51", X"fcb2", X"f9b7", X"0556", X"0370",
                                                        X"028b", X"034b", X"0156", X"05cb", X"fd8c", X"fca1", X"ffb9", X"022f", X"0ce7", X"012f", X"005a", X"fd89", X"ffd8", X"0020",
                                                        X"fab8", X"00cc", X"03b3", X"fff5", X"04e7", X"044a", X"0027", X"08a6", X"f974", X"02c8", X"0ae0", X"feda", X"ffda", X"0385",
                                                        X"015f", X"f7b6", X"fd9c", X"09dd", X"0aef", X"0105", X"064d", X"0325", X"fe0d", X"0778", X"fbda", X"03ab", X"02da", X"fc01",
                                                        X"fd1d", X"fc6e", X"ff25", X"faef", X"002a", X"0786", X"075e", X"fe92", X"018e", X"0369", X"f8dd", X"ffa0", X"0080", X"0149",
                                                        X"005b", X"feee", X"00b0", X"006e", X"087d", X"fa6b", X"0385", X"0005", X"031f", X"0197", X"07e6", X"017f", X"00c9", X"edee",
                                                        X"01f7", X"ff0e", X"0d6f", X"011f", X"fe7e", X"03a6", X"07a7", X"fb5b", X"fea6", X"06ad", X"02ea", X"0086", X"0a6d", X"0761",
                                                        X"ffc7", X"fe55", X"018f", X"ffd5", X"0d4c", X"ffb8", X"fc36", X"00d7", X"02f4", X"015d", X"fc6e", X"0a87", X"013f", X"ff90",
                                                        X"fbe9", X"019a", X"fae8", X"ee9b", X"fd82", X"0011", X"0883", X"fd45", X"f9d3", X"03f9", X"0b0d", X"fa55", X"f8f7", X"0175",
                                                        X"0066", X"fe7f", X"ff09", X"ffca", X"006b", X"0273", X"0103", X"ffdf", X"0c1e", X"fea7", X"f678", X"0183", X"035a", X"fd21",
                                                        X"f8c5", X"096c", X"0432", X"fef6", X"011e", X"0491", X"0134", X"f763", X"fdee", X"0152", X"0d41", X"ff5e", X"f7cb", X"0063",
                                                        X"fd80", X"fc86", X"f9f3", X"05a4", X"fd44", X"fe82", X"ff10", X"012d", X"0208", X"f3b0", X"fd8b", X"02f5", X"0c4c", X"0372",
                                                        X"fb32", X"01ff", X"fead", X"fbe5", X"01d6", X"fb9d", X"058c", X"ff61", X"fdee", X"028b", X"03f6", X"f663", X"fe27", X"000e",
                                                        X"07c7", X"fd10", X"fb6c", X"fe68", X"fe0e", X"f6b1", X"fe03", X"fec9", X"ff50", X"0128", X"00d7", X"003b", X"007f", X"f7ef",
                                                        X"f601", X"002c", X"07e9", X"0123", X"f632", X"0000", X"fe77", X"ff07", X"fd7c", X"041a", X"00b9", X"04b1", X"fe18", X"fe62",
                                                        X"01c6", X"f688", X"fc02", X"0156", X"0e03", X"fdf2", X"fbf2", X"ff84", X"fbc2", X"fc5b", X"fd13", X"04cc", X"06fb", X"00ca",
                                                        X"fdcf", X"0458", X"0201", X"0562", X"0017", X"04a6", X"0edf", X"ff31", X"f9f8", X"0052", X"fec7", X"041c", X"fdad", X"fe37",
                                                        X"0192", X"01b2", X"0166", X"0160", X"fb06", X"fe3c", X"faf0", X"0391", X"0a8b", X"009f", X"f954", X"ff96", X"fb8b", X"ff62",
                                                        X"013c", X"fa61", X"fdc0", X"05d7", X"01b3", X"03df", X"0231", X"f724", X"f28a", X"052b", X"00fe", X"04b5", X"fc4f", X"fe7d",
                                                        X"fc06", X"fe55", X"ffa8", X"0070", X"0427", X"05c4", X"020e", X"fc5e", X"f9ea", X"fd22", X"f634", X"ffaa", X"0478", X"0274",
                                                        X"fd5a", X"fe07", X"fb72", X"f5df", X"fa35", X"0b43", X"0966", X"0250", X"02fa", X"fd80", X"fb4e", X"f91b", X"fcfe", X"0184",
                                                        X"01fe", X"0535", X"fc4c", X"04f8", X"f846", X"01b5", X"ff13", X"fe96", X"049f", X"ff11", X"ff5f", X"004a", X"f9c5", X"fbc2",
                                                        X"fb1f", X"01ae", X"02b0", X"fd8b", X"fae7", X"0499", X"fb0b", X"f693", X"05c1", X"fa71", X"04fc", X"00f5", X"04d0", X"0645",
                                                        X"f867", X"fb5d", X"fb1a", X"fe2e", X"0b1f", X"fe44", X"fc63", X"0127", X"ff53", X"fb93", X"fe3d", X"01d4", X"fedc", X"04a6",
                                                        X"febc", X"01b4", X"fae6", X"fee0", X"fd28", X"ffef", X"16e7", X"fe6b", X"fdb3", X"00d5", X"04a3", X"fad3", X"fb8f", X"064b",
                                                        X"ff99", X"03c3", X"fda8", X"0106", X"018a", X"0576", X"fec9", X"0029", X"127e", X"fe1c", X"00a6", X"0110", X"0245", X"f988",
                                                        X"fe47", X"0453", X"0358", X"0447", X"05ab", X"05b6", X"fa2a", X"03e3", X"feea", X"ff5a", X"0e96", X"fc70", X"fdf1", X"05cc",
                                                        X"01ba", X"fcc3", X"f602", X"040d", X"02f3", X"0190", X"060e", X"0855", X"fb37", X"05c3", X"0004", X"ff61", X"fee0", X"fe4b",
                                                        X"ff69", X"feb8", X"fbe2", X"fc3f", X"f728", X"033f", X"05ad", X"001a", X"05e0", X"04b1", X"0049", X"00c1", X"f9de", X"0091",
                                                        X"07f8", X"ff6a", X"ffee", X"fe39", X"03aa", X"faa6", X"fde4", X"027a", X"0556", X"fb85", X"09ed", X"06bf", X"f83a", X"fefb",
                                                        X"fb8e", X"0363", X"02b0", X"0369", X"fab3", X"f8fb", X"01b9", X"f8a4", X"01a1", X"fe30", X"05a9", X"fb01", X"fbc0", X"05d9",
                                                        X"fc7f", X"fb50", X"fd41", X"042e", X"0e26", X"0599", X"014f", X"fdd3", X"0557", X"fb1a", X"07bd", X"053a", X"0433", X"fddf",
                                                        X"fb23", X"0a65", X"010b", X"ffa3", X"fee4", X"0351", X"0acb", X"0341", X"fe72", X"0264", X"0825", X"fae4", X"0004", X"02ce",
                                                        X"05b6", X"ff62", X"fc59", X"fdf1", X"022a", X"01a3", X"f777", X"0268", X"07ba", X"fba9", X"047d", X"058c", X"0818", X"ffc2",
                                                        X"ff2a", X"ff42", X"0967", X"00fc", X"03a9", X"05a0", X"fbf9", X"f5ac", X"f9b8", X"0754", X"0aed", X"061b", X"f97d", X"0391",
                                                        X"ff69", X"0640", X"0127", X"fffd", X"0b27", X"0026", X"0715", X"0c28", X"f791", X"fa90", X"f843", X"04e4", X"0c62", X"074b",
                                                        X"ff1a", X"0593", X"0353", X"f8a5", X"04c6", X"fe6f", X"04f1", X"03f2", X"0376", X"03cb", X"fdb8", X"f788", X"f3f0", X"03c9",
                                                        X"0b21", X"064a", X"012f", X"073b", X"fb36", X"ff75", X"0842", X"00df", X"0f90", X"0691", X"027d", X"0130", X"00d0", X"ffbc",
                                                        X"fb74", X"07ea", X"03ed", X"000c", X"fe1c", X"040f", X"fe3c", X"f93f", X"06da", X"017d", X"098a", X"044d", X"0598", X"012d",
                                                        X"0641", X"fd7a", X"fc40", X"0561", X"06eb", X"fdcf", X"fa9f", X"0057", X"fabe", X"f69f", X"034e", X"ff2c", X"048b", X"fe61",
                                                        X"0495", X"ff11", X"0030", X"fa42", X"fae8", X"036e", X"14b6", X"011b", X"ffdf", X"01ad", X"ff20", X"fca5", X"fe07", X"0b62",
                                                        X"090a", X"ffea", X"0361", X"00b7", X"fe52", X"fe3f", X"fa97", X"ffde", X"0007", X"fdf4", X"fd58", X"054d", X"015e", X"fbc1",
                                                        X"fe09", X"02c9", X"08f0", X"0191", X"fcbb", X"0249", X"fa78", X"feb1", X"fed9", X"02b6", X"0b76", X"0514", X"ff1e", X"03d2",
                                                        X"04b0", X"f7b2", X"01b0", X"076f", X"0386", X"fecd", X"fc25", X"ff5f", X"013f", X"fe0f", X"f9d7", X"0496", X"0ec9", X"ffc1",
                                                        X"f999", X"ff53", X"0337", X"f8b4", X"fd24", X"01d0", X"052e", X"0019", X"fdff", X"0131", X"03e3", X"fe9f", X"fbca", X"02d2",
                                                        X"0fc7", X"006c", X"f8fc", X"0231", X"027a", X"001c", X"03d8", X"00b5", X"0631", X"0245", X"fe89", X"0298", X"f785", X"ff54",
                                                        X"faca", X"016f", X"091a", X"fe3e", X"f938", X"0246", X"0051", X"fccb", X"ff2d", X"0012", X"05c1", X"fe98", X"02ae", X"f9de",
                                                        X"fec7", X"f9ed", X"0147", X"0037", X"089e", X"f94b", X"012e", X"0554", X"003c", X"fa33", X"ff6b", X"07ba", X"04d5", X"0253",
                                                        X"fe0e", X"ff1f", X"002e", X"0321", X"05d7", X"0102", X"1139", X"fc24", X"fc61", X"053b", X"016d", X"01d6", X"ff8b", X"0160",
                                                        X"01cd", X"07ad", X"fbf5", X"0290", X"fdd0", X"f475", X"040b", X"fdf1", X"0e37", X"f7c0", X"f408", X"03bb", X"0710", X"01be",
                                                        X"0311", X"0122", X"fe6d", X"0810");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0810";
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

