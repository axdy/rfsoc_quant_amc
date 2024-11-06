-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block337.vhd
-- Created: 2024-11-04 16:44:11
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block337
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage105/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block337 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block337;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block337 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"1063", X"f90d", X"040c", X"f83f", X"07e2", X"ffa2",
                                                        X"fe53", X"fb71", X"f0c1", X"fbdb", X"f9f8", X"f789", X"f98e", X"0bfe", X"ff72", X"0fc1", X"0140", X"fb05", X"fdb9", X"fd9c",
                                                        X"f355", X"04f6", X"fb88", X"008a", X"079d", X"ff5c", X"0605", X"f831", X"0014", X"fc27", X"0d56", X"01ec", X"fb9e", X"fbf1",
                                                        X"fcd0", X"f64f", X"e91b", X"02a3", X"f96e", X"0654", X"03a8", X"fbe5", X"044d", X"ffcf", X"034f", X"f3ce", X"09a8", X"f8c3",
                                                        X"f8c7", X"f5fb", X"ffba", X"f741", X"e11c", X"016e", X"ff9d", X"074c", X"01f9", X"f986", X"01a7", X"fb28", X"0450", X"ec25",
                                                        X"0837", X"f5aa", X"f3bc", X"ffae", X"02d4", X"ff66", X"ecd8", X"ff13", X"f9a4", X"05b7", X"fd21", X"faa9", X"04d5", X"f903",
                                                        X"01e0", X"f6a2", X"0425", X"f96d", X"f4dc", X"0419", X"06c5", X"fc64", X"f3f3", X"0148", X"07f3", X"071d", X"ff62", X"0088",
                                                        X"0943", X"03e3", X"0364", X"f5bb", X"0390", X"fa2c", X"f8e3", X"022c", X"fcf7", X"035a", X"fac4", X"0242", X"fd93", X"0bde",
                                                        X"fbb5", X"fe80", X"075f", X"0071", X"03da", X"f768", X"ffc7", X"fc56", X"0064", X"0756", X"fe3d", X"013c", X"026c", X"00a6",
                                                        X"0c6a", X"0b07", X"0005", X"fd8e", X"0896", X"00ed", X"016b", X"0783", X"0048", X"fdba", X"feae", X"063e", X"fea6", X"0090",
                                                        X"064a", X"00f5", X"f9d3", X"0099", X"fd35", X"f98d", X"0112", X"0160", X"fa0c", X"0f2f", X"0068", X"fb15", X"fb62", X"0775",
                                                        X"fb7a", X"fdd3", X"0583", X"fede", X"fc56", X"0634", X"f0f9", X"f909", X"07a4", X"0122", X"f567", X"07f1", X"fa35", X"01ea",
                                                        X"fffb", X"0bc1", X"f60c", X"ff0c", X"06ef", X"01ae", X"fa2a", X"fc53", X"f82b", X"fe0a", X"017b", X"05aa", X"f491", X"f4db",
                                                        X"f4f7", X"05ec", X"01eb", X"0aef", X"fb60", X"fce5", X"0744", X"00dd", X"01ab", X"fbb5", X"f04d", X"ff9f", X"fd00", X"034f",
                                                        X"f06c", X"f796", X"f698", X"0a7b", X"056d", X"052a", X"fde7", X"0111", X"083d", X"ffc5", X"fca5", X"f719", X"f05e", X"064b",
                                                        X"f6d1", X"fe30", X"f678", X"fd98", X"f919", X"0adb", X"0572", X"01dd", X"0316", X"fa5f", X"0a9e", X"0054", X"fe45", X"f94c",
                                                        X"eea6", X"0987", X"f849", X"00d8", X"fa54", X"fe7d", X"01d2", X"0dcf", X"0b7d", X"012f", X"00fa", X"02bd", X"0220", X"ffdf",
                                                        X"0f62", X"fc61", X"ff89", X"058c", X"fb54", X"00d5", X"f705", X"fb2f", X"0687", X"0b35", X"069e", X"0572", X"febe", X"f52a",
                                                        X"fcda", X"02fe", X"ffac", X"fbfa", X"08a3", X"01fe", X"0262", X"0292", X"fa85", X"063d", X"025d", X"098b", X"ff90", X"fc7d",
                                                        X"0287", X"ff73", X"fc6e", X"035c", X"0c5d", X"fc56", X"0470", X"ffa7", X"ffec", X"fa2e", X"06af", X"f80e", X"03bc", X"01cc",
                                                        X"04cd", X"f893", X"0609", X"f85c", X"f4f0", X"0227", X"0904", X"fe4e", X"0418", X"008b", X"01fb", X"fe4b", X"040c", X"f786",
                                                        X"079b", X"03ee", X"01f6", X"f851", X"061a", X"f996", X"ece3", X"02c5", X"06e8", X"001b", X"04d4", X"fdf3", X"021d", X"fe2f",
                                                        X"0874", X"f4e3", X"0547", X"fe1f", X"fa4a", X"f84c", X"044e", X"f4bf", X"e91a", X"0379", X"ffee", X"06a7", X"0086", X"0183",
                                                        X"ff03", X"fb40", X"04c5", X"f244", X"0767", X"ff13", X"f900", X"0445", X"ff68", X"f60c", X"f0fc", X"01d0", X"feb2", X"072c",
                                                        X"fbdd", X"0294", X"0328", X"025a", X"017e", X"db08", X"04ba", X"fdbc", X"f9c7", X"03c8", X"f906", X"f662", X"fbf6", X"02a4",
                                                        X"fe93", X"06f6", X"0034", X"0180", X"09be", X"fad8", X"059c", X"f595", X"0607", X"f915", X"fd4e", X"feb6", X"fc8c", X"faf6",
                                                        X"fe0b", X"0235", X"0c15", X"074b", X"0122", X"004d", X"073c", X"03a7", X"02f1", X"0434", X"ffa9", X"00b0", X"041b", X"0ae1",
                                                        X"fe3c", X"fffe", X"05eb", X"fff3", X"0a3b", X"0c50", X"00bf", X"ff48", X"03e4", X"00d1", X"fd17", X"0aa4", X"fd7c", X"fe4e",
                                                        X"03d4", X"0292", X"028d", X"fdb8", X"0b49", X"faae", X"00db", X"0098", X"02a7", X"fa57", X"01e4", X"01e5", X"00d8", X"0818",
                                                        X"fb08", X"0383", X"037e", X"01f2", X"fcc9", X"fd53", X"03fe", X"fd40", X"fd1d", X"faef", X"fd20", X"ff91", X"025a", X"0278",
                                                        X"f5b6", X"f410", X"f7bd", X"0350", X"081b", X"0664", X"f707", X"004d", X"0446", X"f983", X"0a8b", X"f8c7", X"e850", X"ffef",
                                                        X"fd4f", X"f459", X"f6fb", X"f2b8", X"f2e3", X"076b", X"0248", X"071e", X"f872", X"fe13", X"0728", X"fa8d", X"fbd1", X"f8f5",
                                                        X"f054", X"023f", X"f98a", X"023c", X"eaca", X"fc2d", X"f9f6", X"09e9", X"0466", X"02be", X"febb", X"fc2f", X"00ac", X"f903",
                                                        X"0d7f", X"fb18", X"f0eb", X"0491", X"f9bd", X"fe56", X"f139", X"f594", X"f572", X"08e2", X"0688", X"ff7b", X"f3e7", X"f635",
                                                        X"01cd", X"01b2", X"04e3", X"fe0b", X"f883", X"0023", X"fcee", X"fdfb", X"f950", X"ff60", X"fd32", X"0518", X"06b3", X"01dc",
                                                        X"f69b", X"0783", X"03e4", X"0151", X"09a5", X"f94f", X"fc1e", X"037a", X"fe5f", X"fb43", X"0362", X"fd2f", X"00ba", X"0928",
                                                        X"084e", X"f9f6", X"fb9a", X"ffcc", X"0234", X"0071", X"0da7", X"fa6f", X"03d2", X"0062", X"f194", X"fb77", X"0088", X"0873",
                                                        X"012c", X"0281", X"04d7", X"f7c6", X"007c", X"f8bd", X"ff15", X"ff88", X"0219", X"fd7f", X"029d", X"0356", X"fbb6", X"04e5",
                                                        X"064b", X"f719", X"0578", X"0579", X"fda1", X"fc73", X"ff75", X"fced", X"f413", X"024c", X"ff20", X"fc98", X"fb02", X"fd73",
                                                        X"0435", X"ff65", X"0371", X"eab1", X"0518", X"fdda", X"f6ef", X"f6be", X"fdae", X"fd6c", X"e99b", X"0057", X"f3ab", X"0285",
                                                        X"0814", X"fd88", X"0301", X"fa9e", X"0489", X"f5f3", X"05e6", X"f688", X"fc90", X"f61f", X"fdc4", X"f786", X"f15d", X"0484",
                                                        X"fd42", X"0603", X"fda4", X"fdc9", X"0136", X"f9ed", X"09e1", X"eba1", X"0e0c", X"fa3a", X"fe92", X"03da", X"0206", X"fdd9",
                                                        X"eed6", X"0360", X"fcb2", X"04f6", X"fba0", X"02eb", X"0601", X"ff10", X"ffca", X"e6eb", X"0394", X"fb58", X"fc5b", X"014a",
                                                        X"fce1", X"ffe9", X"ed1e", X"00c2", X"0003", X"058b", X"0281", X"0096", X"0576", X"fd94", X"01c8", X"e2eb", X"0655", X"f7ae",
                                                        X"f87a", X"0370", X"0402", X"ffbb", X"f9be", X"feef", X"0744", X"084d", X"0263", X"fe1d", X"05c5", X"ff96", X"fd76", X"0080",
                                                        X"02c0", X"f892", X"fcbd", X"05b9", X"fdb1", X"fb1b", X"043e", X"fbf1", X"fca9", X"04fb", X"fb4e", X"fd79", X"04df", X"022a",
                                                        X"fcac", X"0489", X"fb63", X"fc76", X"fbeb", X"0465", X"fce5", X"0163", X"0742", X"0127", X"031f", X"066e", X"f965", X"fe36",
                                                        X"07ab", X"0038", X"01c5", X"0c41", X"00ae", X"feaf", X"0176", X"0654", X"f44c", X"fe0a", X"05a7", X"fe0e", X"faef", X"04b3",
                                                        X"ff66", X"044c", X"00f6", X"fc69", X"fb5e", X"01cf", X"f877", X"0662", X"02c4", X"07f4", X"f73c", X"0a04", X"09b9", X"fc06",
                                                        X"fe3b", X"fbe9", X"f890", X"0093", X"fc71", X"ff9a", X"f9aa", X"f5b9", X"f53f", X"06f6", X"00f9", X"059b", X"fce6", X"f5db",
                                                        X"05bd", X"012d", X"01de", X"fa16", X"eda9", X"fc90", X"fb4a", X"fd04", X"f18e", X"f280", X"fa36", X"055d", X"082c", X"041a",
                                                        X"01f6", X"fec7", X"0658", X"02ef", X"fcfa", X"f86d", X"e829", X"fe39", X"f8fd", X"074e", X"f204", X"fa33", X"fb49", X"093c",
                                                        X"0755", X"0803", X"fffd", X"fe2c", X"062e", X"02a7", X"0251", X"fab4", X"f506", X"04bd", X"f484", X"fe79", X"fc34", X"ffc9",
                                                        X"fb59", X"0a33", X"096d", X"015a", X"fffa", X"f55d", X"028a", X"0170", X"0e9f", X"f644", X"00ef", X"0432", X"f75e", X"fa05",
                                                        X"f7d2", X"0593", X"fe15", X"071a", X"060e", X"0548", X"060f", X"fb99", X"02fd", X"fe59", X"11b5", X"fd59", X"00e2", X"ff55",
                                                        X"fed3", X"f7c7", X"04b0", X"0b94", X"0687", X"0467", X"0625", X"0071", X"f889", X"ff0f", X"fd43", X"fcbd", X"046d", X"fdbe",
                                                        X"06ca", X"fd0b", X"0409", X"ff13", X"0613", X"f1a6", X"ffc1", X"046b", X"0155", X"fde4", X"f916", X"f5dd", X"f30b", X"fed5",
                                                        X"0687", X"016a", X"02bb", X"0115", X"05c5", X"fd75", X"0477", X"00aa", X"02c5", X"005d", X"f6af", X"fc18", X"f8ef", X"fdfc",
                                                        X"ee57", X"02b1", X"fb2a", X"07bd", X"0429", X"009b", X"04ba", X"fee4", X"0126", X"eae8", X"0686", X"fcfa", X"facb", X"fd34",
                                                        X"0386", X"fb15", X"e5a6", X"ff51", X"f5c0", X"0880", X"fbc0", X"fbc7", X"093b", X"f644", X"0263", X"ec81", X"07f0", X"f928",
                                                        X"f8ba", X"01c9", X"0102", X"f754", X"eb2d", X"0327", X"080e", X"0a41", X"fc4e", X"f903", X"0438", X"064b", X"048a", X"e70c",
                                                        X"02c2", X"f77a", X"ff70", X"031b", X"fd2e", X"00d1", X"f5ef", X"01ed", X"f63f", X"0633", X"fc13", X"0095", X"04eb", X"fc7f",
                                                        X"021f", X"e9d1", X"0395", X"fe17", X"f8c0", X"003a", X"fa8e", X"f628", X"f4bc", X"fea1", X"feb5", X"0703", X"ff7e", X"fbc2",
                                                        X"05d5", X"011a", X"02ad", X"f6bd", X"febc", X"f88a", X"fda0", X"0785", X"027f", X"f96a", X"059a", X"fa02", X"f94a", X"04a7",
                                                        X"fe79", X"fc34", X"0610", X"ff32", X"0201", X"0302", X"fdc0", X"fe4f", X"016d", X"074a", X"fc7f", X"0134", X"0731", X"fd64",
                                                        X"0220", X"05f9", X"fe2a", X"f781", X"09e4", X"02a2", X"feb3", X"fd5b", X"fb1c", X"feaf", X"061d", X"04bf", X"f9ed", X"f927",
                                                        X"081a", X"fd52", X"051d", X"03d3", X"fc95", X"fee9", X"074d", X"0b9d", X"fa53", X"01b8", X"fba8", X"03b2", X"03d5", X"03f6",
                                                        X"fe3d", X"ff36", X"06d3", X"007d", X"0461", X"023e", X"e957", X"02b5", X"fb46", X"ff6e", X"fec7", X"fbae", X"fbf2", X"0304",
                                                        X"04d4", X"05d5", X"fb1e", X"f7d5", X"0463", X"00c9", X"0a31", X"ff94", X"f3c7", X"00fe", X"fe1d", X"fe79", X"f7cb", X"f88b",
                                                        X"ff56", X"067e", X"0521", X"0342", X"fc15", X"06ea", X"0032", X"0153", X"0b0f", X"f75f", X"e90e", X"0396", X"f6ba", X"fd1a",
                                                        X"f5d6", X"f714", X"fa80", X"05be", X"0772", X"05f7", X"f471", X"02bd", X"028e", X"0222", X"03ee", X"faec", X"f568", X"ff39",
                                                        X"f4bc", X"fae8", X"f8cc", X"019e", X"feda", X"09a7", X"056a", X"073c", X"0000", X"feec", X"0434", X"fd2e", X"06c5", X"faaf",
                                                        X"0317", X"fde7", X"fb12", X"ffb5", X"f926", X"0ba2", X"ffde", X"09f7", X"028a", X"0039", X"0452", X"0361", X"f7ac", X"0287",
                                                        X"11e3", X"ff11", X"0869", X"f9a0", X"019f", X"fe9b", X"ff8c", X"0440", X"05d7", X"0934", X"0007", X"f7ef", X"0801", X"f8f3",
                                                        X"f1d7", X"ffed", X"0f43", X"0034", X"016e", X"f9a3", X"fde5", X"0256", X"0172", X"0348", X"0275", X"0249", X"0492", X"f9dd",
                                                        X"ff31", X"ffb6", X"f476", X"0251", X"0354", X"0934", X"0502", X"fef7", X"fdc4", X"0416", X"fa6e", X"0bd2", X"050f", X"fdb7",
                                                        X"fdd5", X"0204", X"fc4a", X"fa84", X"f1d6", X"0427", X"f7ea", X"0817", X"01ab", X"0035", X"04cf", X"fe27", X"033b", X"0397",
                                                        X"0581", X"fb39", X"ff34", X"fcfa", X"fccf", X"fd84", X"ed36", X"01f6", X"02e6", X"0594", X"f8a0", X"fd54", X"02d3", X"010b",
                                                        X"0863", X"f02a", X"07af", X"fc08", X"f91f", X"039f", X"fcad", X"fc73", X"f53f", X"0432", X"08a5", X"0a67", X"f1e0", X"fd6d",
                                                        X"062f", X"f9ea", X"05c4", X"f500", X"03f6", X"fafe", X"f74f", X"0935", X"041b", X"ff13", X"f7de", X"00c3", X"03d3", X"0923",
                                                        X"fe0c", X"002b", X"0558", X"053e", X"0458", X"e627", X"0544", X"f890", X"ff3c", X"ffe6", X"0516", X"fca9", X"fcdd", X"00b1",
                                                        X"0bce", X"074e", X"0105", X"ff37", X"0a88", X"089d", X"fb42", X"f1b7", X"0792", X"fe0f", X"01cc", X"006e", X"f942", X"08a6",
                                                        X"fc7f", X"0168", X"fbed", X"06ed", X"fcb6", X"fef3", X"08db", X"ff66", X"0076", X"f920", X"0310", X"ff6b", X"0129", X"05e7",
                                                        X"03a6", X"055f", X"046d", X"fed1", X"fba3", X"00da", X"f9ec", X"fc33", X"02df", X"0411", X"fb86", X"fee0", X"ff9d", X"fd2c",
                                                        X"0299", X"0563", X"0039", X"02c8", X"0c03", X"fe10", X"f6be", X"ff3a", X"f49a", X"fc4a", X"006b", X"fece", X"f8f8", X"f989",
                                                        X"f9e3", X"03e8", X"0627", X"0bfd", X"fc5c", X"fac2", X"06cc", X"0008", X"05d5", X"fe82", X"f835", X"01af", X"0172", X"029f",
                                                        X"f6a1", X"fe86", X"fa30", X"06f4", X"0641", X"0792", X"05a3", X"ff48", X"0adc", X"0057", X"0647", X"fb1d", X"e8f9", X"012f",
                                                        X"fb9b", X"09a0", X"f3a9", X"ecb4", X"f741", X"0824", X"064a", X"053b", X"f85c", X"f7c5", X"0548", X"ffda", X"037b", X"f51b",
                                                        X"f0e6", X"ffb9", X"fb6d", X"fe3a", X"f119", X"f3e9", X"fd06", X"0ae3", X"0601", X"06c5", X"f993", X"f5bd", X"059b", X"fa61",
                                                        X"fb34", X"f36a", X"f7b3", X"fea7", X"f9a6", X"0063", X"f6e4", X"fdcd", X"fabe", X"09b4", X"07fc", X"04f6", X"fc94", X"f495",
                                                        X"045d", X"01f1", X"fc9c", X"fe2d", X"0108", X"01a2", X"fcaa", X"f715", X"026b", X"fd4a", X"009c", X"0815", X"04ed", X"01ee",
                                                        X"ff71", X"fffe", X"0135", X"00e6", X"fc38", X"ff5d", X"05bc", X"fdf9", X"fd6e", X"ff73", X"ffb2", X"f8a6", X"047b", X"08d5",
                                                        X"fd11", X"fa85", X"023f", X"ffe3", X"03c5", X"0487", X"f952", X"01bc", X"0906", X"face", X"0323", X"0092", X"0253", X"f3ca",
                                                        X"05ab", X"ffcb", X"fefb", X"fd01", X"03f7", X"01e3", X"f305", X"00fd", X"fcf0", X"ff0f", X"0916", X"0104", X"03d6", X"02f5",
                                                        X"08cf", X"fe9f", X"07a1", X"0187", X"fa46", X"f8eb", X"03fc", X"018f", X"f3df", X"0311", X"01d4", X"0235", X"fbd8", X"fd30",
                                                        X"02c3", X"fd80", X"0696", X"fe2a", X"046a", X"f740", X"fbb7", X"fcd2", X"020d", X"ff20", X"ea8c", X"0847", X"07f4", X"0289",
                                                        X"fbd6", X"0349", X"05df", X"0295", X"0345", X"f0c2", X"0a9f", X"fb98", X"f6a5", X"fcc4", X"0644", X"f5a3", X"f32f", X"06b7",
                                                        X"0ec1", X"08f2", X"f987", X"01f4", X"07a2", X"05c9", X"00f8", X"ee55", X"0679", X"002e", X"f806", X"0182", X"0026", X"fe54",
                                                        X"f7e6", X"01a4", X"05a8", X"06b6", X"ffa3", X"fe1f", X"05ac", X"0054", X"fc1b", X"e86a", X"0259", X"fc26", X"007a", X"0c04",
                                                        X"fc35", X"021b", X"fd00", X"fe94", X"07df", X"08a6", X"fabd", X"fe6d", X"075d", X"fe6d", X"0113", X"043c", X"02fc", X"fcaa",
                                                        X"ffa0", X"0dd6", X"fc90", X"02ff", X"078d", X"ffdb", X"08e1", X"0652", X"fdda", X"0123", X"07ce", X"0497", X"fc10", X"0678",
                                                        X"0027", X"ff15", X"05e9", X"0bb9", X"fb41", X"09b7", X"0b79", X"ff21", X"03ec", X"09cc", X"fe91", X"0234", X"053a", X"fe4c",
                                                        X"fabd", X"0d89", X"fa50", X"00fa", X"063f", X"09cd", X"f92b", X"fa8b", X"0b60", X"fd37", X"fe6f", X"ffa1", X"fdb2", X"0245",
                                                        X"025e", X"ff64", X"0053", X"06ff", X"fa10", X"06bc", X"047b", X"04e9", X"fb79", X"ffef", X"0447", X"fd16", X"00f1", X"f6de",
                                                        X"f3df", X"ffff", X"004a", X"02d6", X"f4e2", X"fac4", X"f91c", X"08f2", X"0745", X"0965", X"f442", X"0855", X"092b", X"fef3",
                                                        X"f3b9", X"f67c", X"f381", X"fe1b", X"ffe9", X"02e5", X"fa29", X"f9b1", X"f87d", X"0173", X"02b4", X"0882", X"f7b3", X"fbaa",
                                                        X"0661", X"fcf6", X"0026", X"f917", X"f079", X"ff81", X"fc11", X"fcbe", X"f787", X"f55e", X"f960", X"07f7", X"070a", X"0491",
                                                        X"ff12", X"f8a4", X"038b", X"fc95", X"0223", X"f9d8", X"faed", X"fbec", X"ffa4", X"0285", X"f571", X"00f7", X"f963", X"059f",
                                                        X"0625", X"ff6d", X"fdc5", X"f555", X"fcd0", X"fe4a", X"ff4f", X"f745", X"046c", X"fa61", X"ff86", X"fa3e", X"00a3", X"077f",
                                                        X"ff8f", X"03ae", X"02b1", X"fb8b", X"0514", X"fd8a", X"fa3c", X"fea5", X"0835", X"fb75", X"02ad", X"f945", X"fbd0", X"00b6",
                                                        X"ff48", X"0ac3", X"02e9", X"045a", X"0231", X"f95c", X"fa84", X"fabe", X"f95d", X"0248", X"0b52", X"ff4e", X"039a", X"fa38",
                                                        X"fd8a", X"028e", X"0061", X"f320", X"026f", X"ff47", X"00a6", X"fa76", X"fa75", X"fdfb", X"f4e9", X"03a5", X"fa02", X"0126",
                                                        X"08e2", X"f9ce", X"fec9", X"00e3", X"06d3", X"f6ea", X"09bc", X"fcf9", X"fedf", X"f7ff", X"fb69", X"f9fc", X"e8d5", X"059c",
                                                        X"04e9", X"058c", X"fe63", X"00cc", X"01df", X"0014", X"0495", X"f0db", X"0bb2", X"fccd", X"fbff", X"ff5a", X"fd09", X"f850",
                                                        X"e194", X"0584", X"0011", X"0a93", X"fef4", X"ff43", X"fe51", X"fac5", X"06df", X"eec5", X"0536", X"f8d8", X"f919", X"fac6",
                                                        X"f848", X"fc2c", X"e780", X"0481", X"0429", X"07d9", X"f8b7", X"00fd", X"0341", X"fc8d", X"045c", X"ecb6", X"0625", X"f73c",
                                                        X"00b1", X"06f7", X"fca6", X"fcff", X"f3c0", X"ffce", X"027d", X"06ba", X"f6e2", X"fe98", X"061e", X"fd60", X"fe94", X"f56f",
                                                        X"0053", X"f7e1", X"0306", X"06bd", X"f9fd", X"faf7", X"ffa1", X"fec3", X"097d", X"02b5", X"fadb", X"fb39", X"051b", X"0043",
                                                        X"023f", X"efdb", X"ff98", X"fced", X"ff7e", X"0231", X"007e", X"fd62", X"0220", X"0029", X"09f2", X"0391", X"0323", X"f62a",
                                                        X"06b5", X"ff23", X"feb8", X"00ab", X"ff2c", X"000c", X"fb85", X"0b5f", X"f9ae", X"ff6c", X"0774", X"ffac", X"0866", X"052f",
                                                        X"fbff", X"fcde", X"05cc", X"00bc", X"f895", X"01a6", X"fdca", X"01fd", X"0154", X"0d10", X"fb68", X"fe0a", X"089d", X"fda1",
                                                        X"f9b6", X"00fc", X"fae8", X"f75e", X"040d", X"fe13", X"f6a4", X"039e", X"f6f9", X"09ad", X"04bf", X"07c6", X"f7c4", X"0207",
                                                        X"07de", X"ff2a", X"f9d0", X"fb6b", X"f73b", X"fd5d", X"fcd1", X"fbf7", X"f82e", X"f5fb", X"f9cd", X"0ae2", X"0ee8", X"090a",
                                                        X"036d", X"fd83", X"05f2", X"00f3", X"07e4", X"f9d5", X"f254", X"ff25", X"fac0", X"0122", X"f336", X"fa1f", X"f19a", X"0904",
                                                        X"0857", X"06e5", X"fbcd", X"fdec", X"0641", X"fc35", X"0659", X"fdb4", X"eb93", X"fd7c", X"face", X"067c", X"f770", X"f67f",
                                                        X"fcc8", X"0b6a", X"07a1", X"0343", X"fab0", X"01e3", X"057d", X"fc2f", X"01e7", X"f463", X"eeed", X"0060", X"f758", X"0137",
                                                        X"fcd5", X"f86c", X"0067", X"0819", X"0d75", X"059d", X"ff46", X"03df", X"0085", X"0348", X"0841", X"feec", X"038b", X"03dc",
                                                        X"f9e6", X"f2c5", X"fdd2", X"ff61", X"feed", X"0553", X"09d9", X"fbdf", X"02df", X"018f", X"fb07", X"030c", X"0dc1", X"faba",
                                                        X"02dd", X"02e6", X"fbdc", X"02a7", X"0304", X"ff0c", X"0420", X"02c0", X"062f", X"f941", X"fb38", X"ffea", X"f7d6", X"01cb",
                                                        X"08d3", X"fccb", X"040e", X"ff80", X"0190", X"fca1", X"f9b0", X"f949", X"0657", X"063e", X"06b5", X"f5e6", X"0352", X"01dc",
                                                        X"f87f", X"005d", X"05c5", X"fc3c", X"ffb7", X"026e", X"01ae", X"ff8a", X"0348", X"f0ec", X"034a", X"fe1c", X"00ba", X"f951",
                                                        X"f7b9", X"f3d7", X"ed5d", X"0107", X"f931", X"01a7", X"033a", X"ffc2", X"02a1", X"f8a2", X"002c", X"f32f", X"032e", X"fd3a",
                                                        X"f800", X"fc13", X"f33e", X"fd00", X"ef0f", X"005e", X"0206", X"0484", X"01fe", X"00f2", X"02db", X"045e", X"03b1", X"ec51",
                                                        X"0406", X"0000", X"f251", X"0193", X"fadb", X"fd04", X"f04b", X"01d8", X"fb2c", X"0893", X"fbc1", X"000d", X"0517", X"fe6a",
                                                        X"016c", X"e4b3", X"0403", X"f6f4", X"f529", X"01ad", X"0072", X"001a", X"f6a0", X"ff9a", X"07eb", X"09c8", X"f710", X"0240",
                                                        X"0658", X"fa12", X"099a", X"ea93", X"0153", X"fa65", X"fd45", X"04d3", X"ff07", X"035a", X"fe6d", X"fdc2", X"0143", X"02ef",
                                                        X"0140", X"f92c", X"0970", X"fe03", X"054c", X"f07f", X"05b8", X"fd92", X"ff24", X"0e83", X"f9d3", X"00ed", X"02b5", X"fe5c",
                                                        X"f82b", X"0abc", X"022d", X"fa2e", X"0a5d", X"fd0e", X"04b0", X"0179", X"024f", X"fbc5", X"019e", X"06c1", X"0234", X"f15e",
                                                        X"054a", X"0180", X"fbb9", X"01da", X"00b0", X"fe45", X"0628", X"fe1b", X"fe36", X"06d5", X"fca9", X"fcf4", X"0569", X"0393",
                                                        X"fff2", X"048d", X"fe10", X"024a", X"f60c", X"fcf0", X"fe05", X"fc72", X"071b", X"fa4f", X"f730", X"fed0", X"0ae1", X"00e7",
                                                        X"0923", X"04ac", X"01ce", X"0891", X"0708", X"fd43", X"f05d", X"f718", X"e122", X"0005", X"fcf5", X"008f", X"f39d", X"00b5",
                                                        X"f6ce", X"0a9e", X"0e57", X"0b6a", X"fb94", X"024c", X"11db", X"fa0b", X"07ed", X"f20b", X"daf8", X"0140", X"f7f3", X"fe8a",
                                                        X"e7e0", X"fa9f", X"e5f2", X"0f10");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0f10";
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
