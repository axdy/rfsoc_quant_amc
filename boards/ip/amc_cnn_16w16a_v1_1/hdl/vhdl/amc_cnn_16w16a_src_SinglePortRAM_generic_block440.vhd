-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block440.vhd
-- Created: 2023-08-04 11:27:27
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block440
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage84/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block440 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block440;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block440 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"08c1", X"0fa3", X"dd50", X"f405", X"00a1", X"f0d7",
                                                        X"fadf", X"057b", X"eaa4", X"eafb", X"22a1", X"f347", X"1258", X"fd4e", X"042d", X"e4fa", X"0883", X"0079", X"f3ca", X"0b97",
                                                        X"081f", X"0c00", X"ff57", X"ef70", X"e0b6", X"fde5", X"f26a", X"0d95", X"102f", X"06ef", X"1069", X"ea12", X"f80a", X"09ae",
                                                        X"cd9e", X"0b84", X"f439", X"f0e9", X"0771", X"f170", X"f66d", X"f122", X"ea9b", X"ec53", X"1b66", X"10fc", X"f432", X"f115",
                                                        X"e150", X"eb24", X"0798", X"e8e3", X"0ad7", X"18d3", X"015e", X"e8af", X"0563", X"13b3", X"358c", X"ee8a", X"05f2", X"1303",
                                                        X"01cc", X"f8bc", X"f20d", X"f22f", X"fd2a", X"12cb", X"01f0", X"1617", X"0b4a", X"0c2f", X"0b8d", X"f75e", X"0e6b", X"ecfc",
                                                        X"19db", X"2620", X"0a91", X"e7be", X"1755", X"db87", X"ddab", X"eeb3", X"0a7d", X"1690", X"fc96", X"32de", X"f861", X"07c5",
                                                        X"fc6a", X"f1c3", X"0bd0", X"f1ea", X"29b5", X"03d8", X"1171", X"ee05", X"f92b", X"f497", X"164d", X"ec69", X"2439", X"24de",
                                                        X"0931", X"0aa9", X"09d9", X"ffa8", X"e380", X"0afb", X"0c9d", X"ee81", X"14b3", X"136c", X"11b2", X"194e", X"06d5", X"fa2d",
                                                        X"f434", X"1a5a", X"f070", X"10f0", X"0bf3", X"fa8e", X"f76e", X"1d38", X"1940", X"095b", X"fe38", X"101f", X"e81f", X"eff4",
                                                        X"f9db", X"e2dd", X"e711", X"f976", X"f2d2", X"ff3a", X"26f8", X"1355", X"0147", X"069a", X"fe30", X"e922", X"eecd", X"e1bd",
                                                        X"d130", X"da06", X"f4d9", X"eb3e", X"ed28", X"fe2d", X"d4b4", X"f588", X"0fa6", X"1c86", X"f5c8", X"0091", X"06a5", X"ecd2",
                                                        X"f96d", X"1b7c", X"daa7", X"ebf3", X"07fa", X"1124", X"27fc", X"1e15", X"e250", X"fc39", X"0606", X"174d", X"fe1a", X"fd48",
                                                        X"0500", X"1a4e", X"0cb3", X"04be", X"0a77", X"e653", X"03ed", X"fd92", X"0843", X"e38f", X"df70", X"fe05", X"1262", X"03a3",
                                                        X"1145", X"224a", X"0b32", X"f9dd", X"f0db", X"ee59", X"ee08", X"068f", X"00fc", X"ed13", X"24ec", X"edfc", X"0dcc", X"0081",
                                                        X"f808", X"0c0f", X"fbc7", X"1b38", X"f173", X"f4d2", X"e8ed", X"0f89", X"cf8f", X"e7f1", X"02db", X"02ef", X"f519", X"f8e6",
                                                        X"e54d", X"f08d", X"f444", X"ffc4", X"f8cd", X"0a74", X"05c3", X"042c", X"0396", X"17a5", X"e6f1", X"0179", X"f1ef", X"e326",
                                                        X"0b8a", X"1a1c", X"e935", X"169c", X"10d6", X"ffe0", X"1a0b", X"06f0", X"1215", X"f7d9", X"f02a", X"0308", X"eff7", X"0211",
                                                        X"00cc", X"fdb2", X"ebaf", X"0894", X"1e8e", X"13a9", X"e115", X"e60f", X"ffc8", X"ed53", X"0850", X"f711", X"fd00", X"2dc2",
                                                        X"e74f", X"143f", X"0782", X"110d", X"14d5", X"f114", X"e7a1", X"e181", X"05e4", X"f834", X"067b", X"1195", X"f477", X"faac",
                                                        X"f7ef", X"e325", X"fac7", X"0200", X"0f21", X"1484", X"045d", X"feaa", X"e810", X"159b", X"fc46", X"e874", X"0e9a", X"0507",
                                                        X"0477", X"fa74", X"0113", X"1a97", X"0dfd", X"0cf4", X"0a7c", X"f254", X"0f5e", X"ee9a", X"104d", X"077e", X"1642", X"e336",
                                                        X"1bc1", X"189d", X"f1b6", X"ea29", X"1904", X"f9a5", X"0b69", X"ee79", X"0144", X"0376", X"fd9a", X"14d7", X"f3e8", X"ecfb",
                                                        X"0ee7", X"ec43", X"06cc", X"fcc1", X"0be0", X"05a4", X"fe5f", X"e617", X"e92f", X"ffd5", X"fef7", X"e8b1", X"f8a5", X"f393",
                                                        X"fb47", X"e6bf", X"0747", X"f446", X"0540", X"1110", X"f3bc", X"fac7", X"06e0", X"07da", X"f893", X"eaea", X"f8f1", X"09c1",
                                                        X"1782", X"f6a1", X"dedc", X"efa5", X"ffc1", X"f918", X"ff28", X"0ab6", X"0cd8", X"fab1", X"1a73", X"efe3", X"fca4", X"059c",
                                                        X"0c75", X"20b4", X"0172", X"dbd0", X"0a92", X"f6dd", X"0339", X"109f", X"f8f5", X"0684", X"0abb", X"f814", X"0f94", X"ef26",
                                                        X"20e1", X"d9f2", X"0755", X"f1c9", X"f3bd", X"1bb4", X"1930", X"00c2", X"008a", X"f9b8", X"0090", X"fc1f", X"0951", X"ff20",
                                                        X"ffea", X"0add", X"edd9", X"e3b3", X"0b1c", X"f7c3", X"fc8a", X"14df", X"dfb8", X"22bc", X"1f53", X"0c69", X"f840", X"ffc4",
                                                        X"f95c", X"fe64", X"07b1", X"e2d5", X"0ba9", X"e6b9", X"15f5", X"13d3", X"f67a", X"f834", X"fd1c", X"ec6c", X"ef7a", X"106a",
                                                        X"fcd1", X"0c0d", X"0df7", X"f92f", X"fc98", X"eb5f", X"00e6", X"e84a", X"0ee0", X"f54c", X"f8af", X"19c3", X"f2d1", X"1c10",
                                                        X"ff95", X"0331", X"0d28", X"0545", X"e37e", X"fbbf", X"030b", X"e6c5", X"211a", X"ef8e", X"fae2", X"0835", X"f4d1", X"ef51",
                                                        X"18cf", X"da36", X"0ba1", X"0cd6", X"f822", X"0bc4", X"fc42", X"0f27", X"fba7", X"1913", X"e7d6", X"ff06", X"0bdb", X"efd3",
                                                        X"ec49", X"1b9e", X"0a4e", X"ed01", X"16d1", X"0705", X"e63d", X"0656", X"fa1d", X"e61a", X"16ca", X"063b", X"d4b6", X"f980",
                                                        X"0160", X"0010", X"1607", X"20eb", X"28e9", X"19aa", X"218e", X"0ddd", X"00d6", X"fc8c", X"1127", X"e9cf", X"0a7c", X"2725",
                                                        X"e5ba", X"274f", X"0789", X"0c6b", X"1b30", X"db5d", X"049d", X"0919", X"0968", X"eff0", X"efcd", X"047c", X"f900", X"07b9",
                                                        X"0362", X"f9f7", X"ef5d", X"f36b", X"f269", X"e4a2", X"02a4", X"2f71", X"ea25", X"150e", X"0fab", X"fc77", X"f0d5", X"07e8",
                                                        X"1b1e", X"1106", X"000a", X"032d", X"e017", X"fb25", X"eeb3", X"fa15", X"1427", X"e92d", X"14e5", X"1959", X"e198", X"0059",
                                                        X"f4d3", X"ec73", X"fa87", X"14cb", X"ffa3", X"1bcc", X"d732", X"e4b7", X"0b80", X"1f75", X"0dcc", X"2100", X"eb16", X"0c05",
                                                        X"d58c", X"f382", X"0b64", X"ff57", X"fb1d", X"faaf", X"007e", X"185b", X"e95c", X"0d12", X"f45d", X"001c", X"f746", X"edc8",
                                                        X"21f9", X"fc9b", X"0119", X"e1f9", X"0f80", X"fed3", X"fd17", X"0b9a", X"160e", X"0dd9", X"ff68", X"e39e", X"f788", X"0851",
                                                        X"0672", X"06d7", X"f159", X"e89c", X"00c3", X"eb57", X"0783", X"04aa", X"065c", X"f44d", X"0b97", X"121b", X"1398", X"ccf5",
                                                        X"dd85", X"0bab", X"f802", X"0909", X"ea6b", X"eda0", X"028b", X"fa3d", X"26e1", X"13ee", X"f2a7", X"fa4d", X"f9d8", X"0189",
                                                        X"cc62", X"e375", X"fafa", X"2460", X"06ed", X"ddfb", X"2a50", X"0dd6", X"0374", X"f9e2", X"fc03", X"1c8b", X"0bb3", X"0d8a",
                                                        X"015e", X"0c65", X"168a", X"f89b", X"05b0", X"0f92", X"ffbd", X"f619", X"eb98", X"0e02", X"0afa", X"ef70", X"1df4", X"fef0",
                                                        X"195e", X"f405", X"0677", X"19c5", X"eb9e", X"0405", X"e364", X"eb2b", X"eb79", X"0441", X"0f4e", X"1bdf", X"f57a", X"fb25",
                                                        X"09c7", X"f94d", X"12cd", X"014e", X"fea8", X"0227", X"fe9b", X"05b8", X"f976", X"fe79", X"ffc6", X"13f0", X"df3a", X"0dc1",
                                                        X"2b0d", X"2139", X"19ec", X"0ddc", X"fad6", X"fa4e", X"0b7c", X"e981", X"07ba", X"0755", X"ff86", X"f688", X"246e", X"011f",
                                                        X"ded6", X"f468", X"1051", X"1ab7", X"0345", X"f558", X"0295", X"2326", X"f265", X"0181", X"dc72", X"0613", X"08c5", X"eea8",
                                                        X"fa77", X"16e4", X"e42a", X"fbd0", X"1b41", X"128a", X"2437", X"0cc5", X"fa2c", X"f0c3", X"f27e", X"01b1", X"ff95", X"fa64",
                                                        X"05a1", X"fb0e", X"f30a", X"f046", X"fb7c", X"13c6", X"fa40", X"f79c", X"0a78", X"1756", X"f8d9", X"0c9b", X"f024", X"04ac",
                                                        X"227c", X"e5a4", X"f9a5", X"0ea7", X"e5da", X"0c93", X"0d45", X"04c2", X"e2eb", X"0af0", X"ea98", X"085f", X"036c", X"f843",
                                                        X"061e", X"f052", X"ee12", X"f49c", X"07f0", X"0380", X"03dc", X"f100", X"d4da", X"e3bc", X"f7e2", X"08d4", X"f95e", X"04f0",
                                                        X"0a21", X"f4c7", X"fa65", X"fee9", X"124d", X"ed73", X"157c", X"0cbd", X"055a", X"05c9", X"0d34", X"f0ed", X"0983", X"ea2f",
                                                        X"f89b", X"f877", X"1625", X"0807", X"e57a", X"2c87", X"cb3a", X"f993", X"ed95", X"0806", X"0f7a", X"fee8", X"09ec", X"0a32",
                                                        X"0d09", X"dbcb", X"df81", X"0438", X"f381", X"0c5a", X"0dba", X"05e2", X"e57c", X"ffe3", X"0916", X"fd30", X"f97e", X"f121",
                                                        X"eb9e", X"ebd7", X"f9fb", X"f30b", X"0382", X"0630", X"f31f", X"0d77", X"1905", X"17b1", X"cdd0", X"07dd", X"f3e8", X"0e52",
                                                        X"1437", X"0184", X"1b6f", X"02e4", X"0a9e", X"08bc", X"0293", X"2218", X"09e1", X"13c0", X"04e7", X"f88f", X"074b", X"df9b",
                                                        X"f968", X"e224", X"2bcc", X"f9d6", X"f344", X"0748", X"ff65", X"fc9d", X"031a", X"e5c4", X"03ec", X"0b92", X"ffb9", X"25bc",
                                                        X"eae9", X"1928", X"0cce", X"0afe", X"033f", X"e5b7", X"ff10", X"0dab", X"0186", X"002e", X"1e36", X"0e16", X"f7f1", X"f894",
                                                        X"124c", X"07c8", X"fb3c", X"ea7b", X"f7ed", X"0541", X"fd8d", X"febc", X"d733", X"e1ce", X"183d", X"f59a", X"0964", X"00dc",
                                                        X"1228", X"ff47", X"0c4d", X"e5cf", X"0fea", X"f654", X"0c6c", X"19b8", X"f5b4", X"25b9", X"da23", X"12fa", X"ecc0", X"d407",
                                                        X"1856", X"f2e4", X"fd32", X"eb4a", X"034f", X"0ff1", X"ff6b", X"09e5", X"06e9", X"0ad7", X"11d6", X"2f37", X"14b5", X"f3bd",
                                                        X"1918", X"0454", X"ff0b", X"12a1", X"1ccd", X"f919", X"0386", X"1c6b", X"05fc", X"f5b7", X"f685", X"0a42", X"fb4f", X"fd4f",
                                                        X"e9c6", X"1df8", X"121f", X"e974", X"00cc", X"fb51", X"10f5", X"19f4", X"f7f9", X"2d36", X"f639", X"f538", X"fa5f", X"ff95",
                                                        X"0da4", X"ff97", X"0b50", X"f487", X"fdc8", X"214e", X"0b4d", X"0b17", X"f7ed", X"08d6", X"e282", X"f17a", X"1df2", X"fc72",
                                                        X"0255", X"e39a", X"ff92", X"ebc2", X"e6e1", X"169d", X"2083", X"0638", X"2426", X"049a", X"f1ae", X"f50e", X"ea1a", X"f118",
                                                        X"ecac", X"dc53", X"eecd", X"f268", X"1788", X"ef8b", X"e78c", X"1da7", X"12e3", X"28e7", X"0143", X"1005", X"fe17", X"f44e",
                                                        X"05f0", X"0224", X"d12d", X"ea14", X"fdac", X"fc23", X"e21a", X"2274", X"1590", X"2bef", X"0147", X"0053", X"2d1b", X"f925",
                                                        X"0a0e", X"f1a5", X"ead0", X"0e8e", X"106c", X"d2b3", X"f7e1", X"ecb5", X"f86c", X"ff44", X"0dbf", X"0f7e", X"fa4f", X"18c0",
                                                        X"f5ac", X"02a4", X"defe", X"f154", X"f955", X"0a45", X"eba2", X"f89a", X"0d29", X"0126", X"137c", X"f04f", X"e471", X"ed1f",
                                                        X"ed80", X"0199", X"079b", X"0bc8", X"0f4f", X"f469", X"072c", X"156b", X"eb7d", X"e2b8", X"fa87", X"f9f9", X"14c3", X"fb5f",
                                                        X"1a1a", X"ded6", X"1c9d", X"0848", X"f53a", X"f95a", X"11b6", X"fc12", X"f5c1", X"097f", X"1383", X"ecd3", X"04e5", X"1206",
                                                        X"1957", X"da16", X"0548", X"0119", X"33e0", X"f768", X"f864", X"fce3", X"0cb8", X"fb5f", X"0bb6", X"1396", X"f1b6", X"0b0f",
                                                        X"0088", X"ec8a", X"0ee2", X"fcf1", X"1273", X"eb8d", X"038e", X"f473", X"0458", X"fbce", X"1e49", X"04e5", X"025c", X"2102",
                                                        X"06aa", X"11f6", X"06c4", X"0af8", X"1f6a", X"0598", X"11e8", X"eda6", X"f6fb", X"e0f8", X"f7f5", X"0c9d", X"0478", X"e8e9",
                                                        X"11f7", X"27af", X"f8ec", X"02fc", X"efde", X"0568", X"fcf9", X"0232", X"f966", X"193d", X"f48b", X"03f5", X"0102", X"fe65",
                                                        X"2182", X"0bdc", X"1029", X"0877", X"fb11", X"0cd4", X"e25b", X"0916", X"fb4f", X"f4dc", X"f621", X"10b0", X"ef97", X"fdb0",
                                                        X"0426", X"07a0", X"1359", X"efbf", X"0847", X"e8f5", X"cd66", X"e2d6", X"0b1f", X"05a5", X"f93f", X"fdbc", X"028e", X"05a0",
                                                        X"e5f2", X"034e", X"2d51", X"0ca9", X"0fc6", X"f945", X"1ff7", X"0317", X"1f83", X"fecd", X"ec28", X"042a", X"015c", X"e871",
                                                        X"db4c", X"e036", X"f1a3", X"133f", X"07b6", X"068c", X"06ed", X"e878", X"198b", X"1418", X"1ef1", X"f3fa", X"15b3", X"1493",
                                                        X"063f", X"13c8", X"f087", X"f00f", X"e1b9", X"000a", X"018c", X"01ad", X"f93c", X"f877", X"f6f1", X"f001", X"ce4e", X"e5e5",
                                                        X"ed48", X"0125", X"f51e", X"f87c", X"17a9", X"f9e7", X"02df", X"fc22", X"09d9", X"0d78", X"05a2", X"11aa", X"19b8", X"133b",
                                                        X"d40d", X"0777", X"dfe1", X"19a1", X"fbff", X"0b1c", X"f13d", X"0f38", X"0551", X"172c", X"089c", X"f0e4", X"1208", X"f9fc",
                                                        X"f6c9", X"e90b", X"eb27", X"de5e", X"f78d", X"fe9a", X"076a", X"1120", X"0332", X"0522", X"3172", X"18d0", X"f854", X"1aa1",
                                                        X"f39f", X"0671", X"fd70", X"e8f7", X"1fff", X"e265", X"0d88", X"0342", X"ea72", X"109c", X"194d", X"1fc0", X"fc8a", X"fa87",
                                                        X"f665", X"fd66", X"f81c", X"f39d", X"f116", X"f10c", X"f159", X"e3e5", X"150b", X"e826", X"007b", X"fccf", X"e78f", X"2488",
                                                        X"f808", X"085f", X"f821", X"ddbd", X"f4f9", X"057b", X"e7da", X"1813", X"e15e", X"eafc", X"1b45", X"f01e", X"fadd", X"e314",
                                                        X"f49d", X"05f2", X"f1c2", X"22d8", X"fc3f", X"058a", X"ece9", X"f756", X"009a", X"2f77", X"e726", X"e69d", X"fe73", X"ef94",
                                                        X"0a91", X"e64b", X"fe0e", X"1158", X"15ae", X"05c8", X"f00f", X"faff", X"e94d", X"fee4", X"f033", X"ebd9", X"184b", X"0bc3",
                                                        X"f9ee", X"01b2", X"f8f4", X"0d99", X"175f", X"0c94", X"179d", X"1359", X"0b44", X"e42e", X"fcb0", X"f068", X"039a", X"2844",
                                                        X"07a6", X"e956", X"fc12", X"e879", X"f8bd", X"f065", X"ff10", X"1b0d", X"0d5e", X"feff", X"fe3f", X"f81f", X"f385", X"f84e",
                                                        X"04ce", X"ffeb", X"f765", X"fbc9", X"0a9b", X"ff49", X"23b9", X"fc5b", X"22ae", X"0b39", X"1312", X"0b0d", X"127e", X"04f8",
                                                        X"0725", X"0158", X"0724", X"12bb", X"ee72", X"0870", X"01f6", X"f477", X"00ac", X"058f", X"f669", X"0d54", X"f62f", X"ed78",
                                                        X"fd4d", X"fc51", X"1375", X"fe7d", X"f7cd", X"0145", X"03f5", X"0a3a", X"fd5d", X"f462", X"05ac", X"231b", X"d594", X"1a2b",
                                                        X"e817", X"ee09", X"0d7f", X"00be", X"1794", X"0862", X"0b21", X"14f2", X"16c5", X"064d", X"fee9", X"1967", X"0405", X"0139",
                                                        X"007f", X"f968", X"04c2", X"ed00", X"2f83", X"f8bf", X"030e", X"f546", X"1508", X"0ec6", X"bb86", X"e856", X"fece", X"19ae",
                                                        X"f637", X"ec43", X"07de", X"efae", X"d8d1", X"0a70", X"01e2", X"0a94", X"12e5", X"eb7a", X"203a", X"1a19", X"e90a", X"ddeb",
                                                        X"ee31", X"1635", X"1253", X"0bbf", X"1e11", X"08a3", X"d626", X"fe18", X"271e", X"f88f", X"27a6", X"fbdb", X"07cc", X"fea8",
                                                        X"0500", X"dcf2", X"ee79", X"11b4", X"1587", X"f694", X"0b6f", X"e2b5", X"ecc8", X"d13e", X"241a", X"0ff2", X"06b3", X"cfca",
                                                        X"fc88", X"1549", X"fc2e", X"e66e", X"0501", X"f740", X"1242", X"f140", X"de92", X"f85e", X"1185", X"0fa6", X"0d51", X"1108",
                                                        X"1d4e", X"00d3", X"155c", X"0e86", X"e770", X"eb10", X"0357", X"0a28", X"eefe", X"fddf", X"16a6", X"fc31", X"fa05", X"0d87",
                                                        X"0f5f", X"1289", X"1b34", X"ee9d", X"fccf", X"0061", X"d0cc", X"fd3f", X"0807", X"0e30", X"f48d", X"26d2", X"0976", X"22c1",
                                                        X"13cf", X"0ca3", X"0b9a", X"0d59", X"094b", X"04b0", X"0bd8", X"0836", X"0b86", X"f694", X"016c", X"f413", X"0867", X"0d27",
                                                        X"1c1a", X"1bce", X"00b1", X"054f", X"f9c4", X"0f77", X"140f", X"f7c4", X"fcec", X"e46b", X"d444", X"d85d", X"e748", X"e643",
                                                        X"044b", X"e55c", X"0476", X"09cb", X"0d13", X"2bfd", X"173c", X"077d", X"fa53", X"0f23", X"deaa", X"f4fc", X"1e59", X"e8d8",
                                                        X"f8ad", X"e85a", X"0c61", X"f707", X"d2d8", X"efcf", X"19c7", X"10db", X"f9dd", X"fd4f", X"f6fe", X"f6e3", X"1342", X"fb2b",
                                                        X"d551", X"e676", X"fec8", X"e263", X"04e3", X"07bf", X"f437", X"febf", X"fde8", X"028c", X"1d14", X"fa22", X"0bb4", X"f9ab",
                                                        X"f383", X"1238", X"0536", X"eb30", X"0403", X"f9e2", X"eb68", X"fa63", X"fa4a", X"158f", X"0ab5", X"185b", X"e6da", X"150b",
                                                        X"fd7e", X"eea3", X"016a", X"fa19", X"2177", X"fa89", X"08df", X"e1e9", X"f6f5", X"f0f9", X"03aa", X"165f", X"2c99", X"fb84",
                                                        X"00ae", X"f513", X"0636", X"014a", X"e7ce", X"f9f5", X"e08e", X"2084", X"f228", X"036d", X"f722", X"0b30", X"1908", X"e3e8",
                                                        X"e3f0", X"feda", X"fa67", X"0e8c", X"fa18", X"001e", X"ebd7", X"2ceb", X"19c0", X"04bd", X"1431", X"fa60", X"edc5", X"fe1a",
                                                        X"16a5", X"2e9c", X"e9c6", X"01bf", X"ffa7", X"ef95", X"fc24", X"069f", X"0731", X"2054", X"fefe", X"fb3a", X"0b9b", X"e743",
                                                        X"1151", X"fc77", X"e015", X"203e", X"10ab", X"ee80", X"18d2", X"072b", X"0dfb", X"0127", X"04f1", X"1d1e", X"db7b", X"1988",
                                                        X"faa8", X"f770", X"f307", X"1ced", X"21f7", X"10de", X"fe26", X"faba", X"fe2f", X"02c8", X"0dd6", X"f21f", X"205e", X"118b",
                                                        X"17ae", X"f81e", X"f4e8", X"0070", X"f343", X"0995", X"ffe8", X"f73a", X"fdeb", X"e5ab", X"1525", X"12f7", X"f5a7", X"dbe3",
                                                        X"0ee1", X"1e3e", X"0226", X"1d8a", X"fde9", X"00d9", X"175a", X"058f", X"d5e6", X"fbdb", X"fe24", X"fa04", X"0438", X"ff9f",
                                                        X"fe92", X"e6c8", X"fb27", X"f843", X"e16f", X"08c5", X"f486", X"221f", X"1ca3", X"f76f", X"ff15", X"e8a7", X"f0c3", X"0039",
                                                        X"1697", X"0a88", X"0d49", X"fb5f", X"fd19", X"1b07", X"c61e", X"fdcc", X"ffda", X"1ec6", X"ff6d", X"ef1a", X"008f", X"f231",
                                                        X"1247", X"f923", X"ee38", X"16d9", X"f089", X"eae8", X"f693", X"e48a", X"f08a", X"0a6e", X"1ae9", X"0682", X"f448", X"1c16",
                                                        X"e6f8", X"f959", X"006f", X"0c29", X"0e69", X"14ce", X"f45d", X"01d4", X"1b1f", X"16a4", X"d9d2", X"083c", X"feee", X"f526",
                                                        X"ef68", X"1fcf", X"e6c5", X"ffb5", X"0acb", X"025d", X"03c4", X"0aaa", X"01ae", X"05eb", X"fbc6", X"04a7", X"efe6", X"d772",
                                                        X"15c4", X"1041", X"101b", X"f570", X"125c", X"f0bf", X"fc9c", X"065a", X"0162", X"ef80", X"05c0", X"e5d2", X"ef55", X"00bc",
                                                        X"d488", X"edd4", X"065d", X"0794", X"f78b", X"ee0b", X"ea84", X"0b43", X"18a3", X"014c", X"0d16", X"fe22", X"fae9", X"03b4",
                                                        X"ecbd", X"1dbb", X"277b", X"f9a4", X"1ad3", X"fc61", X"17ab", X"df18", X"fdf2", X"1843", X"f693", X"22fa", X"f49f", X"0556",
                                                        X"e058", X"e7bd", X"091c", X"f61f", X"02f4", X"f81b", X"fdd3", X"ee0b", X"01a5", X"e648", X"e750", X"1324", X"faf2", X"0028",
                                                        X"ee4e", X"0427", X"f6b5", X"0848", X"0024", X"085a", X"f926", X"ec6f", X"014f", X"015a", X"2459", X"fc5d", X"f2a8", X"f5b6",
                                                        X"113e", X"2b70", X"0027", X"f605", X"00db", X"f46e", X"ea2b", X"ebfe", X"f959", X"1cac", X"f7b7", X"0095", X"0289", X"f93c",
                                                        X"10bc", X"eb92", X"f760", X"e546", X"e9c0", X"e9d3", X"0c81", X"f31b", X"1c85", X"1747", X"2389", X"e5c5", X"1686", X"ff32",
                                                        X"ef01", X"20fb", X"db93", X"ffd5", X"f36c", X"0cad", X"fe56", X"0fcb", X"04da", X"0dbc", X"1afb", X"f63e", X"e6a4", X"1ca9",
                                                        X"eec0", X"178b", X"1af5", X"0572", X"f56e", X"f7eb", X"074d", X"fb76", X"1515", X"09cd", X"1449", X"00cb", X"f998", X"3463",
                                                        X"1baa", X"eac6", X"0b0e", X"f0e1", X"05eb", X"1cb3", X"f132", X"1d4f", X"f842", X"d7ae", X"e79e", X"e7f8", X"f761", X"f3a6",
                                                        X"f343", X"fefb", X"f65f", X"1903", X"fd62", X"f453", X"073a", X"12b6", X"02f3", X"f65f", X"0c3b", X"f613", X"2146", X"f750",
                                                        X"15c9", X"f538", X"f491", X"1d96", X"df3c", X"f20e", X"f825", X"fc21", X"fa63", X"e298", X"e962", X"02b0", X"ec03", X"f7b2",
                                                        X"0559", X"0860", X"0264", X"fa2f", X"0f27", X"011f", X"d80d", X"fcb2", X"feab", X"eddd", X"0e97", X"0615", X"e5ed", X"00c4",
                                                        X"0619", X"e306", X"1e83", X"0ced", X"092e", X"0b2f", X"0d7d", X"d9e9", X"15a8", X"09f6", X"009d", X"1cfc", X"f13a", X"f975",
                                                        X"fc46", X"06cc", X"e26d", X"003f", X"1c35", X"fdc6", X"f55b", X"0d0e", X"135b", X"17c9", X"d949", X"017f", X"f1fa", X"fce6",
                                                        X"f2dd", X"ff71", X"0c86", X"f796", X"0265", X"ec24", X"026b", X"16ef", X"df79", X"0037", X"0072", X"f5a1", X"1243", X"ffc3",
                                                        X"1464", X"1063", X"2765", X"2dca", X"e8cb", X"1e55", X"fd9a", X"f4dc", X"f1c3", X"0e30", X"fe2e", X"f8ce", X"1088", X"057d",
                                                        X"081d", X"fa23", X"011a", X"f233", X"f7f1", X"077c", X"f492", X"ff08", X"0b28", X"0863", X"0ab0", X"0ba2", X"01ad", X"f456",
                                                        X"1002", X"09b8", X"0133", X"e4ff", X"f4a9", X"edb4", X"165c", X"0754", X"049e", X"1f4b", X"2611", X"11fc", X"09f4", X"0a4f",
                                                        X"15b3", X"047a", X"e92d", X"0bdf", X"eac0", X"cd06", X"0130", X"e285", X"00b2", X"06b8", X"0ac4", X"f46e", X"2a51", X"1b1d",
                                                        X"0019", X"ffaf", X"1415", X"feae");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"feae";
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

