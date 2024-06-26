-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block360.vhd
-- Created: 2023-08-04 11:27:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block360
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage126/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block360 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block360;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block360 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"2608", X"db5a", X"dec6", X"01b5", X"d5c6", X"ef5a",
                                                        X"fce7", X"18a7", X"e80e", X"f0b2", X"13ee", X"e573", X"e551", X"e1a8", X"f09f", X"ca0b", X"0ad5", X"0460", X"0148", X"f831",
                                                        X"10fd", X"2644", X"2655", X"073f", X"1792", X"2484", X"1710", X"f772", X"d6b1", X"ef18", X"07ac", X"1371", X"1142", X"3e31",
                                                        X"4643", X"140d", X"1b26", X"ee61", X"e653", X"2fe0", X"09af", X"1221", X"2297", X"0e01", X"dde5", X"e790", X"0be3", X"11d3",
                                                        X"0416", X"238c", X"f3d0", X"f0df", X"181c", X"05f1", X"18d1", X"22e4", X"1cc9", X"2b44", X"0c9d", X"f3f1", X"ddf4", X"f689",
                                                        X"161f", X"161f", X"d831", X"e772", X"d3c5", X"dddb", X"0490", X"f15b", X"0d1c", X"01a4", X"d43e", X"fd2c", X"e9a7", X"042e",
                                                        X"01fd", X"fc4a", X"f9c9", X"009c", X"e60e", X"f950", X"bf20", X"e154", X"f73a", X"f657", X"f056", X"f10d", X"c3f0", X"febc",
                                                        X"fe55", X"0bbb", X"0e2b", X"1086", X"efa1", X"efdf", X"005d", X"da0b", X"f0d7", X"ec91", X"ef42", X"f2c4", X"e7ed", X"0c96",
                                                        X"0603", X"0148", X"da5b", X"f2b4", X"f669", X"0528", X"fcf8", X"dc7d", X"1d4e", X"06a2", X"fa3a", X"fadf", X"e230", X"128a",
                                                        X"07be", X"f766", X"c199", X"df5a", X"07a4", X"f9d7", X"16ca", X"ff88", X"ea96", X"feb5", X"1494", X"f7fe", X"1bfa", X"e80b",
                                                        X"f123", X"1861", X"fa82", X"29cb", X"07df", X"04a3", X"167d", X"e7c4", X"e5cc", X"1341", X"0203", X"dc03", X"2287", X"290a",
                                                        X"125d", X"0c2f", X"fc76", X"f23f", X"1212", X"09ec", X"ef0b", X"10e8", X"d0df", X"f4f9", X"d54d", X"f530", X"0b3e", X"0535",
                                                        X"1e0b", X"352b", X"09c3", X"e456", X"08f8", X"0dd4", X"096d", X"06c1", X"f119", X"3722", X"1e51", X"0aa6", X"e2fd", X"f7e4",
                                                        X"2339", X"e03e", X"0191", X"fe53", X"fd5d", X"e198", X"2b5d", X"0b53", X"0fbd", X"1911", X"2049", X"1729", X"1c42", X"0b59",
                                                        X"e566", X"0bf1", X"01ca", X"df84", X"d639", X"127a", X"1d10", X"1b3e", X"1b19", X"00f2", X"05d4", X"ef83", X"f566", X"0880",
                                                        X"fe3c", X"12c0", X"0f44", X"fb7e", X"e474", X"0fc3", X"e35e", X"d268", X"cba4", X"e1f7", X"fbcf", X"0a0f", X"f763", X"dbe4",
                                                        X"cb05", X"ec9f", X"0262", X"f71e", X"11a4", X"01b1", X"ef5d", X"e1e8", X"f781", X"e324", X"f361", X"0d93", X"fe5f", X"eba9",
                                                        X"f013", X"0348", X"cc60", X"feb1", X"e4d1", X"0815", X"0cbd", X"31f5", X"f908", X"edf1", X"fb1a", X"0bea", X"c3b9", X"ec16",
                                                        X"e324", X"04f4", X"0c6d", X"0697", X"cbae", X"e073", X"ef36", X"0912", X"f879", X"0280", X"fce8", X"ed8c", X"09bf", X"ebbc",
                                                        X"da7f", X"0fa4", X"f932", X"118c", X"0cb5", X"fcf8", X"0395", X"0b05", X"1313", X"ec37", X"f87e", X"10f4", X"0cf2", X"e285",
                                                        X"25de", X"3b0a", X"2cd3", X"1462", X"16be", X"fa4a", X"f5b3", X"440c", X"ed82", X"226a", X"f8d8", X"f08f", X"db73", X"ffd7",
                                                        X"143a", X"d569", X"199c", X"3d24", X"3ae6", X"f6af", X"2176", X"f95d", X"0c45", X"1c17", X"1a51", X"ec5c", X"0daf", X"ee65",
                                                        X"dc62", X"de0a", X"f9e8", X"0546", X"041b", X"fe07", X"fc0c", X"f6f2", X"1737", X"0ded", X"05d2", X"2234", X"e1c3", X"3e64",
                                                        X"110f", X"fab9", X"f0f1", X"f70b", X"03f7", X"0906", X"dbc8", X"f018", X"006c", X"0f2f", X"0bfd", X"02eb", X"eaf2", X"ef6f",
                                                        X"05bf", X"e86b", X"f795", X"0c69", X"fbe3", X"f7c8", X"0db6", X"0cbc", X"e6a6", X"0d9d", X"cec1", X"fe41", X"fc7a", X"f77a",
                                                        X"dd12", X"0551", X"ed32", X"08d5", X"0709", X"faa8", X"26e1", X"0741", X"ff6b", X"e51f", X"f5fb", X"f6e2", X"d665", X"f3ed",
                                                        X"022e", X"0f71", X"051f", X"f651", X"f63d", X"ecc8", X"05a8", X"f01b", X"0035", X"0db5", X"eafa", X"e355", X"f6ba", X"ff7e",
                                                        X"0788", X"fa96", X"f84c", X"fd35", X"dd70", X"e784", X"ea8a", X"eb35", X"027b", X"f92d", X"06b1", X"0302", X"e2a1", X"dae3",
                                                        X"0af5", X"0d18", X"25d6", X"00af", X"dfd3", X"02eb", X"22c1", X"eaf9", X"d468", X"083e", X"ec85", X"fd05", X"f503", X"ea70",
                                                        X"fa27", X"f44d", X"21b4", X"3902", X"ed10", X"ff12", X"fe2a", X"211e", X"1698", X"fe68", X"0ade", X"f4a2", X"28c0", X"f050",
                                                        X"de26", X"098f", X"115d", X"f6d8", X"236a", X"4138", X"eff4", X"e7c9", X"1b8d", X"05ca", X"0248", X"35d7", X"1be4", X"fd94",
                                                        X"f9a1", X"12a2", X"e90a", X"eab8", X"1cd0", X"023f", X"f3da", X"2138", X"3990", X"fb03", X"10d7", X"f8f8", X"0926", X"090f",
                                                        X"12c3", X"385a", X"15a2", X"efd0", X"ffca", X"00f6", X"185b", X"1361", X"f4e2", X"233a", X"27fb", X"108e", X"000c", X"0bd1",
                                                        X"0b1c", X"fc8a", X"d51e", X"ef83", X"1a21", X"0e74", X"01b7", X"eae4", X"12b3", X"e96b", X"ea4b", X"e676", X"edeb", X"0aa8",
                                                        X"059b", X"dc2e", X"ce42", X"0db4", X"15a9", X"e855", X"e362", X"1a60", X"f504", X"09c6", X"f54b", X"fcec", X"df03", X"edd6",
                                                        X"eb15", X"ff76", X"fec8", X"dbaf", X"ecd8", X"f778", X"d5cd", X"dab1", X"e6e9", X"f068", X"160d", X"fdf8", X"f7dd", X"004b",
                                                        X"0292", X"f075", X"d365", X"09ea", X"e93e", X"fa20", X"fa0e", X"efe4", X"c400", X"e229", X"fa04", X"00c8", X"113f", X"15d8",
                                                        X"f1ff", X"fcd3", X"1723", X"057f", X"eea3", X"fc68", X"ed8e", X"f730", X"0f5a", X"eee5", X"fae3", X"e2d8", X"e5a1", X"e79a",
                                                        X"04fc", X"ead1", X"eb65", X"e99c", X"0061", X"2932", X"4884", X"0922", X"d5ff", X"2724", X"09fb", X"2c77", X"f9f6", X"f93b",
                                                        X"1dea", X"f8c9", X"ed8d", X"e295", X"1079", X"f1af", X"0fe9", X"08d4", X"126a", X"0834", X"0290", X"178a", X"f8bc", X"2eca",
                                                        X"1077", X"03db", X"0e67", X"0536", X"016c", X"eb32", X"ffd1", X"12f1", X"1d5e", X"274f", X"24cd", X"f11b", X"2041", X"f165",
                                                        X"2e9f", X"f8ec", X"119f", X"1779", X"1c3c", X"ff56", X"e1d8", X"edf1", X"1aac", X"0763", X"f8b7", X"25ad", X"01e2", X"f277",
                                                        X"1c74", X"11db", X"e9cd", X"fcb2", X"279f", X"219d", X"dcf5", X"e222", X"faea", X"0e43", X"0da6", X"f20f", X"df4f", X"fab6",
                                                        X"c722", X"fc18", X"0415", X"edd5", X"e0c1", X"0860", X"1375", X"f344", X"1646", X"0f7d", X"fba9", X"fd9b", X"0281", X"e9a9",
                                                        X"f722", X"e8df", X"cfc5", X"f4c4", X"f5d2", X"e1fd", X"0143", X"fcd8", X"d3ed", X"fe57", X"f5e2", X"fc1a", X"fd50", X"0729",
                                                        X"f233", X"0123", X"f39a", X"f369", X"cb2f", X"d678", X"eb23", X"e4a0", X"f1bc", X"ceaf", X"e157", X"f368", X"f5bc", X"0086",
                                                        X"fe60", X"0483", X"d1f8", X"02fa", X"fb29", X"e9bf", X"18d9", X"1275", X"ea91", X"1b61", X"eca3", X"f989", X"ea47", X"d397",
                                                        X"f8b4", X"e8cf", X"0c83", X"f89d", X"e715", X"e043", X"1438", X"e836", X"eefe", X"0005", X"0ddd", X"175b", X"0a9a", X"3340",
                                                        X"f515", X"0467", X"1f1d", X"119c", X"ee8f", X"02e9", X"1612", X"f3d9", X"0d76", X"457e", X"18a8", X"026e", X"006a", X"097c",
                                                        X"1d9a", X"03c2", X"e266", X"197d", X"03a6", X"063f", X"e0ea", X"e452", X"110d", X"efdd", X"2ab2", X"5178", X"2eb0", X"f95f",
                                                        X"06b5", X"11fd", X"fa04", X"2a55", X"14ab", X"300d", X"f921", X"f673", X"0ade", X"e997", X"19be", X"f572", X"e772", X"fcaa",
                                                        X"f184", X"fa9f", X"2066", X"1e1c", X"2e99", X"1234", X"1952", X"0b53", X"28f3", X"12ae", X"0fb2", X"f2e7", X"05aa", X"efa7",
                                                        X"e973", X"f4ef", X"ff1d", X"0284", X"1a9f", X"05b3", X"ef36", X"df8a", X"0de2", X"fa76", X"e63e", X"f8d4", X"0d9c", X"018f",
                                                        X"ffd7", X"facb", X"dd12", X"c4c8", X"0c2b", X"db8b", X"e29c", X"f507", X"e911", X"0bd2", X"c250", X"e3c9", X"f2d7", X"06c3",
                                                        X"e3ec", X"f8be", X"de1a", X"f398", X"0dac", X"ed0f", X"f7e4", X"ec15", X"ed55", X"d31a", X"06c5", X"d148", X"fb86", X"fecb",
                                                        X"df63", X"0ceb", X"0b33", X"059e", X"0573", X"15de", X"f6cc", X"db1c", X"f1ef", X"035f", X"ed06", X"14a9", X"f597", X"e55e",
                                                        X"e5a6", X"16ca", X"d55d", X"04fa", X"021f", X"16a2", X"fc4e", X"f8f1", X"155e", X"f467", X"fce9", X"03e4", X"e56c", X"1658",
                                                        X"ea27", X"2699", X"e10d", X"f45d", X"0dc1", X"f287", X"f58f", X"024f", X"00de", X"eaf9", X"1050", X"2a2c", X"0dde", X"063e",
                                                        X"0058", X"16ea", X"26b5", X"15bd", X"3562", X"298b", X"13d2", X"face", X"0539", X"f816", X"119e", X"e37b", X"1ed7", X"1b59",
                                                        X"0ae5", X"29b9", X"1cce", X"f104", X"0540", X"0188", X"06f5", X"4216", X"f0e7", X"0da7", X"f522", X"f242", X"f2d9", X"1b1a",
                                                        X"0a78", X"12f2", X"eccb", X"f277", X"1a5e", X"107e", X"20dd", X"0865", X"3af4", X"031a", X"2ce3", X"133b", X"02a5", X"0acb",
                                                        X"0991", X"13e5", X"f32f", X"f9d4", X"fb65", X"0610", X"0e36", X"dcda", X"f15a", X"2e2c", X"d885", X"1562", X"f9f2", X"0795",
                                                        X"0f99", X"fa40", X"f9c8", X"202e", X"e880", X"ea73", X"f940", X"f609", X"0631", X"ffa5", X"fb77", X"e151", X"e76b", X"efe9",
                                                        X"fa16", X"eff0", X"1957", X"fa95", X"0ba9", X"f26d", X"fac1", X"fb98", X"0dc0", X"f273", X"ffe5", X"d0a7", X"17fe", X"e731",
                                                        X"d0d1", X"e652", X"ef56", X"f8c1", X"fbb6", X"f98b", X"f54d", X"e269", X"0046", X"f54d", X"f01e", X"eb70", X"e912", X"ebf6",
                                                        X"f039", X"eb6b", X"c97d", X"fc60", X"d606", X"fcf2", X"fc11", X"1729", X"db49", X"f02d", X"1341", X"2a84", X"28c0", X"fecb",
                                                        X"f264", X"2760", X"db44", X"1c36", X"ddad", X"f13a", X"fecf", X"e553", X"f265", X"12df", X"f6ec", X"dd7d", X"0ca9", X"1415",
                                                        X"12fa", X"0319", X"f055", X"0315", X"154f", X"0a7f", X"f1f9", X"0c3b", X"1c61", X"f71c", X"0566", X"eb0b", X"f94c", X"ebf4",
                                                        X"0e4e", X"26cb", X"140b", X"1005", X"0f3d", X"25ca", X"1a19", X"27b7", X"d7ab", X"f102", X"082a", X"f6c3", X"e19c", X"fa1e",
                                                        X"0ced", X"e23e", X"100a", X"033e", X"25fd", X"1092", X"1f3f", X"f9f4", X"f7cb", X"39e6", X"dbd3", X"04ed", X"0203", X"fda7",
                                                        X"f734", X"ef67", X"0c25", X"f5c0", X"f711", X"2aef", X"d489", X"fbdf", X"1b1f", X"04f5", X"f027", X"fbd9", X"0929", X"163d",
                                                        X"0479", X"07da", X"020c", X"ef0d", X"11c8", X"163f", X"daa2", X"13c4", X"d57a", X"d844", X"1c5e", X"e4f9", X"f16d", X"0d33",
                                                        X"eb1a", X"da65", X"e9fb", X"1621", X"ebd0", X"ff77", X"f35e", X"e838", X"e1bd", X"e00a", X"cffc", X"ee2c", X"008f", X"0c60",
                                                        X"f6a9", X"f6c0", X"ceed", X"eb33", X"03f1", X"06ac", X"05f6", X"f5d2", X"080e", X"eb71", X"f1d6", X"dc99", X"eeeb", X"02af",
                                                        X"e1ce", X"05bc", X"1340", X"08fc", X"0362", X"ff32", X"e179", X"e38d", X"0fed", X"2171", X"f4f0", X"0830", X"0801", X"f0ec",
                                                        X"1d0e", X"02d1", X"ea24", X"f0d9", X"eeb1", X"f329", X"fe83", X"14d8", X"f5ee", X"fed0", X"04ab", X"fdd2", X"f3e9", X"f760",
                                                        X"345b", X"2e88", X"e49f", X"0672", X"f360", X"2c7b", X"fb5e", X"0484", X"f224", X"289a", X"12e9", X"fe70", X"f552", X"e4d1",
                                                        X"f633", X"e54f", X"2763", X"463e", X"332c", X"1a46", X"2661", X"24da", X"2742", X"1cd7", X"2852", X"e866", X"1060", X"115a",
                                                        X"f31f", X"f214", X"0c2d", X"04a8", X"ed8f", X"28f3", X"efb9", X"09fe", X"0905", X"2ef8", X"faf0", X"0f0c", X"349d", X"4031",
                                                        X"0dda", X"fc45", X"0ed0", X"e7cd", X"fe36", X"1923", X"e110", X"03ab", X"e75a", X"f630", X"17c8", X"1565", X"1aa2", X"0366",
                                                        X"f0ec", X"3540", X"de16", X"fbc2", X"e638", X"fa2c", X"f10a", X"1779", X"f47f", X"ee1e", X"0b7f", X"ed42", X"0599", X"e0e7",
                                                        X"f7f4", X"07bb", X"08d5", X"f8e3", X"054f", X"0f19", X"ec35", X"fbb9", X"0207", X"f162", X"f612", X"ffd0", X"eb86", X"f6b2",
                                                        X"eba7", X"e81e", X"ddca", X"eb3e", X"c783", X"d534", X"08d4", X"f5ed", X"199e", X"f537", X"f787", X"f953", X"ed15", X"f79c",
                                                        X"053d", X"0e5e", X"eb92", X"dbe3", X"d09b", X"fedf", X"ea42", X"e5b0", X"df39", X"03a9", X"0632", X"1068", X"f5f6", X"ccb4",
                                                        X"ef12", X"df3d", X"05ae", X"e9d8", X"f2b7", X"0bee", X"fa6a", X"0cad", X"fecb", X"d83b", X"0ad4", X"e15f", X"06c1", X"0563",
                                                        X"e375", X"da2b", X"0392", X"f554", X"216f", X"0317", X"fd06", X"1711", X"fa05", X"f4c2", X"ea0d", X"e5a4", X"f128", X"d7d1",
                                                        X"e4b0", X"facf", X"0a1b", X"ec12", X"0f32", X"1ba2", X"3c6d", X"07f8", X"05d0", X"34ae", X"2915", X"1ea6", X"f518", X"2738",
                                                        X"0258", X"e380", X"e241", X"ee8f", X"1fdd", X"1ea9", X"fa7a", X"3997", X"1ce7", X"073e", X"0f41", X"2f46", X"044a", X"2246",
                                                        X"2460", X"1125", X"2c36", X"18a3", X"fd80", X"eece", X"0c5e", X"1404", X"f5c9", X"1d5d", X"fd10", X"0808", X"2072", X"1072",
                                                        X"0d03", X"ff09", X"f0dc", X"3b09", X"fa3f", X"fc97", X"fefe", X"dd84", X"12d7", X"feb9", X"d190", X"0ecd", X"fd15", X"f3e2",
                                                        X"ee68", X"0b90", X"096c", X"0380", X"ee47", X"e469", X"e4f6", X"0f6e", X"0818", X"e50e", X"05f6", X"f514", X"d8aa", X"01f1",
                                                        X"1291", X"ec5b", X"03fb", X"f64d", X"edc8", X"d12b", X"103f", X"ed48", X"07a0", X"0603", X"07ed", X"faa5", X"f24b", X"f8b3",
                                                        X"ef10", X"0218", X"c051", X"f121", X"ee06", X"ec68", X"eab1", X"ecbb", X"f955", X"f2b5", X"d3fd", X"f69c", X"0c30", X"0678",
                                                        X"f43f", X"fccf", X"0cb0", X"de4b", X"0a85", X"224c", X"e3f3", X"ef0f", X"ee59", X"d59d", X"f160", X"d048", X"0cc8", X"f664",
                                                        X"fd4c", X"05bd", X"fb63", X"db78", X"2184", X"feb0", X"2b06", X"f36b", X"f957", X"0acc", X"078d", X"ecb8", X"d25d", X"084f",
                                                        X"06b8", X"f7fe", X"f6ca", X"f396", X"0e83", X"f181", X"0ba9", X"25b6", X"113c", X"ffaa", X"f184", X"299c", X"0678", X"3370",
                                                        X"fb4e", X"f193", X"fb9c", X"ff6e", X"f067", X"f64d", X"13aa", X"e5e8", X"fdd8", X"2ee7", X"3e9d", X"f03a", X"1d9d", X"1ca4",
                                                        X"2de2", X"1958", X"2499", X"fe0e", X"3309", X"10c4", X"f43f", X"f864", X"ffd3", X"0126", X"11c1", X"2e23", X"f4c6", X"e7a6",
                                                        X"1233", X"0bb3", X"f8f0", X"2be4", X"fe2c", X"1753", X"12fe", X"e23d", X"f810", X"0399", X"1c17", X"04f8", X"0ae7", X"0d31",
                                                        X"dc3c", X"dfda", X"162d", X"1256", X"ed53", X"1a13", X"f6e8", X"0762", X"0502", X"1d97", X"f965", X"f764", X"0041", X"ff49",
                                                        X"f76d", X"f24f", X"d124", X"e628", X"eb0f", X"0038", X"e46f", X"c803", X"dea6", X"cbed", X"076c", X"05a2", X"e8e5", X"f6f8",
                                                        X"e89c", X"eed9", X"e30b", X"c4c8", X"de6d", X"e01b", X"fc91", X"0516", X"f543", X"f193", X"e8f2", X"064e", X"f9a1", X"11c6",
                                                        X"134c", X"0261", X"e6d3", X"dff0", X"0a1d", X"d190", X"f6c2", X"0029", X"f367", X"e58a", X"1024", X"e875", X"0f8f", X"f7d8",
                                                        X"ca4f", X"194b", X"005d", X"083d", X"f8f4", X"e4b7", X"0a48", X"0790", X"f01d", X"fbd1", X"fb4d", X"ff8a", X"0690", X"ef0d",
                                                        X"d912", X"1b5b", X"0a6b", X"e789", X"0000", X"f668", X"f8a6", X"ebd5", X"2338", X"2c37", X"1ebb", X"e38b", X"0ebe", X"148d",
                                                        X"092b", X"2722", X"1c5a", X"1559", X"08d0", X"f4c9", X"e113", X"005d", X"0a0c", X"d39c", X"2681", X"359a", X"19fb", X"f36c",
                                                        X"1838", X"158e", X"0357", X"10e8", X"27ea", X"0c5e", X"38aa", X"f319", X"ed1c", X"eeb2", X"fd39", X"1c7b", X"fd3a", X"2fd9",
                                                        X"0887", X"0581", X"179f", X"0bc5", X"1ee1", X"045b", X"22c5", X"3ad9", X"fc22", X"0510", X"eeae", X"f379", X"3b98", X"f2d7",
                                                        X"0d2d", X"0966", X"e7e6", X"fa6d", X"0482", X"1001", X"0edb", X"11dd", X"f4ab", X"221e", X"0b51", X"026b", X"fe71", X"0642",
                                                        X"108b", X"eae6", X"dbb8", X"0ca3", X"c4ec", X"f7c5", X"0406", X"dfb7", X"dd9b", X"fec5", X"f97d", X"e419", X"ff8a", X"1009",
                                                        X"ff48", X"f744", X"0725", X"0e9b", X"e342", X"d311", X"d71c", X"df0f", X"f650", X"fcfd", X"0efa", X"d5fd", X"0938", X"d19e",
                                                        X"f1a9", X"17ca", X"0f58", X"fcd8", X"f8a6", X"ec7c", X"ff40", X"d167", X"0648", X"eb41", X"f915", X"0735", X"11bb", X"06dc",
                                                        X"c90a", X"f715", X"03b6", X"d3c2", X"f21b", X"091d", X"e85e", X"e8e9", X"0179", X"1fe0", X"1ba5", X"13b8", X"eb1b", X"07f6",
                                                        X"ef8d", X"f1c2", X"ee25", X"e826", X"15b0", X"f801", X"fa58", X"02d0", X"f4c0", X"0135", X"23e4", X"e6e3", X"f47e", X"edc5",
                                                        X"0359", X"26d5", X"1f11", X"fd01", X"e8dd", X"179c", X"fcaa", X"ec86", X"159b", X"ff30", X"e96b", X"f8c6", X"0be8", X"2e52",
                                                        X"19e2", X"fe37", X"04cf", X"0ad8", X"20d9", X"1b47", X"2511", X"3a89", X"d871", X"f6e7", X"f86f", X"ee77", X"134a", X"dc50",
                                                        X"172d", X"1de5", X"1d4a", X"0564", X"0302", X"259c", X"1e95", X"0c12", X"ff4c", X"3409", X"1f82", X"086d", X"f822", X"f4eb",
                                                        X"0dd8", X"f456", X"e8cb", X"0695", X"1823", X"017c", X"229a", X"165a", X"074d", X"fe8d", X"e011", X"f216", X"0a76", X"098b",
                                                        X"0448", X"eeb1", X"1dc6", X"1c88", X"d40c", X"10c7", X"dd8b", X"e931", X"1ba7", X"df5b", X"f3b0", X"eb8b", X"e7a8", X"efd4",
                                                        X"fb9c", X"00d7", X"0094", X"fb25", X"fc68", X"1317", X"e9d0", X"d730", X"f8d6", X"0583", X"ec2a", X"f4b2", X"0956", X"d296",
                                                        X"0d52", X"086c", X"0135", X"1f35", X"fbf9", X"052f", X"ecf0", X"fea6", X"f851", X"f747", X"e5d0", X"fee8", X"e2b7", X"fbd4",
                                                        X"ec69", X"1b65", X"19ce", X"d353", X"e5b5", X"1749", X"258d", X"0001", X"de38", X"d332", X"fb44", X"e8a0", X"f824", X"0af6",
                                                        X"f272", X"1113", X"eb02", X"1771", X"eb84", X"1409", X"f61f", X"cfbf", X"f438", X"f62e", X"0ee3", X"eb3e", X"1691", X"f8be",
                                                        X"30cb", X"05f1", X"f3a8", X"2369", X"0450", X"26ae", X"f417", X"2710", X"e24c", X"f516", X"f7f8", X"cb84", X"066d", X"fc18",
                                                        X"0816", X"f650", X"00cc", X"014e", X"018d", X"10c7", X"168d", X"32b0", X"31c0", X"1058", X"1474", X"097f", X"ea76", X"eae0",
                                                        X"04a6", X"10b1", X"1d98", X"0826", X"1284", X"0987", X"156b", X"08cb", X"3079", X"0ea2", X"fcbc", X"2d33", X"0b81", X"f1da",
                                                        X"032b", X"ecb2", X"1b37", X"ff4f", X"f896", X"034e", X"ff73", X"defd", X"0dbf", X"0f9c", X"f3fc", X"270c", X"f064", X"2b9b",
                                                        X"f6ad", X"10f8", X"1559", X"ecde", X"0fb8", X"ee92", X"fa50", X"e7d6", X"2397", X"e073", X"0a2c", X"f346", X"0c8e", X"e9ec",
                                                        X"0475", X"f8dc", X"fff5", X"0f65", X"f931", X"efdc", X"f869", X"0495", X"e8a3", X"c7b4", X"dc16", X"0517", X"1196", X"e2c9",
                                                        X"e77f", X"f884", X"0162", X"f50e", X"fc6e", X"ffde", X"0580", X"0bb6", X"ef12", X"039a", X"e011", X"fe71", X"cebf", X"f6b0",
                                                        X"e992", X"064a", X"fb31", X"cad1", X"edf9", X"02ef", X"dcb2", X"f648", X"2040", X"f9c9", X"0d12", X"ed57", X"00ee", X"f95b",
                                                        X"e6fa", X"f53e", X"ff8c", X"f857", X"dcd5", X"dac5", X"efc5", X"f4b1", X"f8f2", X"eb73", X"fcd0", X"ff45", X"f570", X"f1b9",
                                                        X"2c86", X"219b", X"0529", X"fb2d", X"e860", X"0367", X"0534", X"2d14", X"f960", X"e67c", X"0aaa", X"fd8b", X"e61a", X"06c1",
                                                        X"fa3a", X"dae0", X"27e9", X"f6ee", X"383b", X"0926", X"0700", X"ff01", X"14d2", X"0a63", X"062e", X"f3ee", X"f89a", X"e635",
                                                        X"e3dd", X"0153", X"0ee5", X"0675", X"2b79", X"362b", X"19f3", X"f515", X"1ec8", X"0a8f", X"2b07", X"1320", X"0201", X"30d0",
                                                        X"3222", X"f486", X"f448", X"f3c0", X"0c73", X"f6f1", X"e44c", X"3283", X"33ec", X"0e92", X"07d0", X"120b", X"fa23", X"3701",
                                                        X"0cee", X"245d", X"fd97", X"f4e3", X"f87c", X"f22e", X"069f", X"f381", X"f555", X"fb7e", X"1213", X"fcc2", X"fd0f", X"fb98",
                                                        X"f84b", X"ee24", X"d7ae", X"ff96", X"042e", X"0e02", X"0342", X"f1e4", X"10db", X"f730", X"e3d4", X"f427", X"f822", X"e6c7",
                                                        X"f89a", X"dd9c", X"0869", X"dbfc", X"f009", X"11ca", X"eb20", X"0666", X"f035", X"f31d", X"ee7a", X"e5c3", X"f397", X"0998",
                                                        X"0ee9", X"e74b", X"eb20", X"f3bd", X"f1cc", X"c83e", X"cca0", X"e4cc", X"fac3", X"0442", X"093c", X"16cb", X"f66f", X"fad1",
                                                        X"fe6e", X"d720", X"ea3a", X"eeb8", X"e0a9", X"e68b", X"258a", X"e260", X"d652", X"d418", X"d54b", X"ee87", X"0e34", X"05c3",
                                                        X"f0e0", X"dd9a", X"352c", X"3c16", X"15be", X"1213", X"c2c9", X"24b0", X"1cc6", X"1754", X"1996", X"3bc5", X"19a7", X"1145",
                                                        X"e732", X"f22d", X"0608", X"f43a");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f43a";
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

