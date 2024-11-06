-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block447.vhd
-- Created: 2024-11-04 16:44:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block447
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage90/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block447 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block447;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block447 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fc1b", X"0aed", X"ff65", X"f480", X"ffa0", X"f6d5",
                                                        X"0b89", X"fae1", X"fe15", X"01be", X"f832", X"fb36", X"fb92", X"0a4f", X"00a7", X"ecc3", X"f84f", X"0716", X"0b4b", X"f452",
                                                        X"ffe6", X"f9bb", X"0d4d", X"fac2", X"ff39", X"fe95", X"f9d4", X"fe4c", X"ff72", X"fb56", X"0304", X"f4e5", X"f882", X"06f3",
                                                        X"0971", X"f56c", X"ff57", X"fcf8", X"0dda", X"fa6a", X"f9e0", X"0099", X"f9db", X"fec6", X"0382", X"f66f", X"001e", X"f7b1",
                                                        X"fd8a", X"0491", X"06bf", X"f2a0", X"fac3", X"f9bd", X"1288", X"fe21", X"fb1e", X"fef2", X"f876", X"fa1b", X"005f", X"fe3c",
                                                        X"fa50", X"f663", X"f8dd", X"032d", X"0921", X"ffce", X"fadd", X"fa76", X"0bab", X"fb5d", X"fbb7", X"fb45", X"f7a7", X"fa1f",
                                                        X"fc6d", X"f7b4", X"0029", X"fada", X"fa9c", X"fb4c", X"080e", X"fcad", X"fd90", X"fa41", X"ff96", X"f842", X"fa2e", X"f908",
                                                        X"f62c", X"ff45", X"f735", X"f7c1", X"0213", X"fb96", X"fe95", X"0022", X"00d6", X"fb24", X"fe88", X"fcd3", X"fc17", X"f83c",
                                                        X"0074", X"fe4a", X"f5dd", X"fefb", X"fe98", X"f8fe", X"0197", X"fdbb", X"032c", X"02b1", X"0316", X"f624", X"fdd5", X"fc44",
                                                        X"044d", X"fb10", X"005b", X"fee2", X"f8e1", X"f6aa", X"0139", X"ff5a", X"04bc", X"fcc9", X"0043", X"03ed", X"fdc0", X"0486",
                                                        X"fefc", X"fc58", X"0c14", X"f941", X"0391", X"053d", X"fbc5", X"f2cd", X"ffd7", X"0532", X"054b", X"fe10", X"fce1", X"06be",
                                                        X"0223", X"f895", X"066f", X"0069", X"04c4", X"fea6", X"024d", X"07a9", X"02b6", X"f274", X"0245", X"00b2", X"0771", X"fbd4",
                                                        X"01dc", X"0b25", X"053c", X"fc16", X"0522", X"ffd2", X"054f", X"feb2", X"01f8", X"08bd", X"005b", X"f611", X"fc3b", X"08e6",
                                                        X"075f", X"fd2d", X"ffd9", X"0842", X"03a7", X"f80a", X"0a70", X"0048", X"0bd9", X"fac9", X"050d", X"065b", X"ffe5", X"f7c7",
                                                        X"fbf2", X"065f", X"092d", X"fc6a", X"01db", X"00e5", X"047c", X"ee12", X"050b", X"fbc4", X"0d5b", X"fa48", X"ffe4", X"0a01",
                                                        X"04c2", X"fc36", X"fe02", X"0c40", X"0816", X"013b", X"03ef", X"08cb", X"fe1e", X"fc11", X"05c7", X"fa11", X"08f9", X"fb1a",
                                                        X"fc46", X"067c", X"fdd1", X"fe23", X"fd89", X"112d", X"030f", X"0034", X"047c", X"0b55", X"f775", X"fbf4", X"0a23", X"0057",
                                                        X"0bfa", X"fb20", X"0108", X"0b7e", X"02e3", X"f5e5", X"00e1", X"0e95", X"07cb", X"0306", X"0285", X"07d0", X"f9af", X"f89c",
                                                        X"0856", X"ffdb", X"0bb0", X"ffb3", X"003d", X"0ecb", X"0454", X"f8cd", X"f9e2", X"05ae", X"0b80", X"01a0", X"00b0", X"075e",
                                                        X"0492", X"f594", X"0a61", X"020d", X"0ee9", X"0527", X"030a", X"0f78", X"0835", X"f2ce", X"fe34", X"0a5f", X"09ee", X"0273",
                                                        X"00da", X"1025", X"0899", X"f48f", X"0751", X"00e2", X"0ea4", X"036a", X"ff79", X"0d7e", X"07da", X"ff33", X"fec3", X"05ab",
                                                        X"077d", X"fe5a", X"012c", X"0bf9", X"08bd", X"ef44", X"073d", X"0263", X"1462", X"0223", X"0140", X"0b5b", X"0722", X"00dc",
                                                        X"01ba", X"fd02", X"0c16", X"008b", X"fdc1", X"0439", X"094a", X"f871", X"064c", X"fe2a", X"0fce", X"004b", X"fea3", X"0774",
                                                        X"024b", X"fb84", X"fefa", X"0336", X"0b25", X"fcb4", X"fbfd", X"0701", X"07d0", X"f725", X"ffbb", X"fc34", X"09df", X"fec5",
                                                        X"0530", X"0630", X"ff56", X"fe34", X"fb4a", X"00f4", X"088d", X"02dd", X"f940", X"0086", X"0deb", X"f4ee", X"04f2", X"fe38",
                                                        X"0a1e", X"f9b6", X"094d", X"032c", X"fcf4", X"025e", X"05f4", X"00cf", X"0966", X"fe14", X"fbf1", X"0364", X"0814", X"fb6b",
                                                        X"059b", X"fcde", X"081f", X"fb91", X"01c0", X"0420", X"fda3", X"041e", X"0025", X"0150", X"080f", X"00d7", X"fa83", X"0212",
                                                        X"ffa7", X"f8bb", X"01f6", X"fe01", X"0b62", X"ff67", X"0488", X"04d4", X"fc93", X"fa7a", X"05e1", X"003b", X"0825", X"fab9",
                                                        X"fb08", X"0169", X"0a1e", X"026a", X"0734", X"ff7d", X"06b9", X"000e", X"fef9", X"0224", X"fcc7", X"fa11", X"02a5", X"05b4",
                                                        X"0668", X"fea3", X"0061", X"03d2", X"07c7", X"fe91", X"07b4", X"fa9b", X"0054", X"fe54", X"fec6", X"031c", X"fd8c", X"f3a2",
                                                        X"fd60", X"070a", X"06b0", X"037b", X"fd19", X"02c5", X"076e", X"fc90", X"0615", X"f859", X"084b", X"f8ed", X"ff40", X"05bb",
                                                        X"fba0", X"f5ae", X"fa0e", X"fe97", X"052a", X"fd25", X"fb82", X"0131", X"0353", X"0a25", X"04d8", X"f9eb", X"0cae", X"f923",
                                                        X"fa91", X"00a1", X"001d", X"fac4", X"fcbf", X"ffe9", X"078e", X"fbe3", X"fea5", X"0007", X"ff7c", X"f3fb", X"066b", X"fbde",
                                                        X"0ab5", X"ff0c", X"ffb7", X"02e1", X"02ab", X"f123", X"fddb", X"0611", X"064c", X"fb7b", X"f8bc", X"f9ab", X"04df", X"ff83",
                                                        X"ffeb", X"fb3b", X"0883", X"f8f7", X"faf6", X"018f", X"fd7f", X"fcd3", X"fc40", X"fc0a", X"02c1", X"fb80", X"f3c3", X"02b5",
                                                        X"005f", X"041f", X"fe78", X"fd14", X"04a4", X"f875", X"fd75", X"027d", X"fd64", X"fee2", X"fde2", X"f95f", X"0849", X"fc9f",
                                                        X"fbd9", X"0367", X"04b4", X"fd9c", X"02db", X"fae6", X"0322", X"fd05", X"fd3a", X"0504", X"034b", X"fab7", X"fd2e", X"f759",
                                                        X"04fd", X"fc8b", X"fd75", X"fd30", X"070c", X"f487", X"ff5a", X"ff8d", X"07ad", X"fcee", X"fdd8", X"0864", X"fbd5", X"fdd9",
                                                        X"0241", X"f873", X"0713", X"fc27", X"0166", X"0194", X"0688", X"eff2", X"0442", X"fe37", X"084e", X"ff1f", X"ff59", X"07a1",
                                                        X"014e", X"fc6f", X"00be", X"fc2c", X"0679", X"008b", X"00b8", X"04ad", X"067c", X"fc9e", X"067e", X"ff3a", X"0e17", X"fb3e",
                                                        X"fdf5", X"0b8d", X"fada", X"0172", X"fc7c", X"fb8f", X"0748", X"01f4", X"0190", X"0466", X"04ad", X"f847", X"04da", X"fe9e",
                                                        X"0cb7", X"fde8", X"fd82", X"06c0", X"fee4", X"fc2a", X"0390", X"fe71", X"017b", X"029d", X"017f", X"0621", X"09af", X"fd55",
                                                        X"01c8", X"fded", X"0a51", X"fe66", X"05e3", X"06b7", X"fdc8", X"f7f7", X"0253", X"0481", X"0716", X"0374", X"021c", X"040a",
                                                        X"03f0", X"f816", X"030a", X"fbea", X"03fa", X"0053", X"0704", X"084b", X"0013", X"000d", X"fe0c", X"057d", X"0575", X"008b",
                                                        X"fe1e", X"03dd", X"ff0e", X"f6c0", X"0480", X"0101", X"06bf", X"ff34", X"0abb", X"087c", X"010b", X"fb57", X"032d", X"07e3",
                                                        X"0b90", X"fe91", X"ff1d", X"03c4", X"fde5", X"f5c8", X"05db", X"03e8", X"ff8e", X"ffc8", X"080e", X"0be2", X"02d7", X"fc08",
                                                        X"0477", X"0029", X"0ccd", X"02ec", X"0222", X"0741", X"046e", X"f5a0", X"060e", X"0083", X"0d7f", X"01c2", X"fcd8", X"0749",
                                                        X"012b", X"ed8c", X"0344", X"06f4", X"0639", X"fef5", X"fda0", X"0726", X"04c7", X"ff13", X"ffdd", X"029f", X"0e2c", X"ff1a",
                                                        X"01e5", X"0515", X"ffc2", X"f216", X"025e", X"0539", X"0aea", X"0067", X"ff41", X"05aa", X"08e9", X"fecd", X"05c5", X"fdd7",
                                                        X"10cc", X"000f", X"fcec", X"0770", X"05b0", X"eee7", X"f99e", X"0d3c", X"0346", X"ffa8", X"fe63", X"0c39", X"094f", X"fb3f",
                                                        X"07b1", X"fc03", X"0ba1", X"ff88", X"fcd2", X"09c3", X"031b", X"f481", X"fa92", X"0285", X"ff0e", X"fa2a", X"0100", X"090f",
                                                        X"0288", X"f6e7", X"07bb", X"f99f", X"0f8c", X"fe05", X"fda7", X"0574", X"038c", X"fc20", X"f656", X"0a7f", X"0092", X"f8e5",
                                                        X"fe0b", X"07aa", X"fdb4", X"f7de", X"053e", X"fb09", X"0e3f", X"fcb2", X"fe93", X"0946", X"fffb", X"f0e0", X"fc8a", X"058e",
                                                        X"067e", X"fc1b", X"ff4b", X"0a82", X"fb08", X"f688", X"0724", X"fe89", X"07eb", X"f8c4", X"fe34", X"0964", X"049b", X"f11f",
                                                        X"fab5", X"0a67", X"062c", X"fff5", X"fe30", X"0a40", X"042e", X"f72b", X"0ac4", X"fd12", X"0967", X"f9b1", X"fe35", X"085e",
                                                        X"039e", X"f21c", X"fd58", X"054c", X"0538", X"0150", X"005f", X"0901", X"0284", X"0162", X"0674", X"ff10", X"0387", X"fc82",
                                                        X"fd2b", X"0632", X"0174", X"f94e", X"fb4e", X"0256", X"06c2", X"00f1", X"ff47", X"0a8a", X"03a5", X"f412", X"05ca", X"ffbc",
                                                        X"007f", X"fc5d", X"0380", X"0753", X"07bf", X"f758", X"fc57", X"022b", X"0a41", X"fe1c", X"037c", X"0e9c", X"0364", X"f8e3",
                                                        X"0517", X"0029", X"033a", X"03fe", X"051a", X"075c", X"0263", X"f8df", X"febf", X"0636", X"0dfd", X"013c", X"0330", X"03ac",
                                                        X"054a", X"fdbe", X"081c", X"fd66", X"0a78", X"fabf", X"06da", X"049e", X"0153", X"faad", X"003f", X"02cc", X"0924", X"fe0b",
                                                        X"ff4b", X"09d5", X"0438", X"f7fe", X"098c", X"0128", X"1280", X"ffae", X"01cf", X"00ed", X"05e6", X"f7dc", X"08cd", X"0233",
                                                        X"0796", X"0001", X"fa7d", X"02fe", X"077f", X"0185", X"0408", X"fc09", X"0c72", X"fb4e", X"050a", X"05b7", X"0155", X"fefc",
                                                        X"feae", X"02a5", X"0aa1", X"016c", X"fd41", X"ff76", X"01e6", X"fb40", X"06a7", X"ff76", X"0b37", X"fc47", X"0004", X"02e4",
                                                        X"01ea", X"fe80", X"fee4", X"ff80", X"099a", X"01a2", X"fdb6", X"017e", X"05b4", X"00cc", X"0547", X"fc54", X"0c15", X"fe2a",
                                                        X"0311", X"0731", X"0010", X"ff78", X"faf0", X"fc68", X"081e", X"ffc1", X"003d", X"07f9", X"0b7b", X"0036", X"00cf", X"fe6e",
                                                        X"0e56", X"01bc", X"01bb", X"02b8", X"f8c5", X"fc3a", X"fce8", X"01e2", X"07a7", X"0051", X"ffeb", X"05e7", X"02a5", X"fe26",
                                                        X"fde2", X"fe56", X"0860", X"fb97", X"000a", X"05df", X"f7d3", X"fafe", X"00f5", X"fa01", X"0ce9", X"fff4", X"fda2", X"0223",
                                                        X"0690", X"fa05", X"ff8b", X"fea5", X"073d", X"ff57", X"fe74", X"ff7e", X"f912", X"0150", X"fe51", X"009f", X"0c71", X"f9e5",
                                                        X"febb", X"fdb7", X"0873", X"f97e", X"ff00", X"fa99", X"1072", X"fb22", X"0339", X"00eb", X"f7f6", X"04f4", X"ffab", X"015f",
                                                        X"08a1", X"f8f4", X"fbdf", X"fd82", X"0d0b", X"f9c3", X"fd25", X"f922", X"1677", X"f554", X"0282", X"fc16", X"f5f7", X"0061",
                                                        X"06cc", X"0135", X"074b", X"f95f", X"fd98", X"fd26", X"01a1", X"0887", X"fae5", X"fa9b", X"05e8", X"f9a3", X"fad6", X"f983",
                                                        X"fba3", X"f590", X"fd60", X"fe2d", X"0144", X"faed", X"f4be", X"022c", X"ff8c", X"02e8", X"f77b", X"fa8e", X"0503", X"f9b2",
                                                        X"0332", X"fc66", X"fbe2", X"fa83", X"faca", X"fef2", X"0315", X"fa88", X"f323", X"ff6b", X"0014", X"fec4", X"fd65", X"f8cf",
                                                        X"ffe7", X"fc8d", X"fd08", X"fe29", X"0262", X"03d7", X"f79f", X"f457", X"0712", X"fb3e", X"f8e0", X"fc58", X"fcc0", X"01ea",
                                                        X"fd4e", X"f90c", X"03d6", X"0040", X"fc6d", X"01db", X"01c0", X"04a9", X"ff23", X"f977", X"05f2", X"f8e7", X"fcc5", X"fff6",
                                                        X"03e0", X"fb19", X"00a1", X"fc1a", X"facb", X"fcd5", X"0352", X"054a", X"04a3", X"ffc4", X"ff46", X"fa6b", X"0589", X"fdd2",
                                                        X"fc97", X"0490", X"ff42", X"f606", X"fdb7", X"f9ba", X"0b31", X"ffe6", X"027d", X"0971", X"043e", X"fd4e", X"0024", X"0659",
                                                        X"0760", X"fb7d", X"f697", X"06e6", X"01e5", X"003f", X"006a", X"fe69", X"0f24", X"0341", X"0662", X"050f", X"00cf", X"fde5",
                                                        X"fe7e", X"0924", X"0826", X"fa72", X"fea1", X"0190", X"05d1", X"f900", X"ffc2", X"fbd8", X"06cb", X"03b1", X"0685", X"0646",
                                                        X"ff2d", X"fe9b", X"fe31", X"062a", X"098a", X"f950", X"fb06", X"05e9", X"0167", X"ff6a", X"0001", X"fce5", X"068f", X"fdf1",
                                                        X"05b3", X"0643", X"00cc", X"f958", X"fd2b", X"05ac", X"0796", X"fc91", X"fe5f", X"05d1", X"fcfd", X"fbd9", X"ffc3", X"fe74",
                                                        X"07b3", X"fc40", X"00ef", X"070a", X"fec7", X"fa4e", X"01bf", X"0319", X"0532", X"fad8", X"fbfe", X"fedb", X"0619", X"f488",
                                                        X"0232", X"fe5d", X"100b", X"f987", X"084f", X"08e6", X"fa4e", X"00bc", X"0114", X"0048", X"00fa", X"f835", X"fe38", X"008b",
                                                        X"0bb8", X"f278", X"0255", X"0010", X"0eae", X"fdf3", X"035d", X"04ab", X"fa94", X"fcf8", X"ff90", X"fab3", X"0357", X"feb6",
                                                        X"ffcf", X"04e2", X"0619", X"f8af", X"02d7", X"fcbc", X"093a", X"fe93", X"ffcf", X"0475", X"0040", X"02a7", X"fcdd", X"fddb",
                                                        X"0413", X"fdc9", X"fb51", X"02f2", X"00f5", X"ff87", X"fdae", X"fd87", X"0d2a", X"fc07", X"04d1", X"03a7", X"023b", X"f5cc",
                                                        X"03d3", X"f572", X"070b", X"f76d", X"0003", X"037d", X"055e", X"fdd4", X"ffaa", X"fd60", X"1135", X"ff55", X"0063", X"02d5",
                                                        X"fe49", X"f320", X"fe80", X"fe63", X"041d", X"fcdf", X"fd6e", X"043b", X"0b14", X"f96d", X"0281", X"fb1f", X"0e1a", X"fcdd",
                                                        X"f907", X"001f", X"fdcb", X"ff13", X"00a6", X"fd9a", X"02d2", X"f88d", X"fb79", X"00e2", X"084c", X"0064", X"020b", X"f8e1",
                                                        X"0542", X"fe0c", X"fbd9", X"fcd0", X"f6de", X"f94a", X"fbd9", X"f69c", X"03ac", X"f802", X"f99c", X"fc94", X"0769", X"00bb",
                                                        X"faba", X"f9e7", X"0642", X"f936", X"f9ff", X"fed7", X"f98a", X"f6ec", X"fa41", X"f439", X"0278", X"f58e", X"f577", X"fc95",
                                                        X"0020", X"04dd", X"f746", X"f8ea", X"061e", X"fa99", X"f536", X"fa7c", X"fa51", X"f916", X"01e8", X"f60b", X"02a4", X"f5fb",
                                                        X"f7cf", X"feab", X"0660", X"03ff", X"fd81", X"fa0c", X"0677", X"fe24", X"f871", X"f89d", X"f8d3", X"f982", X"fc5b", X"f222",
                                                        X"01fa", X"f73b", X"f567", X"02b2", X"054d", X"ff67", X"fee0", X"fb00", X"020f", X"f598", X"f2d8", X"f8e7", X"ff2b", X"fa45",
                                                        X"fb80", X"f6ef", X"fb7e", X"f3d1", X"fca0", X"00d7", X"037d", X"fc43", X"f6d3", X"fc86", X"03b1", X"0061", X"f7cc", X"f779",
                                                        X"fb68", X"f8aa", X"f8a1", X"f45b", X"fdb3", X"f586", X"f668", X"f95e", X"0388", X"06a5", X"f875", X"f7d1", X"0080", X"fce0",
                                                        X"f744", X"f517", X"fbcf", X"fb58", X"fa7d", X"eb34", X"06e6", X"f937", X"f8d3", X"f8eb", X"0abc", X"01ac", X"f86b", X"fa4b",
                                                        X"0629", X"f7b2", X"f855", X"f66b", X"f37b", X"02aa", X"fe3f", X"ed99", X"0231", X"f6ed", X"f36d", X"f4e0", X"0017", X"ff32",
                                                        X"f44a", X"f67c", X"fd36", X"f6c9", X"fb14", X"f9d6", X"f9bd", X"0383", X"fed1", X"eb21", X"0117", X"f5a0", X"f4eb", X"f9bb",
                                                        X"030e", X"f87a", X"f896", X"f9af", X"ffea", X"fe40", X"0076", X"fa27", X"f894", X"02f2", X"03c0", X"ef39", X"02d1", X"f58d",
                                                        X"f8bc", X"fbdf", X"02b3", X"fe5c", X"f9a3", X"f8ca", X"fa80", X"fbe8", X"fc4f", X"0296", X"fedc", X"fdd0", X"018e", X"f2f2",
                                                        X"0735", X"fb62", X"fc2d", X"fd31", X"febc", X"fab3", X"ff88", X"fac6", X"fd61", X"fef4", X"f8cb", X"04c1", X"f968", X"0015",
                                                        X"04f6", X"00fd", X"0639", X"f704", X"fae0", X"fa98", X"0286", X"f588", X"fcd6", X"fb36", X"0240", X"fa50", X"0005", X"0002",
                                                        X"f93d", X"f711", X"0896", X"069b", X"039f", X"fa4f", X"faf9", X"fe1b", X"0b84", X"f480", X"fe29", X"fbaa", X"0508", X"fb33",
                                                        X"02c2", X"054e", X"fd68", X"fc34", X"009b", X"0434", X"0701", X"f8fd", X"0051", X"0125", X"04ed", X"fb23", X"0303", X"f998",
                                                        X"0a70", X"fd12", X"05a5", X"0352", X"fbcb", X"fd07", X"0023", X"0769", X"06a6", X"f954", X"ff59", X"0199", X"01e1", X"f2c0",
                                                        X"032e", X"fd89", X"07c0", X"0014", X"03b0", X"023d", X"fc3c", X"0039", X"fc79", X"04ef", X"05d1", X"fbf2", X"fb9c", X"02aa",
                                                        X"fc16", X"fb99", X"ffb7", X"fe3f", X"0285", X"fbe8", X"0544", X"0588", X"fa8e", X"003d", X"01c1", X"0a5f", X"0763", X"fbed",
                                                        X"ffb6", X"0504", X"031d", X"fb5b", X"01a6", X"fcf8", X"059d", X"fdb3", X"ff8a", X"01b5", X"ffc2", X"fbba", X"048a", X"0aca",
                                                        X"0837", X"feac", X"ff1a", X"0578", X"014e", X"f8f5", X"0367", X"00e8", X"0778", X"ffbd", X"002c", X"072c", X"00d1", X"002a",
                                                        X"0206", X"0551", X"0703", X"fd56", X"0103", X"00cf", X"0363", X"f491", X"025f", X"010c", X"0a7e", X"fdde", X"04b9", X"0c14",
                                                        X"0116", X"f58f", X"01aa", X"07e7", X"05cf", X"fd03", X"00f8", X"0450", X"06eb", X"fc53", X"02c1", X"00b3", X"116a", X"ff7a",
                                                        X"0469", X"0b33", X"fe28", X"fe99", X"002b", X"08c5", X"0981", X"ffdf", X"02dc", X"0210", X"04d1", X"f6b4", X"05de", X"fef7",
                                                        X"1038", X"fe6e", X"026e", X"0786", X"fed9", X"0115", X"0024", X"0163", X"05f6", X"fff3", X"fe81", X"06c8", X"0380", X"fc5a",
                                                        X"043f", X"fbdf", X"1075", X"0379", X"0460", X"0334", X"fe9c", X"ff18", X"01a2", X"0534", X"06ae", X"feed", X"f74c", X"019d",
                                                        X"02de", X"f8f0", X"06f4", X"fdcf", X"0cd2", X"fb3d", X"0330", X"0660", X"007e", X"f81c", X"0044", X"070a", X"04e6", X"ff1b",
                                                        X"f7cb", X"00cb", X"0524", X"f436", X"049a", X"f8d5", X"0686", X"fd55", X"0094", X"0489", X"feb4", X"fd6c", X"050a", X"0642",
                                                        X"088a", X"0072", X"fc68", X"0491", X"00b5", X"fb0b", X"08d1", X"fe59", X"0176", X"0072", X"ffc2", X"0459", X"0095", X"fac6",
                                                        X"036f", X"05ce", X"0387", X"fe88", X"fc74", X"056f", X"ffa5", X"fe4b", X"0b37", X"ff2c", X"0604", X"fcba", X"0443", X"075a",
                                                        X"02d9", X"f76e", X"03f1", X"0d8a", X"0934", X"0513", X"03f0", X"08fd", X"03e5", X"f6a1", X"096c", X"fec0", X"1395", X"021f",
                                                        X"024b", X"0a49", X"0038", X"f38f", X"fd1c", X"099c", X"0892", X"049e", X"00b8", X"0c79", X"0665", X"fb31", X"086d", X"fe14",
                                                        X"1846", X"00e1", X"0411", X"08a1", X"fe63", X"f9c6", X"0184", X"0ae8", X"05f2", X"0156", X"fc01", X"032b", X"0322", X"f17e",
                                                        X"08cd", X"fd97", X"0c92", X"02b8", X"05e5", X"0b9b", X"00ab", X"f98e", X"fe07", X"0666", X"0498", X"020d", X"fc55", X"04bf",
                                                        X"053c", X"fe38", X"0921", X"fd4b", X"0ec9", X"0063", X"fe9c", X"0624", X"fbfb", X"f662", X"fd94", X"06f2", X"0484", X"0360",
                                                        X"fa8e", X"07df", X"0a6b", X"0329", X"05e7", X"f876", X"0ff9", X"fb46", X"0309", X"0028", X"00ff", X"f566", X"00d6", X"055f",
                                                        X"04f7", X"fee1", X"fe79", X"018e", X"03ce", X"f86f", X"0495", X"fd8d", X"0442", X"008f", X"060a", X"0354", X"003b", X"f673",
                                                        X"05e9", X"0956", X"04f4", X"fbf3", X"fc74", X"0314", X"0241", X"0252", X"00aa", X"fdef", X"03f1", X"f718", X"0144", X"04ed",
                                                        X"0253", X"f8e4", X"0219", X"05d2", X"0c4b", X"fcb5", X"fd7c", X"01d2", X"0260", X"01a2", X"0112", X"fd42", X"0bb6", X"fd31",
                                                        X"0490", X"0702", X"0266", X"ef11", X"03a5", X"084c", X"0a09", X"ff44", X"fb72", X"05b7", X"0288", X"f8d5", X"0414", X"fb62",
                                                        X"04ed", X"fef0", X"044b", X"0727", X"018b", X"ff96", X"0311", X"0b5f", X"0c22", X"017a", X"fc2e", X"07b5", X"0a80", X"f5a9",
                                                        X"0c67", X"fccc", X"0969", X"010b", X"0471", X"0914", X"0003", X"fc91", X"0054", X"0df8", X"09a5", X"fee3", X"0096", X"ffe9",
                                                        X"fc79", X"fe58", X"06c6", X"fbdd", X"0b95", X"f9b9", X"0463", X"0ca8", X"010b", X"fc95", X"0423", X"0064", X"0ee5", X"ffc4",
                                                        X"00cc", X"02d2", X"014e", X"fa5d", X"05f1", X"fcf6", X"14c3", X"f9d7", X"0559", X"0824", X"fecc", X"f940", X"0085", X"0480",
                                                        X"099b", X"0597", X"ff52", X"ff10", X"038c", X"f943", X"0956", X"fd4d", X"1573", X"f8d3", X"06f9", X"0c9c", X"ffe1", X"f9b1",
                                                        X"04e8", X"fb74", X"0a5a", X"064c", X"fed7", X"ff84", X"05c3", X"feb2", X"0703", X"ff17", X"0dc2", X"fab8", X"0085", X"0873",
                                                        X"ff64", X"004c", X"03cd", X"04d9", X"0991", X"019f", X"fe72", X"04f6", X"062a", X"ef6e", X"0536", X"fbd1", X"02ec", X"f88c",
                                                        X"03fc", X"06f6", X"ff6b", X"f833", X"020e", X"fddc", X"0b83", X"0291", X"00fe", X"0463", X"03bc", X"fb34", X"0244", X"014f",
                                                        X"09f8", X"013d", X"0303", X"0a39", X"ff92", X"f9ef", X"0582", X"02ce", X"0a5e", X"fdc4", X"062e", X"0661", X"fe41", X"f6a8",
                                                        X"0235", X"ff42", X"03d6", X"02a4", X"0581", X"0723", X"fdec", X"f344", X"0001", X"0aaf", X"0a70", X"0188", X"fea2", X"01e9",
                                                        X"feb7", X"f800", X"0905", X"ffc8", X"061f", X"fc32", X"08b2", X"065f", X"fb8d", X"f352", X"fef0", X"07d6", X"0d0d", X"fe65",
                                                        X"00b6", X"08ee", X"0669", X"f910", X"09ac", X"ff70", X"07b4", X"fb2a", X"ffb4", X"0c6e", X"0136", X"fc75", X"00fa", X"022e",
                                                        X"0816", X"ff27", X"0409", X"096a", X"01f0", X"ef27", X"05ee", X"fc8d", X"1193", X"fcf7", X"0248", X"0dac", X"fbfc", X"f745",
                                                        X"0422", X"05ab", X"0b1f", X"fdf4");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fdf4";
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

