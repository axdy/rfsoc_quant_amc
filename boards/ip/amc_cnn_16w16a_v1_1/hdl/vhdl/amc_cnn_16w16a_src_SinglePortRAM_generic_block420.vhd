-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block420.vhd
-- Created: 2023-08-04 11:27:25
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block420
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage66/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block420 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block420;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block420 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"006e", X"0662", X"fe5e", X"ff00", X"fa90", X"0009",
                                                        X"e998", X"1a56", X"05b4", X"0207", X"edee", X"122f", X"feae", X"fc6a", X"f567", X"edec", X"0ecf", X"face", X"ffb0", X"05be",
                                                        X"fe07", X"067c", X"01f3", X"f9f9", X"16c4", X"162c", X"fe15", X"f9ad", X"05de", X"2628", X"f321", X"ed62", X"faf6", X"0ef0",
                                                        X"e194", X"f8e1", X"eedc", X"1804", X"e695", X"002d", X"e248", X"1600", X"fa37", X"221d", X"07da", X"f935", X"df1d", X"f971",
                                                        X"f4eb", X"167e", X"f5bd", X"1b38", X"f63b", X"f987", X"0b90", X"2153", X"1616", X"104f", X"f723", X"1374", X"0ade", X"049b",
                                                        X"f69e", X"02fa", X"182d", X"ff1a", X"e3ff", X"183e", X"f421", X"21d1", X"174b", X"19fc", X"1e40", X"072a", X"07aa", X"e44f",
                                                        X"0222", X"0188", X"e0b8", X"fe6f", X"fe51", X"e9c3", X"ec79", X"fa25", X"fff4", X"1134", X"fb5b", X"097a", X"05a5", X"1105",
                                                        X"ea81", X"1b94", X"f315", X"1f2d", X"f103", X"057c", X"fa05", X"e825", X"ea10", X"f5ed", X"03f6", X"e373", X"2354", X"e9a9",
                                                        X"def0", X"1990", X"f24c", X"e1c8", X"0859", X"045a", X"dcc6", X"1227", X"0667", X"08d4", X"e115", X"0c48", X"ee91", X"f7bd",
                                                        X"e372", X"0b07", X"ef2a", X"0c9f", X"fd24", X"ecd1", X"fb4d", X"048f", X"f374", X"215f", X"0009", X"07cf", X"13bc", X"f3e6",
                                                        X"fae1", X"017a", X"0699", X"004b", X"f661", X"1c28", X"1f1a", X"fbfc", X"faf6", X"11a7", X"fe1b", X"0cb7", X"f2f8", X"073f",
                                                        X"dc2f", X"e239", X"0bbe", X"ded5", X"0b3b", X"120f", X"1ccd", X"ea86", X"0966", X"f02a", X"1486", X"07d4", X"f53c", X"02be",
                                                        X"0014", X"e72a", X"d9f2", X"0170", X"0e5b", X"f4e8", X"eda5", X"f62a", X"1e6f", X"fcbb", X"1e22", X"f537", X"fac1", X"eec0",
                                                        X"ef6d", X"203a", X"044d", X"0f23", X"e254", X"071a", X"090d", X"eda0", X"f390", X"f618", X"f3eb", X"024d", X"f966", X"0b77",
                                                        X"f83b", X"0141", X"00fd", X"0f3f", X"0a28", X"f7ef", X"ff6a", X"f708", X"fc8a", X"0c8c", X"f261", X"1164", X"0789", X"e763",
                                                        X"235c", X"0379", X"1681", X"ef20", X"0b13", X"0858", X"ffff", X"f233", X"ead0", X"0255", X"01cb", X"0acf", X"16f3", X"08bf",
                                                        X"13e3", X"11d5", X"2f8f", X"031f", X"0cfe", X"f6b1", X"0df3", X"0401", X"fa43", X"fe32", X"ed8c", X"0538", X"152b", X"f2e7",
                                                        X"f271", X"ea56", X"1788", X"f506", X"155f", X"0d4e", X"0ba9", X"f764", X"1076", X"f2aa", X"0369", X"f2ce", X"df64", X"f350",
                                                        X"f69a", X"0baa", X"fd69", X"152d", X"1896", X"0efd", X"0b83", X"18a9", X"19f4", X"0b0b", X"1fdb", X"fb99", X"1324", X"0c2b",
                                                        X"ec7b", X"e161", X"fd7a", X"18fa", X"f658", X"e813", X"0bd2", X"f6d3", X"f0aa", X"0752", X"f899", X"f918", X"1a43", X"f97c",
                                                        X"010e", X"1621", X"0fb3", X"feb7", X"094d", X"f412", X"fe3d", X"fe7a", X"0984", X"2091", X"0b62", X"071d", X"fd6c", X"f5ad",
                                                        X"fd47", X"fbd5", X"fe32", X"223c", X"d8fc", X"0969", X"db38", X"f5fe", X"1d4d", X"ff27", X"f28a", X"f5ff", X"0800", X"0172",
                                                        X"0cc3", X"fe2b", X"f73a", X"ff08", X"03c1", X"06f8", X"d5f8", X"fb56", X"08d2", X"080d", X"f7f7", X"f7ac", X"e291", X"191d",
                                                        X"fede", X"0875", X"fec4", X"0920", X"fa16", X"ee10", X"0509", X"f3bc", X"e2e8", X"ea31", X"f34f", X"f6e7", X"0460", X"0995",
                                                        X"fc9a", X"fa40", X"eb94", X"1229", X"ed59", X"181c", X"1189", X"07b5", X"18a0", X"1311", X"fd13", X"f635", X"0563", X"02d8",
                                                        X"1dd9", X"17f2", X"0fbd", X"ef54", X"ea26", X"f8a1", X"fc23", X"1304", X"0017", X"f80d", X"01d7", X"1924", X"ee86", X"f7b1",
                                                        X"0bff", X"fdf6", X"fc17", X"1fcb", X"fddb", X"f91c", X"00da", X"f9ce", X"128e", X"f779", X"f40f", X"e70a", X"0aed", X"11e5",
                                                        X"f937", X"e5b1", X"1238", X"0b6d", X"2750", X"01ad", X"d48d", X"f269", X"09f5", X"edaf", X"ff44", X"fe4d", X"0005", X"f422",
                                                        X"fedc", X"12b0", X"e000", X"fee7", X"0c55", X"f949", X"f7dc", X"1684", X"0733", X"0f9e", X"1d94", X"047c", X"07fc", X"01c7",
                                                        X"07fd", X"0952", X"1ada", X"fc16", X"1079", X"ef0f", X"007c", X"1547", X"283b", X"1d91", X"07dd", X"13ce", X"f7a6", X"030a",
                                                        X"2bc8", X"fd09", X"fc2d", X"f371", X"f6f8", X"f79e", X"0e63", X"0268", X"f09f", X"feb4", X"d6cb", X"1889", X"1f0e", X"1a1c",
                                                        X"105a", X"f0b8", X"1106", X"f809", X"f146", X"ef7f", X"09b9", X"fde5", X"05ec", X"f996", X"0604", X"eafc", X"08e4", X"0daa",
                                                        X"096d", X"f48e", X"1151", X"dbc1", X"0fff", X"f003", X"1313", X"0477", X"febc", X"0414", X"f569", X"f7e7", X"f47b", X"fac5",
                                                        X"0f76", X"0c3a", X"f7a9", X"0443", X"15c8", X"fe56", X"2a5d", X"0d38", X"0e31", X"f55e", X"011f", X"07a8", X"0824", X"ddbd",
                                                        X"054f", X"fdfa", X"021b", X"0071", X"1090", X"0473", X"0a35", X"fc96", X"0352", X"f201", X"0422", X"ffec", X"f727", X"190c",
                                                        X"d9d0", X"fa92", X"e634", X"f4f3", X"f33d", X"12c7", X"f720", X"0312", X"11e1", X"06a1", X"15e7", X"fadd", X"f783", X"eaab",
                                                        X"01d9", X"e76e", X"09d8", X"e8c0", X"10a6", X"ff2c", X"1b76", X"e77c", X"0d0c", X"eebc", X"f6a9", X"ebda", X"277d", X"fc97",
                                                        X"0ce7", X"e5ba", X"f889", X"0dbf", X"0713", X"e9f5", X"019f", X"10b4", X"176f", X"119a", X"fb43", X"0085", X"1256", X"0d5c",
                                                        X"0530", X"0a47", X"fcac", X"e56e", X"0626", X"0941", X"fc38", X"e124", X"fe3d", X"0507", X"23b6", X"e164", X"e1d6", X"f32f",
                                                        X"14cb", X"1131", X"02b5", X"0116", X"fed9", X"ef76", X"0a62", X"0b54", X"cbe2", X"fc81", X"122a", X"05bd", X"31c1", X"e05f",
                                                        X"13c5", X"f1ad", X"1199", X"fb30", X"f89d", X"f41b", X"0dc5", X"0da9", X"0299", X"ffbe", X"cf63", X"26eb", X"e3ad", X"11da",
                                                        X"2952", X"fe74", X"e5fa", X"0fee", X"13bb", X"0c6c", X"1042", X"0ede", X"083d", X"e667", X"2057", X"de9b", X"fa01", X"19f5",
                                                        X"fded", X"0752", X"08a9", X"27b2", X"fbe3", X"fa81", X"20a7", X"fbfe", X"0d61", X"fc3f", X"02ba", X"082d", X"0eb1", X"e75d",
                                                        X"ff2e", X"189c", X"de43", X"186a", X"1be5", X"17e2", X"f5f3", X"f931", X"fe02", X"12a4", X"0a18", X"03c5", X"fd6c", X"007b",
                                                        X"28c4", X"081b", X"114f", X"1333", X"030e", X"ee2d", X"0e47", X"0862", X"2038", X"f92a", X"f57b", X"fb95", X"0248", X"0a12",
                                                        X"f93a", X"f2ac", X"045a", X"fcf7", X"d0f0", X"f21d", X"0daa", X"01ea", X"f926", X"ee31", X"fc70", X"0e56", X"1b64", X"0e9e",
                                                        X"09b7", X"0248", X"fe77", X"0557", X"f777", X"fa4c", X"d3f4", X"e458", X"01f3", X"fe39", X"0fbb", X"1abe", X"0ec0", X"1b4e",
                                                        X"0138", X"f705", X"04fe", X"fa3b", X"09d3", X"18e7", X"01af", X"f2f6", X"f3c4", X"f969", X"e051", X"f03e", X"e185", X"fa28",
                                                        X"066e", X"0dcc", X"0091", X"0cdf", X"1ff7", X"f1dc", X"07cf", X"fcc9", X"fdf3", X"f5e1", X"2125", X"f169", X"097c", X"f19b",
                                                        X"f8cf", X"09da", X"0d39", X"0460", X"0091", X"ed14", X"f294", X"fe17", X"1ffc", X"18f3", X"08b8", X"095a", X"16ba", X"fc35",
                                                        X"10b0", X"d97b", X"fc10", X"f062", X"f9fa", X"001a", X"f82c", X"fcb8", X"07a5", X"fcfa", X"0e3c", X"f42e", X"fae6", X"ff11",
                                                        X"da7b", X"effe", X"1b45", X"ed2a", X"eb3c", X"0b1a", X"09da", X"ef4e", X"1dad", X"f8fd", X"152c", X"f802", X"ffd0", X"045a",
                                                        X"f475", X"11b1", X"ed1b", X"f35a", X"09e6", X"d40b", X"0445", X"0962", X"0c7d", X"04ae", X"21af", X"0614", X"1196", X"0a0d",
                                                        X"0330", X"f5fe", X"fc3c", X"1c80", X"d725", X"f1f1", X"ffa9", X"df1a", X"00c7", X"df28", X"d998", X"fdd2", X"f230", X"0508",
                                                        X"0829", X"f1ce", X"fda1", X"f2c5", X"0d1a", X"11cf", X"1572", X"0468", X"0a91", X"f35d", X"2108", X"2300", X"2596", X"eca6",
                                                        X"178f", X"fe7b", X"ff4d", X"0d87", X"1cf6", X"f883", X"06ea", X"f6fd", X"0d0c", X"1e63", X"0553", X"0ec6", X"ec37", X"2dff",
                                                        X"dd03", X"f7e5", X"0a61", X"ffe9", X"03f4", X"deef", X"ffab", X"053b", X"05cb", X"f056", X"fadc", X"fd60", X"022c", X"06a2",
                                                        X"0308", X"f826", X"fb2b", X"00e4", X"f345", X"0c77", X"f016", X"f6af", X"ff40", X"0344", X"fd35", X"021f", X"15a8", X"03ae",
                                                        X"ffe4", X"212b", X"102b", X"0a86", X"e5a3", X"1c6e", X"e0a9", X"fd38", X"f4c4", X"18be", X"16f2", X"07c5", X"18bd", X"0011",
                                                        X"ff35", X"0cfd", X"f6bc", X"f793", X"21f4", X"fe80", X"0895", X"fe9c", X"044a", X"fc12", X"fa8b", X"f920", X"0909", X"068c",
                                                        X"eb56", X"1014", X"fa48", X"e86b", X"e1d9", X"116f", X"0380", X"21e4", X"e477", X"08db", X"f8f6", X"05db", X"0fc2", X"f5cf",
                                                        X"f1eb", X"f322", X"f0fd", X"1ce3", X"c3db", X"f746", X"fbc8", X"0aa2", X"dbf1", X"f1c5", X"1eed", X"f345", X"fcb2", X"f9a7",
                                                        X"0541", X"127b", X"ee3b", X"0953", X"0afb", X"11ef", X"c906", X"fe89", X"f7ca", X"0184", X"e5ae", X"e21d", X"eb30", X"0c6c",
                                                        X"eea9", X"050f", X"0f12", X"1b3b", X"fa92", X"0f29", X"0e60", X"e464", X"0709", X"0052", X"08e2", X"0bfc", X"026e", X"ec5f",
                                                        X"1801", X"ecc9", X"0d97", X"fb41", X"0ff5", X"f660", X"f5c4", X"02e6", X"026d", X"228e", X"124b", X"1b99", X"02fe", X"eaec",
                                                        X"070f", X"ed8b", X"0aa8", X"14e2", X"ff82", X"fafc", X"0762", X"073e", X"e7be", X"0d66", X"fd22", X"04b7", X"fd88", X"eb50",
                                                        X"0e17", X"f9bd", X"d869", X"063b", X"04c1", X"fd72", X"0b03", X"f5f7", X"24e3", X"0057", X"eb7f", X"fcd5", X"00a6", X"19e4",
                                                        X"e8d6", X"ff75", X"eb36", X"03c0", X"e594", X"0255", X"04a2", X"199c", X"0050", X"06a2", X"21e1", X"ff51", X"e67b", X"fb6b",
                                                        X"0674", X"24bf", X"2219", X"f27b", X"f235", X"e7fc", X"055f", X"16b7", X"f308", X"1ca8", X"eadc", X"081f", X"0da0", X"ff4f",
                                                        X"fce2", X"007a", X"facc", X"2825", X"e73a", X"f81a", X"0925", X"f680", X"d41c", X"020b", X"199a", X"21ee", X"d62d", X"fa8e",
                                                        X"fdeb", X"ed00", X"ebc6", X"0b32", X"0598", X"2588", X"23df", X"d516", X"0087", X"0a2f", X"d3bb", X"ff56", X"fff2", X"1f5b",
                                                        X"de64", X"f7ae", X"f9af", X"f210", X"ffca", X"0fea", X"ed8e", X"11e7", X"265d", X"ef56", X"f099", X"eced", X"ee07", X"fd1e",
                                                        X"d5b8", X"efd1", X"ea19", X"0294", X"0d39", X"0608", X"d9a2", X"0ea7", X"ff6a", X"f209", X"172a", X"dfb9", X"f0ca", X"f3da",
                                                        X"e0e0", X"f87f", X"db09", X"e8b0", X"0055", X"0cd2", X"f9b3", X"edb1", X"f0cc", X"0322", X"19b4", X"0dba", X"e99c", X"f3f0",
                                                        X"0533", X"eaea", X"02dc", X"0e2e", X"dddb", X"fbe8", X"e84a", X"0746", X"0ce3", X"1756", X"00e3", X"eb35", X"0d11", X"0dd5",
                                                        X"df06", X"f845", X"0490", X"f6f2", X"0765", X"1153", X"1398", X"e111", X"f3f8", X"0f28", X"0f35", X"0a6c", X"f54a", X"ff43",
                                                        X"025f", X"1521", X"ff5c", X"ed87", X"1983", X"0a36", X"1cca", X"1747", X"dd87", X"f444", X"ef92", X"fcac", X"feb6", X"0cfa",
                                                        X"0103", X"f06f", X"1932", X"17f1", X"05c6", X"f6e9", X"1481", X"1c7c", X"138e", X"ea42", X"116e", X"0bdc", X"1ace", X"10e7",
                                                        X"e2bc", X"0db0", X"fb51", X"f4c5", X"0c20", X"e641", X"dfc9", X"0ab6", X"f68c", X"05d5", X"153b", X"2299", X"fee5", X"f197",
                                                        X"0b32", X"0d3d", X"070e", X"f170", X"0875", X"f691", X"19fa", X"01a9", X"c572", X"0af2", X"f350", X"09b9", X"067f", X"1b83",
                                                        X"f584", X"ff1d", X"fa07", X"feab", X"fb56", X"f606", X"0554", X"fc90", X"1125", X"e359", X"fae8", X"17eb", X"f4db", X"f75a",
                                                        X"191a", X"0428", X"0644", X"f920", X"2af7", X"052d", X"2a19", X"060f", X"0e54", X"feb1", X"0c48", X"ed26", X"cf89", X"ead7",
                                                        X"e8d0", X"0aff", X"3264", X"22e6", X"ea55", X"efb7", X"1c25", X"fc8d", X"174e", X"0ad4", X"1765", X"0150", X"079b", X"f15a",
                                                        X"fe26", X"f33a", X"ff95", X"eee1", X"1dd6", X"09e3", X"0378", X"08d0", X"f842", X"0a46", X"184a", X"ff0d", X"128b", X"fc97",
                                                        X"11ac", X"fae2", X"f107", X"f5de", X"f5da", X"04a1", X"064b", X"da5b", X"0243", X"e55b", X"01cd", X"f883", X"17c0", X"f02e",
                                                        X"ff4b", X"e252", X"0649", X"0a7e", X"e6a2", X"0f47", X"0d07", X"f930", X"0542", X"0f44", X"1780", X"1388", X"2879", X"ea34",
                                                        X"1060", X"0ba6", X"02b0", X"11f0", X"061a", X"09be", X"e2ee", X"f37e", X"04ba", X"fee4", X"268f", X"e7c8", X"1098", X"e8ff",
                                                        X"18e0", X"fc2c", X"1894", X"0185", X"13ce", X"f58d", X"0889", X"fe14", X"e78a", X"f053", X"f320", X"12e1", X"fe55", X"f701",
                                                        X"0a3f", X"f5d9", X"2e2d", X"0672", X"1c91", X"021b", X"180e", X"f538", X"f677", X"faa3", X"f003", X"eb12", X"fd3e", X"ec95",
                                                        X"facf", X"0ca2", X"fcf5", X"ef52", X"37c6", X"061e", X"0d2e", X"1176", X"0e34", X"ff04", X"f52a", X"045a", X"0047", X"e3b5",
                                                        X"f51b", X"0248", X"188e", X"0905", X"fbe1", X"01ee", X"10e8", X"fd81", X"1c95", X"0111", X"0647", X"e357", X"fcd9", X"f15d",
                                                        X"fbfc", X"e508", X"067c", X"e8a5", X"1f2a", X"1a7e", X"e08e", X"0286", X"3bc3", X"f11b", X"faa3", X"d729", X"106e", X"ffe8",
                                                        X"e5cc", X"106d", X"164f", X"f435", X"ee9e", X"f1a7", X"2174", X"e9d1", X"fcba", X"e203", X"feeb", X"1380", X"fdb0", X"e2c9",
                                                        X"0fb5", X"dfe8", X"03a0", X"f42f", X"ed34", X"e792", X"0078", X"faec", X"2339", X"ed3a", X"f797", X"06a5", X"1238", X"0f2d",
                                                        X"19b1", X"10cc", X"1cae", X"e88c", X"faf6", X"ed3b", X"07b2", X"f3f8", X"f72d", X"03a0", X"0b23", X"0381", X"fb51", X"09c7",
                                                        X"1375", X"f351", X"161d", X"fe5c", X"f748", X"f265", X"0c9c", X"1b2b", X"dae6", X"1a8c", X"fe35", X"189a", X"12f9", X"0ab0",
                                                        X"ffe3", X"f653", X"15df", X"fb69", X"088b", X"fe5d", X"11e3", X"063d", X"f988", X"f5f7", X"0292", X"fa81", X"02e4", X"ff60",
                                                        X"24a4", X"f336", X"e87d", X"0815", X"081b", X"0113", X"0d22", X"0d42", X"efde", X"e258", X"07ec", X"1301", X"d873", X"1039",
                                                        X"0d26", X"0aca", X"05d7", X"1483", X"f1c8", X"faba", X"023a", X"ee8b", X"0189", X"fcab", X"1b56", X"f2c1", X"0960", X"e1b7",
                                                        X"fd2e", X"000d", X"fa6e", X"193a", X"f193", X"f8ec", X"1f25", X"0488", X"fd06", X"f377", X"f970", X"0fb2", X"0739", X"04aa",
                                                        X"11de", X"1734", X"d051", X"1109", X"e2e1", X"f675", X"f96c", X"f2b9", X"1f73", X"fa93", X"0638", X"ec79", X"0b1c", X"ed32",
                                                        X"e426", X"00df", X"0158", X"0470", X"f8f5", X"0cfc", X"1730", X"0276", X"1b4a", X"f089", X"22fa", X"f170", X"0d61", X"0e58",
                                                        X"f639", X"0540", X"0f08", X"08a7", X"ff7c", X"e52a", X"dd6d", X"e915", X"fc81", X"012b", X"f199", X"159e", X"f657", X"09e1",
                                                        X"f9aa", X"fefc", X"0385", X"14f3", X"006b", X"0987", X"14c6", X"105c", X"e87f", X"edf0", X"e0d8", X"fe37", X"1165", X"119a",
                                                        X"e024", X"0de7", X"0a86", X"e723", X"038b", X"ff81", X"f8c3", X"fc92", X"08e2", X"0ca2", X"1dff", X"deaf", X"ff64", X"0ef6",
                                                        X"ea99", X"0373", X"0a27", X"0997", X"0f2c", X"e495", X"07f8", X"0c7c", X"f7a1", X"0b36", X"fea8", X"f1fb", X"1f11", X"0635",
                                                        X"129d", X"035a", X"fdcb", X"ece2", X"2624", X"df59", X"f30d", X"e95d", X"03ba", X"0a06", X"fcfd", X"1087", X"f7f2", X"1107",
                                                        X"1967", X"ef3c", X"0c3a", X"e6c7", X"222c", X"0388", X"e662", X"12a9", X"04e1", X"0a7c", X"f66b", X"06e2", X"f171", X"069f",
                                                        X"fd61", X"0be8", X"16e6", X"f2d9", X"f274", X"db4b", X"0275", X"02ba", X"1e0b", X"ed14", X"0d4d", X"f43e", X"f253", X"f60c",
                                                        X"ea75", X"04de", X"fe67", X"e943", X"d039", X"e787", X"0b62", X"f8da", X"e687", X"e732", X"f536", X"f0d4", X"0e3c", X"1188",
                                                        X"0225", X"082e", X"fa0c", X"fefa", X"12b3", X"0e86", X"d4c1", X"ea0d", X"ffc3", X"0295", X"1a56", X"ec1a", X"e476", X"e1d2",
                                                        X"27f7", X"08d8", X"0bbd", X"fc68", X"095e", X"f2ae", X"0ae1", X"e01b", X"f168", X"0207", X"ec95", X"f209", X"0e70", X"fec5",
                                                        X"09b8", X"f2cb", X"1e95", X"119b", X"ff2a", X"fd95", X"fc96", X"068a", X"f735", X"05ce", X"cfe0", X"0183", X"e60b", X"038c",
                                                        X"19d9", X"fde2", X"1f1d", X"0209", X"fd30", X"fdd2", X"0e79", X"eff6", X"f970", X"f45e", X"f50a", X"e3ac", X"d65c", X"e6e0",
                                                        X"fddc", X"0b5a", X"2ec5", X"ffc6", X"e2a4", X"eac8", X"1cfe", X"0cf0", X"fba3", X"0202", X"f785", X"ef03", X"041c", X"11a0",
                                                        X"cee0", X"f49d", X"f8db", X"0bd1", X"0189", X"e8d5", X"eb93", X"1270", X"fa3e", X"f6de", X"0d2f", X"ed9a", X"03ec", X"0612",
                                                        X"165b", X"0135", X"ee67", X"20c4", X"f566", X"f290", X"28ba", X"fecd", X"0592", X"0f71", X"f7b9", X"0897", X"0323", X"f9d1",
                                                        X"0e7b", X"0678", X"186d", X"ecd2", X"f387", X"0482", X"f310", X"e965", X"23da", X"0b20", X"1820", X"16b7", X"10c7", X"f8c7",
                                                        X"0792", X"0f0f", X"093f", X"fe7d", X"1d9d", X"056e", X"04c0", X"0342", X"f1ce", X"f185", X"1abf", X"fe83", X"1b32", X"eb44",
                                                        X"09cf", X"02da", X"093b", X"10df", X"fd8e", X"fdf3", X"0052", X"00c4", X"cb69", X"1747", X"f0b0", X"11b1", X"20ce", X"dc5c",
                                                        X"f531", X"10cc", X"e9d3", X"fff0", X"09ed", X"188e", X"eff8", X"08cf", X"1274", X"edd2", X"f462", X"0b1a", X"dd4e", X"0ae1",
                                                        X"0283", X"e914", X"fdde", X"f110", X"e239", X"f13a", X"01c9", X"fa54", X"ffda", X"008b", X"f6c7", X"0aae", X"d049", X"f082",
                                                        X"fbfa", X"f8f4", X"e050", X"269b", X"eb23", X"e7fe", X"f382", X"f2fa", X"15ee", X"0bf6", X"f925", X"1381", X"1278", X"0239",
                                                        X"faf0", X"e2c5", X"03f8", X"12a6", X"e396", X"04b4", X"16da", X"f9d1", X"f4fe", X"0247", X"0988", X"1218", X"f081", X"09f4",
                                                        X"f929", X"0ef5", X"d831", X"ff1a", X"0d21", X"f7c0", X"d6cb", X"1aef", X"03a8", X"28b8", X"fc4f", X"08d9", X"11a1", X"0282",
                                                        X"e895", X"1a65", X"0675", X"ff16", X"e7d7", X"dd16", X"02bb", X"ec92", X"d62f", X"f32a", X"1bee", X"f9ed", X"0595", X"10aa",
                                                        X"14a6", X"fcd1", X"fce1", X"fc52", X"0995", X"ef80", X"033b", X"f2a1", X"0d2e", X"ee81", X"d8b9", X"1d99", X"15f5", X"0ce2",
                                                        X"f94b", X"e8fc", X"0363", X"1874", X"e1a2", X"f7e2", X"f315", X"fdc0", X"2570", X"f0ae", X"fd53", X"ea5f", X"fe11", X"f705",
                                                        X"1376", X"f9f2", X"0cf1", X"061c", X"1707", X"f27f", X"e33f", X"ff5f", X"ff14", X"f166", X"f3c5", X"f170", X"15cc", X"fa5f",
                                                        X"f1d3", X"e8cf", X"ee47", X"1fa5", X"0bea", X"024c", X"0556", X"0da0", X"e579", X"0f8d", X"00d4", X"f2e1", X"e18d", X"f814",
                                                        X"e8da", X"f633", X"d63c", X"118b", X"17a3", X"f0a6", X"0bca", X"fffd", X"01be", X"e2bb", X"f334", X"1abe", X"f6fc", X"174c",
                                                        X"dcd1", X"f296", X"0c27", X"0396", X"f834", X"dc4c", X"fe13", X"0024", X"2509", X"1275", X"0d36", X"fadd", X"f845", X"0737",
                                                        X"feda", X"fb79", X"d829", X"fe36", X"f8e9", X"f9e8", X"0d16", X"1ab5", X"024d", X"0e8f", X"170a", X"f3b9", X"f518", X"069f",
                                                        X"f4c0", X"1666", X"02cd", X"f9d7", X"0c6f", X"056f", X"f239", X"02b6", X"f3f9", X"0607", X"070f", X"04d8", X"fef7", X"0aa1",
                                                        X"f5ff", X"1134", X"fbba", X"fe64", X"0564", X"efdb", X"d8e4", X"0302", X"00a3", X"044c", X"f59d", X"fca2", X"fb02", X"e7d5",
                                                        X"dc03", X"0166", X"f188", X"0fdd", X"f3ac", X"0a28", X"0409", X"1265", X"0b8f", X"fede", X"ebc1", X"2156", X"eee8", X"ffce",
                                                        X"2615", X"1609", X"f59a", X"00b0", X"015b", X"05ba", X"0d39", X"f2e0", X"f713", X"18b9", X"fefc", X"1309", X"004b", X"0f8d",
                                                        X"ee01", X"0e9e", X"140e", X"fbe2", X"04de", X"04d9", X"fd4c", X"00be", X"05f7", X"fa4e", X"fae1", X"ffdf", X"f153", X"fb9d",
                                                        X"016a", X"141d", X"ec35", X"01ed", X"1dde", X"fc43", X"ef05", X"0d96", X"0cec", X"05d0", X"095a", X"020a", X"055b", X"f932",
                                                        X"d4b0", X"0a00", X"fdab", X"f1d0", X"ffe2", X"fa9f", X"f36b", X"ec36", X"ec27", X"fad3", X"fe9a", X"133c", X"f6f1", X"0a0e",
                                                        X"f095", X"01b5", X"e4c0", X"f5ba", X"f8a8", X"13df", X"fb2b", X"fc3f", X"0d67", X"0087", X"fa1d", X"feb4", X"1bac", X"0be7",
                                                        X"efbe", X"072c", X"f613", X"f908", X"0a79", X"f6ea", X"0118", X"e98f", X"0333", X"f538", X"fb58", X"1b97", X"fb67", X"0a8e",
                                                        X"0a61", X"0b98", X"df0a", X"edf9");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"edf9";
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

