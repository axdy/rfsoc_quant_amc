-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block456.vhd
-- Created: 2024-11-04 16:44:22
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block456
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage99/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block456 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block456;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block456 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"ff9d", X"ff99", X"f6cc", X"f6b0", X"ff8e", X"03f5",
                                                        X"07be", X"0615", X"fedd", X"0921", X"119b", X"fd78", X"fdf8", X"01fe", X"0a61", X"097e", X"0198", X"070e", X"fc9a", X"f9d9",
                                                        X"fcd0", X"0393", X"07e4", X"03ea", X"fd2e", X"059e", X"0b5c", X"fb6b", X"fb7c", X"fe31", X"0442", X"0214", X"04aa", X"10fa",
                                                        X"fe1a", X"0044", X"0109", X"0127", X"082b", X"003a", X"fb86", X"fef7", X"0a6f", X"f9a0", X"feff", X"fa73", X"0044", X"030e",
                                                        X"03b6", X"02ea", X"f826", X"ffa5", X"ff56", X"feca", X"081c", X"fe14", X"03f8", X"0160", X"06bf", X"fcf4", X"fc08", X"03a2",
                                                        X"0403", X"0602", X"047e", X"025c", X"f590", X"f3e1", X"0008", X"00ea", X"03bf", X"fc7c", X"0140", X"040b", X"07cd", X"fe58",
                                                        X"f79c", X"053e", X"07fa", X"0470", X"0796", X"049e", X"fde3", X"fa0c", X"030d", X"049f", X"076f", X"fe79", X"0184", X"051d",
                                                        X"0112", X"040c", X"fdef", X"fe5d", X"0005", X"02e4", X"00a1", X"0141", X"fa15", X"f8f3", X"ff6a", X"ff08", X"06f4", X"fcb9",
                                                        X"ff78", X"04ba", X"0421", X"f96a", X"0272", X"f55e", X"0697", X"0236", X"0713", X"01c3", X"fc82", X"ffaa", X"0014", X"02d3",
                                                        X"077e", X"0225", X"0266", X"0250", X"02aa", X"0047", X"fb3e", X"011a", X"fe64", X"ffc7", X"064a", X"02c8", X"fce5", X"ff53",
                                                        X"0145", X"0439", X"0679", X"022c", X"0338", X"fd80", X"007c", X"f821", X"020d", X"09c1", X"00a6", X"06f6", X"0203", X"fc6b",
                                                        X"fe19", X"04ed", X"02be", X"03d2", X"009e", X"fe28", X"fc9f", X"0064", X"ff7b", X"fac8", X"fa2d", X"feb3", X"0276", X"05dd",
                                                        X"04dc", X"04bf", X"f777", X"fcba", X"0018", X"ff39", X"fe69", X"0170", X"ffd2", X"0158", X"0342", X"f8b8", X"fac4", X"018e",
                                                        X"017f", X"0634", X"02c6", X"041c", X"fc37", X"000c", X"083d", X"01c3", X"06a9", X"051e", X"fb9b", X"071a", X"0469", X"f6bd",
                                                        X"fcfd", X"04b2", X"0064", X"0148", X"ffff", X"06b1", X"feaf", X"f7f8", X"0162", X"005e", X"0920", X"050d", X"fe3b", X"0243",
                                                        X"0550", X"ff98", X"fdec", X"05b8", X"0094", X"0212", X"fee4", X"0818", X"f79c", X"f91c", X"ffec", X"ff8e", X"0052", X"029e",
                                                        X"001c", X"048a", X"07ab", X"ff22", X"0261", X"0278", X"0224", X"0726", X"fd18", X"07b4", X"ffb4", X"fe19", X"0020", X"00e9",
                                                        X"0e61", X"011e", X"fcd6", X"0711", X"0736", X"f85b", X"06fc", X"fdf5", X"01a2", X"083c", X"025a", X"048c", X"f933", X"02bb",
                                                        X"fc74", X"fe1d", X"0e17", X"0207", X"029a", X"055b", X"077f", X"f95c", X"ff7c", X"016b", X"0235", X"06b8", X"fdf3", X"02f6",
                                                        X"fcb7", X"fbf2", X"fd09", X"0276", X"11dd", X"fd56", X"0098", X"0238", X"09ba", X"f3a4", X"fb5e", X"fb5f", X"0638", X"0778",
                                                        X"0110", X"0740", X"fc51", X"04b7", X"ff0b", X"018b", X"0965", X"00cf", X"fe71", X"fe58", X"0562", X"f5be", X"fd4c", X"fd82",
                                                        X"0029", X"0434", X"0730", X"02ce", X"f813", X"ff00", X"000d", X"016d", X"09c8", X"01ee", X"fcb0", X"0038", X"05d7", X"fa1e",
                                                        X"06bf", X"fd2f", X"02c0", X"04c0", X"0449", X"fd21", X"f72c", X"015d", X"fe4f", X"03a9", X"ff80", X"fa5c", X"0116", X"02f8",
                                                        X"068a", X"fbc7", X"fec8", X"f86b", X"01f6", X"039d", X"06ce", X"ffb3", X"f98c", X"0481", X"ff91", X"feb3", X"0931", X"fe75",
                                                        X"ff4f", X"037d", X"0785", X"fb0f", X"fb70", X"044e", X"0382", X"011a", X"033c", X"06a0", X"fcaf", X"0072", X"00eb", X"0373",
                                                        X"0688", X"ff97", X"fcfd", X"01b7", X"0453", X"f9b9", X"ffd8", X"fc4f", X"0193", X"0059", X"0316", X"015f", X"f788", X"f874",
                                                        X"fe8e", X"01e5", X"0ac6", X"0059", X"02ea", X"02e1", X"05ba", X"0304", X"ff8d", X"fba1", X"059c", X"046d", X"0276", X"0192",
                                                        X"fea3", X"fbda", X"03f3", X"00a5", X"0133", X"011f", X"ff05", X"0a28", X"0272", X"fe15", X"0422", X"febf", X"fd8a", X"05b1",
                                                        X"03bf", X"04cc", X"fa10", X"f6d4", X"035d", X"041d", X"09d7", X"00f6", X"00cc", X"0b0f", X"000c", X"fdc5", X"07c8", X"fdeb",
                                                        X"0087", X"0b1b", X"010f", X"07cf", X"fbb2", X"f9a1", X"0309", X"fdf4", X"0ad5", X"0595", X"fdf9", X"0663", X"fd95", X"fb8b",
                                                        X"fd31", X"009d", X"ffce", X"0a8a", X"fd8c", X"01a7", X"ff63", X"07b2", X"084a", X"fe5c", X"0a7f", X"0200", X"fa5d", X"034c",
                                                        X"0580", X"f972", X"fe50", X"0696", X"016d", X"0737", X"0105", X"0149", X"feb1", X"0273", X"0421", X"01b7", X"0bd0", X"04fd",
                                                        X"f57d", X"ff62", X"05ba", X"fa96", X"0122", X"0359", X"033a", X"0335", X"fe7d", X"0843", X"f775", X"fce6", X"0076", X"03e1",
                                                        X"07db", X"04b2", X"fb38", X"077a", X"0323", X"f60b", X"0363", X"0040", X"005c", X"03ca", X"ff83", X"0251", X"f98f", X"0234",
                                                        X"faba", X"027f", X"09f9", X"fbf3", X"07ad", X"0102", X"051b", X"f80e", X"038e", X"0299", X"059d", X"0417", X"ff24", X"076b",
                                                        X"f514", X"03b9", X"f886", X"036f", X"0b33", X"01dc", X"fd71", X"07f1", X"036e", X"f9e0", X"01d4", X"f8b3", X"0401", X"07e8",
                                                        X"fdc1", X"0597", X"fa51", X"fb3a", X"fe3f", X"01c5", X"0afb", X"0526", X"fd02", X"093c", X"040c", X"fa38", X"01ed", X"f7fa",
                                                        X"06c2", X"0317", X"ffa5", X"0608", X"fde4", X"0542", X"0128", X"01b2", X"093e", X"023b", X"fe04", X"0593", X"09a0", X"f810",
                                                        X"f867", X"02c4", X"ffd2", X"013b", X"030f", X"07a0", X"f94b", X"fe24", X"fe47", X"0153", X"0b77", X"0649", X"06a8", X"087f",
                                                        X"0acf", X"fd7f", X"f9ae", X"fefe", X"0592", X"01b6", X"0639", X"055e", X"fd1f", X"fd3a", X"0192", X"ff61", X"0a0a", X"0050",
                                                        X"02f1", X"03d6", X"06d2", X"f678", X"fbb5", X"fb34", X"051e", X"01ff", X"0452", X"0641", X"fe42", X"ff8c", X"0724", X"0261",
                                                        X"0ab4", X"0273", X"004c", X"05f4", X"0793", X"f4f1", X"fc83", X"fc93", X"ff9f", X"0275", X"0887", X"0803", X"faab", X"fc1b",
                                                        X"046e", X"0403", X"090c", X"ff73", X"fef2", X"0435", X"0122", X"fe9a", X"fb16", X"008c", X"ff35", X"fc13", X"fda8", X"fbac",
                                                        X"fd26", X"f326", X"ffe3", X"020c", X"0b5e", X"feed", X"012c", X"0159", X"0492", X"0182", X"f9d6", X"f5fb", X"05f8", X"ff97",
                                                        X"07cf", X"ffe6", X"faa3", X"f97b", X"fa44", X"03ca", X"0b96", X"fd6f", X"fb93", X"02fb", X"fe65", X"ff1b", X"02e5", X"f5b4",
                                                        X"ff61", X"0064", X"09ee", X"00e2", X"f783", X"f8b8", X"f815", X"0426", X"06bb", X"fd35", X"ff70", X"0000", X"ffc3", X"0165",
                                                        X"fd5b", X"f73a", X"0382", X"0362", X"0184", X"0236", X"fb6c", X"f93e", X"011e", X"02b2", X"0965", X"fb91", X"fbff", X"fe38",
                                                        X"0065", X"00ab", X"ff22", X"fc0a", X"002f", X"07ab", X"fe93", X"02e5", X"fa36", X"0311", X"01e3", X"0363", X"00de", X"fb01",
                                                        X"fcf0", X"fb9e", X"02fe", X"02da", X"fc7c", X"fd0b", X"015c", X"0547", X"00e6", X"0205", X"fb54", X"0345", X"fe91", X"0103",
                                                        X"0451", X"fddd", X"0438", X"ffa5", X"0203", X"f901", X"fa99", X"0102", X"01fd", X"08dc", X"feb4", X"fde5", X"01a0", X"fd80",
                                                        X"00c7", X"fc34", X"0396", X"007b", X"fd17", X"f9ca", X"fcf0", X"f9cd", X"f939", X"01b3", X"fa8b", X"058b", X"f967", X"01b0",
                                                        X"fa9a", X"ffb4", X"0035", X"fe15", X"0751", X"023c", X"fb5b", X"f9b0", X"02c4", X"f7de", X"f7a5", X"ffbf", X"fce2", X"02aa",
                                                        X"fc8a", X"018a", X"f627", X"f339", X"ffb4", X"fb04", X"0405", X"fe93", X"fef3", X"fe7a", X"035e", X"f93c", X"f7bb", X"fdca",
                                                        X"01a2", X"015b", X"fd09", X"031c", X"f7df", X"fac0", X"f7f5", X"feba", X"faff", X"053f", X"f8e3", X"fdd0", X"04bb", X"f701",
                                                        X"ff49", X"fd73", X"fd08", X"ff2d", X"fe9a", X"018b", X"fa67", X"f9f2", X"ffa8", X"fe06", X"0978", X"03fb", X"fd2a", X"fdcb",
                                                        X"0106", X"f461", X"fb66", X"ff48", X"ff74", X"00fb", X"00df", X"047b", X"fa84", X"fc14", X"f7a3", X"04ae", X"049a", X"013c",
                                                        X"fa4b", X"fcac", X"fdcd", X"f7a4", X"f584", X"f38d", X"0598", X"ff9d", X"026b", X"080b", X"fa7e", X"fe97", X"fabf", X"fd7f",
                                                        X"0a3a", X"04a7", X"fe03", X"ff95", X"0237", X"f40d", X"fe42", X"032a", X"00d5", X"01f5", X"0218", X"083b", X"fc13", X"fc08",
                                                        X"0156", X"fc0a", X"07d1", X"036c", X"ff17", X"fcc0", X"ff39", X"f775", X"fb02", X"fe7d", X"0050", X"fff0", X"06cc", X"0130",
                                                        X"fc8b", X"f2bc", X"fe6b", X"0190", X"0696", X"0040", X"fef5", X"fb1a", X"0031", X"fd9d", X"f5f5", X"005a", X"fe05", X"ffdf",
                                                        X"0178", X"0374", X"fa53", X"f8a8", X"fd13", X"02c2", X"0ade", X"0190", X"fcc4", X"fe9e", X"0481", X"ff5c", X"f64e", X"fa1d",
                                                        X"0136", X"fddc", X"06e6", X"015e", X"f973", X"fb4f", X"fc0c", X"0111", X"02df", X"006c", X"0199", X"fd10", X"0246", X"f612",
                                                        X"f91d", X"0467", X"02e7", X"fe2c", X"01e3", X"0039", X"f3c8", X"fcf7", X"facd", X"0165", X"06cc", X"0458", X"fde8", X"0047",
                                                        X"0181", X"f77c", X"fed6", X"0283", X"0192", X"fcf9", X"04ca", X"fbae", X"f71a", X"f9a0", X"00d7", X"0192", X"0344", X"0033",
                                                        X"0146", X"ff0d", X"fd21", X"fbba", X"03d1", X"fb72", X"ffaf", X"00aa", X"00c4", X"fda6", X"fbd3", X"fa03", X"fd5a", X"fda2",
                                                        X"091b", X"fbc4", X"fdff", X"00bc", X"002a", X"f902", X"01bb", X"fc34", X"fb2e", X"040d", X"037a", X"fbb3", X"fd9f", X"f891",
                                                        X"fece", X"00f8", X"08d2", X"fce8", X"01bd", X"fff5", X"0061", X"f799", X"ff83", X"031a", X"01f4", X"04f9", X"0032", X"04bc",
                                                        X"f879", X"f7fc", X"02cb", X"fbfa", X"fa83", X"ff0b", X"fbf9", X"febd", X"ff78", X"ffa3", X"f9f3", X"01de", X"f806", X"05a8",
                                                        X"003b", X"0707", X"fa99", X"0003", X"fc62", X"fead", X"0355", X"feaa", X"0059", X"038b", X"0012", X"ff37", X"fa6e", X"0444",
                                                        X"0206", X"016f", X"fdc1", X"074b", X"fbbe", X"ffae", X"fef4", X"fe1c", X"fd7d", X"041d", X"0436", X"02bc", X"08b5", X"feb4",
                                                        X"fc30", X"045b", X"0253", X"02e4", X"011b", X"0a4e", X"f9b4", X"038a", X"fb5d", X"01d3", X"0a00", X"07d9", X"03c2", X"008e",
                                                        X"01fa", X"f3c1", X"f8f1", X"ffb2", X"fe36", X"fdfc", X"033a", X"0a1e", X"f966", X"ff6e", X"fd33", X"ff20", X"04fa", X"04bf",
                                                        X"fd67", X"016c", X"ffd5", X"f827", X"fe66", X"fc19", X"04f5", X"0051", X"008a", X"030b", X"f888", X"feee", X"f9e8", X"01e7",
                                                        X"0984", X"04e0", X"ffe0", X"05da", X"062a", X"fafe", X"001f", X"ffae", X"0abb", X"ff86", X"ff27", X"0884", X"f7c5", X"ff27",
                                                        X"fa3a", X"023b", X"0f62", X"05fa", X"fc4a", X"0787", X"fd45", X"fbc8", X"0095", X"fe13", X"0528", X"0286", X"fe3f", X"0531",
                                                        X"f68d", X"ff69", X"f8e5", X"ff59", X"0a0e", X"08a6", X"ff73", X"0213", X"03a9", X"f5e9", X"0351", X"0203", X"01a7", X"048c",
                                                        X"febe", X"01a3", X"f2ab", X"fcad", X"01f3", X"ffc8", X"02be", X"0390", X"0224", X"01f2", X"06d2", X"0012", X"0140", X"ff18",
                                                        X"01f0", X"04ad", X"00f9", X"04d9", X"f2ac", X"fb70", X"fd0c", X"fe19", X"0515", X"ff2b", X"0099", X"0430", X"0121", X"fb23",
                                                        X"03f7", X"003c", X"ff80", X"017c", X"022e", X"0200", X"f702", X"fb89", X"fef2", X"02fc", X"04f5", X"0583", X"0346", X"024f",
                                                        X"feae", X"f690", X"ff44", X"0336", X"0057", X"063f", X"07e2", X"03e3", X"fa0d", X"fbaf", X"fe03", X"fec5", X"057b", X"fdbe",
                                                        X"fc07", X"026e", X"00fa", X"f58a", X"fcfb", X"fd77", X"0431", X"02f0", X"ffe4", X"0440", X"fb1e", X"f9e1", X"fee8", X"0151",
                                                        X"0d20", X"ffa9", X"0183", X"fcf6", X"023e", X"f34e", X"fbb2", X"fb3b", X"059d", X"01a5", X"0337", X"05b5", X"fcc8", X"0054",
                                                        X"fa81", X"0140", X"1178", X"fa84", X"0021", X"026f", X"fe85", X"f926", X"ff62", X"fd2c", X"04f2", X"05b1", X"0612", X"0005",
                                                        X"f7be", X"f896", X"fd50", X"01bc", X"118a", X"fdcb", X"ff60", X"0101", X"ffa4", X"fba0", X"074d", X"009f", X"ff39", X"ff09",
                                                        X"01b6", X"0269", X"f95c", X"f5ce", X"0116", X"ff07", X"0dad", X"02ba", X"0176", X"ff2e", X"0884", X"f425", X"fc2d", X"0207",
                                                        X"ffc0", X"02d4", X"033e", X"ff5e", X"fa07", X"f7f0", X"ff7d", X"fb05", X"0982", X"fb5d", X"01a6", X"fe63", X"0548", X"fc75",
                                                        X"f612", X"002a", X"ff90", X"ff6e", X"079c", X"fef2", X"00bf", X"00cc", X"f95a", X"005c", X"0501", X"011a", X"fa68", X"ffbe",
                                                        X"0986", X"f963", X"f7c1", X"08a5", X"fb36", X"010a", X"0422", X"fec2", X"fbb7", X"fcd9", X"fe1d", X"0199", X"077f", X"fffd",
                                                        X"faad", X"fce3", X"0586", X"f04e", X"fa9f", X"0017", X"009d", X"fca6", X"04d8", X"02ae", X"fc7d", X"fabc", X"fbcc", X"0177",
                                                        X"fc92", X"fce0", X"fb25", X"0167", X"0197", X"fd14", X"fa21", X"fb4f", X"036c", X"fb89", X"feb3", X"fe41", X"fbbd", X"f855",
                                                        X"fe3a", X"0057", X"023e", X"fed5", X"00b9", X"0149", X"01f8", X"f818", X"0092", X"fa56", X"04b7", X"fdef", X"fe16", X"02d9",
                                                        X"fbb4", X"f5f1", X"fba9", X"0250", X"017a", X"feb2", X"040e", X"f9e1", X"0136", X"f9ac", X"04cf", X"f83f", X"ff7e", X"0010",
                                                        X"0082", X"07ff", X"fb4d", X"f688", X"fd6a", X"fea0", X"06f9", X"fed1", X"fe00", X"feb4", X"05e8", X"fbe8", X"0485", X"fce4",
                                                        X"fc00", X"017d", X"00ed", X"0599", X"001b", X"f412", X"036b", X"fd12", X"0ddb", X"026b", X"001e", X"fea0", X"0488", X"fdf6",
                                                        X"f7d4", X"fa52", X"f9ec", X"0038", X"fd5d", X"0008", X"f69f", X"f9d9", X"032b", X"fa28", X"fed8", X"fd50", X"feaa", X"030a",
                                                        X"0234", X"fb15", X"f94a", X"fc4c", X"0034", X"02d2", X"02cb", X"041d", X"fa91", X"fb0f", X"0247", X"fe57", X"09f4", X"00d9",
                                                        X"fef9", X"01e2", X"01ee", X"f6d0", X"fadf", X"0295", X"fc38", X"0390", X"00fb", X"08e3", X"f928", X"fa53", X"0015", X"0166",
                                                        X"02ac", X"023c", X"fee0", X"0097", X"05c7", X"f5f9", X"f7d3", X"fbc0", X"ff7e", X"02a5", X"fe7d", X"ffe8", X"007d", X"f99c",
                                                        X"fcf0", X"ff02", X"00c6", X"018a", X"ff99", X"ff15", X"026a", X"f9ad", X"fcf5", X"f87f", X"011b", X"043e", X"0356", X"01b1",
                                                        X"fc48", X"03bf", X"fdb7", X"0266", X"0096", X"fdca", X"ff22", X"03eb", X"001e", X"fa16", X"00d3", X"f8be", X"03c3", X"051b",
                                                        X"03b4", X"049b", X"f816", X"0084", X"fd09", X"045d", X"070a", X"fdcb", X"0269", X"026c", X"0255", X"f693", X"fd76", X"fa6a",
                                                        X"006d", X"04f2", X"01cc", X"011d", X"fb28", X"f924", X"ffc4", X"02bb", X"0ec2", X"0142", X"01c9", X"0459", X"fa08", X"fb64",
                                                        X"fc6b", X"051e", X"ffce", X"0290", X"0238", X"04e1", X"ff76", X"fe42", X"02f4", X"00a0", X"0beb", X"0302", X"fdb4", X"030e",
                                                        X"00e7", X"f484", X"0005", X"01b1", X"02c7", X"02e1", X"0885", X"0575", X"f6f5", X"f2db", X"fe60", X"fed4", X"0865", X"0505",
                                                        X"fe76", X"034d", X"ffdd", X"fbb2", X"fcc7", X"ffa8", X"01f3", X"0247", X"0563", X"04db", X"fec0", X"f908", X"0593", X"007c",
                                                        X"0569", X"025f", X"fe47", X"ff96", X"fff4", X"f64b", X"0051", X"036a", X"017d", X"011d", X"049d", X"fef7", X"fcdd", X"ff5c",
                                                        X"02ad", X"0300", X"07cc", X"0016", X"03f9", X"fbc0", X"059e", X"f917", X"fcae", X"01d6", X"021a", X"05bb", X"0269", X"ff59",
                                                        X"ffe9", X"fc32", X"ff48", X"05c0", X"0c75", X"009d", X"0221", X"0001", X"0698", X"fa9a", X"00f9", X"fe39", X"0464", X"0395",
                                                        X"ff91", X"06c8", X"fb6b", X"02d5", X"fdb4", X"00c7", X"0820", X"07a3", X"f8f8", X"04ea", X"035f", X"0084", X"0378", X"fcc1",
                                                        X"03af", X"0245", X"ff1a", X"0749", X"fd3d", X"ff20", X"fe31", X"0376", X"0250", X"0582", X"fece", X"0183", X"083a", X"f922",
                                                        X"026c", X"fbf2", X"fffe", X"fe3b", X"fdcd", X"0046", X"febb", X"f858", X"fcb5", X"00e9", X"07ce", X"0463", X"f719", X"0612",
                                                        X"0848", X"fbd6", X"0172", X"00c4", X"0123", X"0060", X"0133", X"0063", X"f73e", X"fdfa", X"0283", X"01f0", X"fe2d", X"0016",
                                                        X"0304", X"03ab", X"0589", X"f82f", X"f60a", X"06fa", X"00bb", X"0627", X"0068", X"03f6", X"f72e", X"fc32", X"02b8", X"02a4",
                                                        X"09a0", X"fdd9", X"0041", X"0286", X"0a41", X"fac8", X"fdac", X"ff8f", X"01d0", X"0294", X"0036", X"01f7", X"fe2c", X"0274",
                                                        X"fb6e", X"ff4e", X"082a", X"00e7", X"05c1", X"00d2", X"04cc", X"fdb8", X"fdec", X"fb41", X"02ba", X"0410", X"0738", X"050d",
                                                        X"f7cf", X"fbff", X"fe07", X"00e5", X"0922", X"fc6b", X"fb6a", X"03d6", X"fec4", X"f762", X"fa22", X"f9e2", X"0135", X"02d7",
                                                        X"0317", X"fe8d", X"f801", X"03aa", X"fd50", X"0327", X"1410", X"ff70", X"020d", X"0420", X"ffe9", X"f544", X"fe5d", X"00b6",
                                                        X"0075", X"0510", X"ffbd", X"febd", X"faad", X"fa0f", X"fe04", X"ff69", X"0969", X"fb34", X"0712", X"0227", X"fd50", X"f8f1",
                                                        X"fd23", X"fcc7", X"067a", X"04fd", X"0318", X"0960", X"f554", X"ffa0", X"ff48", X"0042", X"0d1f", X"0243", X"0040", X"0776",
                                                        X"001e", X"fc7e", X"06b6", X"f98a", X"0530", X"048c", X"024e", X"04fd", X"fcf7", X"f7bf", X"01b4", X"0068", X"0483", X"fcae",
                                                        X"0419", X"0616", X"01bc", X"fbc9", X"f83e", X"fb8b", X"067f", X"085c", X"001e", X"0011", X"ffb1", X"0307", X"022f", X"0289",
                                                        X"111e", X"fd34", X"0240", X"0400", X"0588", X"fed5", X"f9c6", X"048c", X"0118", X"0474", X"041d", X"06a4", X"f91f", X"f8af",
                                                        X"051e", X"ff1c", X"0950", X"038a", X"fa6f", X"ffa5", X"044d", X"fed6", X"f613", X"0b50", X"ffb5", X"052b", X"05ce", X"0356",
                                                        X"fb40", X"fbe6", X"ffa2", X"fe5b", X"0b7c", X"02b7", X"fb1b", X"0235", X"fe53", X"fe68", X"f88f", X"0697", X"02e2", X"07ed",
                                                        X"05dd", X"04ff", X"f856", X"04fd", X"019d", X"044d", X"0317", X"054e", X"fff1", X"0657", X"fff8", X"f60b", X"fd8f", X"0971",
                                                        X"051b", X"0130", X"0285", X"043d", X"fbd0", X"fa53", X"ff0f", X"05c0", X"093e", X"030d", X"00e0", X"01fe", X"0241", X"f268",
                                                        X"ff75", X"009a", X"005e", X"01ba", X"02c0", X"0620", X"f7b5", X"fa2f", X"fc48", X"0355", X"0467", X"fcb6", X"fe34", X"0326",
                                                        X"015b", X"f276", X"fd84", X"03d8", X"0328", X"02b4", X"01a1", X"0804", X"fc32", X"fcf3", X"fc17", X"01cb", X"079c", X"0401",
                                                        X"0155", X"02d7", X"0741", X"f11e", X"00bc", X"f33a", X"0107", X"022d", X"f9f9", X"0308", X"fb4d", X"ff42", X"fdce", X"ffda",
                                                        X"0818", X"037e", X"fa24", X"02ba", X"03da", X"fab6", X"fe4b", X"fbcc", X"036b", X"0101", X"fe44", X"055b", X"fd36", X"f89a",
                                                        X"0309", X"feb8", X"0fd9", X"011b", X"02b1", X"fd5d", X"09e0", X"fee5", X"f937", X"fc46", X"ff8a", X"fff5", X"0340", X"07bc",
                                                        X"fb5e", X"fc29", X"04c3", X"00f1", X"0a81", X"0274", X"fa63", X"fc5a", X"046f", X"fa71", X"fcc7", X"f9d2", X"f9f9", X"01bb",
                                                        X"ffce", X"02ef", X"f4d4", X"f7f1", X"03d7", X"02f3", X"0895", X"012b", X"0210", X"042d", X"0123", X"fa3d", X"faf6", X"fef6",
                                                        X"fe8a", X"0195", X"060e", X"01cd", X"fe11", X"f4c2", X"0100", X"fe1a", X"130b", X"0306", X"0924", X"fdf9", X"04d4", X"f62d",
                                                        X"fce3", X"001f", X"05cd", X"0308", X"04d6", X"058c", X"fa98", X"fc3f", X"012d", X"fd40", X"02fe", X"0160", X"01e3", X"feba",
                                                        X"0491", X"fd97", X"0282", X"02ec", X"fa78", X"02ca", X"0550", X"065e", X"f9b5", X"fd7d", X"f96a", X"01ca", X"08fb", X"fabc",
                                                        X"ffc1", X"0446", X"fff5", X"fd93", X"fdc0", X"0187", X"f9a8", X"03c1", X"02f3", X"fef6", X"fdb0", X"f996", X"fc9c", X"023c",
                                                        X"0da4", X"f9ec", X"00fb", X"0332", X"02a1", X"f85f", X"ffb1", X"f8b2", X"0299", X"095b", X"fec4", X"fb62", X"ff28", X"f306",
                                                        X"ffb1", X"0118", X"14f0", X"fed4", X"fcd9", X"06b5", X"021d", X"fe0a", X"f9cc", X"f897", X"0214", X"06bd", X"04de", X"ff15",
                                                        X"fed6", X"f507", X"ff42", X"ff3f", X"0a16", X"fb52", X"00f8", X"0077", X"fb8c", X"fe8e", X"fa6a", X"fe85", X"f957", X"04a3",
                                                        X"0486", X"044b", X"f8ab", X"ffad", X"ff01", X"024a", X"0a6f", X"ffa4", X"01e5", X"01b8", X"0093", X"fca1", X"fe81", X"ffb6",
                                                        X"000b", X"0017", X"04f7", X"0061", X"edc6", X"03a2", X"f93e", X"0183", X"0184", X"ff4d", X"01d8", X"ff11", X"01e6", X"fc10",
                                                        X"fbe4", X"07fa", X"0192", X"058b");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"058b";
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

