-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block444.vhd
-- Created: 2024-11-04 16:44:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block444
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage88/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block444 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block444;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block444 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fb0d", X"06c3", X"00d3", X"f2cd", X"0261", X"f55e",
                                                        X"0180", X"fdb2", X"049f", X"fed6", X"ff16", X"f888", X"f675", X"0335", X"fea6", X"f873", X"ff05", X"040b", X"0295", X"ec7f",
                                                        X"fff3", X"f9f4", X"00bc", X"fee5", X"0a26", X"fc92", X"fd05", X"ffbd", X"f68c", X"0174", X"ff47", X"f926", X"fd85", X"fe9a",
                                                        X"02d9", X"f499", X"0580", X"f920", X"f876", X"fc00", X"04b2", X"ffef", X"fc6c", X"fc81", X"f9c0", X"f9ac", X"0087", X"01e4",
                                                        X"fe37", X"0285", X"f9f9", X"fafb", X"feda", X"fba8", X"f965", X"000e", X"fe24", X"fe97", X"f9f1", X"f4cc", X"f456", X"02d3",
                                                        X"fe63", X"f948", X"ff46", X"017a", X"0054", X"ff58", X"fb3b", X"ff59", X"fe82", X"fa1f", X"0164", X"ff4f", X"ff7e", X"f790",
                                                        X"fac5", X"fe9c", X"0569", X"fb06", X"fbe5", X"f980", X"03fb", X"f54a", X"fe8c", X"fd5d", X"fa03", X"fa78", X"0156", X"fd6b",
                                                        X"01a2", X"fcab", X"fbea", X"fff9", X"05ac", X"fe20", X"ff28", X"00fc", X"ff63", X"f6b8", X"fe5d", X"fd3c", X"fdfe", X"fb02",
                                                        X"0160", X"0487", X"fc7c", X"025f", X"f990", X"f8d3", X"02e4", X"f9cd", X"ffe9", X"0160", X"0095", X"fc57", X"0027", X"fd15",
                                                        X"fc93", X"fe81", X"0401", X"04dc", X"0082", X"fd3c", X"008d", X"fbc2", X"03e5", X"fe02", X"ff5f", X"0140", X"fb90", X"f828",
                                                        X"06e0", X"fb75", X"fb27", X"fe01", X"fd74", X"055c", X"fd7b", X"0157", X"fbda", X"fa9e", X"0393", X"ffee", X"014c", X"01f6",
                                                        X"014f", X"f967", X"0277", X"0149", X"007e", X"fb97", X"0345", X"095c", X"fc13", X"ff54", X"0314", X"fe3e", X"05d5", X"0490",
                                                        X"021b", X"0501", X"089f", X"fe9a", X"036f", X"ff49", X"0176", X"facb", X"019c", X"0bf3", X"ff40", X"fded", X"02ef", X"008e",
                                                        X"025d", X"04f9", X"0521", X"0280", X"020c", X"f8f1", X"02c3", X"fd02", X"02c7", X"feb7", X"0766", X"0f4b", X"ffcb", X"04b5",
                                                        X"f9b1", X"fe57", X"09da", X"0572", X"0319", X"061e", X"00ae", X"fb56", X"063b", X"0318", X"0204", X"fd14", X"05c6", X"0a84",
                                                        X"011f", X"f5bd", X"fe79", X"fc03", X"0358", X"fe5a", X"00b5", X"07a4", X"0005", X"fc4c", X"07f3", X"fe65", X"04e2", X"0073",
                                                        X"01cc", X"0a7d", X"08af", X"f8b7", X"03fa", X"fff7", X"0a8e", X"ffe7", X"03b1", X"09f9", X"07b5", X"02ee", X"0931", X"fe1c",
                                                        X"0b4c", X"026d", X"040d", X"0ba2", X"039d", X"fcfd", X"058d", X"044d", X"069d", X"04c6", X"0446", X"037d", X"08b7", X"0154",
                                                        X"0838", X"0370", X"0cb8", X"0088", X"0812", X"0b57", X"0146", X"fd8a", X"065c", X"0797", X"0ad6", X"0521", X"0541", X"0787",
                                                        X"0b17", X"f916", X"0e1c", X"0003", X"083b", X"04b1", X"05f4", X"0ad5", X"0137", X"0287", X"08cf", X"0367", X"08b5", X"0595",
                                                        X"0409", X"0c4d", X"0377", X"019a", X"0eaa", X"000a", X"153c", X"00ef", X"07b6", X"0e1f", X"051a", X"0964", X"07dc", X"0276",
                                                        X"086a", X"04a9", X"fee5", X"09dc", X"036f", X"fc6f", X"0ce1", X"0087", X"18d6", X"01f3", X"078f", X"0de2", X"087e", X"f9b9",
                                                        X"0763", X"fe76", X"090e", X"094a", X"0421", X"07ec", X"0bb2", X"fc9d", X"0dbf", X"015e", X"1377", X"02c0", X"0880", X"0ce9",
                                                        X"043d", X"f966", X"056f", X"fe65", X"078c", X"07cd", X"0172", X"08eb", X"07ec", X"f9eb", X"0cb8", X"01ee", X"13db", X"fd88",
                                                        X"023f", X"0c87", X"016e", X"046c", X"0828", X"082d", X"03d2", X"04c4", X"fd64", X"00f9", X"0343", X"f98b", X"0a7d", X"00c4",
                                                        X"1743", X"fd43", X"0395", X"0a01", X"047d", X"fd1b", X"04ca", X"ffc2", X"07b0", X"036c", X"011d", X"03b5", X"0512", X"fba4",
                                                        X"07c7", X"0055", X"1bf3", X"00a0", X"ffa0", X"083f", X"041d", X"01f6", X"fc0e", X"ff6c", X"0793", X"0165", X"0676", X"029f",
                                                        X"06f8", X"f54c", X"0798", X"00d6", X"14ee", X"ff09", X"080f", X"06d3", X"0236", X"fa5b", X"ffd2", X"0507", X"06c9", X"fe40",
                                                        X"015a", X"0231", X"009f", X"ed15", X"0304", X"ffc6", X"09e6", X"0014", X"089c", X"0509", X"fe00", X"fdbd", X"0131", X"feca",
                                                        X"0519", X"03de", X"00d6", X"fe5f", X"0131", X"f612", X"035b", X"fe2f", X"0a85", X"ffb7", X"00c4", X"05fa", X"00e5", X"0474",
                                                        X"fed8", X"fd64", X"06c8", X"02e8", X"04c9", X"018f", X"056d", X"0055", X"ff30", X"fee5", X"0aef", X"fc42", X"04e7", X"fe5c",
                                                        X"ff49", X"f5fe", X"0087", X"ff4e", X"005b", X"ff99", X"fe1d", X"01ea", X"0082", X"fcfd", X"f9e2", X"f8e9", X"02b1", X"fbbd",
                                                        X"ffcd", X"fe45", X"faea", X"fb7e", X"f6e1", X"f676", X"fd30", X"fc11", X"ffd7", X"ffc0", X"020a", X"f6af", X"fd94", X"f922",
                                                        X"fdab", X"036f", X"fc60", X"f7b7", X"fc2f", X"fa3c", X"f0b3", X"fadd", X"f9f1", X"0022", X"fa72", X"0155", X"fd9b", X"f8dd",
                                                        X"015e", X"fa86", X"fe75", X"008d", X"ffec", X"fa20", X"fdb7", X"f847", X"fd1d", X"f8c9", X"fb3e", X"f784", X"fe99", X"fb4e",
                                                        X"f755", X"f605", X"f5fb", X"f723", X"fc3a", X"fa97", X"fe8b", X"f56d", X"fd34", X"fe75", X"fa21", X"f0ec", X"fe7b", X"fbef",
                                                        X"f8f2", X"0023", X"fa0c", X"f81f", X"f5aa", X"f9af", X"0099", X"ffb7", X"039f", X"f608", X"fe9c", X"fdbc", X"fb4a", X"f5f6",
                                                        X"fabe", X"f64f", X"fee6", X"053e", X"fb5e", X"f78d", X"ef85", X"fb37", X"ed8e", X"0102", X"00d4", X"f676", X"fb07", X"f5cf",
                                                        X"f7dc", X"f6b8", X"fa48", X"f641", X"f8d6", X"01d2", X"f6d7", X"f4a3", X"f6a4", X"f875", X"eff3", X"006a", X"fbd8", X"f292",
                                                        X"fc9d", X"ff9c", X"f956", X"f48d", X"fd75", X"f720", X"fe62", X"ff70", X"f805", X"fd01", X"f748", X"f6a2", X"eb9d", X"fb5d",
                                                        X"fe01", X"f64d", X"feac", X"f53c", X"f720", X"ee34", X"0048", X"fb9c", X"fa43", X"0158", X"f59b", X"00e5", X"f5f7", X"f9ba",
                                                        X"e259", X"002f", X"fb95", X"f667", X"fb6d", X"fd24", X"fe84", X"f2a4", X"fa1e", X"fee0", X"fc2c", X"fe66", X"017a", X"f48f",
                                                        X"fa28", X"f9d8", X"f1bc", X"fa35", X"01e2", X"f76e", X"fd01", X"0373", X"f7c6", X"f7e2", X"fad6", X"fd27", X"fcc5", X"fbbd",
                                                        X"0151", X"fa0e", X"f7c8", X"f6f2", X"ee47", X"fd49", X"03e9", X"fc04", X"f886", X"ff03", X"f8e4", X"fe17", X"011b", X"faf6",
                                                        X"fc26", X"0003", X"fb66", X"fe0a", X"f855", X"fa5f", X"eaaf", X"fc1a", X"fd99", X"fbed", X"fad4", X"ff32", X"fa2e", X"03a6",
                                                        X"04c4", X"fcd1", X"fc8a", X"0386", X"0204", X"f8c4", X"fe65", X"fd92", X"f9a4", X"fd99", X"fc5c", X"fd48", X"f98f", X"fb1e",
                                                        X"01e5", X"fdfa", X"ffc2", X"fac2", X"fd3b", X"0063", X"fa6f", X"00d4", X"0033", X"ffa2", X"ee10", X"01c7", X"ffc1", X"0557",
                                                        X"f8cb", X"fa2e", X"02c4", X"01a6", X"0324", X"fd21", X"fe66", X"fe71", X"f8aa", X"f7b4", X"0693", X"02b9", X"fd59", X"ff54",
                                                        X"036b", X"09bb", X"fab5", X"04b2", X"021c", X"015c", X"0946", X"02a4", X"049a", X"ffb0", X"0858", X"03a7", X"051b", X"00bb",
                                                        X"0678", X"fa7c", X"ffe8", X"0a3e", X"00c0", X"0056", X"01f2", X"0894", X"0830", X"0521", X"00a1", X"0398", X"06c2", X"f252",
                                                        X"0755", X"fe9e", X"0a39", X"fe32", X"003f", X"0dd7", X"0304", X"fded", X"0094", X"08ca", X"06da", X"039a", X"0388", X"06d9",
                                                        X"0584", X"02e0", X"0b99", X"0017", X"0b8b", X"02c5", X"0a59", X"0f31", X"0507", X"ffae", X"0463", X"05be", X"0d06", X"053e",
                                                        X"045d", X"086a", X"00a0", X"ff2e", X"0dad", X"ff95", X"0b4f", X"011b", X"0942", X"1121", X"08a6", X"fd29", X"0627", X"0b65",
                                                        X"0e92", X"0697", X"036f", X"09a8", X"03d7", X"0094", X"0ad3", X"06dd", X"0f73", X"009a", X"0646", X"127e", X"07b9", X"fd99",
                                                        X"0722", X"077b", X"0a8c", X"048a", X"043f", X"0ab7", X"1100", X"0459", X"0ba5", X"025b", X"1c61", X"fdab", X"0321", X"120d",
                                                        X"0542", X"0090", X"07db", X"04d9", X"0d1e", X"0882", X"00f4", X"06ef", X"0e1d", X"ff43", X"1108", X"00cc", X"1ac8", X"fd99",
                                                        X"046b", X"0ef4", X"05bd", X"0574", X"04dc", X"f9a7", X"0cdf", X"0873", X"0634", X"06f9", X"07e4", X"0019", X"11e7", X"0206",
                                                        X"10fb", X"0135", X"ffe5", X"11fa", X"03c0", X"0109", X"07f7", X"0528", X"0c50", X"0737", X"00af", X"0a9d", X"0825", X"f8cd",
                                                        X"0d89", X"0404", X"14ae", X"0311", X"0077", X"138e", X"0139", X"03aa", X"061c", X"0407", X"0c8f", X"0160", X"02da", X"039e",
                                                        X"0d1a", X"f957", X"085e", X"0298", X"1bd3", X"0455", X"0622", X"1091", X"03c2", X"0170", X"014e", X"01fd", X"075f", X"050e",
                                                        X"064c", X"07fa", X"0dc9", X"f8fd", X"0a1f", X"0126", X"1546", X"fd81", X"06b9", X"0a94", X"056b", X"fd68", X"05ad", X"0768",
                                                        X"0c61", X"0381", X"0358", X"07d5", X"0bb4", X"f80d", X"0462", X"02bc", X"0e1f", X"fc19", X"05fe", X"092f", X"fdd8", X"fe31",
                                                        X"02cc", X"08ee", X"07c0", X"fe6c", X"04d9", X"057d", X"06e2", X"f70e", X"0a28", X"fce0", X"0d40", X"ff93", X"02d2", X"071d",
                                                        X"fd93", X"fcc0", X"00b9", X"fefd", X"04ac", X"ff4c", X"020a", X"fd75", X"02df", X"fa9b", X"02b0", X"fbe2", X"0abb", X"012a",
                                                        X"0104", X"036d", X"fbc2", X"f5ab", X"fd0a", X"04d4", X"ff2e", X"fe8c", X"02e6", X"021a", X"00fb", X"fc46", X"044e", X"fda3",
                                                        X"0d01", X"0005", X"0189", X"00ec", X"057e", X"f7d1", X"fa40", X"fec8", X"fec0", X"ffde", X"ffcf", X"fd6c", X"0604", X"fa64",
                                                        X"fc59", X"fc80", X"09b8", X"f990", X"02ab", X"fc0c", X"022c", X"0432", X"fa69", X"f983", X"018e", X"ff67", X"fc12", X"fbe5",
                                                        X"0206", X"f295", X"fe53", X"fadb", X"033b", X"fe98", X"0a0e", X"ff56", X"fec5", X"fd25", X"fab4", X"fc19", X"0334", X"fe51",
                                                        X"0111", X"fe97", X"fb80", X"f5ef", X"faa7", X"fa8a", X"013c", X"fbf1", X"ffff", X"f9e3", X"fdf5", X"0109", X"f4df", X"f761",
                                                        X"035b", X"fb10", X"fd2e", X"fa04", X"fb40", X"f317", X"f90e", X"f74b", X"02f6", X"f991", X"0187", X"f7c2", X"f882", X"fd1c",
                                                        X"fb26", X"f765", X"fe3a", X"fb41", X"f778", X"fadb", X"f56a", X"f5bf", X"fd5d", X"fa15", X"f89d", X"04bd", X"003b", X"fb0c",
                                                        X"fd42", X"f508", X"f9ba", X"fa2b", X"fce1", X"fa6f", X"f760", X"0657", X"fd38", X"fb0a", X"fe6e", X"f838", X"ff12", X"fcda",
                                                        X"01bd", X"f588", X"fc20", X"f7fb", X"f7ed", X"f81e", X"fc50", X"f90c", X"fbfe", X"0246", X"fd6c", X"f518", X"fbaa", X"f74d",
                                                        X"f739", X"fd00", X"00e7", X"fc23", X"fa14", X"f713", X"f761", X"f6e7", X"fe55", X"fba1", X"f965", X"00c2", X"fb89", X"f707",
                                                        X"f911", X"f91d", X"fa21", X"fc59", X"0222", X"fb27", X"fcb8", X"0465", X"fbd6", X"f8d7", X"febd", X"f923", X"fc16", X"0605",
                                                        X"fae5", X"fa87", X"fdd5", X"fd8d", X"f0ba", X"fecd", X"0200", X"fb19", X"fb1b", X"fd23", X"fce2", X"f6bf", X"ff60", X"ff4c",
                                                        X"fd0e", X"01c4", X"fd15", X"ef0e", X"fa34", X"fa59", X"f707", X"f9ef", X"0410", X"007a", X"fcf1", X"fc9e", X"fd02", X"fd27",
                                                        X"ff7f", X"ff9a", X"ff53", X"03fa", X"fe1e", X"fb07", X"0602", X"fd60", X"f980", X"00d3", X"05bb", X"02e6", X"fcfe", X"f4d9",
                                                        X"feba", X"0b04", X"00e3", X"fc2d", X"0233", X"01c4", X"f844", X"f9fd", X"049e", X"fe49", X"f7e1", X"fd96", X"fbb4", X"04d5",
                                                        X"fe38", X"010d", X"00eb", X"00c6", X"0131", X"fec9", X"ffcc", X"fbb5", X"070d", X"f155", X"04fb", X"fa86", X"01d7", X"feb0",
                                                        X"00e6", X"03aa", X"fdb3", X"0063", X"feff", X"02a0", X"03fd", X"0274", X"ffe7", X"02e2", X"00a6", X"fe30", X"0837", X"0146",
                                                        X"fe16", X"fca9", X"0184", X"0805", X"fa10", X"0307", X"0206", X"fe3b", X"0504", X"00b7", X"01dc", X"0349", X"07bf", X"fe09",
                                                        X"04f6", X"017b", X"053c", X"fee6", X"03dd", X"09f0", X"fd79", X"0160", X"0501", X"047d", X"0656", X"011e", X"01f5", X"fc63",
                                                        X"03f8", X"0408", X"096d", X"02b3", X"0f55", X"0229", X"05ee", X"0acf", X"fe19", X"0105", X"03f8", X"01b5", X"0cc3", X"095c",
                                                        X"026f", X"00c9", X"0353", X"fed1", X"0999", X"0200", X"035e", X"ff21", X"05b0", X"09c2", X"004f", X"f6dc", X"0777", X"0018",
                                                        X"0b7c", X"0380", X"0583", X"06d2", X"0441", X"06fa", X"0b3e", X"ff72", X"1058", X"fd85", X"0098", X"0f62", X"00ff", X"f5fa",
                                                        X"020b", X"06d9", X"0590", X"07cd", X"03b8", X"00cd", X"fe98", X"fc49", X"1181", X"027d", X"0815", X"fed0", X"026a", X"10bc",
                                                        X"06e3", X"fa4f", X"0634", X"fb79", X"0cd2", X"06db", X"015d", X"02cb", X"0b03", X"0871", X"0a4b", X"041e", X"1417", X"0366",
                                                        X"ffa0", X"0f8d", X"0659", X"0252", X"0827", X"fcf8", X"0c75", X"086f", X"04f6", X"0dbb", X"0a03", X"f4ef", X"0d5e", X"0216",
                                                        X"1a8c", X"0185", X"06db", X"0ff8", X"076b", X"fe10", X"03c6", X"08e6", X"0d72", X"0454", X"0245", X"0cda", X"0858", X"ffcd",
                                                        X"0d38", X"05ae", X"1b53", X"fed1", X"045b", X"11e2", X"0506", X"f849", X"04ba", X"fe80", X"0ab7", X"01ee", X"0390", X"0d3c",
                                                        X"044d", X"fd67", X"04e7", X"03c3", X"1e25", X"01ef", X"059d", X"1224", X"07f2", X"ff2a", X"0126", X"06cc", X"0d6c", X"0560",
                                                        X"fccb", X"0811", X"0b8a", X"f211", X"0c42", X"ff10", X"1acc", X"0286", X"042d", X"0dda", X"0535", X"05b7", X"0161", X"0d62",
                                                        X"0846", X"0319", X"fe26", X"067f", X"07c3", X"fa75", X"087a", X"ffc4", X"151c", X"fcd8", X"0084", X"0ab6", X"0207", X"0134",
                                                        X"fc32", X"05fc", X"06b1", X"01d1", X"021b", X"0b96", X"02d7", X"eeb2", X"0360", X"0235", X"1609", X"00e4", X"ff69", X"0abc",
                                                        X"01eb", X"fc17", X"049a", X"0602", X"0577", X"03ee", X"01e8", X"09c5", X"00e7", X"00a6", X"061b", X"0158", X"1214", X"01a6",
                                                        X"fe50", X"07fb", X"ff94", X"fb69", X"03cd", X"021e", X"058c", X"0165", X"0270", X"0255", X"fa4a", X"f32b", X"0427", X"fd7d",
                                                        X"1825", X"fe61", X"0217", X"07c1", X"fd48", X"fbea", X"ff67", X"028c", X"06db", X"004c", X"039f", X"0444", X"020a", X"f504",
                                                        X"fa97", X"faf8", X"130f", X"ffe2", X"0332", X"0254", X"fe99", X"f765", X"fa11", X"019b", X"041e", X"fe11", X"fff1", X"04e3",
                                                        X"0690", X"f5e4", X"fc78", X"fb78", X"0eaa", X"0090", X"fcfc", X"0194", X"fea8", X"f9cb", X"0004", X"f398", X"0331", X"fbc4",
                                                        X"ffea", X"0643", X"00ca", X"0298", X"fa80", X"fbcf", X"08b1", X"fc52", X"0018", X"f983", X"fc82", X"f9b0", X"02c5", X"f6e4",
                                                        X"fa7d", X"fa78", X"ff73", X"fc08", X"f9b9", X"f2f5", X"fa30", X"f985", X"011e", X"fce6", X"fcd6", X"fb6f", X"f9cb", X"f9a6",
                                                        X"f8a4", X"f382", X"fcae", X"fa0a", X"fc52", X"fd99", X"0578", X"f023", X"f9aa", X"f534", X"07c8", X"fdbc", X"014f", X"fb49",
                                                        X"ff99", X"fb24", X"f9ce", X"fbed", X"f90b", X"ff00", X"fdda", X"0208", X"094e", X"f57f", X"faf4", X"f85f", X"fba4", X"005b",
                                                        X"026d", X"f714", X"fb90", X"f4db", X"ee43", X"fc99", X"f6c0", X"f85c", X"fa30", X"fb8c", X"fe2c", X"ef5d", X"f5e2", X"f49b",
                                                        X"f80c", X"feb7", X"fcc7", X"f063", X"fbf3", X"f9d6", X"f563", X"fb3b", X"f772", X"f492", X"f61c", X"fc55", X"fea9", X"f747",
                                                        X"f587", X"f38c", X"f54b", X"ff04", X"fd08", X"f0b1", X"f89a", X"f7e8", X"f27a", X"f445", X"fd70", X"f5ce", X"f88d", X"fd18",
                                                        X"f985", X"f649", X"f23f", X"f4d6", X"f799", X"fe87", X"fb67", X"efcc", X"f73e", X"fa42", X"f3f7", X"f58e", X"f7d8", X"f1d6",
                                                        X"f726", X"0080", X"019a", X"f55d", X"f1c9", X"f713", X"ed1b", X"fac5", X"0009", X"edd3", X"f78b", X"f950", X"fa6f", X"f332",
                                                        X"f897", X"f111", X"f704", X"fc0c", X"fd3a", X"f4b2", X"f2aa", X"f5f9", X"ee1f", X"fc9c", X"fd29", X"ee41", X"f95c", X"ff72",
                                                        X"f394", X"fb69", X"f8ba", X"f83d", X"fa55", X"fda2", X"0314", X"fc9b", X"f85e", X"f48c", X"f9ad", X"0405", X"fda1", X"ef4d",
                                                        X"fba6", X"fc87", X"fa8e", X"f559", X"f9d6", X"f9ba", X"fa59", X"02f9", X"ff10", X"fc1a", X"f8ba", X"f408", X"f4c8", X"fece",
                                                        X"0155", X"f15a", X"fd3b", X"fac9", X"fa80", X"f441", X"fd12", X"f71d", X"faa5", X"0141", X"f543", X"f439", X"fb2a", X"f892",
                                                        X"f011", X"fcc1", X"028c", X"f68c", X"feed", X"fba9", X"fb66", X"f622", X"f94b", X"f805", X"fc7e", X"0196", X"01f4", X"0049",
                                                        X"faa8", X"fbb6", X"f51a", X"fd64", X"005b", X"f946", X"fdf3", X"01db", X"f84f", X"f0f2", X"fa22", X"f991", X"0017", X"ff03",
                                                        X"f595", X"fbe7", X"fb99", X"fa85", X"f47f", X"00ac", X"0182", X"fdea", X"fa6a", X"0218", X"f72f", X"f715", X"05dc", X"f7f5",
                                                        X"fc16", X"ff68", X"ff67", X"f715", X"fecb", X"f8a5", X"f1c6", X"fddf", X"0188", X"ffc0", X"f993", X"01b0", X"fb08", X"fb03",
                                                        X"031f", X"fbd1", X"0031", X"fe9c", X"0353", X"f6e0", X"009e", X"fc26", X"f831", X"f9b5", X"fff3", X"0254", X"fcff", X"fb15",
                                                        X"048f", X"fe4a", X"01d0", X"0218", X"0053", X"05eb", X"fc7e", X"f55b", X"02c2", X"fccd", X"05ab", X"f9d5", X"00d8", X"04e3",
                                                        X"fcfc", X"0008", X"03aa", X"046f", X"027d", X"fe85", X"fcf2", X"02eb", X"ffe0", X"054d", X"03ad", X"0006", X"098e", X"ff04",
                                                        X"02ea", X"0c3c", X"fd7b", X"fe95", X"0226", X"004c", X"04e8", X"013a", X"0577", X"025b", X"0436", X"fa8b", X"0580", X"02f9",
                                                        X"0850", X"fedc", X"05ee", X"0ef0", X"023a", X"fe1f", X"0161", X"0146", X"0af8", X"04a5", X"021e", X"02f1", X"fc8f", X"fb84",
                                                        X"0213", X"0133", X"1482", X"fc80", X"069d", X"0995", X"0487", X"fc50", X"0492", X"0c3b", X"0e17", X"0542", X"028b", X"079d",
                                                        X"03b9", X"06d4", X"0436", X"ff60", X"1163", X"feb2", X"06d0", X"0924", X"ffc6", X"fb88", X"0a0e", X"0a65", X"0907", X"05a4",
                                                        X"062d", X"08ae", X"03f4", X"f6a7", X"0294", X"fc82", X"1862", X"ff3d", X"ff14", X"09db", X"fcab", X"fc52", X"fd7b", X"07c9",
                                                        X"017e", X"00e5", X"ffbe", X"035d", X"07e5", X"fc18", X"06af", X"fca9", X"134d", X"033f", X"01fd", X"07f9", X"fe98", X"0003",
                                                        X"00f1", X"0a00", X"054f", X"03d3", X"ff5e", X"ffbe", X"0456", X"019b", X"0479", X"fc49", X"0f10", X"ffb3", X"08c7", X"08b0",
                                                        X"04c1", X"fb55", X"01d4", X"0943", X"09ac", X"0410", X"0101", X"01f4", X"06ac", X"fd1f", X"064c", X"fedc", X"194a", X"00b2",
                                                        X"0575", X"0945", X"04fc", X"f27b", X"fb85", X"0918", X"0454", X"fee1", X"006c", X"0783", X"0c3e", X"fadc", X"055e", X"fd11",
                                                        X"1228", X"009f", X"054e", X"05fc", X"fe86", X"ff33", X"fb0a", X"05e8", X"0520", X"ff6b", X"fb63", X"062a", X"0c48", X"fc35",
                                                        X"019b", X"fe1c", X"13a9", X"fe32", X"ff41", X"02ef", X"fdcd", X"fb5f", X"fff5", X"f51e", X"056d", X"fd73", X"f8ef", X"0014",
                                                        X"023b", X"f4ce", X"feb1", X"fb72", X"0e29", X"fee7", X"043a", X"ff0b", X"fe08", X"fd3a", X"002a", X"f6c0", X"08eb", X"fc69",
                                                        X"003b", X"fe27", X"03e4", X"f5fb", X"0004", X"faa4", X"106b", X"fbd4", X"0179", X"fd7c", X"f7b3", X"f9d9", X"fc31", X"f855",
                                                        X"01f2", X"fc28", X"01dd", X"fd2f", X"003b", X"fe43", X"0089", X"f943", X"067e", X"fdf1", X"01d3", X"fd69", X"f696", X"fa3f",
                                                        X"ff61", X"0063", X"fdaf", X"fb28", X"fd2d", X"fd72", X"00bd", X"ff9a", X"fe5e", X"fc4e", X"fdd6", X"00ca", X"0148", X"f86c",
                                                        X"fd42", X"fad1", X"f55f", X"ffbf", X"fb09", X"fa0f", X"f8db", X"fd5d", X"ff65", X"fa2f", X"fb26", X"fa2a", X"fbe4", X"fce1",
                                                        X"fad7", X"fdcd", X"fc55", X"f928", X"f1ad", X"fba9", X"fd28", X"f7f3", X"fb41", X"fe35", X"04ab", X"f458", X"fe1e", X"f663",
                                                        X"fa1b", X"f9aa", X"fbff", X"fc1c", X"f966", X"fc62", X"f598", X"f3fc", X"00f9", X"f950", X"fd86", X"fc3d", X"0347", X"f7e0",
                                                        X"fef5", X"f7c9", X"fd82", X"fc9a", X"ff76", X"f857", X"fe60", X"fd58", X"f936", X"f907", X"0176", X"fc85", X"fe13", X"fdd3",
                                                        X"000f", X"f235", X"f8a2", X"fb6d", X"f64d", X"fc01", X"0574", X"fcf2", X"f76a", X"f73a", X"f764", X"f49e", X"0267", X"fa0f",
                                                        X"fdc2", X"032c", X"ffe6", X"ecef", X"f58d", X"f66c", X"fc5d", X"fe85", X"fbc4", X"fbb3", X"f994", X"f598", X"f6d2", X"fd7b",
                                                        X"fec7", X"fa96", X"f260", X"00b1", X"01a2", X"fa81", X"fa23", X"f712", X"035d", X"fbdf", X"f7c9", X"fc6a", X"fffb", X"f39f",
                                                        X"f7d2", X"fd07", X"0023", X"f4de");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f4de";
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

