-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block392.vhd
-- Created: 2024-11-04 16:44:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block392
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage40/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block392 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block392;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block392 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"f5c0", X"fbf9", X"fe66", X"04a6", X"ff27", X"f446",
                                                        X"11b3", X"f897", X"0793", X"06b7", X"0776", X"fbb0", X"0004", X"0824", X"0539", X"ff6f", X"f808", X"0535", X"0056", X"0805",
                                                        X"0228", X"f768", X"0d20", X"f844", X"0374", X"04b9", X"0021", X"fd41", X"fa89", X"06a4", X"03b7", X"0283", X"f5bd", X"0257",
                                                        X"07eb", X"face", X"0101", X"fc4e", X"03ab", X"f592", X"0279", X"feeb", X"ff1c", X"ffe4", X"f1f6", X"0348", X"00e2", X"0052",
                                                        X"f79b", X"fb02", X"ff51", X"fd36", X"f9f8", X"ffdd", X"07e2", X"010b", X"0404", X"042b", X"0089", X"0363", X"0215", X"0239",
                                                        X"05c1", X"00b9", X"ffb0", X"03b8", X"fe61", X"f993", X"fd89", X"01f1", X"010b", X"052f", X"003b", X"07f3", X"0677", X"fb0b",
                                                        X"03ae", X"0423", X"0478", X"fe8a", X"038f", X"fe2a", X"fe6b", X"0652", X"f9db", X"0419", X"0547", X"0526", X"0913", X"08f2",
                                                        X"02a8", X"f4e2", X"f8e0", X"058d", X"0b30", X"ffbb", X"030e", X"0a24", X"08d5", X"0292", X"feab", X"020c", X"11c5", X"0233",
                                                        X"0900", X"0649", X"0074", X"f997", X"f91d", X"077f", X"07b1", X"fd4b", X"004f", X"0637", X"039e", X"f423", X"00d9", X"fc6b",
                                                        X"0535", X"04dd", X"07db", X"0a46", X"0012", X"f7d4", X"fd8c", X"033d", X"029e", X"f8a4", X"01c5", X"0881", X"fa61", X"f694",
                                                        X"00c8", X"ff03", X"05cd", X"024f", X"fd7d", X"06cd", X"fa99", X"fa97", X"faf6", X"0cf0", X"0522", X"f6ed", X"0405", X"0291",
                                                        X"fb4a", X"fcfc", X"fcc6", X"0106", X"0c14", X"00b6", X"06ff", X"05b6", X"fc45", X"ff24", X"f7fd", X"0144", X"013c", X"fa46",
                                                        X"04b8", X"0a69", X"fb12", X"035e", X"00fe", X"007d", X"0057", X"fb39", X"fe73", X"03f5", X"f9c5", X"ffcc", X"ff34", X"00a7",
                                                        X"fef0", X"f83b", X"05b2", X"0a31", X"f8c2", X"0794", X"0019", X"0123", X"0acd", X"00b6", X"084e", X"065e", X"fdb0", X"f8b2",
                                                        X"04ff", X"1365", X"06a6", X"fb65", X"062c", X"0580", X"0180", X"0340", X"024b", X"00aa", X"06a5", X"0085", X"005c", X"0118",
                                                        X"fcb4", X"fafc", X"0381", X"0a29", X"fd28", X"fc0c", X"fb36", X"0270", X"0299", X"0394", X"025f", X"f8f1", X"0866", X"fb8e",
                                                        X"0397", X"01b2", X"ffa5", X"fa06", X"fe87", X"049d", X"00c7", X"fc37", X"0160", X"07a7", X"fe7c", X"fb43", X"0136", X"ff05",
                                                        X"0ede", X"ff5b", X"022d", X"0652", X"0181", X"fe5f", X"ffb2", X"fff0", X"064b", X"fca7", X"ffc3", X"03f2", X"036c", X"0287",
                                                        X"077c", X"fc6c", X"0f7f", X"fda5", X"0076", X"0204", X"07fe", X"f55f", X"02cc", X"0073", X"0260", X"042b", X"fb39", X"0156",
                                                        X"0423", X"02c7", X"01a2", X"fb79", X"099e", X"f60c", X"054e", X"02fb", X"030d", X"fd25", X"04ee", X"0a6a", X"0384", X"ff2d",
                                                        X"fa30", X"f17e", X"03b3", X"ff0c", X"01fd", X"f7d1", X"069b", X"f6c8", X"0203", X"00d1", X"06fb", X"f201", X"0195", X"0ba6",
                                                        X"0645", X"0146", X"fd29", X"f960", X"fcea", X"fe21", X"07ae", X"f613", X"0db7", X"fb64", X"0639", X"0532", X"0906", X"f986",
                                                        X"f99e", X"feb3", X"0755", X"037a", X"0017", X"f9b3", X"029c", X"f6fc", X"09bd", X"f8bd", X"0aa1", X"fc19", X"0505", X"055c",
                                                        X"0549", X"02ff", X"feb2", X"019f", X"01f7", X"07e8", X"ffbc", X"fd80", X"fe87", X"f84a", X"031a", X"fc79", X"0f71", X"ff69",
                                                        X"0971", X"0561", X"08cb", X"fc14", X"01af", X"053a", X"05ef", X"008e", X"011f", X"026a", X"fe42", X"fe46", X"f862", X"fd9e",
                                                        X"1019", X"fa8f", X"0247", X"035f", X"05eb", X"021e", X"fd8b", X"001d", X"0924", X"fe8f", X"0365", X"ff56", X"01cd", X"fb0f",
                                                        X"fbc7", X"fe05", X"0916", X"fe39", X"0bda", X"ffca", X"0322", X"fa4f", X"0031", X"0338", X"079d", X"00ac", X"009f", X"0539",
                                                        X"0475", X"f55b", X"024d", X"fa00", X"09cd", X"f90f", X"053e", X"0270", X"fc4f", X"fbe2", X"00dd", X"042f", X"fefc", X"faa4",
                                                        X"0116", X"0179", X"01a4", X"fa68", X"fee3", X"fc85", X"01c1", X"fd16", X"08d5", X"ffaa", X"02a3", X"0224", X"04c8", X"06bf",
                                                        X"fcfa", X"fda8", X"f79c", X"065d", X"fd7b", X"faaa", X"f82c", X"0326", X"0307", X"0367", X"00f2", X"0756", X"0474", X"0067",
                                                        X"f9db", X"08c3", X"feca", X"f92e", X"00c4", X"09c4", X"fcc9", X"ff53", X"0048", X"0483", X"01e7", X"0909", X"0993", X"0973",
                                                        X"00fc", X"fb30", X"01bb", X"fe64", X"0ba8", X"ff01", X"0554", X"0a58", X"0066", X"018c", X"07b3", X"02c1", X"1491", X"08fe",
                                                        X"0f1d", X"05e4", X"fd8b", X"fb25", X"fcaa", X"0b10", X"0595", X"fb0a", X"03b7", X"05f0", X"0575", X"025b", X"0328", X"009d",
                                                        X"02b6", X"fab7", X"fdcb", X"06a7", X"00ac", X"fbad", X"f7f9", X"0998", X"ffb7", X"fabd", X"065a", X"0a70", X"fdff", X"0065",
                                                        X"040b", X"fed6", X"02e9", X"01d6", X"01ec", X"09f2", X"fc76", X"fd65", X"0598", X"0117", X"05bc", X"fc3e", X"febf", X"0298",
                                                        X"faa2", X"fa47", X"fdab", X"fdb6", X"0657", X"06df", X"08f4", X"04e1", X"fba0", X"008d", X"fc88", X"fca9", X"03b3", X"fcfb",
                                                        X"0221", X"0466", X"04bd", X"fc8f", X"0303", X"fe67", X"12c3", X"030d", X"fe9c", X"04a3", X"f2a5", X"0035", X"00f9", X"fe84",
                                                        X"0440", X"fb1b", X"fb2a", X"0252", X"01d7", X"f91d", X"0043", X"fb97", X"0250", X"034d", X"0195", X"f956", X"fad3", X"01a4",
                                                        X"00c1", X"00e1", X"04d6", X"ff65", X"f76f", X"06e7", X"fff8", X"05a0", X"f8d1", X"f9f0", X"04dd", X"0246", X"fde5", X"fba9",
                                                        X"fc51", X"fa2a", X"01a7", X"fd05", X"05b0", X"fcdc", X"f723", X"04f7", X"025b", X"fd42", X"fe74", X"fbfc", X"0a20", X"0407",
                                                        X"06af", X"fd8a", X"ff49", X"f718", X"015b", X"f7bf", X"00b3", X"0118", X"fa07", X"0692", X"061e", X"fccb", X"0542", X"fe7c",
                                                        X"0b5b", X"015a", X"0103", X"04f6", X"fe97", X"034c", X"ffcb", X"04ac", X"0156", X"00c5", X"fbe7", X"0423", X"fd92", X"0b10",
                                                        X"0693", X"fc77", X"05c3", X"0173", X"037f", X"015f", X"ff6e", X"00aa", X"fdf5", X"035f", X"04fc", X"01bb", X"f99c", X"fe5d",
                                                        X"fe97", X"01fb", X"0253", X"fbc5", X"094b", X"fb96", X"0757", X"032c", X"fd55", X"fbb9", X"002b", X"f965", X"0476", X"072c",
                                                        X"f9ca", X"ffb6", X"094c", X"0c4b", X"017a", X"fe44", X"0535", X"fcc4", X"0583", X"0109", X"0400", X"fae4", X"05a0", X"f8dd",
                                                        X"0773", X"048c", X"f9d9", X"f634", X"0171", X"fd0f", X"0434", X"fc60", X"fcb9", X"fb1d", X"0718", X"0099", X"051c", X"f476",
                                                        X"05c4", X"0182", X"085d", X"0145", X"0117", X"f059", X"05fa", X"ffe5", X"fee1", X"fce3", X"089f", X"f67d", X"03fd", X"08c8",
                                                        X"01ea", X"ff40", X"fe1a", X"075e", X"00f5", X"ff4c", X"0012", X"fe47", X"0430", X"023e", X"01c5", X"fdb2", X"0df0", X"fe42",
                                                        X"ffac", X"04e0", X"015b", X"feb0", X"fd16", X"f9ad", X"08b7", X"02b3", X"007b", X"04df", X"042c", X"07dd", X"fe34", X"fdb3",
                                                        X"050a", X"f805", X"024a", X"ff6f", X"0689", X"ff65", X"fc99", X"fe31", X"0543", X"fc9f", X"0210", X"09a5", X"fa79", X"0a3e",
                                                        X"007f", X"fefe", X"0791", X"019d", X"0062", X"08bd", X"030a", X"fa4f", X"029f", X"05f0", X"0524", X"fc6c", X"0254", X"05e5",
                                                        X"fd6a", X"040e", X"0258", X"febd", X"0db1", X"03c2", X"020b", X"0918", X"013c", X"fb7b", X"fd66", X"0b83", X"0089", X"fc46",
                                                        X"0374", X"07d1", X"ffb5", X"0149", X"0a33", X"00f9", X"0b49", X"fd7a", X"032b", X"0952", X"05bc", X"0067", X"f5b3", X"0d98",
                                                        X"fef6", X"fc27", X"fb9c", X"06ac", X"0447", X"f23e", X"0251", X"fd0a", X"0f13", X"fd62", X"0635", X"0a09", X"027a", X"f9f7",
                                                        X"fc84", X"068d", X"040c", X"ff41", X"f7f8", X"ffc2", X"feb5", X"02e5", X"fb35", X"fb2e", X"13f9", X"fdca", X"062a", X"055d",
                                                        X"f7c3", X"f905", X"01b9", X"037d", X"fc4c", X"fde2", X"047f", X"04a4", X"fa70", X"ff64", X"fa31", X"00dd", X"0fef", X"f9c0",
                                                        X"0543", X"08ca", X"f35d", X"fdf2", X"ffcd", X"03ac", X"ffa5", X"f7de", X"04ba", X"02e7", X"fac5", X"faa1", X"fd25", X"fbec",
                                                        X"010e", X"f9b7", X"0329", X"04aa", X"f97e", X"fcea", X"fbd5", X"01d4", X"fc99", X"f9e7", X"fce4", X"00ef", X"ff85", X"fc0a",
                                                        X"03fa", X"ffbd", X"0386", X"024e", X"02ba", X"0577", X"f8d6", X"f793", X"fde7", X"01f7", X"05bf", X"fcc7", X"0028", X"043c",
                                                        X"fa92", X"ff47", X"0683", X"fb7f", X"fbe3", X"feeb", X"01aa", X"05aa", X"fdfe", X"f945", X"0073", X"026f", X"ff49", X"f823",
                                                        X"02c3", X"0780", X"0318", X"faa6", X"03a2", X"fcea", X"0127", X"032c", X"feaf", X"046b", X"fc60", X"f8e3", X"034e", X"0a8c",
                                                        X"ff23", X"fd1b", X"02d5", X"faf8", X"fdfe", X"0894", X"03ea", X"fec1", X"0a62", X"0102", X"0310", X"032b", X"f621", X"f936",
                                                        X"034a", X"04c3", X"02c4", X"05b0", X"ff27", X"0712", X"fb70", X"04ba", X"03b6", X"014f", X"fd14", X"0291", X"0757", X"0762",
                                                        X"fce0", X"f7bc", X"fa81", X"0888", X"042b", X"ff90", X"fba2", X"00b6", X"0ab3", X"0243", X"0492", X"fadb", X"16ed", X"fa2a",
                                                        X"0079", X"ff01", X"0100", X"01ba", X"02ac", X"0d92", X"0012", X"052c", X"fd1c", X"f893", X"0240", X"0511", X"fd95", X"ff0e",
                                                        X"01bb", X"f7ed", X"059e", X"0041", X"fea6", X"f844", X"0235", X"0be2", X"03b6", X"015e", X"f570", X"fd3d", X"00f0", X"fc8e",
                                                        X"0395", X"f9ee", X"124d", X"f77c", X"0657", X"00d2", X"06eb", X"f20d", X"04f7", X"0dc9", X"044c", X"04f4", X"0403", X"fde5",
                                                        X"02be", X"00b6", X"0194", X"fd5d", X"1231", X"f9d8", X"0588", X"0523", X"0386", X"01b2", X"ff4b", X"076b", X"070b", X"0061",
                                                        X"0151", X"fbf8", X"04d4", X"01b9", X"fc5e", X"f8cb", X"001b", X"ffdf", X"09f7", X"0298", X"06db", X"f5ad", X"fc76", X"00eb",
                                                        X"02b4", X"04c8", X"fc83", X"05ee", X"06a3", X"029c", X"fdf8", X"fb88", X"06d6", X"0212", X"0366", X"0487", X"06a8", X"fe34",
                                                        X"0008", X"0bb4", X"095a", X"fd24", X"ffbd", X"fea2", X"fc6e", X"f4b6", X"02c1", X"f930", X"1220", X"fdc0", X"0967", X"0ad6",
                                                        X"0281", X"ffb4", X"ff54", X"054d", X"0526", X"0108", X"03e8", X"05eb", X"01d2", X"fc97", X"0440", X"fd3a", X"1007", X"fbb5",
                                                        X"006f", X"06b6", X"fc4e", X"fe69", X"05ab", X"fefb", X"00ab", X"fdd2", X"fa23", X"02c7", X"0040", X"f9c7", X"fb82", X"fcac",
                                                        X"0ae1", X"ff9a", X"fd76", X"0631", X"035d", X"05e2", X"f988", X"fdfe", X"00f0", X"ff13", X"fee4", X"089b", X"0118", X"0533",
                                                        X"fff6", X"fb64", X"0284", X"0125", X"03ab", X"04c5", X"ff4b", X"014c", X"00a0", X"fc1f", X"0236", X"fe4d", X"fdb2", X"068c",
                                                        X"ff0f", X"0801", X"fcec", X"0081", X"f154", X"06de", X"0bc2", X"0424", X"fac3", X"f709", X"fadd", X"08a5", X"08a3", X"f974",
                                                        X"0339", X"fffc", X"f327", X"f894", X"00f7", X"00d4", X"f5b6", X"048a", X"078c", X"08bc", X"f68b", X"f75a", X"019a", X"1157",
                                                        X"fdbf", X"f6b5", X"04b8", X"0c69", X"0066", X"0308", X"fe7b", X"ff23", X"0f81", X"ffad", X"03a8", X"08c2", X"f257", X"fe58",
                                                        X"0117", X"0b3f", X"006e", X"f678", X"0510", X"02c0", X"fd13", X"00e1", X"f98a", X"0156", X"02f2", X"02a8", X"09a9", X"01c7",
                                                        X"ed24", X"fe54", X"011e", X"0244", X"055a", X"faf9", X"fc36", X"025b", X"00b1", X"fd2f", X"ff40", X"ffc3", X"05e2", X"faaa",
                                                        X"0159", X"01f9", X"f78f", X"faf9", X"0548", X"f558", X"0381", X"f745", X"fc05", X"0916", X"fddb", X"02ae", X"03f9", X"0210",
                                                        X"05bf", X"00d0", X"03d0", X"06b2", X"f874", X"02cd", X"0b13", X"fe8b", X"0061", X"fe32", X"02c8", X"0300", X"01b8", X"01ea",
                                                        X"02a8", X"0252", X"1157", X"0093", X"0988", X"03fe", X"0150", X"f285", X"fe17", X"0948", X"0043", X"fc4f", X"ffd6", X"01e4",
                                                        X"ffbb", X"077c", X"fd61", X"fe7e", X"0f5e", X"fe2b", X"01b0", X"0495", X"fb1e", X"fe2b", X"f776", X"03b4", X"0cc2", X"023d",
                                                        X"0119", X"02cc", X"0136", X"0438", X"032f", X"fd08", X"06b1", X"fcba", X"f832", X"0190", X"ff86", X"f4e5", X"0748", X"ff64",
                                                        X"0684", X"fe7c", X"044e", X"05d7", X"02ce", X"00ad", X"05ee", X"0229", X"0f5b", X"fd38", X"ff63", X"01fd", X"0205", X"fb82",
                                                        X"081d", X"f555", X"ff2d", X"ffd4", X"f9e4", X"faad", X"00c2", X"fd3f", X"05ad", X"fecd", X"0e0e", X"f7c0", X"00fa", X"03c9",
                                                        X"06f3", X"f7b1", X"ff5f", X"febf", X"01fd", X"fe1f", X"f9cb", X"fdf3", X"0126", X"0679", X"0061", X"f885", X"fd3c", X"f800",
                                                        X"007d", X"0366", X"0b05", X"fa14", X"fe80", X"f7c7", X"0432", X"00a9", X"fed0", X"f2d7", X"01d7", X"f88d", X"040b", X"fd1c",
                                                        X"0180", X"f701", X"fffe", X"ffb2", X"082e", X"f757", X"ff63", X"0796", X"0790", X"0088", X"f904", X"0063", X"07d0", X"fc1d",
                                                        X"0048", X"f9d5", X"061c", X"f584", X"06de", X"0369", X"0688", X"03f9", X"ff38", X"0408", X"02ae", X"02fb", X"f8c8", X"fe25",
                                                        X"0055", X"f6a6", X"ff29", X"f886", X"0084", X"f82f", X"087a", X"01d8", X"04b0", X"fb17", X"fd4f", X"07ad", X"0062", X"feca",
                                                        X"fa9b", X"00ac", X"fe1b", X"072e", X"fc39", X"fe25", X"fbf6", X"fab3", X"0b9e", X"04bf", X"0953", X"012e", X"fb1e", X"0457",
                                                        X"0802", X"03c2", X"fea3", X"fa88", X"ff66", X"f635", X"fea2", X"fda9", X"026c", X"00e3", X"08ac", X"02f1", X"0354", X"025c",
                                                        X"fc26", X"03ec", X"07e1", X"03e8", X"feb7", X"063c", X"fe47", X"f924", X"fd23", X"fc8c", X"0507", X"fdfd", X"fd26", X"0676",
                                                        X"fd76", X"fe61", X"f8a6", X"f9bf", X"01f1", X"ff36", X"fc76", X"084e", X"fdd3", X"fe0a", X"002e", X"fb82", X"0b01", X"0051",
                                                        X"09c5", X"078b", X"01b6", X"016c", X"f892", X"003a", X"06ee", X"fede", X"0031", X"0385", X"fbe0", X"f1c6", X"00d8", X"fd95",
                                                        X"019d", X"034d", X"0232", X"04c7", X"f9fa", X"f580", X"fb68", X"033d", X"028c", X"fe1d", X"f534", X"085e", X"fc15", X"fef6",
                                                        X"fbad", X"01a1", X"058b", X"032a", X"04f1", X"036d", X"ffd9", X"fe85", X"08dc", X"fe7f", X"045f", X"fff5", X"fe8c", X"0cc7",
                                                        X"03a0", X"023a", X"0227", X"03a0", X"10a0", X"0149", X"f9a5", X"0668", X"f5be", X"f500", X"0468", X"fec8", X"fbf7", X"fc14",
                                                        X"00b5", X"01ab", X"01ec", X"f3a7", X"f55a", X"0062", X"17ce", X"00f1", X"0664", X"06c1", X"f973", X"fdf8", X"0951", X"09bd",
                                                        X"057c", X"fbcf", X"fb7c", X"0399", X"fc1e", X"f7b4", X"fee6", X"fd8a", X"1078", X"0190", X"08ae", X"02e3", X"f4dd", X"fe1e",
                                                        X"06b8", X"0922", X"02ac", X"ff7f", X"fa5c", X"0615", X"fdcb", X"fcd0", X"fc04", X"feee", X"fe09", X"050b", X"ffb9", X"0162",
                                                        X"f37d", X"fedd", X"f237", X"05a6", X"fd71", X"fcb6", X"00bd", X"08f0", X"fa9b", X"f859", X"fcd2", X"00b3", X"04f2", X"029c",
                                                        X"08f8", X"0844", X"f76e", X"ff9a", X"ff65", X"0a37", X"025d", X"fc5d", X"00d9", X"0512", X"ffa2", X"0281", X"fe6c", X"ff03",
                                                        X"00da", X"0312", X"0c09", X"0459", X"f1eb", X"f3df", X"ff68", X"fce3", X"0b96", X"fefd", X"03b2", X"0b3b", X"ffff", X"0e60",
                                                        X"fb73", X"ff8e", X"1242", X"0191", X"0a24", X"01c7", X"f995", X"f589", X"02d5", X"fedd", X"065b", X"f999", X"0a90", X"0c8c",
                                                        X"fca2", X"fde4", X"048f", X"0316", X"0a5b", X"07cd", X"fc2a", X"08c4", X"f6ad", X"f0a5", X"02b6", X"0b1e", X"0097", X"fa4b",
                                                        X"0536", X"0497", X"0150", X"00a0", X"05f9", X"00ce", X"0206", X"024e", X"ff65", X"01f4", X"f3b2", X"f8f6", X"f873", X"0693",
                                                        X"fc2e", X"f5a1", X"0817", X"fb2d", X"050b", X"0442", X"0259", X"0003", X"0b1b", X"f9a9", X"02c4", X"feb8", X"faf1", X"f5ff",
                                                        X"009f", X"ffd2", X"03d5", X"f873", X"02c9", X"00d0", X"00c9", X"02cb", X"ffcf", X"0129", X"0268", X"fc00", X"ff73", X"036e",
                                                        X"f9ee", X"fb0d", X"0620", X"038a", X"0118", X"fbf3", X"023a", X"08fd", X"00a3", X"060e", X"0076", X"fe92", X"013a", X"f3bb",
                                                        X"f9bf", X"032d", X"fd42", X"f7e6", X"0597", X"0423", X"00a6", X"fc2f", X"fd0e", X"f835", X"0112", X"064a", X"ff14", X"fd30",
                                                        X"0224", X"f339", X"03c0", X"0186", X"fd99", X"f5de", X"fea8", X"0242", X"081b", X"fd64", X"fd54", X"f8e4", X"0285", X"0642",
                                                        X"ffe7", X"f729", X"fd83", X"f78d", X"064b", X"0469", X"0753", X"024d", X"0111", X"02c3", X"0667", X"0150", X"fb95", X"f5db",
                                                        X"057e", X"07bf", X"055f", X"f972", X"089c", X"f2b6", X"ffd8", X"ff22", X"048a", X"fd85", X"029e", X"fd62", X"0404", X"053d",
                                                        X"fa35", X"f88e", X"05e6", X"0299", X"0051", X"fcb4", X"10ef", X"e8a8", X"00dc", X"0361", X"026e", X"00eb", X"ff8c", X"fa60",
                                                        X"07d3", X"01ee", X"fb5e", X"fdbb", X"03e8", X"f367", X"00bc", X"f78b", X"069b", X"f2e7", X"0880", X"028b", X"0ad8", X"ff9b",
                                                        X"0d5a", X"0898", X"02ae", X"060f", X"f589", X"f6fb", X"0266", X"f0da", X"fe86", X"f96c", X"0881", X"f51f", X"fda1", X"048b",
                                                        X"07a6", X"051f", X"0275", X"00f7", X"0155", X"04d2", X"ec41", X"f423", X"07b8", X"fae8", X"019a", X"f769", X"0f75", X"f7b4",
                                                        X"01fd", X"078c", X"084d", X"080a", X"ff7b", X"fd57", X"050d", X"0373", X"f656", X"fe3f", X"0651", X"002e", X"0253", X"f78a",
                                                        X"1167", X"ff51", X"013a", X"08c9", X"0957", X"024c", X"022b", X"fce1", X"00d2", X"024d", X"fb42", X"fec7", X"fda8", X"f2e4",
                                                        X"ff4c", X"fa37", X"07df", X"032e", X"078b", X"0677", X"fec4", X"f968", X"fdd8", X"0536", X"03d9", X"0359", X"fbb3", X"0641",
                                                        X"00dc", X"f7a8", X"03bb", X"ff95", X"122d", X"05d5", X"057d", X"04bf", X"faca", X"fda0", X"00b4", X"03fb", X"0680", X"0335",
                                                        X"023e", X"0613", X"039a", X"03c9", X"000d", X"fdce", X"12d9", X"0557", X"08b7", X"0c2f", X"f473", X"0748", X"ffae", X"06d6",
                                                        X"08ba", X"0109", X"030c", X"051c", X"0538", X"fa3d", X"f9fe", X"01dd", X"072e", X"054c", X"0989", X"0689", X"f14d", X"fac8",
                                                        X"ffc8", X"022e", X"02b9", X"fed7", X"059a", X"0373", X"058d", X"07c4", X"05f7", X"02d5", X"0b13", X"0535", X"02e6", X"02ed",
                                                        X"ec31", X"fdd1", X"050e", X"fd57", X"025f", X"020b", X"00a0", X"0620", X"f590", X"fed2", X"fdb1", X"0042", X"0f5e", X"016d",
                                                        X"03cf", X"0116", X"fd73", X"f1b0", X"0030", X"033f", X"ffc3", X"fbe5", X"fdf0", X"04d9", X"0646", X"03f2", X"fa33", X"01e2",
                                                        X"06fb", X"02cd", X"f748", X"027a", X"f03b", X"f56d", X"fb36", X"fae5", X"00fe", X"fc27", X"0468", X"09fc", X"0118", X"07d0",
                                                        X"ff29", X"0200", X"0d54", X"0236", X"f5e7", X"fcad", X"f59c", X"f92e", X"f974", X"0492", X"fb0b", X"f904", X"ff7b", X"085e",
                                                        X"fd95", X"0d37", X"0127", X"ffe2", X"0c0e", X"04cd", X"ff3a", X"fd72", X"f6aa", X"f562", X"0832", X"fb35", X"0155", X"f7bd",
                                                        X"fc06", X"08c2", X"fb05", X"014e", X"0422", X"ff8a", X"ff3f", X"040e", X"058c", X"0807", X"fb42", X"fe0e", X"ff5a", X"0ce3",
                                                        X"0236", X"f6ec", X"fee5", X"02d2", X"fdc1", X"013c", X"02a9", X"ff8e", X"0ef5", X"0010", X"04da", X"04f7", X"0035", X"f597",
                                                        X"08be", X"0d7d", X"0251", X"fbe9", X"fce1", X"0152", X"04b7", X"fadc", X"0017", X"faf2", X"0d6b", X"f979", X"0858", X"04c1",
                                                        X"fd0e", X"f7e4", X"00f8", X"0850", X"01ef", X"fd6d", X"000d", X"063a", X"0430", X"fc7d", X"01b4", X"fbab", X"fdae", X"fae7",
                                                        X"fc37", X"0979", X"feff", X"fd72", X"ff13", X"0fc5", X"fc3f", X"002e", X"0385", X"042b", X"02ee", X"06d9", X"02e8", X"fccc",
                                                        X"079a", X"fcec", X"047a", X"07fe", X"0252", X"fc0d", X"fd35", X"0e5d", X"059f", X"028a", X"f8b3", X"0131", X"ffc8", X"fac8",
                                                        X"fdb9", X"fd34", X"ff0b", X"fb4d", X"0082", X"074c", X"0444", X"fcc2", X"039b", X"fe6e", X"0e65", X"ff69", X"00e0", X"0564",
                                                        X"0582", X"0011", X"05cb", X"fba0", X"1165", X"fc00", X"01e9", X"07a0", X"056b", X"fd50", X"0903", X"0694", X"04ee", X"0034",
                                                        X"fff5", X"0b33", X"01f5", X"f939", X"066c", X"ff5b", X"0a2e", X"fc09", X"03aa", X"0687", X"0786", X"fe89", X"05a1", X"ff16",
                                                        X"05b6", X"007a", X"f69b", X"02b9", X"05ff", X"f965", X"fd2e", X"fcb6", X"079e", X"f971", X"006f", X"0d8f", X"0e6e", X"fdec",
                                                        X"ffd5", X"0b3a", X"0ab9", X"08f1");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"08f1";
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

