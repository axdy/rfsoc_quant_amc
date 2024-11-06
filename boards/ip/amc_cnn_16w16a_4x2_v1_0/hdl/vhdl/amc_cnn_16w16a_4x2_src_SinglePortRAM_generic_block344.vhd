-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block344.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block344
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage111/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block344 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block344;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block344 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"046e", X"022d", X"fd61", X"fa04", X"fd22", X"0043",
                                                        X"12d1", X"021a", X"04a3", X"0fc9", X"060d", X"f4fa", X"03de", X"1067", X"0966", X"06d5", X"000b", X"0666", X"0171", X"fc21",
                                                        X"fb8c", X"ff0f", X"16e5", X"fe27", X"01d0", X"06e5", X"04f6", X"fa72", X"00a5", X"0d9a", X"0383", X"fe53", X"fa1f", X"07c5",
                                                        X"008c", X"ec0a", X"fc20", X"fc7c", X"070a", X"ff8e", X"0851", X"0b3a", X"077d", X"fcdb", X"fc29", X"001a", X"09e5", X"04a2",
                                                        X"0490", X"08cc", X"f490", X"ec99", X"faec", X"fc8c", X"094b", X"fe0c", X"04d5", X"0f73", X"ff62", X"f734", X"00d1", X"02a7",
                                                        X"0672", X"04e6", X"00af", X"035c", X"f8bf", X"f672", X"0393", X"ffad", X"0029", X"032c", X"00a4", X"080e", X"fbd9", X"fd55",
                                                        X"fc7d", X"ff1a", X"03e6", X"0593", X"046b", X"065f", X"fdbb", X"f78c", X"02b5", X"fcf9", X"0dd0", X"fb9e", X"fc6a", X"0b81",
                                                        X"034c", X"f46f", X"f9bf", X"0b63", X"0774", X"0745", X"ff50", X"0745", X"fe98", X"f0e8", X"f61b", X"fbe8", X"10da", X"f9db",
                                                        X"fe3f", X"0890", X"02fd", X"f0e7", X"fe99", X"01b0", X"01dc", X"05bb", X"020a", X"0c33", X"fef3", X"f1bf", X"f9f4", X"fe44",
                                                        X"0073", X"0238", X"08a7", X"094f", X"fdca", X"f818", X"fe07", X"f7ff", X"05e9", X"ff5c", X"ffbf", X"08cc", X"fabc", X"fc52",
                                                        X"fe7a", X"021e", X"10fa", X"0268", X"0662", X"0b4e", X"0493", X"febb", X"fe48", X"0e4f", X"0cc3", X"0145", X"fd45", X"feae",
                                                        X"fc2f", X"f771", X"fe88", X"ff38", X"1167", X"019a", X"ffc1", X"0ce5", X"026e", X"f7a5", X"fafb", X"01f3", X"0820", X"ff78",
                                                        X"fc4b", X"0539", X"02f7", X"f971", X"fe4a", X"fd6f", X"ff62", X"053d", X"0a1c", X"09c1", X"02df", X"fb6b", X"fcdb", X"ff3e",
                                                        X"082a", X"0241", X"ffb4", X"0766", X"021c", X"f744", X"fc18", X"0102", X"0609", X"0232", X"ffa4", X"0927", X"fe16", X"fa98",
                                                        X"fec0", X"031f", X"072d", X"0207", X"fd7b", X"0409", X"0045", X"fac6", X"fdd0", X"ffb2", X"07f3", X"03e8", X"0886", X"09be",
                                                        X"fff6", X"0047", X"0179", X"02a1", X"06a8", X"0170", X"ff23", X"02d6", X"fdd7", X"fbe9", X"0345", X"fd7b", X"00d3", X"00a3",
                                                        X"0616", X"08b9", X"fc55", X"fd33", X"f851", X"049b", X"02ad", X"0457", X"fe8c", X"0fc9", X"fd51", X"fdf4", X"fc8b", X"0006",
                                                        X"0a26", X"0241", X"ff9c", X"06a5", X"fdd9", X"f775", X"f9bb", X"014e", X"077b", X"05ca", X"0350", X"066c", X"fccf", X"f9cf",
                                                        X"fa77", X"fe25", X"fd11", X"02b3", X"01f7", X"04c6", X"fb2e", X"f5ef", X"fc87", X"12b1", X"0521", X"0832", X"02d6", X"0715",
                                                        X"05a7", X"f58e", X"0085", X"fea0", X"05a6", X"ff16", X"0725", X"0c60", X"0337", X"f684", X"0467", X"fe75", X"044f", X"01cc",
                                                        X"02b2", X"0a17", X"0137", X"f76a", X"0005", X"fdc5", X"09d2", X"fe02", X"05cc", X"0bd0", X"0401", X"f87b", X"001d", X"00b3",
                                                        X"0165", X"00f9", X"fbf4", X"06f2", X"f689", X"ef43", X"fc1a", X"ff0b", X"08d3", X"fe56", X"fdd4", X"0969", X"ffee", X"feb6",
                                                        X"fe16", X"0137", X"07a6", X"060f", X"fe8e", X"02f3", X"ffd6", X"f7a2", X"fd1c", X"ff42", X"07c3", X"0075", X"04df", X"0a61",
                                                        X"fcfc", X"fdec", X"fc1e", X"0864", X"0425", X"0361", X"05af", X"0a9c", X"f970", X"fa52", X"fbad", X"01da", X"11ea", X"03ff",
                                                        X"0c2b", X"0c9a", X"ff36", X"f654", X"006d", X"00f3", X"07fb", X"05b1", X"0502", X"0a75", X"fa94", X"f590", X"fa46", X"fb9b",
                                                        X"0f9d", X"ffa7", X"0662", X"094c", X"0086", X"f352", X"ffc8", X"f711", X"09ec", X"0475", X"01a1", X"088c", X"f7e9", X"fb05",
                                                        X"028d", X"fdf7", X"0c5e", X"0082", X"0023", X"0917", X"03c3", X"ec07", X"fedc", X"0ff1", X"043d", X"0444", X"ff27", X"0ca9",
                                                        X"fc71", X"effa", X"01ed", X"fd32", X"1151", X"04e9", X"0b5f", X"0874", X"fce6", X"f2a1", X"00bb", X"fd0c", X"ff8c", X"fef6",
                                                        X"02c0", X"05ec", X"f888", X"f315", X"06fc", X"001a", X"0f63", X"028d", X"033b", X"139a", X"05bc", X"f693", X"ffc9", X"0cc7",
                                                        X"0866", X"0326", X"0435", X"05f0", X"fca3", X"f1ee", X"fba6", X"000b", X"10e7", X"fbef", X"0137", X"0a86", X"03df", X"fb7a",
                                                        X"f9e7", X"0484", X"031f", X"0236", X"02fe", X"058b", X"fe43", X"f413", X"f92c", X"fc63", X"0517", X"fc69", X"0645", X"05aa",
                                                        X"0668", X"f98d", X"ffb8", X"0983", X"0759", X"0580", X"082d", X"05d5", X"fec1", X"034d", X"f77b", X"fb36", X"06ff", X"fd4a",
                                                        X"0784", X"07a8", X"fb7a", X"fdea", X"fede", X"fe98", X"092a", X"0368", X"0354", X"0479", X"fe29", X"f52f", X"ffea", X"009a",
                                                        X"fd04", X"ff19", X"034f", X"0bad", X"fa67", X"f58f", X"01b1", X"fb1e", X"0734", X"02c2", X"0380", X"083a", X"f9f9", X"f173",
                                                        X"ffb0", X"0156", X"0a59", X"fdbc", X"0938", X"0e98", X"063c", X"ff36", X"04d8", X"f9be", X"09a8", X"0346", X"0395", X"09c9",
                                                        X"f822", X"f3c3", X"0112", X"fd34", X"fe24", X"042f", X"03fa", X"0d78", X"0634", X"f333", X"fa44", X"01f4", X"05b9", X"072e",
                                                        X"fdd6", X"0ab3", X"fcac", X"fb55", X"008a", X"fbb3", X"00b7", X"feff", X"ffbc", X"07ca", X"0723", X"f42a", X"0734", X"ffe5",
                                                        X"098a", X"021e", X"0091", X"015e", X"02ee", X"f610", X"009e", X"ff94", X"0f9f", X"fc31", X"0336", X"0551", X"0183", X"f7ed",
                                                        X"ffb7", X"0fb6", X"0205", X"02e1", X"0510", X"05cd", X"fe16", X"f898", X"0129", X"ffcb", X"0c4e", X"fc90", X"0760", X"09f8",
                                                        X"083f", X"f88f", X"feb0", X"f99f", X"05c2", X"029c", X"04e3", X"0288", X"f8d3", X"f3ac", X"fe15", X"fd70", X"0b98", X"f7e4",
                                                        X"0304", X"0e09", X"0916", X"f424", X"fce1", X"f7a6", X"044d", X"002b", X"0191", X"0603", X"f4af", X"edef", X"ff53", X"fe73",
                                                        X"fbc1", X"fe1c", X"0678", X"0a62", X"05a0", X"f90d", X"f9be", X"ffcd", X"053d", X"02a7", X"07ad", X"08f2", X"fb2c", X"f328",
                                                        X"fc2b", X"feed", X"fdf4", X"0145", X"0505", X"0b33", X"00f2", X"f636", X"f4fc", X"075b", X"057b", X"035e", X"00db", X"06a7",
                                                        X"fde3", X"044c", X"f78c", X"fffc", X"0c0a", X"fa28", X"095d", X"0845", X"0001", X"f92b", X"f3e9", X"fac4", X"0444", X"02d4",
                                                        X"fe9b", X"0650", X"fd71", X"edd3", X"fcd0", X"ff2c", X"0f13", X"04c2", X"0318", X"079d", X"fdb9", X"f888", X"fd18", X"fd5e",
                                                        X"0637", X"01d7", X"ffb8", X"0478", X"ff3e", X"fb43", X"f98f", X"fd6d", X"0ed2", X"0456", X"080f", X"05c4", X"0489", X"fbb3",
                                                        X"f7af", X"006d", X"06e1", X"02da", X"ffe0", X"03d9", X"f6e5", X"fb93", X"fe74", X"fed2", X"0e6a", X"060c", X"0ac1", X"0de5",
                                                        X"0486", X"f90a", X"016d", X"10d3", X"0205", X"0106", X"0399", X"098b", X"fc1b", X"e78b", X"0020", X"fced", X"ffa9", X"fe48",
                                                        X"fc14", X"0953", X"0151", X"f9b7", X"0130", X"0490", X"0433", X"0373", X"026a", X"0290", X"fd46", X"f823", X"f92b", X"0362",
                                                        X"03d2", X"ff4f", X"06ad", X"0bac", X"0332", X"f7e4", X"feee", X"ff12", X"0397", X"0750", X"03ec", X"07df", X"010c", X"f4b4",
                                                        X"fc4c", X"ffee", X"033b", X"0264", X"0a66", X"0d07", X"056b", X"fbc2", X"0060", X"0758", X"043c", X"0755", X"006b", X"049d",
                                                        X"fcf3", X"f5d4", X"fdb8", X"fcf2", X"1095", X"fc3b", X"06ee", X"0f8a", X"01f7", X"f7b3", X"073c", X"fe5f", X"0aa3", X"0430",
                                                        X"02d4", X"0c77", X"fb19", X"f363", X"fcd5", X"fe7c", X"080c", X"fef8", X"029b", X"0ab5", X"00f1", X"fb52", X"0359", X"ffaf",
                                                        X"0a18", X"0259", X"0343", X"092a", X"f6a8", X"f645", X"fa52", X"fe1e", X"0622", X"fecb", X"07b6", X"0903", X"05b0", X"f63f",
                                                        X"fe05", X"065f", X"03ae", X"0717", X"feaa", X"0536", X"fd96", X"ecc4", X"fe54", X"fe9c", X"ffe9", X"fada", X"0888", X"0c26",
                                                        X"fe42", X"f5da", X"0136", X"0926", X"07a0", X"08df", X"006f", X"0991", X"fa79", X"f08a", X"fece", X"fa9f", X"037b", X"0168",
                                                        X"ff77", X"0d80", X"0043", X"f71e", X"003c", X"feb3", X"028e", X"09ec", X"0273", X"01d6", X"fcbd", X"fcd6", X"ff18", X"fbfe",
                                                        X"0346", X"fe87", X"05a2", X"08a5", X"0266", X"ec93", X"f729", X"0410", X"061e", X"0759", X"0398", X"0540", X"faa7", X"ffc1",
                                                        X"f85f", X"02e1", X"07d5", X"f6be", X"033f", X"0cae", X"0379", X"f8dc", X"02d2", X"f88d", X"0b35", X"0323", X"01a7", X"072f",
                                                        X"f93f", X"ee43", X"f7e1", X"fcef", X"011d", X"fd7d", X"0975", X"093a", X"f928", X"fc48", X"01b1", X"f7ff", X"0b43", X"0397",
                                                        X"fec1", X"0a8b", X"fcf9", X"f5b7", X"ffbc", X"fd35", X"0587", X"fd4f", X"08d2", X"084b", X"04bb", X"f7b4", X"00d2", X"f6ac",
                                                        X"0421", X"0175", X"0325", X"0989", X"f452", X"f38b", X"fc8f", X"fd59", X"0ce2", X"036f", X"0889", X"0b33", X"0995", X"f7f2",
                                                        X"0252", X"f973", X"0463", X"04e7", X"fe5d", X"054f", X"f948", X"f470", X"0110", X"fab6", X"052c", X"0098", X"fb32", X"0a5f",
                                                        X"05ba", X"f18e", X"ff29", X"fd8f", X"0524", X"017c", X"059e", X"02a2", X"0070", X"fb37", X"fce4", X"fc4e", X"08bd", X"f859",
                                                        X"04db", X"07ae", X"fe3c", X"f7ff", X"032e", X"fe66", X"07df", X"009e", X"0619", X"04cd", X"fbbe", X"ee80", X"fa94", X"fc73",
                                                        X"077d", X"feb3", X"0301", X"0ad2", X"026a", X"0077", X"fa7c", X"0993", X"00bc", X"ff69", X"02e1", X"03e3", X"ff6e", X"f5e7",
                                                        X"fc99", X"fcc5", X"00c3", X"ff41", X"fe45", X"071f", X"01df", X"f732", X"fbf6", X"0f79", X"0806", X"fcc1", X"0344", X"0b1f",
                                                        X"f65c", X"f278", X"fe3a", X"fc81", X"0e39", X"042e", X"0a13", X"06a8", X"02aa", X"f924", X"0092", X"0a10", X"0bc1", X"0790",
                                                        X"065c", X"0782", X"f962", X"ed09", X"00be", X"0230", X"040f", X"0422", X"03c5", X"0d1e", X"02fa", X"fa62", X"0000", X"01bd",
                                                        X"02ef", X"03b3", X"f73c", X"0782", X"fafa", X"fa58", X"fd23", X"ff78", X"0c7b", X"0575", X"042c", X"06e4", X"0463", X"f70e",
                                                        X"feda", X"07c5", X"057d", X"ff7d", X"fca2", X"07a2", X"f809", X"fa05", X"f7e4", X"0108", X"093d", X"0275", X"0496", X"0c70",
                                                        X"0399", X"f6bf", X"faa0", X"f924", X"0870", X"0518", X"ff1c", X"0abf", X"fe1d", X"fa5c", X"fbf9", X"000a", X"038f", X"0512",
                                                        X"fc06", X"0bde", X"024d", X"f990", X"f85d", X"0ab1", X"03d9", X"01ff", X"008e", X"0274", X"fdbc", X"f101", X"fe29", X"0096",
                                                        X"08dc", X"ff93", X"00b5", X"09d8", X"06dd", X"f533", X"064e", X"ff91", X"0560", X"0426", X"017c", X"09dd", X"f5cd", X"ee2a",
                                                        X"fbeb", X"fb1b", X"fcf1", X"ff31", X"fd54", X"1185", X"03d8", X"fca6", X"febe", X"0038", X"0665", X"06dd", X"037d", X"051f",
                                                        X"f516", X"efb0", X"029e", X"0031", X"01ee", X"0153", X"0703", X"0fb6", X"fe7f", X"f40a", X"fc96", X"03c0", X"06eb", X"0638",
                                                        X"08ab", X"02c9", X"f83b", X"f76e", X"ffa3", X"0189", X"0395", X"0317", X"05ed", X"0c72", X"fa0f", X"f975", X"fc1e", X"05e5",
                                                        X"0886", X"02e0", X"0242", X"0aa6", X"fac6", X"faf5", X"faf0", X"fdb8", X"0e6f", X"fdc9", X"00d5", X"0d87", X"0380", X"f4d3",
                                                        X"0317", X"02be", X"0e07", X"07f4", X"0342", X"0dee", X"01d2", X"fabb", X"f99b", X"01ba", X"0fe8", X"065f", X"ffea", X"025f",
                                                        X"0037", X"f5ce", X"040c", X"fc72", X"00ef", X"06b3", X"01d1", X"0414", X"f8d4", X"f59c", X"fa17", X"fb75", X"fe32", X"fecc",
                                                        X"0a1d", X"08cb", X"03de", X"f85a", X"025b", X"fe36", X"09ea", X"0233", X"01da", X"056a", X"fef5", X"f8a3", X"01af", X"fe3a",
                                                        X"0297", X"0264", X"05ff", X"01b0", X"ff1c", X"fa3b", X"08ca", X"01bf", X"ffc5", X"070e", X"01c2", X"03c6", X"f6ac", X"f796",
                                                        X"f98f", X"00fc", X"06ba", X"fc13", X"086d", X"0724", X"0595", X"fb3e", X"fd9f", X"066f", X"0773", X"08ff", X"0559", X"ffb8",
                                                        X"fa84", X"f6fa", X"fb45", X"fddd", X"fd43", X"fb05", X"023e", X"06a3", X"fc02", X"f63d", X"fe2e", X"0b6a", X"0b43", X"0779",
                                                        X"ff37", X"0438", X"027a", X"f51b", X"01e3", X"0017", X"080c", X"fff2", X"f9ca", X"04e8", X"012a", X"f5ab", X"fd33", X"f2b0",
                                                        X"0640", X"0342", X"fe3f", X"031f", X"fcf3", X"f313", X"0049", X"fc93", X"127f", X"0230", X"0cfd", X"02c5", X"0d4d", X"f4be",
                                                        X"f5fd", X"f251", X"0540", X"03ee", X"024c", X"0270", X"ff94", X"f0dc", X"f929", X"fe8b", X"085a", X"01c6", X"032b", X"0795",
                                                        X"00ca", X"f7f2", X"fea7", X"f25a", X"05d5", X"059c", X"0479", X"04b1", X"f901", X"f9d1", X"fdbb", X"f9c5", X"0b31", X"0244",
                                                        X"00f2", X"0549", X"fdb6", X"f552", X"fada", X"fde7", X"01b7", X"001a", X"016f", X"0b16", X"f7fc", X"f43e", X"fd1a", X"ffe2",
                                                        X"007b", X"f9c1", X"02a6", X"1174", X"ff91", X"fe9f", X"0019", X"07e5", X"09f1", X"ffbf", X"ffb2", X"0580", X"02ae", X"f3f7",
                                                        X"f910", X"ff8e", X"08a6", X"fde7", X"06db", X"0f31", X"fbfc", X"f574", X"f946", X"0233", X"087c", X"ff60", X"031a", X"0336",
                                                        X"ff8f", X"fd37", X"fa14", X"00f2", X"0689", X"fd55", X"0288", X"03ef", X"f9e1", X"f642", X"0215", X"0492", X"00d2", X"01a2",
                                                        X"04f1", X"040a", X"f89b", X"f745", X"fc91", X"0018", X"ff06", X"f886", X"01ce", X"0902", X"fb4e", X"f589", X"055b", X"ff17",
                                                        X"080e", X"05ef", X"003f", X"0071", X"f623", X"f7f9", X"f616", X"fdb9", X"01ff", X"fb7b", X"02fe", X"0769", X"fb23", X"f868",
                                                        X"fcf7", X"fcde", X"0121", X"02ab", X"ff6d", X"04ff", X"fb8f", X"f982", X"f7a9", X"0009", X"05b3", X"fd05", X"0520", X"0a19",
                                                        X"fe0a", X"f847", X"fd93", X"f5cb", X"09a8", X"0132", X"02b2", X"056a", X"fdfe", X"f2ed", X"fa02", X"001d", X"07e9", X"05d4",
                                                        X"0a98", X"0ddf", X"035f", X"ffe5", X"01f7", X"021a", X"08d4", X"0318", X"00e6", X"0624", X"f8ec", X"ef23", X"f686", X"ff94",
                                                        X"082b", X"03f9", X"0250", X"0ee0", X"0600", X"f9a9", X"fa75", X"0379", X"032f", X"04c2", X"fbfa", X"0572", X"f840", X"f2dd",
                                                        X"f563", X"01fe", X"0c5f", X"021c", X"ff21", X"0923", X"01b9", X"f98c", X"ff44", X"fe8b", X"0d04", X"0279", X"fc76", X"0c68",
                                                        X"f861", X"f324", X"f92f", X"020b", X"025c", X"012c", X"0758", X"0851", X"04f9", X"f48b", X"fcf6", X"0519", X"080c", X"04a0",
                                                        X"fedd", X"0a7d", X"012e", X"fc82", X"f805", X"00a9", X"04c5", X"0342", X"026b", X"08e0", X"ffa4", X"f9bb", X"ff99", X"072e",
                                                        X"0402", X"05ba", X"fe96", X"0933", X"fc7d", X"fa2a", X"fdee", X"008c", X"01ef", X"feed", X"fcc4", X"0907", X"fc7c", X"f54c",
                                                        X"0146", X"05ff", X"01d8", X"032a", X"0171", X"0322", X"0010", X"f640", X"fc83", X"fe8d", X"051e", X"0401", X"0709", X"0847",
                                                        X"0355", X"f559", X"f7a2", X"fcc2", X"0470", X"03e8", X"fc8f", X"00ff", X"f453", X"f49c", X"0297", X"fb78", X"f99c", X"0006",
                                                        X"01f7", X"0eba", X"0152", X"f35d", X"f85b", X"f2a8", X"0660", X"0193", X"00c3", X"06f4", X"fb34", X"f554", X"fc87", X"feae",
                                                        X"0a55", X"01f5", X"03fa", X"0bc1", X"0025", X"f722", X"fa9b", X"fed6", X"0771", X"00e1", X"00bd", X"0415", X"fccb", X"f245",
                                                        X"f9fb", X"0032", X"0c5e", X"0389", X"013c", X"09a9", X"ff17", X"0064", X"0060", X"fbce", X"0824", X"fe2c", X"fe4f", X"045f",
                                                        X"ff41", X"f1b0", X"fdf5", X"fe32", X"0c69", X"00af", X"0ae1", X"0a65", X"0390", X"fb4a", X"041c", X"f867", X"0b36", X"ffd7",
                                                        X"0873", X"0892", X"fd9d", X"eecf", X"0200", X"fe15", X"081f", X"042d", X"03ab", X"0a93", X"02bd", X"fcd0", X"0303", X"0071",
                                                        X"0d8a", X"0464", X"097d", X"0698", X"f776", X"f519", X"fdef", X"0099", X"0374", X"00ae", X"0702", X"0bf4", X"040c", X"fa8b",
                                                        X"fe9a", X"0c27", X"0885", X"06e8", X"0877", X"07ba", X"fd40", X"0061", X"ffd0", X"0005", X"02d8", X"fd18", X"03ba", X"0d61",
                                                        X"ff73", X"f548", X"0059", X"0c51", X"0759", X"0645", X"061d", X"0516", X"021c", X"f763", X"0076", X"fcc7", X"09ca", X"f508",
                                                        X"f9cc", X"0cf0", X"011d", X"f5c7", X"fca3", X"fd08", X"087a", X"08d4", X"06b8", X"0461", X"f952", X"f389", X"013b", X"fcbd",
                                                        X"0898", X"02b6", X"084d", X"0ade", X"0549", X"f74d", X"ffa8", X"fcea", X"04df", X"00e3", X"07c0", X"09f9", X"fc1c", X"f350",
                                                        X"0005", X"fa80", X"0531", X"fb3f", X"023b", X"0ca1", X"fed0", X"fb16", X"05ce", X"00fa", X"013b", X"037d", X"02f3", X"0749",
                                                        X"fa1b", X"f087", X"fd27", X"00ea", X"08c8", X"0230", X"0fc4", X"0ec3", X"01d8", X"f7ea", X"0222", X"fe0d", X"0804", X"020a",
                                                        X"05e0", X"0052", X"053a", X"f97b", X"f936", X"0137", X"091f", X"fe0e", X"fe57", X"0c51", X"fcdc", X"fb4c", X"07b6", X"fcff",
                                                        X"0962", X"0619", X"00b8", X"0235", X"faa3", X"f76d", X"fe02", X"fdb8", X"0734", X"f9aa", X"087c", X"08c1", X"fda7", X"fa6e",
                                                        X"063f", X"0ff2", X"043f", X"fc58", X"00af", X"0900", X"fc29", X"f963", X"fd51", X"0231", X"0e3c", X"faff", X"071f", X"0b13",
                                                        X"0721", X"fddc", X"fec5", X"f7db", X"0af4", X"0108", X"0581", X"071c", X"f6e1", X"f765", X"006e", X"02b5", X"0887", X"027c",
                                                        X"02c4", X"0cd0", X"0915", X"f313", X"f7b5", X"fc01", X"0be5", X"0349", X"0345", X"0bf3", X"fd6e", X"fd78", X"fccd", X"ff4c",
                                                        X"1434", X"024c", X"feb7", X"0922", X"03b1", X"f96c", X"06c8", X"027c", X"047b", X"fca7", X"0447", X"0c70", X"f7e3", X"f48f",
                                                        X"02e1", X"0460", X"0b49", X"0236", X"023a", X"0b9a", X"0637", X"f747", X"00dd", X"06ac", X"036c", X"fdf6", X"fff4", X"068d",
                                                        X"00e8", X"f750", X"fe73", X"ff5e", X"0273", X"007d", X"048a", X"0b83", X"0551", X"f5c5", X"0542", X"07ac", X"04cc", X"057b",
                                                        X"0089", X"0927", X"03d7", X"f80b", X"0148", X"ff11", X"131a", X"0158", X"01f1", X"0aea", X"052a", X"f4a9", X"fcd3", X"ff62",
                                                        X"0834", X"056d", X"0177", X"08dc", X"ffac", X"f07b", X"fb99", X"fdc8", X"07cb", X"00f8", X"0879", X"09d5", X"030d", X"f913",
                                                        X"fe90", X"0287", X"0869", X"0577", X"fb20", X"0796", X"fa8b", X"f892", X"f549", X"fee3", X"0470", X"fdfc", X"044b", X"082b",
                                                        X"03df", X"fda9", X"fd8b", X"f5c2", X"07d2", X"010c", X"fda8", X"0726", X"faa5", X"f01e", X"fa28", X"ffa0", X"0900", X"03d0",
                                                        X"0501", X"06be", X"03a6", X"f90b", X"01a3", X"09b0", X"0b58", X"021a", X"ffed", X"0a59", X"f8de", X"f711", X"fedb", X"fd15",
                                                        X"01a0", X"05cc", X"0429", X"0ccf", X"03f0", X"f5b6", X"044c", X"0987", X"0bc9", X"ffa5", X"fe91", X"0a6f", X"fae0", X"f9fc",
                                                        X"fdfd", X"feb2", X"081e", X"0364", X"04da", X"0ba7", X"0538", X"f7bd", X"0381", X"09b2", X"08c7", X"0106", X"01bf", X"0738",
                                                        X"f6d4", X"f293", X"00ee", X"ffaf", X"0405", X"fe87", X"02ea", X"0ba6", X"0522", X"f44a", X"041a", X"0c28", X"0c2d", X"06f8",
                                                        X"0026", X"02a2", X"f8b5", X"f33e", X"fad7", X"01d9", X"0d5f", X"0058", X"f830", X"1018", X"0006", X"f8c2", X"03bb", X"039c",
                                                        X"07c2", X"02b6", X"05a7", X"00bf", X"fd25", X"f1a6", X"fb49", X"fe49", X"1943", X"00b5", X"0165", X"0c3f", X"0399", X"f190",
                                                        X"fb1d", X"0157", X"0724", X"040f", X"fef4", X"031c", X"fde1", X"f6fc", X"f4ca", X"009f", X"0ee2", X"0035", X"0173", X"0c29",
                                                        X"0654", X"f64f", X"01fe", X"063e", X"09ba", X"0385", X"fdfe", X"08b5", X"044a", X"f90f", X"f8cf", X"fed1", X"04ee", X"03f7",
                                                        X"054d", X"0ce8", X"fe75", X"f8bb", X"f660", X"00c1", X"0597", X"0132", X"014c", X"0632", X"fe60", X"f0e9", X"fd0a", X"ff20",
                                                        X"0830", X"fe7f", X"045e", X"0ec3", X"014e", X"fc13", X"00ca", X"0e67", X"065d", X"00b0", X"0168", X"07a4", X"f9a8", X"f488",
                                                        X"0293", X"ff16", X"090a", X"ff55", X"fc88", X"0f7c", X"045b", X"f733", X"01d0", X"ffad", X"026c", X"02ab", X"01e7", X"06ce",
                                                        X"fb5e", X"f81d", X"fb7c", X"fcab", X"07d1", X"f38c", X"03a9", X"0bd7", X"0339", X"f2d8", X"f9d6", X"0973", X"0931", X"037e",
                                                        X"0a21", X"063d", X"fbb8", X"f887", X"fc77", X"02c6", X"0ca4", X"fff1", X"053a", X"060f", X"006c", X"f263", X"fea5", X"07b6",
                                                        X"073a", X"0015", X"0be4", X"06dd", X"f622", X"f393", X"011e", X"041f", X"0004", X"ff45", X"0091", X"118c", X"07c0", X"fd30",
                                                        X"0a51", X"0762", X"0f13", X"00ab");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"00ab";
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
