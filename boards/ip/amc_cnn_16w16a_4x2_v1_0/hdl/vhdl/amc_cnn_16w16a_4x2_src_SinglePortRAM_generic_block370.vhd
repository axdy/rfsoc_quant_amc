-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block370.vhd
-- Created: 2024-11-04 16:44:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block370
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage20/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block370 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block370;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block370 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fe49", X"0cb3", X"fe8a", X"f8b3", X"0a7e", X"f9db",
                                                        X"17e1", X"025e", X"f052", X"fd06", X"0563", X"feef", X"f07f", X"1393", X"fbcf", X"0323", X"0444", X"0526", X"0235", X"f643",
                                                        X"0140", X"fe82", X"0cb3", X"0825", X"fd8b", X"012b", X"ffd9", X"0203", X"fb1d", X"08fb", X"ffc5", X"056e", X"06b6", X"fc82",
                                                        X"040b", X"0321", X"f10c", X"02be", X"07f0", X"fc01", X"0946", X"ffa5", X"fb07", X"fbe5", X"0905", X"f86c", X"008d", X"fa69",
                                                        X"fcb9", X"f4b8", X"fcde", X"f563", X"e727", X"ffe5", X"067e", X"fbce", X"fdac", X"ff38", X"fb63", X"fd86", X"0ab3", X"e74b",
                                                        X"09be", X"fe75", X"009f", X"f03b", X"ff99", X"080e", X"ed02", X"00b6", X"04c4", X"ff2d", X"04eb", X"06f9", X"fa60", X"fc32",
                                                        X"09fe", X"e5ea", X"0786", X"015f", X"00e1", X"f951", X"024f", X"fc00", X"e944", X"0291", X"0a69", X"fad8", X"0475", X"0649",
                                                        X"fe18", X"f952", X"0910", X"d92b", X"08ce", X"fedb", X"01df", X"f84e", X"09d1", X"f232", X"e8b4", X"0156", X"ff11", X"ffba",
                                                        X"0200", X"021b", X"fc38", X"fcd6", X"0390", X"d66d", X"06f9", X"fdda", X"0558", X"fcb6", X"ff3c", X"fd8e", X"f3d5", X"ff22",
                                                        X"09a5", X"005b", X"0765", X"0285", X"fcb8", X"02da", X"066f", X"e5c0", X"0bde", X"fbd8", X"0060", X"fc25", X"f9ab", X"f9ef",
                                                        X"fe64", X"fede", X"fe05", X"075c", X"0310", X"00fc", X"fd00", X"00b8", X"0ef1", X"ec38", X"06a1", X"fcc9", X"00e1", X"fe74",
                                                        X"04ed", X"ffd4", X"0364", X"015d", X"ff0a", X"056d", X"0329", X"fce5", X"0148", X"fa1d", X"f9ab", X"0930", X"011e", X"fca0",
                                                        X"0288", X"0413", X"0199", X"f208", X"0118", X"fc54", X"f757", X"02ae", X"0353", X"00e4", X"02c4", X"f2de", X"fc3a", X"0529",
                                                        X"fae8", X"023e", X"0111", X"07f8", X"06ca", X"fe79", X"02a1", X"fd6a", X"ffd7", X"011c", X"f87d", X"f950", X"fe3e", X"f8df",
                                                        X"fb87", X"f9ea", X"013f", X"01ac", X"f7fe", X"00a3", X"0215", X"faa8", X"011b", X"fcff", X"02eb", X"fd72", X"ef55", X"023b",
                                                        X"011b", X"f72a", X"fa70", X"fb71", X"009f", X"ffd6", X"fd62", X"0ae4", X"00cc", X"f893", X"0408", X"ff32", X"0dea", X"fbd7",
                                                        X"e83a", X"0032", X"0139", X"fc72", X"fa45", X"fc6b", X"f7a5", X"01a5", X"fe75", X"0aa4", X"fbf2", X"0576", X"00d3", X"0255",
                                                        X"056f", X"01c7", X"f6ca", X"fe58", X"03ed", X"0428", X"fa28", X"f74e", X"fc49", X"01b9", X"008d", X"0a46", X"fdd8", X"00bc",
                                                        X"0128", X"fd48", X"0e30", X"00b9", X"ff4b", X"012f", X"063d", X"06f3", X"f9c1", X"fd9a", X"fede", X"0635", X"04e6", X"073e",
                                                        X"01e8", X"ffc4", X"04a0", X"04e9", X"0fc5", X"013e", X"fce5", X"fce2", X"01db", X"fc53", X"00f6", X"0e32", X"fe39", X"fc7a",
                                                        X"05ae", X"ffbc", X"0233", X"fac7", X"f987", X"0409", X"1225", X"001b", X"02ef", X"0339", X"07ce", X"0096", X"0bef", X"0012",
                                                        X"0719", X"0353", X"0341", X"f897", X"05a8", X"fd4e", X"fbc7", X"03f2", X"0b2d", X"0243", X"088c", X"04d0", X"fda5", X"0a32",
                                                        X"0cbd", X"043b", X"0525", X"ffcb", X"fe57", X"f703", X"03f5", X"f87c", X"f24f", X"0369", X"04c7", X"0644", X"02e5", X"0329",
                                                        X"f6cc", X"04a8", X"08f4", X"ecf1", X"08fd", X"fe1f", X"fce9", X"f31c", X"0827", X"f3c2", X"eccb", X"01ed", X"05f7", X"fa86",
                                                        X"fecc", X"00a2", X"f819", X"03f1", X"088f", X"cdc6", X"03dd", X"016f", X"ff84", X"f478", X"0425", X"fa19", X"ee34", X"0366",
                                                        X"fe3f", X"fd57", X"fde3", X"01a1", X"f948", X"fc28", X"03a8", X"dadb", X"08f5", X"fefb", X"0348", X"fb38", X"024c", X"f5b3",
                                                        X"f222", X"02ec", X"00b8", X"ffdd", X"faf6", X"00e5", X"f7f9", X"fc03", X"05d2", X"e272", X"03b8", X"fec8", X"066e", X"ff63",
                                                        X"0700", X"07a1", X"f862", X"0169", X"0c17", X"023c", X"091e", X"00d3", X"fb44", X"fa51", X"0404", X"e7b7", X"0872", X"fe2e",
                                                        X"fed7", X"fdfc", X"fba5", X"fe0c", X"f90e", X"fdb7", X"fd6b", X"05cd", X"fee5", X"fdcb", X"067a", X"fbc2", X"facc", X"f797",
                                                        X"04da", X"02dc", X"05d3", X"041d", X"ffca", X"0141", X"fc0b", X"fd4f", X"0568", X"06d9", X"00f0", X"01c1", X"fd64", X"ffca",
                                                        X"008d", X"0a63", X"fe7b", X"fcb2", X"fff9", X"fa9b", X"f9cb", X"fdff", X"fe23", X"fcba", X"12f1", X"008d", X"04f7", X"fce2",
                                                        X"fd05", X"f9e6", X"06e0", X"02ac", X"01ad", X"004a", X"057d", X"0936", X"fa5e", X"f80f", X"005a", X"0105", X"fd4a", X"fd9e",
                                                        X"fb9d", X"04ba", X"011d", X"01a4", X"fbd3", X"001c", X"0157", X"ff68", X"0113", X"0807", X"fef3", X"038d", X"fd3d", X"01c0",
                                                        X"0d12", X"fd6f", X"f2bf", X"0660", X"025d", X"00e3", X"02bf", X"f891", X"fa81", X"05a1", X"f853", X"08ef", X"018f", X"fde4",
                                                        X"04c6", X"02e5", X"0b04", X"ff42", X"f407", X"044a", X"0494", X"fd23", X"f9e5", X"0397", X"0161", X"049c", X"fc03", X"0b13",
                                                        X"030e", X"0695", X"0572", X"fd72", X"08af", X"089b", X"f0dc", X"053f", X"070c", X"022b", X"f9a1", X"0378", X"fa36", X"06e1",
                                                        X"0145", X"0842", X"032a", X"01e7", X"ff65", X"ff55", X"1098", X"054b", X"f900", X"04c6", X"ff11", X"fd18", X"fc9c", X"10fd",
                                                        X"fbbd", X"00da", X"0147", X"0a87", X"00e6", X"062e", X"03c6", X"fff4", X"0d8e", X"041e", X"fe3c", X"030e", X"058d", X"0406",
                                                        X"fc5b", X"0d9c", X"0553", X"0125", X"0205", X"03ac", X"f995", X"05c0", X"fd84", X"fd39", X"1074", X"fea1", X"ff50", X"fe24",
                                                        X"04bc", X"04fc", X"003d", X"08af", X"05bc", X"02b2", X"023d", X"fd5c", X"fdc4", X"f8f1", X"ffad", X"02b0", X"fd08", X"0307",
                                                        X"0b72", X"fe38", X"0049", X"fd85", X"0a25", X"0c30", X"0203", X"ff77", X"0694", X"fceb", X"feb5", X"f94f", X"f348", X"0004",
                                                        X"ff90", X"089a", X"088b", X"0616", X"00a8", X"fcb7", X"0469", X"f76f", X"08ee", X"fd4e", X"01ac", X"f4e2", X"0108", X"f78a",
                                                        X"ec0e", X"035a", X"0374", X"fdf4", X"fd6b", X"0424", X"fb6e", X"0661", X"084a", X"d265", X"044b", X"03e9", X"fdee", X"f968",
                                                        X"032b", X"ff1e", X"e396", X"03f5", X"febe", X"fc6b", X"00fd", X"0163", X"f8c0", X"0139", X"071f", X"ced7", X"07fe", X"fda8",
                                                        X"fe91", X"f8ae", X"02d6", X"f6d9", X"e910", X"0044", X"f841", X"fbec", X"fd95", X"033f", X"01cb", X"fb6a", X"06a6", X"d843",
                                                        X"0b19", X"fd07", X"fff9", X"f77e", X"07de", X"fef0", X"f414", X"00ed", X"03c5", X"fe7c", X"03df", X"011b", X"f88d", X"f8e8",
                                                        X"0955", X"da25", X"05ee", X"ff69", X"015f", X"fa54", X"065c", X"0154", X"fe10", X"0054", X"1699", X"0297", X"0859", X"0302",
                                                        X"03a7", X"004b", X"0472", X"f3f3", X"0b08", X"0255", X"03e2", X"fe5b", X"01d0", X"0746", X"ff6d", X"fe3e", X"0316", X"032c",
                                                        X"062c", X"fb34", X"020e", X"fc9d", X"fdc5", X"fef0", X"fe05", X"ff04", X"067c", X"02f0", X"f8a0", X"f98a", X"ff65", X"fd66",
                                                        X"0c1c", X"0251", X"067e", X"00e1", X"ff4f", X"fb83", X"fc7b", X"0abd", X"ffb4", X"008b", X"fe39", X"0676", X"0068", X"0385",
                                                        X"0006", X"fe80", X"14ba", X"0687", X"fed1", X"ff4c", X"0595", X"f807", X"002d", X"0706", X"00c5", X"008b", X"fb71", X"09cb",
                                                        X"fd5d", X"003d", X"0406", X"fc90", X"0c8a", X"055f", X"f661", X"ffa2", X"06e9", X"feb3", X"f462", X"ff89", X"ff62", X"0152",
                                                        X"fde4", X"06f2", X"015b", X"ff6d", X"fa17", X"013d", X"0648", X"0124", X"eb1b", X"0239", X"0080", X"026f", X"f6cd", X"ea6a",
                                                        X"f8c4", X"00e4", X"fbc6", X"0f31", X"fcf0", X"0072", X"017e", X"00d5", X"06ed", X"015e", X"f2bf", X"fc92", X"0987", X"fb56",
                                                        X"0239", X"f8ae", X"00b4", X"0141", X"0148", X"07a2", X"feda", X"07fa", X"00fb", X"fc73", X"0d37", X"fb47", X"fa8a", X"04df",
                                                        X"073e", X"fd30", X"f78b", X"fdb7", X"03b3", X"018e", X"072c", X"07e4", X"02bf", X"f380", X"0203", X"ff95", X"05f1", X"0207",
                                                        X"037e", X"048c", X"0547", X"fc59", X"fd6f", X"0044", X"fcd2", X"01c9", X"015f", X"0068", X"0332", X"fb9e", X"02d3", X"fd3c",
                                                        X"0fc4", X"0338", X"0202", X"0042", X"007f", X"0653", X"fd9d", X"0154", X"0275", X"014d", X"0344", X"f7c8", X"ffd1", X"0699",
                                                        X"fb6c", X"0076", X"0e24", X"fd62", X"fd59", X"03ab", X"033f", X"08a9", X"03be", X"ec7c", X"0369", X"ff70", X"ff51", X"fe0e",
                                                        X"fa89", X"f999", X"f0da", X"0310", X"07a0", X"0009", X"0697", X"0471", X"faf5", X"fed1", X"098f", X"e26a", X"01e8", X"f9ef",
                                                        X"fba8", X"f9d8", X"fd33", X"f4dd", X"ec25", X"fe98", X"09ce", X"01c7", X"032b", X"0166", X"f825", X"037a", X"0ee3", X"e8c3",
                                                        X"072c", X"019d", X"0428", X"f81d", X"00b9", X"fdb9", X"ea5f", X"0435", X"1847", X"00e7", X"fdda", X"0645", X"f939", X"031e",
                                                        X"0657", X"d6a6", X"0482", X"fc8a", X"02dc", X"fc14", X"0110", X"f6fd", X"e0a3", X"03a3", X"15c1", X"00d4", X"02ed", X"02b3",
                                                        X"f9ba", X"fd63", X"03b8", X"d2bd", X"0481", X"fc1f", X"02eb", X"f408", X"0173", X"f79c", X"eef0", X"00a5", X"fd4d", X"06e0",
                                                        X"0220", X"03ee", X"00a6", X"005d", X"06d3", X"ed96", X"0b06", X"fd33", X"0553", X"fe1f", X"02a8", X"06f9", X"f766", X"ff40",
                                                        X"038a", X"01fd", X"0ae7", X"faa7", X"fccd", X"fcdb", X"0551", X"ea35", X"01df", X"fbc6", X"03d2", X"0443", X"fe17", X"f751",
                                                        X"043d", X"fd72", X"01e0", X"01c9", X"fe94", X"fca3", X"ffd6", X"ffb6", X"05ef", X"fd02", X"f756", X"fef9", X"00c6", X"01ed",
                                                        X"0457", X"03d7", X"02ff", X"fff7", X"0dbc", X"fd31", X"f6be", X"00e8", X"03ed", X"fa1c", X"fe4c", X"0814", X"fca8", X"0243",
                                                        X"0097", X"02a0", X"0386", X"00f4", X"00ec", X"fd1e", X"0da2", X"0091", X"f79a", X"0062", X"03eb", X"fc4e", X"fc64", X"fe68",
                                                        X"ff0b", X"fc86", X"fd07", X"08fc", X"024b", X"f776", X"fb27", X"fbfc", X"08d0", X"0223", X"eff7", X"fee2", X"fe4b", X"fc8f",
                                                        X"fad9", X"f5ae", X"ffe2", X"015f", X"fdf2", X"0a4e", X"fede", X"ff8d", X"ff39", X"01bf", X"0208", X"ffd7", X"f7b7", X"ffc1",
                                                        X"0252", X"fe6b", X"fa92", X"f377", X"fd47", X"0129", X"ff01", X"0c73", X"ff79", X"fa8c", X"0661", X"fed4", X"1564", X"0238",
                                                        X"f5c9", X"06c3", X"ffdb", X"fdc4", X"011a", X"f98f", X"fbd9", X"ffbf", X"fcd4", X"09c3", X"fc79", X"f803", X"ff41", X"fac0",
                                                        X"0c5d", X"fdbf", X"ffd7", X"038a", X"06c0", X"fb0a", X"faaa", X"015f", X"fa39", X"0013", X"0407", X"07f4", X"faaf", X"fc57",
                                                        X"fbd8", X"fa30", X"0d73", X"008e", X"0714", X"0055", X"ff5d", X"f825", X"fd1a", X"0ccb", X"fdb4", X"048f", X"07bc", X"048a",
                                                        X"fc06", X"f50e", X"ffd9", X"fc51", X"0416", X"fcba", X"fdc6", X"0016", X"00a6", X"0349", X"00b6", X"055c", X"0128", X"0628",
                                                        X"00ce", X"011f", X"0114", X"0062", X"f78e", X"0388", X"0412", X"ffdf", X"04b7", X"0080", X"f9e3", X"045b", X"09a7", X"f29e",
                                                        X"05dd", X"0016", X"041c", X"fa5f", X"0410", X"ff7b", X"f235", X"0340", X"02b8", X"fff1", X"fc71", X"0303", X"fe13", X"045e",
                                                        X"03a8", X"ed76", X"0468", X"fe4f", X"fff4", X"f50a", X"04e8", X"fff6", X"e7de", X"021e", X"10f8", X"fee7", X"fbd6", X"0141",
                                                        X"fa03", X"fe75", X"099f", X"e162", X"0a0c", X"fc19", X"ff45", X"f0c7", X"0675", X"f962", X"e429", X"00a2", X"0251", X"ffb9",
                                                        X"02c6", X"01e4", X"00fd", X"ffdb", X"0714", X"dfb6", X"0907", X"020b", X"fdde", X"f348", X"fb67", X"fa42", X"e98f", X"fde4",
                                                        X"0a19", X"fd1a", X"042a", X"03be", X"00b8", X"0080", X"0427", X"ce80", X"0577", X"f7a7", X"fe63", X"f809", X"fe76", X"fd71",
                                                        X"f3a1", X"01ff", X"0a1c", X"fead", X"01cb", X"038c", X"0329", X"fe0d", X"05d3", X"d4e4", X"036c", X"fdbe", X"0371", X"f842",
                                                        X"fdf3", X"0472", X"f949", X"fef3", X"00c5", X"fcba", X"ff53", X"00f1", X"fb66", X"fd84", X"04e0", X"ecce", X"0195", X"fc4f",
                                                        X"03bd", X"03fe", X"ffd7", X"feed", X"06a3", X"fca1", X"f85c", X"fd1b", X"0586", X"fed3", X"0153", X"faef", X"ff03", X"0618",
                                                        X"fedf", X"0256", X"ff51", X"ff11", X"fe1f", X"ffd8", X"003c", X"01bd", X"0b04", X"fb93", X"fdf5", X"00d6", X"01c2", X"0176",
                                                        X"03b6", X"f976", X"00c1", X"0115", X"01fe", X"09ed", X"01f5", X"fb66", X"027e", X"fdb2", X"0a83", X"0193", X"01bb", X"ff2a",
                                                        X"00ac", X"fb71", X"f467", X"fc49", X"fd67", X"fb91", X"fedb", X"09b9", X"fa66", X"fa22", X"fd70", X"fefb", X"ff83", X"001a",
                                                        X"e8fe", X"0524", X"fed9", X"0042", X"fa99", X"f683", X"fa98", X"fd02", X"01aa", X"0658", X"041c", X"002f", X"01fa", X"fd94",
                                                        X"f9b8", X"f905", X"f162", X"01a7", X"fe08", X"ff44", X"f956", X"f8b4", X"ff9c", X"0341", X"fa96", X"03ae", X"00ca", X"fefc",
                                                        X"017a", X"fd7f", X"081d", X"fd67", X"f4e9", X"ffcf", X"011a", X"fa76", X"02ac", X"004e", X"fdf0", X"ff62", X"0215", X"0552",
                                                        X"00f9", X"fb81", X"03de", X"ffbc", X"0dd4", X"f92d", X"fe7e", X"fc70", X"05fc", X"fc92", X"fed4", X"0756", X"fd7f", X"01ef",
                                                        X"0223", X"05da", X"0121", X"ff78", X"0466", X"fda8", X"0510", X"0085", X"fdc5", X"fd6c", X"04cb", X"016c", X"f750", X"1113",
                                                        X"ffe1", X"ffce", X"0203", X"03be", X"ff94", X"fb9d", X"fe20", X"fb4b", X"0ce9", X"0425", X"05ad", X"ff5f", X"08d9", X"07d6",
                                                        X"ffd3", X"07b7", X"047f", X"0038", X"fe46", X"f8f3", X"fd48", X"fa44", X"f7c5", X"0269", X"fdbd", X"016e", X"0267", X"024d",
                                                        X"fba2", X"ffad", X"0877", X"ff66", X"0388", X"fb8d", X"0037", X"f7d5", X"01f5", X"0188", X"edd0", X"017d", X"01a4", X"00e3",
                                                        X"023f", X"fe8f", X"fcff", X"029c", X"090d", X"f217", X"0ab8", X"fc3c", X"026c", X"f100", X"02f4", X"f64f", X"e9a1", X"0422",
                                                        X"0b75", X"fd66", X"fd51", X"fe8b", X"fb07", X"fc8d", X"08ac", X"e24f", X"08b1", X"f9ed", X"016e", X"eef9", X"01d3", X"ee51",
                                                        X"e818", X"00df", X"0787", X"fc35", X"ff98", X"04cc", X"f89d", X"fdcd", X"052d", X"da0d", X"0b01", X"fba0", X"fff3", X"f69c",
                                                        X"fbae", X"f586", X"f573", X"00cb", X"09c6", X"fe40", X"04be", X"052a", X"feb5", X"fcad", X"068a", X"e4c7", X"0733", X"ff34",
                                                        X"fd55", X"f4fc", X"fb97", X"fc17", X"f495", X"00e7", X"069e", X"f910", X"0209", X"0001", X"fd49", X"05b9", X"0351", X"e2fd",
                                                        X"0472", X"feed", X"0322", X"f4ef", X"0384", X"feb4", X"f5a7", X"fdf3", X"0c2a", X"febf", X"058a", X"fe35", X"01c0", X"fd0e",
                                                        X"04be", X"fc4c", X"037a", X"fff0", X"00b5", X"0587", X"fd84", X"005c", X"0010", X"01bd", X"0632", X"04f1", X"0582", X"f7c2",
                                                        X"0361", X"008b", X"fe23", X"03f8", X"0287", X"003a", X"ffc4", X"0853", X"fdd7", X"f33a", X"031f", X"fe1c", X"f5e0", X"03af",
                                                        X"0334", X"ffac", X"0864", X"02e1", X"00a4", X"fecd", X"02a0", X"0143", X"fc57", X"0475", X"fe38", X"049b", X"072a", X"ff5f",
                                                        X"f459", X"feff", X"fc27", X"fde9", X"00df", X"f324", X"fc58", X"0387", X"0107", X"0017", X"fd51", X"074f", X"fff3", X"f78f",
                                                        X"0521", X"fe47", X"0d67", X"017f", X"f343", X"020a", X"0026", X"012c", X"fdad", X"fb39", X"fab2", X"057a", X"0101", X"09a3",
                                                        X"034c", X"018a", X"0155", X"003f", X"07ca", X"007c", X"e9ee", X"0177", X"01d2", X"039b", X"0287", X"f8be", X"fd7a", X"02b3",
                                                        X"fc86", X"0469", X"028f", X"fbde", X"01f2", X"fbc2", X"0973", X"fe32", X"f35b", X"016f", X"005d", X"fed1", X"f8c0", X"0553",
                                                        X"00eb", X"00c5", X"0026", X"0a02", X"fc27", X"f8c0", X"077b", X"fc7f", X"0982", X"ff2a", X"f5a0", X"fe6f", X"03ff", X"fd6a",
                                                        X"011f", X"0a35", X"fcbe", X"0204", X"010a", X"003d", X"fcec", X"002d", X"004b", X"fefc", X"1166", X"02a9", X"03d6", X"027a",
                                                        X"ff31", X"026a", X"076a", X"fce8", X"002b", X"0463", X"032f", X"0765", X"05b0", X"fcf8", X"001a", X"00ce", X"1bed", X"0528",
                                                        X"fcad", X"068c", X"fee8", X"0113", X"fd66", X"041a", X"033d", X"0373", X"0459", X"fe0f", X"0197", X"fd5e", X"fb65", X"049f",
                                                        X"0645", X"030a", X"017d", X"03e5", X"015a", X"ff96", X"0424", X"fb75", X"0854", X"02ca", X"0166", X"f8ac", X"017c", X"0926",
                                                        X"ee53", X"011e", X"0bdc", X"ff7b", X"0283", X"06ae", X"fbf3", X"fc4c", X"08df", X"ee85", X"08e9", X"fef5", X"0180", X"f77d",
                                                        X"fe69", X"f44f", X"ee5c", X"0566", X"0685", X"023e", X"ffed", X"03cd", X"f36b", X"feca", X"0979", X"ed1a", X"07e0", X"ff9f",
                                                        X"0036", X"f3d1", X"064b", X"f0e0", X"f5b6", X"0342", X"12a7", X"fd47", X"0501", X"0659", X"f8a6", X"0146", X"0bf6", X"cc90",
                                                        X"0c2e", X"fa96", X"0314", X"f2fe", X"0ac6", X"f4b8", X"ec70", X"0375", X"020a", X"fd4d", X"0642", X"0032", X"fa0d", X"00a8",
                                                        X"fded", X"d332", X"062c", X"fb2f", X"0127", X"f804", X"fe31", X"f644", X"e6d2", X"0269", X"090f", X"01fe", X"0516", X"fc7a",
                                                        X"fea3", X"fbf7", X"0db8", X"df1f", X"0606", X"fc29", X"fc2b", X"03d0", X"f984", X"fd58", X"fb33", X"fded", X"fe4d", X"0759",
                                                        X"06da", X"fd29", X"ff61", X"fe1e", X"0b61", X"f834", X"01d2", X"02a7", X"fb45", X"fc93", X"fbaf", X"fe95", X"0363", X"fa74",
                                                        X"04fd", X"feb1", X"048f", X"fee4", X"0383", X"ff03", X"0461", X"ff5f", X"0160", X"00fa", X"00b6", X"0914", X"f9dc", X"fb06",
                                                        X"044a", X"fbd6", X"022b", X"0273", X"0175", X"0074", X"0a45", X"fd09", X"fd8a", X"fc5a", X"fc19", X"00a8", X"06e1", X"098e",
                                                        X"fdc7", X"f8c9", X"00ce", X"f9be", X"fe6e", X"0625", X"ff5c", X"fc86", X"01f9", X"fd3a", X"fa0c", X"ffb4", X"fc41", X"0736",
                                                        X"0201", X"03f3", X"050b", X"fe51", X"ff60", X"033f", X"0d54", X"03f2", X"eb81", X"0084", X"01d0", X"028f", X"fd40", X"f970",
                                                        X"fdbc", X"0183", X"036b", X"0432", X"0080", X"01c7", X"fe4b", X"008d", X"026b", X"ff1c", X"f06e", X"024e", X"0160", X"0561",
                                                        X"030f", X"fc41", X"0202", X"fbbe", X"0070", X"0930", X"0131", X"f02b", X"ffab", X"fb86", X"0255", X"0358", X"022c", X"010f",
                                                        X"fc32", X"f67f", X"fe9d", X"0508", X"f7f1", X"ff95", X"01be", X"0d49", X"0052", X"fabe", X"0721", X"fb73", X"0a8a", X"06ca",
                                                        X"fe73", X"fe10", X"019d", X"fb97", X"f53f", X"0296", X"f73f", X"feb4", X"fc48", X"06d9", X"fb97", X"f926", X"05d1", X"fc83",
                                                        X"09e8", X"02e0", X"fd71", X"fd99", X"04b2", X"fc85", X"fb4a", X"1e48", X"fbcb", X"027d", X"0034", X"f983", X"0073", X"fc33",
                                                        X"f799", X"fac6", X"08bc", X"ff19", X"01ae", X"fd5d", X"0042", X"05f9", X"f52c", X"0e1e", X"011c", X"0288", X"fbaa", X"f5fa",
                                                        X"ff87", X"0660", X"fa73", X"fee2", X"0aaf", X"0103", X"0702", X"f8ac", X"fe88", X"fdbc", X"ff39", X"082d", X"03a2", X"fcf4",
                                                        X"05f3", X"ff0d", X"fda1", X"fb46", X"ef2d", X"042d", X"0ccb", X"fe0e", X"0675", X"fd5b", X"fb99", X"0910", X"0578", X"fb2d",
                                                        X"0aa1", X"fa07", X"00d7", X"f460", X"f96d", X"052f", X"e75d", X"0206", X"00ef", X"f84b", X"0014", X"06fa", X"f4d4", X"02f4",
                                                        X"054f", X"edce", X"08e0", X"fa86", X"0385", X"f1c1", X"0580", X"fda6", X"e6b2", X"0557", X"03de", X"ff7a", X"021e", X"030a",
                                                        X"f910", X"fb60", X"0b23", X"d874", X"0d6a", X"fe5a", X"ff2a", X"ee8b", X"0334", X"f7f6", X"e87e", X"007d", X"0945", X"00f4",
                                                        X"0143", X"0535", X"f982", X"048e", X"0287", X"d8a7", X"08f4", X"0054", X"fc47", X"f4cd", X"fe88", X"f80e", X"f2fa", X"fe99",
                                                        X"fc49", X"fee5", X"0d00", X"012d", X"fc52", X"fd26", X"03e5", X"de47", X"0450", X"fe3c", X"fe84", X"029b", X"fc9b", X"fb7f",
                                                        X"fea1", X"020a", X"03ba", X"0434", X"06a7", X"ffeb", X"fc6b", X"0133", X"0202", X"fd40", X"03ae", X"01a8", X"0205", X"09da",
                                                        X"068c", X"fc41", X"036e", X"fd1d", X"06e9", X"047d", X"01f5", X"006b", X"01d3", X"f77e", X"09a9", X"060c", X"ffee", X"0100",
                                                        X"037e", X"0438", X"fe34", X"070b", X"01ba", X"fdd1", X"fda9", X"0179", X"f7bb", X"fd7d", X"0268", X"fb97", X"0099", X"1251",
                                                        X"facf", X"010e", X"faab", X"0788", X"fc70", X"0128", X"0390", X"f8d5", X"fc18", X"039b", X"ec07", X"fccb", X"056d", X"020f",
                                                        X"fdcb", X"fe98", X"f811", X"05af");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"05af";
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

