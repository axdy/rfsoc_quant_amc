-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block452.vhd
-- Created: 2023-08-04 11:27:29
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block452
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage95/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block452 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block452;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block452 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"e072", X"2dfa", X"ff90", X"0e0a", X"2130", X"0f76",
                                                        X"b1d9", X"e839", X"23a5", X"2aa7", X"b542", X"f373", X"fe69", X"f6ba", X"c876", X"044d", X"fb01", X"053e", X"1033", X"012d",
                                                        X"08ec", X"0a73", X"f495", X"0c71", X"d761", X"e166", X"07d7", X"f7e3", X"df36", X"f798", X"fbef", X"f197", X"1d37", X"3585",
                                                        X"020c", X"df16", X"0e92", X"21ef", X"0956", X"259e", X"1c49", X"1416", X"d776", X"0069", X"fbc8", X"f4b4", X"0a55", X"e5e7",
                                                        X"10f5", X"3708", X"d877", X"ebd8", X"0c8a", X"223f", X"bdd9", X"f1ea", X"1175", X"0faf", X"dfc1", X"0b3f", X"fb65", X"d594",
                                                        X"f92e", X"ea11", X"e5bc", X"3fd4", X"ee3d", X"d431", X"1b3f", X"0bb0", X"d53c", X"baca", X"1bcb", X"137b", X"f594", X"10ed",
                                                        X"0512", X"d7bb", X"dcf3", X"259b", X"d728", X"2a92", X"1d01", X"1188", X"1e3d", X"246e", X"cde8", X"327c", X"ed82", X"3167",
                                                        X"ce28", X"1b5c", X"f8ff", X"dbe1", X"fc10", X"0e69", X"f778", X"48d9", X"2c32", X"1712", X"0095", X"fba3", X"0caa", X"c2f9",
                                                        X"0854", X"e5fb", X"c319", X"142b", X"ee2a", X"dfcc", X"e200", X"e41d", X"fc55", X"4354", X"03ce", X"fbc2", X"060b", X"040f",
                                                        X"de2a", X"2409", X"d8cc", X"e64f", X"c17e", X"10e2", X"1486", X"d35f", X"e981", X"065a", X"fdbe", X"ee0f", X"34e0", X"e0e3",
                                                        X"f562", X"cf2c", X"0fee", X"d148", X"f387", X"446e", X"e52d", X"f7f3", X"f3f4", X"fc3b", X"fd5b", X"0324", X"ed8a", X"30aa",
                                                        X"f7c8", X"f79e", X"0181", X"05a1", X"c3f1", X"0719", X"f47f", X"e3e8", X"fb94", X"f015", X"f3cd", X"dcfa", X"f841", X"1efb",
                                                        X"0b11", X"1697", X"2cfb", X"0adc", X"f51b", X"f6f0", X"e34b", X"e1cd", X"01f1", X"0672", X"b608", X"0403", X"e295", X"e182",
                                                        X"cde3", X"129b", X"0642", X"256f", X"e4e6", X"ecdd", X"ec07", X"faa5", X"06c1", X"c610", X"d6f1", X"fc92", X"dd9b", X"04ff",
                                                        X"f2b7", X"e5ab", X"f8ef", X"2e00", X"1385", X"34e7", X"4583", X"2104", X"fb8f", X"fcb4", X"f116", X"1dad", X"be53", X"db01",
                                                        X"bf13", X"077e", X"f04e", X"023d", X"f055", X"082f", X"d3fa", X"f9bc", X"e95f", X"23ad", X"042d", X"eb23", X"afab", X"2389",
                                                        X"2047", X"3aea", X"c23e", X"e24d", X"01ce", X"f50f", X"fa11", X"fefd", X"f505", X"26bb", X"5ad8", X"016f", X"fe11", X"16d0",
                                                        X"0052", X"f580", X"e50a", X"e0f9", X"e135", X"00f7", X"e431", X"d8b0", X"e6d7", X"f49e", X"f5e9", X"03bf", X"daac", X"e4b5",
                                                        X"19e0", X"e67d", X"0e7d", X"f502", X"d63b", X"3cbc", X"f0a3", X"f4be", X"f9b1", X"e6c7", X"e6b3", X"1c86", X"d0dc", X"15bf",
                                                        X"e634", X"14d9", X"15f0", X"06df", X"e144", X"d50b", X"16e9", X"41db", X"d057", X"fdfc", X"dd11", X"06f1", X"0bbc", X"e6ca",
                                                        X"eb49", X"2e47", X"0d19", X"f08f", X"0f8a", X"e8fd", X"eaea", X"fad3", X"de46", X"079b", X"c4c7", X"df07", X"f0ce", X"0d7b",
                                                        X"eec2", X"0c8a", X"fbea", X"37f1", X"3200", X"eb07", X"00d7", X"ed91", X"e6ac", X"f3e1", X"ef15", X"1c6c", X"044c", X"2146",
                                                        X"f114", X"e532", X"02ed", X"12fa", X"ec7a", X"2718", X"fcd8", X"1a3d", X"f0eb", X"15ec", X"cabf", X"019c", X"0a12", X"d250",
                                                        X"bff6", X"ece8", X"efbc", X"f345", X"f3ac", X"e608", X"d6f2", X"1440", X"0e0d", X"0fe0", X"fd60", X"1fac", X"f1f8", X"f79b",
                                                        X"dba3", X"4bb9", X"e940", X"11e4", X"ed2b", X"f1ad", X"ef84", X"fcec", X"fc45", X"35c3", X"e92f", X"d8cb", X"efd4", X"f824",
                                                        X"ca56", X"1eda", X"2b79", X"32e1", X"f0bd", X"1587", X"1054", X"fe22", X"f379", X"ffd5", X"f9f1", X"ebaa", X"074a", X"24cc",
                                                        X"f062", X"d8f4", X"b3a7", X"3087", X"f850", X"d82b", X"f240", X"0ebc", X"f41c", X"ee39", X"e7fa", X"1b9f", X"0318", X"cfb1",
                                                        X"f1e0", X"1488", X"0410", X"ea9f", X"f238", X"1d17", X"e13c", X"4456", X"c7f8", X"f3f8", X"ef1d", X"e173", X"d915", X"1f96",
                                                        X"11bb", X"366e", X"ed16", X"1502", X"0f7f", X"259b", X"eafa", X"3343", X"ecba", X"e094", X"f9e4", X"f9f1", X"0c2a", X"e47c",
                                                        X"06ed", X"277c", X"d0aa", X"1b31", X"4d77", X"ffb7", X"1a54", X"1d50", X"e8df", X"e7c6", X"ecdd", X"fea3", X"ec83", X"fa2a",
                                                        X"f211", X"f540", X"0119", X"fd0b", X"e743", X"2e55", X"1eb9", X"0573", X"1416", X"f7cb", X"0e49", X"02c9", X"17fc", X"2295",
                                                        X"e35e", X"ecb7", X"df00", X"d994", X"f5ab", X"e9a4", X"f2bc", X"28bf", X"e2d3", X"db20", X"06ae", X"2390", X"c65c", X"e03f",
                                                        X"cb39", X"e66b", X"c68d", X"0da5", X"f311", X"d772", X"0598", X"10b2", X"0797", X"e58f", X"f37d", X"f205", X"0d37", X"ddb5",
                                                        X"c75f", X"2935", X"3564", X"329c", X"e962", X"f1fe", X"09a8", X"fc91", X"fce7", X"3384", X"cd3e", X"44ef", X"2ab2", X"219d",
                                                        X"f574", X"1fa1", X"ca62", X"e751", X"1937", X"e664", X"e7ba", X"1f66", X"f9dd", X"de12", X"f743", X"01ac", X"fcd9", X"f8a3",
                                                        X"2ab8", X"0df6", X"1730", X"2dec", X"ed9b", X"280d", X"19fa", X"2d60", X"fceb", X"f6e5", X"ee53", X"0959", X"04dd", X"0801",
                                                        X"ea0d", X"2843", X"48ef", X"07ed", X"09cc", X"ebe7", X"c98a", X"2072", X"c855", X"fa31", X"c7fb", X"0aec", X"e31d", X"f58f",
                                                        X"0293", X"f146", X"e81e", X"24d8", X"e2e9", X"16e8", X"0afc", X"088b", X"d75f", X"ff84", X"f379", X"168f", X"e193", X"0098",
                                                        X"e877", X"edd1", X"f6a9", X"23a4", X"012d", X"f96b", X"0021", X"f928", X"fc2d", X"0e50", X"d834", X"24b0", X"0be3", X"019c",
                                                        X"cddb", X"1e77", X"f2dd", X"d949", X"efeb", X"2248", X"e298", X"1573", X"3cfa", X"0b26", X"0802", X"e4bc", X"fcfa", X"f0d0",
                                                        X"0bfc", X"3770", X"ee8e", X"15b6", X"f2e5", X"e283", X"f118", X"dd0a", X"e949", X"4ca0", X"d6df", X"0be2", X"1285", X"0690",
                                                        X"d000", X"01ae", X"05dd", X"eaa7", X"bba0", X"f265", X"fcc8", X"f87f", X"ff9f", X"d274", X"f1b3", X"0a03", X"3284", X"0164",
                                                        X"fa11", X"0e7f", X"de20", X"d3f1", X"c3de", X"3367", X"dc65", X"f942", X"f2c0", X"f1a2", X"fe16", X"19d3", X"d6f4", X"3e8d",
                                                        X"4161", X"0aee", X"1fb2", X"16d5", X"e563", X"2ae5", X"2bc1", X"0515", X"e985", X"16c7", X"f2de", X"f533", X"fd61", X"eed5",
                                                        X"edcb", X"5d77", X"d373", X"31a3", X"ed28", X"0fdc", X"d755", X"d827", X"31a5", X"1e87", X"e91a", X"035c", X"f096", X"eaa4",
                                                        X"f86a", X"f599", X"ed47", X"fe1f", X"2925", X"f718", X"0866", X"262c", X"e1a8", X"35aa", X"db02", X"099d", X"b8fd", X"f972",
                                                        X"ebe6", X"e214", X"0518", X"e995", X"f8a2", X"49e3", X"01c5", X"1b76", X"249a", X"ef01", X"f268", X"dbe9", X"0184", X"19c9",
                                                        X"e3d1", X"12fb", X"e3e6", X"d6f2", X"d6dd", X"ff77", X"e5a1", X"f9fc", X"3403", X"e614", X"1888", X"f4a3", X"1348", X"e850",
                                                        X"cedb", X"380d", X"d6f8", X"0c8a", X"fe58", X"e547", X"df16", X"1f72", X"ea24", X"10c0", X"20dc", X"0e3b", X"0c6f", X"e3ae",
                                                        X"e527", X"1051", X"e378", X"2a16", X"b867", X"ed39", X"f781", X"ee6c", X"15ad", X"164e", X"e8d6", X"341c", X"eab2", X"e9ef",
                                                        X"ed14", X"f9dc", X"f25d", X"f314", X"1fcc", X"f1aa", X"c26b", X"0fbc", X"e056", X"092f", X"0539", X"0c2b", X"f38c", X"fe26",
                                                        X"2ecd", X"f6ab", X"087b", X"1c6f", X"da54", X"f9df", X"1980", X"0d02", X"f639", X"f9c3", X"fb9f", X"f0c9", X"0368", X"108a",
                                                        X"f8ef", X"12f2", X"f70f", X"1e9f", X"157d", X"3ebc", X"f4af", X"f49e", X"eff8", X"0378", X"ed68", X"0400", X"02e2", X"f017",
                                                        X"ee09", X"1880", X"d518", X"2c3e", X"fba0", X"f7e4", X"0615", X"ea35", X"b942", X"093b", X"1fcb", X"102b", X"d2ca", X"09d7",
                                                        X"f1d5", X"d5bb", X"efb2", X"2120", X"eeea", X"2687", X"4f59", X"1f62", X"f3e1", X"501d", X"e7cc", X"0e9c", X"05e4", X"0df8",
                                                        X"cc30", X"01ba", X"19a4", X"fcff", X"ea59", X"1db0", X"ea35", X"fded", X"3fe8", X"0a6c", X"0c5a", X"edf0", X"eb2c", X"11aa",
                                                        X"1254", X"07bb", X"d663", X"0f9c", X"fa0d", X"e469", X"f15c", X"e8c5", X"fde8", X"31bb", X"1370", X"db2d", X"06f8", X"2094",
                                                        X"d6f3", X"350f", X"f311", X"0f0a", X"edd1", X"f1f7", X"f0d7", X"ea95", X"0191", X"ee63", X"daa7", X"0360", X"e69e", X"20b3",
                                                        X"fff0", X"fade", X"d257", X"0c8d", X"dac2", X"dbd9", X"d4d9", X"edc8", X"fa53", X"fc94", X"0546", X"3449", X"d10c", X"35ba",
                                                        X"db0c", X"ddfb", X"f99b", X"3a90", X"dcda", X"ff2a", X"116a", X"332f", X"ed45", X"fdb5", X"fa6e", X"da6d", X"0496", X"f5a9",
                                                        X"f180", X"36c5", X"3624", X"ffbc", X"e6d9", X"fe64", X"01ec", X"d4cd", X"fbda", X"24fa", X"c3b5", X"143b", X"fa00", X"e558",
                                                        X"da14", X"d49a", X"e509", X"0b1e", X"dc75", X"2480", X"1ec0", X"e305", X"f3ba", X"0cfa", X"1f08", X"21e9", X"c870", X"09f5",
                                                        X"164c", X"ef0c", X"f6df", X"05ac", X"d2ba", X"f69d", X"0d9c", X"ee05", X"06f8", X"2f71", X"d380", X"017c", X"1f87", X"3f36",
                                                        X"de7d", X"1509", X"f3b3", X"e6ce", X"e5fe", X"07ec", X"ee27", X"2a6f", X"0218", X"0d43", X"1401", X"2c2b", X"eacb", X"f6cc",
                                                        X"ca86", X"1de6", X"cd62", X"00c6", X"01f1", X"ed57", X"0191", X"09c1", X"e4e1", X"f131", X"036d", X"f2eb", X"19b6", X"2332",
                                                        X"e783", X"1403", X"dc38", X"1224", X"b4aa", X"1024", X"f9f7", X"ea93", X"f1d8", X"f11b", X"df0e", X"408f", X"3b37", X"23da",
                                                        X"07f6", X"fce5", X"0d54", X"d534", X"3132", X"2885", X"b7f6", X"d4e8", X"f51f", X"f31d", X"f5e6", X"074e", X"e7ae", X"0729",
                                                        X"f9db", X"fd50", X"13c4", X"1187", X"c90d", X"0bf3", X"e15d", X"1688", X"0ff4", X"094f", X"d895", X"f52c", X"fc42", X"0870",
                                                        X"da42", X"4e16", X"f19f", X"0b8d", X"1ac2", X"eec1", X"fbdb", X"f6af", X"dee9", X"0680", X"c4ab", X"0cbd", X"f074", X"ef8d",
                                                        X"e3cd", X"1336", X"fc3e", X"f4f1", X"03c4", X"14a0", X"0b2c", X"ff23", X"ef49", X"11b1", X"266d", X"1ee5", X"dcd9", X"e6f5",
                                                        X"fe06", X"d75c", X"f67e", X"ff68", X"1734", X"2a58", X"2280", X"0419", X"f1c1", X"0b79", X"edcc", X"e02c", X"c78e", X"2c72",
                                                        X"d5a8", X"0b64", X"f59b", X"d983", X"ede8", X"008a", X"e910", X"eb03", X"3d5a", X"08c3", X"1a02", X"2658", X"d333", X"36f3",
                                                        X"0191", X"f28c", X"c791", X"13fc", X"f0d5", X"d684", X"0a66", X"30d6", X"e41d", X"0ccf", X"266b", X"0a76", X"049c", X"2f31",
                                                        X"d690", X"0a98", X"d719", X"e277", X"ec28", X"e81a", X"0672", X"d6b8", X"d7ea", X"3517", X"09ee", X"0c65", X"082c", X"0b7c",
                                                        X"1ff8", X"fb73", X"f0db", X"e7f6", X"2538", X"1a7b", X"d006", X"fcba", X"ea7f", X"e538", X"f83b", X"fafb", X"196a", X"0e1e",
                                                        X"2f85", X"e1b3", X"ed0f", X"ee11", X"d877", X"06b5", X"e3dd", X"1302", X"ce8d", X"0db0", X"ec18", X"dfce", X"e80a", X"ff52",
                                                        X"fdf7", X"11e3", X"fc6d", X"1871", X"1aa6", X"f4a9", X"edaa", X"0ba8", X"f4db", X"289e", X"fa70", X"2002", X"f2aa", X"f1c6",
                                                        X"0864", X"e2a2", X"e0f3", X"e5bd", X"2519", X"0c89", X"0ceb", X"2274", X"f918", X"da4b", X"3318", X"1140", X"d39f", X"df07",
                                                        X"f11c", X"fdd0", X"e3f3", X"1eb8", X"d535", X"3940", X"d24e", X"0022", X"fdc5", X"f8c1", X"d056", X"1643", X"ccd9", X"1634",
                                                        X"e861", X"1999", X"f239", X"e72a", X"fac1", X"23bf", X"e796", X"3966", X"0c5a", X"17e0", X"fac0", X"1656", X"e309", X"ca4c",
                                                        X"26f7", X"2066", X"df4b", X"0fae", X"095c", X"e02d", X"f36c", X"0cdb", X"e3dd", X"ff61", X"fa7a", X"2c52", X"0b1d", X"f92f",
                                                        X"eb82", X"ea93", X"d1dc", X"d7e8", X"acb9", X"0ad9", X"f3dc", X"deb7", X"0559", X"302b", X"f38b", X"2f7d", X"e86e", X"040d",
                                                        X"1ce4", X"f48f", X"c94c", X"0115", X"0a94", X"1f07", X"edc6", X"fe34", X"f4a1", X"ea7a", X"f783", X"f4af", X"1452", X"295a",
                                                        X"fca7", X"08bd", X"07d3", X"fcf5", X"c1e3", X"3791", X"1fd4", X"3566", X"e80a", X"f02c", X"f3c9", X"e833", X"edf3", X"0d97",
                                                        X"d92a", X"0eca", X"3cf2", X"06c8", X"0157", X"193e", X"e3ab", X"da2a", X"ecd4", X"0445", X"c417", X"e411", X"fa7b", X"ea55",
                                                        X"e1a7", X"fff0", X"cf54", X"fd31", X"2177", X"10c6", X"10ff", X"f235", X"1195", X"1bb1", X"ca40", X"f9c5", X"d7d4", X"1c00",
                                                        X"faa8", X"de34", X"ebec", X"19bd", X"0b78", X"052d", X"47b2", X"ebb1", X"0d7c", X"19e0", X"ed5d", X"178f", X"0455", X"1568",
                                                        X"e65c", X"f46c", X"f141", X"ec7d", X"ea53", X"2a5d", X"fe9a", X"08fb", X"edc3", X"f057", X"fe59", X"efd9", X"e572", X"d7ac",
                                                        X"0d38", X"f0b4", X"d03d", X"04d5", X"f332", X"f51f", X"e7f0", X"29b0", X"f494", X"eb48", X"0351", X"e96c", X"f149", X"12a0",
                                                        X"c28f", X"ca0c", X"fd3b", X"42ff", X"c704", X"f8c9", X"f474", X"d9d0", X"fbce", X"293c", X"fa8c", X"4293", X"f24a", X"110a",
                                                        X"0331", X"e7fd", X"f692", X"2de9", X"ec7d", X"ff9d", X"fdfe", X"0085", X"ebde", X"0206", X"fae6", X"0c0b", X"d975", X"f5fb",
                                                        X"f7cc", X"ee22", X"0fbe", X"2ec8", X"ddc0", X"1df1", X"dc15", X"21ee", X"b00d", X"fb4d", X"f1a1", X"d8ce", X"df27", X"043c",
                                                        X"05d8", X"170e", X"2f8c", X"f1a0", X"0e2a", X"2077", X"da7b", X"01c8", X"e0c7", X"d665", X"b4cb", X"ef64", X"f677", X"d547",
                                                        X"f490", X"2794", X"edfc", X"3934", X"31e5", X"fffc", X"204e", X"0fcc", X"edcb", X"180f", X"0514", X"2b5f", X"f1a6", X"f62b",
                                                        X"f492", X"dcfe", X"f420", X"eee7", X"e591", X"3da7", X"2f0c", X"e344", X"0c57", X"22bf", X"0014", X"c4eb", X"c33a", X"47ba",
                                                        X"acec", X"1023", X"e00c", X"f060", X"fc32", X"f578", X"e951", X"0140", X"3096", X"10b4", X"0afa", X"00ca", X"db0c", X"efa1",
                                                        X"1f08", X"f054", X"ee90", X"f589", X"eaad", X"e44d", X"efe8", X"d8b5", X"e9b0", X"4f62", X"3339", X"f631", X"0f4e", X"f243",
                                                        X"b3c5", X"1b7a", X"b81d", X"e8da", X"da33", X"f89f", X"fd79", X"fbb2", X"f555", X"0381", X"13c7", X"0de6", X"39dc", X"e7e6",
                                                        X"0740", X"2416", X"feab", X"052d", X"1487", X"0226", X"d32c", X"f6d6", X"e21b", X"e1b5", X"ec44", X"04d3", X"f20e", X"2b38",
                                                        X"2477", X"e251", X"00a5", X"2b91", X"ddef", X"fb9e", X"e620", X"2655", X"cd7a", X"13c4", X"fe39", X"f054", X"0496", X"053a",
                                                        X"db14", X"f8c2", X"1484", X"e7d1", X"fcd3", X"14c5", X"c6f2", X"0e56", X"2074", X"113c", X"c734", X"e32a", X"fc89", X"ea27",
                                                        X"f53e", X"f8a8", X"e5c5", X"38e1", X"2de1", X"07a6", X"fb3c", X"1910", X"f4e5", X"36b6", X"fb52", X"3c7f", X"c605", X"e229",
                                                        X"089c", X"fb12", X"dd39", X"3b84", X"fd30", X"f290", X"033f", X"dded", X"fe2a", X"3980", X"e32a", X"eb44", X"d25b", X"318f",
                                                        X"b778", X"15cf", X"0bc3", X"dc6e", X"e214", X"db4c", X"ff0b", X"1b6a", X"20ac", X"e9b6", X"16f3", X"f459", X"e366", X"e8c7",
                                                        X"bb7e", X"e78b", X"bea8", X"e4bd", X"d0b9", X"f188", X"e86a", X"2042", X"e2c0", X"2a93", X"eecd", X"e658", X"117c", X"26aa",
                                                        X"03c2", X"04ac", X"106a", X"1b56", X"0d20", X"ff82", X"e830", X"e0b0", X"ef8a", X"fb88", X"dfc2", X"402d", X"4cc5", X"1ef8",
                                                        X"19a7", X"105c", X"c34a", X"14d2", X"dc10", X"e75b", X"b879", X"e6c4", X"ea78", X"ce51", X"e82a", X"2872", X"153f", X"0235",
                                                        X"32d3", X"0c24", X"f5c6", X"da1a", X"cda2", X"0707", X"e29d", X"2550", X"d6df", X"fdff", X"d7dc", X"febf", X"ee51", X"fd42",
                                                        X"f309", X"2765", X"18f8", X"0ff2", X"f481", X"024b", X"ee8d", X"2078", X"2a89", X"0115", X"e868", X"126b", X"074f", X"e30c",
                                                        X"efbf", X"1267", X"ef29", X"2030", X"2cee", X"00cd", X"fc91", X"0ea0", X"b6fb", X"0ed3", X"d9eb", X"20d7", X"b99e", X"043b",
                                                        X"f583", X"f98d", X"ec35", X"fcc0", X"dd6d", X"2dbc", X"f25b", X"0cd8", X"f805", X"faad", X"cd21", X"3485", X"e6de", X"20a5",
                                                        X"d075", X"0914", X"e936", X"dcb6", X"ea4d", X"ca69", X"03c5", X"32eb", X"fce6", X"23d4", X"107b", X"08e4", X"e065", X"1b8d",
                                                        X"268a", X"2eaa", X"cd87", X"0f57", X"fad5", X"cdee", X"ead1", X"26b9", X"0a16", X"0db1", X"01fc", X"f060", X"fe9c", X"0432",
                                                        X"d58a", X"ff7e", X"1848", X"1680", X"f99a", X"f7b3", X"f21b", X"e39b", X"e5f1", X"e6af", X"e9e3", X"fc5b", X"e27f", X"f1c3",
                                                        X"0657", X"09e3", X"abb6", X"0e27", X"0b9e", X"1032", X"d517", X"177a", X"0080", X"00b7", X"0f6d", X"f915", X"d628", X"1b84",
                                                        X"e18e", X"0205", X"0ba4", X"0489", X"0660", X"f623", X"de07", X"2c23", X"dd58", X"f76f", X"0875", X"f25a", X"f122", X"2566",
                                                        X"f435", X"02d1", X"fdf0", X"f1bf", X"07e0", X"023a", X"cadd", X"1b5b", X"192a", X"f016", X"be97", X"0bac", X"f700", X"e692",
                                                        X"eeb7", X"3666", X"fc45", X"3a62", X"fc33", X"02bd", X"07bc", X"d545", X"f891", X"df11", X"0dbf", X"07e3", X"d014", X"fd92",
                                                        X"faad", X"e192", X"04df", X"2046", X"d01d", X"346f", X"28ec", X"0901", X"f73b", X"2ee8", X"bcda", X"1654", X"0366", X"0567",
                                                        X"fdfd", X"0dfe", X"fa0c", X"cebd", X"0c29", X"0ac1", X"d91a", X"03ed", X"f72e", X"124f", X"1070", X"17cb", X"f033", X"0e9b",
                                                        X"00bf", X"0878", X"d922", X"ea23", X"f55b", X"ee34", X"0f70", X"e664", X"ef85", X"eaf1", X"3dc1", X"ef3d", X"0e00", X"f4d7",
                                                        X"ce22", X"2784", X"ba81", X"0e61", X"d3d7", X"0757", X"fb2f", X"e8a6", X"f924", X"0f94", X"ea04", X"27e8", X"f310", X"0079",
                                                        X"0ef4", X"fea9", X"fa8e", X"07da", X"e10a", X"50b0", X"c84f", X"fc8a", X"0673", X"f31e", X"f1e7", X"0a41", X"fa7b", X"1885",
                                                        X"49b8", X"137b", X"ff86", X"e490", X"db2b", X"e9fc", X"28fc", X"0d93", X"de3b", X"10eb", X"e30e", X"f03b", X"fbcd", X"eecc",
                                                        X"f323", X"075e", X"29c6", X"07a3", X"ff4b", X"1551", X"106f", X"ed99", X"ff47", X"f131", X"c4b3", X"1cc3", X"27a8", X"d1ac",
                                                        X"0c43", X"298a", X"db60", X"2f9c", X"f659", X"e50d", X"0475", X"f8b9", X"e1e6", X"feb5", X"c17c", X"2b16", X"b909", X"f5ad",
                                                        X"faf1", X"ebe5", X"f0cd", X"01da", X"edb8", X"27e2", X"0090", X"f223", X"0b84", X"e201", X"e4e4", X"027a", X"151f", X"35f4",
                                                        X"d55d", X"dff0", X"f22f", X"e0f1", X"e3c7", X"edd7", X"1417", X"f1f2", X"0de8", X"2338", X"1365", X"f531", X"035a", X"ef4e",
                                                        X"dc37", X"1009", X"db05", X"f3e8", X"faf6", X"0557", X"d9a3", X"27d1", X"edaa", X"f275", X"0fca", X"d094", X"0a85", X"11a1",
                                                        X"d177", X"0311", X"2681", X"1b0e", X"ac58", X"0284", X"e13d", X"e08c", X"061f", X"2719", X"f448", X"5219", X"0fdc", X"f8d9",
                                                        X"0131", X"129b", X"e17e", X"f4cd", X"1ec8", X"34d6", X"f909", X"0337", X"e6ac", X"06c6", X"e14b", X"3296", X"f3c6", X"feeb",
                                                        X"fe76", X"0fd3", X"01cf", X"1d0d", X"d699", X"3cf8", X"1c28", X"d5c1", X"c2a9", X"ebf5", X"04ea", X"e08a", X"f1a9", X"e90c",
                                                        X"0990", X"2445", X"f54c", X"fa51", X"05a2", X"06ff", X"d19c", X"fb5f", X"270f", X"46ad", X"ea2e", X"f859", X"ef77", X"e2a4",
                                                        X"f5fd", X"dbea", X"f0af", X"2828", X"068f", X"04eb", X"edab", X"12fb", X"e65b", X"018c", X"c7db", X"067f", X"d409", X"0648",
                                                        X"f860", X"d8f3", X"d3c4", X"e6a4", X"07ec", X"2582", X"e8ca", X"f85c", X"f994", X"eeac", X"f320", X"138d", X"1fb0", X"0328",
                                                        X"ef0b", X"fdbb", X"efea", X"f4e0", X"0c4c", X"0743", X"dde6", X"00c5", X"082c", X"0989", X"fcd9", X"258e", X"bd82", X"09a6",
                                                        X"0d7b", X"12d0", X"ebcd", X"0a0e", X"f373", X"d714", X"f7cc", X"faa7", X"f063", X"fd1b", X"2d90", X"1bd5", X"01b1", X"1be0",
                                                        X"d45a", X"295a", X"0a5a", X"02f1", X"b399", X"1ae9", X"f321", X"d56f", X"cee3", X"1f5a", X"ff85", X"dbd9", X"3fae", X"e2f9",
                                                        X"fc04", X"003a", X"0528", X"2b19", X"c01f", X"14c1", X"a710", X"f220", X"0374", X"f929", X"f6ec", X"2849", X"0940", X"1dd4",
                                                        X"0bcd", X"f9a5", X"1247", X"ebc3", X"ca69", X"df45", X"209e", X"24d2", X"f5c7", X"09c7", X"f6a6", X"cd57", X"e562", X"1309",
                                                        X"12ff", X"ea60", X"146f", X"f917", X"110f", X"10c9", X"de43", X"3460", X"156d", X"e857", X"076e", X"1d9f", X"0483", X"f455",
                                                        X"f4c8", X"ed8d", X"eb22", X"4c18", X"12c7", X"e0ab", X"15a3", X"1430", X"c977", X"f4a3", X"2058", X"2f21", X"a56c", X"f56d",
                                                        X"0b33", X"ff16", X"e44b", X"15af");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"15af";
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

