-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block415.vhd
-- Created: 2024-11-04 16:44:18
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block415
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage61/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block415 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block415;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block415 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0f31", X"eb95", X"02fa", X"ffc1", X"f955", X"037b",
                                                        X"fb47", X"f1b2", X"088a", X"ffb1", X"ed39", X"0797", X"0888", X"ffb1", X"0924", X"11bb", X"0efb", X"fa46", X"fe6f", X"0643",
                                                        X"fdcd", X"ffa7", X"f231", X"fbfe", X"0474", X"fb99", X"f0d4", X"fb90", X"f723", X"0a1b", X"fec1", X"0b80", X"0ac1", X"fbb9",
                                                        X"f589", X"022d", X"033c", X"ff7b", X"f1e8", X"f44e", X"0068", X"feaa", X"f0ad", X"0022", X"f294", X"0d1d", X"f980", X"088e",
                                                        X"07ea", X"faad", X"f45f", X"0818", X"fd0e", X"ff1a", X"f099", X"f773", X"fa4a", X"0285", X"f5f2", X"fc93", X"fe69", X"f739",
                                                        X"fc01", X"075d", X"0259", X"fb91", X"fa29", X"04e5", X"01a6", X"04bb", X"f83f", X"fd0a", X"0113", X"003b", X"f839", X"0153",
                                                        X"ffe8", X"f667", X"fe05", X"ff97", X"0401", X"0543", X"fc24", X"03bd", X"fba6", X"027e", X"f87c", X"041a", X"fade", X"032f",
                                                        X"06db", X"fd77", X"0071", X"fbe2", X"fb9e", X"0007", X"0114", X"0689", X"feb0", X"fef3", X"fb35", X"000b", X"fc39", X"0771",
                                                        X"f8bb", X"ff01", X"08af", X"032b", X"f97b", X"fcba", X"fea5", X"01c3", X"f918", X"0416", X"019f", X"feba", X"ffb3", X"fc0d",
                                                        X"ff23", X"0761", X"0105", X"f747", X"0b42", X"029b", X"fe69", X"ff5b", X"fc7d", X"fb40", X"f85c", X"02fe", X"f913", X"017d",
                                                        X"fd61", X"ff4f", X"ee4a", X"0e25", X"0325", X"fc81", X"126c", X"0553", X"fecd", X"feca", X"fbe0", X"f90c", X"f823", X"0888",
                                                        X"f728", X"0247", X"002d", X"ff31", X"ff7e", X"1044", X"0217", X"fdd8", X"0e8c", X"02b6", X"fc59", X"fc98", X"fac7", X"ffd1",
                                                        X"f701", X"0619", X"f7c5", X"0576", X"fc17", X"05e1", X"02bb", X"1162", X"f9bf", X"fed2", X"0fe3", X"00f4", X"03c6", X"f77d",
                                                        X"015f", X"ffb6", X"fa09", X"fd3e", X"f8a0", X"07c8", X"f67d", X"01ea", X"f9b8", X"06e6", X"f945", X"fe19", X"06d7", X"fc01",
                                                        X"00ea", X"ef0a", X"0328", X"fe63", X"fb76", X"ff22", X"fde4", X"00d2", X"f3aa", X"02ee", X"f421", X"012e", X"0000", X"ffdf",
                                                        X"0124", X"0041", X"04c3", X"f569", X"0375", X"ff10", X"06e2", X"0474", X"f82e", X"fb68", X"ff26", X"0028", X"fbd2", X"00b1",
                                                        X"fb03", X"fc5f", X"005d", X"03ba", X"09b5", X"f298", X"fb30", X"ffc8", X"03ec", X"f9cd", X"f5d4", X"f699", X"fb6c", X"0052",
                                                        X"f319", X"febc", X"0396", X"fa0d", X"ffa0", X"0285", X"0194", X"0082", X"ffd6", X"02b4", X"0deb", X"f5ad", X"010a", X"fc75",
                                                        X"0005", X"fe53", X"f2cd", X"fa9e", X"06bf", X"fe61", X"f636", X"009a", X"f9cf", X"fc54", X"fea1", X"061d", X"0e3d", X"f92c",
                                                        X"f92d", X"feb5", X"0361", X"fc02", X"ee12", X"f28a", X"07da", X"fba5", X"ed3d", X"ff14", X"0248", X"ff49", X"01bc", X"0a36",
                                                        X"0bf1", X"f96a", X"fa31", X"f730", X"047d", X"00dd", X"edf4", X"f940", X"09ce", X"fac5", X"eeda", X"014a", X"fe17", X"0281",
                                                        X"fa51", X"06e3", X"0c58", X"f913", X"f54c", X"02bc", X"0684", X"fd87", X"f5c6", X"f8d2", X"0364", X"fe38", X"f744", X"0004",
                                                        X"f71d", X"feb6", X"f8e2", X"0c3c", X"0647", X"006f", X"f55c", X"fe28", X"fef6", X"fbc9", X"f6d9", X"ff3d", X"ff4b", X"0457",
                                                        X"fb3b", X"fd9f", X"f8de", X"fd47", X"fa30", X"0489", X"067b", X"f6ef", X"f3dd", X"0122", X"0000", X"ff86", X"efb2", X"0071",
                                                        X"002c", X"0388", X"feeb", X"fb8b", X"fdf4", X"fc90", X"fa05", X"07db", X"057a", X"00fb", X"f6e9", X"0538", X"0090", X"011d",
                                                        X"034b", X"01e1", X"0183", X"fe52", X"0107", X"0157", X"fbd4", X"f841", X"00b5", X"fd69", X"fdb6", X"0209", X"fcec", X"0243",
                                                        X"fdf3", X"fcfd", X"f62d", X"06a5", X"fade", X"fb99", X"0b21", X"fd4c", X"fa8c", X"f336", X"fd7d", X"0001", X"f991", X"03de",
                                                        X"f9c7", X"07ea", X"0074", X"fe43", X"ee36", X"04dc", X"ffdb", X"f6b4", X"0f60", X"fbae", X"fe86", X"f9d1", X"fb03", X"faae",
                                                        X"f721", X"0b9c", X"fdae", X"0191", X"fcf3", X"01d5", X"0250", X"1003", X"02c6", X"fc01", X"10e3", X"049c", X"fa3b", X"f40c",
                                                        X"fa16", X"f966", X"f2ed", X"0c2c", X"f9c8", X"04b6", X"fc35", X"fe6b", X"f7f8", X"0da2", X"0554", X"fe5c", X"1215", X"0a81",
                                                        X"fc20", X"fbc1", X"fddd", X"f821", X"f439", X"06be", X"fa16", X"ff30", X"f84d", X"01bb", X"f323", X"09e4", X"fba3", X"fc6b",
                                                        X"0e1f", X"060b", X"024d", X"eeea", X"fc90", X"fa3c", X"f6c0", X"0505", X"fab6", X"fffb", X"f56e", X"00ee", X"f40e", X"094f",
                                                        X"0476", X"fcc6", X"092c", X"0093", X"0643", X"f63a", X"0401", X"ff0c", X"fb94", X"02a0", X"f886", X"fd94", X"fba5", X"fed4",
                                                        X"f7da", X"03a2", X"fa96", X"fd2e", X"014e", X"fd2b", X"0593", X"fc7a", X"fd6d", X"01c8", X"016a", X"ff14", X"f70d", X"0436",
                                                        X"0175", X"021e", X"f81e", X"ff9a", X"008c", X"02b2", X"fe46", X"00ee", X"0448", X"f836", X"0548", X"06e1", X"0b05", X"018e",
                                                        X"f70a", X"f7e4", X"feaf", X"0135", X"f6b4", X"f9d7", X"03db", X"0318", X"f6d2", X"0aae", X"fb79", X"ff6f", X"03ad", X"050f",
                                                        X"09f6", X"f672", X"ffb8", X"0146", X"fc8f", X"0380", X"01cc", X"f57e", X"066f", X"faa4", X"fc63", X"04b0", X"006e", X"0df2",
                                                        X"0025", X"048a", X"09fd", X"f98e", X"f85a", X"ffcc", X"fdde", X"0164", X"f2cc", X"f1b6", X"0449", X"fb54", X"f3d5", X"09a0",
                                                        X"ff77", X"feb2", X"ff6c", X"08a1", X"0d8e", X"f78f", X"f82e", X"02d5", X"fe1a", X"00a9", X"edc7", X"f585", X"07d3", X"fcb3",
                                                        X"eff8", X"ffd7", X"fdcd", X"0b43", X"f910", X"06e9", X"0c93", X"f56b", X"f9ec", X"01e9", X"fed5", X"fe41", X"f1f9", X"f5b5",
                                                        X"03de", X"fbe7", X"f37d", X"fa6f", X"f7a5", X"0a6e", X"0116", X"09a8", X"0a4e", X"fa8c", X"fd57", X"0046", X"fcf4", X"ffd1",
                                                        X"fcd2", X"f6a7", X"ffc6", X"0084", X"f8c3", X"fb03", X"fe16", X"039a", X"fc57", X"0726", X"0426", X"ffd1", X"f8d2", X"07d4",
                                                        X"fc6a", X"01bb", X"f6c7", X"fbcd", X"ff12", X"0019", X"fb29", X"fe56", X"feca", X"fe0c", X"f82a", X"054e", X"ffe3", X"ff72",
                                                        X"f03c", X"03d9", X"034b", X"0004", X"f196", X"0607", X"fecc", X"fd50", X"08e8", X"f619", X"0083", X"0111", X"fb04", X"0235",
                                                        X"fd02", X"0459", X"fb23", X"01ba", X"ffba", X"00c9", X"0489", X"08ff", X"003a", X"01dd", X"0b33", X"fa31", X"feb2", X"f26c",
                                                        X"fd0e", X"002a", X"fc2f", X"0b60", X"f9c5", X"0671", X"fb12", X"ffec", X"01f2", X"0f29", X"ffa1", X"fee4", X"1080", X"fb70",
                                                        X"003e", X"ff4c", X"fc87", X"fd1f", X"fb62", X"0ce7", X"fbc3", X"003b", X"fc87", X"fed9", X"fcd0", X"0d89", X"056b", X"fed3",
                                                        X"0e9c", X"0424", X"fbe6", X"03a6", X"01db", X"fe54", X"f8a7", X"0ad5", X"f7a7", X"02d2", X"f8bb", X"fe84", X"f47d", X"0bdd",
                                                        X"00d8", X"f9ba", X"0e8b", X"0322", X"fada", X"04a7", X"fc61", X"f7de", X"f076", X"fe4c", X"f785", X"fcdd", X"f4dd", X"ff60",
                                                        X"ef6e", X"0b67", X"ff67", X"fb29", X"0d2d", X"fe82", X"ff91", X"fb99", X"ff85", X"f9b2", X"f630", X"028d", X"fadc", X"0355",
                                                        X"fdba", X"021d", X"f73a", X"0738", X"fd96", X"fade", X"0a48", X"0651", X"fcc2", X"f23c", X"0097", X"ff92", X"fd4d", X"0383",
                                                        X"f562", X"ff2c", X"fcaf", X"fd2d", X"f4b2", X"08e5", X"0073", X"fd97", X"0636", X"0452", X"ff80", X"02a4", X"00ec", X"020e",
                                                        X"02dc", X"fb33", X"fa5b", X"f618", X"fbd1", X"fe8f", X"f12c", X"02cf", X"ff6b", X"fecc", X"fecf", X"0817", X"0503", X"0399",
                                                        X"01d3", X"06f5", X"074b", X"fc71", X"f8a4", X"faeb", X"fc37", X"00fc", X"f6fa", X"fbd9", X"fe48", X"fe62", X"f7b5", X"0787",
                                                        X"0539", X"0fa4", X"01d9", X"056b", X"0d99", X"fc54", X"f726", X"fdfe", X"012d", X"030f", X"f4f5", X"f849", X"0545", X"fa54",
                                                        X"f02d", X"0088", X"044b", X"0428", X"0346", X"07bc", X"0af4", X"f762", X"f4dc", X"09d0", X"fdde", X"0057", X"dfeb", X"f885",
                                                        X"05ef", X"fc91", X"edad", X"016f", X"025a", X"0489", X"fd2c", X"0524", X"0fd3", X"f7c1", X"f2db", X"0271", X"0600", X"fe54",
                                                        X"fe68", X"f85f", X"03ed", X"fe73", X"f6ed", X"0035", X"ff1a", X"06d7", X"ff1b", X"0b4e", X"0b57", X"f487", X"f851", X"ff8d",
                                                        X"03ec", X"00dc", X"f0ff", X"f72a", X"f528", X"ffc2", X"e9cd", X"fa39", X"fcaa", X"04e0", X"f8a4", X"0bdd", X"0a76", X"fa33",
                                                        X"fac4", X"006f", X"fdd7", X"fd8b", X"02f3", X"fbbd", X"f7ce", X"0403", X"f7ef", X"fba7", X"003d", X"0068", X"fc89", X"0735",
                                                        X"043b", X"fb81", X"fd49", X"02c0", X"ffd5", X"0169", X"0558", X"fda4", X"fabf", X"fdb6", X"0043", X"fa61", X"fe57", X"fc85",
                                                        X"fb27", X"0670", X"ff5e", X"fa74", X"f910", X"fe0b", X"fa28", X"fffc", X"f581", X"0271", X"037f", X"fe97", X"0775", X"0123",
                                                        X"f678", X"f20d", X"03e7", X"0307", X"fcb3", X"0374", X"fb62", X"0916", X"fee2", X"ff61", X"f89b", X"06a8", X"ff24", X"fc52",
                                                        X"0c1e", X"fcf8", X"fc26", X"fed8", X"fef8", X"f8fe", X"f8a3", X"0da5", X"00f2", X"0b1c", X"ffd8", X"fdd1", X"043e", X"08fc",
                                                        X"fc12", X"f91d", X"0d55", X"06e8", X"010a", X"05a4", X"fb52", X"f878", X"f2b5", X"0c6d", X"ff3e", X"fb64", X"032e", X"ff9e",
                                                        X"f394", X"0f1d", X"f678", X"f6fe", X"0e45", X"05fd", X"0199", X"0d07", X"f9cd", X"f6f4", X"f919", X"051b", X"f4e5", X"0ace",
                                                        X"05c6", X"fee5", X"f2cb", X"0d02", X"03a6", X"fb38", X"11dc", X"0554", X"010c", X"054b", X"fb5d", X"fa4f", X"f743", X"05b2",
                                                        X"f299", X"ff83", X"0020", X"ff27", X"ed4d", X"0ca6", X"fc6c", X"0274", X"0df4", X"0518", X"02f5", X"fd4b", X"005a", X"0033",
                                                        X"f710", X"00d6", X"fe28", X"fbbe", X"fc95", X"fed9", X"fd42", X"07ec", X"fd39", X"fdd0", X"0924", X"fe5f", X"0237", X"fefa",
                                                        X"fe7d", X"fed6", X"fd1d", X"00c6", X"042b", X"048a", X"fe4e", X"fee8", X"fa8a", X"00d0", X"04e0", X"fb2e", X"0858", X"07f5",
                                                        X"037b", X"fe55", X"06d1", X"ffcc", X"0583", X"f8d2", X"f87e", X"ff45", X"f888", X"ff97", X"f3cf", X"f84e", X"fbc3", X"fc01",
                                                        X"f9b8", X"ffae", X"fec1", X"08f6", X"017a", X"0318", X"06f5", X"faef", X"f251", X"ff3f", X"f81f", X"01ec", X"fbb6", X"fbd9",
                                                        X"0367", X"fc0a", X"f468", X"00b7", X"ffa0", X"0530", X"03da", X"01a9", X"0617", X"f319", X"f55f", X"0031", X"ffc6", X"03d2",
                                                        X"fccb", X"f87a", X"08fb", X"01e2", X"f2c7", X"0612", X"08f4", X"0071", X"032f", X"06bd", X"0ce8", X"f3be", X"f8a1", X"fb87",
                                                        X"003a", X"00a9", X"fd9d", X"f027", X"fca9", X"0542", X"f3e8", X"058d", X"fd1a", X"ff40", X"0195", X"08d5", X"114b", X"0111",
                                                        X"f04d", X"fdf4", X"051d", X"feab", X"f050", X"f3b0", X"fd41", X"00f5", X"f12a", X"0234", X"01c3", X"0311", X"f76d", X"0d3f",
                                                        X"0aa1", X"fc52", X"fcd9", X"0632", X"02a3", X"02bd", X"f612", X"f626", X"fcb0", X"fe8d", X"ea56", X"029b", X"fe56", X"0d25",
                                                        X"faf9", X"0c26", X"0da8", X"f9f8", X"fc28", X"047b", X"fe7d", X"023c", X"f979", X"f9c0", X"013f", X"0095", X"f69a", X"ff89",
                                                        X"009b", X"fcd2", X"fb84", X"0677", X"0820", X"0208", X"f975", X"ffcf", X"ffe6", X"0117", X"fcea", X"01f7", X"fb3f", X"0001",
                                                        X"fc8f", X"035e", X"0163", X"f598", X"fed0", X"02d6", X"0062", X"0184", X"fdfc", X"07f4", X"fd91", X"003c", X"f843", X"069b",
                                                        X"fdbe", X"fe7d", X"07f3", X"fadf", X"f806", X"fbe2", X"ff06", X"0117", X"ff66", X"08e1", X"f756", X"0500", X"0407", X"ff5e",
                                                        X"ee7c", X"03d5", X"f7ec", X"0050", X"0a5e", X"fb9a", X"fed3", X"fa62", X"fa5b", X"fe1b", X"f7d8", X"0765", X"00fb", X"04b1",
                                                        X"fc18", X"0030", X"ffc3", X"0733", X"0195", X"fc4d", X"0ffc", X"0176", X"f6a9", X"f86c", X"f714", X"fab6", X"f925", X"0cb5",
                                                        X"fd11", X"0642", X"0269", X"fe5c", X"fe9f", X"0a93", X"0280", X"fdd3", X"15a1", X"00e9", X"fbf7", X"ffac", X"fd9d", X"fb96",
                                                        X"f4ff", X"061e", X"fee3", X"03d0", X"fed8", X"0001", X"ef2b", X"0b5c", X"fc3e", X"f535", X"13e9", X"02fc", X"ff3d", X"f81d",
                                                        X"fbc0", X"fa31", X"f22c", X"0400", X"fdd7", X"027f", X"f8ba", X"003f", X"f774", X"0e36", X"f95b", X"fbee", X"111b", X"015d",
                                                        X"0508", X"02b8", X"0086", X"fafc", X"f7ff", X"0727", X"fd11", X"fe87", X"fbeb", X"0114", X"f29b", X"0be6", X"fd07", X"fe70",
                                                        X"0bbf", X"0128", X"08b5", X"f890", X"ff97", X"f991", X"fb24", X"036f", X"f83f", X"fbdf", X"fd2f", X"01fe", X"ed46", X"0925",
                                                        X"f6e0", X"00cd", X"038b", X"0761", X"0236", X"054d", X"fc41", X"fcac", X"01e3", X"01db", X"f2f1", X"fa4a", X"fa85", X"fe76",
                                                        X"f3f0", X"04d8", X"00df", X"fdf8", X"0256", X"0624", X"01d4", X"fc0d", X"031e", X"01e6", X"0a3c", X"fae6", X"0263", X"ff15",
                                                        X"fb54", X"013e", X"fdca", X"fcb7", X"000d", X"011f", X"f2e5", X"0679", X"0ae5", X"fd16", X"06da", X"07df", X"0ecf", X"fd39",
                                                        X"0109", X"fb07", X"fc43", X"0240", X"fce7", X"f8e7", X"0305", X"0242", X"f1cb", X"0987", X"0662", X"0a6a", X"00a9", X"0569",
                                                        X"0a2d", X"f045", X"f7c0", X"fbeb", X"0083", X"02e6", X"f3d0", X"f0d7", X"037b", X"fbeb", X"f352", X"0b1e", X"0831", X"0145",
                                                        X"fca9", X"0911", X"0701", X"f0e9", X"f97b", X"0837", X"fcf4", X"fd5d", X"ee88", X"f108", X"065b", X"f74a", X"ee86", X"026e",
                                                        X"f9dd", X"08c0", X"fc4e", X"06e3", X"0df5", X"fd37", X"f84c", X"0a93", X"0346", X"0072", X"ea82", X"f12f", X"fe72", X"faf2",
                                                        X"f57a", X"ff5c", X"fa95", X"0c1e", X"fa6a", X"0c1d", X"0b9a", X"fe91", X"f5bb", X"01cc", X"fd63", X"032d", X"ecb3", X"f811",
                                                        X"fe8e", X"0138", X"f96b", X"ffad", X"00ef", X"0016", X"fd98", X"056f", X"0489", X"01c4", X"fdaf", X"0924", X"fd75", X"ff05",
                                                        X"f419", X"fc79", X"004c", X"02fb", X"0406", X"0214", X"fbe9", X"f35b", X"0355", X"02b6", X"03db", X"0579", X"fb59", X"f7ba",
                                                        X"033d", X"0244", X"fe0b", X"0327", X"ff45", X"0136", X"05f1", X"fc37", X"f904", X"ea33", X"fca2", X"0227", X"fdde", X"038a",
                                                        X"fe2b", X"0195", X"fadc", X"ffc2", X"fc77", X"0463", X"063d", X"fb41", X"08e3", X"01d9", X"f952", X"f6ec", X"ff53", X"ff26",
                                                        X"f58e", X"05de", X"fe62", X"07e0", X"f9bb", X"ffaf", X"f584", X"0991", X"ff86", X"fa26", X"0aca", X"fe15", X"f8b5", X"fab8",
                                                        X"fd17", X"f8b9", X"f759", X"0991", X"f71d", X"0653", X"00c2", X"fbd0", X"f89e", X"0c8d", X"f953", X"fc79", X"0e81", X"fee1",
                                                        X"f473", X"fd0f", X"0020", X"f772", X"f367", X"07e1", X"fe22", X"03cc", X"00e7", X"fda5", X"eb73", X"0fe5", X"0438", X"fbf7",
                                                        X"0f7d", X"0487", X"0455", X"03a5", X"0169", X"f772", X"f16f", X"016e", X"f79f", X"fe50", X"fe0d", X"fda6", X"f923", X"08bf",
                                                        X"fcba", X"fd25", X"0df9", X"04ac", X"0279", X"f755", X"fa1e", X"fe89", X"f621", X"050d", X"f81a", X"0769", X"f870", X"0342",
                                                        X"efd2", X"061a", X"f63f", X"fa9f", X"07cc", X"02a0", X"01fb", X"f0bc", X"fc84", X"fa3a", X"fa66", X"fd06", X"f3ff", X"fee2",
                                                        X"f70b", X"0065", X"f389", X"01b7", X"012f", X"ffa8", X"01cd", X"03c8", X"fbe4", X"fc66", X"0473", X"013b", X"045f", X"fb63",
                                                        X"f31e", X"fcec", X"f968", X"0292", X"f7ba", X"fccf", X"033a", X"ffab", X"ff32", X"00b8", X"0263", X"fc3a", X"02a2", X"0290",
                                                        X"06cf", X"f8d7", X"f831", X"fa02", X"fd18", X"fdef", X"fe8d", X"fcfa", X"ff87", X"fed6", X"fa2b", X"06b6", X"041e", X"0615",
                                                        X"00ac", X"056c", X"0996", X"f88b", X"f6d0", X"fc9e", X"06cd", X"fedd", X"e9c5", X"f8b0", X"021f", X"fb59", X"f43a", X"ff44",
                                                        X"04a9", X"05e8", X"fa78", X"0881", X"0df0", X"f382", X"fb5a", X"02ef", X"04fc", X"ffbe", X"febd", X"f3f9", X"048f", X"fefb",
                                                        X"ef92", X"097c", X"fabc", X"0089", X"fce6", X"07e6", X"10b4", X"f859", X"f378", X"0431", X"0301", X"0084", X"f84d", X"f742",
                                                        X"016e", X"0063", X"f452", X"072c", X"fca1", X"f846", X"fbce", X"0a3b", X"0ade", X"f08d", X"fab3", X"0322", X"0404", X"ff50",
                                                        X"fff8", X"f7b8", X"066b", X"00b0", X"f3bf", X"02a8", X"00c6", X"00ed", X"fd7a", X"0ac8", X"1015", X"fb40", X"f4e7", X"fafc",
                                                        X"0472", X"ff2c", X"f97b", X"f9c5", X"fc2b", X"03ca", X"f97d", X"ff7b", X"080d", X"feb9", X"fc97", X"09a0", X"0398", X"058d",
                                                        X"f53c", X"07c1", X"0158", X"ff89", X"f9ce", X"fee3", X"fd1e", X"0014", X"ff29", X"fbe0", X"0043", X"0001", X"fc03", X"030b",
                                                        X"0392", X"0150", X"efc3", X"fdac", X"fe20", X"fe15", X"f055", X"020a", X"0602", X"03a6", X"068a", X"fad6", X"f86a", X"f8f9",
                                                        X"fd45", X"0436", X"ff70", X"061e", X"f63c", X"0303", X"f8e2", X"0028", X"f3d6", X"041c", X"fa8c", X"0159", X"0cac", X"fbe5",
                                                        X"fc81", X"f6e3", X"fef0", X"ff15", X"fc33", X"0ab9", X"fcf2", X"0282", X"feea", X"0055", X"f617", X"0448", X"02a7", X"fed0",
                                                        X"11d5", X"fec6", X"fedd", X"0507", X"00f8", X"fd7a", X"f848", X"0ace", X"fc89", X"fe1a", X"fd23", X"0080", X"f8f6", X"0d54",
                                                        X"fef5", X"fecd", X"1259", X"fe7f", X"f96f", X"f95e", X"fb71", X"fa1d", X"f824", X"05dc", X"f730", X"00d2", X"04e1", X"fa8f",
                                                        X"f217", X"0a8d", X"f34f", X"fadf", X"10a7", X"05e2", X"fe0d", X"fe50", X"f5b1", X"f88e", X"fccc", X"0691", X"002d", X"0279",
                                                        X"0369", X"fe29", X"f6ce", X"09e5", X"fae1", X"fdbc", X"08fe", X"046d", X"fd9f", X"f6f5", X"f9b7", X"fd2a", X"f77d", X"0282",
                                                        X"faeb", X"007a", X"feba", X"fdcf", X"f1f2", X"07b3", X"0542", X"fe43", X"0cfa", X"ffd3", X"fb70", X"ff0a", X"fe04", X"faef",
                                                        X"0071", X"025a", X"f5f6", X"f878", X"f9ed", X"ffd2", X"f970", X"0b22", X"0111", X"fcc4", X"08cb", X"0196", X"0783", X"02c8",
                                                        X"01b9", X"ff3b", X"0499", X"0229", X"fb6d", X"0208", X"fe93", X"033b", X"095a", X"0014", X"02f2", X"fc13", X"0326", X"0243",
                                                        X"05e3", X"0506", X"031c", X"03bb", X"01f8", X"fb7b", X"f69a", X"0558", X"fa8f", X"04a1", X"fba1", X"f818", X"0695", X"ff0b",
                                                        X"fa91", X"05a4", X"06e8", X"f648", X"01c1", X"0205", X"072a", X"f819", X"f854", X"fbb3", X"01ba", X"ff01", X"fb5a", X"f788",
                                                        X"061d", X"fcc4", X"f6ff", X"04f7", X"027d", X"0695", X"017c", X"060b", X"0c49", X"f1f5", X"fd34", X"05ae", X"022e", X"01c6",
                                                        X"fa5c", X"f220", X"0337", X"feac", X"f10c", X"0348", X"fbd2", X"fef6", X"00c0", X"0470", X"09a2", X"fb94", X"ff42", X"fbd6",
                                                        X"ffd3", X"0035", X"f765", X"efd0", X"ff01", X"f9a3", X"f2db", X"ff08", X"fa13", X"04b0", X"fe80", X"0824", X"0be0", X"03d2",
                                                        X"f970", X"01ea", X"ffef", X"00f4", X"eae3", X"f871", X"01d3", X"fe9c", X"f61f", X"006a", X"f7bb", X"0562", X"fceb", X"08b5",
                                                        X"0bff", X"fea1", X"f84e", X"0438", X"0089", X"02a7", X"f346", X"fb7c", X"0d1b", X"035b", X"f818", X"fd21", X"fc36", X"07ba",
                                                        X"f9da", X"0753", X"08a2", X"fe10", X"faf8", X"fcb8", X"00d1", X"fe6a", X"f705", X"f9eb", X"fb7e", X"06a9", X"0285", X"fa86",
                                                        X"faf6", X"fdae", X"fe99", X"0720", X"015c", X"0374", X"fb17", X"ff66", X"00e9", X"ff64", X"fa9c", X"06bd", X"fee3", X"0323",
                                                        X"0319", X"fc02", X"fb0d", X"fd1b", X"fc91", X"0068", X"f9b8", X"065b", X"f6c4", X"028e", X"fe91", X"fece", X"0126", X"05f2",
                                                        X"04a8", X"fc35", X"082b", X"f8e2", X"fa6e", X"fd46", X"ff8f", X"fc6d", X"ffcc", X"06b7", X"fa2f", X"06ac", X"00c2", X"ff03",
                                                        X"ffc3", X"0c2f", X"027c", X"fc03", X"0f42", X"fe9e", X"01ac", X"ffb6", X"fa1f", X"f98e", X"f467", X"0b7f", X"f5ae", X"0135",
                                                        X"fb7b", X"fdb1", X"f481", X"0bd5", X"0887", X"fce3", X"1167", X"ff7d", X"fea1", X"06e2", X"fbca", X"f9db", X"f1b6", X"0c6f",
                                                        X"f887", X"03e4", X"fa84", X"00bc", X"009f", X"1251", X"02d8", X"f9d2", X"126f", X"ff97", X"0333", X"faeb", X"0006", X"f93c",
                                                        X"f539", X"02f1", X"f48a", X"08ce", X"f9f2", X"fed3", X"f48f", X"0d0e", X"0376", X"f805", X"0cd3", X"ffb9", X"022a", X"05d3",
                                                        X"fc83", X"f898", X"faf8", X"0135", X"f6dc", X"058e", X"f660", X"fe8d", X"f570", X"0793", X"f9d2", X"f560", X"0e2e", X"fb87",
                                                        X"0374", X"eb81", X"fb90", X"fe8d");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fe8d";
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

