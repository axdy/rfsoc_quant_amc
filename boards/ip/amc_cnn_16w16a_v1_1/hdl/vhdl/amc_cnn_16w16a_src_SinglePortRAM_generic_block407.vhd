-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block407.vhd
-- Created: 2023-08-04 11:27:23
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block407
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage54/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block407 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block407;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block407 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"f96e", X"072d", X"f526", X"f294", X"f493", X"1e28",
                                                        X"05a2", X"0da5", X"f771", X"2098", X"0964", X"f74d", X"f43b", X"eb1c", X"f385", X"14b9", X"f9fc", X"e6dc", X"12cf", X"0935",
                                                        X"f3fd", X"14a4", X"0078", X"edda", X"182f", X"ebb7", X"fe24", X"05f1", X"f214", X"fa8c", X"0679", X"e9c2", X"08f3", X"faff",
                                                        X"df93", X"f6b0", X"fb50", X"1009", X"ffa4", X"0acb", X"0932", X"e8ed", X"0987", X"0300", X"0bc0", X"0375", X"f5bc", X"0d08",
                                                        X"107c", X"0666", X"f971", X"f373", X"0422", X"f8da", X"03a5", X"17b8", X"f010", X"ec52", X"12ed", X"feee", X"fdbb", X"0648",
                                                        X"0e74", X"0577", X"0aa2", X"ed66", X"ee4b", X"eb9e", X"0129", X"0b14", X"e18a", X"189c", X"0bd4", X"dd71", X"0078", X"e2c8",
                                                        X"f51c", X"eead", X"12cf", X"ebc1", X"072f", X"ecac", X"1066", X"088a", X"112a", X"fe9d", X"1b51", X"e266", X"03e7", X"e9e1",
                                                        X"171c", X"0008", X"f9d1", X"f8f2", X"f671", X"0c74", X"f59c", X"0ba2", X"1f0a", X"f318", X"fce0", X"03c4", X"0315", X"100d",
                                                        X"f345", X"169a", X"e3c2", X"f069", X"f2fa", X"0f3b", X"fd03", X"f8c7", X"edbb", X"f745", X"1d5f", X"fa05", X"08b7", X"f3e1",
                                                        X"eb0c", X"1161", X"de2f", X"268c", X"11d1", X"0323", X"efa1", X"0bc2", X"0405", X"e521", X"0132", X"11ac", X"ed02", X"11bf",
                                                        X"dfeb", X"01d4", X"fad8", X"ea47", X"20bd", X"03e4", X"e40b", X"0741", X"0802", X"f19a", X"0284", X"fcf3", X"0d56", X"e082",
                                                        X"fb57", X"f9b0", X"ea32", X"f84d", X"01de", X"172a", X"0d03", X"05b3", X"1b15", X"fe6e", X"e69e", X"069b", X"05ba", X"dcb5",
                                                        X"0eb7", X"1ee4", X"e372", X"052d", X"0efd", X"1b84", X"13ab", X"1296", X"fd51", X"1701", X"0b1e", X"13d4", X"08fc", X"0358",
                                                        X"faae", X"1d2c", X"09ef", X"f62e", X"2caf", X"12f2", X"18a4", X"f420", X"0cf0", X"f0d4", X"114e", X"1bed", X"f2ba", X"ed6e",
                                                        X"0b42", X"0803", X"ebac", X"f72f", X"0d6f", X"f53e", X"264c", X"f9a2", X"0fdc", X"2a30", X"02f3", X"15c8", X"db56", X"fc61",
                                                        X"0b39", X"1521", X"f030", X"02fe", X"eee0", X"fb66", X"fecc", X"25a0", X"f946", X"f942", X"15f5", X"1189", X"1f8d", X"1007",
                                                        X"24f8", X"1833", X"0d9b", X"fd05", X"f2ee", X"f3e4", X"fde0", X"0346", X"1611", X"d90a", X"01e8", X"13a3", X"17bf", X"0ad5",
                                                        X"f740", X"2dc6", X"24c9", X"0d9c", X"0c24", X"0ab9", X"f32e", X"0efd", X"f6cd", X"192a", X"10e6", X"262c", X"f06e", X"fa53",
                                                        X"1fa8", X"1917", X"e7b4", X"0008", X"dfe2", X"1285", X"3529", X"f5be", X"fd45", X"07be", X"e3e4", X"ed6e", X"208a", X"1dc0",
                                                        X"3063", X"0b4c", X"1777", X"1bc6", X"03a3", X"2fa0", X"0e3a", X"2841", X"f44e", X"137c", X"0395", X"1ab0", X"11c6", X"17a7",
                                                        X"00bb", X"1121", X"2d12", X"1144", X"17e1", X"ef68", X"fa12", X"f70a", X"1d36", X"0bca", X"0efe", X"1118", X"fb3c", X"0e5b",
                                                        X"efd4", X"16fb", X"1619", X"2fd0", X"3685", X"f8e9", X"fc80", X"0c16", X"11f1", X"0987", X"0c05", X"0531", X"13e0", X"2412",
                                                        X"ef0c", X"0145", X"0c96", X"0cee", X"0940", X"ee99", X"1300", X"0f70", X"07e1", X"1fc8", X"fd48", X"09c6", X"030a", X"f44e",
                                                        X"e3f8", X"1735", X"1635", X"f9f4", X"0428", X"0eac", X"ea88", X"fe50", X"31ab", X"0ffe", X"0f46", X"1027", X"f541", X"1e51",
                                                        X"12e3", X"09e8", X"05f4", X"054f", X"fba4", X"0a94", X"fed5", X"1737", X"f88d", X"088b", X"f9b9", X"1084", X"1864", X"eab3",
                                                        X"029a", X"1cc7", X"28ea", X"1725", X"ead5", X"f4b8", X"064c", X"fc15", X"0da5", X"2307", X"039b", X"1ef7", X"ed26", X"fc0b",
                                                        X"fc81", X"0d05", X"0f07", X"fa78", X"d471", X"20ff", X"f903", X"00a1", X"fd03", X"e6a2", X"1bd9", X"fbe0", X"ea0a", X"2224",
                                                        X"2896", X"09de", X"0247", X"0c44", X"fcd9", X"0c69", X"1999", X"100a", X"1b93", X"12dc", X"fa41", X"f01e", X"0c7b", X"efe1",
                                                        X"f2e7", X"0e23", X"e740", X"eac8", X"034f", X"1ed0", X"0eb1", X"ec61", X"06da", X"ebda", X"ea3b", X"f9a4", X"edcd", X"0f72",
                                                        X"fefe", X"18f6", X"091e", X"e4a0", X"f6a0", X"03b2", X"09b6", X"f1a7", X"f8ae", X"2082", X"123f", X"29ca", X"f6a1", X"1381",
                                                        X"fdce", X"fb11", X"082f", X"1232", X"ff71", X"ffca", X"0da9", X"e0fd", X"ff4d", X"075a", X"177d", X"ed76", X"fc68", X"09e4",
                                                        X"2457", X"f9d8", X"0bf3", X"0074", X"fae5", X"f32b", X"fffe", X"fa0a", X"f5f2", X"03cb", X"038e", X"eb5a", X"ee54", X"0749",
                                                        X"dc84", X"1019", X"fead", X"0234", X"0164", X"f834", X"00e2", X"04aa", X"01dc", X"f07b", X"e3f4", X"005e", X"fd84", X"0f2a",
                                                        X"0f87", X"0f74", X"1efc", X"0d63", X"d20d", X"09c2", X"0864", X"f4f0", X"0a24", X"0856", X"f3ef", X"1434", X"1f39", X"edcd",
                                                        X"efb9", X"06aa", X"0320", X"e75e", X"026e", X"1297", X"036c", X"fb4a", X"f39e", X"f660", X"fabc", X"f228", X"fa92", X"f7bf",
                                                        X"da25", X"f7c7", X"e91a", X"fc86", X"1b5c", X"ddc4", X"e133", X"f1e5", X"fc0f", X"f365", X"e689", X"f422", X"e4e6", X"f8c3",
                                                        X"fc67", X"f7ee", X"f4a4", X"075e", X"dd27", X"1374", X"119e", X"f4f6", X"f1b2", X"d35e", X"f387", X"f596", X"f193", X"ef00",
                                                        X"eee3", X"f868", X"fd0e", X"eb9b", X"02df", X"18c9", X"e345", X"ec3d", X"eaf7", X"f9d0", X"d3f2", X"f42e", X"0d2c", X"0ad7",
                                                        X"f1fa", X"f27e", X"0662", X"d641", X"ef3f", X"dda8", X"f3ed", X"f127", X"eee9", X"e226", X"f386", X"f9ab", X"0457", X"0d3f",
                                                        X"08db", X"ee19", X"0305", X"dfbb", X"f870", X"e5e9", X"06b8", X"ffe2", X"e6b7", X"db25", X"dfac", X"fb10", X"0885", X"f69b",
                                                        X"f110", X"cb76", X"e3cb", X"f124", X"fc4c", X"0657", X"fa41", X"e08d", X"f78d", X"ecdb", X"d89c", X"e149", X"ea0c", X"fd97",
                                                        X"faa5", X"df3b", X"f957", X"02da", X"f67f", X"fe2f", X"f3f8", X"0056", X"095d", X"e7ba", X"fea7", X"f273", X"fe2d", X"ed7f",
                                                        X"fcfc", X"00ad", X"ffd3", X"f3d3", X"d1dd", X"d5cf", X"d997", X"edbf", X"efb0", X"f639", X"edee", X"102e", X"f519", X"e3a4",
                                                        X"deee", X"0b3e", X"f415", X"1083", X"fc21", X"f64d", X"fc2f", X"eb3a", X"16eb", X"f772", X"e00e", X"e9ef", X"056d", X"0dbf",
                                                        X"f443", X"f169", X"fd53", X"da0b", X"dc58", X"093c", X"e109", X"e6da", X"eb68", X"decf", X"f16e", X"e234", X"eda4", X"fb2f",
                                                        X"0ab8", X"fef3", X"0d3f", X"0d36", X"ff69", X"f71d", X"e6bb", X"ed5d", X"edd8", X"ebb1", X"e927", X"dce0", X"f37b", X"05d8",
                                                        X"0236", X"fd9c", X"fd24", X"08b7", X"f0eb", X"0d68", X"e99f", X"df91", X"e758", X"fcb9", X"083e", X"008c", X"ec02", X"e97c",
                                                        X"0a42", X"ff40", X"e004", X"f206", X"feba", X"ed94", X"0770", X"0074", X"c8f4", X"0529", X"f725", X"1135", X"1503", X"e7fa",
                                                        X"0240", X"13d2", X"1220", X"e8b6", X"e4c2", X"fc08", X"ece1", X"da35", X"0c67", X"dd5c", X"00b7", X"12f0", X"fcd7", X"fbd6",
                                                        X"e5c2", X"0732", X"ebe8", X"121a", X"0397", X"e5fa", X"04f9", X"fc69", X"e6b6", X"07ed", X"0f58", X"055e", X"decb", X"e751",
                                                        X"fe09", X"e47b", X"eb72", X"16aa", X"2058", X"1084", X"f81e", X"05f7", X"0d78", X"eca3", X"1107", X"d46a", X"1939", X"f15c",
                                                        X"da40", X"0f9f", X"0f03", X"e084", X"e1a2", X"0678", X"1505", X"0a83", X"f82d", X"19fc", X"fe15", X"04bf", X"173e", X"fe66",
                                                        X"f0fb", X"f41b", X"016c", X"14a6", X"1185", X"08b2", X"fc8c", X"2744", X"1c26", X"e39d", X"1ff9", X"fd11", X"fbe7", X"e7b0",
                                                        X"fa63", X"dc3e", X"feb1", X"fbcd", X"d9fe", X"0f91", X"0af3", X"f17b", X"0673", X"f738", X"ef8b", X"0a8f", X"27ba", X"f3f8",
                                                        X"fc3c", X"fed7", X"fbef", X"1480", X"0792", X"fc3f", X"14fa", X"f72b", X"03e5", X"0160", X"0774", X"0bf4", X"e344", X"f72a",
                                                        X"00c6", X"fb61", X"feb5", X"eb77", X"01db", X"de68", X"f38e", X"0da5", X"1b2c", X"1736", X"12cc", X"ed56", X"1c23", X"0080",
                                                        X"f995", X"ea81", X"fbfd", X"0344", X"f625", X"08e8", X"fad6", X"efe4", X"0b39", X"1143", X"0d7b", X"23bd", X"0ee1", X"e9cf",
                                                        X"09d4", X"eff4", X"f282", X"272c", X"0dc6", X"1297", X"0740", X"071e", X"ffb6", X"10e6", X"116b", X"08ab", X"faaf", X"2656",
                                                        X"0e5b", X"fbdd", X"2340", X"f7e4", X"2169", X"24e7", X"ebca", X"0a34", X"ff05", X"f16f", X"ff94", X"12fe", X"06e3", X"f325",
                                                        X"07d3", X"f4b2", X"0717", X"fe0a", X"fb96", X"1bad", X"e7b4", X"2176", X"fc27", X"0500", X"fffa", X"0a47", X"f097", X"2d12",
                                                        X"0630", X"1cca", X"2575", X"ff3e", X"1045", X"edf1", X"18d7", X"fff0", X"2507", X"2e65", X"2858", X"fb73", X"0322", X"0c64",
                                                        X"0684", X"025b", X"08e3", X"f1f6", X"397e", X"f70a", X"100e", X"f52b", X"f56e", X"3629", X"13f4", X"2cbc", X"eda9", X"0e24",
                                                        X"0ad3", X"208e", X"0e29", X"1d1a", X"2075", X"1023", X"01b0", X"0afd", X"0d47", X"e9da", X"049f", X"08cd", X"0000", X"fad0",
                                                        X"e7bf", X"fb03", X"0b17", X"116c", X"136d", X"0cf2", X"f88d", X"f705", X"10b6", X"e868", X"060b", X"1944", X"0dd7", X"2603",
                                                        X"074c", X"3d6e", X"1756", X"1d43", X"f042", X"00f7", X"f7d5", X"0907", X"0441", X"2f55", X"2928", X"1975", X"1b88", X"2013",
                                                        X"1ac6", X"f593", X"19d5", X"fd4e", X"0ef2", X"ed7f", X"0ee9", X"134f", X"144a", X"2a88", X"f80d", X"2752", X"0cd8", X"f045",
                                                        X"0ce6", X"26f2", X"ea2e", X"3aec", X"0759", X"18cf", X"1b69", X"1d2c", X"0c6c", X"0ec4", X"0573", X"0cb5", X"0b89", X"2082",
                                                        X"0f41", X"00db", X"08b3", X"00d2", X"e0ef", X"37fa", X"2e29", X"2843", X"ffe1", X"08c4", X"fe8a", X"110f", X"f4ca", X"e209",
                                                        X"240f", X"1a8a", X"0846", X"18a9", X"fa6d", X"0493", X"068d", X"271e", X"f18d", X"267f", X"0d4f", X"0d5f", X"0736", X"03ad",
                                                        X"1d11", X"0ae0", X"fc39", X"20b0", X"114f", X"1b55", X"0a21", X"fc51", X"0ead", X"fe3f", X"d9e9", X"f1cd", X"018d", X"1b61",
                                                        X"fd87", X"f545", X"07cf", X"16f4", X"f120", X"2e38", X"2631", X"042f", X"0f26", X"08f5", X"0d33", X"0ed0", X"11a3", X"f098",
                                                        X"f061", X"0112", X"04d7", X"f260", X"fbdf", X"f602", X"f184", X"1659", X"0fba", X"f380", X"1048", X"1996", X"e861", X"2de1",
                                                        X"324e", X"17f8", X"04bb", X"fe9e", X"ef08", X"0247", X"fd70", X"27ea", X"0493", X"2514", X"ef8a", X"0e35", X"0aac", X"f608",
                                                        X"08a2", X"f496", X"163e", X"260b", X"03df", X"ecbe", X"fe46", X"f370", X"1227", X"181d", X"163c", X"f63f", X"ebbc", X"0555",
                                                        X"f44c", X"182f", X"0992", X"2142", X"1803", X"25a1", X"f28a", X"feb0", X"df43", X"fff6", X"fd7c", X"0165", X"ff53", X"0162",
                                                        X"e1bb", X"04dc", X"fa2d", X"0c04", X"fd24", X"ea68", X"f4e2", X"ed33", X"f98e", X"fdd7", X"f1a0", X"e8da", X"fccc", X"14d3",
                                                        X"04d5", X"1fa6", X"0baf", X"fd2b", X"f0bd", X"ef93", X"059f", X"e5af", X"dc0a", X"dc00", X"083b", X"e98c", X"f2e8", X"f3a0",
                                                        X"0dd6", X"e5d7", X"e910", X"e51b", X"f56c", X"f12a", X"eec2", X"ef89", X"01e0", X"1071", X"ea9a", X"e408", X"0dad", X"0181",
                                                        X"f5e6", X"d84e", X"f1cd", X"ed3e", X"f7e0", X"e49b", X"e2ed", X"f317", X"ee15", X"f040", X"e834", X"c8b0", X"d38e", X"df0c",
                                                        X"dea1", X"013e", X"e568", X"dbe7", X"ea23", X"e66e", X"f5d0", X"eb16", X"c77f", X"f021", X"f1f4", X"078f", X"f4aa", X"ff12",
                                                        X"0095", X"e6c5", X"04f5", X"f274", X"01c4", X"df8a", X"fb93", X"e3d7", X"f246", X"ceb6", X"e5f4", X"d929", X"ca1e", X"f6e4",
                                                        X"f414", X"eaf7", X"d4d6", X"f558", X"fb7f", X"ed2b", X"f8cc", X"e2d2", X"ff5e", X"f3bf", X"eed5", X"dfee", X"d538", X"dece",
                                                        X"c6c8", X"0a19", X"f795", X"fca4", X"f4de", X"eb7a", X"f9b0", X"fd67", X"effe", X"fb73", X"fbf8", X"fd67", X"ef00", X"fa7e",
                                                        X"d15e", X"e39e", X"bab8", X"03fa", X"fd4a", X"f8cf", X"d608", X"ef88", X"e7fa", X"ed68", X"de73", X"f357", X"f00f", X"e29e",
                                                        X"f9a2", X"d491", X"f194", X"df8c", X"d696", X"f399", X"0818", X"c923", X"c2a6", X"e241", X"e35e", X"f34f", X"f15e", X"dc52",
                                                        X"f818", X"ebfd", X"edcf", X"cfb4", X"ecc0", X"e8ff", X"dfc3", X"fac2", X"f0be", X"cd54", X"cf41", X"e2b9", X"f836", X"f3e5",
                                                        X"fdf2", X"f167", X"0098", X"fa0d", X"ea7f", X"ff84", X"e869", X"f829", X"ead0", X"1434", X"0fcb", X"e937", X"d201", X"d35e",
                                                        X"e809", X"d65e", X"0012", X"e635", X"f834", X"d8e1", X"f3ab", X"f449", X"d5bc", X"e726", X"ee91", X"fc0d", X"0936", X"d59d",
                                                        X"cfdf", X"ec1f", X"0582", X"ff24", X"fdc5", X"e7be", X"fd32", X"eb7a", X"ff81", X"d43b", X"f49d", X"0513", X"f18e", X"0b9c",
                                                        X"f510", X"0347", X"c512", X"fccb", X"ec0f", X"f771", X"f69b", X"f282", X"0643", X"01c0", X"ff8e", X"e35e", X"e4e8", X"059e",
                                                        X"f2d6", X"f26c", X"f25c", X"0275", X"f48b", X"cfb7", X"e688", X"eea3", X"1170", X"efc0", X"ff95", X"e8cc", X"f4af", X"fa63",
                                                        X"0156", X"e5e9", X"fadc", X"e7a5", X"0674", X"f2b3", X"df84", X"d66e", X"04d8", X"df8c", X"ff26", X"fd78", X"e061", X"ff2a",
                                                        X"f5ad", X"0d5e", X"ce36", X"f982", X"f158", X"fa4f", X"161d", X"03d2", X"cb06", X"ffb8", X"14ec", X"0254", X"095d", X"09ca",
                                                        X"f995", X"115c", X"01bf", X"0a1f", X"06a2", X"f35e", X"f192", X"f222", X"0108", X"ecac", X"eee1", X"f3b7", X"0c6e", X"ebb9",
                                                        X"fa91", X"10b9", X"f71e", X"f8cc", X"f8b3", X"f644", X"cf86", X"012e", X"118e", X"fbe3", X"e793", X"10f0", X"f726", X"e707",
                                                        X"f17d", X"f668", X"060d", X"0c51", X"fc04", X"0e8a", X"13fd", X"f4c7", X"ecaa", X"0196", X"0374", X"0749", X"058d", X"060a",
                                                        X"c9a5", X"26f0", X"f377", X"00ae", X"f2e2", X"f5d5", X"081c", X"fa8f", X"faad", X"f022", X"fa04", X"f647", X"fd02", X"fec3",
                                                        X"efa4", X"ea86", X"12b0", X"f4ff", X"ec42", X"fd24", X"1da0", X"fcc3", X"fc25", X"fc57", X"f9f4", X"ff74", X"0bbc", X"ec82",
                                                        X"f98a", X"01ec", X"063b", X"fd8f", X"1534", X"ea6d", X"0ac9", X"f178", X"f597", X"f379", X"f561", X"ed59", X"0d9d", X"0dd7",
                                                        X"e3bf", X"099f", X"0823", X"e872", X"00bf", X"e806", X"eaa2", X"07f2", X"dff2", X"05ea", X"0125", X"f860", X"fa8c", X"09cf",
                                                        X"0a06", X"197c", X"eaf5", X"f134", X"fed0", X"157d", X"021e", X"095a", X"10ff", X"047b", X"0b25", X"f207", X"0052", X"e94d",
                                                        X"023f", X"f2ff", X"fc96", X"e4b6", X"14b2", X"059e", X"0e41", X"0c45", X"fc7c", X"e6e9", X"14d4", X"ddb2", X"0f2d", X"009d",
                                                        X"0ea2", X"02f7", X"08c2", X"f16e", X"1126", X"1626", X"fabc", X"1741", X"f29d", X"e859", X"012d", X"0545", X"d704", X"24c1",
                                                        X"0fdb", X"f2b5", X"f70f", X"fa1c", X"f72f", X"f6df", X"09c6", X"eeaf", X"13fd", X"00f3", X"f818", X"f830", X"0bff", X"09cb",
                                                        X"e0af", X"e5b1", X"eb75", X"f65f", X"0db7", X"0d2f", X"ecc7", X"141c", X"fe34", X"ece3", X"12a0", X"017c", X"f4e8", X"1a99",
                                                        X"04e3", X"0335", X"e23b", X"ec7e", X"03ab", X"1691", X"f304", X"fd03", X"f581", X"ed58", X"f65e", X"f1dc", X"ee7d", X"04f4",
                                                        X"1409", X"f3a2", X"f8a0", X"ddd2", X"2360", X"f105", X"049f", X"ffe6", X"fd67", X"f953", X"fa99", X"f494", X"ff70", X"f944",
                                                        X"14d1", X"ed00", X"07cb", X"e7ba", X"05c0", X"0c67", X"0132", X"f843", X"ed29", X"f01b", X"fa40", X"eda8", X"0c82", X"f0b9",
                                                        X"ffca", X"0e84", X"1fbd", X"03bc", X"0ee7", X"160a", X"e32d", X"1cd8", X"0f01", X"0f01", X"0b8b", X"daf7", X"0217", X"fafe",
                                                        X"f5d5", X"0ee1", X"1ffe", X"e874", X"0bbd", X"01b3", X"f243", X"ff3b", X"0b5c", X"03e3", X"2383", X"ec9c", X"f920", X"ff86",
                                                        X"f54f", X"0327", X"0ea3", X"04bc", X"f5c4", X"2005", X"f03d", X"019d", X"f69d", X"e4e8", X"ff8e", X"d6cb", X"fe28", X"1cb8",
                                                        X"0a7e", X"ff2b", X"ea52", X"fd45", X"0f14", X"e952", X"fff6", X"fd05", X"ef8b", X"db8d", X"0afc", X"098e", X"16ff", X"e00c",
                                                        X"06be", X"df61", X"1b37", X"eff0", X"fcbb", X"f4e7", X"025f", X"0219", X"077b", X"16a0", X"0f0b", X"f8eb", X"0a39", X"e33b",
                                                        X"fac4", X"f6ef", X"19ad", X"f728", X"f30f", X"128d", X"fcea", X"fb7b", X"0773", X"08a4", X"0330", X"f398", X"1843", X"0a37",
                                                        X"1132", X"e84e", X"1aa6", X"0e9a", X"0590", X"f775", X"07ac", X"fdfa", X"ea06", X"0844", X"0a24", X"1270", X"0bbe", X"fc94",
                                                        X"f9d7", X"f814", X"1245", X"0d3b", X"073c", X"f325", X"fe79", X"f3fd", X"270a", X"f3a7", X"e348", X"fe28", X"04d6", X"1a24",
                                                        X"0151", X"1a34", X"1b5d", X"0f11", X"069c", X"0b9f", X"0fd1", X"f6b2", X"eac8", X"30d2", X"ebbd", X"0f99", X"01ff", X"1522",
                                                        X"083b", X"1031", X"0170", X"1f1a", X"1300", X"173f", X"0eb2", X"043b", X"f62b", X"0b08", X"fd85", X"0e5d", X"fc4d", X"fd19",
                                                        X"fe71", X"fd11", X"f458", X"fff8", X"0182", X"0dc4", X"fcea", X"0ece", X"080d", X"0435", X"1502", X"0b2d", X"f039", X"fbf2",
                                                        X"fc27", X"08d8", X"fedd", X"0275", X"0107", X"f679", X"fe86", X"ed54", X"f14c", X"1b60", X"ff42", X"f424", X"0ab2", X"2561",
                                                        X"2209", X"0938", X"f005", X"1cb5", X"016b", X"1147", X"f775", X"01d6", X"0d97", X"21b5", X"1df7", X"0c5e", X"f74d", X"07b2",
                                                        X"1091", X"e6d6", X"e04f", X"0ae5", X"0462", X"e56e", X"f82d", X"fdba", X"f78c", X"f9f1", X"0603", X"2210", X"2471", X"00ba",
                                                        X"04ef", X"0291", X"e113", X"f192", X"1d5d", X"f5f4", X"2259", X"f837", X"fd5b", X"f3ec", X"0883", X"ffd3", X"0a11", X"155e",
                                                        X"2ab2", X"f92b", X"0538", X"fc68", X"09f7", X"edc3", X"163a", X"fafd", X"fbd3", X"0bc3", X"f5d2", X"0361", X"fd8c", X"f75d",
                                                        X"f603", X"08ce", X"f32d", X"ec89", X"057c", X"edd4", X"18a4", X"0584", X"eb3e", X"0511", X"e83c", X"0fe8", X"f31d", X"fad9",
                                                        X"fb07", X"eaa9", X"ff46", X"2326", X"e89c", X"045f", X"f4bf", X"f950", X"ef51", X"f818", X"f9e4", X"f5c1", X"0782", X"f2f0",
                                                        X"fd85", X"fad3", X"06be", X"0fe9", X"04e6", X"01a8", X"ea05", X"f7d1", X"077d", X"fc2d", X"fe9f", X"01dd", X"2550", X"dfb5",
                                                        X"08f6", X"1006", X"f2be", X"0a70", X"0f03", X"034a", X"0658", X"0620", X"ed83", X"ee54", X"05e7", X"07f7", X"ebac", X"ff7f",
                                                        X"ea75", X"e8a2", X"1ea2", X"eb83", X"f4da", X"f84b", X"0269", X"0dbb", X"0465", X"de45", X"2ad7", X"0bc1", X"0c5f", X"f012",
                                                        X"fabc", X"0a9a", X"040e", X"1672", X"df5c", X"f77e", X"fb88", X"fcf3", X"09c8", X"0e65", X"11fb", X"0bed", X"34d6", X"f681",
                                                        X"0266", X"eb4e", X"fbfd", X"f8a7", X"fa14", X"fd12", X"fdce", X"22ba", X"ffe4", X"09b9", X"f791", X"0b26", X"0d77", X"f687",
                                                        X"039d", X"1194", X"fb2b", X"ff0b", X"0255", X"1297", X"10c3", X"1bee", X"0a00", X"13b6", X"0811", X"00e5", X"f82f", X"2180",
                                                        X"08b3", X"f1b5", X"fa30", X"06c8", X"fa43", X"fa1b", X"eba8", X"2592", X"26e9", X"03de", X"0b52", X"ee9b", X"f318", X"f93b",
                                                        X"f6ae", X"f7d0", X"f73c", X"e609", X"ecd0", X"e4a5", X"09cb", X"f277", X"fa9c", X"1162", X"edfc", X"055e", X"dfc1", X"f1e7",
                                                        X"01d4", X"0104", X"0b0f", X"0bf2", X"03f8", X"091d", X"0202", X"077d", X"f840", X"1321", X"ff3e", X"1898", X"ed44", X"fac4",
                                                        X"1689", X"fae7", X"075e", X"ffc0", X"0749", X"f4ae", X"08f9", X"f290", X"1b6d", X"fd1d", X"fae0", X"0ea4", X"fe5a", X"122d",
                                                        X"0587", X"223e", X"f741", X"0186", X"f18e", X"f2a2", X"0db1", X"ff6d", X"f627", X"ec82", X"0194", X"f5a6", X"0205", X"fbc0",
                                                        X"ea84", X"19be", X"01eb", X"f02c", X"114d", X"1639", X"01fd", X"085a", X"07c6", X"0ffb", X"094e", X"0153", X"105c", X"f9fc",
                                                        X"072a", X"ec59", X"faee", X"1b4a", X"f316", X"db97", X"fb63", X"f71b", X"027a", X"fd54", X"08e3", X"073d", X"084f", X"e4dc",
                                                        X"11ca", X"028c", X"fd14", X"07be", X"097f", X"2855", X"ea20", X"2042", X"09c2", X"0473", X"e6ca", X"0b76", X"ebb5", X"f8ef",
                                                        X"00a4", X"265b", X"09e5", X"0956", X"0b73", X"171a", X"02b6", X"f5ca", X"24de", X"158e", X"165b", X"0374", X"0844", X"fc3a",
                                                        X"f48c", X"0b99", X"0c4c", X"f845", X"ec0e", X"ff52", X"ef43", X"ea61", X"fe5f", X"1036", X"2a21", X"0e37", X"0e35", X"0694",
                                                        X"0eeb", X"f517", X"0f04", X"03ea");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"03ea";
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

