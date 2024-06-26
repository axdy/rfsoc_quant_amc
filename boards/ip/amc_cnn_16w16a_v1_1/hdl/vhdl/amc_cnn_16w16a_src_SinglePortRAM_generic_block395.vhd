-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block395.vhd
-- Created: 2023-08-04 11:27:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block395
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage43/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block395 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block395;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block395 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0392", X"fdc4", X"f7c6", X"f445", X"ec1b", X"f409",
                                                        X"29ed", X"1b8e", X"f71f", X"db5e", X"f166", X"0f69", X"0dd1", X"f5c3", X"f3f0", X"f039", X"09eb", X"fb71", X"0bbb", X"fd4e",
                                                        X"122c", X"fb91", X"faa9", X"edcd", X"fb60", X"0a70", X"fa91", X"034c", X"026e", X"0549", X"f559", X"f346", X"0a8e", X"f58e",
                                                        X"eb39", X"044e", X"f210", X"f221", X"1c0b", X"fda6", X"eff5", X"1593", X"1095", X"06d0", X"02d0", X"fdcf", X"facf", X"07fa",
                                                        X"fa40", X"f69c", X"e458", X"ffd5", X"fa36", X"f040", X"250d", X"f4a8", X"f70a", X"ee74", X"eeda", X"fef3", X"e668", X"0129",
                                                        X"dd7f", X"0386", X"0d66", X"e618", X"dfdd", X"136c", X"f18e", X"ef5c", X"19cf", X"f5f5", X"2113", X"12c5", X"096f", X"f2da",
                                                        X"06a7", X"0982", X"eb9b", X"0172", X"f75b", X"0c23", X"f750", X"f4db", X"f2ed", X"e941", X"00be", X"0bef", X"1af0", X"04c8",
                                                        X"000b", X"fb63", X"fc69", X"f9f1", X"ea5c", X"0fb5", X"01d7", X"e180", X"0ba5", X"0dd5", X"ff05", X"e639", X"ea4a", X"22c7",
                                                        X"f0f6", X"f36e", X"06c1", X"f880", X"f3a0", X"16fa", X"fcc3", X"0530", X"060d", X"fc15", X"f344", X"f7f4", X"043f", X"e19f",
                                                        X"08d9", X"0337", X"0c94", X"fb2a", X"ff22", X"224a", X"0720", X"0ef6", X"ff31", X"0571", X"1383", X"0430", X"e294", X"f556",
                                                        X"fc91", X"fafd", X"105a", X"11d1", X"dcbe", X"f5ca", X"f268", X"f2b6", X"1903", X"ffd6", X"f9f2", X"1226", X"09e6", X"0c74",
                                                        X"e054", X"f851", X"1ff4", X"f85e", X"0207", X"d822", X"0c89", X"f9f4", X"f7e8", X"0497", X"0eb2", X"0400", X"03ce", X"e82a",
                                                        X"0698", X"1023", X"e82a", X"faf5", X"0837", X"fcbf", X"0131", X"1343", X"ee57", X"f91d", X"e1e6", X"19af", X"fa18", X"fbbb",
                                                        X"0a0a", X"0f61", X"0826", X"eae5", X"d7e9", X"ed5c", X"0619", X"fff9", X"ffbd", X"00fc", X"267c", X"03b4", X"fc45", X"f828",
                                                        X"f96e", X"01af", X"02e7", X"fbdd", X"02a6", X"0f43", X"28a9", X"10e8", X"faff", X"f0cf", X"193b", X"f9f7", X"0109", X"0cb7",
                                                        X"fa0d", X"0663", X"fc40", X"10c9", X"ff3c", X"119c", X"101e", X"02e7", X"e723", X"0b9a", X"0cd6", X"05b9", X"f9d1", X"0450",
                                                        X"221e", X"1842", X"fbff", X"ffd9", X"018d", X"085b", X"0013", X"1538", X"0473", X"1206", X"077c", X"f85d", X"08a8", X"f216",
                                                        X"e523", X"128e", X"057c", X"e2c4", X"13fe", X"0abd", X"f848", X"f299", X"12d6", X"17b2", X"f48d", X"e8c3", X"1dd3", X"fa67",
                                                        X"02b0", X"eef9", X"e9a0", X"04a6", X"ee60", X"f29e", X"0788", X"01ce", X"f680", X"100d", X"f15b", X"f2da", X"1b55", X"12de",
                                                        X"0bdc", X"0b76", X"0778", X"ec80", X"da87", X"ec78", X"f474", X"1706", X"e3c2", X"01a8", X"02ec", X"0e4b", X"19c8", X"f831",
                                                        X"0150", X"fca7", X"0d4a", X"f266", X"0f0d", X"0567", X"e806", X"04a1", X"edee", X"ff09", X"e6f1", X"f3d0", X"f269", X"110c",
                                                        X"0791", X"fc7b", X"017f", X"0429", X"23d1", X"fdac", X"090f", X"f7bb", X"db5f", X"0fcc", X"f7d0", X"2a37", X"efb8", X"ed68",
                                                        X"eab3", X"079f", X"fdac", X"045a", X"0f74", X"0e5d", X"0973", X"0cb9", X"f9bd", X"f8cf", X"da3f", X"1180", X"f3af", X"f6e2",
                                                        X"2aa6", X"0349", X"fc15", X"0d15", X"0e06", X"f66a", X"fd8c", X"148c", X"2708", X"f774", X"eabe", X"f882", X"d4f1", X"1e2d",
                                                        X"f5ed", X"f1f8", X"1123", X"04eb", X"0be8", X"0fd8", X"fded", X"06b9", X"eaa1", X"119f", X"f5e1", X"f7be", X"f680", X"0e9e",
                                                        X"c3ce", X"168d", X"fe9c", X"0347", X"0ba4", X"f841", X"10b9", X"ec15", X"1024", X"fd2b", X"0367", X"e33d", X"eedb", X"fc92",
                                                        X"0329", X"0abe", X"cc41", X"09c3", X"e834", X"0b82", X"106b", X"eeb5", X"e5a7", X"f48e", X"fba9", X"24a9", X"eea6", X"00aa",
                                                        X"da90", X"fa30", X"f868", X"03ca", X"cbc1", X"f9fe", X"f6fd", X"eeb6", X"fb07", X"04e3", X"0dea", X"0449", X"e9fe", X"2154",
                                                        X"fe65", X"059c", X"0ea9", X"f50b", X"0f34", X"0e03", X"e169", X"1781", X"fcf4", X"17d4", X"e104", X"fc25", X"0621", X"fede",
                                                        X"edd0", X"f15d", X"0b10", X"06e5", X"ec75", X"ffe8", X"fe68", X"fdd3", X"f4d2", X"f85f", X"e613", X"2763", X"ec5b", X"f65e",
                                                        X"07c7", X"ef66", X"1633", X"0bc2", X"f127", X"0d6b", X"fd75", X"fc26", X"0c89", X"f39c", X"f4a9", X"134c", X"e3a5", X"ef25",
                                                        X"eb1a", X"f801", X"ff97", X"01ea", X"fbfc", X"f084", X"fc1a", X"fc28", X"df40", X"ef25", X"0c73", X"f3f1", X"0a12", X"f580",
                                                        X"f73a", X"0791", X"f87f", X"fce1", X"ea23", X"096d", X"faa4", X"fce3", X"f75e", X"e5f9", X"ed3e", X"f14b", X"0d8b", X"f8bb",
                                                        X"0afd", X"f5f9", X"febe", X"022c", X"eecc", X"02a2", X"f29e", X"03b9", X"f944", X"0c6c", X"fe02", X"1eab", X"dc78", X"f76e",
                                                        X"fcec", X"02fa", X"f280", X"2551", X"f901", X"eb22", X"34ac", X"fa2f", X"1b18", X"0193", X"f88e", X"051e", X"02d0", X"dd4e",
                                                        X"140b", X"04d4", X"00bb", X"f8ef", X"227f", X"27f6", X"d736", X"0008", X"fdbe", X"f4a7", X"f5bd", X"ef08", X"f1cb", X"2145",
                                                        X"fb00", X"d04a", X"1581", X"07b4", X"01f4", X"f981", X"16e0", X"f262", X"0d39", X"e4ed", X"0e07", X"014d", X"f7f9", X"ffc5",
                                                        X"04f4", X"0462", X"fdd7", X"12a5", X"0cdc", X"12a5", X"ea69", X"0e36", X"0cff", X"ea76", X"e11e", X"02b0", X"f9e1", X"eac5",
                                                        X"e3f7", X"1a6e", X"055e", X"0a06", X"0d49", X"f464", X"e922", X"f6be", X"07c9", X"08ee", X"13ae", X"0d4c", X"1eca", X"e939",
                                                        X"06a8", X"0107", X"f959", X"071e", X"1426", X"eb62", X"f4dc", X"0d51", X"fb3b", X"005e", X"0f8f", X"eb47", X"2cca", X"2ea1",
                                                        X"e24d", X"fae0", X"2161", X"f9d0", X"1aff", X"17f8", X"0d01", X"ea60", X"f55e", X"006c", X"eff3", X"f5a5", X"09a0", X"0704",
                                                        X"0e8b", X"f95a", X"0875", X"1803", X"14a8", X"2303", X"fcf9", X"f4c8", X"1163", X"038f", X"158b", X"e28c", X"08f3", X"f3ef",
                                                        X"fdde", X"08ff", X"0268", X"0456", X"1efd", X"ed13", X"1c4c", X"fe73", X"fd2f", X"0598", X"1c80", X"0296", X"fdb8", X"1cc3",
                                                        X"e203", X"08f9", X"e0b0", X"f191", X"f437", X"11a1", X"1a2b", X"14d0", X"2870", X"0959", X"040f", X"05dd", X"1732", X"0f21",
                                                        X"0fff", X"1987", X"e50c", X"0037", X"0a75", X"fdcb", X"032c", X"fd63", X"1cba", X"1ac5", X"2745", X"0c9f", X"13ae", X"f8fb",
                                                        X"0961", X"e40d", X"02cc", X"e3a1", X"f064", X"073f", X"e777", X"f5e2", X"f6df", X"04df", X"1716", X"ea3e", X"0dc7", X"0d5a",
                                                        X"f181", X"faa3", X"fd1e", X"f907", X"fd14", X"e6a1", X"1bfb", X"faaf", X"0abc", X"0cde", X"06a7", X"195f", X"0d88", X"181f",
                                                        X"129b", X"efa4", X"174f", X"f168", X"019f", X"1c21", X"f5d4", X"f561", X"fd8b", X"f231", X"f1cc", X"07fc", X"f513", X"fe21",
                                                        X"fbfd", X"fe06", X"2703", X"f744", X"08f8", X"1500", X"1241", X"fa56", X"143f", X"e864", X"ee4e", X"10f8", X"fbb7", X"163e",
                                                        X"e380", X"06ab", X"15a3", X"01e1", X"23e0", X"12b2", X"08ac", X"ee5a", X"1572", X"ec06", X"f416", X"fead", X"0d8a", X"0280",
                                                        X"f931", X"e93e", X"0762", X"07a0", X"e466", X"200b", X"f66f", X"f749", X"ea36", X"109c", X"f856", X"f30a", X"0855", X"e01a",
                                                        X"e34d", X"f546", X"f11f", X"0138", X"0e2f", X"fe45", X"13d1", X"15e0", X"1aca", X"07e9", X"f30f", X"ff57", X"20b3", X"eacd",
                                                        X"1990", X"e997", X"1bb0", X"edb6", X"f4f2", X"f7ee", X"1473", X"fc1a", X"0557", X"1bbf", X"f316", X"eede", X"f54e", X"0611",
                                                        X"08b5", X"063a", X"0163", X"da85", X"ef66", X"fb85", X"02da", X"f2ea", X"0bca", X"fd43", X"01ab", X"29b5", X"1e72", X"f8a1",
                                                        X"0484", X"13b8", X"1985", X"ec72", X"07a8", X"0c08", X"02d7", X"fce9", X"079e", X"e07e", X"fa69", X"0a62", X"e761", X"24f8",
                                                        X"2bbc", X"f95d", X"0b04", X"097e", X"11dd", X"0f67", X"f94e", X"eb11", X"dd2a", X"fa46", X"f8f0", X"fece", X"08cc", X"1abb",
                                                        X"f2e2", X"137e", X"d899", X"10c8", X"001a", X"0ec6", X"08eb", X"f3eb", X"ff6c", X"f61e", X"0bc9", X"e80e", X"f60b", X"f354",
                                                        X"f754", X"06a1", X"1588", X"ea38", X"fab5", X"fe40", X"026a", X"06ee", X"16e8", X"11bc", X"f35c", X"fd3e", X"f524", X"0756",
                                                        X"008b", X"0cbc", X"ee25", X"0c5d", X"0467", X"15cd", X"fb1e", X"fe2a", X"fc63", X"e68a", X"02c0", X"edb7", X"ffa4", X"0289",
                                                        X"eb92", X"fc7f", X"fc06", X"f8ea", X"e926", X"161a", X"f9a3", X"f92b", X"02e3", X"02ab", X"0eb2", X"037b", X"fd73", X"f7b4",
                                                        X"fc74", X"e5b7", X"d328", X"05ab", X"fead", X"08b6", X"f32d", X"f1b9", X"0e63", X"09f1", X"e7d0", X"0c17", X"1c4e", X"0914",
                                                        X"09d4", X"f3e9", X"f759", X"0e46", X"fbd8", X"fcf5", X"0b0d", X"f5a6", X"e2c6", X"fb0a", X"0775", X"f0b0", X"0ab6", X"ebbe",
                                                        X"11a0", X"0d00", X"fb14", X"037f", X"f970", X"0675", X"1990", X"0313", X"047a", X"ece6", X"fb59", X"2429", X"05b2", X"05ac",
                                                        X"e692", X"f0b6", X"03ca", X"0dce", X"f63e", X"fe69", X"0483", X"1cca", X"ec9c", X"fb62", X"1384", X"0b55", X"ec67", X"0908",
                                                        X"e4f2", X"143e", X"098e", X"01a6", X"0395", X"f2d5", X"f0d1", X"0391", X"fbb8", X"085d", X"13b9", X"03f9", X"fad7", X"f3bc",
                                                        X"c9d5", X"14eb", X"ff3e", X"0bb1", X"e040", X"0345", X"f6c2", X"f08c", X"ed0f", X"1301", X"f964", X"02fa", X"da05", X"fc5f",
                                                        X"f2ee", X"0834", X"d242", X"0f17", X"1185", X"08b5", X"0e8b", X"0423", X"f0b4", X"0b56", X"ef46", X"1a19", X"09d9", X"ea30",
                                                        X"f8a5", X"01f5", X"17c6", X"f9e4", X"df05", X"144b", X"f523", X"ec68", X"ee13", X"f134", X"eb95", X"0703", X"ea9c", X"0613",
                                                        X"087d", X"0577", X"e3d4", X"dd39", X"f057", X"fd20", X"e852", X"f70d", X"0308", X"19f4", X"ed73", X"f6cb", X"10b3", X"fa87",
                                                        X"e2ea", X"ef34", X"12bc", X"0869", X"dec5", X"f1be", X"006b", X"f2d4", X"e3c5", X"0982", X"db7e", X"0f9b", X"fbf9", X"02f8",
                                                        X"0633", X"09ab", X"f3a6", X"fad5", X"eecf", X"12b2", X"12b7", X"ebbf", X"0d29", X"f228", X"df8e", X"04b2", X"0c98", X"02af",
                                                        X"00c1", X"0272", X"0a78", X"065e", X"f41d", X"18a5", X"02db", X"ef43", X"ebe3", X"f251", X"08d7", X"0a69", X"0bc3", X"04bf",
                                                        X"1abc", X"12b6", X"1078", X"ec1e", X"0f12", X"1052", X"f8fa", X"15e1", X"fbc6", X"e9e3", X"de4d", X"f6da", X"fb2c", X"f957",
                                                        X"e612", X"f27f", X"15ee", X"0c14", X"d859", X"f438", X"f89d", X"183c", X"f812", X"13d5", X"fb02", X"fc74", X"f500", X"ec23",
                                                        X"f54e", X"0c03", X"deca", X"ef47", X"1015", X"ee01", X"ffb4", X"ffab", X"008a", X"1423", X"fa4e", X"1891", X"03b8", X"dbc0",
                                                        X"fb47", X"063b", X"19e6", X"f39b", X"e94c", X"0862", X"da86", X"e8d7", X"f73e", X"04bf", X"0235", X"0b84", X"ff16", X"1846",
                                                        X"08a2", X"1662", X"d5ef", X"09a9", X"118c", X"0970", X"1cb4", X"1c61", X"e00a", X"ea2a", X"f06b", X"0a1a", X"05eb", X"e941",
                                                        X"09ec", X"05e4", X"fa53", X"fbf1", X"05ab", X"048a", X"fe67", X"fa82", X"0eee", X"27d6", X"1289", X"f5e3", X"f96e", X"07dd",
                                                        X"0e9c", X"1ea6", X"fd1c", X"0037", X"f8c1", X"1b97", X"f11b", X"f42f", X"0f30", X"0849", X"2341", X"0367", X"1e6b", X"0fad",
                                                        X"08bb", X"0a38", X"1006", X"1462", X"fea2", X"0750", X"116e", X"14d9", X"e9f0", X"05e5", X"0025", X"051d", X"29bb", X"0380",
                                                        X"0e1b", X"ed8b", X"0abd", X"fd0b", X"0cd7", X"0222", X"f588", X"efab", X"17a6", X"fa0e", X"17c5", X"0499", X"046d", X"115c",
                                                        X"0749", X"04d1", X"e887", X"ef08", X"0d16", X"0063", X"f0e0", X"0540", X"fd3f", X"0320", X"1441", X"df4a", X"da55", X"f753",
                                                        X"0222", X"ed84", X"1599", X"1dda", X"e02c", X"fe97", X"febe", X"fcd6", X"fd94", X"ef7b", X"ffa9", X"0918", X"0cd3", X"1e55",
                                                        X"0e78", X"ed67", X"f7a3", X"0c3d", X"1724", X"1f86", X"f8ba", X"f1bc", X"0d7e", X"0a31", X"0881", X"0b83", X"eef3", X"f029",
                                                        X"0396", X"2601", X"d8a0", X"f3d7", X"f7d6", X"fce8", X"efeb", X"0979", X"1582", X"110c", X"fed8", X"02d8", X"f6b5", X"0f1b",
                                                        X"f95a", X"0777", X"0cad", X"e8fa", X"0970", X"fa6f", X"02e1", X"02f4", X"064b", X"e98e", X"1976", X"0667", X"dec9", X"02f3",
                                                        X"169b", X"fa69", X"0e55", X"fe4a", X"03fd", X"f74b", X"e1d6", X"e786", X"0cb7", X"0902", X"0cd3", X"28a4", X"0127", X"ebb6",
                                                        X"0642", X"1810", X"fd51", X"fc35", X"fb02", X"f9c5", X"144e", X"1666", X"e932", X"fbf8", X"0926", X"0141", X"fb67", X"0412",
                                                        X"fb95", X"05fc", X"0162", X"096d", X"f64d", X"000d", X"f995", X"ff9c", X"03cc", X"16a7", X"ecd5", X"f420", X"fe6b", X"0816",
                                                        X"fee1", X"0792", X"e317", X"0afa", X"f141", X"0761", X"f46d", X"f840", X"f734", X"f4f3", X"0cdb", X"1400", X"d355", X"06b2",
                                                        X"03e4", X"f107", X"ea42", X"0997", X"113d", X"ee02", X"0622", X"065e", X"028e", X"f5e1", X"fc18", X"0d7e", X"fc01", X"08e5",
                                                        X"14b6", X"f6eb", X"f3cb", X"ec6a", X"ef3e", X"1db9", X"0e3d", X"10e4", X"1563", X"06bb", X"ff85", X"f75b", X"f001", X"fdff",
                                                        X"049f", X"ecfd", X"0074", X"f77c", X"fc5e", X"fb39", X"086e", X"18f1", X"194b", X"f839", X"fe0a", X"fc82", X"f043", X"ff34",
                                                        X"f22f", X"f656", X"0355", X"158e", X"f6b3", X"efb0", X"fad0", X"0892", X"fdce", X"faea", X"fbf2", X"1816", X"fe7c", X"00f0",
                                                        X"11e0", X"f209", X"f019", X"0807", X"00bd", X"1c86", X"124e", X"0b9f", X"0756", X"fadd", X"e8d3", X"f5d5", X"ea48", X"13d0",
                                                        X"f36a", X"2902", X"04e9", X"0786", X"0dbd", X"fd26", X"f6ee", X"e33a", X"ce6f", X"0027", X"0c76", X"f553", X"127d", X"051d",
                                                        X"f6db", X"faef", X"0aaf", X"ff29", X"fc89", X"f608", X"ed2d", X"ee02", X"01f3", X"fe93", X"e309", X"04a6", X"1543", X"fc0a",
                                                        X"0967", X"f781", X"f4c4", X"11bb", X"e37f", X"fa53", X"0697", X"f8f1", X"03c7", X"fbee", X"0074", X"e5f7", X"df66", X"0fd7",
                                                        X"ebec", X"1523", X"05fd", X"140b", X"0945", X"1def", X"f920", X"0869", X"1275", X"0814", X"fe58", X"f493", X"fbd5", X"f483",
                                                        X"061e", X"f110", X"0ece", X"f6a4", X"114b", X"2256", X"e93e", X"09db", X"f0f0", X"11d0", X"09e5", X"0616", X"f523", X"f467",
                                                        X"fb8f", X"edcc", X"e7ad", X"f324", X"f5e1", X"0e98", X"f2e3", X"15a8", X"143a", X"05ff", X"1001", X"0208", X"0a75", X"09cc",
                                                        X"fd86", X"f508", X"084d", X"0660", X"164f", X"0f2c", X"04de", X"18d2", X"093a", X"f223", X"0977", X"0028", X"0eae", X"0101",
                                                        X"1360", X"f732", X"f8c8", X"0ea3", X"09d2", X"dd5c", X"f45f", X"0a6c", X"053d", X"e91a", X"0691", X"f992", X"fde1", X"f856",
                                                        X"18bd", X"f53b", X"01bf", X"ffe2", X"16f0", X"ee21", X"0186", X"eabb", X"e363", X"0aa3", X"f695", X"f42c", X"ff89", X"237c",
                                                        X"081f", X"19dc", X"0c12", X"fd65", X"0f96", X"fd20", X"0364", X"f68c", X"03f1", X"0f68", X"0e6e", X"f512", X"1235", X"f375",
                                                        X"185e", X"fb96", X"083a", X"e9dd", X"efcc", X"0c64", X"1361", X"0ac3", X"0253", X"f570", X"fb1a", X"ee9a", X"da7f", X"019a",
                                                        X"0283", X"0b95", X"fe22", X"1573", X"eed0", X"0634", X"02ce", X"fa20", X"1881", X"f49b", X"0d9a", X"1a7b", X"1e03", X"fff8",
                                                        X"083b", X"ed48", X"05cc", X"f063", X"055b", X"fb67", X"ed9d", X"0218", X"0ff2", X"f8f6", X"0038", X"f0f0", X"0a85", X"0072",
                                                        X"054e", X"eeda", X"ea2e", X"08f4", X"efeb", X"ffbb", X"fc39", X"fb53", X"0325", X"1b06", X"ef8d", X"ecf1", X"f991", X"fc60",
                                                        X"ff3d", X"05f0", X"0460", X"e770", X"1b5d", X"1755", X"0370", X"1638", X"de24", X"0c63", X"1287", X"0721", X"12b0", X"0249",
                                                        X"fcf3", X"f8e8", X"fc4a", X"077f", X"0221", X"145b", X"d9f3", X"fd9f", X"f866", X"084a", X"ebca", X"1bae", X"e892", X"2795",
                                                        X"071e", X"f0fb", X"11ee", X"f0e7", X"0379", X"f192", X"0d74", X"0cd1", X"fe31", X"efdc", X"05ff", X"f04b", X"d5bc", X"149c",
                                                        X"fb43", X"ed85", X"03dd", X"1f5f", X"0739", X"ff8c", X"02ba", X"2044", X"e89f", X"e342", X"17d7", X"f6c6", X"074d", X"0a9d",
                                                        X"bf49", X"ecdf", X"090a", X"fc45", X"1ff0", X"ed9d", X"f887", X"f6ef", X"facc", X"16e2", X"01a2", X"1058", X"dc0d", X"f177",
                                                        X"02af", X"0cb9", X"e2af", X"1e07", X"1218", X"115c", X"18ae", X"f5f6", X"17e6", X"0c78", X"1b8e", X"f49e", X"0771", X"f902",
                                                        X"0287", X"fab7", X"008d", X"f65d", X"08c9", X"f5f5", X"0fd7", X"1a05", X"1f61", X"fd9a", X"0477", X"de87", X"0b39", X"e7c0",
                                                        X"f7b6", X"0caf", X"0841", X"ed8d", X"14c2", X"02f0", X"eef3", X"1557", X"f254", X"0add", X"00af", X"ee8b", X"069c", X"f8ed",
                                                        X"122c", X"11c3", X"1505", X"e166", X"e160", X"e7cc", X"ef64", X"ec62", X"0b27", X"20d2", X"f678", X"190b", X"296c", X"02da",
                                                        X"06db", X"fb18", X"1412", X"f231", X"0242", X"1524", X"1fab", X"0028", X"f3ca", X"f316", X"ff8a", X"fac4", X"eebc", X"f43a",
                                                        X"06e0", X"fd31", X"f106", X"070e", X"0c18", X"f490", X"f7be", X"f1e6", X"fc49", X"f09f", X"119d", X"0c37", X"0802", X"fc77",
                                                        X"e450", X"2da3", X"043c", X"e7da", X"f0ad", X"0089", X"0637", X"f8f6", X"f45e", X"dd28", X"0d29", X"0276", X"f8aa", X"063d",
                                                        X"e689", X"0d9a", X"0174", X"24c1", X"1cc7", X"ee9f", X"1a1f", X"fc0e", X"fcf9", X"1f32", X"066d", X"f676", X"e434", X"ed5e",
                                                        X"fab2", X"f499", X"0207", X"0dc6", X"ddc9", X"f2e9", X"eaa2", X"fc62", X"fc0c", X"0f37", X"fa52", X"10f4", X"023b", X"e276",
                                                        X"0b02", X"fef4", X"f296", X"f649", X"ea1a", X"1c00", X"e5c4", X"0b5e", X"0066", X"fded", X"026b", X"1331", X"0c1c", X"f57b",
                                                        X"fd05", X"0e40", X"e01e", X"098c", X"f59f", X"06ad", X"1a65", X"e3e0", X"f00c", X"ed96", X"14f2", X"0c93", X"0c10", X"fe52",
                                                        X"0373", X"132e", X"020b", X"0d10", X"0869", X"01a7", X"1ab4", X"fa43", X"2730", X"ec57", X"036c", X"fb60", X"1fab", X"1379",
                                                        X"142a", X"0859", X"08aa", X"0a05", X"fdf3", X"df2c", X"fd82", X"0c81", X"07ce", X"eb88", X"f175", X"0c82", X"1455", X"fb25",
                                                        X"08d2", X"f917", X"ffc8", X"19d6", X"ffcd", X"f7f6", X"ee7b", X"1873", X"e3d9", X"eae7", X"f2f4", X"0028", X"f5dc", X"2885",
                                                        X"fc3b", X"03e9", X"f707", X"100a", X"2c6d", X"0e68", X"fdaa", X"09d5", X"11d5", X"00ce", X"e383", X"05a4", X"ed65", X"f652",
                                                        X"012b", X"2c69", X"fd3c", X"f285", X"e832", X"f4fd", X"0d28", X"0ec7", X"1288", X"0245", X"0bb0", X"ed55", X"0b03", X"0200",
                                                        X"eed6", X"de1d", X"f665", X"277b", X"fe56", X"13c6", X"f63b", X"fc07", X"1640", X"ff2c", X"08f9", X"0512", X"02e8", X"0dac",
                                                        X"f4c0", X"0c5e", X"04ed", X"fcc0", X"00f3", X"f042", X"febd", X"1b8e", X"fbf0", X"fee9", X"026f", X"e930", X"fcf1", X"e28e",
                                                        X"f5ba", X"ef7a", X"e53d", X"0309", X"096a", X"05f5", X"eca1", X"0b7f", X"24f8", X"efe5", X"0c78", X"04bc", X"0756", X"01f1",
                                                        X"01c9", X"fa65", X"03e5", X"e424", X"0f5e", X"fd8a", X"e4f5", X"1203", X"ffcc", X"1888", X"172e", X"0568", X"eea9", X"0348",
                                                        X"0639", X"091b", X"f426", X"083d", X"0423", X"fe1c", X"dc40", X"f36f", X"f0af", X"ffcf", X"df98", X"06fe", X"f152", X"e2c8",
                                                        X"0cf2", X"0871", X"11f0", X"095b", X"e87b", X"0cd6", X"113b", X"db93", X"04f4", X"0607", X"025f", X"0339", X"12b4", X"e9ba",
                                                        X"ef69", X"e642", X"008e", X"efdb", X"ffb3", X"fb46", X"fb55", X"f4ac", X"f0c5", X"0b52", X"e195", X"0cbb", X"fff3", X"fe9c",
                                                        X"e20d", X"181f", X"1002", X"0f89", X"06b7", X"073d", X"04c7", X"05ce", X"ffa3", X"fbe4", X"fecb", X"fbdc", X"2490", X"179e",
                                                        X"0c60", X"f3a6", X"0e9b", X"18f6", X"fc44", X"fa5f", X"fc24", X"0215", X"0d51", X"f4b6", X"fa6f", X"fa24", X"ef2b", X"ee43",
                                                        X"fe36", X"0f9a", X"0837", X"0d3b", X"2079", X"f8e2", X"00a3", X"20c2", X"f742", X"04ac", X"0010", X"0a72", X"fd0b", X"ebf9",
                                                        X"f247", X"e669", X"0941", X"f838", X"ef9a", X"0f74", X"1a36", X"e5b9", X"fae0", X"ff76", X"0350", X"043a", X"1752", X"0515",
                                                        X"fb2d", X"ffe3", X"f9de", X"1141", X"e804", X"faeb", X"03a0", X"fc11", X"ff1c", X"0eb9", X"04af", X"2df0", X"0b65", X"dc7a",
                                                        X"fa2a", X"11b0", X"06cd", X"1674");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"1674";
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

