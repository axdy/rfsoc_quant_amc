-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block416.vhd
-- Created: 2023-08-04 11:27:24
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block416
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage62/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block416 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block416;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block416 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"221d", X"e3ce", X"2154", X"df48", X"0324", X"1cb5",
                                                        X"ed52", X"ea9d", X"ccf3", X"0b46", X"0501", X"e57b", X"e778", X"0b4c", X"041c", X"138b", X"1619", X"fe10", X"0779", X"ec76",
                                                        X"f7a7", X"110f", X"08fb", X"0e38", X"15d5", X"028a", X"1048", X"f27e", X"01e8", X"0d46", X"fe86", X"f702", X"2018", X"07ad",
                                                        X"fcc2", X"0e5a", X"e69f", X"ecaf", X"f86d", X"ea57", X"e96c", X"06d7", X"f80a", X"07e1", X"0348", X"f9a8", X"00fd", X"f2ae",
                                                        X"e8de", X"0db9", X"10ff", X"0b96", X"ef7c", X"0203", X"fc1d", X"17c6", X"0384", X"2422", X"1e27", X"f193", X"f279", X"f95c",
                                                        X"eefa", X"05e3", X"e518", X"eb56", X"1e1a", X"eb27", X"e3a3", X"0039", X"ff90", X"0813", X"ecfb", X"16b2", X"f770", X"f754",
                                                        X"ebcf", X"f87f", X"03bd", X"f5e1", X"1174", X"d493", X"dd97", X"e468", X"f609", X"fef0", X"e914", X"025c", X"13ab", X"0e47",
                                                        X"0e19", X"0e6c", X"06a7", X"fe98", X"0298", X"f83a", X"0e73", X"fcfa", X"e608", X"1017", X"e4a6", X"1ec2", X"f2f5", X"0d4c",
                                                        X"032f", X"1372", X"1bd1", X"eb22", X"0351", X"0572", X"132d", X"fe9c", X"0ff0", X"f23a", X"fa1f", X"eec3", X"e682", X"eba0",
                                                        X"f13e", X"e846", X"fbc6", X"01d9", X"f620", X"16ad", X"ff77", X"f19e", X"0e3c", X"0117", X"01ce", X"051e", X"24cd", X"da0e",
                                                        X"fcb2", X"f6b4", X"f48b", X"ed6f", X"fc96", X"fc5c", X"f258", X"0c0c", X"fece", X"f9a4", X"ea91", X"07de", X"12c8", X"12ca",
                                                        X"fabb", X"0e48", X"05f1", X"146f", X"f612", X"f7b3", X"e106", X"ee23", X"16c3", X"0dae", X"feec", X"f40e", X"0297", X"04e1",
                                                        X"1098", X"f75b", X"0136", X"1123", X"0864", X"fc50", X"e7e9", X"01c6", X"2882", X"ee32", X"3765", X"dbe4", X"035b", X"eb2a",
                                                        X"fb92", X"16ae", X"0cbe", X"eb16", X"e9a7", X"f3c7", X"0165", X"073b", X"fac6", X"df04", X"fe55", X"218f", X"ee2d", X"f5f9",
                                                        X"f1d4", X"fb6c", X"0198", X"f5ba", X"fb64", X"1852", X"ffe9", X"ed20", X"f5ea", X"fef6", X"00f6", X"ed92", X"f07c", X"0fc2",
                                                        X"2144", X"0fd2", X"f2dd", X"011f", X"013b", X"f4e3", X"0e50", X"02ec", X"2a19", X"e498", X"f3a1", X"fbd4", X"0198", X"fd2b",
                                                        X"ff50", X"0d7a", X"0c52", X"0805", X"ffcf", X"0b61", X"080d", X"0286", X"f962", X"e30e", X"22d7", X"1960", X"f988", X"e9fe",
                                                        X"f1d4", X"f6cc", X"10c8", X"eb8f", X"ff8d", X"e149", X"fc33", X"0094", X"1201", X"0f1f", X"0796", X"e49e", X"d655", X"ddf2",
                                                        X"f878", X"1704", X"d56b", X"de59", X"ec1b", X"0cf3", X"fec7", X"096f", X"08c7", X"0e66", X"1b91", X"fec3", X"f64f", X"0ca1",
                                                        X"18cc", X"f20c", X"0d52", X"12e7", X"fabe", X"fda9", X"e614", X"23f9", X"0119", X"0b6e", X"fe79", X"0f19", X"164a", X"ea07",
                                                        X"0ade", X"16cf", X"ed27", X"fe1b", X"f89b", X"1146", X"f2ea", X"1bc7", X"1c49", X"2bb6", X"1299", X"fe4d", X"f019", X"043a",
                                                        X"f729", X"16d8", X"208a", X"0623", X"0c73", X"07b6", X"eaee", X"06c0", X"e182", X"15d3", X"f432", X"f1bd", X"1fe0", X"19da",
                                                        X"05dc", X"0157", X"15b8", X"e7e1", X"112d", X"fe65", X"056b", X"0991", X"e9a3", X"1092", X"fb5d", X"1386", X"1c63", X"291d",
                                                        X"0326", X"f7e1", X"f783", X"15a9", X"fc7d", X"11bc", X"f70b", X"ccbf", X"eaa3", X"fde0", X"0d02", X"e018", X"05f0", X"f66b",
                                                        X"0aa4", X"2c33", X"f348", X"f8ae", X"f72b", X"0359", X"0c19", X"f47b", X"13fb", X"cd58", X"08a6", X"00fa", X"f913", X"e64e",
                                                        X"ec98", X"f63c", X"ef06", X"0e2e", X"32c9", X"ebb4", X"f956", X"fe05", X"1810", X"0e14", X"fb28", X"0d9d", X"2387", X"0556",
                                                        X"fcb6", X"0612", X"f4ef", X"fe80", X"feef", X"fc43", X"095c", X"17c5", X"f909", X"046e", X"12eb", X"04e6", X"fd0f", X"ef35",
                                                        X"02e7", X"f917", X"eb6a", X"0d70", X"08a2", X"eb64", X"f052", X"13bd", X"07b4", X"0915", X"07af", X"1c06", X"fe41", X"e9a5",
                                                        X"0fbb", X"00ad", X"d8f6", X"fdb8", X"043e", X"e7c0", X"fa95", X"f2ef", X"fee3", X"04c7", X"1198", X"fec6", X"f4f5", X"0177",
                                                        X"0380", X"f533", X"1454", X"e021", X"01e9", X"0f22", X"f00a", X"0886", X"ff71", X"156a", X"fce4", X"0424", X"22c1", X"0e2c",
                                                        X"fbff", X"027b", X"1c19", X"ecd5", X"f0ba", X"ef3a", X"02f3", X"e22c", X"f51e", X"0e63", X"f372", X"fefa", X"e783", X"1954",
                                                        X"0452", X"f181", X"fceb", X"febf", X"0aa6", X"04c2", X"06a5", X"f002", X"f8a6", X"f302", X"f6f8", X"ed2d", X"fb22", X"e989",
                                                        X"f5de", X"1cfe", X"ecbc", X"1686", X"02ee", X"0cf6", X"1c07", X"13e1", X"0ce6", X"d9c7", X"12ed", X"0f6b", X"0331", X"f6fc",
                                                        X"08aa", X"f86d", X"fe19", X"280a", X"02ec", X"e1c6", X"fabb", X"f9f5", X"210f", X"eff1", X"0b72", X"e6fc", X"da3b", X"ea46",
                                                        X"f42e", X"0462", X"ebb7", X"fda0", X"f858", X"12da", X"331e", X"ff11", X"e52f", X"ecac", X"fa9c", X"f797", X"06f6", X"fce0",
                                                        X"d11e", X"f979", X"1817", X"f013", X"08b7", X"1a50", X"fb49", X"1658", X"f54e", X"0789", X"f85e", X"04c8", X"12a2", X"1e64",
                                                        X"1375", X"0304", X"0556", X"1314", X"0732", X"edf3", X"f6ec", X"f2ce", X"1ced", X"1ee1", X"22ba", X"f499", X"ffcb", X"f716",
                                                        X"1e12", X"fdb4", X"0b61", X"ff88", X"01b4", X"f2e2", X"f345", X"0211", X"02f9", X"e2ac", X"0219", X"0c92", X"21ef", X"fa3b",
                                                        X"f3c5", X"05eb", X"1385", X"fc3d", X"1217", X"0b65", X"3e8d", X"ee7b", X"fed3", X"f62b", X"d59b", X"0a83", X"f0d7", X"0b9d",
                                                        X"07d3", X"04c0", X"ff98", X"0c3b", X"f1a3", X"e9b6", X"0baf", X"1cd3", X"f6b7", X"03ee", X"081a", X"ebf2", X"e077", X"fae6",
                                                        X"e090", X"fb2b", X"fc3e", X"fa72", X"e329", X"f5e8", X"06a5", X"13c7", X"118b", X"f6f6", X"fb04", X"0bbc", X"f0a3", X"f8fe",
                                                        X"f63a", X"fad8", X"019f", X"1114", X"23d9", X"0ebc", X"050e", X"ff3f", X"236c", X"f25b", X"055b", X"fdc6", X"fe3c", X"1796",
                                                        X"0667", X"1086", X"0642", X"f9d9", X"f694", X"066f", X"196e", X"07a3", X"f60d", X"13c7", X"f500", X"f5ae", X"f992", X"0124",
                                                        X"e647", X"1b45", X"f479", X"eef0", X"fba0", X"effe", X"149c", X"0162", X"1fc1", X"000b", X"f2ee", X"09ca", X"0d6c", X"1ceb",
                                                        X"fcef", X"0287", X"f206", X"e4c5", X"0a08", X"fa22", X"03c3", X"f1db", X"f934", X"1b65", X"193d", X"1760", X"f993", X"f60a",
                                                        X"0ddb", X"f6d5", X"f0ca", X"f0df", X"dafc", X"fc17", X"0f4a", X"05a2", X"fc2f", X"df58", X"02ba", X"02fc", X"1b1d", X"ea9f",
                                                        X"fdb9", X"0371", X"1c67", X"fd9d", X"0536", X"0802", X"f23c", X"039a", X"f6fe", X"e833", X"021d", X"f59a", X"1447", X"1e14",
                                                        X"00bc", X"fd1f", X"00f1", X"104d", X"18bf", X"fde9", X"1aa7", X"ddac", X"0ba9", X"e9f2", X"0035", X"e3ba", X"e0c2", X"f61c",
                                                        X"12fb", X"fb17", X"2690", X"0a00", X"eff9", X"13bb", X"0a7c", X"fd99", X"22a7", X"e958", X"da82", X"eef7", X"f7cd", X"0416",
                                                        X"e615", X"ffcd", X"f192", X"143f", X"1417", X"f0cf", X"f63c", X"efcd", X"1b98", X"00f2", X"f50a", X"f479", X"1e92", X"f0b3",
                                                        X"e721", X"f08f", X"02c2", X"f3c0", X"0eef", X"1d79", X"0738", X"1d4d", X"fbeb", X"f849", X"0978", X"05e3", X"0700", X"f5b0",
                                                        X"ea82", X"ea0f", X"0aa4", X"074f", X"ea08", X"ff6f", X"f053", X"f82f", X"0da0", X"088f", X"fab1", X"ff31", X"1dc1", X"0388",
                                                        X"f17c", X"00a8", X"fe63", X"f7ec", X"fd8b", X"fe0d", X"ea09", X"f8b1", X"f159", X"eac2", X"1629", X"0ae3", X"0cc8", X"f3a7",
                                                        X"1438", X"174f", X"f67c", X"f2be", X"2703", X"fe6b", X"0b83", X"e3d0", X"f0cb", X"f6e8", X"00ba", X"fa23", X"e58c", X"f69f",
                                                        X"f745", X"fb78", X"0e20", X"11d5", X"06ff", X"0f9d", X"ea35", X"e208", X"0721", X"f967", X"faa9", X"e666", X"147e", X"264d",
                                                        X"fd27", X"f0c6", X"06b8", X"e91e", X"1bf0", X"02e4", X"10f6", X"0fda", X"ecfa", X"d87d", X"2898", X"0142", X"dd0b", X"e7f0",
                                                        X"e9f4", X"ef14", X"fb4f", X"f2e6", X"e077", X"1211", X"14ae", X"010c", X"196f", X"fb6a", X"0a77", X"f510", X"0081", X"0930",
                                                        X"f038", X"f1de", X"195b", X"15f3", X"0db6", X"05b1", X"eaf4", X"febe", X"0107", X"1f71", X"1c15", X"fce8", X"f663", X"faea",
                                                        X"06c0", X"10ca", X"f9f2", X"0546", X"ff08", X"0a98", X"20e0", X"f143", X"0b08", X"ed31", X"0fd4", X"f7e0", X"0023", X"fd99",
                                                        X"e31d", X"d187", X"f683", X"f5d8", X"f996", X"18cc", X"f4c9", X"f831", X"100d", X"fb77", X"0487", X"0994", X"1880", X"f129",
                                                        X"1666", X"f204", X"32ad", X"e1ea", X"17d4", X"e6d2", X"0bc7", X"0478", X"e9d6", X"22ae", X"1800", X"0704", X"f8ff", X"efbe",
                                                        X"fe4c", X"1a99", X"fae5", X"f1ec", X"ff7c", X"fcb8", X"ee11", X"0431", X"ef08", X"0807", X"de59", X"1c02", X"1092", X"0585",
                                                        X"f800", X"11b5", X"0966", X"f29d", X"180d", X"fb48", X"1ffd", X"04e7", X"f92b", X"004a", X"fa57", X"f10b", X"113d", X"2215",
                                                        X"f2e3", X"d3ac", X"084b", X"fcb8", X"0631", X"e5b5", X"0688", X"076b", X"2195", X"f514", X"f14d", X"0b26", X"0804", X"dad7",
                                                        X"fe73", X"0ab4", X"f0e2", X"09ed", X"f960", X"ecb3", X"feaa", X"e78b", X"0ddd", X"ffb8", X"016c", X"e727", X"fed4", X"fa13",
                                                        X"d919", X"d59c", X"f554", X"0b00", X"23ff", X"ffa3", X"fdaf", X"15d1", X"0654", X"0a7b", X"1cb5", X"e01f", X"e304", X"e763",
                                                        X"fb3c", X"f4bc", X"f315", X"e53a", X"e713", X"fece", X"0f0e", X"0a64", X"fd4d", X"0642", X"0031", X"e41e", X"1afe", X"fd42",
                                                        X"f6f9", X"0324", X"0c72", X"1a63", X"0c7b", X"f488", X"e74a", X"028a", X"1c43", X"0850", X"106e", X"e9d9", X"160f", X"e090",
                                                        X"ffa1", X"f970", X"e25a", X"df03", X"ed3d", X"f2b5", X"009d", X"0b02", X"09cf", X"1daf", X"063c", X"fed9", X"025d", X"0438",
                                                        X"fa79", X"1a97", X"0a7f", X"0149", X"23a7", X"09a2", X"0713", X"0f3f", X"01a6", X"f724", X"ffff", X"0524", X"043d", X"1a30",
                                                        X"195d", X"0304", X"0f1a", X"1bab", X"1395", X"0483", X"2b8b", X"070d", X"f01c", X"0d6c", X"07f1", X"f940", X"fb68", X"eba8",
                                                        X"023d", X"030a", X"f127", X"047e", X"04ad", X"1622", X"f653", X"eb19", X"319c", X"fb31", X"ecca", X"e3ce", X"f1e6", X"d207",
                                                        X"e6eb", X"302f", X"01cf", X"f23f", X"024d", X"f105", X"13d6", X"f8d6", X"02b2", X"f726", X"ea4d", X"de69", X"eef6", X"eaa0",
                                                        X"0013", X"e743", X"e44a", X"fe41", X"f44d", X"f423", X"174c", X"fd1d", X"f66c", X"013b", X"0ef4", X"f7e6", X"e500", X"03e5",
                                                        X"f274", X"0efa", X"f433", X"0a80", X"0d56", X"f0f2", X"24b1", X"061c", X"f779", X"fe64", X"fcbc", X"03e6", X"edcc", X"f713",
                                                        X"ff29", X"e726", X"ff63", X"10d3", X"0486", X"fa98", X"fa99", X"28b9", X"1565", X"f8ce", X"03aa", X"0d80", X"1d57", X"fa3d",
                                                        X"1703", X"f5fa", X"1d39", X"eb06", X"f990", X"1df5", X"f9b8", X"0009", X"e979", X"fe1c", X"0e53", X"07e9", X"f747", X"07ac",
                                                        X"037c", X"08fd", X"fa59", X"073a", X"1876", X"fd7d", X"fb44", X"11e2", X"0a4c", X"06c9", X"dfcb", X"05f0", X"33da", X"0599",
                                                        X"fc5a", X"241f", X"0c63", X"f681", X"23f9", X"f495", X"077e", X"fde4", X"08a7", X"fc95", X"f607", X"d2ca", X"fa80", X"fbc9",
                                                        X"0228", X"0d16", X"e821", X"fe63", X"0df5", X"07ef", X"fe9e", X"fc04", X"0f78", X"f554", X"ff40", X"0199", X"0ed4", X"f34d",
                                                        X"031e", X"0742", X"08b4", X"ef1f", X"f234", X"0acf", X"13e3", X"ee32", X"1434", X"ffcc", X"dd3a", X"fe50", X"09ca", X"15de",
                                                        X"f11f", X"e670", X"fe79", X"1f13", X"1602", X"f8b7", X"174d", X"032d", X"0b55", X"ff0d", X"f584", X"e3c7", X"1d6a", X"04df",
                                                        X"0f82", X"f0ed", X"f3c8", X"05f4", X"03c9", X"17b2", X"0f8b", X"f2ea", X"fb5d", X"1063", X"1bea", X"1017", X"19d0", X"01d4",
                                                        X"f520", X"ffbf", X"ebaa", X"e47b", X"fefc", X"0cc2", X"fe26", X"292b", X"fbbf", X"00e5", X"037b", X"fd13", X"0056", X"ff49",
                                                        X"01ce", X"f2f7", X"f677", X"f1f2", X"ee89", X"f9a5", X"f68d", X"de9f", X"edb3", X"eac4", X"f938", X"fda0", X"0e3f", X"fc09",
                                                        X"08f9", X"f92a", X"0cc7", X"da70", X"f65b", X"dd30", X"0aa3", X"13d0", X"ecef", X"05a3", X"e1fc", X"1aea", X"11e4", X"027f",
                                                        X"07cb", X"ee78", X"148b", X"fd54", X"0051", X"14da", X"fc3e", X"ecbe", X"0b25", X"05c7", X"0452", X"fcef", X"ef54", X"e1f0",
                                                        X"3a9d", X"08e3", X"ee96", X"0463", X"1460", X"00b7", X"fd01", X"1011", X"07f1", X"e418", X"124f", X"fda5", X"e78c", X"0675",
                                                        X"08d3", X"e118", X"24be", X"0aa7", X"0604", X"0303", X"24b9", X"02f2", X"1fa9", X"f4fc", X"f5e3", X"f5c8", X"0818", X"01ff",
                                                        X"f54b", X"e729", X"fc05", X"265d", X"fff3", X"df20", X"0887", X"f6f7", X"09b8", X"0133", X"f9ea", X"0881", X"1734", X"e847",
                                                        X"f901", X"f650", X"f6ee", X"eb38", X"f972", X"240a", X"0cb2", X"ff8a", X"efd3", X"0dc0", X"0f6f", X"f668", X"00cb", X"033d",
                                                        X"e6b1", X"f12a", X"255e", X"13e2", X"0253", X"e783", X"0b51", X"f069", X"2f09", X"0940", X"f4bb", X"1467", X"155f", X"f08a",
                                                        X"12fc", X"f730", X"2524", X"ffab", X"fdcc", X"fcb1", X"f79f", X"ddcb", X"1a92", X"1422", X"2bda", X"0224", X"ec24", X"fda7",
                                                        X"0eda", X"ffb3", X"165e", X"ee7a", X"ded6", X"026a", X"09cf", X"0e91", X"f912", X"0c07", X"0f2d", X"1979", X"14d2", X"f78f",
                                                        X"0674", X"f8b1", X"14ec", X"fd35", X"1891", X"e4b6", X"225a", X"144c", X"1423", X"f20a", X"0037", X"df48", X"0814", X"ea43",
                                                        X"f931", X"1766", X"e850", X"ec3f", X"10bb", X"00b9", X"12a5", X"eaae", X"ec6e", X"e6b5", X"06da", X"1269", X"fe3c", X"f19b",
                                                        X"eae1", X"13a5", X"23da", X"f808", X"fd9a", X"0f0d", X"0c9e", X"0193", X"f85c", X"e0c3", X"edb5", X"e2fd", X"f894", X"074f",
                                                        X"fe3a", X"061b", X"07d2", X"0e4a", X"3226", X"08e8", X"fdb8", X"fdf2", X"118e", X"e7aa", X"f722", X"d7f4", X"fdcc", X"0488",
                                                        X"edd0", X"f6c3", X"f6ff", X"eb58", X"fa6e", X"19f7", X"1409", X"f945", X"1532", X"feba", X"fd01", X"fd1e", X"1d6b", X"f2bd",
                                                        X"f5e5", X"f33b", X"02ef", X"0d1b", X"ed28", X"f49f", X"f9b2", X"034b", X"12a1", X"058c", X"03fb", X"0a5c", X"0c8f", X"1dc7",
                                                        X"1e7e", X"eae5", X"1031", X"e8ac", X"fea0", X"07c5", X"08e9", X"f565", X"f627", X"f280", X"172d", X"0df1", X"f545", X"03d1",
                                                        X"0677", X"1288", X"0542", X"0cb0", X"f4c8", X"036c", X"f2ff", X"1dea", X"ef6c", X"e1d4", X"0f83", X"077e", X"f5c0", X"f856",
                                                        X"0258", X"131e", X"1498", X"fa57", X"f822", X"09c6", X"1dff", X"1553", X"ffec", X"0fd6", X"de78", X"06e4", X"ec22", X"f992",
                                                        X"0517", X"fbaa", X"1430", X"f012", X"0d7e", X"09c1", X"076a", X"e140", X"09f4", X"e7b3", X"0aa5", X"e601", X"f2cf", X"f959",
                                                        X"0bbf", X"27a6", X"f3b9", X"078e", X"f1fe", X"ecb4", X"021f", X"f4ba", X"2bbd", X"0af1", X"0eac", X"160a", X"f65d", X"e229",
                                                        X"ee5d", X"e6d0", X"e7e8", X"08a4", X"1708", X"100c", X"eb1e", X"0298", X"0d9b", X"0187", X"17d3", X"0941", X"dbd5", X"dc18",
                                                        X"fce3", X"e5b2", X"ff33", X"fb09", X"e096", X"35fa", X"f832", X"f855", X"01fd", X"1b95", X"074d", X"ff30", X"eb02", X"eb8c",
                                                        X"0eaa", X"09e8", X"fed0", X"15ef", X"e7af", X"df5e", X"fddc", X"1f2a", X"0bff", X"0ea1", X"f5a1", X"f6c2", X"255b", X"f16a",
                                                        X"1341", X"f7ec", X"0fdd", X"e880", X"0f47", X"ff6e", X"e366", X"dde5", X"2136", X"0122", X"0810", X"ea89", X"dc42", X"03ff",
                                                        X"144e", X"0718", X"f530", X"e3f6", X"1de4", X"29c0", X"0aec", X"0edf", X"e66c", X"05cd", X"f624", X"f1c6", X"07da", X"ef9e",
                                                        X"ff10", X"fa75", X"fede", X"1f5c", X"0731", X"03f3", X"3288", X"07a1", X"00c6", X"df61", X"0c51", X"056a", X"0468", X"e6fc",
                                                        X"0353", X"fd98", X"01f9", X"fe67", X"0601", X"fda2", X"1428", X"0078", X"2668", X"fd58", X"f3a6", X"0f0a", X"f77b", X"ea32",
                                                        X"eb80", X"03bd", X"e738", X"fb05", X"f714", X"181e", X"0c42", X"1b51", X"0421", X"f34f", X"d687", X"ed7a", X"0bae", X"01eb",
                                                        X"f4d4", X"f724", X"f927", X"28d8", X"1819", X"f917", X"d6e4", X"f719", X"03e2", X"0d66", X"0b4a", X"02ea", X"24e8", X"09e9",
                                                        X"f179", X"1889", X"ecda", X"eeb8", X"ed84", X"160c", X"f3dd", X"f84e", X"faac", X"0f3f", X"ef62", X"14ec", X"f96e", X"1713",
                                                        X"263e", X"03da", X"05f6", X"10bf", X"f216", X"f909", X"e968", X"0da4", X"1a09", X"fc4c", X"ff20", X"f6a8", X"0cef", X"0907",
                                                        X"0244", X"e8d8", X"22e4", X"ea99", X"f051", X"00e7", X"ee2e", X"e435", X"197d", X"29fa", X"f22f", X"f5b9", X"09fd", X"ef2a",
                                                        X"11cf", X"0832", X"fc99", X"f707", X"f05a", X"fbb0", X"f27e", X"f587", X"0a66", X"f227", X"f5a1", X"0861", X"187b", X"0396",
                                                        X"f053", X"f349", X"0fb7", X"f60c", X"1a28", X"ecbf", X"f377", X"f3d4", X"02dc", X"ff6c", X"0a3f", X"fedc", X"fd3d", X"02e6",
                                                        X"f72b", X"fa06", X"093c", X"00cd", X"0183", X"115a", X"00e7", X"e50c", X"1853", X"e53c", X"e53b", X"049e", X"eff2", X"ed84",
                                                        X"0482", X"1a3d", X"ee22", X"0143", X"1107", X"039c", X"0523", X"1969", X"0448", X"eb90", X"1f0c", X"f629", X"f63e", X"f890",
                                                        X"edd6", X"f71a", X"da62", X"28ce", X"13d1", X"0048", X"fca3", X"07bb", X"0ef7", X"0930", X"028b", X"fc14", X"dcb8", X"f2fe",
                                                        X"f77f", X"f66f", X"f72e", X"e496", X"eac1", X"13e1", X"fa00", X"04e6", X"fa8d", X"09ae", X"127e", X"03c8", X"1055", X"0d3b",
                                                        X"f484", X"f556", X"0960", X"fb47", X"f54b", X"08b7", X"f296", X"1c5e", X"031e", X"122d", X"fa33", X"1064", X"f666", X"ed6a",
                                                        X"0d2e", X"feb3", X"e7f7", X"0173", X"ece0", X"016d", X"edb5", X"f64e", X"0d3b", X"1fc7", X"0513", X"01f7", X"0a4b", X"0422",
                                                        X"13ca", X"00bf", X"0c78", X"f885", X"29d0", X"f99b", X"f844", X"da95", X"ff04", X"f69c", X"f6e8", X"288e", X"ee35", X"1ff2",
                                                        X"0b9f", X"ff53", X"0891", X"f701", X"1743", X"f38a", X"0670", X"eb48", X"0ed7", X"f84b", X"f025", X"e8d7", X"fa0f", X"3107",
                                                        X"f5e8", X"fc2d", X"027e", X"0865", X"0f2a", X"21ae", X"0ff7", X"e3bc", X"d405", X"f432", X"f994", X"12fd", X"0523", X"de9f",
                                                        X"0cbd", X"16b8", X"212c", X"0e20", X"f386", X"0e42", X"10d1", X"0513", X"0129", X"0a8e", X"f488", X"e7b6", X"140d", X"1653",
                                                        X"fc4b", X"dd9a", X"069c", X"e87b", X"1cee", X"f7aa", X"0748", X"f873", X"fbf3", X"084f", X"0165", X"f116", X"039e", X"f260",
                                                        X"0fcd", X"ea98", X"e7c4", X"f9be", X"04a5", X"09a0", X"f1c7", X"fd93", X"0abd", X"0036", X"1e49", X"14d5", X"0fc3", X"f480",
                                                        X"deb9", X"045c", X"01d0", X"133a", X"d579", X"eee7", X"0f5f", X"1378", X"1109", X"f5e7", X"f013", X"132f", X"0db2", X"f289",
                                                        X"06b9", X"114d", X"f313", X"f2f5", X"157f", X"00b9", X"ef1d", X"09e4", X"0bcb", X"ea32", X"305b", X"fe75", X"f9a4", X"0206",
                                                        X"009c", X"fda5", X"0eeb", X"041a", X"1a80", X"0a27", X"09f6", X"f9af", X"db7c", X"efc9", X"057d", X"fa33", X"1cba", X"12e1",
                                                        X"0911", X"1383", X"f2a3", X"fa6c", X"1248", X"07ec", X"ddd5", X"edbe", X"1600", X"11fd", X"efad", X"f330", X"0796", X"167a",
                                                        X"f1d4", X"fc33", X"d909", X"079a", X"016f", X"13d3", X"136a", X"f318", X"f4ee", X"1737", X"fb0e", X"f724", X"004a", X"ec97",
                                                        X"118a", X"0317", X"2809", X"0e52", X"fe32", X"f961", X"0d02", X"0ce0", X"1844", X"ea6d", X"0021", X"eb25", X"f09e", X"1d33",
                                                        X"e34a", X"fe96", X"1bb4", X"2b98", X"1b8b", X"023e", X"f115", X"fd02", X"0202", X"fcba", X"1bf9", X"0093", X"26a0", X"0c50",
                                                        X"f600", X"f9ab", X"f2a0", X"1582", X"0cfb", X"1913", X"0afb", X"eeec", X"fc99", X"0b9c", X"06a1", X"08af", X"1d90", X"eea8",
                                                        X"ef39", X"f395", X"06c5", X"eb8e", X"0ab0", X"0f12", X"f7ea", X"065f", X"19e9", X"fc87", X"f2fb", X"f7c0", X"0712", X"fc95",
                                                        X"f415", X"0cda", X"eee9", X"f4b6", X"0755", X"09fa", X"f831", X"0076", X"f3f6", X"f98f", X"10d2", X"e495", X"f56d", X"1335",
                                                        X"0ec5", X"127f", X"22ca", X"0369", X"f648", X"f116", X"fa0f", X"158a", X"cbfc", X"02e4", X"c8a3", X"29eb", X"2518", X"1207",
                                                        X"f611", X"056c", X"14ee", X"ff8f");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"ff8f";
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

