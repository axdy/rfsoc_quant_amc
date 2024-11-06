-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block343.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block343
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage110/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block343 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block343;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block343 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"066b", X"ee58", X"fd59", X"f5e6", X"ede7", X"07ff",
                                                        X"fb49", X"fabd", X"f699", X"0459", X"f521", X"ff27", X"154c", X"ee72", X"0956", X"036e", X"0263", X"f03d", X"0246", X"ff34",
                                                        X"f043", X"0953", X"0100", X"011a", X"03ad", X"0208", X"fc80", X"03d1", X"0d06", X"f417", X"098e", X"fc92", X"0206", X"fad7",
                                                        X"f5d7", X"ff99", X"f811", X"0152", X"f6e5", X"00a4", X"03ec", X"07f0", X"fe9f", X"021f", X"ff5d", X"fc31", X"fe29", X"fe67",
                                                        X"0158", X"0f1c", X"f775", X"0bc9", X"05c2", X"fdb3", X"f5db", X"05d5", X"fc3e", X"0794", X"04ca", X"068d", X"fcae", X"f788",
                                                        X"eff2", X"051a", X"05c2", X"0dd6", X"fa9e", X"0afb", X"0d7e", X"f96d", X"fe9d", X"0518", X"f1dc", X"0095", X"0748", X"fd6b",
                                                        X"f63e", X"fccb", X"ed19", X"07ec", X"04be", X"0c56", X"f9f6", X"0888", X"0b6d", X"ff70", X"02d4", X"0451", X"f741", X"0387",
                                                        X"0482", X"06e8", X"f5ec", X"0709", X"f089", X"065b", X"0427", X"0322", X"ff3e", X"fff8", X"fd50", X"fed4", X"faec", X"ff6f",
                                                        X"ff2d", X"0278", X"02d1", X"04b6", X"0025", X"0695", X"000c", X"05de", X"ffe4", X"fee4", X"0245", X"0393", X"ebc1", X"00ce",
                                                        X"f969", X"00c7", X"077f", X"052f", X"01ab", X"fec5", X"060d", X"fa86", X"0ca5", X"0269", X"06cb", X"f505", X"faac", X"f67f",
                                                        X"e8bc", X"ff7a", X"f572", X"fe9e", X"06c7", X"05be", X"fe0a", X"fe6a", X"0883", X"ebbb", X"0c64", X"fe39", X"047e", X"fe44",
                                                        X"fd27", X"fd1f", X"f1a8", X"0266", X"f408", X"fbd1", X"0618", X"0452", X"fde5", X"0076", X"05be", X"f457", X"061f", X"ff3e",
                                                        X"ff98", X"014d", X"f8ba", X"01dc", X"fe0e", X"ff35", X"ed33", X"ff9d", X"ff7c", X"03a5", X"02dc", X"059f", X"f954", X"01e6",
                                                        X"faf2", X"fda9", X"0128", X"0af2", X"fb06", X"0382", X"06e1", X"f7ea", X"fa9c", X"006c", X"f851", X"0150", X"04ad", X"0378",
                                                        X"fa9b", X"feaa", X"f0f7", X"045c", X"03d6", X"1235", X"f8c9", X"09d9", X"0b09", X"fbc5", X"0067", X"04e5", X"f660", X"0283",
                                                        X"0685", X"04ab", X"fb4b", X"0162", X"ecf7", X"0adb", X"fe5a", X"08e9", X"f705", X"009d", X"057d", X"fc5a", X"0445", X"04aa",
                                                        X"fc25", X"03c9", X"03bb", X"fe26", X"f764", X"fe80", X"f6b7", X"0b36", X"ffd3", X"feeb", X"f894", X"002e", X"fac1", X"ff01",
                                                        X"f3f5", X"018f", X"08d8", X"fffb", X"0137", X"06b8", X"fecd", X"fcac", X"0100", X"0918", X"fff3", X"f804", X"fa1a", X"005f",
                                                        X"ea7e", X"043c", X"02df", X"ff31", X"04e8", X"fff7", X"fcc6", X"feab", X"071d", X"f83e", X"0435", X"0101", X"00e8", X"fbb7",
                                                        X"fb47", X"fd49", X"e83f", X"078f", X"f6eb", X"fc6f", X"0550", X"05cb", X"fada", X"0663", X"0742", X"f64e", X"0c72", X"ff73",
                                                        X"fff8", X"fb27", X"fbc2", X"0075", X"eb7e", X"ff8c", X"eb26", X"00ba", X"02ea", X"032a", X"faeb", X"0380", X"0251", X"f199",
                                                        X"0919", X"0222", X"05a8", X"0541", X"fd3f", X"fd62", X"0654", X"fbc9", X"f0e7", X"032a", X"f869", X"04af", X"030f", X"fc2e",
                                                        X"faa4", X"fcf9", X"f5ca", X"0309", X"0396", X"0b3a", X"fa50", X"0247", X"085e", X"fc95", X"ff2a", X"037c", X"f5a9", X"0277",
                                                        X"084e", X"021b", X"f744", X"f552", X"e938", X"02e2", X"01e9", X"0f43", X"fcd5", X"0d2e", X"0d0f", X"f6c0", X"fd3d", X"0113",
                                                        X"faf9", X"ffae", X"0ac5", X"0053", X"f8b4", X"f3a5", X"ebed", X"0781", X"04bb", X"041e", X"f8de", X"07d8", X"07e9", X"fab1",
                                                        X"f223", X"0227", X"f3ad", X"fda9", X"06a4", X"0363", X"f6ae", X"f535", X"f66a", X"0c08", X"05b3", X"fccf", X"f938", X"fc04",
                                                        X"f6d6", X"0498", X"f862", X"ffbe", X"00f8", X"fbf8", X"049f", X"fc1b", X"05a4", X"fe40", X"03f8", X"07c3", X"0184", X"f701",
                                                        X"fae4", X"f95e", X"e8ae", X"022e", X"00b2", X"fab3", X"0285", X"ff1b", X"00c8", X"ff5e", X"058b", X"f414", X"08fd", X"fe43",
                                                        X"01bf", X"f846", X"fb09", X"fb05", X"eb9c", X"0137", X"f49c", X"fb9a", X"0d0b", X"0074", X"fabb", X"044c", X"062c", X"ec92",
                                                        X"0e5c", X"fd37", X"0372", X"02d9", X"fd9c", X"064f", X"f4cd", X"0104", X"fade", X"fe58", X"0289", X"ff63", X"fb7d", X"fe9e",
                                                        X"065a", X"edce", X"06b1", X"fe49", X"00df", X"0992", X"f083", X"0619", X"fb64", X"00de", X"efa9", X"ff4e", X"fc3a", X"0497",
                                                        X"fe19", X"07ce", X"faa8", X"f89c", X"f841", X"0036", X"09d0", X"0dbc", X"f5dd", X"083d", X"0f6c", X"ff03", X"fad9", X"0350",
                                                        X"f3b6", X"053c", X"0467", X"fe35", X"f799", X"f244", X"f0c5", X"066c", X"042e", X"0df8", X"f9ca", X"002c", X"0e57", X"fb2b",
                                                        X"019e", X"ff61", X"efd0", X"034c", X"023b", X"05d0", X"f3bf", X"fa00", X"ee1e", X"08fb", X"0215", X"0afa", X"fddc", X"0a33",
                                                        X"094c", X"feec", X"fc68", X"0619", X"f90c", X"fefc", X"034a", X"feb9", X"fbb6", X"fd8c", X"ede3", X"08a6", X"0473", X"032f",
                                                        X"f81b", X"024d", X"fc34", X"fdbd", X"f301", X"02f7", X"07bb", X"fe56", X"04ba", X"fceb", X"027c", X"0243", X"fed5", X"02f8",
                                                        X"f905", X"fce0", X"f4be", X"fc3d", X"edc3", X"ffaa", X"f5d8", X"fe0f", X"076c", X"01e0", X"01f2", X"00c8", X"0518", X"fa99",
                                                        X"07ae", X"00cf", X"fd9b", X"f340", X"f6e7", X"ff33", X"e8a2", X"00b4", X"f0f0", X"fb87", X"0968", X"02b6", X"fb78", X"fed3",
                                                        X"078a", X"ed98", X"0af5", X"fd9f", X"fe78", X"f5dc", X"f718", X"fad3", X"edcc", X"0252", X"f731", X"fc16", X"fe75", X"0442",
                                                        X"fe63", X"feb6", X"060f", X"f368", X"01aa", X"0123", X"0394", X"fea5", X"f60e", X"016c", X"fa26", X"fdf6", X"eef3", X"0327",
                                                        X"ff2b", X"0459", X"019f", X"00fc", X"fbef", X"f3a9", X"f9a6", X"07d2", X"0695", X"096b", X"fa0a", X"0a83", X"077e", X"fa70",
                                                        X"f38e", X"03c8", X"f5dd", X"027a", X"0464", X"fe9e", X"f87a", X"fbc4", X"ed8f", X"057e", X"03d1", X"0a7c", X"f6db", X"093e",
                                                        X"0f3c", X"fa86", X"f510", X"0009", X"fc88", X"0561", X"0465", X"04f3", X"f70b", X"f5c1", X"ec6f", X"0689", X"04cd", X"07fb",
                                                        X"fa81", X"fa2a", X"092a", X"fb23", X"f3c5", X"fd7c", X"faa8", X"0240", X"0433", X"ff45", X"f6db", X"ff0d", X"f204", X"06f0",
                                                        X"0ad0", X"03cb", X"fe91", X"0522", X"f7c9", X"fda3", X"fdfb", X"fd3f", X"027e", X"0066", X"05a0", X"fd38", X"0488", X"f9cf",
                                                        X"fd89", X"0880", X"0186", X"f660", X"f989", X"f953", X"ed7a", X"0362", X"047d", X"fdd2", X"066c", X"0054", X"008d", X"ff5c",
                                                        X"07e9", X"f324", X"0517", X"ff93", X"0735", X"f18a", X"00b9", X"f98e", X"e976", X"038f", X"0242", X"fe9d", X"0c80", X"00d8",
                                                        X"fe82", X"fed6", X"0cb0", X"f6d2", X"0e41", X"fd24", X"ffa8", X"f9eb", X"fc04", X"01b2", X"f0fc", X"0335", X"fa2e", X"03da",
                                                        X"07a3", X"03b6", X"0556", X"03b1", X"03ff", X"f7e0", X"06d6", X"feb0", X"0094", X"0676", X"fac5", X"0036", X"fdbd", X"ff2c",
                                                        X"f28e", X"0023", X"fa37", X"03dc", X"02c6", X"ffb5", X"fc31", X"fa46", X"fba6", X"ff2a", X"02c3", X"1041", X"f6cb", X"fd8b",
                                                        X"085c", X"fb62", X"f714", X"0290", X"fc6f", X"00ff", X"0324", X"febc", X"f13d", X"ff2b", X"f2c6", X"018e", X"0543", X"103b",
                                                        X"f70f", X"0545", X"100d", X"f924", X"024f", X"0a3a", X"f45e", X"0072", X"0889", X"0187", X"f49f", X"0355", X"e440", X"0868",
                                                        X"0503", X"06c0", X"fae2", X"0dfa", X"0579", X"ff2a", X"f9ef", X"03cb", X"fdcf", X"028a", X"01c4", X"fc38", X"fb0c", X"fc74",
                                                        X"f638", X"07ab", X"0532", X"0049", X"fa91", X"fb08", X"f7f4", X"fd50", X"fde9", X"fe46", X"fd7a", X"ff69", X"03c8", X"fff7",
                                                        X"ffee", X"f47f", X"ff20", X"0547", X"02b0", X"fd02", X"f848", X"f2fb", X"efdd", X"010f", X"f448", X"fde4", X"060b", X"023b",
                                                        X"faad", X"fc06", X"0e4c", X"efb5", X"02bc", X"fd4d", X"fafc", X"f08d", X"f8e8", X"f847", X"e9aa", X"02c0", X"f8cb", X"f729",
                                                        X"0398", X"08b5", X"ffda", X"ff6f", X"04c4", X"f3a5", X"0823", X"fc3f", X"037b", X"f9b1", X"fdbd", X"0361", X"f49d", X"04df",
                                                        X"fa0a", X"fde9", X"0624", X"0998", X"012f", X"0550", X"010f", X"f425", X"08ce", X"ff4e", X"0223", X"fe47", X"fb2b", X"03df",
                                                        X"fb76", X"fdca", X"fd61", X"0606", X"049e", X"0a5e", X"ff08", X"06e1", X"006b", X"fab5", X"fd22", X"03d1", X"0774", X"09a9",
                                                        X"fdde", X"08b0", X"090d", X"fe3e", X"f207", X"032c", X"f60d", X"03b4", X"01f6", X"03a7", X"f515", X"0361", X"f10b", X"03b7",
                                                        X"04d5", X"0b55", X"fb7a", X"0843", X"0f50", X"fddf", X"0117", X"0018", X"fbfe", X"fee5", X"0518", X"0136", X"eff6", X"01b1",
                                                        X"ea3d", X"032e", X"ff69", X"0d38", X"0437", X"07a3", X"0207", X"fea0", X"fdb6", X"025d", X"ff96", X"fdbd", X"08ac", X"08a0",
                                                        X"fb5a", X"fe5f", X"f405", X"0809", X"fead", X"05b9", X"f9ca", X"05b3", X"ffd8", X"fe92", X"fc43", X"0157", X"017d", X"01f4",
                                                        X"fff7", X"ff66", X"ff9d", X"fd40", X"0133", X"03d0", X"ffd2", X"f992", X"fdc2", X"fcec", X"ebed", X"0331", X"02ec", X"fbf1",
                                                        X"05b2", X"03ee", X"0054", X"fc3a", X"0933", X"fa23", X"0590", X"ff0d", X"00e9", X"f252", X"f724", X"fb09", X"ebd8", X"0510",
                                                        X"f9a0", X"fa86", X"032d", X"05ec", X"fe26", X"f948", X"03d9", X"f48b", X"0f86", X"fb7c", X"06ea", X"f990", X"faf8", X"014a",
                                                        X"f6d7", X"ff9e", X"fad3", X"f8e8", X"003d", X"0299", X"0393", X"068b", X"090a", X"f6ef", X"078b", X"fe0f", X"0346", X"ff63",
                                                        X"fc2e", X"0466", X"0167", X"0224", X"f142", X"0350", X"0148", X"03a4", X"fff5", X"058d", X"ff71", X"f798", X"fe34", X"fa2d",
                                                        X"ff56", X"0afd", X"fa3d", X"05f2", X"0405", X"fe30", X"fff5", X"03e1", X"fc0d", X"0086", X"0265", X"06b1", X"f3c6", X"fd3a",
                                                        X"ed64", X"0150", X"038f", X"12bc", X"fa5c", X"0dfb", X"0e0f", X"fad2", X"00e1", X"03d0", X"f1da", X"036d", X"07c7", X"01fb",
                                                        X"efb4", X"0267", X"e8b6", X"0986", X"00be", X"0d89", X"f32f", X"0c37", X"08f8", X"fb7b", X"faa1", X"04b5", X"f957", X"0878",
                                                        X"0676", X"05ad", X"efcc", X"00c6", X"eeec", X"0d43", X"ff81", X"01a4", X"f754", X"f756", X"fec7", X"ff9a", X"fd23", X"070c",
                                                        X"02b6", X"052d", X"02fc", X"f8c1", X"fbcf", X"f6e4", X"fedd", X"05a0", X"0330", X"f7b4", X"fe77", X"ff40", X"eda0", X"0244",
                                                        X"0074", X"fd3d", X"0af8", X"fe76", X"fa0b", X"f8db", X"0044", X"ef5e", X"09d9", X"fe04", X"fd6c", X"f464", X"faa2", X"ffab",
                                                        X"e56e", X"02fd", X"f721", X"f672", X"011b", X"023b", X"fd08", X"02b6", X"0ae5", X"ef98", X"04b2", X"0004", X"01e6", X"f69d",
                                                        X"fc49", X"0307", X"ea19", X"03f9", X"f741", X"fe78", X"046a", X"026c", X"f844", X"fb08", X"05eb", X"f5c2", X"08f4", X"fdbb",
                                                        X"05b5", X"f85b", X"fd7e", X"09c3", X"fbcb", X"ff91", X"ffe1", X"02c4", X"fd0d", X"0597", X"0105", X"076e", X"fdf2", X"02ab",
                                                        X"fe80", X"fd75", X"04f6", X"0b97", X"f36b", X"036f", X"07a6", X"fa44", X"ff59", X"097c", X"f924", X"08de", X"07b3", X"ffd3",
                                                        X"ef08", X"fce0", X"ef8d", X"030f", X"04bb", X"0972", X"ee7a", X"0d88", X"0c83", X"f7bf", X"0607", X"045b", X"f30d", X"068e",
                                                        X"0b0f", X"0664", X"f497", X"02b8", X"ee45", X"085e", X"00ae", X"0960", X"fca0", X"057d", X"0749", X"fbfa", X"fbab", X"02a0",
                                                        X"f9d2", X"0118", X"05a4", X"03a0", X"f8d6", X"fc39", X"f055", X"03e7", X"00e0", X"0047", X"f7e3", X"feac", X"fbd9", X"ffb7",
                                                        X"017b", X"0232", X"f9b8", X"ff9c", X"00b8", X"01ee", X"0010", X"faee", X"ff71", X"069b", X"ffe7", X"fad7", X"fc7d", X"04fb",
                                                        X"ebda", X"0383", X"f78f", X"f847", X"0538", X"fc3d", X"fdeb", X"fd86", X"0779", X"efb4", X"09b2", X"00ba", X"feb2", X"f4e4",
                                                        X"f4f4", X"ff19", X"e9ec", X"0412", X"fcdc", X"fa13", X"0275", X"045a", X"fac7", X"0293", X"0d45", X"ec60", X"0bec", X"fc8a",
                                                        X"02d3", X"fa56", X"f484", X"fd61", X"f088", X"03ca", X"fb6a", X"017b", X"076b", X"0120", X"faf1", X"042a", X"0d5e", X"ee0d",
                                                        X"07a4", X"fe60", X"030e", X"fead", X"fc7d", X"0177", X"0213", X"0099", X"f74d", X"0468", X"fdbd", X"03cd", X"016d", X"01d3",
                                                        X"fe60", X"f70a", X"fa47", X"fcc6", X"029d", X"0a1a", X"f9dd", X"0c1a", X"0ab3", X"fade", X"f95d", X"06ec", X"f602", X"03ac",
                                                        X"045f", X"089c", X"f705", X"0767", X"f2b9", X"04de", X"0656", X"09aa", X"f9fa", X"0647", X"0f36", X"fcb4", X"f9fb", X"0a77",
                                                        X"f6d8", X"ffcc", X"03d5", X"fdca", X"f998", X"0ed6", X"f24a", X"0022", X"0434", X"06f5", X"f8c5", X"0389", X"09f3", X"fe34",
                                                        X"00fe", X"0247", X"fbf5", X"fe70", X"053d", X"0290", X"f496", X"07e9", X"f108", X"086a", X"02aa", X"03d7", X"fe21", X"f31c",
                                                        X"f73d", X"fd7b", X"0147", X"fffe", X"fb7a", X"015f", X"ff42", X"06c1", X"04cf", X"f8fd", X"f9ca", X"02c5", X"0332", X"f8fb",
                                                        X"f7d1", X"00c1", X"eab9", X"0054", X"f6f6", X"fe6f", X"078b", X"069d", X"006a", X"0691", X"0a1b", X"ec35", X"09ea", X"0639",
                                                        X"fd60", X"f384", X"f6b6", X"fff6", X"e80e", X"037a", X"fea2", X"fefd", X"089d", X"053a", X"fe3c", X"0565", X"075a", X"f76d",
                                                        X"09e7", X"fe6d", X"0134", X"f7ec", X"f502", X"fcb7", X"edad", X"02b6", X"fa9c", X"fd02", X"0777", X"0a9a", X"0063", X"ff28",
                                                        X"0527", X"f746", X"0605", X"fcee", X"05d0", X"0118", X"f54d", X"0301", X"fc7f", X"fdf8", X"f594", X"02b0", X"015d", X"063e",
                                                        X"00e0", X"0212", X"fe3b", X"f9c2", X"fe19", X"0125", X"054a", X"0946", X"ff84", X"09ce", X"0a6f", X"fb72", X"fd69", X"0010",
                                                        X"f693", X"00a1", X"0153", X"0393", X"f274", X"f90c", X"eda2", X"fef5", X"0388", X"1013", X"fa99", X"08f9", X"0ffc", X"f6c7",
                                                        X"f9de", X"03b7", X"f67d", X"025b", X"0d24", X"0592", X"f292", X"fb0b", X"ebd6", X"027a", X"0453", X"0ab5", X"00f8", X"04af",
                                                        X"0280", X"fd65", X"feed", X"03bf", X"fb89", X"ff39", X"058d", X"004e", X"f0f8", X"ffa2", X"f3bf", X"02fd", X"03ae", X"0092",
                                                        X"fa66", X"fa40", X"faab", X"fbf0", X"fbf3", X"fc7c", X"0104", X"ffbe", X"037a", X"039a", X"011f", X"f89e", X"fdb2", X"0687",
                                                        X"02c5", X"f932", X"f573", X"0434", X"e7d8", X"02ed", X"fc46", X"f7ff", X"049e", X"0201", X"fcec", X"ff60", X"0eae", X"f48e",
                                                        X"0a2f", X"00a3", X"0170", X"f9af", X"f552", X"f2f8", X"e74c", X"051c", X"fec6", X"f78e", X"047e", X"018d", X"f8c6", X"03a5",
                                                        X"07fc", X"f3a9", X"066c", X"ff34", X"fe55", X"f9d3", X"f9cd", X"008b", X"f41f", X"0225", X"f684", X"fc64", X"ffa4", X"0681",
                                                        X"0077", X"fc56", X"03b3", X"f0a3", X"0b62", X"00fd", X"022b", X"044c", X"f42c", X"0858", X"fd1b", X"00fa", X"fa78", X"01f2",
                                                        X"fa2c", X"071b", X"0647", X"002d", X"ff35", X"f3b2", X"0249", X"0210", X"07f0", X"10ae", X"f525", X"075b", X"097f", X"f9c7",
                                                        X"f6a9", X"0788", X"ff36", X"01c9", X"0341", X"0798", X"f42a", X"f56a", X"f15d", X"0102", X"057f", X"0ce0", X"01ff", X"0f0c",
                                                        X"0f16", X"f8cc", X"ffba", X"03d8", X"edd5", X"0220", X"076e", X"fd1f", X"f307", X"fa35", X"e932", X"063a", X"fea0", X"0b33",
                                                        X"fb96", X"0456", X"0345", X"fde2", X"fab7", X"0535", X"f17b", X"fc46", X"0610", X"065f", X"f5f1", X"fb98", X"eeb9", X"058e",
                                                        X"0021", X"0482", X"fe17", X"ffd2", X"f8ad", X"fead", X"0010", X"019e", X"026c", X"0088", X"0236", X"069b", X"fc92", X"f9a0",
                                                        X"f85b", X"0349", X"fc74", X"f604", X"f6ed", X"f62c", X"edb8", X"fef4", X"fe4d", X"fee2", X"0c17", X"050d", X"fb28", X"ff0e",
                                                        X"0716", X"ff00", X"08c6", X"01e0", X"fb57", X"f035", X"fad8", X"f88e", X"ebac", X"0378", X"027f", X"fba0", X"0619", X"064e",
                                                        X"fe83", X"060a", X"0586", X"f2a3", X"05a2", X"fd35", X"fb8b", X"f46b", X"f243", X"0563", X"ee43", X"ff78", X"f91c", X"fe86",
                                                        X"0799", X"02d4", X"f9dd", X"01ae", X"0587", X"ee11", X"02d5", X"fbbc", X"040e", X"0420", X"f132", X"0310", X"fc59", X"fe1a",
                                                        X"eb1e", X"05af", X"ff29", X"ff6b", X"fcef", X"fc2a", X"fc61", X"f7b4", X"f978", X"041a", X"0090", X"02b2", X"f259", X"0fb6",
                                                        X"056e", X"fb82", X"f2a1", X"ff88", X"f479", X"0498", X"024b", X"f954", X"f741", X"002c", X"f0ac", X"090f", X"05f3", X"0acd",
                                                        X"f73d", X"05b9", X"0853", X"fbf1", X"fcb5", X"07ab", X"f375", X"02c1", X"0546", X"fa4e", X"efef", X"0465", X"ea5a", X"04a8",
                                                        X"04fb", X"0edc", X"f4cc", X"0d54", X"0542", X"f8c0", X"fdc3", X"fead", X"f583", X"03bb", X"07c4", X"fe24", X"f5ae", X"0145",
                                                        X"f4d8", X"092b", X"0203", X"0300", X"fda3", X"0470", X"fc82", X"fb93", X"0162", X"ff94", X"0301", X"fc65", X"0172", X"014e",
                                                        X"0162", X"f3bb", X"0211", X"06f2", X"0100", X"fb9f", X"fdeb", X"f6c4", X"ed27", X"01b2", X"f1cf", X"fe80", X"0837", X"02b2",
                                                        X"0233", X"07e5", X"083d", X"f80c", X"0b83", X"03ef", X"03ae", X"f8be", X"fca5", X"fb95", X"e9da", X"0524", X"f4be", X"fcdf",
                                                        X"05dd", X"02ec", X"f92e", X"053b", X"0c9a", X"fd6c", X"0bb8", X"ffed", X"04cf", X"f695", X"f39e", X"fb9b", X"f1d2", X"00e8",
                                                        X"fa61", X"fcdd", X"0154", X"08af", X"f842", X"042d", X"0678", X"fd5c", X"07f0", X"fc6b", X"fe34", X"068e", X"ff4a", X"03fe",
                                                        X"fe46", X"fcf7", X"fdb1", X"0750", X"03b6", X"0387", X"ff5c", X"025f", X"0032", X"00b4", X"fb44", X"ffc5", X"fd85", X"1120",
                                                        X"fba3", X"fe3c", X"0f2a", X"fc64", X"f6f0", X"0a66", X"f54a", X"0153", X"0458", X"03e6", X"f989", X"fc2e", X"f1cf", X"05c8",
                                                        X"071e", X"0d87", X"fbc2", X"09fb", X"0cff", X"fbbe", X"fbe2", X"0454", X"ee9e", X"ffd5", X"0315", X"0561", X"f96a", X"f7ae",
                                                        X"ee67", X"0977", X"0549", X"106b", X"fd41", X"0a80", X"0560", X"fb52", X"f9ec", X"0241", X"eda8", X"01f9", X"03bf", X"0097",
                                                        X"f570", X"fd22", X"ebcc", X"09cb", X"02f1", X"0392", X"fd5b", X"ff40", X"fb95", X"fef9", X"fe57", X"fff9", X"006e", X"ffd7",
                                                        X"004c", X"01d6", X"0150", X"f5f7", X"009b", X"03a3", X"02c5", X"f33c", X"fee2", X"f22c", X"efcc", X"0460", X"f966", X"f9bc",
                                                        X"0c6f", X"0372", X"fdee", X"0062", X"0536", X"faf7", X"104e", X"025d", X"06e6", X"f3cc", X"fe55", X"fcd7", X"ea6b", X"058f",
                                                        X"fcdd", X"fd15", X"08ac", X"08f9", X"fd5e", X"07b5", X"0984", X"f8ec", X"0d92", X"00e8", X"02ea", X"ffb7", X"f840", X"fefd",
                                                        X"f0cc", X"032e", X"ee89", X"0461", X"039c", X"01ca", X"fbe3", X"052c", X"06e2", X"ef52", X"0591", X"fc98", X"00a8", X"000b",
                                                        X"f4d5", X"04e1", X"fb97", X"feb7", X"f4fc", X"006d", X"fe99", X"ff8a", X"0666", X"01c3", X"01db", X"f6ff", X"f8f3", X"0194",
                                                        X"014f", X"03c7", X"f5ba", X"0c1d", X"0a0d", X"fad1", X"ed05", X"008b", X"f6a3", X"035d", X"06a5", X"0273", X"fb98", X"fa0b",
                                                        X"ece2", X"010b", X"0176", X"116e", X"fbc2", X"0ca8", X"0c05", X"fd6f", X"05e6", X"0b40", X"f360", X"0170", X"08c4", X"00b8",
                                                        X"f40a", X"0578", X"ec0f", X"0844", X"09e2", X"0b7e", X"02ac", X"0578", X"0989", X"fd47", X"ff54", X"0403", X"faa4", X"0365",
                                                        X"09d3", X"fcf0", X"f6d2", X"007f", X"f894", X"0afb", X"0787", X"022a", X"007c", X"f5d2", X"fcac", X"ffde", X"fd28", X"fcaa",
                                                        X"faec", X"0344", X"00de", X"023f", X"05da", X"ef85", X"0413", X"0659", X"01b6", X"f4fb", X"f710", X"fea9", X"e7d1", X"0023",
                                                        X"0328", X"f9fd", X"05ec", X"fe4c", X"fa6e", X"ff56", X"0463", X"f7e8", X"09e7", X"fad9", X"fff6", X"f681", X"fd48", X"f9d9",
                                                        X"e921", X"02fa", X"f911", X"f9ac", X"0742", X"0317", X"f5e8", X"045f", X"0d3b", X"f025", X"0bf4", X"fd31", X"042e", X"fca5",
                                                        X"f412", X"fb2e", X"effc", X"03d4", X"f580", X"fa15", X"03dd", X"0987", X"fb5e", X"06ff", X"020a", X"f3c2", X"08e0", X"0229",
                                                        X"03d3", X"040c", X"f14c", X"0725", X"027a", X"fd1f", X"fee3", X"05cc", X"f6b8", X"0528", X"00ed", X"ffd0", X"fe13", X"059f",
                                                        X"f5bc", X"0379", X"0908", X"0db1", X"fcca", X"0cb3", X"1670", X"f736", X"f9b5", X"0898", X"e97c", X"00d5", X"019c", X"0112",
                                                        X"efb3", X"05be", X"e3a8", X"0e01");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0e01";
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
