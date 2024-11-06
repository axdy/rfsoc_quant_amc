-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block420.vhd
-- Created: 2024-11-04 16:44:18
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block420
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage66/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block420 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block420;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block420 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"eeaf", X"fe59", X"f878", X"12d5", X"f650", X"f65b",
                                                        X"0a27", X"0394", X"fbc0", X"0847", X"10be", X"f2a0", X"f955", X"042f", X"0dd1", X"1425", X"02e3", X"06a8", X"0509", X"12ec",
                                                        X"0061", X"00e6", X"0ad5", X"00f7", X"0734", X"01b8", X"04fe", X"fa77", X"f106", X"f86c", X"081e", X"059f", X"093f", X"fa44",
                                                        X"0189", X"01fd", X"0498", X"febb", X"f2b4", X"fbb8", X"fde2", X"fadb", X"0148", X"014d", X"fd5e", X"068d", X"fd3f", X"fec2",
                                                        X"0bc7", X"07d4", X"ff5d", X"ffe6", X"fe7e", X"0228", X"03fa", X"015a", X"fb35", X"fbae", X"0786", X"0471", X"fb6a", X"0204",
                                                        X"fc1e", X"f5af", X"0489", X"06aa", X"ff2e", X"0810", X"0294", X"0066", X"02d3", X"fee6", X"0460", X"fa4d", X"0127", X"ffb8",
                                                        X"fc95", X"04d2", X"0047", X"f506", X"0365", X"035d", X"f99c", X"fdc2", X"0360", X"0123", X"f75f", X"0017", X"09b1", X"ff5b",
                                                        X"054d", X"04e1", X"fecb", X"10a5", X"0063", X"f32d", X"022b", X"015c", X"fb1f", X"f78d", X"0175", X"053e", X"fee7", X"fe7a",
                                                        X"f9a0", X"00b2", X"0781", X"0b56", X"02f1", X"0cd7", X"fa98", X"f63d", X"047a", X"fca3", X"ff86", X"fce0", X"04c3", X"02ba",
                                                        X"0be7", X"fe0e", X"0732", X"05c0", X"02b5", X"0581", X"ff9c", X"0876", X"fbec", X"f6df", X"00a8", X"face", X"fcf0", X"f2d1",
                                                        X"fe71", X"0077", X"ff0f", X"04e2", X"12c5", X"08f6", X"08c8", X"03b3", X"016e", X"ff2f", X"ff7c", X"005f", X"004d", X"fb6a",
                                                        X"039c", X"f72e", X"ffaa", X"0217", X"f907", X"04e6", X"f96c", X"0010", X"02ea", X"ff6d", X"fecf", X"ff6f", X"fb3a", X"fcc8",
                                                        X"026b", X"0124", X"fef2", X"f1cb", X"008a", X"fe41", X"06c4", X"05ca", X"00a0", X"feac", X"fd26", X"0285", X"013d", X"077c",
                                                        X"fef2", X"058e", X"f7f5", X"f4cf", X"fdca", X"fda9", X"0171", X"fe2a", X"fd57", X"0295", X"016f", X"f649", X"fc62", X"080c",
                                                        X"0975", X"ff32", X"0034", X"01c1", X"f3f9", X"ff1d", X"014f", X"038a", X"f9fa", X"fd00", X"0326", X"09ca", X"0761", X"f943",
                                                        X"fce6", X"0542", X"fa02", X"09f9", X"05a9", X"0a36", X"f844", X"fb7e", X"ff2f", X"0626", X"faaf", X"f975", X"f35b", X"fe7b",
                                                        X"ffef", X"f716", X"f506", X"0303", X"07a0", X"f826", X"fbf1", X"04b2", X"f79e", X"fb45", X"0355", X"046b", X"01eb", X"fb77",
                                                        X"fd5c", X"0402", X"03cb", X"fabc", X"f85f", X"f55e", X"0924", X"fb60", X"ff72", X"0893", X"f4c8", X"0541", X"0106", X"0c3c",
                                                        X"08c3", X"fb75", X"fbd5", X"ffb4", X"ffea", X"fada", X"016b", X"fde7", X"01f4", X"066b", X"ff69", X"03b8", X"f7b1", X"07f4",
                                                        X"fe98", X"04c4", X"0523", X"fbb3", X"ff26", X"0282", X"00e1", X"0005", X"00f5", X"f9e4", X"01df", X"0c6f", X"fb51", X"ff91",
                                                        X"ff00", X"ff77", X"fe42", X"0660", X"051d", X"fd00", X"059b", X"00aa", X"fc43", X"03b3", X"0bad", X"f5b0", X"f89a", X"0ed5",
                                                        X"08b9", X"fb3f", X"febd", X"feae", X"f887", X"0e88", X"ff89", X"001c", X"fbef", X"ff16", X"f7e0", X"fe1b", X"0423", X"f3d3",
                                                        X"f905", X"096d", X"009b", X"f984", X"06ee", X"093b", X"f6f0", X"089b", X"fe3d", X"00a4", X"ff06", X"fac9", X"fac5", X"f960",
                                                        X"0922", X"fe16", X"fa31", X"fa32", X"03ff", X"f23e", X"08d4", X"ff2e", X"02d5", X"150d", X"00cd", X"0442", X"fd1a", X"f83f",
                                                        X"fdde", X"fae7", X"fbfc", X"01df", X"fa54", X"fd20", X"f938", X"f4b7", X"0121", X"fbbb", X"0149", X"fbdd", X"0277", X"03d9",
                                                        X"0bd8", X"f769", X"00e4", X"fb65", X"fbfc", X"02f6", X"ff64", X"fed3", X"fbf2", X"f1ad", X"03e5", X"0546", X"fa5b", X"0534",
                                                        X"0543", X"0320", X"f6ff", X"00d8", X"0701", X"0414", X"0335", X"028c", X"0074", X"087d", X"f9f2", X"f3c7", X"02e4", X"fa1d",
                                                        X"f09d", X"04aa", X"ff52", X"0299", X"04f7", X"0631", X"01b3", X"03b5", X"ffda", X"046f", X"fb5d", X"f890", X"feb1", X"f7e3",
                                                        X"041b", X"ff96", X"fbaf", X"017e", X"0280", X"0347", X"fe11", X"fd58", X"fa81", X"080b", X"0195", X"04c5", X"fb90", X"0064",
                                                        X"f7ea", X"fafc", X"fda7", X"0279", X"fee7", X"f507", X"04f2", X"fdc5", X"0474", X"0250", X"fe15", X"fe98", X"0108", X"03a0",
                                                        X"fe47", X"fc86", X"f5d4", X"fe9b", X"f703", X"0245", X"febb", X"fbfb", X"06a2", X"fea9", X"015a", X"03a3", X"044b", X"0077",
                                                        X"f9e7", X"03e6", X"02eb", X"0800", X"f4a0", X"ff10", X"f016", X"ff96", X"f86c", X"0624", X"01d6", X"fe51", X"fc69", X"0480",
                                                        X"072e", X"fdfa", X"f5e5", X"fb77", X"00e2", X"029a", X"fd73", X"02eb", X"f3c4", X"fe8c", X"f902", X"0aa3", X"021d", X"fc69",
                                                        X"fb5f", X"02f2", X"0b44", X"fab6", X"fb19", X"01da", X"f97b", X"0146", X"feaf", X"05f0", X"fbd4", X"f5de", X"f761", X"0adf",
                                                        X"fa58", X"f94b", X"fd2f", X"086b", X"03af", X"f993", X"01fe", X"fce3", X"0349", X"0061", X"0224", X"0967", X"f704", X"f752",
                                                        X"f6f5", X"0869", X"0320", X"fb2a", X"f662", X"045c", X"03db", X"fda4", X"fd4a", X"f3d8", X"09aa", X"0b28", X"0445", X"094a",
                                                        X"fb7d", X"f90f", X"00e0", X"09a9", X"fdec", X"00e9", X"0f5a", X"00ac", X"0351", X"0256", X"03c3", X"f9f5", X"02a0", X"fe54",
                                                        X"fed5", X"0aef", X"fce9", X"ff5b", X"ff80", X"0d3f", X"fa8e", X"ffff", X"07a6", X"0274", X"f5b2", X"fcfc", X"05d4", X"fb08",
                                                        X"ff9c", X"0b15", X"0184", X"02a2", X"0239", X"030d", X"0062", X"09c0", X"00c7", X"fd2e", X"fc15", X"0276", X"fc86", X"fc06",
                                                        X"05f3", X"f73a", X"fc40", X"f719", X"fe69", X"000a", X"0c45", X"04d4", X"030e", X"0e27", X"ff31", X"020c", X"06be", X"066c",
                                                        X"0041", X"fb4c", X"05c0", X"f79f", X"f47b", X"0dc8", X"00e4", X"fa32", X"086e", X"ff11", X"fd3c", X"053f", X"06db", X"02a2",
                                                        X"ff89", X"fbce", X"01c7", X"f69d", X"02a3", X"fdcd", X"f8d2", X"06c8", X"fca6", X"f796", X"0bb5", X"0333", X"fb0a", X"0b65",
                                                        X"005b", X"06f1", X"e547", X"fafd", X"05db", X"f8b8", X"01c9", X"03f2", X"f9df", X"02d5", X"fb6b", X"f69b", X"094b", X"09ea",
                                                        X"ffcf", X"0322", X"0778", X"0233", X"0e70", X"fa8a", X"04bb", X"0347", X"ff50", X"fe40", X"fc30", X"07a4", X"f715", X"ecf3",
                                                        X"09df", X"01b5", X"fd04", X"f7fe", X"038b", X"0138", X"fece", X"0175", X"0339", X"ffce", X"0262", X"036c", X"00d2", X"025c",
                                                        X"f1c4", X"f476", X"01ea", X"f77b", X"f537", X"f8a2", X"ffa0", X"0501", X"f0b6", X"fd34", X"05e2", X"f9e2", X"fbad", X"086b",
                                                        X"0310", X"fc7c", X"f845", X"f6aa", X"fffc", X"00e6", X"fd89", X"ea0f", X"060d", X"ff4d", X"02e9", X"ff01", X"029a", X"fe99",
                                                        X"076e", X"07b9", X"fe9c", X"0381", X"fd28", X"0263", X"f760", X"fcec", X"01a0", X"fad3", X"0634", X"0259", X"02b5", X"07af",
                                                        X"02db", X"0754", X"ffed", X"03e8", X"0725", X"fb64", X"f6c0", X"05f9", X"f0a1", X"01f0", X"fc61", X"0131", X"003a", X"fae5",
                                                        X"0537", X"026a", X"068f", X"0222", X"02ca", X"0506", X"0148", X"1293", X"fc8a", X"0860", X"f91f", X"fddb", X"fac6", X"fe3b",
                                                        X"fd4e", X"f981", X"050b", X"03db", X"08f3", X"fe9d", X"006d", X"0599", X"02a5", X"0259", X"06c0", X"0a5f", X"f8b9", X"f6d2",
                                                        X"fdaa", X"003e", X"0154", X"f477", X"fb66", X"030c", X"ff31", X"f8f4", X"f8e2", X"fdd3", X"fff4", X"0de1", X"fc39", X"0a52",
                                                        X"fe0c", X"fba5", X"f864", X"00e9", X"fdfe", X"fd5f", X"f734", X"04ed", X"f747", X"f9c2", X"f7f7", X"f88b", X"0179", X"0a4a",
                                                        X"f9c3", X"095f", X"f62b", X"fb91", X"fde5", X"0fed", X"f918", X"f768", X"f592", X"046c", X"fc74", X"fd5c", X"023d", X"f78a",
                                                        X"fe95", X"fd97", X"0454", X"07be", X"f76d", X"ffef", X"f81a", X"07f4", X"f812", X"fd2f", X"fb67", X"0089", X"f796", X"ff42",
                                                        X"09ff", X"f3ad", X"0029", X"f7ce", X"0294", X"04b1", X"fcf0", X"f832", X"fcec", X"07a8", X"f68e", X"0177", X"0b00", X"034e",
                                                        X"fa34", X"faef", X"07fe", X"fdfe", X"04e3", X"ed3a", X"01a2", X"ffd4", X"ffd2", X"feae", X"ffb7", X"0587", X"fc66", X"0167",
                                                        X"faa2", X"fe9a", X"f3c7", X"fab7", X"05de", X"feb2", X"ffed", X"04f1", X"ffd8", X"ffec", X"06a0", X"fd5e", X"fc0c", X"fe2e",
                                                        X"fe9c", X"0437", X"fd4a", X"0169", X"0046", X"fc45", X"0981", X"f757", X"f3a8", X"05f9", X"fde4", X"fc25", X"05c8", X"fef8",
                                                        X"0523", X"004f", X"06cb", X"fe32", X"fb26", X"0347", X"fa2f", X"f7e9", X"054a", X"fa0b", X"fcf9", X"058c", X"0319", X"f609",
                                                        X"0932", X"0388", X"00c9", X"0296", X"07b0", X"0162", X"0708", X"fbd1", X"f8df", X"0042", X"fe38", X"0057", X"f92f", X"fd22",
                                                        X"f781", X"f56c", X"07e4", X"023c", X"f906", X"ff77", X"037f", X"01c7", X"fee3", X"fb66", X"fb46", X"040c", X"03b5", X"fc54",
                                                        X"03ea", X"0143", X"f6fb", X"f322", X"0061", X"fdb9", X"fb3e", X"f414", X"02c8", X"04ea", X"0456", X"fdf5", X"fe1c", X"0227",
                                                        X"0480", X"0485", X"f622", X"ef8f", X"fa44", X"f733", X"fc36", X"0258", X"f820", X"f83a", X"0a04", X"039b", X"fbff", X"03d1",
                                                        X"0881", X"0130", X"0086", X"0431", X"f9f9", X"fc9b", X"faa2", X"fb98", X"00fd", X"fffd", X"fcff", X"005e", X"ff89", X"00f4",
                                                        X"0234", X"0062", X"f71b", X"ffd5", X"ff7a", X"0a23", X"08da", X"f6e8", X"fc74", X"fcdb", X"00e0", X"fefe", X"00cf", X"f650",
                                                        X"ffbf", X"01d2", X"fb21", X"004a", X"fd44", X"0076", X"053c", X"0160", X"02da", X"f716", X"f9b9", X"0285", X"f9b3", X"fc5d",
                                                        X"03db", X"f7bc", X"ff00", X"fd26", X"f7b7", X"04af", X"04c9", X"fa88", X"007f", X"0728", X"006f", X"0169", X"023f", X"041e",
                                                        X"eeba", X"0142", X"074a", X"04bb", X"ff55", X"0287", X"f62d", X"0627", X"fc60", X"fa10", X"fb0b", X"0854", X"05de", X"fcd7",
                                                        X"00e7", X"0089", X"f4fa", X"f4b7", X"013a", X"fbd6", X"0352", X"ff9c", X"027e", X"02bd", X"ffe8", X"f740", X"ff6c", X"0137",
                                                        X"0448", X"ffdb", X"fd56", X"0491", X"f7a6", X"feb1", X"faa9", X"feeb", X"fe0b", X"fac2", X"ff8a", X"0400", X"0268", X"fc9d",
                                                        X"f62a", X"0570", X"0628", X"fb45", X"081e", X"0ba5", X"f81a", X"f875", X"0359", X"065c", X"03c5", X"fbeb", X"0cad", X"06ed",
                                                        X"0312", X"fe74", X"fc78", X"f893", X"025a", X"ff85", X"022f", X"0823", X"f9b6", X"ff66", X"fc85", X"0ca0", X"fa6c", X"fb79",
                                                        X"0440", X"0103", X"000c", X"fd3d", X"ffa9", X"f06f", X"097a", X"110c", X"fff1", X"00c6", X"f8aa", X"01b5", X"f779", X"0c54",
                                                        X"fea2", X"0221", X"072d", X"026b", X"ee2e", X"fb70", X"03e1", X"fe54", X"05c1", X"08fd", X"0211", X"00f4", X"fe0c", X"05f8",
                                                        X"fd12", X"0878", X"0554", X"004b", X"0416", X"07cd", X"ff56", X"fb6a", X"075f", X"f2c3", X"0154", X"02e0", X"00bf", X"fee6",
                                                        X"066d", X"0049", X"07fe", X"09e8", X"fe67", X"0003", X"083d", X"ff63", X"fee7", X"fd0d", X"06cf", X"fc0b", X"fbaa", X"ff39",
                                                        X"0284", X"f996", X"0336", X"0526", X"fcad", X"075d", X"fe45", X"018b", X"04aa", X"00c5", X"f576", X"f8ba", X"030e", X"fd6b",
                                                        X"fa39", X"fcba", X"fad3", X"f4a5", X"04ff", X"fbaa", X"f872", X"00ed", X"fa26", X"005a", X"0472", X"fc09", X"00a7", X"fdf4",
                                                        X"024c", X"fa6b", X"feed", X"0dd7", X"f66f", X"e9eb", X"024d", X"fd8a", X"0113", X"0043", X"ffdf", X"0149", X"0bf2", X"fbd5",
                                                        X"f76f", X"f7f0", X"f9f9", X"007a", X"006f", X"0cf7", X"faac", X"f1b1", X"0311", X"f8b0", X"f9ca", X"f819", X"0336", X"01cb",
                                                        X"ff23", X"f920", X"ff88", X"031a", X"fef4", X"037c", X"02ac", X"fbfb", X"fcd8", X"f5f2", X"0119", X"f9f2", X"f7bf", X"fd88",
                                                        X"049b", X"0605", X"027f", X"faa2", X"02e5", X"07c1", X"05b0", X"0422", X"007d", X"0231", X"f6ac", X"f060", X"0258", X"0681",
                                                        X"fd7a", X"f453", X"0348", X"031d", X"0a9e", X"06e1", X"01a8", X"060e", X"0a56", X"0a65", X"ff2a", X"f8f1", X"0161", X"fec6",
                                                        X"ffe0", X"04e7", X"fc58", X"ec16", X"05af", X"fd42", X"fd3c", X"07e8", X"0168", X"0366", X"0390", X"08a6", X"fda2", X"08a2",
                                                        X"fa35", X"0048", X"fcfd", X"fec6", X"fe41", X"f629", X"0298", X"fd50", X"f8e9", X"09a9", X"0642", X"068c", X"fddb", X"08f1",
                                                        X"0993", X"040d", X"ff44", X"0338", X"f799", X"008a", X"01c4", X"f82e", X"0553", X"f9a0", X"f302", X"029f", X"fa06", X"034e",
                                                        X"fbb1", X"0bbf", X"0117", X"06ed", X"f6a6", X"08dd", X"f1b4", X"01d1", X"000e", X"07ed", X"0219", X"fb77", X"0155", X"04cd",
                                                        X"ff8e", X"fdb8", X"f5df", X"03ec", X"fd0e", X"fdff", X"fa6d", X"0bf3", X"ea83", X"ff3c", X"fa55", X"04cd", X"00af", X"f576",
                                                        X"f28c", X"02f7", X"f4f4", X"feb2", X"fe2a", X"fd75", X"fc25", X"fae8", X"f7ca", X"10ab", X"fac8", X"fa24", X"f3cb", X"0383",
                                                        X"044a", X"fb99", X"0746", X"0123", X"ff32", X"01d2", X"fcb0", X"fcc0", X"07b8", X"fd86", X"068a", X"0f61", X"f823", X"fb24",
                                                        X"fffa", X"0d5c", X"04e1", X"fcd2", X"06a3", X"0221", X"fd0b", X"03d4", X"0242", X"f62e", X"0345", X"0978", X"0058", X"0b14",
                                                        X"0146", X"fc65", X"ffcf", X"105c", X"ffd1", X"fda1", X"09b1", X"042d", X"063a", X"fd80", X"0026", X"fa12", X"0517", X"0bc4",
                                                        X"02a1", X"059a", X"019b", X"038e", X"fa70", X"0a40", X"01d7", X"0108", X"fb37", X"05f7", X"fbce", X"01db", X"07cc", X"f96a",
                                                        X"fe82", X"0639", X"05e3", X"fc4c", X"02df", X"03fd", X"01f2", X"0683", X"0312", X"02ae", X"0705", X"035c", X"0436", X"00b7",
                                                        X"08bf", X"f6d5", X"fbab", X"067e", X"fcbc", X"f91d", X"0842", X"00de", X"fc8e", X"05d4", X"f863", X"014d", X"0342", X"02bb",
                                                        X"04c8", X"ff7a", X"06c3", X"fa89", X"fc4f", X"089b", X"ffc4", X"f3ec", X"0663", X"0bfc", X"0131", X"06a2", X"0196", X"03ba",
                                                        X"04c7", X"0178", X"fb3a", X"fde1", X"065d", X"038d", X"0242", X"09fe", X"fead", X"f1cc", X"0867", X"ff53", X"f708", X"fe16",
                                                        X"fd68", X"0430", X"058f", X"0250", X"fe51", X"fe98", X"01e7", X"05e3", X"fb9f", X"fafb", X"ffc9", X"e9e3", X"041a", X"fda1",
                                                        X"f871", X"fa33", X"038b", X"032a", X"01d9", X"fbc0", X"027c", X"fc25", X"0016", X"08a5", X"0268", X"ff00", X"fd4a", X"ec9f",
                                                        X"02f6", X"08d5", X"fcf2", X"f8c6", X"02c8", X"00b5", X"00e3", X"fea4", X"024b", X"0129", X"03fd", X"01e3", X"fc71", X"ebae",
                                                        X"f740", X"f8a5", X"0483", X"0919", X"fee0", X"f2be", X"01d2", X"fcfb", X"f87e", X"051b", X"090b", X"034f", X"01b8", X"0134",
                                                        X"f7e9", X"fe3e", X"fd7d", X"ff9a", X"0417", X"003f", X"f2d0", X"fb84", X"0177", X"055e", X"fe03", X"fc1e", X"026f", X"0542",
                                                        X"014a", X"052a", X"008b", X"f995", X"fb26", X"fff8", X"fc22", X"fc9f", X"feed", X"f874", X"fc91", X"fe9a", X"01a4", X"017d",
                                                        X"0092", X"07c3", X"fec0", X"0c1d", X"0aa6", X"f262", X"fef0", X"03f6", X"f6ac", X"fc04", X"073a", X"fcda", X"fcea", X"fd7f",
                                                        X"fa85", X"0484", X"0255", X"ff46", X"faa1", X"05ca", X"0410", X"ff94", X"00af", X"053a", X"ee40", X"fee4", X"fee1", X"04e7",
                                                        X"0229", X"fceb", X"f810", X"05da", X"0265", X"f84c", X"fa34", X"ffc6", X"05a5", X"fd17", X"fc02", X"07ad", X"f92e", X"06a7",
                                                        X"fa05", X"06c3", X"f86e", X"fbc0", X"f97b", X"02e6", X"fd17", X"f818", X"fb66", X"027c", X"049b", X"0142", X"022f", X"0739",
                                                        X"f569", X"f3c5", X"fbf7", X"0945", X"02da", X"feab", X"f847", X"02c5", X"06a2", X"fa4d", X"ff65", X"fbb0", X"ffc7", X"03e2",
                                                        X"0464", X"0940", X"fc3b", X"feb6", X"ffc8", X"0844", X"fe74", X"ff5c", X"fc28", X"00ab", X"0636", X"fbf2", X"03d4", X"ff33",
                                                        X"043b", X"08ef", X"00ee", X"0919", X"001e", X"0245", X"ff5f", X"0233", X"0289", X"01dc", X"fbac", X"01d4", X"fd4d", X"fc7d",
                                                        X"0839", X"f904", X"0134", X"fe8f", X"032b", X"0474", X"fb28", X"fd97", X"0268", X"07dd", X"ff61", X"ff54", X"f8fa", X"ff92",
                                                        X"f83e", X"ff7e", X"06b0", X"faa1", X"f43a", X"fee6", X"fb5c", X"014b", X"07f5", X"0661", X"fd70", X"0dd0", X"01a9", X"055c",
                                                        X"06dd", X"01d7", X"ff7f", X"fee9", X"0886", X"fd5e", X"ff23", X"03b2", X"ff72", X"fd99", X"08cd", X"036f", X"03f7", X"00af",
                                                        X"02be", X"02ae", X"037f", X"0161", X"ff21", X"fc7d", X"0596", X"f7e7", X"f419", X"05a2", X"fe84", X"f951", X"088e", X"ff8c",
                                                        X"fc36", X"fd9b", X"ff7f", X"01f1", X"02ec", X"f5f7", X"fbb2", X"fe29", X"0684", X"012f", X"0058", X"fe76", X"00e4", X"f3e3",
                                                        X"07f4", X"001c", X"f7b2", X"0115", X"fd14", X"ff94", X"06be", X"f374", X"f82f", X"fffa", X"0493", X"02a9", X"082c", X"f820",
                                                        X"fa0f", X"f29e", X"0532", X"01af", X"f9bf", X"f627", X"fc71", X"03c5", X"ff4c", X"fbcb", X"0d4e", X"ff61", X"0455", X"0973",
                                                        X"fd52", X"ee9f", X"022f", X"ee6d", X"0089", X"ff77", X"fc8a", X"fde4", X"0052", X"0676", X"02ff", X"0485", X"0500", X"032d",
                                                        X"01ac", X"0742", X"f9a9", X"fa7e", X"ff2d", X"f385", X"022a", X"fe9e", X"fba4", X"f536", X"fe6f", X"0542", X"03e4", X"ffe3",
                                                        X"0179", X"0430", X"fef8", X"0a34", X"01df", X"006e", X"fb8a", X"fa58", X"0293", X"fd0f", X"fe8e", X"eccb", X"0493", X"ff9c",
                                                        X"f7aa", X"fdaa", X"06c6", X"04ab", X"fed3", X"04e9", X"0e88", X"fbd3", X"fa06", X"00f5", X"fafe", X"f730", X"ff5c", X"fa83",
                                                        X"0119", X"01ee", X"fe41", X"0949", X"f9d9", X"021d", X"fb62", X"05a8", X"0255", X"fc2f", X"fcf9", X"0237", X"f8d3", X"f4e0",
                                                        X"fea8", X"0012", X"fd8b", X"fa44", X"0724", X"fd50", X"fab3", X"faba", X"fde5", X"0158", X"01ea", X"0839", X"00ca", X"08c8",
                                                        X"f06f", X"fee7", X"0391", X"fe8f", X"026d", X"f6fe", X"f67f", X"0161", X"01e4", X"f8c7", X"f76c", X"fcc8", X"0716", X"fedc",
                                                        X"fea7", X"08b8", X"efa4", X"01dd", X"f88d", X"00b1", X"046b", X"f5f6", X"03db", X"08f9", X"0954", X"fca8", X"ff0f", X"fb2b",
                                                        X"0100", X"088d", X"f940", X"092d", X"ee1f", X"fbc5", X"f5ca", X"09a4", X"01e5", X"f91d", X"055f", X"0358", X"fe6e", X"fe94",
                                                        X"0058", X"fbcd", X"fc59", X"0eb2", X"0115", X"0814", X"f713", X"f626", X"f8df", X"0ba5", X"faa9", X"fa02", X"04d6", X"0097",
                                                        X"04a9", X"004e", X"0572", X"015f", X"fc63", X"04df", X"07af", X"0314", X"0273", X"fe8a", X"fed7", X"0812", X"fe5f", X"0004",
                                                        X"f645", X"0696", X"ff02", X"fa9b", X"0b43", X"f72b", X"fd52", X"0427", X"05a0", X"0485", X"fd25", X"fec0", X"fdfd", X"ff48",
                                                        X"0133", X"0044", X"05ef", X"0611", X"034c", X"feb1", X"09f6", X"f9ca", X"fd6a", X"fb6b", X"022d", X"fe45", X"0751", X"ffaf",
                                                        X"ff27", X"0766", X"fa73", X"0045", X"f844", X"fa38", X"f805", X"0301", X"0ce6", X"fb81", X"fe30", X"f64f", X"00cd", X"fd9c",
                                                        X"0a67", X"05d5", X"04cf", X"04a7", X"052d", X"014e", X"03b0", X"00f1", X"f68f", X"fb5f", X"06f8", X"f8d5", X"f8ed", X"e90d",
                                                        X"fd98", X"f425", X"0cef", X"fb50", X"03c5", X"036b", X"ff33", X"053a", X"f6cf", X"fb96", X"f54a", X"f6ea", X"037e", X"026b",
                                                        X"f9d4", X"f81d", X"fdca", X"ebcb", X"0924", X"fef4", X"fd8c", X"f844", X"019c", X"027e", X"f8d9", X"01d3", X"ffcb", X"f1a2",
                                                        X"0371", X"fee6", X"f3f0", X"0714", X"feb2", X"e608", X"0700", X"01e1", X"fb7a", X"eea0", X"0353", X"00af", X"efef", X"fdda",
                                                        X"fd02", X"fd3f", X"01b1", X"0970", X"f828", X"0797", X"fbbb", X"eb20", X"011a", X"01c6", X"f4e6", X"ee4e", X"064f", X"058f",
                                                        X"fa2e", X"063a", X"f6d3", X"0038", X"fbff", X"0a34", X"05ee", X"07bc", X"f51d", X"f3b5", X"fdbf", X"016a", X"f80d", X"f201",
                                                        X"078c", X"024a", X"f80c", X"0231", X"fe46", X"0712", X"0434", X"0b26", X"025c", X"0101", X"f6ae", X"fdfa", X"f950", X"02ac",
                                                        X"fc6d", X"f4d5", X"fef5", X"fd2f", X"eeab", X"06fa", X"09aa", X"0968", X"fe1e", X"08d7", X"0341", X"f9f8", X"02c7", X"0af5",
                                                        X"fb6b", X"fc61", X"fd0b", X"eff2", X"fdf0", X"fc5b", X"e866", X"03d8", X"fed0", X"0458", X"fdfc", X"0559", X"07c0", X"0479",
                                                        X"fd55", X"089c", X"e5fc", X"fff1", X"f9ff", X"f428", X"02a3", X"f22b", X"f9b6", X"04b4", X"03e8", X"fc34", X"fcf5", X"08b5",
                                                        X"0c62", X"fce3", X"fd25", X"0f18");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0f18";
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
