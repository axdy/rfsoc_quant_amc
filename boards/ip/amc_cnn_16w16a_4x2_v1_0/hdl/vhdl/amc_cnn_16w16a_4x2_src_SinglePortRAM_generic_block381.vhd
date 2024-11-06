-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block381.vhd
-- Created: 2024-11-04 16:44:15
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block381
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage30/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block381 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block381;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block381 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0403", X"ff93", X"f92e", X"0436", X"f75f", X"0d77",
                                                        X"ee56", X"086e", X"f9c8", X"00e8", X"f3fd", X"09b9", X"075b", X"07e0", X"fbfe", X"f77b", X"04af", X"022e", X"f875", X"0c50",
                                                        X"f451", X"0507", X"f599", X"06bd", X"0289", X"0216", X"f9f1", X"0a72", X"04a5", X"064e", X"fe9f", X"fddc", X"0293", X"00de",
                                                        X"ed86", X"049e", X"f7b3", X"0630", X"fc37", X"069d", X"fd9d", X"fe1e", X"fe64", X"fceb", X"0635", X"0f38", X"ffd3", X"fc6a",
                                                        X"0115", X"fe35", X"f568", X"0756", X"f9b4", X"0620", X"f3a8", X"065a", X"010d", X"fd64", X"06a9", X"0093", X"0730", X"03f5",
                                                        X"031b", X"fd45", X"02a2", X"fedd", X"f443", X"1421", X"f200", X"06cf", X"01a6", X"02f1", X"0373", X"00e6", X"0631", X"ff8c",
                                                        X"07d5", X"042b", X"03ac", X"0221", X"ff93", X"fb2d", X"ef2d", X"0877", X"f6ce", X"0124", X"f01a", X"fd75", X"fd2f", X"fb1b",
                                                        X"053e", X"01ac", X"0bb1", X"ff97", X"ff73", X"0049", X"0449", X"f9df", X"f1cb", X"0e70", X"f93e", X"fede", X"f53d", X"fb7a",
                                                        X"f93e", X"fbc6", X"07ac", X"0092", X"ffc6", X"040c", X"050d", X"033a", X"0254", X"f7e7", X"f3e2", X"05b4", X"fa27", X"fb9c",
                                                        X"f4fb", X"fbf5", X"f94a", X"ffd7", X"07cf", X"0369", X"054d", X"028d", X"02b1", X"0509", X"0663", X"f64d", X"f3e7", X"00c1",
                                                        X"f809", X"ffe7", X"f5c1", X"fc71", X"fccb", X"fed3", X"0324", X"08f5", X"09e2", X"06ea", X"02e3", X"065b", X"0294", X"f63d",
                                                        X"f1ae", X"0716", X"faf7", X"fdd2", X"f8be", X"fb27", X"fcef", X"fd46", X"030b", X"01fe", X"0516", X"ff7d", X"05c1", X"02ed",
                                                        X"ffc9", X"ffe8", X"f188", X"0af4", X"fa62", X"0017", X"0488", X"029a", X"fbbe", X"00da", X"0638", X"0e3a", X"fe3a", X"091f",
                                                        X"0420", X"0453", X"ff16", X"01ec", X"fad4", X"0e53", X"00e0", X"ff0c", X"0339", X"033d", X"01f2", X"0108", X"0529", X"0542",
                                                        X"0226", X"123e", X"00ec", X"02bd", X"00c7", X"02ac", X"efa0", X"0dc6", X"fb70", X"00f9", X"f819", X"0636", X"f9d1", X"0172",
                                                        X"01f7", X"06d4", X"0081", X"0f11", X"fdba", X"02f6", X"0137", X"01d0", X"f018", X"09b9", X"f9a3", X"000f", X"f939", X"078a",
                                                        X"0011", X"00fe", X"0037", X"0710", X"00cf", X"058f", X"fd0f", X"02ef", X"0299", X"ff30", X"fba7", X"0ae0", X"f9d3", X"018e",
                                                        X"0249", X"07c7", X"fafd", X"011d", X"fab6", X"012e", X"fb14", X"f7d9", X"f747", X"fd7b", X"06c6", X"f8da", X"f5ab", X"0a65",
                                                        X"f812", X"04d0", X"fc99", X"fd5a", X"fd2c", X"0149", X"fc50", X"0960", X"ff9b", X"03a6", X"fe8a", X"fdab", X"0751", X"fc86",
                                                        X"ecc5", X"0b52", X"f720", X"0389", X"f23c", X"04af", X"fc83", X"0162", X"fe73", X"054e", X"058c", X"0641", X"fd2d", X"fc56",
                                                        X"08ad", X"003e", X"f1e0", X"0e07", X"f8c1", X"047f", X"f911", X"03ca", X"0021", X"0153", X"fad1", X"ff3c", X"0697", X"03eb",
                                                        X"fb81", X"fb11", X"03e2", X"00ef", X"ed64", X"0b48", X"fa50", X"01ee", X"fd5e", X"02b0", X"00cc", X"010b", X"0280", X"0261",
                                                        X"00f9", X"0184", X"ff07", X"0142", X"0163", X"01c6", X"f2fe", X"0709", X"fba0", X"0030", X"0169", X"02d2", X"fb5b", X"007b",
                                                        X"0c91", X"0388", X"fe49", X"08ec", X"027a", X"01b5", X"fee4", X"ff28", X"f5ee", X"0ec3", X"fdcc", X"0366", X"fab2", X"0353",
                                                        X"04cc", X"fda0", X"0991", X"fd25", X"0079", X"032b", X"0479", X"fab9", X"0242", X"ff9c", X"f819", X"08d1", X"fb6d", X"016c",
                                                        X"f8b7", X"fc95", X"f8fd", X"fe9a", X"0736", X"0395", X"05aa", X"fcb6", X"fe40", X"0132", X"0097", X"fdfc", X"f1ba", X"ffe8",
                                                        X"fb18", X"0163", X"fa2a", X"007a", X"ff80", X"0018", X"08a1", X"0a8a", X"06e2", X"03fd", X"018e", X"0218", X"ff4a", X"fb2f",
                                                        X"ec97", X"06ab", X"f844", X"03be", X"f6f0", X"fe31", X"faf3", X"0090", X"076a", X"0780", X"07b8", X"0a1b", X"0564", X"0335",
                                                        X"ff03", X"fe71", X"f498", X"09f6", X"f834", X"0099", X"f742", X"fefe", X"fa7f", X"ff14", X"09f6", X"0460", X"047d", X"054e",
                                                        X"0534", X"0709", X"024d", X"00ac", X"eb79", X"011f", X"fafe", X"fc39", X"f6dd", X"00ad", X"ffe9", X"0128", X"069b", X"0288",
                                                        X"0436", X"fd7c", X"0492", X"08af", X"0198", X"f909", X"f250", X"0a22", X"f9ed", X"fe3d", X"0158", X"fb9f", X"f55b", X"0143",
                                                        X"0346", X"065b", X"0616", X"0656", X"006f", X"04a4", X"ff86", X"ff28", X"f6ca", X"146b", X"fd43", X"fe6f", X"0696", X"045b",
                                                        X"f752", X"03ca", X"07c7", X"0348", X"01a8", X"0bd9", X"02ce", X"0341", X"0008", X"05e4", X"f30a", X"00bf", X"fd1a", X"0045",
                                                        X"fce2", X"059e", X"fb49", X"ff92", X"035b", X"0d15", X"00ef", X"07fb", X"017d", X"0050", X"0481", X"005e", X"ef21", X"151c",
                                                        X"fa02", X"020e", X"fe67", X"06e5", X"f90d", X"0225", X"ff59", X"0033", X"f7bc", X"0489", X"fd53", X"ff25", X"01a4", X"047a",
                                                        X"edbb", X"008e", X"efb7", X"051b", X"f992", X"0858", X"fc83", X"016a", X"014a", X"048c", X"00ba", X"00bc", X"0235", X"fa40",
                                                        X"0881", X"fb36", X"f5b8", X"05e1", X"f876", X"04ed", X"ffe8", X"ff66", X"f835", X"025b", X"fb72", X"020a", X"0663", X"fb19",
                                                        X"fe0e", X"f805", X"072f", X"fb81", X"f61f", X"039c", X"fecd", X"0172", X"fe6d", X"ffa3", X"0026", X"0302", X"0156", X"08b5",
                                                        X"08b0", X"031f", X"fe5e", X"f9a3", X"07d2", X"0145", X"f11a", X"fe93", X"fcb1", X"0119", X"f89a", X"024b", X"fbe8", X"056d",
                                                        X"04a4", X"0672", X"0700", X"07dc", X"fe6e", X"fa63", X"04ba", X"04b5", X"e8d0", X"0024", X"f8d6", X"00f3", X"f500", X"ff46",
                                                        X"f80d", X"03cc", X"04ad", X"0a40", X"fb5a", X"0b9e", X"fd7b", X"fbfd", X"ffa1", X"011e", X"f3d7", X"07d4", X"fb22", X"022f",
                                                        X"0412", X"ff27", X"fa9f", X"068d", X"0758", X"05e0", X"05fa", X"08dc", X"02d0", X"fd49", X"fb1f", X"fb9f", X"f221", X"0929",
                                                        X"f878", X"ff3c", X"f9f7", X"0296", X"0000", X"00eb", X"0756", X"00cc", X"0303", X"0184", X"0453", X"ff8a", X"fc34", X"fd17",
                                                        X"ed74", X"053b", X"f861", X"fe66", X"fd51", X"ff06", X"ff3e", X"008e", X"0489", X"0454", X"094a", X"fcd6", X"feb0", X"fbbc",
                                                        X"fcb0", X"ff3d", X"f159", X"0ddf", X"f969", X"ffd5", X"fca7", X"fdf9", X"0095", X"fc02", X"036b", X"0cf8", X"083b", X"0435",
                                                        X"0123", X"fdd7", X"fa84", X"f9a1", X"f470", X"0a3f", X"ff97", X"fe11", X"f68f", X"0268", X"0234", X"fa41", X"08ed", X"0b1a",
                                                        X"0480", X"0e5a", X"04a8", X"0442", X"0147", X"f8f9", X"ede5", X"0e15", X"f9d6", X"0219", X"f10a", X"fd6e", X"ff38", X"fe81",
                                                        X"045e", X"0402", X"019d", X"0aed", X"06d7", X"04bb", X"01e4", X"0351", X"ecbb", X"05f4", X"faf3", X"fd3a", X"ffc7", X"027a",
                                                        X"fd14", X"039c", X"034c", X"fdc4", X"0311", X"032e", X"03c7", X"038d", X"00f5", X"fee9", X"e7b3", X"0631", X"f8e5", X"02e1",
                                                        X"03f8", X"0360", X"0734", X"060c", X"0810", X"020c", X"02a7", X"06d1", X"0548", X"008c", X"069b", X"fbf7", X"f00a", X"0230",
                                                        X"f4f3", X"ff9e", X"00e9", X"05ec", X"fc2a", X"0759", X"04d4", X"03e6", X"ff1e", X"0870", X"ffaf", X"01fc", X"ff82", X"0318",
                                                        X"edb8", X"0325", X"f6d5", X"0085", X"0182", X"072e", X"0545", X"0681", X"0370", X"0478", X"03f7", X"0546", X"0a6e", X"03b9",
                                                        X"fe08", X"00be", X"edca", X"0ebd", X"f379", X"04eb", X"fbb4", X"086d", X"ffea", X"0532", X"ff3b", X"03f3", X"0215", X"094a",
                                                        X"ffca", X"fc1e", X"02a5", X"ff65", X"ef54", X"0886", X"f6a7", X"00fe", X"0543", X"0660", X"0267", X"0783", X"fe97", X"0a20",
                                                        X"fde0", X"0251", X"fd7d", X"feb4", X"03ba", X"04af", X"e930", X"00d8", X"f6fc", X"0235", X"fbdc", X"07d3", X"04b7", X"02bc",
                                                        X"fcc8", X"0246", X"fefd", X"fa5a", X"fafe", X"fd9a", X"0325", X"fb32", X"f05b", X"0205", X"f9ad", X"043a", X"fca3", X"059c",
                                                        X"0043", X"0250", X"009f", X"0238", X"feb8", X"0437", X"00a0", X"0026", X"0066", X"042a", X"ed5f", X"02d7", X"feb7", X"ff88",
                                                        X"f9ed", X"037e", X"fcf9", X"0105", X"fc6a", X"000c", X"068b", X"0c9a", X"fcb7", X"fba5", X"fe50", X"02b4", X"f046", X"0797",
                                                        X"f849", X"0069", X"f8a4", X"fed2", X"f7e6", X"fee7", X"fcd9", X"ffef", X"04c1", X"07ae", X"fc32", X"fd41", X"fdee", X"05e2",
                                                        X"f313", X"0461", X"0117", X"01d2", X"010e", X"02f5", X"ff50", X"fd01", X"031b", X"fb0c", X"07a7", X"07d0", X"fe17", X"fd5f",
                                                        X"fff3", X"0162", X"f479", X"0677", X"f5f0", X"ff99", X"fe82", X"0179", X"017f", X"01be", X"08a9", X"00e9", X"021c", X"048d",
                                                        X"0221", X"ff17", X"fa9b", X"ffce", X"f6bd", X"055e", X"fb94", X"0249", X"f760", X"0375", X"fd9d", X"ffee", X"07c9", X"0c1c",
                                                        X"01d5", X"0693", X"0390", X"008c", X"0072", X"fd88", X"fb50", X"078a", X"fd0f", X"fe64", X"f7b3", X"0384", X"0023", X"0037",
                                                        X"056a", X"0b39", X"fc30", X"0995", X"04a4", X"0484", X"fdfb", X"fcef", X"f3b4", X"0615", X"f7af", X"fc00", X"f1ae", X"ff5c",
                                                        X"fb99", X"0215", X"04e8", X"02bb", X"03d5", X"02a6", X"ff4e", X"fec8", X"fc90", X"0008", X"f538", X"0d0a", X"fc6c", X"fc38",
                                                        X"f85e", X"0156", X"f91d", X"010b", X"0157", X"faa1", X"059b", X"01b6", X"030f", X"01ca", X"fecc", X"0018", X"ef77", X"ff61",
                                                        X"fd61", X"fa7c", X"f5ac", X"02ed", X"fe91", X"febc", X"047f", X"f7f8", X"0566", X"056a", X"04f1", X"0224", X"025b", X"013d",
                                                        X"ef2e", X"ffc4", X"fc34", X"fa23", X"fb87", X"06e8", X"fef7", X"fd51", X"06f1", X"0537", X"fd6e", X"064c", X"00fa", X"fcc6",
                                                        X"0018", X"0207", X"ee5b", X"ff13", X"f96c", X"ff96", X"019c", X"021e", X"fcb0", X"0273", X"0540", X"099d", X"00ad", X"0542",
                                                        X"00a6", X"ffad", X"0015", X"0122", X"e801", X"fc9c", X"f73c", X"02a8", X"f87f", X"0274", X"feb3", X"0351", X"0377", X"090c",
                                                        X"fe6f", X"0596", X"febd", X"fe3a", X"ff1c", X"fe70", X"f2f8", X"0d88", X"f5e6", X"fde7", X"faa6", X"034f", X"01f7", X"02ce",
                                                        X"fd10", X"0911", X"fbe3", X"02cf", X"ff93", X"fc12", X"fe8b", X"fe10", X"ed06", X"05f8", X"f594", X"036c", X"f96e", X"0985",
                                                        X"fec0", X"0405", X"000a", X"02ef", X"02dc", X"ffe8", X"ff66", X"f88c", X"0089", X"05df", X"f00d", X"0c57", X"f99e", X"018f",
                                                        X"f858", X"05a0", X"f74b", X"0275", X"fb6e", X"fa88", X"fe55", X"04d5", X"f9b5", X"fbcb", X"0035", X"0168", X"eec3", X"0693",
                                                        X"fdcc", X"01c3", X"f5a3", X"0548", X"fe9b", X"fe63", X"f8f7", X"05b2", X"04d6", X"0730", X"fa3f", X"f99b", X"01bf", X"0282",
                                                        X"f49d", X"0ae0", X"f8d9", X"ffab", X"e7b5", X"ff3b", X"fe58", X"019d", X"0191", X"fdbc", X"0629", X"09c6", X"fdac", X"f80f",
                                                        X"0530", X"03cc", X"eb47", X"04b2", X"fd67", X"044e", X"f6b4", X"0040", X"fa37", X"010e", X"021e", X"014b", X"05ec", X"090e",
                                                        X"fabf", X"ff4b", X"07f9", X"0081", X"ef82", X"02bb", X"fdb2", X"02a6", X"f276", X"000b", X"f8eb", X"ff30", X"06fe", X"ffdf",
                                                        X"09e5", X"10b5", X"f8ea", X"ff5b", X"029b", X"fd7b", X"f003", X"0de2", X"fdfe", X"0157", X"f894", X"0328", X"02a3", X"00d0",
                                                        X"096b", X"fde5", X"047e", X"0986", X"018e", X"fdb6", X"02e9", X"fcda", X"f278", X"05a4", X"f945", X"004a", X"f934", X"0180",
                                                        X"04b9", X"ff8f", X"0dbe", X"0013", X"0b2b", X"07b7", X"03a4", X"fddf", X"0205", X"fc15", X"f46b", X"08b3", X"f9e1", X"fdbb",
                                                        X"fafb", X"fb70", X"017d", X"fb09", X"0e5b", X"0615", X"0887", X"0c76", X"05c8", X"01a1", X"0185", X"f923", X"f850", X"ff46",
                                                        X"fcf7", X"fe7a", X"f81d", X"f6c8", X"f813", X"fe90", X"0cbe", X"05b3", X"0736", X"07af", X"03a6", X"05c7", X"019d", X"fd35",
                                                        X"f419", X"f935", X"fdff", X"fb12", X"f3c8", X"fee2", X"fcdc", X"01da", X"05c6", X"0832", X"03ad", X"05f8", X"0318", X"ff3a",
                                                        X"fede", X"f73e", X"f5b4", X"058b", X"fcf8", X"fcb2", X"f84c", X"ffbb", X"fd7c", X"0316", X"07ed", X"0788", X"f96d", X"0193",
                                                        X"0173", X"062c", X"ff30", X"f919", X"f31b", X"0aa5", X"fbcc", X"fbae", X"fa53", X"002f", X"ff55", X"0034", X"0460", X"0496",
                                                        X"03f6", X"0308", X"033b", X"02ff", X"05e9", X"fab0", X"ea7c", X"06a9", X"f8c3", X"02e7", X"fc1e", X"032b", X"ff2f", X"0570",
                                                        X"007f", X"02c9", X"0240", X"0bea", X"01fb", X"fe3f", X"04ee", X"ffe2", X"eee2", X"fc1e", X"fa19", X"03d5", X"f571", X"0baf",
                                                        X"0324", X"02ea", X"feca", X"00c6", X"01a6", X"09da", X"fff4", X"0062", X"0202", X"0040", X"f56f", X"012f", X"fc17", X"0255",
                                                        X"fc72", X"09e0", X"00b8", X"058d", X"f9ca", X"03ec", X"004c", X"0d6e", X"fed0", X"fddb", X"0013", X"ff20", X"eeac", X"0acc",
                                                        X"f2ff", X"056d", X"f2e4", X"0577", X"fa7c", X"02cc", X"fabf", X"0627", X"fbba", X"0522", X"fd45", X"fd77", X"063e", X"046b",
                                                        X"ed2c", X"075c", X"f8e0", X"0606", X"ebe5", X"0ab6", X"fd6b", X"ff8d", X"fba5", X"fd60", X"fd2c", X"078e", X"fbe2", X"fc40",
                                                        X"0836", X"0507", X"ef90", X"085e", X"fa83", X"01e5", X"f87d", X"058e", X"fc0f", X"fce7", X"0074", X"fc43", X"0147", X"079e",
                                                        X"f924", X"fece", X"08a2", X"031a", X"f042", X"0e57", X"ff7c", X"0488", X"f6f9", X"05e7", X"fec6", X"0187", X"fe5e", X"0189",
                                                        X"03e2", X"0703", X"0215", X"fe76", X"0321", X"fab3", X"f319", X"0763", X"fb1d", X"0043", X"02c4", X"00c5", X"fded", X"002d",
                                                        X"02df", X"feae", X"06de", X"0ac6", X"fe6d", X"0093", X"0625", X"0192", X"f883", X"fe95", X"fc10", X"0496", X"fd78", X"ff42",
                                                        X"01fd", X"025b", X"0353", X"060f", X"0aed", X"09fb", X"fc51", X"0125", X"009f", X"ff8d", X"f514", X"0525", X"fbc2", X"feb4",
                                                        X"fca6", X"02b8", X"00ef", X"fa28", X"05b8", X"0487", X"0a28", X"fd0d", X"0139", X"001c", X"0148", X"fa8b", X"f604", X"05b7",
                                                        X"fed6", X"00d3", X"f96d", X"ff4d", X"00ad", X"fae4", X"037f", X"070d", X"02b2", X"0044", X"058d", X"025b", X"044a", X"f83f",
                                                        X"f3e0", X"04ab", X"f758", X"fcc7", X"eeea", X"fd3d", X"fd61", X"013c", X"ff35", X"047d", X"0629", X"0344", X"032b", X"ff95",
                                                        X"ff63", X"f3f7", X"f0e7", X"0a5b", X"f7b0", X"fc0d", X"f37a", X"fe49", X"fc2f", X"fcba", X"027b", X"01a0", X"0ed9", X"069b",
                                                        X"ffd5", X"01c8", X"0102", X"f8d4", X"ed2a", X"fbff", X"f44a", X"fcc6", X"ec08", X"ffb7", X"0011", X"fe93", X"047d", X"0e4d",
                                                        X"0873", X"05f6", X"0863", X"0199", X"fab2", X"f8f8", X"e968", X"040b", X"01be", X"feb8", X"f153", X"0783", X"fa6e", X"fe20",
                                                        X"071d", X"feb5", X"0750", X"fc32", X"02f6", X"0302", X"fd21", X"fb4d", X"f894", X"0aad", X"ffac", X"fec2", X"ff49", X"0486",
                                                        X"fe07", X"ff66", X"093c", X"028c", X"0390", X"0256", X"0287", X"0342", X"0101", X"0313", X"f016", X"093b", X"f7f7", X"0063",
                                                        X"01eb", X"0965", X"febc", X"07e7", X"093f", X"03af", X"f9a4", X"0414", X"058d", X"015b", X"fe4b", X"fde3", X"ef69", X"0dc8",
                                                        X"f825", X"fe67", X"0083", X"0724", X"ffb6", X"03af", X"082d", X"fc46", X"05f8", X"0977", X"fe78", X"fe92", X"01c5", X"fb85",
                                                        X"f78b", X"0b08", X"fcca", X"0147", X"00ec", X"077d", X"020f", X"04db", X"0484", X"0379", X"ff30", X"0b5e", X"fe92", X"fc73",
                                                        X"069d", X"fd57", X"ef3e", X"0aef", X"fee9", X"ff89", X"fcbe", X"ff5e", X"fbf7", X"0538", X"ff21", X"0652", X"0108", X"0550",
                                                        X"f758", X"f947", X"0274", X"015e", X"f355", X"ffc5", X"f769", X"047a", X"f2bf", X"fe6f", X"fe73", X"04ef", X"feaa", X"05fb",
                                                        X"033d", X"02be", X"fae1", X"f9db", X"06b4", X"fa87", X"f1a7", X"fd88", X"f99a", X"008e", X"f5c2", X"046d", X"fa63", X"04c4",
                                                        X"fbe5", X"040b", X"03f5", X"06d1", X"fb13", X"ff97", X"042b", X"009a", X"ec49", X"06e5", X"f96d", X"04ce", X"f7ed", X"0592",
                                                        X"02da", X"0230", X"030f", X"0742", X"02ab", X"084b", X"ffe3", X"fe41", X"0300", X"fa32", X"ed64", X"0140", X"f6ce", X"0300",
                                                        X"f796", X"0122", X"fff9", X"ffe7", X"028e", X"0832", X"02d8", X"0502", X"0257", X"0115", X"06fa", X"0476", X"f267", X"fdbc",
                                                        X"fc3e", X"0351", X"f1bb", X"0c0e", X"0052", X"0387", X"0209", X"07a1", X"038a", X"095e", X"04e2", X"ffe4", X"fe6e", X"0688",
                                                        X"f4df", X"0895", X"003f", X"037c", X"f875", X"047e", X"0448", X"fc71", X"019e", X"03fd", X"05af", X"044e", X"fe2e", X"0004",
                                                        X"0164", X"fecf", X"f6f0", X"087c", X"f7b6", X"02a6", X"f191", X"0560", X"fe31", X"fcb2", X"05be", X"ff23", X"04c4", X"07b0",
                                                        X"038b", X"ffce", X"fbdd", X"fcce", X"f9f0", X"0747", X"f8b9", X"01bb", X"f7c7", X"0218", X"fc13", X"feef", X"012b", X"ff1f",
                                                        X"08bd", X"01ad", X"089a", X"02f9", X"fd75", X"fe9c", X"ef14", X"10a1", X"fde8", X"fd38", X"f709", X"054e", X"faf7", X"ffa4",
                                                        X"fedf", X"ff00", X"05c3", X"0f9d", X"ff74", X"0541", X"01df", X"ff49", X"edea", X"014f", X"fb57", X"fbde", X"ef06", X"04b9",
                                                        X"02ea", X"020d", X"0328", X"08bc", X"0004", X"0917", X"0385", X"02af", X"fb44", X"fae4", X"eac1", X"0830", X"fb82", X"fdd0",
                                                        X"f7b4", X"06c5", X"01cb", X"00b7", X"040f", X"fb94", X"0400", X"06ff", X"07c1", X"0577", X"ffcf", X"fd0f", X"f5d9", X"0cef",
                                                        X"fdec", X"fc28", X"034f", X"ff60", X"fc55", X"fc6f", X"04f4", X"fb94", X"009c", X"0912", X"00e3", X"04a0", X"0582", X"fcd9",
                                                        X"f35b", X"0563", X"fd36", X"0152", X"00ad", X"04ce", X"fd79", X"02d0", X"031c", X"fb79", X"01a4", X"0de4", X"fcce", X"0367",
                                                        X"fe43", X"f8cd", X"f63c", X"0fcd", X"f711", X"00cd", X"024f", X"0235", X"045e", X"fded", X"061a", X"0307", X"fc9c", X"0d27",
                                                        X"fd33", X"ff1f", X"fdbc", X"fbea", X"f25a", X"0b45", X"f86d", X"ffc9", X"f4de", X"0508", X"fda6", X"0622", X"0416", X"106e",
                                                        X"fc2a", X"05e5", X"00e8", X"f9ef", X"ff12", X"0368", X"eeab", X"07c3", X"f836", X"04ed", X"f0b4", X"04da", X"fb0d", X"026d",
                                                        X"010f", X"0896", X"fd9a", X"022f", X"fb15", X"fc36", X"faee", X"fedb", X"f0b9", X"feb4", X"fa2c", X"02d6", X"f1ab", X"0497",
                                                        X"fe8c", X"ff47", X"0458", X"0460", X"04d9", X"ff4a", X"fa9d", X"019f", X"0030", X"fc03", X"f2b5", X"064e", X"f699", X"0103",
                                                        X"f586", X"0196", X"fdf3", X"007d", X"03ff", X"fcef", X"03bc", X"0d5b", X"fd0d", X"0046", X"02a3", X"0242", X"f550", X"0632",
                                                        X"f8f9", X"0088", X"02e6", X"ff44", X"ff35", X"fc8b", X"058e", X"ff5e", X"fb22", X"0cad", X"f54e", X"fe3c", X"01cc", X"fb74",
                                                        X"f8d8", X"0539", X"fa0f", X"01ea", X"fe66", X"ff08", X"fb92", X"ffca", X"0550", X"ff6f", X"0365", X"0b61", X"00a9", X"fe0b",
                                                        X"0385", X"fc36", X"f006", X"0bf5", X"fd04", X"ffdb", X"f4de", X"02da", X"feb7", X"fcf3", X"0b60", X"0413", X"029d", X"0722",
                                                        X"fb53", X"fcc4", X"0277", X"fdba", X"ed97", X"01ac", X"fdfd", X"01a5", X"fbd2", X"0238", X"fc9f", X"fc58", X"0709", X"0852",
                                                        X"065d", X"0ac3", X"feb6", X"fd80", X"fe13", X"f7ea", X"f9f4", X"0bf3", X"f8e6", X"fecc", X"f2e4", X"ff01", X"fffc", X"fe0d",
                                                        X"0558", X"0c03", X"0051", X"03a2", X"0317", X"fec1", X"fe27", X"ffaa", X"fc60", X"09f2", X"fb0c", X"0057", X"fca7", X"ffb5",
                                                        X"0092", X"fc4b", X"05e6", X"084a", X"01f3", X"0379", X"0054", X"02ce", X"fdef", X"febe", X"f920", X"048d", X"f6b5", X"003c",
                                                        X"faf7", X"0186", X"fb62", X"fd58", X"01d9", X"0614", X"03d9", X"04c1", X"0118", X"02d5", X"ff49", X"f829", X"ef4f", X"0892",
                                                        X"f681", X"fae3", X"f17c", X"fd19", X"0251", X"f741", X"ff21", X"0753", X"0056", X"05f1", X"01e1", X"fc55", X"0274", X"fecc",
                                                        X"efe6", X"0fb4", X"f617", X"fe4e", X"fb10", X"feee", X"fb8b", X"fb39", X"02c7", X"0430", X"fc17", X"09f2", X"fe8d", X"018e",
                                                        X"fea1", X"0448", X"f4a9", X"0eba", X"f74f", X"0197", X"08eb", X"0694", X"fa35", X"fddb", X"011e", X"0857", X"fbf1", X"0502",
                                                        X"00de", X"fc59", X"063b", X"0274", X"f073", X"09c5", X"f396", X"05b5", X"f80e", X"07cb", X"04fb", X"01eb", X"fc02", X"0ae8",
                                                        X"fbf8", X"0c6d", X"fe43", X"fd58");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fd58";
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
