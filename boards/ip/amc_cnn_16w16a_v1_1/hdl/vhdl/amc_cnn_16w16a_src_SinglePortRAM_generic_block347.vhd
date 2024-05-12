-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block347.vhd
-- Created: 2023-08-04 11:27:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block347
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage114/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block347 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block347;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block347 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"122c", X"2345", X"f583", X"fed8", X"f978", X"ed6d",
                                                        X"ff98", X"f686", X"1e01", X"f3ab", X"15f3", X"e8ea", X"0425", X"0243", X"00d1", X"f890", X"fa79", X"1e81", X"eada", X"0b84",
                                                        X"fab8", X"df24", X"06dd", X"f54f", X"02c9", X"ec05", X"11b8", X"13d9", X"de16", X"ff06", X"fb18", X"f852", X"090a", X"faf5",
                                                        X"e8e3", X"0af7", X"e49d", X"e872", X"fc61", X"d432", X"fd9b", X"1988", X"0c44", X"0b0a", X"07d8", X"f427", X"0c69", X"ecb5",
                                                        X"f254", X"e9f2", X"e5c5", X"10ee", X"e907", X"1623", X"193f", X"d91e", X"0918", X"efb1", X"ebfc", X"0307", X"0dfc", X"fb4b",
                                                        X"20f0", X"07d3", X"0b98", X"313a", X"2a25", X"1330", X"1afb", X"edf0", X"1309", X"213b", X"f4d9", X"f175", X"fa49", X"0d27",
                                                        X"e08f", X"f348", X"0273", X"0bda", X"086b", X"fddc", X"2980", X"f766", X"1281", X"f33c", X"cc2b", X"173e", X"0817", X"e7b4",
                                                        X"e6f8", X"0a7c", X"02a5", X"d136", X"ec10", X"261a", X"0179", X"0b40", X"3057", X"0bf3", X"02f5", X"ff40", X"0063", X"fbc1",
                                                        X"deb2", X"014b", X"24e1", X"04c5", X"fcb1", X"0094", X"0ac3", X"fdc0", X"f026", X"0d93", X"0423", X"0f83", X"fe67", X"0caa",
                                                        X"f0a2", X"f126", X"15fa", X"1a0d", X"fce9", X"e69d", X"fef0", X"f944", X"e9c3", X"0cca", X"fbcd", X"e408", X"f6a2", X"ede5",
                                                        X"fcb9", X"0915", X"07de", X"223f", X"fbcb", X"186b", X"1f02", X"ed19", X"01ea", X"fe6d", X"f021", X"db4c", X"0493", X"0bb8",
                                                        X"edac", X"fad2", X"e53f", X"e65b", X"178e", X"e620", X"f508", X"11c0", X"f197", X"0d23", X"f4a6", X"ea1e", X"0249", X"fb08",
                                                        X"ef84", X"fd98", X"e486", X"124d", X"f55b", X"0522", X"2345", X"d61f", X"1fb1", X"ff78", X"f679", X"0322", X"0c41", X"0004",
                                                        X"ff88", X"d9e2", X"f9cd", X"2830", X"ea67", X"1923", X"ed6a", X"e7ac", X"104b", X"15b4", X"d528", X"194b", X"e5e9", X"11cc",
                                                        X"178d", X"f2d4", X"0985", X"0d92", X"fc4a", X"09f7", X"1df4", X"0a9e", X"e58b", X"1084", X"fad4", X"0a80", X"e6f0", X"2a07",
                                                        X"1c52", X"eacb", X"fe99", X"f89d", X"0292", X"0d51", X"eaa8", X"30e0", X"df7e", X"1b33", X"e594", X"f484", X"c962", X"ff00",
                                                        X"d0a5", X"eb69", X"da33", X"f9f8", X"07ed", X"f6b2", X"edb6", X"204a", X"fce8", X"ffa7", X"296f", X"e8e7", X"00dc", X"ea1f",
                                                        X"e878", X"e7fd", X"069f", X"117a", X"05ef", X"de50", X"007d", X"dee1", X"fc84", X"f211", X"062a", X"11fc", X"19ea", X"ff3e",
                                                        X"f876", X"0555", X"f1d9", X"1068", X"0977", X"192e", X"0b33", X"231c", X"f1e3", X"03ca", X"f96f", X"033b", X"fb74", X"ebdc",
                                                        X"0c0f", X"0d83", X"dfa9", X"f4f4", X"0d38", X"0942", X"1070", X"f4e7", X"d9e2", X"0820", X"dc5d", X"f467", X"f93e", X"fa73",
                                                        X"f8a5", X"f3fb", X"2786", X"088e", X"f39f", X"ef5a", X"292e", X"f3c3", X"05c6", X"fb1b", X"fc78", X"fe8d", X"223f", X"1144",
                                                        X"0fba", X"ee4c", X"f8fb", X"0579", X"ce35", X"0977", X"eba7", X"faec", X"1954", X"12cb", X"16f0", X"ff18", X"0b1c", X"164c",
                                                        X"18f9", X"fb83", X"19d0", X"f3d9", X"f355", X"1099", X"126b", X"00c1", X"d3db", X"0527", X"14ac", X"f1f4", X"1377", X"0408",
                                                        X"fd03", X"f5e1", X"f947", X"1195", X"f9f2", X"1a7f", X"eab3", X"07d7", X"3356", X"18b1", X"ec8f", X"fce0", X"eef1", X"00db",
                                                        X"0ed1", X"1f77", X"01a6", X"2490", X"ef48", X"07c5", X"f9a8", X"180b", X"1874", X"2af0", X"dfc7", X"1031", X"f58b", X"1f94",
                                                        X"0942", X"dec4", X"09ff", X"f069", X"e211", X"f19f", X"f6f8", X"facf", X"efd7", X"2191", X"0258", X"ff86", X"0188", X"f549",
                                                        X"ea4d", X"fa05", X"fdb4", X"decf", X"08b4", X"149b", X"e71e", X"f821", X"f08b", X"fc13", X"07aa", X"0615", X"080a", X"057e",
                                                        X"f114", X"0568", X"06ac", X"09f5", X"e659", X"e545", X"0147", X"013f", X"f003", X"ebb3", X"0550", X"ecf4", X"f41a", X"1312",
                                                        X"0d4f", X"e8ff", X"29b9", X"f823", X"ee26", X"e4de", X"1468", X"0b6c", X"ee8c", X"0ea6", X"df9c", X"f56a", X"e6ca", X"2e30",
                                                        X"0e21", X"f50a", X"f909", X"fb00", X"2866", X"0c32", X"e1c4", X"e765", X"35b8", X"0986", X"e195", X"1c5b", X"1d84", X"0959",
                                                        X"f261", X"0926", X"f1a6", X"12d4", X"03c7", X"14c5", X"dfa7", X"e67e", X"f489", X"0fe0", X"1c62", X"e1da", X"16dc", X"e6b9",
                                                        X"0c2f", X"142c", X"f725", X"f675", X"fc76", X"f43f", X"f413", X"1d3e", X"e932", X"0828", X"f253", X"f896", X"03b0", X"012b",
                                                        X"f69c", X"eb74", X"fbcc", X"f35d", X"efa7", X"0c3b", X"100d", X"0e47", X"f254", X"e07c", X"0849", X"edc3", X"e9f5", X"108b",
                                                        X"ff75", X"e28d", X"e6b5", X"25c0", X"e988", X"13d6", X"e20f", X"ec79", X"0073", X"edc1", X"087d", X"30f5", X"feb6", X"ffe2",
                                                        X"f8bf", X"e83b", X"ed4b", X"0326", X"0253", X"152b", X"0378", X"f79d", X"1328", X"f0ae", X"fd20", X"ec08", X"fb0b", X"15e3",
                                                        X"24bc", X"0bfc", X"e108", X"fceb", X"d4b2", X"f159", X"e119", X"1d7f", X"c4df", X"2503", X"f337", X"f1cb", X"e9d4", X"0a03",
                                                        X"02f5", X"fb2b", X"19ff", X"e6d0", X"fac5", X"1833", X"157c", X"20c4", X"1fc3", X"0f5a", X"c36d", X"ee24", X"0e54", X"f721",
                                                        X"f268", X"0ee2", X"ead7", X"2253", X"dddf", X"fcdc", X"ec97", X"e8fa", X"2515", X"e98a", X"e1ed", X"0223", X"fbf4", X"0664",
                                                        X"0e0b", X"08fe", X"f653", X"ffb5", X"1da9", X"d70e", X"22e3", X"f611", X"e87d", X"0a6d", X"01e9", X"0507", X"1852", X"0ccd",
                                                        X"1bf0", X"f40b", X"046d", X"0e6a", X"11a2", X"e950", X"ef5c", X"16a2", X"0f58", X"04d2", X"f44c", X"1467", X"e634", X"cf11",
                                                        X"f42b", X"eb52", X"fc80", X"e644", X"058d", X"fb1f", X"2293", X"1d0d", X"013c", X"ff62", X"14be", X"16f4", X"e187", X"0e48",
                                                        X"00f4", X"0e01", X"d2a7", X"ee16", X"f131", X"09a2", X"d14e", X"f112", X"0e85", X"fbc3", X"e52d", X"eec6", X"2f93", X"e483",
                                                        X"ff22", X"084e", X"27d0", X"e6d1", X"1628", X"eb3b", X"10c3", X"08e8", X"0634", X"fb83", X"ee5a", X"0272", X"fc6d", X"01d0",
                                                        X"e92a", X"f70c", X"f8ed", X"12ab", X"1c0c", X"fd8a", X"0895", X"0a4d", X"2248", X"fdf5", X"021b", X"f44d", X"00b5", X"fdbc",
                                                        X"f1a3", X"08a4", X"2935", X"06dd", X"f215", X"1eb9", X"ef95", X"e17e", X"1f71", X"0132", X"f0c3", X"0ddb", X"fba7", X"f589",
                                                        X"0bc0", X"0bfe", X"0584", X"3193", X"e989", X"02bc", X"ff2d", X"125e", X"f42a", X"e27d", X"11a5", X"edba", X"e87d", X"fed0",
                                                        X"08e9", X"fb37", X"e98e", X"1a56", X"0944", X"ee01", X"0dff", X"168d", X"f6e1", X"0e10", X"e9fd", X"0c47", X"d409", X"0fb4",
                                                        X"f543", X"edd5", X"0a04", X"102a", X"04b3", X"f3f4", X"e259", X"fedd", X"e8a6", X"13d0", X"f567", X"f0a6", X"0df4", X"da1b",
                                                        X"f01a", X"feef", X"12e2", X"fc16", X"f8fc", X"05d6", X"fbf8", X"0209", X"0790", X"05c3", X"e9c5", X"f974", X"f3aa", X"03d0",
                                                        X"319f", X"132c", X"e32a", X"ebb6", X"17c9", X"0980", X"f078", X"fd73", X"1a83", X"fdb3", X"fc28", X"dfa3", X"fd82", X"0070",
                                                        X"0a4b", X"ed01", X"3206", X"fb02", X"db08", X"1d3c", X"13d8", X"fc39", X"0ed9", X"fe04", X"0db3", X"f48d", X"1344", X"0527",
                                                        X"1bf4", X"fe57", X"e83d", X"17f9", X"fe91", X"e89a", X"064f", X"0652", X"f1ee", X"011b", X"f532", X"22fa", X"1c09", X"e7b1",
                                                        X"e7ea", X"1ff0", X"261f", X"f74d", X"08ed", X"0d1b", X"eb4b", X"0b7d", X"dbf0", X"0c00", X"035c", X"06e1", X"09cf", X"e1dc",
                                                        X"e9b5", X"ed05", X"f51d", X"f3f5", X"f639", X"0ab8", X"f348", X"2714", X"fe38", X"f41d", X"0272", X"1fc1", X"f4fc", X"fbb5",
                                                        X"0739", X"094b", X"0f0b", X"0794", X"fd9f", X"fdde", X"f96a", X"186b", X"fc74", X"f7a0", X"e72d", X"eab4", X"0e82", X"dcb5",
                                                        X"d3d3", X"facf", X"02bc", X"e3eb", X"f60a", X"f5f6", X"ed42", X"e70f", X"0485", X"0fe3", X"f922", X"fa26", X"0bfb", X"eb11",
                                                        X"e933", X"07fc", X"e527", X"1345", X"0112", X"0d42", X"04d6", X"0df6", X"ff66", X"15f5", X"d9db", X"0a46", X"ea4a", X"166d",
                                                        X"1112", X"f585", X"f536", X"edb5", X"2331", X"03f1", X"ec02", X"05db", X"17e4", X"e72c", X"e9ae", X"fe80", X"f240", X"1253",
                                                        X"f6b1", X"fbb5", X"0a4d", X"e1af", X"116f", X"1681", X"1fc4", X"ee0e", X"f0b1", X"032e", X"1123", X"1ce7", X"f7e1", X"eaf9",
                                                        X"d466", X"effe", X"ef24", X"f63c", X"0153", X"ebe5", X"063f", X"014f", X"f091", X"0749", X"0a76", X"018b", X"0069", X"ef16",
                                                        X"fb76", X"1c67", X"34a2", X"17bb", X"fe8d", X"ea8d", X"0cb3", X"0bd2", X"0d77", X"1ba2", X"fb92", X"05b8", X"f9ce", X"eac4",
                                                        X"11f6", X"027f", X"ea49", X"fe8a", X"235a", X"fa19", X"e561", X"f2ce", X"e5e0", X"e716", X"f917", X"0a53", X"efc3", X"19b8",
                                                        X"1585", X"f16e", X"0711", X"2600", X"05b1", X"26dc", X"1040", X"f787", X"074b", X"fdec", X"f5be", X"0f46", X"e90c", X"fad2",
                                                        X"01e3", X"0d47", X"fd70", X"f2cf", X"0001", X"184b", X"f4f3", X"f47d", X"04a0", X"137c", X"0fe3", X"0de3", X"f3d5", X"cb3e",
                                                        X"f3eb", X"e714", X"0bd7", X"0797", X"ecc6", X"07f5", X"ecb2", X"0d09", X"ff9f", X"0198", X"16b7", X"04ca", X"f39e", X"0ba1",
                                                        X"2051", X"e8b7", X"dfe2", X"eef1", X"f5aa", X"f343", X"101e", X"0d77", X"fceb", X"2602", X"0dd6", X"efe3", X"d025", X"e9ac",
                                                        X"fcb8", X"0f41", X"1e50", X"18fe", X"d612", X"f6ba", X"16ae", X"f3b5", X"0be3", X"fbd9", X"0dff", X"0196", X"01ea", X"fa8c",
                                                        X"0ace", X"1015", X"fa66", X"f63c", X"1fcb", X"ffdd", X"ea7d", X"1570", X"e417", X"0857", X"ec9b", X"1513", X"0c62", X"12c3",
                                                        X"fa58", X"0e17", X"e578", X"0d0a", X"eca1", X"1243", X"f84e", X"0ea0", X"e61f", X"e739", X"1038", X"02c7", X"0e9d", X"ef18",
                                                        X"153d", X"eeef", X"fcc1", X"daac", X"0741", X"f3a4", X"e8fd", X"11b6", X"2d56", X"e1ef", X"ec46", X"19c4", X"18ef", X"f9f3",
                                                        X"00aa", X"ea68", X"0c68", X"f5a4", X"f68d", X"1bf6", X"dcf6", X"face", X"02a9", X"1890", X"f553", X"1708", X"0f17", X"fbe7",
                                                        X"0443", X"f53d", X"0351", X"fe20", X"f64b", X"24c8", X"efa1", X"fbac", X"1ab1", X"fba0", X"0d24", X"0558", X"2630", X"0d51",
                                                        X"e5ea", X"2968", X"f537", X"eb14", X"e97b", X"0d5f", X"0bc8", X"0f53", X"e9d4", X"0d32", X"ee0a", X"1f27", X"f94b", X"fe93",
                                                        X"e5fe", X"ed17", X"0b21", X"f80e", X"e726", X"0997", X"04e0", X"ea58", X"10df", X"e497", X"0b11", X"1cd4", X"0c4b", X"1245",
                                                        X"02de", X"dcb8", X"f3e5", X"f55d", X"0405", X"0ef5", X"f7fa", X"03c4", X"128b", X"0586", X"f88e", X"e948", X"0b15", X"f8fb",
                                                        X"0df7", X"0bab", X"e7ab", X"eefd", X"1f0f", X"efae", X"f4bd", X"fb06", X"f38a", X"f325", X"0101", X"f937", X"e670", X"0aad",
                                                        X"f425", X"f001", X"f1b1", X"152d", X"f518", X"0eb7", X"f6ac", X"f350", X"f174", X"f7e2", X"ffb7", X"1e99", X"fa0d", X"0b43",
                                                        X"186b", X"1290", X"0c3d", X"0ab9", X"f4e4", X"f6b4", X"ef03", X"0e6b", X"3529", X"e355", X"e237", X"07d6", X"006f", X"eff6",
                                                        X"fa9b", X"084f", X"0186", X"090e", X"e7ff", X"e3de", X"0116", X"f68a", X"019c", X"0dfd", X"ff4a", X"fd09", X"dadd", X"17f8",
                                                        X"e2a2", X"f73d", X"f3d9", X"ead8", X"fe42", X"1640", X"edcf", X"0080", X"3572", X"1295", X"085d", X"08f6", X"10a9", X"eb12",
                                                        X"1d34", X"e6f5", X"14ec", X"fa99", X"ee92", X"0205", X"fdfc", X"f0bc", X"f135", X"eb08", X"ffa2", X"107f", X"f008", X"f215",
                                                        X"e6c1", X"0102", X"0193", X"2633", X"f6d1", X"e92f", X"014a", X"f966", X"fb18", X"0253", X"f7f5", X"3baa", X"da2d", X"0f25",
                                                        X"0260", X"ff42", X"08e0", X"f771", X"d401", X"22d1", X"d9fc", X"f448", X"036d", X"05bf", X"e5c0", X"f836", X"ecb0", X"1062",
                                                        X"095d", X"fce9", X"f42f", X"f961", X"d644", X"0941", X"ffae", X"0162", X"0495", X"ec7e", X"e927", X"f0b3", X"0414", X"13cc",
                                                        X"0326", X"08f3", X"e42f", X"fa64", X"f9b7", X"ffe7", X"0468", X"fd04", X"1bef", X"e391", X"ee56", X"f585", X"fdcf", X"0862",
                                                        X"f304", X"fd26", X"fc33", X"fbcd", X"130d", X"0fff", X"ebdf", X"0e0f", X"06d9", X"1058", X"fc21", X"0c36", X"fd02", X"e8c5",
                                                        X"fafb", X"f962", X"f70b", X"e8eb", X"e5d4", X"08f5", X"f1f0", X"0221", X"da22", X"ed8c", X"f2a6", X"df74", X"0a96", X"0b0c",
                                                        X"e46d", X"0eb7", X"01ba", X"196a", X"1055", X"f72f", X"f257", X"0a17", X"03a7", X"0102", X"ff92", X"f23a", X"16a5", X"e2a3",
                                                        X"eebe", X"ed80", X"3093", X"2a7a", X"1120", X"1acf", X"f9bb", X"ee21", X"0c47", X"18ba", X"05b1", X"1114", X"eeb6", X"0bc4",
                                                        X"2e7f", X"e871", X"0674", X"e914", X"0359", X"ff9c", X"de11", X"fd7d", X"0aab", X"1026", X"0744", X"dd08", X"e180", X"eeea",
                                                        X"09af", X"ec35", X"e1eb", X"f019", X"fc05", X"0718", X"eb8d", X"f437", X"e69a", X"f625", X"fd21", X"0763", X"0a4b", X"18ab",
                                                        X"f58c", X"03bd", X"01e7", X"f4ff", X"e9e7", X"f992", X"05ed", X"1f46", X"e898", X"146c", X"0498", X"e6b7", X"fd2c", X"1602",
                                                        X"f55a", X"fdd7", X"dc8b", X"13d4", X"dfbf", X"180b", X"d736", X"fc90", X"01b0", X"0179", X"ff87", X"00ea", X"0fb2", X"f417",
                                                        X"0c07", X"0227", X"eaf4", X"dd0a", X"12cc", X"04d8", X"f75c", X"0f2d", X"ff21", X"efac", X"1d23", X"1340", X"fe39", X"14af",
                                                        X"f538", X"0ebb", X"0042", X"f859", X"fcf5", X"f18e", X"0c48", X"f644", X"e6ce", X"fa34", X"fb74", X"21fb", X"09ef", X"0ccf",
                                                        X"eaad", X"018a", X"13a8", X"ecf4", X"e607", X"e154", X"0341", X"02b5", X"1060", X"f2fc", X"f872", X"022c", X"2960", X"fb38",
                                                        X"ce62", X"f0dd", X"014f", X"080f", X"ed72", X"e26e", X"fb65", X"fa2c", X"11ee", X"00e6", X"f372", X"fe6f", X"e90d", X"0f5c",
                                                        X"1d01", X"d41f", X"1419", X"e935", X"0b4e", X"f34c", X"ee41", X"e132", X"10d5", X"056d", X"0a62", X"e914", X"1a02", X"14db",
                                                        X"f5b3", X"ec6e", X"e23c", X"12ef", X"f08b", X"fcda", X"17b4", X"fe9b", X"e1da", X"f7d1", X"ef91", X"0a74", X"fd6f", X"2331",
                                                        X"f2f9", X"1de6", X"ea07", X"17c5", X"18ab", X"07ca", X"0968", X"1a00", X"f057", X"f612", X"183e", X"f1f9", X"0501", X"0e13",
                                                        X"f5b0", X"1506", X"f58d", X"04a7", X"1177", X"f46d", X"d257", X"154e", X"f611", X"0d00", X"fb35", X"f49d", X"05e7", X"0d9b",
                                                        X"f2e2", X"0e58", X"fc90", X"fe19", X"ebf6", X"14ad", X"fb1c", X"0e68", X"e98d", X"215d", X"e495", X"f919", X"f7d2", X"fa7a",
                                                        X"12b0", X"ef02", X"1f44", X"1366", X"efb1", X"1dba", X"0e16", X"073a", X"f3b2", X"d7a9", X"db3f", X"12a0", X"2a55", X"e9d6",
                                                        X"d5c0", X"0e66", X"fcd6", X"f6d9", X"0346", X"1992", X"e260", X"fabe", X"0c85", X"11c9", X"ee4a", X"07f3", X"041d", X"1535",
                                                        X"f37e", X"e7f8", X"1461", X"fa57", X"fa61", X"ffaa", X"03f7", X"0016", X"f846", X"f16f", X"f07c", X"ec9b", X"e56f", X"f994",
                                                        X"fa85", X"ef20", X"dfa3", X"0ea7", X"002d", X"e5ce", X"fe44", X"0733", X"082f", X"fd15", X"f8fb", X"06e2", X"37c8", X"13fd",
                                                        X"e8ce", X"ff82", X"1f07", X"d2bc", X"1f5e", X"08e5", X"2549", X"f10e", X"01b1", X"085d", X"fb41", X"e5f8", X"efb9", X"068d",
                                                        X"e1eb", X"eaca", X"e7b7", X"141d", X"fc53", X"19e9", X"1e3f", X"f834", X"1061", X"f8b5", X"0899", X"d4db", X"f77e", X"fbe3",
                                                        X"0605", X"ea18", X"2589", X"fbcd", X"0458", X"0bab", X"ec07", X"1854", X"172e", X"deb9", X"eb48", X"1579", X"eca8", X"062e",
                                                        X"0ac7", X"e5b3", X"0dfc", X"1aab", X"1da6", X"092d", X"fe7a", X"f056", X"e5e6", X"eea2", X"0a67", X"216b", X"11ee", X"f0b2",
                                                        X"f829", X"0885", X"0293", X"1be0", X"f5fa", X"05c5", X"0189", X"fa86", X"ecf9", X"f15e", X"191a", X"21fd", X"fad9", X"2602",
                                                        X"f8da", X"0181", X"fb37", X"f687", X"fe8d", X"fab8", X"ea8f", X"fe63", X"f86c", X"1b3b", X"f08b", X"fe92", X"ed5f", X"0e46",
                                                        X"14f8", X"0ff7", X"f4e5", X"fd59", X"09c5", X"ee66", X"04fe", X"0fdc", X"f333", X"1855", X"ebae", X"0a6d", X"05a6", X"e641",
                                                        X"10fe", X"d4a9", X"1622", X"0413", X"f7df", X"16c6", X"de55", X"1682", X"01cb", X"fc74", X"fe52", X"0e03", X"ed0d", X"f617",
                                                        X"f7dc", X"e89e", X"19e4", X"f35a", X"f0df", X"f52e", X"1354", X"efb0", X"205f", X"f125", X"0f65", X"fd07", X"fb10", X"1243",
                                                        X"e035", X"f6bc", X"f70d", X"0db2", X"ec5c", X"097d", X"e4a9", X"de22", X"1e06", X"fc36", X"f6f9", X"f44f", X"1d67", X"f555",
                                                        X"d908", X"02d1", X"31ce", X"0f10", X"eb79", X"0678", X"15cd", X"fb07", X"fab1", X"1989", X"efc5", X"1003", X"02f4", X"fdf5",
                                                        X"f816", X"f609", X"1bfe", X"0d3b", X"2345", X"1844", X"03da", X"1670", X"0a0a", X"07f4", X"0b4f", X"2859", X"f023", X"0036",
                                                        X"f71d", X"efd5", X"111d", X"0a2c", X"feb6", X"0b95", X"2195", X"f9f2", X"fabe", X"ec7a", X"068b", X"d006", X"c7c3", X"0091",
                                                        X"fa00", X"f14f", X"efe9", X"1a11", X"ff5c", X"ef86", X"ecc1", X"255e", X"eae1", X"e0f0", X"0aa1", X"024c", X"0c6e", X"0958",
                                                        X"ec9e", X"0527", X"ef86", X"25be", X"fd59", X"ef9a", X"e566", X"0e66", X"fdfd", X"188e", X"f5eb", X"e782", X"f3a6", X"f58b",
                                                        X"0f77", X"e379", X"f6ee", X"fe5b", X"e19b", X"0159", X"f9ae", X"f0d2", X"10a5", X"0ad3", X"f3fe", X"0248", X"f74d", X"031b",
                                                        X"ee19", X"1319", X"0ced", X"d979", X"e197", X"0f15", X"0786", X"0528", X"e49c", X"0de6", X"ffc2", X"f95d", X"0179", X"1fa0",
                                                        X"1b09", X"0a87", X"fc1a", X"0f57", X"1e27", X"fcd3", X"041d", X"f02f", X"fb6f", X"eabd", X"1101", X"0892", X"fe29", X"1aae",
                                                        X"1a16", X"18ac", X"17b9", X"ee25", X"e65c", X"0f23", X"09b5", X"0b18", X"f344", X"e761", X"10d0", X"0f96", X"15a0", X"203f",
                                                        X"1501", X"ef00", X"05e5", X"f545", X"f011", X"1663", X"e975", X"e8ea", X"1a6e", X"1557", X"d6a0", X"103d", X"0009", X"ed50",
                                                        X"016a", X"fc0e", X"1a83", X"f49d", X"f83b", X"2655", X"1486", X"1bcf", X"ede6", X"0681", X"e820", X"f8aa", X"0c8e", X"13ec",
                                                        X"df95", X"08b0", X"07c8", X"e9b1", X"06cc", X"091b", X"08ee", X"0dc9", X"f8b4", X"0e09", X"ec60", X"f3f1", X"e83a", X"f405",
                                                        X"034e", X"1fbe", X"f33e", X"03af", X"148a", X"ed05", X"f807", X"06f8", X"ec43", X"2f53", X"2fc1", X"f14e", X"fe5c", X"012a",
                                                        X"f445", X"1077", X"0b36", X"f46a", X"ca1a", X"eea0", X"ebb4", X"1132", X"ff2c", X"052d", X"dda9", X"1441", X"28ab", X"0923",
                                                        X"dd13", X"0eaa", X"ee82", X"07b2", X"d889", X"0bdc", X"1068", X"0ea5", X"0415", X"f903", X"fef8", X"faab", X"fa4d", X"ec9a",
                                                        X"24da", X"fb76", X"f2fa", X"f96f", X"f162", X"050d", X"f9e4", X"1214", X"19f1", X"fe9a", X"0bf5", X"dde1", X"011f", X"09ae",
                                                        X"f47f", X"f3b6", X"f758", X"0612", X"e621", X"ea3f", X"2820", X"e381", X"f1e6", X"0238", X"e1af", X"160c", X"0f41", X"f102",
                                                        X"0362", X"1882", X"fef7", X"ea0d", X"1f4e", X"212a", X"f4c6", X"16d4", X"02e3", X"fb1a", X"f621", X"ff2b", X"e179", X"0e4a",
                                                        X"ffcb", X"fbfb", X"f194", X"f2dc", X"db7d", X"315c", X"01d0", X"13ef", X"f0c2", X"128e", X"1204", X"005d", X"df66", X"ed59",
                                                        X"f821", X"0811", X"fe39", X"043b", X"0167", X"ee9b", X"fcde", X"eb85", X"1fe0", X"0088", X"dc57", X"08d8", X"0527", X"fe51",
                                                        X"df0a", X"2b74", X"1bab", X"fc85", X"100b", X"edf1", X"fe4f", X"f111", X"091f", X"22c9", X"f1eb", X"0165", X"f8ed", X"0679",
                                                        X"ef2f", X"f79f", X"2353", X"f338", X"e049", X"0589", X"f4e5", X"16ea", X"014e", X"fd14", X"140c", X"27bf", X"dc66", X"0925",
                                                        X"f9fa", X"15bf", X"f0c1", X"e827", X"2819", X"f69f", X"107d", X"0182", X"f42a", X"04ce", X"0af5", X"f472", X"f68c", X"1672",
                                                        X"cec4", X"f10a", X"028a", X"0734", X"f18a", X"127c", X"ef78", X"26c1", X"f0be", X"0c0d", X"f103", X"e5c7", X"f3cc", X"1da9",
                                                        X"0019", X"f012", X"d31f", X"ff20", X"f704", X"dad2", X"dc6a", X"f05e", X"d690", X"06da", X"d3d2", X"0233", X"0cb6", X"f4ad",
                                                        X"f0ad", X"e3b8", X"e2c0", X"23e6", X"ff61", X"0f6a", X"f987", X"fc12", X"341a", X"c6a4", X"042b", X"09bc", X"2857", X"1199",
                                                        X"02b1", X"f579", X"0614", X"085c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"085c";
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

