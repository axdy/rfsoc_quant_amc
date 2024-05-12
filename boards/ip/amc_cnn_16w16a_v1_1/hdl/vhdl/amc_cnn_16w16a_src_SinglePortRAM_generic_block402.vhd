-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block402.vhd
-- Created: 2023-08-04 11:27:22
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block402
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage5/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block402 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block402;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block402 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0c7f", X"f80b", X"ec5b", X"054d", X"1772", X"fc46",
                                                        X"1377", X"f97b", X"1c3e", X"1bf7", X"059a", X"ee52", X"0829", X"fadd", X"fd35", X"f857", X"022d", X"fd58", X"eb0a", X"fcb0",
                                                        X"fc38", X"f58d", X"f110", X"1fdf", X"f01c", X"f011", X"e7fa", X"030e", X"f427", X"fb21", X"f8f7", X"074e", X"0d96", X"f67e",
                                                        X"f424", X"fd16", X"097a", X"fb46", X"0e4a", X"01d4", X"199c", X"03ff", X"038e", X"0858", X"1220", X"ffb2", X"00c4", X"f666",
                                                        X"0300", X"ef54", X"18ce", X"f216", X"f8fd", X"05e9", X"0945", X"e0b9", X"ff5d", X"29f7", X"f34e", X"f67e", X"f533", X"0bbc",
                                                        X"f776", X"ffa3", X"0367", X"0dd7", X"f5c4", X"0753", X"0d17", X"ed7c", X"f3ef", X"fd39", X"1877", X"0731", X"f3a0", X"f41a",
                                                        X"fa3f", X"e95c", X"04b1", X"fc9e", X"fe71", X"03d8", X"fb2b", X"0714", X"e684", X"0d92", X"fb85", X"2469", X"f461", X"1f65",
                                                        X"fa21", X"f049", X"0c48", X"ef92", X"ed8c", X"075a", X"1011", X"0694", X"e2e2", X"e781", X"fca1", X"e36a", X"24c8", X"f90a",
                                                        X"eea5", X"1107", X"fdb0", X"f4e9", X"fd41", X"ee7e", X"ffad", X"e5d6", X"fed8", X"1317", X"e045", X"e99e", X"07a1", X"0672",
                                                        X"eebd", X"ece4", X"2195", X"e92e", X"f737", X"0d89", X"f13f", X"feec", X"006f", X"06c8", X"fe14", X"f3fb", X"08a2", X"1041",
                                                        X"091e", X"ffdd", X"03f7", X"f3f1", X"003a", X"f438", X"0bd4", X"f8a1", X"ffbc", X"ea63", X"fd44", X"19fb", X"f8aa", X"ed32",
                                                        X"d93c", X"fd84", X"f6d6", X"f5fb", X"2a31", X"edcf", X"1b8a", X"21ad", X"052e", X"0544", X"12c2", X"15b7", X"edf5", X"09df",
                                                        X"fddf", X"04e1", X"0ab3", X"f01e", X"0a89", X"049e", X"1338", X"2086", X"eb47", X"fecf", X"fc2b", X"0c65", X"f06f", X"f394",
                                                        X"e704", X"f510", X"1886", X"f800", X"e2c8", X"03a8", X"fefc", X"fbc6", X"10a1", X"084b", X"0cd8", X"03dc", X"0062", X"12f1",
                                                        X"069b", X"ee71", X"fe1c", X"f316", X"f737", X"1c8d", X"fd34", X"e85e", X"ec51", X"0215", X"1ac9", X"f5b5", X"2670", X"1622",
                                                        X"0ed4", X"15f3", X"0292", X"156d", X"f813", X"f942", X"036f", X"0ee9", X"eefc", X"00eb", X"1739", X"f7b0", X"05aa", X"ebd6",
                                                        X"e9d0", X"183a", X"070f", X"fdb9", X"f798", X"0709", X"0476", X"ecbf", X"ff5a", X"1353", X"eb0e", X"f94f", X"fe0b", X"f048",
                                                        X"2004", X"1eac", X"0e90", X"e43b", X"f554", X"14a9", X"0fc5", X"e91d", X"00f9", X"f14e", X"0a5f", X"057f", X"dab4", X"06d5",
                                                        X"f90d", X"eaa2", X"0f4f", X"0741", X"149c", X"f8f1", X"05c6", X"011a", X"ee42", X"19ac", X"09d7", X"e781", X"027f", X"08ed",
                                                        X"e458", X"dd52", X"ff39", X"f3ad", X"1ab4", X"e06e", X"dd44", X"dfb8", X"fb3e", X"00e2", X"e1e2", X"0128", X"038b", X"f3e8",
                                                        X"fe61", X"0e1b", X"11f0", X"f314", X"f90b", X"f65c", X"1d30", X"1886", X"f0b0", X"f253", X"0d8b", X"fa66", X"02da", X"f41a",
                                                        X"f1e3", X"0ac6", X"045a", X"01b3", X"0fd7", X"fd13", X"07ea", X"fb3d", X"f337", X"fe13", X"1164", X"f740", X"fb44", X"0c51",
                                                        X"0e41", X"f13b", X"f992", X"0714", X"0e3b", X"16b0", X"d81b", X"f9c9", X"f438", X"1b26", X"1d82", X"fe31", X"ff97", X"fe1f",
                                                        X"10a9", X"0063", X"f6ab", X"0064", X"f9dc", X"f59e", X"ffbd", X"e087", X"fba1", X"1c40", X"0a6d", X"10ee", X"2af8", X"0b3a",
                                                        X"12ef", X"e788", X"04df", X"007d", X"0873", X"01e6", X"ff3a", X"ff21", X"0ce9", X"09a8", X"fdb0", X"f9fb", X"fea4", X"fcb6",
                                                        X"0f70", X"04eb", X"014c", X"e967", X"f264", X"fe64", X"09b0", X"0227", X"f83c", X"0633", X"fcf6", X"0c67", X"f9d9", X"f6f9",
                                                        X"0d40", X"fc76", X"0a61", X"ed35", X"ff55", X"ed95", X"fbc5", X"edaf", X"02fd", X"0082", X"f7af", X"f198", X"06f5", X"d8c5",
                                                        X"f2da", X"0504", X"fbc3", X"f1b7", X"22e3", X"16d0", X"ec45", X"1593", X"f9fc", X"fc58", X"1f01", X"079c", X"fdf3", X"025c",
                                                        X"fff4", X"f8ff", X"ff5f", X"ebf6", X"01e4", X"f867", X"f27d", X"f0bc", X"0d9a", X"eba7", X"f06e", X"0421", X"f437", X"f85d",
                                                        X"0382", X"efb1", X"0e2d", X"1d49", X"0bdc", X"ed28", X"1eb4", X"fb1d", X"e9db", X"fc9f", X"1a23", X"146a", X"05ff", X"f817",
                                                        X"de52", X"f17f", X"0cdd", X"fc7a", X"0617", X"0219", X"1686", X"fd15", X"1388", X"f62b", X"0d12", X"2d1a", X"2532", X"f4ea",
                                                        X"09ec", X"02f9", X"f9ba", X"f588", X"075a", X"e284", X"0c5c", X"040f", X"d621", X"0c26", X"eb80", X"fa90", X"f081", X"0079",
                                                        X"0b90", X"09b2", X"1b5f", X"0c5c", X"e91f", X"ff73", X"f6e7", X"ec9b", X"03e0", X"00e8", X"e0a1", X"fae4", X"f544", X"0a3b",
                                                        X"f23f", X"1f18", X"16f4", X"20e3", X"0cae", X"0a6e", X"f949", X"f8e4", X"0c65", X"e6a2", X"02dc", X"fea1", X"1401", X"ee10",
                                                        X"099f", X"055d", X"04fe", X"f519", X"0346", X"de10", X"26ce", X"09ec", X"ef25", X"f554", X"0b02", X"03e5", X"090c", X"04b0",
                                                        X"e2be", X"0665", X"001e", X"f056", X"131f", X"06fc", X"ff42", X"1a50", X"0819", X"1864", X"0b9c", X"e66a", X"fcb1", X"014d",
                                                        X"f9e6", X"f822", X"133b", X"08ab", X"0c0d", X"ff88", X"05c4", X"0830", X"f24b", X"0899", X"051b", X"fad2", X"f498", X"defb",
                                                        X"1c06", X"e560", X"f2d6", X"0478", X"ecea", X"e93e", X"036a", X"1407", X"1373", X"1da9", X"0ea7", X"101f", X"1201", X"07be",
                                                        X"f38a", X"05e1", X"fd44", X"013c", X"0d25", X"0ef0", X"e08a", X"fc21", X"f5d2", X"069d", X"fdd9", X"080d", X"f43f", X"1464",
                                                        X"331f", X"fe23", X"f996", X"089d", X"02e3", X"fd9c", X"edce", X"e2ee", X"14eb", X"0a23", X"f9dd", X"f4de", X"0bc1", X"0331",
                                                        X"016e", X"e746", X"f37d", X"e5c3", X"f8ca", X"fe7f", X"e7bb", X"082d", X"fbba", X"f6d4", X"0131", X"eac0", X"eaa7", X"1af9",
                                                        X"cf9b", X"16d0", X"1b63", X"0fba", X"f476", X"1636", X"00bf", X"02f6", X"025f", X"0f31", X"09c1", X"f8a0", X"046c", X"06e8",
                                                        X"f970", X"f74a", X"f3d2", X"0b0a", X"f269", X"01f4", X"fdcd", X"f085", X"e7a5", X"013d", X"0357", X"f7b5", X"0c96", X"0ec3",
                                                        X"cecc", X"11f2", X"fc63", X"0cbf", X"f623", X"0ddc", X"fcdc", X"0fde", X"f8cc", X"060a", X"fa80", X"f6fe", X"0762", X"0485",
                                                        X"0ce9", X"e555", X"1b58", X"ea57", X"ee6d", X"fb1e", X"dccd", X"0d29", X"2217", X"0583", X"df82", X"094d", X"01d2", X"fa0c",
                                                        X"fa8a", X"edc9", X"046e", X"19f5", X"ec11", X"034a", X"ecce", X"ee10", X"f3c0", X"fbb9", X"f35f", X"f0a7", X"073c", X"fff5",
                                                        X"2119", X"0bc7", X"f8a5", X"104c", X"020b", X"fbae", X"e5d1", X"fe51", X"026d", X"169f", X"ffcd", X"fe25", X"0c6f", X"0553",
                                                        X"ec70", X"1ab1", X"fa22", X"eee0", X"0106", X"07b2", X"01bc", X"e8c0", X"e592", X"f2ab", X"0134", X"f18b", X"07f0", X"0fca",
                                                        X"f6d5", X"1c49", X"0856", X"0c78", X"17be", X"f945", X"f60b", X"f666", X"0b45", X"e458", X"faf9", X"0fc3", X"04a9", X"06c1",
                                                        X"d721", X"06d0", X"102d", X"29d2", X"e8c4", X"ed0d", X"fe08", X"ff9e", X"020e", X"fc7b", X"fc97", X"eb10", X"113e", X"ed3b",
                                                        X"f867", X"09c0", X"ecee", X"096b", X"184f", X"2152", X"edfb", X"03ba", X"03ba", X"01b6", X"fda4", X"ff40", X"0527", X"ee3c",
                                                        X"1039", X"faad", X"055e", X"f2b6", X"fafe", X"050b", X"fadd", X"176e", X"f81e", X"fe85", X"13cb", X"f795", X"01b6", X"f083",
                                                        X"0409", X"e7ed", X"0ad8", X"f5d0", X"0833", X"efe7", X"c455", X"1a07", X"fb47", X"0eeb", X"0a24", X"1203", X"036e", X"ea02",
                                                        X"fe54", X"011e", X"05a0", X"ff14", X"0389", X"0749", X"04d7", X"ff10", X"cc33", X"fbb7", X"1a56", X"eaa0", X"f316", X"f139",
                                                        X"0e97", X"1d15", X"0904", X"0e7d", X"11e2", X"f340", X"0f21", X"1bbd", X"fed6", X"1202", X"f2ea", X"275c", X"f14d", X"f4eb",
                                                        X"0629", X"0b09", X"112f", X"ee8c", X"f356", X"0547", X"06c3", X"d881", X"1e11", X"f4ac", X"0876", X"059c", X"d5bd", X"f960",
                                                        X"09af", X"feeb", X"1b2e", X"0e13", X"0224", X"fe64", X"fbd1", X"1634", X"04cc", X"132f", X"02ab", X"115e", X"194c", X"0bec",
                                                        X"cfba", X"1e09", X"ee4f", X"e5d6", X"14a9", X"ebe1", X"f798", X"feb2", X"ee13", X"f4c8", X"ff66", X"ed47", X"18cc", X"f403",
                                                        X"05a1", X"07f6", X"e5e4", X"239b", X"e9b8", X"1ba1", X"e575", X"ff75", X"0977", X"0650", X"0615", X"1359", X"24cf", X"da95",
                                                        X"f608", X"deaa", X"002b", X"179c", X"e1dc", X"0c2f", X"078e", X"1f71", X"1e9e", X"11c3", X"f9cb", X"0f8b", X"09cd", X"feb9",
                                                        X"f8c5", X"1873", X"d5c4", X"f3f9", X"ffbf", X"ed60", X"e050", X"0dfc", X"f74f", X"11bf", X"06f7", X"e7f0", X"fed3", X"ddc1",
                                                        X"0080", X"05ce", X"fed5", X"0794", X"f6dd", X"fbd6", X"f47f", X"f291", X"c43e", X"039b", X"1a20", X"0584", X"feb0", X"fe81",
                                                        X"fc76", X"f4d2", X"008a", X"f1a0", X"1ac3", X"ff6c", X"e778", X"1631", X"f6a6", X"faf2", X"fcf4", X"1d9d", X"f155", X"11df",
                                                        X"210c", X"fa2d", X"f01e", X"fda1", X"1076", X"0b3f", X"ee34", X"051a", X"f5f7", X"e911", X"0874", X"0366", X"d600", X"fed9",
                                                        X"1c14", X"2ba5", X"1a91", X"f832", X"0a10", X"082b", X"12c5", X"115f", X"0438", X"e930", X"e90c", X"0689", X"fe61", X"edeb",
                                                        X"f2eb", X"0279", X"eebe", X"031d", X"1bf3", X"054c", X"f352", X"fbf6", X"0b58", X"f8e6", X"f748", X"eb93", X"1885", X"f9a3",
                                                        X"fea2", X"136f", X"f280", X"0d58", X"eea7", X"0089", X"0791", X"f377", X"0136", X"01c5", X"172f", X"0c4d", X"02b2", X"f77d",
                                                        X"e567", X"169f", X"05ad", X"f356", X"fe98", X"fd93", X"0dce", X"f734", X"05ac", X"0430", X"0211", X"e6a7", X"1060", X"1043",
                                                        X"08bb", X"0720", X"d915", X"e2f8", X"fa0a", X"05c1", X"0d78", X"0558", X"1034", X"1cce", X"0665", X"00b8", X"eddd", X"fc3e",
                                                        X"0840", X"1222", X"0982", X"ee46", X"fc7a", X"ff20", X"04a3", X"064c", X"08b6", X"0bb1", X"ff88", X"08c4", X"10be", X"125a",
                                                        X"f401", X"0117", X"0f2a", X"096a", X"efd2", X"f89d", X"f79c", X"fae6", X"016d", X"e816", X"1ac3", X"0235", X"dd92", X"07d9",
                                                        X"0c8e", X"f140", X"07b3", X"0087", X"066f", X"f0e8", X"ff26", X"e73e", X"162d", X"f470", X"f941", X"0aac", X"0d67", X"f518",
                                                        X"0bda", X"faed", X"017c", X"f243", X"fbf5", X"0f64", X"0261", X"15b7", X"0917", X"1c9b", X"e2c5", X"f4e2", X"037f", X"f3de",
                                                        X"18ef", X"1636", X"fe98", X"12c3", X"f973", X"f053", X"f9ec", X"e83c", X"feec", X"1154", X"f147", X"de9f", X"068c", X"0dce",
                                                        X"1172", X"0486", X"0ada", X"088d", X"dc6e", X"ed54", X"07e7", X"fb4c", X"0640", X"16c9", X"0285", X"ef09", X"0228", X"e48b",
                                                        X"1286", X"0e33", X"00e9", X"fca0", X"09dc", X"fb18", X"f990", X"f881", X"0399", X"faad", X"f7f7", X"216b", X"f487", X"ec56",
                                                        X"00e5", X"fca9", X"e9c0", X"00f7", X"f1b4", X"f110", X"0ca2", X"1d2a", X"ff60", X"e58d", X"ecaf", X"ef7d", X"0a5f", X"fb16",
                                                        X"07ed", X"0bcd", X"131e", X"0a25", X"f4fe", X"f9b4", X"105e", X"ffb5", X"24fa", X"0a69", X"f26b", X"fb40", X"0c70", X"0899",
                                                        X"04c7", X"0ea8", X"fe3f", X"0315", X"052c", X"ee67", X"f660", X"0193", X"015e", X"0ed9", X"f3f1", X"1e49", X"f195", X"e899",
                                                        X"0664", X"ee94", X"fd0b", X"f08a", X"f356", X"0f94", X"f0d7", X"f3ff", X"f897", X"0568", X"fb34", X"f835", X"0807", X"f35e",
                                                        X"03bb", X"eed6", X"2bb4", X"faa1", X"fa60", X"0124", X"ed69", X"16e7", X"0648", X"e59e", X"2108", X"f8f9", X"04fa", X"0a7e",
                                                        X"eb93", X"2a54", X"f88a", X"ebc1", X"1c3d", X"04e2", X"00b3", X"12f5", X"fad9", X"029c", X"0cbd", X"0a75", X"e153", X"0685",
                                                        X"fdfe", X"003a", X"f76f", X"faf4", X"fc24", X"f47b", X"e703", X"0800", X"09c5", X"1b72", X"edd5", X"0ad3", X"145e", X"0b7b",
                                                        X"e50d", X"edb0", X"176f", X"f978", X"0844", X"0c14", X"0126", X"18cf", X"10ce", X"df7d", X"ea06", X"f8b9", X"f49c", X"0dec",
                                                        X"0812", X"1272", X"fef0", X"0e40", X"059a", X"feea", X"da55", X"012b", X"155f", X"02b1", X"0657", X"ef15", X"fd35", X"0af7",
                                                        X"de4d", X"03bc", X"0b7b", X"025d", X"f98c", X"f485", X"0ca1", X"f61b", X"e54c", X"156b", X"0700", X"ea87", X"fc92", X"f10a",
                                                        X"f49f", X"118d", X"0fc9", X"14bc", X"fcce", X"fda0", X"2154", X"0d7f", X"094d", X"ff67", X"ebd7", X"fe8f", X"ee9e", X"256d",
                                                        X"0946", X"fc74", X"ecd8", X"188e", X"0451", X"1e33", X"0267", X"e1c5", X"ed1e", X"f8bd", X"f583", X"1a40", X"df6e", X"f6a4",
                                                        X"fa42", X"1505", X"0dfd", X"eeba", X"20bb", X"f6ea", X"fe85", X"ee1a", X"fa4f", X"091f", X"def0", X"f7f0", X"05df", X"179d",
                                                        X"eacb", X"2b3e", X"17c8", X"18bb", X"ede8", X"fd5e", X"0688", X"0100", X"f742", X"fc86", X"1f01", X"030b", X"ff84", X"15fd",
                                                        X"e196", X"e7a2", X"ce02", X"07cb", X"efe6", X"0a9c", X"0f4d", X"0886", X"0796", X"07f3", X"0e73", X"fafd", X"1020", X"02ad",
                                                        X"e0b6", X"fb0d", X"f8a4", X"0e80", X"d06f", X"0c4e", X"17ba", X"0a1e", X"175b", X"f301", X"f81a", X"f68e", X"029b", X"040d",
                                                        X"fb55", X"0080", X"f680", X"0c4d", X"0208", X"11ce", X"e11f", X"0f0d", X"0878", X"04ba", X"0284", X"d961", X"0145", X"06ec",
                                                        X"14c0", X"f8d0", X"1d22", X"fcd4", X"db88", X"ea81", X"f898", X"f774", X"f753", X"1e35", X"fd19", X"024c", X"1345", X"f21d",
                                                        X"1306", X"fa5b", X"1118", X"fd52", X"ff2e", X"f9b4", X"059c", X"fe11", X"1ade", X"0d18", X"de5b", X"0f80", X"06aa", X"111a",
                                                        X"076a", X"0326", X"1031", X"f42a", X"ebb4", X"eec8", X"f23e", X"09f7", X"e0bd", X"0906", X"0b52", X"19ef", X"ddef", X"f563",
                                                        X"eaa8", X"1da4", X"003f", X"f39c", X"ede7", X"ed32", X"12c4", X"0698", X"f24b", X"ef33", X"1798", X"f9c7", X"0ed1", X"f368",
                                                        X"e8f3", X"068b", X"ed42", X"0a9d", X"11c3", X"ffea", X"f0b5", X"04a0", X"fd16", X"f368", X"fa71", X"0f55", X"f1ed", X"0629",
                                                        X"02b7", X"fd52", X"df02", X"030e", X"01da", X"2312", X"f7b5", X"f790", X"fdbb", X"e7e3", X"0dd1", X"eeba", X"03ac", X"0488",
                                                        X"084d", X"ec60", X"1346", X"ecaa", X"f878", X"0734", X"f1e8", X"1bc3", X"003d", X"f749", X"117b", X"e7e4", X"09ff", X"0f2e",
                                                        X"10f9", X"0fa0", X"fbd2", X"fc3e", X"1ea5", X"013e", X"d68e", X"1d5e", X"f4f5", X"0a9d", X"1075", X"10ca", X"f732", X"1630",
                                                        X"fd73", X"fd25", X"02d8", X"0277", X"e06d", X"f086", X"f168", X"02e0", X"00ec", X"ff91", X"0a5c", X"e1cd", X"1b87", X"e34f",
                                                        X"f00e", X"023b", X"f7ea", X"0d7d", X"0120", X"e181", X"e219", X"ed6a", X"fca6", X"0e49", X"df24", X"153c", X"fa18", X"052a",
                                                        X"f216", X"020b", X"145d", X"00fd", X"100d", X"1397", X"f8a4", X"eac6", X"f776", X"ff77", X"0590", X"f6f6", X"f62f", X"1193",
                                                        X"ec82", X"16ee", X"15c9", X"df1f", X"f034", X"f4fd", X"012a", X"004d", X"16b0", X"feba", X"ef9d", X"11bb", X"046e", X"0365",
                                                        X"fa28", X"0996", X"1591", X"0c78", X"fdd6", X"0362", X"1027", X"0d98", X"f7dd", X"03f2", X"fc25", X"1979", X"12e8", X"ea8d",
                                                        X"02ba", X"eae7", X"c7ee", X"10e0", X"fcdb", X"e9a0", X"ff1c", X"03ed", X"f742", X"e8e4", X"0442", X"fc06", X"0409", X"f23c",
                                                        X"e9a6", X"0c7f", X"fedf", X"08ef", X"e485", X"190c", X"17e5", X"f34f", X"120f", X"f8c5", X"f0e5", X"085a", X"0ca4", X"fc65",
                                                        X"fb3b", X"0fe8", X"e6d8", X"f8e5", X"f767", X"030c", X"f8c7", X"0c11", X"f011", X"fc5f", X"1778", X"0ec7", X"0000", X"01ef",
                                                        X"f8d0", X"0c4f", X"eef6", X"e7c4", X"2838", X"f947", X"0d92", X"eea7", X"fd71", X"01d3", X"11ed", X"281e", X"f373", X"0533",
                                                        X"f899", X"fb13", X"03c9", X"fa08", X"0cfc", X"03bd", X"ec05", X"0b01", X"199f", X"fc98", X"f3f6", X"148e", X"02be", X"1375",
                                                        X"f159", X"f648", X"0272", X"fba5", X"ff09", X"fbf5", X"ec50", X"0586", X"1227", X"ff0b", X"072a", X"fc8e", X"e7ba", X"048f",
                                                        X"fa9f", X"2acd", X"e8bc", X"0885", X"0cdf", X"1320", X"fff4", X"0b22", X"e524", X"ecf5", X"f77e", X"011a", X"f751", X"064c",
                                                        X"cd24", X"f9c6", X"26ae", X"1680", X"e7cb", X"f90b", X"1056", X"07b2", X"f0be", X"0006", X"088e", X"f6e7", X"f0f1", X"f8d9",
                                                        X"0543", X"0969", X"dac9", X"fd1d", X"0e1a", X"0208", X"0e39", X"01d9", X"0f5f", X"fd89", X"07ec", X"1860", X"f293", X"19d7",
                                                        X"033e", X"f362", X"ff8d", X"fe84", X"e667", X"f7b4", X"047a", X"ff86", X"e610", X"f2f6", X"e513", X"fb63", X"00c3", X"fb73",
                                                        X"fd7f", X"f9e2", X"f253", X"f7e7", X"25b3", X"f9f4", X"dd63", X"0cf4", X"f91a", X"19b7", X"dbe4", X"fd30", X"ff4f", X"0420",
                                                        X"0b43", X"2135", X"0356", X"f984", X"16aa", X"f9ba", X"ff0a", X"1535", X"edca", X"ec9f", X"1bb1", X"1339", X"f2b5", X"fae2",
                                                        X"02f2", X"fc9b", X"fa42", X"128f", X"f82b", X"1f99", X"1abd", X"0d2f", X"e3eb", X"18dd", X"ed82", X"fcbe", X"fc0f", X"fea0",
                                                        X"fabc", X"f7e4", X"01e4", X"fb79", X"faab", X"ed6d", X"01ca", X"fe2d", X"03c2", X"02cf", X"fa6b", X"dd9d", X"e2f8", X"234f",
                                                        X"e947", X"fe19", X"07a0", X"fe4e", X"f1a6", X"0a72", X"fceb", X"fe28", X"f941", X"18fc", X"07a5", X"fdc1", X"108f", X"ea65",
                                                        X"fd52", X"fcc7", X"fc8e", X"e76b", X"f9c0", X"176e", X"f9b3", X"05a3", X"ede7", X"f40c", X"105f", X"f0d2", X"0dcb", X"e66f",
                                                        X"f056", X"059f", X"0575", X"076e", X"0a03", X"1d44", X"f26b", X"e152", X"edbe", X"19f3", X"fee7", X"ec58", X"0f6d", X"1399",
                                                        X"04e5", X"02e0", X"0a68", X"0071", X"f5cd", X"ec90", X"dc89", X"e9d4", X"e712", X"05e0", X"0827", X"ea3f", X"fede", X"09df",
                                                        X"0955", X"e82e", X"1c36", X"0665", X"0f10", X"f10c", X"11e9", X"1b11", X"0ba1", X"e418", X"0584", X"08cd", X"f233", X"fac7",
                                                        X"0954", X"f4b2", X"fac1", X"e0f6", X"ecaa", X"fd52", X"0cad", X"006d", X"1947", X"1121", X"f417", X"1998", X"efce", X"e8e6",
                                                        X"01f1", X"077b", X"fc37", X"0cb9", X"0695", X"10b6", X"1b1d", X"0b7f", X"049f", X"0280", X"0aad", X"0623", X"0523", X"0c5b",
                                                        X"f939", X"fa83", X"0e58", X"f25d", X"07ef", X"00f0", X"f867", X"0c79", X"f1ed", X"0ae8", X"f30c", X"ff53", X"2024", X"e588",
                                                        X"1190", X"f94c", X"f540", X"fb14", X"e059", X"1d67", X"f776", X"e983", X"02f1", X"0a3f", X"1126", X"03e6", X"0789", X"f6dc",
                                                        X"1d1c", X"1e14", X"0b98", X"e10f", X"e686", X"f927", X"e43e", X"0839", X"f28d", X"e063", X"fc49", X"0af2", X"188a", X"f93a",
                                                        X"0441", X"f3c2", X"09aa", X"ec74", X"f5ad", X"dc29", X"1769", X"f86b", X"0191", X"f4d0", X"fa96", X"f395", X"195d", X"f6c4",
                                                        X"ec64", X"fecd", X"02ce", X"fede", X"1177", X"0137", X"0e27", X"f615", X"29fc", X"f79f", X"04f5", X"0707", X"0984", X"fbbc",
                                                        X"efc7", X"f520", X"c3e1", X"ea9b", X"0fd4", X"ff35", X"2ba4", X"11ca", X"0d23", X"fe96", X"021a", X"03bb", X"f0ed", X"1544",
                                                        X"09c7", X"e667", X"0525", X"e4f2", X"0cae", X"f1e9", X"03e2", X"06e1", X"17b2", X"1036", X"fd02", X"03d9", X"ecb8", X"05a9",
                                                        X"038f", X"f690", X"09c8", X"f454", X"03d5", X"e350", X"020b", X"0c69", X"f9ff", X"f977", X"1db2", X"fd4f", X"040e", X"f77c",
                                                        X"f573", X"0669", X"ebee", X"eb22", X"041c", X"efec", X"0141", X"1864", X"0ded", X"e234", X"eda9", X"09c9", X"191d", X"32fc",
                                                        X"fbc9", X"e8d8", X"0352", X"fc6b", X"ff1c", X"f883", X"f202", X"f104", X"0353", X"d40a", X"ef39", X"f8ca", X"fcb9", X"07f3",
                                                        X"fcca", X"2d4e", X"115c", X"063e", X"050e", X"084a", X"f10a", X"fecf", X"fb7e", X"dbe8", X"f5cb", X"150f", X"ee3a", X"0afe",
                                                        X"f249", X"eda5", X"3c6b", X"ed29", X"e4d1", X"e4c5", X"2918", X"034f", X"ed37", X"116e", X"ffe9", X"e913", X"fbb0", X"0482",
                                                        X"fe38", X"eac4", X"e071", X"fffa", X"211f", X"f9bf", X"0b7f", X"f32c", X"0095", X"000f", X"ea71", X"ff72", X"faa4", X"e01a",
                                                        X"1398", X"f3b7", X"f686", X"fb3e", X"2bd4", X"0cbd", X"0156", X"297d", X"e4af", X"01f5", X"0dba", X"0162", X"0ce6", X"0d07",
                                                        X"11da", X"01af", X"098d", X"02c3", X"032e", X"f6ce", X"fa58", X"0166", X"2c3d", X"2c26", X"0751", X"0d76", X"049a", X"f653",
                                                        X"004c", X"092b", X"0ecb", X"eba7");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"eba7";
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

