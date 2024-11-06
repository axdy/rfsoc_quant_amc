-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block424.vhd
-- Created: 2024-11-04 16:44:19
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block424
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage7/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block424 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block424;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block424 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0491", X"f8f1", X"008b", X"fd63", X"fdc2", X"012d",
                                                        X"076d", X"fb0c", X"faea", X"02bb", X"f619", X"10b7", X"ebdc", X"f396", X"04b4", X"091b", X"0519", X"02c2", X"fe44", X"0773",
                                                        X"fe77", X"0144", X"f264", X"085c", X"035f", X"0340", X"edd7", X"0a77", X"f57f", X"eafd", X"0181", X"00c4", X"010b", X"06c1",
                                                        X"fba3", X"04f3", X"fb4b", X"073a", X"ef04", X"0b64", X"f7f5", X"fbd9", X"eed9", X"fced", X"fdad", X"f829", X"fa4d", X"f961",
                                                        X"feaa", X"06be", X"00f9", X"0088", X"fcbb", X"0598", X"0470", X"038d", X"f0c0", X"001b", X"ebd4", X"0009", X"08d9", X"fb74",
                                                        X"ffbc", X"fa90", X"ffb5", X"0311", X"fb52", X"0452", X"fcb8", X"065b", X"006d", X"0168", X"0326", X"fe85", X"f448", X"fa0d",
                                                        X"071d", X"eb8d", X"f9b1", X"f46e", X"05b8", X"f9ad", X"fe08", X"04da", X"0015", X"02d4", X"039e", X"00af", X"fcbd", X"fc6a",
                                                        X"fdd6", X"fbe0", X"03b7", X"fccd", X"f6b9", X"01be", X"051e", X"fe42", X"faa0", X"072c", X"03f6", X"0583", X"fbc6", X"f79e",
                                                        X"0669", X"fc4f", X"04c5", X"fce7", X"010a", X"108a", X"fef9", X"0449", X"066c", X"fd8f", X"ff9b", X"07ab", X"fd0e", X"0242",
                                                        X"fec3", X"f683", X"0571", X"f95a", X"00e3", X"f261", X"0090", X"0e84", X"05f7", X"075a", X"021c", X"f2a6", X"041b", X"024f",
                                                        X"0362", X"fbfe", X"097d", X"f2cc", X"036d", X"fad7", X"09d3", X"fa32", X"0496", X"130f", X"0897", X"0555", X"0708", X"f3e5",
                                                        X"fde4", X"ff96", X"04da", X"fa09", X"0243", X"ed93", X"0a4b", X"fbd1", X"04b1", X"f983", X"f78a", X"0257", X"02ca", X"07a0",
                                                        X"0146", X"eeec", X"f972", X"035f", X"02d2", X"fb3d", X"04c5", X"f150", X"f6d5", X"04fd", X"0826", X"ffe9", X"fcc5", X"0c67",
                                                        X"02e7", X"0805", X"f98a", X"e314", X"0046", X"fcf2", X"011e", X"face", X"1054", X"f5e6", X"023d", X"039c", X"02ee", X"fe35",
                                                        X"f958", X"054d", X"01a1", X"05f7", X"01f6", X"f1ee", X"fd58", X"003e", X"07aa", X"f995", X"05cc", X"f5a2", X"0218", X"04ed",
                                                        X"00fd", X"0821", X"003b", X"04bb", X"0508", X"0809", X"0342", X"fe05", X"0127", X"fe38", X"0a74", X"fccc", X"0b93", X"fd4d",
                                                        X"fb51", X"fe82", X"06c6", X"0409", X"fe8b", X"fc84", X"feb6", X"0496", X"0545", X"0364", X"0379", X"fa7f", X"02b8", X"029c",
                                                        X"0931", X"0604", X"07b2", X"0356", X"f613", X"0561", X"f330", X"fd6f", X"00e9", X"06c2", X"ffff", X"00a1", X"fc21", X"0256",
                                                        X"0518", X"fe80", X"01e1", X"fe7a", X"ffe6", X"fd8c", X"f52b", X"fd94", X"fa9a", X"f975", X"fcb8", X"0236", X"025b", X"00e2",
                                                        X"ffd7", X"08c2", X"00f2", X"0074", X"faea", X"fe61", X"0251", X"00e0", X"f197", X"ff47", X"fc89", X"f441", X"0170", X"fd14",
                                                        X"0579", X"f96c", X"f8ea", X"fec8", X"fac7", X"0171", X"0685", X"ffa9", X"f42e", X"044d", X"dc5b", X"027b", X"0302", X"fa20",
                                                        X"f747", X"fa4e", X"ff38", X"fe52", X"fd81", X"f994", X"fa09", X"0391", X"0050", X"04ba", X"ff7f", X"fb97", X"d8d5", X"fe79",
                                                        X"f6b9", X"fbbf", X"f642", X"f437", X"028a", X"fa6e", X"fd9d", X"faae", X"fc4c", X"00d2", X"0705", X"0116", X"0922", X"f926",
                                                        X"ea66", X"fef0", X"fee2", X"f46f", X"fc44", X"f92d", X"0234", X"0260", X"002b", X"0081", X"0306", X"05b8", X"fa3f", X"06d5",
                                                        X"fffe", X"00eb", X"f634", X"fbd7", X"0737", X"e78e", X"ffa4", X"ff6f", X"ff1f", X"fea4", X"f330", X"0127", X"fbfa", X"0437",
                                                        X"f4c2", X"011c", X"00c7", X"ff84", X"fc12", X"f611", X"04ba", X"05ee", X"0522", X"0163", X"0805", X"fcb8", X"046a", X"048a",
                                                        X"011f", X"0095", X"020c", X"fde5", X"f6e3", X"fe2d", X"00ee", X"fd0c", X"0051", X"0ba8", X"0201", X"01e3", X"023d", X"fefa",
                                                        X"07c1", X"0b51", X"07a9", X"0165", X"077b", X"f82f", X"f6ed", X"fc12", X"ff18", X"007b", X"0536", X"0579", X"fd9f", X"0848",
                                                        X"00fd", X"faf1", X"034c", X"0a08", X"0665", X"fd70", X"f866", X"eec2", X"00b5", X"fbc6", X"039e", X"0003", X"05e5", X"0fe9",
                                                        X"0393", X"063d", X"0555", X"ef8a", X"00a2", X"03f2", X"0028", X"fd5a", X"fbd7", X"f091", X"09e1", X"f992", X"05ee", X"f4a9",
                                                        X"faef", X"06ac", X"0035", X"0840", X"f783", X"f764", X"0445", X"06de", X"005c", X"f878", X"0de2", X"ef1a", X"056d", X"fe28",
                                                        X"066c", X"fd3a", X"fe60", X"0ee4", X"044c", X"05f9", X"fcaf", X"f9ea", X"ff3b", X"fb48", X"024c", X"fac4", X"f4f0", X"f288",
                                                        X"ff4d", X"f823", X"01b4", X"0ab9", X"f8da", X"0717", X"fdac", X"035f", X"fd20", X"ede1", X"0164", X"f778", X"093c", X"fbc4",
                                                        X"02db", X"f477", X"05c3", X"fef6", X"0493", X"032d", X"fb02", X"f3e4", X"005e", X"0122", X"005b", X"f66e", X"024d", X"002e",
                                                        X"06f4", X"ff36", X"fd98", X"f84b", X"fa51", X"069f", X"0111", X"05e9", X"f5ef", X"fd7b", X"ff26", X"0298", X"0366", X"f8d1",
                                                        X"fbcb", X"ff91", X"fe72", X"00ec", X"ffce", X"fd59", X"07e4", X"04ba", X"0445", X"ffdb", X"fa71", X"0fac", X"04e7", X"04b9",
                                                        X"fe98", X"01c0", X"0825", X"080a", X"06a6", X"fee3", X"ffc3", X"0553", X"0214", X"03b4", X"fea6", X"0108", X"0244", X"0296",
                                                        X"ffec", X"0620", X"ffe2", X"08bf", X"fb19", X"fc77", X"fd2e", X"0515", X"01d5", X"0596", X"047c", X"01ad", X"eb75", X"0573",
                                                        X"f1b5", X"ea62", X"fbf1", X"fe82", X"06ff", X"0789", X"024d", X"07a2", X"022b", X"02a6", X"0213", X"fd99", X"0166", X"fcd6",
                                                        X"eebd", X"008f", X"fbe4", X"f2af", X"f70d", X"0057", X"051f", X"fd9c", X"00eb", X"06da", X"f912", X"06d1", X"f7c7", X"05d1",
                                                        X"fc5f", X"02a0", X"eb25", X"fe11", X"fc73", X"fc88", X"0045", X"fc0e", X"0862", X"02d0", X"fa75", X"0511", X"fc3d", X"01bb",
                                                        X"0086", X"0883", X"fe92", X"fcc0", X"f413", X"ff12", X"038e", X"031a", X"ffb7", X"f515", X"025e", X"0599", X"0528", X"ff45",
                                                        X"0992", X"0602", X"fe2b", X"06b8", X"0240", X"f434", X"f2d8", X"f866", X"04b8", X"f3da", X"fa5f", X"fafc", X"fc38", X"01d9",
                                                        X"fcb7", X"028c", X"06b8", X"fe6a", X"f5b6", X"043f", X"fa35", X"f402", X"fba7", X"0681", X"012e", X"001f", X"f556", X"03e4",
                                                        X"028d", X"015e", X"0251", X"01c4", X"fa1a", X"03ce", X"09d4", X"00bf", X"0233", X"f99f", X"fca4", X"f90a", X"fc61", X"009f",
                                                        X"0052", X"0469", X"0176", X"f38c", X"0131", X"1067", X"f832", X"02c5", X"050f", X"01b2", X"fcf8", X"f830", X"fe5e", X"fb3d",
                                                        X"00d2", X"0d1c", X"009d", X"09ca", X"025c", X"ec00", X"054d", X"060b", X"fa48", X"03c6", X"fd5c", X"f9a2", X"0285", X"fa11",
                                                        X"00a6", X"ff4e", X"01ea", X"015b", X"077d", X"02ce", X"f7b7", X"f0f0", X"06e9", X"03d5", X"fe0b", X"fb58", X"f929", X"f606",
                                                        X"fec3", X"f68d", X"0651", X"fcb5", X"0054", X"018c", X"00b9", X"07ab", X"fb8b", X"f515", X"0185", X"0216", X"fcd9", X"facc",
                                                        X"0d53", X"ee85", X"fdc4", X"fb2e", X"05a8", X"0478", X"0280", X"0626", X"01a8", X"0008", X"fcd5", X"f28b", X"f874", X"0431",
                                                        X"f908", X"f6a1", X"04ea", X"fa85", X"08dc", X"006f", X"086b", X"0516", X"fbc8", X"e938", X"0a8b", X"03f4", X"fe51", X"ee8a",
                                                        X"f21f", X"fff3", X"ffa8", X"fac1", X"fc3c", X"f488", X"0194", X"0476", X"0b9b", X"0349", X"058e", X"f883", X"0677", X"02ce",
                                                        X"01ec", X"f998", X"fee7", X"0a01", X"0229", X"00bf", X"0264", X"f8b2", X"fe71", X"0762", X"0045", X"029c", X"ee72", X"ff2a",
                                                        X"046b", X"0296", X"038d", X"fd4f", X"005a", X"043b", X"0326", X"fd75", X"1142", X"f539", X"fa7d", X"04aa", X"fdf4", X"0365",
                                                        X"f7b8", X"fcc6", X"021a", X"0527", X"04ca", X"03e2", X"03e5", X"0349", X"fed9", X"feae", X"000a", X"fb64", X"fc12", X"043d",
                                                        X"fe53", X"0491", X"f860", X"f928", X"062c", X"0234", X"0466", X"09fb", X"fc4a", X"ffbd", X"0318", X"0234", X"f49a", X"0078",
                                                        X"0057", X"fc7d", X"fa17", X"09b3", X"0126", X"0a25", X"047e", X"feed", X"0619", X"08c6", X"0347", X"fc3a", X"0035", X"067b",
                                                        X"0401", X"03a1", X"09dd", X"00c1", X"ee42", X"028f", X"fee6", X"0bea", X"f42f", X"fc72", X"01f8", X"fe98", X"0108", X"0364",
                                                        X"0050", X"00b6", X"04ca", X"0230", X"fe7b", X"002b", X"f36e", X"03bf", X"0056", X"fef5", X"ff15", X"fc61", X"fef8", X"0099",
                                                        X"ffdd", X"fecd", X"fc0c", X"0465", X"fc26", X"088f", X"f639", X"ffaa", X"f0a3", X"0b70", X"0b00", X"ec7c", X"f784", X"f80b",
                                                        X"0327", X"03d7", X"fb19", X"fed3", X"ff98", X"0421", X"08f0", X"087d", X"0509", X"fc27", X"f614", X"f2c7", X"093b", X"ebea",
                                                        X"fab9", X"fc5e", X"fe57", X"066b", X"00d6", X"fb00", X"000b", X"03d3", X"eec1", X"0743", X"ff67", X"f28a", X"f884", X"ef55",
                                                        X"ffd1", X"ef31", X"f809", X"ff11", X"0334", X"001d", X"fef5", X"0372", X"fe2a", X"ffef", X"0cc5", X"fec8", X"f936", X"fe97",
                                                        X"018a", X"f4f6", X"fe7b", X"ffc4", X"fb17", X"00ff", X"069e", X"01b2", X"f852", X"0b7c", X"ff8c", X"ffda", X"0406", X"01b3",
                                                        X"fcdd", X"f9ba", X"fffe", X"f419", X"0708", X"fdb3", X"fc26", X"0331", X"073f", X"fe5e", X"01d6", X"06bd", X"0529", X"fd0a",
                                                        X"0d7d", X"f8ea", X"03b0", X"f755", X"04a3", X"f859", X"fc49", X"fdb5", X"05a7", X"0183", X"02d0", X"f25f", X"fddb", X"071d",
                                                        X"fadf", X"fe1c", X"09b9", X"ee67", X"001d", X"fa77", X"066a", X"f956", X"03f2", X"f8d6", X"ffb1", X"0565", X"fa41", X"f095",
                                                        X"02a5", X"fb20", X"fe0e", X"fba0", X"01e8", X"e79d", X"fd57", X"f50d", X"0584", X"fe1f", X"03d6", X"ec73", X"ff85", X"03d8",
                                                        X"0431", X"e81b", X"ff84", X"0442", X"03fa", X"fb4c", X"f6d8", X"e6e4", X"0342", X"036b", X"08bf", X"0064", X"fab1", X"f8ae",
                                                        X"0146", X"0165", X"fefa", X"f47a", X"fc2b", X"0205", X"fbeb", X"faab", X"0323", X"f54a", X"0649", X"03cf", X"069f", X"0809",
                                                        X"ff1e", X"e9d9", X"08ca", X"ff7a", X"002c", X"fec7", X"fdfe", X"f88f", X"fe59", X"fcdf", X"f429", X"fa00", X"fea9", X"0908",
                                                        X"0878", X"048e", X"fb03", X"0225", X"0bf0", X"0919", X"0052", X"fe86", X"fbbc", X"f9f4", X"02af", X"01c7", X"ff11", X"fb17",
                                                        X"019d", X"0576", X"fe92", X"ffa8", X"f07a", X"ee07", X"03a4", X"04ef", X"001f", X"fac3", X"f991", X"02c8", X"0141", X"0031",
                                                        X"1477", X"0125", X"0a34", X"0902", X"fb1c", X"03d2", X"fe7b", X"f61d", X"fe44", X"041f", X"011d", X"fe7c", X"fd57", X"fbe0",
                                                        X"0203", X"03a5", X"02af", X"07b4", X"fd35", X"044e", X"f407", X"0249", X"03ba", X"f4ea", X"0476", X"051c", X"fe33", X"fd48",
                                                        X"fa18", X"015b", X"fda4", X"00d5", X"f983", X"fed4", X"0b15", X"007c", X"f144", X"00c0", X"fe9f", X"eee3", X"f937", X"fd9c",
                                                        X"02ea", X"09a8", X"005e", X"0a4f", X"fca4", X"02ec", X"051c", X"0483", X"063b", X"fc08", X"ea4f", X"0159", X"fdc7", X"031a",
                                                        X"fb33", X"fb40", X"004c", X"ff7c", X"fa4c", X"0436", X"f9cf", X"fe50", X"ff58", X"069f", X"012b", X"f8bb", X"ee69", X"fa87",
                                                        X"fdb0", X"f704", X"f95c", X"f913", X"0266", X"00e1", X"f479", X"02a0", X"00a2", X"fd48", X"06a1", X"0370", X"fd46", X"f92d",
                                                        X"f3ee", X"f7e7", X"fe88", X"0509", X"fcd0", X"f531", X"01e5", X"040a", X"fa94", X"025b", X"004c", X"0075", X"02c7", X"0719",
                                                        X"0603", X"fae3", X"f7f9", X"fbf9", X"fbe9", X"0313", X"017d", X"fa21", X"005a", X"fa4a", X"fcb5", X"05ea", X"ff74", X"ff7c",
                                                        X"003c", X"fab6", X"f9bd", X"f71c", X"0308", X"fa74", X"013f", X"05e9", X"fb73", X"fd8f", X"ffed", X"f63a", X"fbc4", X"05c3",
                                                        X"043e", X"fc1b", X"09eb", X"f41f", X"ff46", X"f573", X"0157", X"f45c", X"0801", X"0b75", X"f677", X"04b7", X"fdf4", X"fd9a",
                                                        X"fda4", X"fda3", X"fff4", X"fda3", X"f2f6", X"fb07", X"049a", X"fc95", X"00c4", X"fcb8", X"ffa2", X"febb", X"ff4a", X"015c",
                                                        X"f9e1", X"f233", X"0629", X"06c2", X"0347", X"ff34", X"07c0", X"f2ae", X"ffb4", X"fc3a", X"0766", X"00e7", X"fc79", X"0b19",
                                                        X"002e", X"082e", X"f784", X"f2ef", X"048f", X"ff4f", X"faa8", X"fbd6", X"0268", X"f1eb", X"0a88", X"fdf0", X"027b", X"0743",
                                                        X"fdd2", X"0803", X"0394", X"00bc", X"017a", X"fb1d", X"00e9", X"f709", X"ffd2", X"fb43", X"082d", X"f5ac", X"febb", X"02d5",
                                                        X"056e", X"07ae", X"021e", X"04fa", X"fc36", X"00b7", X"004c", X"f228", X"ff81", X"00af", X"00e8", X"fd05", X"fa66", X"f87b",
                                                        X"fd37", X"ffef", X"0323", X"fd19", X"f757", X"0144", X"02fa", X"01c8", X"018d", X"f0bc", X"f555", X"00bf", X"fb2c", X"fccb",
                                                        X"f1a7", X"f7dd", X"0165", X"027f", X"04b1", X"05af", X"fa94", X"01bf", X"fee3", X"00b3", X"0286", X"0449", X"fdde", X"0341",
                                                        X"037f", X"0167", X"ff79", X"03d2", X"0091", X"fc52", X"fa74", X"ffd6", X"0657", X"02e4", X"ff60", X"ff3d", X"f93e", X"f717",
                                                        X"ff8f", X"fc56", X"0351", X"00e1", X"f19d", X"01a6", X"09c0", X"0312", X"fad0", X"0789", X"0026", X"fece", X"0498", X"fc8b",
                                                        X"02a1", X"ff34", X"feb8", X"f5e5", X"0503", X"ff36", X"f669", X"044a", X"0044", X"0768", X"f945", X"06e9", X"fca2", X"0075",
                                                        X"fa7a", X"01b6", X"05c9", X"fe97", X"01b1", X"001c", X"01fa", X"0268", X"0167", X"0048", X"048c", X"09a0", X"f383", X"0297",
                                                        X"0260", X"f2f3", X"0a12", X"01c8", X"ffb6", X"fcc0", X"02db", X"0c5e", X"ff83", X"0022", X"0d49", X"059e", X"f9f2", X"03f9",
                                                        X"eba1", X"029e", X"01b6", X"ff33", X"f8b6", X"fe7b", X"028e", X"07f1", X"fdea", X"f816", X"047c", X"fc44", X"0498", X"091b",
                                                        X"0106", X"f8d3", X"ed8b", X"fc6c", X"f86c", X"090e", X"fbca", X"fcd2", X"fb4f", X"0102", X"f9aa", X"03c8", X"0119", X"fddf",
                                                        X"0030", X"0303", X"0200", X"f1b5", X"ed18", X"0189", X"01f0", X"0327", X"fc52", X"fbf5", X"0154", X"0314", X"fb3e", X"0728",
                                                        X"f8a9", X"0099", X"fb15", X"fd4f", X"f457", X"f824", X"f7c5", X"fa54", X"03fd", X"ee27", X"f75f", X"fb2e", X"03bc", X"07fd",
                                                        X"fa72", X"0563", X"f9f2", X"0505", X"0087", X"ff3e", X"012d", X"f8fb", X"0145", X"f869", X"03fe", X"01f6", X"fb44", X"01b4",
                                                        X"fc34", X"00cd", X"01e5", X"0498", X"0201", X"0002", X"078e", X"0002", X"fc71", X"f94b", X"01cb", X"f921", X"0076", X"f50c",
                                                        X"fd78", X"05e4", X"ffef", X"f5ee", X"0208", X"05a8", X"0018", X"01d8", X"fbe8", X"f8b5", X"0675", X"fb60", X"0a92", X"f9fa",
                                                        X"fd0a", X"05bf", X"0372", X"067d", X"04aa", X"f642", X"070c", X"040e", X"00c1", X"01ce", X"107d", X"f803", X"0cb3", X"fad5",
                                                        X"0637", X"077f", X"0801", X"fa79", X"05dc", X"fc8c", X"0779", X"f21f", X"07cb", X"ffe2", X"0164", X"fc98", X"0391", X"f397",
                                                        X"00d0", X"f78e", X"063f", X"fc29", X"01c7", X"f3c8", X"ffe6", X"01e8", X"023e", X"f895", X"0239", X"05d2", X"0289", X"fcb0",
                                                        X"03ed", X"e9b8", X"fb3a", X"f7f6", X"02d4", X"0267", X"046d", X"10d1", X"0268", X"012c", X"fd73", X"f220", X"02b6", X"fb91",
                                                        X"0266", X"f8c6", X"005c", X"f0fa", X"fdd9", X"fb8c", X"02d3", X"04c6", X"fa26", X"fa8d", X"fd8c", X"03f3", X"fbe6", X"ff0a",
                                                        X"fa85", X"fbd4", X"03d1", X"000d", X"f800", X"f90a", X"059a", X"086f", X"031b", X"0452", X"f857", X"fa37", X"012e", X"0469",
                                                        X"0002", X"fd63", X"0425", X"024f", X"fc2a", X"fcf7", X"06a9", X"fabd", X"026a", X"08cd", X"fd24", X"04b1", X"f23f", X"0037",
                                                        X"012b", X"060c", X"0167", X"02ed", X"fb86", X"022b", X"fd07", X"039c", X"0854", X"f7e9", X"ffb4", X"00b1", X"03e6", X"04b5",
                                                        X"fee8", X"0689", X"ffbb", X"03cc", X"07fd", X"04c9", X"f993", X"f30c", X"fbb2", X"0257", X"0ef1", X"04ab", X"03a2", X"0184",
                                                        X"f8dd", X"06f8", X"f3ed", X"0696", X"00c7", X"ffe2", X"012d", X"f889", X"02db", X"0155", X"0115", X"02a5", X"f8c5", X"fe7d",
                                                        X"027c", X"f9a7", X"f32b", X"ff49", X"f66c", X"f7a3", X"fb29", X"fe27", X"020b", X"ff0c", X"fd42", X"f8c7", X"ff81", X"0080",
                                                        X"053d", X"fe68", X"0061", X"fef7", X"f45b", X"0229", X"fdac", X"f8af", X"ff92", X"ff51", X"ffa3", X"fe66", X"001e", X"0400",
                                                        X"fc35", X"ff8c", X"fa6e", X"0157", X"0356", X"f7a3", X"f3aa", X"00f7", X"0402", X"011d", X"f685", X"00a5", X"031a", X"faef",
                                                        X"fda5", X"026c", X"ffd9", X"0328", X"f445", X"0411", X"04a0", X"f0da", X"f29f", X"ed46", X"fa5f", X"0727", X"fcbb", X"fd71",
                                                        X"076f", X"f6d3", X"fb5a", X"0c05", X"fd68", X"03eb", X"fe34", X"01ec", X"fc9d", X"fd48", X"f304", X"fe49", X"ffe0", X"f6a3",
                                                        X"fca5", X"fd6b", X"066e", X"ffd4", X"03da", X"049b", X"fd48", X"025f", X"01fe", X"f867", X"0000", X"f7ad", X"faec", X"ffb0",
                                                        X"f945", X"0360", X"fe35", X"ff26", X"0779", X"03d0", X"03d7", X"0148", X"070d", X"00a7", X"06c5", X"ff00", X"f3ab", X"f575",
                                                        X"feab", X"fed4", X"02f7", X"fef8", X"fc51", X"0478", X"091a", X"f76f", X"fd61", X"fe4d", X"0024", X"0544", X"03c5", X"fd23",
                                                        X"fb97", X"fa73", X"ffca", X"03a0", X"0956", X"00d5", X"fc28", X"02c2", X"0722", X"fe56", X"f77a", X"0ad8", X"03b6", X"074f",
                                                        X"fae1", X"0350", X"07be", X"0738", X"fd56", X"fb07", X"02b2", X"0d60", X"03ca", X"026b", X"043a", X"f55b", X"00e2", X"0545",
                                                        X"061d", X"fe16", X"0368", X"fc08", X"fba5", X"05cc", X"051a", X"ff6f", X"0159", X"016c", X"05f1", X"055a", X"ff56", X"f043",
                                                        X"0932", X"feaa", X"035b", X"038a", X"09a2", X"0206", X"0c3e", X"0017", X"ffc5", X"00b1", X"0a95", X"fd4c", X"0649", X"05f4",
                                                        X"0014", X"f3d9", X"0118", X"fdb0", X"fe1a", X"fecd", X"f73a", X"f830", X"ff39", X"fa28", X"04c3", X"043a", X"fde3", X"fc28",
                                                        X"fed3", X"0707", X"005e", X"fc2e", X"06ea", X"fdda", X"fed3", X"fb1d", X"085b", X"fc78", X"fb9c", X"fa58", X"078f", X"04a7",
                                                        X"f7b4", X"ef69", X"fe49", X"091f", X"028f", X"f93c", X"ffb1", X"fdef", X"fd42", X"fccb", X"fa97", X"fee5", X"049d", X"04f5",
                                                        X"0314", X"0079", X"f26e", X"0561", X"ffff", X"0775", X"000e", X"fef2", X"020c", X"013c", X"f922", X"fff5", X"f83b", X"0581",
                                                        X"0241", X"081b", X"02ad", X"058a", X"f48e", X"0156", X"0173", X"fd1a", X"0050", X"038b", X"f86c", X"fd3d", X"00ac", X"02e4",
                                                        X"047b", X"04d2", X"f733", X"0746", X"f8d1", X"088a", X"fb63", X"f3f1", X"00a9", X"fbef", X"ff70", X"fbe3", X"f640", X"f38b",
                                                        X"00be", X"0411", X"facf", X"0734", X"fc63", X"f978", X"f031", X"07f4", X"fa91", X"fe27", X"f4ce", X"f963", X"0590", X"fa75",
                                                        X"0355", X"fb05", X"fff5", X"0478", X"fcdb", X"0093", X"f54e", X"f7c3", X"e7ac", X"03c7", X"ffb4", X"fe88", X"fae0", X"fc38",
                                                        X"00b0", X"ff2c", X"fe14", X"05e0", X"feb6", X"0606", X"fc22", X"0345", X"fb02", X"fb9f", X"f82c", X"fe2b", X"0975", X"ee1b",
                                                        X"f538", X"046b", X"0386", X"044d", X"02de", X"03c5", X"fc4e", X"03af", X"fce5", X"0661", X"0750", X"fff4", X"f67f", X"f669",
                                                        X"05b3", X"fb11", X"fc6f", X"01ba", X"0365", X"0636", X"ffa8", X"061a", X"fe17", X"033c", X"f5a0", X"048a", X"01c7", X"00ba",
                                                        X"fa43", X"fa40", X"fe4f", X"ea70", X"0043", X"ffd4", X"fdfe", X"068d", X"023c", X"0934", X"fffb", X"0501", X"f768", X"fcd6",
                                                        X"fa17", X"f850", X"03af", X"fdb4", X"00ac", X"fc34", X"0091", X"fc55", X"05ce", X"0178", X"fe32", X"02f1", X"026a", X"0182",
                                                        X"fa31", X"03ae", X"0452", X"f4ff", X"034a", X"0167", X"005c", X"f595", X"fd43", X"fd1c", X"0603", X"f4c6", X"037b", X"0087",
                                                        X"0021", X"fd44", X"01b5", X"fd7a", X"007a", X"ff04", X"00ac", X"f8d9", X"060a", X"fc2a", X"00d5", X"04ab", X"02fb", X"eed6",
                                                        X"ff31", X"0386", X"01b9", X"fd80", X"077c", X"eb02", X"0191", X"f923", X"0332", X"fd68", X"0755", X"fd60", X"0680", X"076f",
                                                        X"fa2b", X"e8f7", X"0491", X"05dd", X"f7e5", X"f99b", X"05da", X"e06f", X"021d", X"f3c2", X"06d3", X"006a", X"0cdf", X"eca4",
                                                        X"0b94", X"02a2", X"f809", X"ea6e", X"0150", X"0573", X"f5a4", X"f8a9", X"0e1f", X"e3ba", X"fdae", X"00ef", X"0fd9", X"099e",
                                                        X"07c8", X"f6ef", X"fe57", X"0673");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0673";
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

