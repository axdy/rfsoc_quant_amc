-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block343.vhd
-- Created: 2023-08-04 11:27:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block343
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage110/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block343 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block343;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block343 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fc8a", X"1208", X"2da4", X"16cf", X"fc90", X"1705",
                                                        X"d86e", X"0a20", X"d2c8", X"2e3c", X"f2e1", X"e134", X"f7a3", X"ddad", X"1f61", X"d4da", X"1a96", X"0684", X"1096", X"083d",
                                                        X"03a1", X"1005", X"fde9", X"2a71", X"23e4", X"2026", X"d7bc", X"fa69", X"e765", X"f171", X"0448", X"ee2a", X"0e2c", X"183a",
                                                        X"00df", X"ff2f", X"06f6", X"2866", X"1bf5", X"d14a", X"1d8b", X"f039", X"2d4e", X"f895", X"f5c5", X"da74", X"19a4", X"055d",
                                                        X"294a", X"07ea", X"06bf", X"e84c", X"eb70", X"eab9", X"0a8f", X"1608", X"e960", X"1119", X"11c4", X"edd3", X"f104", X"e153",
                                                        X"e993", X"dcbc", X"08d4", X"ef2f", X"35e1", X"e4fa", X"1395", X"17ea", X"ffd6", X"fc38", X"25ff", X"0968", X"f93e", X"f06a",
                                                        X"ea06", X"f2de", X"fda0", X"d664", X"0c7c", X"ee30", X"0788", X"d4b9", X"08db", X"03e3", X"0f4e", X"e45b", X"23b3", X"0de9",
                                                        X"0346", X"058a", X"d93e", X"ecef", X"fae1", X"cb34", X"0eb4", X"19a7", X"1276", X"0325", X"fd5b", X"0fda", X"1253", X"ffe7",
                                                        X"1e02", X"1afe", X"0f5a", X"e882", X"d44a", X"f215", X"fa1f", X"eadd", X"123f", X"230c", X"e86b", X"14b2", X"0d47", X"1796",
                                                        X"0c68", X"fd64", X"31f4", X"0b7d", X"e1ce", X"ebe9", X"d92a", X"f342", X"181c", X"f0d9", X"007b", X"fc89", X"0359", X"1c81",
                                                        X"03a5", X"0c7d", X"f463", X"25c1", X"339a", X"dd18", X"055a", X"026e", X"dd2d", X"f926", X"f658", X"d5f9", X"0d33", X"2106",
                                                        X"fdc0", X"f4b2", X"13f4", X"de74", X"f2a2", X"288f", X"0bdc", X"f851", X"ffb5", X"f8c1", X"cb33", X"f69a", X"f9bb", X"da8f",
                                                        X"1a47", X"fd12", X"0746", X"f387", X"0b34", X"0508", X"ee7f", X"2692", X"1028", X"cb46", X"f0fc", X"02f5", X"db08", X"f126",
                                                        X"f9a7", X"e55b", X"0ae3", X"0bb4", X"2088", X"e8d1", X"0c78", X"f61c", X"1ac8", X"ee72", X"e75e", X"0eab", X"feb1", X"0342",
                                                        X"f6e7", X"fbbd", X"0c17", X"ec3b", X"f7db", X"242e", X"f482", X"fd2e", X"f3fd", X"1568", X"ed01", X"1647", X"f14f", X"caa3",
                                                        X"0623", X"ea00", X"fd06", X"e586", X"0354", X"dc8d", X"05cc", X"1f6c", X"ddd2", X"fb85", X"0238", X"1b0a", X"02d7", X"2593",
                                                        X"01fa", X"0e9e", X"0ee9", X"096a", X"da42", X"f32b", X"ff1f", X"e653", X"1958", X"2b8a", X"fdc6", X"f281", X"10bb", X"f9c9",
                                                        X"dd4d", X"dcc6", X"0400", X"ef3d", X"1d74", X"fda2", X"f155", X"f27a", X"159f", X"ebff", X"fece", X"1b2e", X"ea97", X"facc",
                                                        X"08e6", X"11a3", X"fc99", X"0575", X"d3cd", X"ea45", X"1b4a", X"0e11", X"e3cf", X"f009", X"25b1", X"e69d", X"ff98", X"0c8b",
                                                        X"038b", X"08cb", X"ffe4", X"1678", X"fb22", X"275f", X"0347", X"0d59", X"10b9", X"d5cd", X"eba9", X"e73c", X"0939", X"debb",
                                                        X"0b6d", X"26e2", X"18f6", X"f16c", X"0932", X"10ee", X"fd58", X"023e", X"0c1d", X"ee75", X"2edb", X"024d", X"df24", X"e329",
                                                        X"02ba", X"e80a", X"fbf7", X"0a43", X"0654", X"fb81", X"04f7", X"1e2c", X"ea9f", X"fc2a", X"f7e6", X"10a5", X"fed7", X"12f0",
                                                        X"db43", X"e631", X"0ec4", X"dab3", X"f8ae", X"f7e8", X"f19e", X"fe62", X"f808", X"f692", X"f8b3", X"0576", X"22d8", X"0fcc",
                                                        X"1773", X"f003", X"eb99", X"f8b6", X"f39b", X"f6e3", X"f730", X"fd12", X"043e", X"f8f3", X"02c0", X"070d", X"15ba", X"e503",
                                                        X"fa64", X"03dc", X"efa9", X"ed3b", X"ebb2", X"ec6e", X"0df2", X"0209", X"043c", X"0497", X"274d", X"ed4b", X"0498", X"fb6b",
                                                        X"ff3e", X"fc66", X"1650", X"1657", X"f07a", X"fa2f", X"f00d", X"ea27", X"0600", X"eb30", X"042e", X"0355", X"11b7", X"00b0",
                                                        X"0c3a", X"f995", X"21cb", X"17be", X"1fc6", X"0be8", X"0883", X"d500", X"e51c", X"f7cd", X"ff4e", X"ed6c", X"1153", X"ee95",
                                                        X"39a5", X"fc47", X"0d8f", X"1843", X"15dd", X"0c7f", X"02a1", X"1177", X"d22f", X"e9a9", X"e682", X"018a", X"fa69", X"d3fc",
                                                        X"0048", X"0b24", X"0ac5", X"2429", X"f3bb", X"1681", X"f9f5", X"03e6", X"01b0", X"12e0", X"e0cb", X"f103", X"da36", X"f15b",
                                                        X"eddf", X"d84c", X"f172", X"0ff8", X"202f", X"0d0f", X"270a", X"0969", X"1040", X"1128", X"2bbc", X"d91f", X"fed2", X"efcf",
                                                        X"e0ef", X"10dd", X"0836", X"f46e", X"fc89", X"1964", X"ed52", X"03d6", X"0f67", X"e5a5", X"f3ff", X"2840", X"f82a", X"0013",
                                                        X"e2ba", X"f2c4", X"e6ea", X"ff21", X"f036", X"ea05", X"ebff", X"fc59", X"4396", X"0532", X"10d9", X"f18f", X"09e1", X"e2b2",
                                                        X"11bc", X"f9b7", X"fad9", X"00fa", X"f24a", X"f7f3", X"f1fe", X"ea33", X"1c98", X"ecef", X"0903", X"eb08", X"1f0b", X"0103",
                                                        X"08cd", X"fb5a", X"e2b8", X"e998", X"0a61", X"0f3c", X"eb67", X"e8a5", X"0501", X"f9fc", X"15cb", X"1b59", X"088f", X"eb30",
                                                        X"119a", X"0736", X"19ec", X"02db", X"f4e3", X"f925", X"0dd8", X"f623", X"e80e", X"0284", X"006b", X"f195", X"1d28", X"0349",
                                                        X"1a50", X"022b", X"1050", X"2202", X"fadc", X"ed53", X"0db5", X"07fa", X"f608", X"f643", X"e8ad", X"e753", X"0681", X"e974",
                                                        X"041c", X"077d", X"1311", X"f4c8", X"0175", X"fd4e", X"2067", X"1dc1", X"df52", X"ed6f", X"20c7", X"01fe", X"f13c", X"f181",
                                                        X"0590", X"0bf2", X"1535", X"0962", X"2037", X"00a0", X"00e9", X"f8b0", X"fbad", X"ef8e", X"d506", X"0b5f", X"0ffc", X"f5cd",
                                                        X"f198", X"d7b9", X"0a52", X"12bf", X"ecbe", X"130b", X"1353", X"e5b5", X"f92a", X"0661", X"e33f", X"2226", X"14dd", X"0d29",
                                                        X"1d32", X"1e43", X"fe70", X"fa5b", X"ea08", X"f5d8", X"fa72", X"06db", X"08ba", X"03b7", X"f562", X"1dcc", X"e512", X"102b",
                                                        X"e4c4", X"ec50", X"f0e9", X"f0e9", X"f5d9", X"e2b0", X"09ee", X"e2f7", X"05d2", X"16ae", X"020f", X"de4a", X"0e83", X"3131",
                                                        X"fc25", X"e027", X"fa42", X"ec95", X"29d4", X"f8e4", X"d552", X"f8a3", X"fcbb", X"f11a", X"0fc8", X"00ac", X"34bc", X"03e2",
                                                        X"0af5", X"e557", X"071e", X"1352", X"f3a8", X"1bb5", X"eaa7", X"e624", X"0408", X"fb82", X"ec55", X"da1c", X"1a34", X"2414",
                                                        X"38af", X"f8b2", X"fe5c", X"f363", X"03ac", X"085c", X"0fda", X"f4ad", X"1252", X"00e0", X"ef4a", X"f6b1", X"f629", X"e2e9",
                                                        X"0d81", X"1b7b", X"2572", X"eb8c", X"0c55", X"21e0", X"1697", X"14a3", X"ff55", X"de3e", X"0edc", X"d86a", X"e12e", X"ef70",
                                                        X"f564", X"dcab", X"05d5", X"0ee7", X"ebd8", X"f5a9", X"14f9", X"f2c9", X"0e2f", X"f9bc", X"1ffb", X"f915", X"dc7c", X"f59b",
                                                        X"e013", X"06b3", X"01a7", X"f291", X"edfd", X"1325", X"f2c4", X"0c2f", X"0522", X"17e7", X"068d", X"1f37", X"0b40", X"fc12",
                                                        X"1c36", X"e26e", X"d38a", X"e723", X"0955", X"d7dc", X"ff02", X"143e", X"1b30", X"f900", X"08f4", X"f0be", X"f7da", X"18fa",
                                                        X"2f3f", X"0def", X"f74a", X"e951", X"d3f1", X"0e1b", X"0b65", X"f7ef", X"0362", X"f515", X"edef", X"fa49", X"08d1", X"f062",
                                                        X"19db", X"27c8", X"e008", X"107d", X"e72a", X"f465", X"da1c", X"f9df", X"0b53", X"dd57", X"f5dd", X"0ef0", X"07fb", X"fb3f",
                                                        X"ff6d", X"f681", X"ee90", X"fdf2", X"37ca", X"0550", X"0e20", X"e8fa", X"e54c", X"0862", X"edc8", X"d3bf", X"04d7", X"2f6c",
                                                        X"e910", X"f9a0", X"0420", X"fda7", X"01d1", X"103c", X"f7ce", X"0ad3", X"0110", X"03c3", X"ecb3", X"f0fb", X"ed6d", X"e998",
                                                        X"0a1b", X"f3d5", X"f676", X"fd60", X"00f6", X"1731", X"f9c1", X"153a", X"0d33", X"d60d", X"187e", X"2492", X"d2b1", X"dd58",
                                                        X"fb36", X"d826", X"fffc", X"04c8", X"f8ba", X"d8bc", X"09ac", X"0d0a", X"f4a7", X"02ea", X"eaa7", X"047a", X"1799", X"fc99",
                                                        X"0217", X"eedd", X"f71a", X"fca5", X"1a7c", X"e2df", X"e17e", X"094a", X"f667", X"f763", X"f8af", X"252b", X"f589", X"0c85",
                                                        X"0e9f", X"03d5", X"ee2c", X"d0bf", X"ff10", X"daff", X"fdda", X"f1c6", X"fff4", X"eaf2", X"1485", X"1e70", X"fac2", X"18a0",
                                                        X"eb19", X"17ef", X"33c1", X"fe42", X"f666", X"066a", X"014a", X"f9ec", X"1aad", X"122f", X"2616", X"e446", X"f0dc", X"f4e3",
                                                        X"0d9e", X"f01e", X"ed95", X"1e97", X"ffc6", X"f5dc", X"ef2c", X"e0cb", X"fe52", X"eb69", X"0a61", X"04ca", X"0cbf", X"fe5c",
                                                        X"ea4b", X"060b", X"0b92", X"f3ce", X"ff60", X"fad6", X"04d4", X"009c", X"f05a", X"f530", X"0727", X"f942", X"fcd6", X"f8c3",
                                                        X"382a", X"0b91", X"fa05", X"00b1", X"ef8d", X"0e59", X"1eea", X"f689", X"16c6", X"0301", X"0882", X"e1a8", X"0234", X"eef5",
                                                        X"2051", X"e68b", X"edcb", X"0007", X"de40", X"067e", X"0556", X"114a", X"dd84", X"f423", X"0bab", X"f503", X"ec6c", X"f1a9",
                                                        X"fda0", X"09e1", X"fbd8", X"e44f", X"fbc3", X"fea7", X"174f", X"f083", X"fbcc", X"1596", X"e671", X"e2ce", X"fa7e", X"e60d",
                                                        X"f89d", X"f544", X"2058", X"0ab0", X"2743", X"01a6", X"f7ee", X"e6c3", X"0915", X"1377", X"f29a", X"022f", X"238f", X"031f",
                                                        X"f934", X"e9dd", X"ec1d", X"f5bf", X"f3a5", X"f8ef", X"e276", X"01a5", X"30f8", X"16fb", X"05e7", X"dff5", X"16db", X"1cd4",
                                                        X"e488", X"e6df", X"e95e", X"fe4a", X"f438", X"025a", X"00bd", X"eb25", X"fc7e", X"02ae", X"0c57", X"128c", X"12eb", X"0f23",
                                                        X"f8da", X"39bb", X"062d", X"d4f0", X"ef44", X"f1ce", X"da92", X"05f6", X"0a18", X"e6af", X"e66c", X"3430", X"2ba8", X"20af",
                                                        X"0a4b", X"1049", X"0d24", X"2246", X"2e45", X"f4cb", X"021d", X"dd7f", X"c86a", X"1094", X"f1d6", X"f4a6", X"102b", X"1b7a",
                                                        X"0285", X"fa57", X"e85b", X"0d63", X"d4ec", X"36ac", X"eee0", X"e5ae", X"f3ee", X"d3d3", X"df59", X"08d2", X"fd5b", X"e66f",
                                                        X"0603", X"0c76", X"efcb", X"0b62", X"02e0", X"edc5", X"0127", X"eb1d", X"091a", X"1c97", X"f48d", X"ea17", X"e3c5", X"034d",
                                                        X"e90a", X"ea0f", X"05df", X"fb97", X"1eb1", X"eda3", X"f716", X"05ed", X"0d84", X"2db2", X"070a", X"10fa", X"e5ab", X"09e8",
                                                        X"f650", X"0617", X"f2bc", X"d6db", X"1193", X"fd43", X"06d9", X"f6b4", X"18de", X"125e", X"eeab", X"24da", X"1af4", X"05ff",
                                                        X"1770", X"fd84", X"dc24", X"f8e3", X"0b6d", X"dbf9", X"1263", X"2c54", X"2e64", X"e4d3", X"f381", X"0081", X"dea4", X"eaa6",
                                                        X"f51c", X"fedc", X"f116", X"0bf1", X"e164", X"f185", X"10f5", X"df91", X"fa91", X"1939", X"24ca", X"ee4e", X"f008", X"283f",
                                                        X"0a32", X"000b", X"0a10", X"f046", X"f850", X"1532", X"ec62", X"f919", X"174b", X"d9a3", X"1fa5", X"0bf1", X"e52b", X"05d0",
                                                        X"f42f", X"12f8", X"1a4b", X"eab1", X"d465", X"0aad", X"1769", X"f085", X"fe2b", X"ede1", X"03b8", X"f92d", X"1842", X"0c16",
                                                        X"fea2", X"ed47", X"fd04", X"21d3", X"06b9", X"1a4f", X"e2a9", X"1077", X"0867", X"0469", X"fd71", X"e7d8", X"ef33", X"e1b9",
                                                        X"1b2a", X"faba", X"1ec2", X"fa77", X"eb89", X"f115", X"0c59", X"0729", X"ed75", X"2718", X"f8a6", X"1fdf", X"06c2", X"d9db",
                                                        X"fe65", X"dfec", X"0b27", X"2853", X"2cf0", X"16d9", X"e984", X"2428", X"ecc6", X"ec46", X"f302", X"ff14", X"fd45", X"fa33",
                                                        X"f30d", X"e53e", X"f2d8", X"1665", X"0fce", X"06b4", X"122b", X"088a", X"0636", X"fbaa", X"f5fd", X"1699", X"dffe", X"f23c",
                                                        X"fb06", X"f18f", X"cfc9", X"f311", X"12bc", X"0587", X"2382", X"d777", X"fd3e", X"e209", X"e5bf", X"0cec", X"1813", X"033c",
                                                        X"2253", X"16c3", X"0304", X"d357", X"e7b0", X"f237", X"0446", X"e0e3", X"1538", X"f4bc", X"1829", X"e276", X"0262", X"f621",
                                                        X"167a", X"eb77", X"eada", X"086a", X"36ea", X"f0bc", X"e646", X"06d3", X"076b", X"e5aa", X"0ca4", X"00ae", X"e67e", X"0609",
                                                        X"fcfd", X"176a", X"0823", X"0882", X"1132", X"eda9", X"0db6", X"f446", X"ed00", X"e978", X"f795", X"fb3c", X"04fb", X"ff16",
                                                        X"f47b", X"1c3a", X"165c", X"074f", X"2aab", X"00e1", X"1a84", X"1730", X"f15b", X"e21a", X"ddee", X"e15e", X"158f", X"d0f9",
                                                        X"00be", X"1f61", X"eb49", X"0cb6", X"107b", X"f7f5", X"0acc", X"fb9c", X"f86f", X"0f8d", X"f16b", X"044d", X"ea13", X"f925",
                                                        X"fd3b", X"dbe5", X"f431", X"25d6", X"f0ef", X"f5bc", X"0562", X"ffb3", X"f89a", X"167b", X"2760", X"f868", X"fa66", X"f666",
                                                        X"f544", X"ef87", X"0098", X"eccc", X"1793", X"fe30", X"271b", X"f768", X"fb5a", X"e85b", X"16e2", X"1fad", X"13d3", X"fd9f",
                                                        X"db63", X"1048", X"d41a", X"04d6", X"e1d0", X"00a2", X"105b", X"f072", X"0d36", X"0255", X"01fb", X"efcc", X"1c54", X"1684",
                                                        X"25d3", X"f42f", X"23be", X"063d", X"df15", X"fe4b", X"0a23", X"deba", X"0d8b", X"1e0b", X"e725", X"ebbb", X"109b", X"e963",
                                                        X"e6ce", X"28a6", X"e173", X"129f", X"e5dd", X"fa00", X"e33f", X"0cfb", X"1877", X"01f0", X"1c95", X"e986", X"feba", X"de95",
                                                        X"0b6d", X"1428", X"072d", X"eba8", X"2544", X"e362", X"036a", X"f367", X"f100", X"1076", X"10a2", X"e1d3", X"0e70", X"f938",
                                                        X"2fae", X"fb39", X"fa56", X"2418", X"df1c", X"31dc", X"e2dc", X"1823", X"eaa1", X"f0d1", X"f4ff", X"e61f", X"0089", X"fb6e",
                                                        X"05b8", X"212b", X"3648", X"0483", X"f8d0", X"2563", X"196b", X"0359", X"d374", X"e3d4", X"fe37", X"e159", X"e73a", X"f800",
                                                        X"f00c", X"ec71", X"0f2c", X"09fa", X"010f", X"fb50", X"0612", X"0246", X"01c1", X"dbd8", X"d882", X"29bb", X"2936", X"12ba",
                                                        X"fb33", X"091f", X"13c2", X"f18f", X"1598", X"0c8f", X"3202", X"e3d7", X"0275", X"189d", X"0bc3", X"294a", X"02b3", X"fd56",
                                                        X"0265", X"0d05", X"e4c1", X"04b7", X"067b", X"10bd", X"07a5", X"df67", X"f11b", X"fe42", X"0d8c", X"0456", X"f735", X"ecb5",
                                                        X"ec84", X"0ecb", X"21f8", X"0469", X"f6bc", X"cbce", X"12c4", X"e2ef", X"fe27", X"1ad5", X"37fe", X"e3c6", X"ff4c", X"19ad",
                                                        X"16e1", X"f4c6", X"1ad6", X"2436", X"f895", X"f764", X"0004", X"e3bd", X"11d5", X"fe0f", X"15cf", X"e1b7", X"078d", X"e44a",
                                                        X"f2ac", X"1bf9", X"01f4", X"fb66", X"dce6", X"fc1a", X"2153", X"0b17", X"f6d2", X"ff76", X"f464", X"f92a", X"f177", X"fcfe",
                                                        X"e9b0", X"02f4", X"fd05", X"2116", X"2b7c", X"e8f0", X"f623", X"e477", X"0460", X"095a", X"f109", X"e3a2", X"f608", X"fffb",
                                                        X"0dab", X"2294", X"403e", X"e85b", X"eed8", X"020a", X"0384", X"ea38", X"270c", X"f7cd", X"1811", X"f565", X"f967", X"e8df",
                                                        X"2662", X"ea19", X"06ed", X"e61c", X"d354", X"1949", X"fefc", X"f498", X"1a96", X"0de8", X"3338", X"030d", X"fbe5", X"f1a8",
                                                        X"e9a5", X"ff06", X"1ec5", X"dfbc", X"0fb6", X"effa", X"0fcc", X"18bd", X"feed", X"2670", X"f62d", X"1458", X"e7e6", X"1e2e",
                                                        X"01dd", X"0085", X"f71a", X"ffc1", X"08a3", X"e357", X"11a2", X"f8fa", X"0bab", X"f32d", X"05c8", X"e47d", X"298e", X"0e03",
                                                        X"de10", X"edb4", X"ec4e", X"dce0", X"e64b", X"f905", X"044e", X"e116", X"f670", X"3775", X"f727", X"072c", X"1207", X"03fd",
                                                        X"0d48", X"0f12", X"2ddd", X"db60", X"ee6a", X"f332", X"dc85", X"f298", X"12ea", X"fb91", X"fa6d", X"15a6", X"3224", X"d5da",
                                                        X"01d3", X"f90a", X"ee48", X"077d", X"0a19", X"eddf", X"e594", X"f649", X"ea43", X"eafb", X"ea9d", X"f18d", X"1fa5", X"e398",
                                                        X"354b", X"f5ae", X"14ca", X"edc2", X"de36", X"0256", X"01d6", X"f7c7", X"ee6b", X"efe3", X"e0c0", X"dd9d", X"eebb", X"d6a5",
                                                        X"1914", X"e60c", X"0d66", X"f2ee", X"01a9", X"19c8", X"0823", X"2fea", X"f3cf", X"f171", X"081e", X"0068", X"e803", X"f7ed",
                                                        X"edf7", X"f975", X"0212", X"2bab", X"178f", X"0adf", X"0ea4", X"00b6", X"1dcd", X"ef03", X"f1f6", X"df63", X"0c0b", X"f4bd",
                                                        X"0179", X"f7d7", X"0006", X"04bf", X"20de", X"25cf", X"0e35", X"e57e", X"fa20", X"2789", X"ef1e", X"19c5", X"0404", X"1dc1",
                                                        X"06d1", X"e404", X"ee43", X"f35f", X"0db9", X"e5c5", X"18a8", X"f269", X"1b6b", X"05b9", X"f657", X"f62b", X"023b", X"de27",
                                                        X"e292", X"fc28", X"fe05", X"178e", X"fd3e", X"e814", X"088f", X"ecab", X"0ce5", X"37ad", X"eee7", X"f6c2", X"136d", X"f6cb",
                                                        X"e693", X"1018", X"0828", X"25e4", X"29ad", X"1731", X"f7ce", X"dc9f", X"193b", X"d736", X"184b", X"2d60", X"2413", X"e34d",
                                                        X"f474", X"28d6", X"f9bf", X"f6cb", X"dffd", X"f774", X"016b", X"098d", X"0dd2", X"e029", X"0238", X"dee6", X"1291", X"ec1a",
                                                        X"0d97", X"dff3", X"03c8", X"1848", X"f3c5", X"1a14", X"049c", X"f144", X"f28f", X"f3a5", X"eb1c", X"d861", X"027c", X"f052",
                                                        X"1095", X"001b", X"e3ff", X"e88a", X"1426", X"172c", X"f991", X"deca", X"dc01", X"1d7e", X"fd88", X"f980", X"faf5", X"e5f3",
                                                        X"f9d3", X"f5de", X"05d2", X"f6d8", X"f67e", X"eb17", X"fd5d", X"1806", X"0e4c", X"18ab", X"2499", X"fac6", X"238a", X"ea1e",
                                                        X"0714", X"fa77", X"f95c", X"e34e", X"01bf", X"053d", X"1843", X"edb0", X"06d1", X"06f9", X"efb5", X"0a1e", X"146f", X"e126",
                                                        X"128b", X"16ea", X"e497", X"de86", X"02e3", X"f3a6", X"1db3", X"e04a", X"e32a", X"ff30", X"0852", X"f6d6", X"f845", X"1a02",
                                                        X"f0a6", X"14e4", X"000b", X"dead", X"eed1", X"f658", X"fbcd", X"f70b", X"0786", X"3459", X"1c79", X"158f", X"0131", X"e71c",
                                                        X"0801", X"149b", X"22ba", X"db26", X"e6f5", X"f24c", X"e8e3", X"f9fa", X"1698", X"e556", X"d6a2", X"2b85", X"2083", X"178f",
                                                        X"0771", X"0536", X"e9f7", X"1873", X"efba", X"08ac", X"fb3c", X"f206", X"f74b", X"f7dc", X"e5cd", X"e5c6", X"0bda", X"3874",
                                                        X"fa69", X"005c", X"0a7d", X"0d6b", X"14d3", X"17e4", X"eb45", X"17e4", X"0155", X"fd23", X"e64f", X"f1aa", X"f948", X"e0ac",
                                                        X"ec7a", X"2e08", X"cdbb", X"f5ec", X"096d", X"f0da", X"1a62", X"f3f0", X"ee87", X"1035", X"dbfb", X"efdc", X"e152", X"0268",
                                                        X"0076", X"e5aa", X"f633", X"19cf", X"10c9", X"d90e", X"1cb7", X"23bf", X"f26c", X"1048", X"2039", X"eac9", X"165c", X"1032",
                                                        X"e7a5", X"efbc", X"0998", X"fa75", X"ea76", X"11ad", X"2e8b", X"0ff5", X"ed10", X"09c2", X"088f", X"e932", X"f1ff", X"e1ba",
                                                        X"e481", X"029c", X"f157", X"fa6b", X"fe9c", X"f217", X"2e7a", X"f25c", X"3958", X"0c36", X"1d88", X"fd8a", X"06e3", X"038f",
                                                        X"0385", X"e517", X"058e", X"f4fb", X"f85f", X"f5e2", X"0bb6", X"dbf5", X"184f", X"27ec", X"f66c", X"f108", X"fa5c", X"2c3f",
                                                        X"006d", X"1a43", X"de07", X"e46a", X"eab6", X"0959", X"f68e", X"e998", X"00b7", X"fcbe", X"147d", X"1f60", X"1740", X"f094",
                                                        X"0305", X"0811", X"f74e", X"0981", X"bcef", X"e9f0", X"0444", X"ff75", X"0049", X"f1ae", X"fe54", X"0e1b", X"18c9", X"f40e",
                                                        X"20a7", X"019d", X"183a", X"07aa", X"f0f3", X"1724", X"fa9e", X"109a", X"0702", X"075c", X"f618", X"ecda", X"0a0e", X"056c",
                                                        X"1aad", X"0b27", X"148a", X"0ee9", X"e5e1", X"e77d", X"fedc", X"159a", X"041c", X"09c5", X"315b", X"186e", X"1471", X"d4bd",
                                                        X"0f93", X"efd2", X"0d41", X"ff88", X"ea17", X"07ab", X"0a84", X"0f51", X"06b3", X"e96d", X"ec05", X"f41a", X"2339", X"e5c5",
                                                        X"dcb3", X"d6e6", X"0cdd", X"ffad", X"0ae7", X"1c26", X"e6f7", X"0cf9", X"1555", X"0d24", X"df56", X"1889", X"fde0", X"e4a5",
                                                        X"f77b", X"20d7", X"ec25", X"d8c3", X"0814", X"db9d", X"fd2a", X"1372", X"0052", X"0e77", X"0757", X"fb3b", X"ec2d", X"ee6c",
                                                        X"1f70", X"fbf4", X"0d26", X"f23d", X"f707", X"f232", X"ff20", X"dd35", X"2236", X"1d61", X"32da", X"f1b3", X"ffa4", X"0174",
                                                        X"f3ce", X"0d62", X"f8b8", X"cdbc", X"211d", X"de74", X"f756", X"e370", X"1534", X"e5c1", X"fdde", X"e2b9", X"f890", X"f57c",
                                                        X"0e52", X"0e87", X"078a", X"2be1", X"e863", X"0b7e", X"1fa3", X"f620", X"e7af", X"f3be", X"db7d", X"edc3", X"fed8", X"f20f",
                                                        X"2e33", X"0ee5", X"1661", X"025a", X"01e2", X"13ab", X"1383", X"e641", X"09a0", X"f4fc", X"0164", X"edbb", X"0436", X"eebd",
                                                        X"0029", X"0774", X"099a", X"e210", X"faaa", X"fd22", X"0531", X"e0e0", X"eaf1", X"0ad3", X"fa73", X"019b", X"f655", X"e977",
                                                        X"0e24", X"e863", X"f63c", X"058d", X"1dc6", X"dadb", X"019e", X"0513", X"31ab", X"27c2", X"e7ff", X"01fd", X"ddcb", X"ff94",
                                                        X"f123", X"f4e8", X"ea43", X"efdb");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"efdb";
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

