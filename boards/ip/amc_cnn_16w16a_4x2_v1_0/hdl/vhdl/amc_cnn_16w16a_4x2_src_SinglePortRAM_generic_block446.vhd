-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block446.vhd
-- Created: 2024-11-04 16:44:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block446
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage9/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block446 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block446;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block446 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"01e3", X"077e", X"fd6b", X"0425", X"0243", X"003d",
                                                        X"040d", X"0975", X"ff8b", X"03ad", X"ff84", X"fc50", X"0716", X"0bad", X"0751", X"ffaf", X"fea2", X"fb5d", X"025c", X"fbd1",
                                                        X"024e", X"fe2d", X"157c", X"03ce", X"ff8f", X"ff65", X"ffdb", X"0226", X"f978", X"fe0d", X"03fa", X"06e7", X"f8cf", X"fd13",
                                                        X"050e", X"0350", X"ff07", X"fb81", X"031f", X"fb38", X"010d", X"fc88", X"ff61", X"07e2", X"06bd", X"0239", X"050c", X"063d",
                                                        X"f8b5", X"0321", X"0382", X"06d5", X"ff89", X"fc01", X"00d7", X"044f", X"fd0b", X"0098", X"007a", X"fd78", X"05dd", X"02b8",
                                                        X"05f9", X"0561", X"f8be", X"f4bd", X"fe60", X"0665", X"ffc1", X"fab5", X"fd37", X"f406", X"0412", X"06c4", X"0093", X"f4ae",
                                                        X"0206", X"07f8", X"01f6", X"01f1", X"f334", X"f85c", X"f5b9", X"0ac1", X"0074", X"fcb8", X"0527", X"f62b", X"0050", X"0eb2",
                                                        X"07a8", X"f7e4", X"03e7", X"02ca", X"06c3", X"0196", X"fca6", X"fe73", X"fb94", X"fc4d", X"0049", X"f952", X"07a1", X"009a",
                                                        X"0540", X"0e7d", X"0808", X"fa24", X"f45c", X"0197", X"06ff", X"0240", X"031c", X"0140", X"fa76", X"0422", X"0276", X"ff84",
                                                        X"06df", X"fefe", X"08d1", X"0c5b", X"03c5", X"f87d", X"ffa2", X"066a", X"0cc1", X"0244", X"0247", X"ffad", X"006b", X"f618",
                                                        X"0244", X"0178", X"1419", X"ff96", X"fe49", X"0d3e", X"0299", X"0027", X"021b", X"0e5c", X"0715", X"f85d", X"052d", X"fd59",
                                                        X"fd3b", X"f86f", X"fe3f", X"fca1", X"0e1a", X"fdb2", X"ff55", X"074f", X"0009", X"fc75", X"05ff", X"0387", X"0186", X"fc20",
                                                        X"05b8", X"0e11", X"fd3c", X"fe73", X"ffb1", X"0025", X"fef8", X"febe", X"ff13", X"0183", X"fe95", X"feca", X"048f", X"fa7e",
                                                        X"fd3a", X"fb38", X"00dd", X"0b8d", X"0388", X"fe88", X"01b6", X"fc58", X"033f", X"0187", X"fa8c", X"064d", X"f8ba", X"fdf9",
                                                        X"f94f", X"05cf", X"fb47", X"f24c", X"032c", X"04ea", X"ff2c", X"03d2", X"fabf", X"0066", X"0860", X"0315", X"ffc0", X"fd69",
                                                        X"f880", X"02a6", X"f569", X"0561", X"fbd8", X"f5f5", X"088e", X"0682", X"f3ad", X"099b", X"002c", X"022a", X"0c23", X"0870",
                                                        X"0372", X"04b6", X"f4ad", X"038f", X"026d", X"0387", X"fc8b", X"fb30", X"04b5", X"0568", X"f95b", X"fd80", X"ff50", X"00d2",
                                                        X"fc36", X"07c6", X"f943", X"fdc1", X"f1da", X"faaf", X"ffdd", X"fc74", X"f39b", X"fa8d", X"06ea", X"039e", X"f803", X"faea",
                                                        X"052d", X"0460", X"080d", X"04ac", X"f8d3", X"0043", X"f1fe", X"fc68", X"0720", X"f848", X"fae5", X"f7d8", X"fc59", X"01fd",
                                                        X"ff82", X"0a2d", X"01ea", X"011b", X"04d1", X"0823", X"0021", X"fd6c", X"f847", X"fdbb", X"0182", X"f634", X"fa4b", X"fc58",
                                                        X"fd82", X"06c6", X"01a8", X"039b", X"03ba", X"fc85", X"fb59", X"0547", X"ff52", X"ffcf", X"02fb", X"fbb2", X"05f6", X"fe72",
                                                        X"fcf3", X"00bc", X"fc03", X"fe79", X"0167", X"0a49", X"054d", X"fd72", X"ffc8", X"0475", X"fd09", X"fd93", X"025b", X"f693",
                                                        X"01a5", X"0081", X"fda6", X"ff69", X"fc6c", X"fd86", X"fd2f", X"0c37", X"fcaf", X"01ee", X"f7c5", X"fb61", X"01f3", X"01c8",
                                                        X"053a", X"f852", X"fd29", X"08bc", X"02f5", X"0439", X"ff1b", X"f7b7", X"0a80", X"0c23", X"fe46", X"01be", X"f64f", X"fdd5",
                                                        X"011b", X"fce4", X"035c", X"f877", X"0792", X"0598", X"0b19", X"04cc", X"f73f", X"f031", X"04a2", X"08ee", X"fb80", X"fcdb",
                                                        X"fac5", X"f52f", X"04d8", X"ff2d", X"06e8", X"fe19", X"074b", X"f53a", X"0a22", X"0408", X"f361", X"f55b", X"0714", X"023d",
                                                        X"fbf6", X"fce0", X"fb7a", X"f749", X"06bd", X"fdd7", X"0cd7", X"0360", X"0368", X"03b4", X"0653", X"fee1", X"fa1c", X"fcaf",
                                                        X"0508", X"065f", X"04b3", X"fb43", X"04ed", X"f6c4", X"f702", X"0520", X"0efd", X"fead", X"fc87", X"044f", X"013b", X"062a",
                                                        X"fa8d", X"fd04", X"0359", X"03e7", X"fc55", X"fa35", X"0993", X"f13e", X"0358", X"03b8", X"0e0b", X"f984", X"fc54", X"029e",
                                                        X"0a26", X"046d", X"f37b", X"f293", X"01eb", X"0067", X"f9fb", X"f837", X"03be", X"fadc", X"0618", X"042a", X"08a4", X"fcf3",
                                                        X"fc98", X"f14a", X"0481", X"0532", X"fa3d", X"fae5", X"04aa", X"0057", X"fabe", X"fa94", X"0177", X"f650", X"0c97", X"039b",
                                                        X"07c6", X"ff6f", X"fd19", X"fd53", X"0245", X"fe1e", X"fa98", X"05fd", X"04d0", X"fc36", X"014c", X"fa7e", X"04a6", X"fb81",
                                                        X"fc45", X"012f", X"0698", X"06ba", X"f9d6", X"f9bb", X"ffd8", X"024c", X"00f1", X"ff11", X"000c", X"f0e1", X"0045", X"fb7e",
                                                        X"0974", X"007a", X"fa2f", X"051e", X"050f", X"08c8", X"fdca", X"0459", X"0319", X"fe5b", X"ff1c", X"0420", X"feab", X"fa50",
                                                        X"007e", X"fe30", X"0922", X"03e1", X"015d", X"070e", X"fac9", X"05ba", X"f70f", X"f889", X"02ec", X"001b", X"ffca", X"0cde",
                                                        X"fb66", X"ff7a", X"fcfd", X"fec7", X"0149", X"08de", X"fee0", X"0474", X"f777", X"049d", X"fbb2", X"f56d", X"fe7d", X"ff78",
                                                        X"0470", X"0ac3", X"011d", X"fe1c", X"fa1b", X"fee2", X"0ec2", X"06af", X"0033", X"01b9", X"f615", X"078d", X"0315", X"f956",
                                                        X"f96a", X"fd05", X"046e", X"0c9e", X"fdae", X"fc46", X"ff49", X"021c", X"f8fb", X"07e6", X"fade", X"036e", X"f745", X"fc7e",
                                                        X"fc08", X"04fc", X"fc3f", X"fa64", X"070a", X"0d87", X"fe43", X"f930", X"fe8f", X"02aa", X"008b", X"0a14", X"0419", X"032c",
                                                        X"ed8f", X"fdca", X"faf3", X"05a0", X"ff4b", X"f9a1", X"0781", X"0a73", X"0140", X"07cd", X"004e", X"fdd4", X"fcfd", X"0514",
                                                        X"0414", X"03f8", X"f2e8", X"f91e", X"0316", X"07e6", X"0126", X"f93b", X"07a7", X"09d7", X"f9f9", X"fed4", X"0025", X"ff4e",
                                                        X"00cd", X"022d", X"fcb6", X"0385", X"f9cc", X"f4fa", X"0970", X"0045", X"fa54", X"fbbf", X"0543", X"04b0", X"f8c2", X"01ae",
                                                        X"0273", X"fcf2", X"f9a4", X"071a", X"fba9", X"038f", X"f3a2", X"f549", X"0ad8", X"fcbf", X"006e", X"feb8", X"01c3", X"0028",
                                                        X"fe3d", X"0dd9", X"01d4", X"fd73", X"0ed1", X"027f", X"fdd4", X"0351", X"fe76", X"f5a8", X"0321", X"f6e4", X"fe03", X"005a",
                                                        X"ff61", X"044f", X"fc3d", X"020d", X"fbd3", X"0197", X"04cb", X"ff35", X"05b7", X"0206", X"04dc", X"f63b", X"ff68", X"02ca",
                                                        X"01d4", X"fccc", X"fcb9", X"f9a2", X"fd92", X"04b2", X"00e1", X"f991", X"07c8", X"f326", X"feec", X"fdab", X"0556", X"f1b7",
                                                        X"018e", X"0260", X"01da", X"031c", X"f4ed", X"fc1f", X"fd71", X"0af7", X"fca6", X"fd07", X"fbca", X"f80c", X"0771", X"02d1",
                                                        X"00de", X"fcdb", X"0367", X"0718", X"059c", X"0316", X"f9d0", X"f3a8", X"fd02", X"016b", X"0250", X"fcc3", X"0562", X"f414",
                                                        X"fd63", X"01ac", X"0894", X"fe18", X"ff2e", X"069d", X"008e", X"038b", X"f967", X"f365", X"fc6d", X"0919", X"fc88", X"ffe9",
                                                        X"01aa", X"f470", X"030f", X"0448", X"0464", X"fb5d", X"012f", X"0415", X"0555", X"ffea", X"fc57", X"f3bf", X"0310", X"03c5",
                                                        X"fd48", X"f95c", X"03be", X"f2a5", X"021d", X"0167", X"050d", X"fee3", X"fd3c", X"fa27", X"0626", X"026d", X"fe15", X"fca5",
                                                        X"0499", X"0316", X"024c", X"fd58", X"0a90", X"f7ce", X"fd3b", X"02eb", X"04f2", X"ff18", X"ff09", X"fed5", X"023a", X"0015",
                                                        X"fe2d", X"ffcb", X"0455", X"0007", X"0651", X"ff43", X"0779", X"f875", X"f85d", X"04ff", X"ff16", X"0b97", X"fefe", X"030a",
                                                        X"f981", X"00fd", X"fd67", X"f98e", X"fe3f", X"018c", X"ff1d", X"fb6e", X"f3a2", X"fb57", X"028a", X"053c", X"024e", X"06be",
                                                        X"fe62", X"fe39", X"03e3", X"ff53", X"fe41", X"ff8f", X"0470", X"fdde", X"0088", X"fa9f", X"0c66", X"00b8", X"0061", X"0160",
                                                        X"fcd8", X"0149", X"f71f", X"0169", X"ff35", X"ffe3", X"0214", X"faa3", X"f468", X"06a4", X"fd98", X"fac2", X"01fa", X"fc91",
                                                        X"fe31", X"051d", X"fe00", X"f95b", X"0158", X"faf3", X"002a", X"f9f1", X"00e8", X"03c7", X"f66f", X"f793", X"fa23", X"fc46",
                                                        X"fa33", X"fcbc", X"fb78", X"0497", X"f6cb", X"004a", X"fd8b", X"f727", X"fb52", X"fac0", X"fe8e", X"014b", X"01ee", X"018f",
                                                        X"00fd", X"ff24", X"09d7", X"fc80", X"fc6d", X"fe3f", X"fb4d", X"ff1c", X"03a0", X"036c", X"0269", X"fc62", X"fe65", X"0762",
                                                        X"007e", X"ff4a", X"fe2b", X"fbd1", X"0753", X"fde3", X"fcd7", X"fa88", X"03fa", X"029f", X"fc14", X"06b9", X"013e", X"ff52",
                                                        X"fecd", X"0589", X"000a", X"04b4", X"f88c", X"fd03", X"0786", X"fbdd", X"0aa5", X"f94e", X"fbd4", X"0112", X"f988", X"0258",
                                                        X"0297", X"fc64", X"f9f0", X"03f5", X"f81a", X"ff37", X"feba", X"fd79", X"fd66", X"0493", X"0296", X"0071", X"f728", X"0126",
                                                        X"01ea", X"fd46", X"fc2f", X"fcbf", X"fb1f", X"0121", X"fabf", X"f6d5", X"02db", X"fdde", X"f57d", X"002f", X"053d", X"02f3",
                                                        X"f92b", X"ffdb", X"fcdf", X"0402", X"05c7", X"0121", X"00e5", X"035f", X"0011", X"004f", X"ff33", X"0188", X"0f61", X"0745",
                                                        X"fa02", X"0235", X"f7b5", X"fd6a", X"fbeb", X"0441", X"01fb", X"051b", X"0336", X"02ce", X"fbe8", X"fc5d", X"fc0c", X"fd82",
                                                        X"0451", X"03e4", X"057c", X"fc3f", X"fa4e", X"fe79", X"0512", X"fa23", X"fbcf", X"ff34", X"01ec", X"045f", X"ffb2", X"0057",
                                                        X"fafc", X"fcf7", X"0c8b", X"fea6", X"f581", X"fd3e", X"fb6d", X"f914", X"0472", X"ff10", X"ff84", X"0445", X"ff1b", X"0437",
                                                        X"fb02", X"ff74", X"fd85", X"013c", X"0941", X"fd14", X"ff18", X"00dd", X"00b6", X"0019", X"ff5d", X"fe77", X"00ed", X"fd4f",
                                                        X"014b", X"0263", X"03d4", X"0045", X"fc58", X"007c", X"fc31", X"00d1", X"00af", X"fee1", X"017d", X"0208", X"fe49", X"fbfa",
                                                        X"046e", X"fe97", X"fe95", X"ff99", X"025e", X"fa39", X"04b2", X"fca9", X"ff4b", X"01ef", X"fca0", X"fe5b", X"01ae", X"022a",
                                                        X"003a", X"fbe7", X"02d0", X"0002", X"0116", X"03de", X"0055", X"ffd9", X"fe59", X"fcea", X"f3fa", X"0368", X"00e5", X"fc75",
                                                        X"0051", X"f878", X"fb51", X"042a", X"0066", X"fafb", X"0106", X"0ada", X"fc89", X"0051", X"0303", X"fff7", X"0147", X"02c9",
                                                        X"fc9b", X"033a", X"03c5", X"fc5d", X"020a", X"0634", X"f953", X"fd5b", X"0549", X"0565", X"ffde", X"02b5", X"fdfa", X"fc48",
                                                        X"0d80", X"f914", X"03a5", X"0169", X"fcc8", X"00f3", X"0098", X"0c45", X"04f1", X"01ca", X"004e", X"0048", X"ffc2", X"013b",
                                                        X"0368", X"fa01", X"0545", X"fdec", X"fa88", X"048e", X"0019", X"f531", X"0516", X"0a7f", X"01b1", X"0024", X"01a1", X"0232",
                                                        X"034a", X"0195", X"faff", X"0066", X"faab", X"fe64", X"03f2", X"0283", X"0684", X"f8db", X"0552", X"fa03", X"0511", X"fd69",
                                                        X"fccc", X"fc32", X"fd57", X"028f", X"fb52", X"faa6", X"f88a", X"006e", X"ffed", X"fcff", X"0b45", X"007e", X"06a3", X"f83d",
                                                        X"0478", X"fe4a", X"fd6a", X"fcb8", X"0018", X"02b8", X"0056", X"ff23", X"f951", X"ffbb", X"ffa1", X"03d7", X"0319", X"fc61",
                                                        X"fe64", X"04d9", X"01b2", X"fc3d", X"ff4c", X"02f3", X"ff5c", X"031f", X"ffd9", X"fe0a", X"fc5f", X"f6e0", X"fac5", X"02bd",
                                                        X"00b1", X"03ea", X"f9b2", X"023a", X"fd29", X"f903", X"0416", X"0176", X"ff70", X"f8bd", X"019c", X"fc8d", X"084c", X"fd88",
                                                        X"f5a5", X"09aa", X"06ac", X"ff5f", X"06f2", X"fae3", X"016e", X"000d", X"04d1", X"feb0", X"fa0c", X"fd0b", X"00b3", X"fcd6",
                                                        X"0bf3", X"01d9", X"fed2", X"07e5", X"00ca", X"f9a9", X"f9b3", X"0f16", X"02b6", X"fd97", X"fd51", X"04b1", X"ffcc", X"0653",
                                                        X"fca1", X"fe66", X"0584", X"f8f8", X"0705", X"0100", X"fbde", X"fb79", X"035d", X"feb6", X"0729", X"f965", X"0703", X"058a",
                                                        X"fba5", X"f78b", X"f9fd", X"fe6e", X"07c2", X"f9af", X"f835", X"fdba", X"fb8f", X"fcf2", X"f913", X"fb5d", X"fe3a", X"fe79",
                                                        X"0249", X"03ad", X"00cf", X"fa03", X"fb91", X"fd32", X"10b2", X"0067", X"fdb8", X"024f", X"ffb0", X"ff31", X"0200", X"02a6",
                                                        X"fe30", X"fb70", X"fc52", X"01f2", X"039f", X"014f", X"024a", X"fc26", X"0eda", X"0431", X"05b6", X"fd94", X"00a0", X"fcf9",
                                                        X"0720", X"f664", X"ffa4", X"0014", X"fa17", X"000c", X"ff6d", X"f8c3", X"fc8f", X"f95f", X"1dcf", X"0111", X"075f", X"073f",
                                                        X"ffde", X"ff80", X"0f05", X"0148", X"0152", X"00a5", X"f8c2", X"03bc", X"ff17", X"00c6", X"f85d", X"f838", X"0d2d", X"00cf",
                                                        X"00dc", X"ff9f", X"fde8", X"fb4c", X"0c4d", X"f710", X"fd32", X"fd1f", X"fed7", X"fc3f", X"f8ab", X"00e5", X"f8fe", X"fc32",
                                                        X"0b75", X"fd1c", X"0362", X"0118", X"0022", X"fc3f", X"ff19", X"fbcb", X"03d5", X"030f", X"02f4", X"fbbc", X"f79a", X"0219",
                                                        X"01f8", X"f9a4", X"0484", X"fb3c", X"0c8b", X"068f", X"09f9", X"fdf2", X"fc80", X"ff12", X"ff3d", X"03f7", X"ffc7", X"0092",
                                                        X"f7ea", X"fd75", X"019c", X"fc87", X"fc82", X"fcc9", X"f7b1", X"04c9", X"f794", X"fdbf", X"fd67", X"0342", X"010f", X"02f1",
                                                        X"051e", X"038d", X"fe84", X"fb68", X"015f", X"fd67", X"fb8e", X"02f3", X"0562", X"02fb", X"fec7", X"fcc5", X"fc5d", X"05b0",
                                                        X"051c", X"0018", X"fca4", X"107c", X"0375", X"fa60", X"03d1", X"0219", X"0d4b", X"0e06", X"fbee", X"ff6d", X"02a0", X"f9b9",
                                                        X"004e", X"0900", X"fcd3", X"018d", X"02be", X"07e2", X"057d", X"fef4", X"ff08", X"fed5", X"053b", X"0316", X"ff8c", X"01f6",
                                                        X"ff76", X"006b", X"028c", X"0119", X"feca", X"006b", X"fce7", X"02c8", X"fed6", X"0198", X"0247", X"ffb1", X"0873", X"04b7",
                                                        X"02bf", X"0245", X"fd0c", X"0536", X"01b5", X"0339", X"ff56", X"00ee", X"06cc", X"024d", X"fc71", X"02ab", X"0457", X"000b",
                                                        X"0704", X"0307", X"0bae", X"05f6", X"0135", X"01bf", X"fd52", X"fe8b", X"05d5", X"070f", X"0403", X"07f7", X"fbc7", X"0305",
                                                        X"01fd", X"012d", X"06bd", X"087e", X"fdec", X"06da", X"fc7d", X"f726", X"fee9", X"0bde", X"fffa", X"0291", X"06c3", X"0357",
                                                        X"fd1e", X"06c6", X"037c", X"032d", X"fc2f", X"006a", X"08ee", X"0519", X"fbec", X"f5a4", X"fc53", X"01e0", X"00ef", X"008c",
                                                        X"fe23", X"0598", X"fd43", X"08b8", X"03e2", X"fcc6", X"f6db", X"0672", X"0039", X"ffd3", X"0687", X"f53d", X"05a1", X"fb71",
                                                        X"012c", X"01ed", X"04a7", X"08a6", X"fffc", X"0352", X"0341", X"fe3e", X"0599", X"0640", X"fc40", X"01af", X"06d3", X"f8d7",
                                                        X"064e", X"0425", X"fa27", X"fea9", X"04e9", X"05f7", X"028a", X"0239", X"0345", X"0057", X"026a", X"0220", X"fbd5", X"0403",
                                                        X"0b75", X"f481", X"fdc1", X"fa3a", X"fed2", X"fea4", X"f920", X"fbbf", X"ff1f", X"fbda", X"f87e", X"fd3c", X"fde7", X"00a2",
                                                        X"0143", X"fc96", X"03c6", X"fd13", X"fcf3", X"f4cf", X"0727", X"f7af", X"f773", X"ff69", X"f9bf", X"0168", X"01ac", X"fa83",
                                                        X"f622", X"ff16", X"fe83", X"031b", X"09b8", X"0796", X"049a", X"fc3b", X"01a4", X"fda7", X"fe60", X"0413", X"fc7b", X"fca2",
                                                        X"fff6", X"fd54", X"fcea", X"f615", X"044e", X"fd6d", X"0211", X"ff8e", X"0819", X"f966", X"0249", X"fd65", X"fbc1", X"fe9b",
                                                        X"0520", X"f852", X"03a0", X"fa01", X"f1f4", X"fb32", X"fc99", X"ffed", X"05f7", X"f7d1", X"096c", X"ff17", X"fdec", X"04dd",
                                                        X"ff84", X"faf6", X"fe22", X"feec", X"febe", X"faff", X"fa31", X"f692", X"0705", X"0105", X"0401", X"0038", X"03b5", X"fc4e",
                                                        X"089a", X"0b52", X"fa8e", X"f452", X"049a", X"ff3c", X"fcdb", X"fa7e", X"0b06", X"0453", X"052e", X"0376", X"09a5", X"feef",
                                                        X"044a", X"f2f7", X"0890", X"0837", X"fc53", X"fdde", X"048d", X"fd43", X"feb8", X"fb3e", X"fff2", X"f535", X"01c6", X"0523",
                                                        X"0661", X"ff39", X"fa2f", X"fe05", X"08c3", X"0098", X"00d1", X"0010", X"05b9", X"fa70", X"02a1", X"fe15", X"0b1e", X"fba5",
                                                        X"0b2e", X"03b1", X"0323", X"06c5", X"f478", X"ff6c", X"0555", X"fec2", X"fa9e", X"fdd3", X"0428", X"ffd7", X"07a8", X"f918",
                                                        X"07eb", X"03d4", X"037b", X"02bd", X"02f3", X"0231", X"fe3b", X"0241", X"03f4", X"fcee", X"f83f", X"02e8", X"ffb2", X"ff33",
                                                        X"01fb", X"faac", X"f4ab", X"0395", X"01ae", X"0014", X"0b09", X"fc58", X"fd0d", X"0a63", X"fda2", X"ff1f", X"02f1", X"06be",
                                                        X"008a", X"fccf", X"04a6", X"0108", X"fa9c", X"08e2", X"001b", X"ffb4", X"feb4", X"f3d4", X"fd50", X"fd2f", X"fe55", X"fa11",
                                                        X"ff21", X"0460", X"0638", X"fbd1", X"0402", X"fe2b", X"0c10", X"05cb", X"04d3", X"03bd", X"fd01", X"fd0f", X"06c1", X"ff9f",
                                                        X"012e", X"fbcd", X"058d", X"0aa0", X"028c", X"003f", X"fe4a", X"0090", X"0a58", X"0150", X"0250", X"ff85", X"f1a4", X"0251",
                                                        X"fd7f", X"ff3a", X"fee5", X"f793", X"0aa6", X"0ae6", X"fc7d", X"fe8c", X"02f5", X"00a1", X"036e", X"06a6", X"f55f", X"0053",
                                                        X"f992", X"fedf", X"f7ca", X"fad1", X"fc20", X"f9a6", X"02cd", X"0e52", X"021f", X"040c", X"0175", X"05e0", X"fc93", X"0425",
                                                        X"f90f", X"026a", X"f5a5", X"fdcd", X"017e", X"f5e4", X"0298", X"f87e", X"0760", X"0883", X"fc5f", X"057b", X"0272", X"0613",
                                                        X"030b", X"04dd", X"f9fa", X"055b", X"f83b", X"faaa", X"0566", X"0061", X"feb8", X"fc98", X"0614", X"0a66", X"043b", X"ffc3",
                                                        X"0623", X"fe26", X"0954", X"0595", X"fbda", X"01ab", X"fe58", X"f5c7", X"0a66", X"022b", X"fcb8", X"fcc5", X"0172", X"09c3",
                                                        X"f4ea", X"0397", X"0193", X"fe04", X"0153", X"fe62", X"f7b5", X"0198", X"ff15", X"027c", X"00cd", X"000b", X"00d5", X"fadf",
                                                        X"01d4", X"fdeb", X"f760", X"085e", X"03fc", X"ff62", X"0285", X"fc17", X"fe5c", X"017f", X"f92a", X"f97d", X"0419", X"0329",
                                                        X"fdd1", X"0055", X"fd71", X"fecb", X"ff41", X"0dde", X"0028", X"ffc3", X"050a", X"fae2", X"f949", X"0992", X"00f7", X"f8d7",
                                                        X"0cf9", X"0112", X"023d", X"00f0", X"fa21", X"0035", X"fe9b", X"05c7", X"023a", X"ff06", X"05b7", X"ff41", X"fb4e", X"0715",
                                                        X"074f", X"fc05", X"fce4", X"fabd", X"0473", X"0123", X"fd1b", X"0234", X"0360", X"0502", X"0923", X"fe58", X"03ff", X"fe7e",
                                                        X"ff22", X"0523", X"094e", X"fe0f", X"0173", X"fc32", X"0619", X"0241", X"fd39", X"f9c8", X"0383", X"ff37", X"05e3", X"fc66",
                                                        X"055d", X"f9fa", X"00b4", X"0233", X"06f2", X"013e", X"fd5b", X"0867", X"0529", X"026c", X"fb46", X"f787", X"05d5", X"00de",
                                                        X"016a", X"fc87", X"0727", X"f52d", X"f626", X"009c", X"06d6", X"fe21", X"05b1", X"00f8", X"0142", X"0107", X"009c", X"fea3",
                                                        X"fef2", X"04d3", X"0257", X"fb46", X"0853", X"f853", X"036a", X"018b", X"0660", X"04eb", X"0a0a", X"0346", X"0088", X"fea0",
                                                        X"fb95", X"fd0b", X"0146", X"02c6", X"02ce", X"fc94", X"08db", X"fced", X"01a6", X"085e", X"0205", X"05ef", X"fe57", X"0774",
                                                        X"0441", X"fe90", X"0455", X"fe5f", X"01b0", X"0174", X"02f4", X"fb66", X"11c8", X"fb74", X"0bb4", X"07b9", X"05b8", X"0308",
                                                        X"05a4", X"03ac", X"09d8", X"ff39", X"003b", X"0274", X"fe2b", X"fcff", X"fc58", X"fc52", X"0a19", X"00ab", X"0078", X"015a",
                                                        X"0506", X"0252", X"0e8c", X"fe05", X"ffcd", X"fb4f", X"02e8", X"037c", X"fde4", X"fc96", X"ff61", X"ff40", X"07d0", X"0322",
                                                        X"041a", X"01d2", X"05b5", X"052d", X"072e", X"0275", X"fcd8", X"fe96", X"0093", X"00e2", X"fe45", X"fdf1", X"0404", X"fb15",
                                                        X"055c", X"057f", X"0a59", X"ff7f", X"0045", X"068b", X"02df", X"1226", X"0473", X"0061", X"f9d8", X"02cb", X"fef9", X"f687",
                                                        X"feb9", X"feed", X"0223", X"01ec", X"0818", X"0030", X"fbd8", X"0bed", X"00e0", X"0c5c", X"fe78", X"fc95", X"f84c", X"fc7c",
                                                        X"02b9", X"fe7f", X"faf5", X"fdf1", X"0ca4", X"0379", X"03c4", X"fec4", X"fc0d", X"fdcc", X"0747", X"0639", X"fd51", X"fd39",
                                                        X"ffd2", X"030a", X"fadc", X"009d", X"fad4", X"fcda", X"02d1", X"0481", X"fb97", X"042b", X"f600", X"01e2", X"0648", X"f50b",
                                                        X"007d", X"04e1", X"0113", X"f985", X"fd19", X"0ee6", X"03f3", X"fbf7", X"fcec", X"03b4", X"0556", X"00db", X"f81a", X"00f2",
                                                        X"0695", X"0554", X"03df", X"002c");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"002c";
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

