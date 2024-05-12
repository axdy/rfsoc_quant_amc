-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block421.vhd
-- Created: 2023-08-04 11:27:25
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block421
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage67/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block421 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block421;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block421 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fd3b", X"e196", X"0a20", X"dd98", X"e79c", X"0dde",
                                                        X"0fe1", X"fc5c", X"e7ea", X"1041", X"023b", X"0600", X"ec6a", X"dbfc", X"014b", X"f222", X"0dd0", X"e834", X"0e06", X"f3b1",
                                                        X"fd0e", X"1078", X"1a47", X"e648", X"1761", X"ed9e", X"d0f1", X"f70b", X"eedf", X"ecee", X"fda1", X"07e4", X"fd0e", X"1611",
                                                        X"fbb1", X"e4f5", X"07f2", X"019d", X"fe65", X"f99c", X"0415", X"1561", X"0218", X"f1d7", X"f036", X"0644", X"061a", X"0c0c",
                                                        X"0021", X"12d3", X"f7e2", X"017d", X"dd2f", X"0ca6", X"fb17", X"e66b", X"f13d", X"dc4a", X"2501", X"0bd7", X"e1ce", X"ff53",
                                                        X"f348", X"0916", X"f749", X"df7c", X"f6fc", X"0ffa", X"044d", X"0f06", X"e5d6", X"e2c2", X"2378", X"0795", X"043d", X"005d",
                                                        X"184c", X"ef0e", X"0208", X"1528", X"065c", X"f523", X"e8a3", X"f7fb", X"109a", X"0768", X"0bc4", X"2473", X"1f82", X"e82f",
                                                        X"fc80", X"0954", X"ef2a", X"04dc", X"fe5f", X"2186", X"123c", X"0470", X"0d3e", X"f3fe", X"017c", X"0267", X"fc31", X"f96d",
                                                        X"20f0", X"3081", X"09e6", X"006b", X"f887", X"e9a1", X"1633", X"e716", X"0706", X"1c1e", X"2f47", X"0fab", X"0bf6", X"fa30",
                                                        X"1cd7", X"001e", X"e840", X"2e5b", X"03c2", X"0476", X"0ff8", X"f723", X"1bc4", X"2c8c", X"0421", X"24ae", X"29ef", X"0c63",
                                                        X"0326", X"e77c", X"eb0e", X"1dfb", X"169c", X"f61d", X"149f", X"13f0", X"1358", X"100d", X"eb68", X"f33c", X"083e", X"0ba2",
                                                        X"fd1b", X"0f40", X"0e58", X"e31a", X"1147", X"2d94", X"f104", X"0db3", X"daa5", X"0207", X"e141", X"fc46", X"14ca", X"0949",
                                                        X"0872", X"e2ea", X"ea74", X"e1c4", X"fd42", X"edd0", X"e69a", X"f53b", X"0029", X"356c", X"f75a", X"12c6", X"fcd7", X"08e1",
                                                        X"ff65", X"fdb7", X"1338", X"1089", X"1cd6", X"e9be", X"0b47", X"0dba", X"0205", X"31ec", X"e3a4", X"2e5c", X"08af", X"0b8b",
                                                        X"fefe", X"06b0", X"0935", X"ebe3", X"10fc", X"24d0", X"3949", X"10d2", X"1603", X"f445", X"f733", X"02c8", X"3288", X"32c0",
                                                        X"044b", X"f329", X"1a55", X"056a", X"f939", X"1cc9", X"17a2", X"ef72", X"2839", X"eee2", X"13ff", X"fe41", X"0ca1", X"3177",
                                                        X"258d", X"0316", X"226b", X"fee9", X"f56f", X"13f7", X"02bd", X"fc6c", X"fc07", X"1c8b", X"0ced", X"0da2", X"0c79", X"eb4b",
                                                        X"df30", X"0e24", X"0df1", X"1625", X"e245", X"24c9", X"f763", X"f1b8", X"0aa4", X"2339", X"0d75", X"fe39", X"fe28", X"f22f",
                                                        X"0dbb", X"1544", X"2b13", X"f57c", X"efac", X"fed0", X"e4d1", X"0628", X"ff55", X"1098", X"021f", X"1b33", X"163f", X"f9b3",
                                                        X"3d9a", X"fd74", X"0ab4", X"0510", X"1972", X"24b2", X"feaa", X"32c2", X"f332", X"0400", X"114b", X"0cc4", X"e06e", X"2a9f",
                                                        X"0299", X"21e1", X"0bd9", X"0cbf", X"0050", X"0be8", X"0c1c", X"3a5f", X"e9a5", X"15bf", X"2d41", X"0ad7", X"eb09", X"0a36",
                                                        X"0ea3", X"f668", X"160a", X"0704", X"363b", X"1471", X"0c2e", X"e256", X"08ec", X"f9dc", X"e88f", X"dfb2", X"fa69", X"0182",
                                                        X"f71b", X"0fb1", X"e63c", X"2c64", X"0ff3", X"1a79", X"13cd", X"2522", X"07e7", X"0d78", X"009e", X"2b3c", X"1cc1", X"ffa7",
                                                        X"eae2", X"f1fa", X"1599", X"f365", X"152f", X"2e52", X"f72f", X"e8d4", X"1913", X"ee2d", X"fbb1", X"0da4", X"023e", X"294a",
                                                        X"18df", X"ffe1", X"0567", X"f797", X"f4a7", X"0bde", X"13fc", X"fd7e", X"f7d2", X"ed6b", X"0cd3", X"1aea", X"fbf0", X"0afe",
                                                        X"0a44", X"ce51", X"ee4d", X"1c4c", X"1d46", X"1359", X"ffda", X"016c", X"eed1", X"fc14", X"fabf", X"0876", X"d7db", X"f651",
                                                        X"fb53", X"ff25", X"18d3", X"ecd1", X"1ae2", X"eb4a", X"ee6d", X"efdc", X"f65c", X"0780", X"1439", X"f667", X"ff1d", X"feb3",
                                                        X"f39c", X"02d1", X"f686", X"d957", X"e348", X"e99a", X"dd97", X"04ab", X"edc8", X"f6ee", X"0a30", X"ee59", X"f6f9", X"e62b",
                                                        X"0771", X"e0d0", X"d36f", X"fec8", X"fdd8", X"1054", X"fba0", X"0a62", X"f2ff", X"fa2f", X"f02a", X"035e", X"e581", X"f151",
                                                        X"04c9", X"eea4", X"f4de", X"fa43", X"ed62", X"f945", X"f467", X"ec0b", X"03e5", X"e667", X"e5c1", X"d2ba", X"00ce", X"fedb",
                                                        X"10ce", X"fa1b", X"06e2", X"e67f", X"f17f", X"fda2", X"e47d", X"e78a", X"e1b4", X"feab", X"ea8c", X"0f43", X"d334", X"0779",
                                                        X"fad5", X"fade", X"f51e", X"dbb5", X"ec10", X"d2a9", X"0397", X"d339", X"d236", X"f422", X"d4dd", X"0102", X"172e", X"e303",
                                                        X"d616", X"dcb6", X"fe5c", X"0ec2", X"083d", X"fc81", X"fd81", X"de4b", X"f01d", X"fe34", X"e4ba", X"f59e", X"f324", X"0118",
                                                        X"fa53", X"03c9", X"f2a0", X"d662", X"fde4", X"ea76", X"0179", X"f62f", X"ecb0", X"e479", X"f9b3", X"d8bf", X"0073", X"fe3b",
                                                        X"e612", X"f1f2", X"143a", X"d194", X"1780", X"eb2d", X"023f", X"e59d", X"02b9", X"f9fb", X"09dd", X"d9fa", X"012c", X"de9d",
                                                        X"f58c", X"02bc", X"df42", X"f5f5", X"dfbc", X"dfbe", X"f983", X"09ab", X"f6e6", X"e88d", X"01dc", X"e597", X"fe03", X"e768",
                                                        X"eb53", X"de56", X"eb65", X"da01", X"f22c", X"e3ec", X"0b80", X"ee37", X"fb99", X"cc0e", X"04c5", X"f92d", X"0f10", X"f6d3",
                                                        X"f4e3", X"d84b", X"09d1", X"ec0a", X"c3d9", X"dde8", X"f694", X"f82a", X"1135", X"cfea", X"e2c4", X"07fd", X"0e20", X"0129",
                                                        X"f918", X"05a9", X"f641", X"f300", X"eb70", X"e700", X"01e7", X"0110", X"fe56", X"0081", X"ea42", X"0015", X"c11f", X"03a3",
                                                        X"f996", X"fb64", X"0cbe", X"07c5", X"00b8", X"fb70", X"e812", X"0b63", X"bfb5", X"f51c", X"decf", X"1043", X"ff86", X"da6f",
                                                        X"ef83", X"f590", X"dd6a", X"078a", X"010f", X"fd74", X"e32f", X"0048", X"fdfb", X"e4f6", X"c799", X"018d", X"09f8", X"e577",
                                                        X"da75", X"0436", X"d975", X"e710", X"f6bc", X"ff2d", X"f7c1", X"f8a7", X"068a", X"e7d9", X"fff8", X"02df", X"e22b", X"055e",
                                                        X"078d", X"0874", X"ff48", X"f47d", X"167e", X"06b7", X"0b86", X"0184", X"119f", X"ff15", X"e82e", X"d92f", X"fbb5", X"cfa1",
                                                        X"0c1f", X"1173", X"0b72", X"f6c4", X"1813", X"fed4", X"1fba", X"fe04", X"e8bc", X"004b", X"071a", X"0337", X"033a", X"fd0c",
                                                        X"ec65", X"10e9", X"d549", X"f769", X"083f", X"0097", X"f945", X"f589", X"e891", X"f429", X"02d2", X"ddb6", X"fa8c", X"f8b8",
                                                        X"f7c0", X"f048", X"0635", X"e881", X"ccd3", X"f6cc", X"0cee", X"0a52", X"efa5", X"f898", X"ff59", X"132e", X"0caa", X"05cb",
                                                        X"0b0b", X"0d1b", X"f1e8", X"11f4", X"e21f", X"22d5", X"cec3", X"06d8", X"01aa", X"f73a", X"0b48", X"0c68", X"df9a", X"0ddd",
                                                        X"0a0c", X"f047", X"07eb", X"0739", X"0b82", X"e371", X"04a5", X"0aff", X"0bfc", X"01f7", X"fc4c", X"f688", X"f1c0", X"0aec",
                                                        X"0e8a", X"0559", X"ed59", X"fcb6", X"f97e", X"07a3", X"2618", X"10b8", X"00bd", X"d46a", X"1cc7", X"1a1b", X"fa77", X"1172",
                                                        X"115b", X"1098", X"f806", X"1255", X"e73a", X"1582", X"f924", X"1b77", X"1b0f", X"f4b2", X"e7d4", X"0736", X"fbee", X"f140",
                                                        X"d95e", X"fb88", X"1dd3", X"da7a", X"010b", X"f970", X"2675", X"f0be", X"fb26", X"df71", X"f8a9", X"f7fe", X"eeab", X"f82b",
                                                        X"f805", X"e177", X"f861", X"f0be", X"cedd", X"f158", X"f359", X"188b", X"e2dd", X"ee7d", X"0d0d", X"f201", X"ece4", X"1444",
                                                        X"03bb", X"faf7", X"e2e3", X"fee6", X"f3a6", X"f83a", X"0a7b", X"0fc3", X"d28b", X"0875", X"e92a", X"144a", X"01c2", X"fc78",
                                                        X"fd1d", X"e71a", X"13ca", X"f862", X"d72c", X"f237", X"f83a", X"03a2", X"eec2", X"ec07", X"f21c", X"fc37", X"f265", X"ed3c",
                                                        X"0b4a", X"01cf", X"f4de", X"e626", X"14ff", X"dbff", X"e0e5", X"f6c1", X"f3dd", X"f914", X"e9bd", X"25ab", X"18fb", X"f7d0",
                                                        X"0d9e", X"f9b2", X"0e00", X"dd92", X"fefa", X"e916", X"f4ce", X"15a4", X"e46d", X"e57a", X"efd2", X"0bf9", X"eac8", X"1bb3",
                                                        X"2224", X"ed75", X"1199", X"fdc4", X"ea86", X"0569", X"fa2a", X"e08c", X"f5ec", X"ec1b", X"fd62", X"fc3f", X"f515", X"e40b",
                                                        X"f13e", X"df92", X"1dae", X"1f81", X"15d5", X"ffdb", X"0259", X"0d5e", X"0050", X"18d5", X"0cb7", X"13e6", X"eb6b", X"045f",
                                                        X"fa4b", X"089a", X"0aae", X"d105", X"0e6d", X"da4f", X"f410", X"f3e4", X"ec87", X"ff10", X"fdc7", X"dfe3", X"0148", X"064f",
                                                        X"db5f", X"d8fd", X"02bb", X"275a", X"0bf8", X"edc5", X"17ce", X"0d95", X"00d7", X"f38e", X"f518", X"087f", X"029e", X"10e2",
                                                        X"1421", X"1b0e", X"173b", X"fd5a", X"f81e", X"08a8", X"e1cf", X"2c1e", X"fde7", X"ed1c", X"e135", X"eec5", X"d6bd", X"eeac",
                                                        X"e821", X"e70f", X"0752", X"0d77", X"e8c7", X"00e1", X"f7e5", X"1217", X"ffad", X"1154", X"eac2", X"2ac1", X"fd34", X"0214",
                                                        X"f6b9", X"f491", X"0332", X"014e", X"f080", X"2890", X"354b", X"f1a3", X"044d", X"03ed", X"e987", X"ff36", X"dbfe", X"f67d",
                                                        X"f898", X"1a56", X"f40a", X"132e", X"0064", X"f417", X"1a14", X"1a7a", X"fbb7", X"fc6a", X"14b4", X"09ec", X"1cc8", X"f365",
                                                        X"24f5", X"f28a", X"2b6b", X"1376", X"f771", X"f28d", X"e7ab", X"0d30", X"fb0e", X"265c", X"e991", X"f70c", X"0fb5", X"0ae1",
                                                        X"1b72", X"e878", X"ed0e", X"08d8", X"e7ba", X"f0bf", X"02d6", X"0163", X"138c", X"00c2", X"1754", X"002a", X"0187", X"04b0",
                                                        X"0044", X"e142", X"1296", X"38d2", X"0c98", X"280a", X"2129", X"fd4b", X"eaca", X"09ff", X"15dc", X"ee64", X"084d", X"10e5",
                                                        X"341b", X"1c59", X"077c", X"ef74", X"fd05", X"e99f", X"f9db", X"2ed7", X"eb74", X"24be", X"fa44", X"0dfc", X"f87f", X"fd3a",
                                                        X"2dc0", X"fbe2", X"e6f7", X"ecc9", X"fe26", X"eb85", X"1ec8", X"2a53", X"1cde", X"18bb", X"054a", X"10ec", X"f055", X"fc49",
                                                        X"024a", X"1e9a", X"0ca8", X"12c3", X"f0fd", X"180e", X"f209", X"f3fb", X"096c", X"00b1", X"26a4", X"0fb2", X"fe66", X"1cae",
                                                        X"f7a3", X"0649", X"107b", X"256c", X"00dd", X"f2a6", X"22f9", X"07d0", X"12bf", X"0f73", X"08f8", X"0311", X"28bc", X"f6d3",
                                                        X"2c12", X"059e", X"fe43", X"f1b5", X"100a", X"2f27", X"0f2d", X"e2f6", X"4288", X"f4b7", X"16f7", X"10eb", X"e33f", X"0f8c",
                                                        X"209e", X"1a9e", X"e51f", X"1a5f", X"19a8", X"e720", X"07fd", X"1432", X"ffdb", X"3083", X"027c", X"f640", X"0dde", X"f4ed",
                                                        X"1df9", X"1273", X"162b", X"ff15", X"44fc", X"0efa", X"f606", X"ea30", X"06a4", X"0baf", X"1766", X"2ec2", X"1895", X"f98c",
                                                        X"fc7a", X"2e63", X"1019", X"1bab", X"fb12", X"0ec1", X"0542", X"fe47", X"107e", X"068a", X"183b", X"f7ed", X"fc2a", X"ee81",
                                                        X"0621", X"07f8", X"1472", X"0bc5", X"dbf7", X"2854", X"2858", X"1817", X"eef4", X"f3ca", X"035e", X"f445", X"00a4", X"06c0",
                                                        X"295a", X"1e75", X"0c9b", X"12f4", X"fb6d", X"e479", X"257d", X"0290", X"ff92", X"33c3", X"0a32", X"18c1", X"e60f", X"0987",
                                                        X"01b7", X"135a", X"0795", X"3969", X"3fcb", X"efc4", X"20a7", X"139e", X"06e4", X"103a", X"06ac", X"0b8e", X"2524", X"f9ff",
                                                        X"ef6c", X"fd5f", X"f153", X"29c7", X"fa8b", X"027c", X"3ec5", X"ef46", X"0f69", X"ed36", X"14b2", X"21b7", X"ee1e", X"1a07",
                                                        X"d8ba", X"1cd9", X"fa4d", X"0526", X"0b95", X"e886", X"fbb4", X"2dee", X"2d61", X"fb3c", X"0538", X"1340", X"066f", X"effa",
                                                        X"fa15", X"2735", X"e880", X"0134", X"f83a", X"093c", X"fa87", X"e782", X"1c71", X"de93", X"e44c", X"11d5", X"10a8", X"1822",
                                                        X"0e6f", X"e083", X"163b", X"1885", X"15f3", X"ff0d", X"0ef1", X"06c2", X"1478", X"1525", X"fd7b", X"27e1", X"2139", X"09db",
                                                        X"143b", X"ec98", X"05a0", X"00a8", X"f7cd", X"2bd0", X"df54", X"0803", X"0ce7", X"0742", X"fe0f", X"1441", X"0937", X"2aa7",
                                                        X"0d59", X"f715", X"0674", X"0ba3", X"fc24", X"226d", X"201f", X"0388", X"e2fc", X"206a", X"022a", X"f241", X"1ad9", X"11c8",
                                                        X"eeeb", X"dd09", X"f1ac", X"e86a", X"0eab", X"12da", X"0541", X"fc30", X"e18a", X"132e", X"04fa", X"06fa", X"1d4f", X"f68b",
                                                        X"f89a", X"097a", X"0af4", X"102a", X"2eb2", X"f7fe", X"0ae2", X"2bd4", X"18c7", X"2664", X"0e9f", X"1886", X"e744", X"ebb1",
                                                        X"efd2", X"1339", X"fd20", X"09f3", X"06ee", X"0d33", X"eb73", X"14fc", X"05cc", X"1930", X"15a5", X"1ef1", X"f1d4", X"f4de",
                                                        X"312f", X"0a7a", X"0ac4", X"1930", X"fe1a", X"e944", X"f340", X"24f1", X"2556", X"f54e", X"004b", X"eed3", X"0d30", X"ecce",
                                                        X"e7db", X"f3f7", X"e9ff", X"fa1b", X"f148", X"0663", X"fee5", X"1b83", X"1b7c", X"04d0", X"0154", X"fb6c", X"0bf6", X"f2d0",
                                                        X"faae", X"f300", X"e122", X"ff7c", X"fd71", X"1c48", X"f5e1", X"018a", X"1503", X"153d", X"027b", X"d051", X"f6a7", X"eb53",
                                                        X"08fc", X"f693", X"f22e", X"1395", X"ee1a", X"1e0f", X"084c", X"f04d", X"f015", X"ebff", X"080d", X"f3ba", X"e562", X"0925",
                                                        X"c7ac", X"00d6", X"fb7e", X"e6c9", X"0c67", X"1e92", X"eeab", X"de54", X"eaa2", X"faa1", X"1f7f", X"fc56", X"f246", X"11ba",
                                                        X"edbf", X"dd0a", X"103d", X"f5f7", X"0730", X"f3f6", X"16ec", X"051e", X"e1e0", X"154c", X"e6ae", X"ead5", X"00d0", X"131d",
                                                        X"fe42", X"f511", X"1009", X"0bd8", X"0ad1", X"fdec", X"138a", X"e8fd", X"e3ca", X"f3e0", X"dfcf", X"0c96", X"03ad", X"d0c4",
                                                        X"f31a", X"ec76", X"0807", X"04e3", X"e1ef", X"e15f", X"cb5c", X"ec58", X"ed51", X"0478", X"e972", X"11cd", X"d1d4", X"d96e",
                                                        X"fcf6", X"edbd", X"f62a", X"f72d", X"0b8b", X"fa5c", X"027e", X"ec7c", X"f905", X"0472", X"002b", X"0556", X"dcd3", X"00f5",
                                                        X"e7d9", X"e6e9", X"f231", X"f7e9", X"ead5", X"eada", X"fe96", X"e300", X"08d5", X"0f92", X"b524", X"f9f0", X"fac0", X"f62b",
                                                        X"ff41", X"f141", X"f500", X"fa99", X"fceb", X"06ff", X"ff1a", X"fa9a", X"0a8b", X"e2e1", X"0045", X"eb22", X"d8f7", X"e9be",
                                                        X"da11", X"e9af", X"d7ef", X"f85b", X"ece5", X"d00a", X"e4b3", X"f14a", X"fdd3", X"f660", X"ef79", X"efad", X"ff59", X"d484",
                                                        X"bfba", X"fdaf", X"db09", X"e279", X"0e2e", X"0747", X"e6ec", X"e2f2", X"0d74", X"0960", X"ee38", X"e1eb", X"fd08", X"077a",
                                                        X"fd77", X"d7cf", X"bea9", X"e38a", X"fce6", X"ef5e", X"d7fb", X"f596", X"d8cd", X"129e", X"e20f", X"da68", X"0065", X"f8ba",
                                                        X"fab5", X"da66", X"edf5", X"c81b", X"cedc", X"035a", X"e67c", X"0134", X"01d4", X"0817", X"cdca", X"11e1", X"ec89", X"e8d8",
                                                        X"f063", X"0909", X"eb91", X"f6d6", X"0140", X"d092", X"18c8", X"f4df", X"ee56", X"e895", X"e286", X"ea6c", X"f965", X"1041",
                                                        X"04ea", X"14ef", X"f05e", X"e9eb", X"ebe8", X"ef21", X"0e75", X"e549", X"01fb", X"0bad", X"084f", X"ebf1", X"f70c", X"2784",
                                                        X"e3d2", X"d908", X"0fd5", X"ee95", X"e33e", X"f7a3", X"08d2", X"e791", X"0432", X"2665", X"f84d", X"ef4d", X"1052", X"0782",
                                                        X"f591", X"fb94", X"067b", X"06eb", X"db5f", X"fc37", X"f327", X"1a39", X"0175", X"0c6f", X"fa80", X"e970", X"0043", X"f837",
                                                        X"0d1d", X"18c3", X"1604", X"e9af", X"f425", X"1382", X"0835", X"fb3b", X"f578", X"ecf6", X"f8ac", X"e335", X"ed34", X"0545",
                                                        X"ddc8", X"ea55", X"0963", X"f542", X"1bbe", X"1402", X"d8c7", X"04af", X"0a09", X"f32d", X"019d", X"f6b1", X"f6ab", X"10a7",
                                                        X"017c", X"db3a", X"fa1c", X"f2a4", X"f05d", X"00d9", X"de29", X"ef84", X"0714", X"e353", X"f6ab", X"17af", X"e4c1", X"e581",
                                                        X"2d58", X"f0d8", X"15e9", X"0c0d", X"05f3", X"fc32", X"0a8d", X"f45b", X"e87d", X"0090", X"1e13", X"022d", X"e99b", X"f92e",
                                                        X"ff54", X"0a55", X"f8a9", X"eaa9", X"1694", X"fd73", X"0d3e", X"0344", X"0020", X"e7a2", X"f94b", X"0f52", X"08e0", X"f8ed",
                                                        X"f7a6", X"04a4", X"0fdf", X"fd87", X"f8f4", X"f1b1", X"fee2", X"d9bb", X"2e94", X"f058", X"0301", X"f005", X"f420", X"0c3e",
                                                        X"ef2d", X"ea39", X"e238", X"06a1", X"0e93", X"f7f0", X"ffba", X"fd10", X"0829", X"031c", X"ee81", X"0003", X"e39d", X"059a",
                                                        X"f2f6", X"de30", X"e81e", X"f21b", X"0454", X"0b20", X"f3ea", X"faa8", X"0b5a", X"ed37", X"0818", X"09df", X"db27", X"dd71",
                                                        X"fbc9", X"112c", X"f9c4", X"15ec", X"10e0", X"0c04", X"f7c7", X"0617", X"08c7", X"e4fa", X"f17d", X"eb79", X"1528", X"e566",
                                                        X"e9b7", X"ff2c", X"f43c", X"047e", X"0c1a", X"074f", X"0942", X"0b96", X"e228", X"eb33", X"fcc5", X"04b5", X"ff59", X"0c9e",
                                                        X"eff7", X"f941", X"dd1c", X"f31a", X"f973", X"d884", X"f6a6", X"e874", X"f267", X"f2f1", X"1ea0", X"1696", X"0bce", X"f9c4",
                                                        X"13bb", X"e1e4", X"edd7", X"2ad3", X"025d", X"fc7e", X"f665", X"0251", X"fc12", X"0ef4", X"ee59", X"13fc", X"1c65", X"f983",
                                                        X"f9cd", X"f8b3", X"02e4", X"119f", X"0ba0", X"28a3", X"1793", X"f7da", X"f9cf", X"f501", X"2c58", X"f7b3", X"2057", X"13fc",
                                                        X"fbce", X"00e3", X"ee95", X"fbbb", X"f53c", X"e85f", X"049a", X"1bf6", X"d2e5", X"1186", X"022f", X"0af6", X"ff4c", X"f5b2",
                                                        X"0bbe", X"24e7", X"2c1e", X"e9cf", X"fbc7", X"0bff", X"0cfc", X"0a44", X"fc78", X"0dd6", X"efb2", X"f5b3", X"0431", X"f543",
                                                        X"ea75", X"012f", X"1b3a", X"1574", X"081f", X"fdd0", X"0826", X"e60b", X"19a6", X"e079", X"0541", X"16e5", X"0572", X"017b",
                                                        X"0f84", X"04f4", X"2187", X"1a47", X"f836", X"e394", X"e99c", X"0288", X"fe6e", X"fd8f", X"084b", X"0c3d", X"13ae", X"f9ae",
                                                        X"3234", X"0898", X"f210", X"fd6c", X"01f2", X"34e8", X"df63", X"013b", X"124b", X"201f", X"040e", X"0501", X"06aa", X"fcc9",
                                                        X"0982", X"fd25", X"df29", X"0b44", X"1b95", X"122a", X"df66", X"317d", X"fcf8", X"fdf2", X"10e5", X"fdfc", X"f3ba", X"0e2e",
                                                        X"ed14", X"25e1", X"046c", X"ed89", X"3d66", X"0e66", X"12a4", X"0eb1", X"eed7", X"2b17", X"1b2b", X"3023", X"23f5", X"f3f7",
                                                        X"0755", X"057c", X"2a0c", X"f6f6", X"fd0d", X"ea6d", X"0461", X"0085", X"11c5", X"0782", X"0a3d", X"fbfc", X"2018", X"048b",
                                                        X"f16e", X"0950", X"1a32", X"1586", X"f428", X"f2f3", X"1766", X"1cf7", X"032d", X"f674", X"0dca", X"073c", X"058e", X"3a67",
                                                        X"faf0", X"04c9", X"0934", X"0cda", X"114a", X"fd09", X"253c", X"1d5d", X"0c06", X"1466", X"2924", X"ee29", X"1718", X"1837",
                                                        X"149c", X"100c", X"ecb2", X"3cba", X"e93a", X"0127", X"e4b0", X"0366", X"fbea", X"07a7", X"f57e", X"f782", X"2b2b", X"198d",
                                                        X"1d92", X"1a4a", X"2e75", X"e98d", X"15fc", X"2a25", X"f9d7", X"f347", X"f81a", X"f393", X"f3f8", X"e08a", X"1059", X"1a2e",
                                                        X"1335", X"f77f", X"fb7e", X"fddc", X"0871", X"12b7", X"fe79", X"273a", X"1e57", X"10d0", X"0bcb", X"e9d0", X"f653", X"15d3",
                                                        X"1c08", X"eb65", X"e86c", X"1f8c", X"f35d", X"2713", X"f9fa", X"155e", X"eaf7", X"1203", X"fce8", X"fdfb", X"f847", X"11ee",
                                                        X"fb03", X"0f12", X"0700", X"0053", X"28c4", X"02ef", X"0f9f", X"042e", X"0ab3", X"1f91", X"1a3d", X"1eb6", X"ee26", X"0a87",
                                                        X"094f", X"0fa8", X"eb24", X"f347", X"e8b3", X"fbe2", X"1b11", X"f5d5", X"f5f0", X"f701", X"0b12", X"f77a", X"f847", X"1909",
                                                        X"fd5c", X"0372", X"e2e4", X"e401", X"127f", X"fc0f", X"e95f", X"e3c7", X"2b22", X"1284", X"e4c0", X"f846", X"033b", X"12a5",
                                                        X"f48e", X"f3ec", X"fd67", X"06b8", X"f0ec", X"0868", X"ebfe", X"0e8f", X"04a4", X"ddb2", X"fd9d", X"0de9", X"05b1", X"016e",
                                                        X"247a", X"d393", X"d2ff", X"f075", X"fc3c", X"cdf5", X"f2aa", X"0426", X"12f3", X"0766", X"ff62", X"ffdc", X"ff03", X"0ca5",
                                                        X"f093", X"e5a2", X"ef1f", X"1a90", X"fb14", X"16e7", X"f94e", X"e3b5", X"0329", X"08d7", X"03e8", X"fe22", X"f043", X"f8d4",
                                                        X"0168", X"0bb1", X"e774", X"ed3e", X"ea55", X"fbf0", X"1ab5", X"f23e", X"f8b4", X"031c", X"095a", X"f26f", X"04ac", X"fe01",
                                                        X"0906", X"ec9e", X"1395", X"ee0a", X"f1bf", X"ffeb", X"f799", X"0e46", X"e4eb", X"00b5", X"0990", X"eed5", X"f00d", X"fe3c",
                                                        X"0075", X"07b0", X"e795", X"c4c7", X"b977", X"f980", X"e015", X"0441", X"f996", X"fe83", X"ebf7", X"097c", X"f795", X"00ec",
                                                        X"f893", X"e8df", X"efd5", X"d8b6");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"d8b6";
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

