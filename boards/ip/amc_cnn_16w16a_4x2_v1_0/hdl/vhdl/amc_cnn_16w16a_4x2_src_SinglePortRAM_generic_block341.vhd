-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block341.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block341
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage109/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block341 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block341;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block341 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0b96", X"08dc", X"076a", X"fe1a", X"feb9", X"0efb",
                                                        X"f79e", X"fe7e", X"0836", X"f125", X"ff81", X"0535", X"1239", X"0206", X"fabc", X"e77c", X"02b7", X"0b24", X"fdff", X"ff38",
                                                        X"fd04", X"0633", X"0145", X"fb7d", X"018a", X"ffe6", X"0be1", X"009d", X"1073", X"0dbf", X"fb82", X"f52c", X"fc57", X"fac0",
                                                        X"f73a", X"fb52", X"ff3e", X"ff23", X"f754", X"03ae", X"fc4f", X"07d0", X"00f4", X"04bb", X"0b53", X"0798", X"f82a", X"ffbe",
                                                        X"fe65", X"f945", X"0305", X"017d", X"0ba8", X"fc50", X"0650", X"0222", X"0877", X"0330", X"087d", X"0440", X"0105", X"1c69",
                                                        X"f930", X"045e", X"031a", X"022b", X"fd67", X"fd07", X"0b9f", X"fc25", X"fd76", X"fdf4", X"f370", X"03f9", X"fcfb", X"0860",
                                                        X"ff95", X"04de", X"f7f3", X"047d", X"f571", X"f2ee", X"ff65", X"fe0b", X"0326", X"f879", X"fac1", X"fdcb", X"ffcb", X"fada",
                                                        X"feef", X"f430", X"fe3a", X"fece", X"fab4", X"08c9", X"f526", X"f860", X"0516", X"049b", X"fb6e", X"f953", X"f6ba", X"07e3",
                                                        X"fec7", X"fbfd", X"fc79", X"f9f4", X"fec8", X"ffdb", X"048f", X"069d", X"f5d8", X"f979", X"ff90", X"fd0b", X"0016", X"ffae",
                                                        X"fa56", X"f973", X"fed8", X"01d0", X"025b", X"00f4", X"009b", X"fb82", X"0598", X"00c4", X"f5d5", X"f063", X"fbac", X"0527",
                                                        X"fe46", X"018b", X"07d1", X"fdf6", X"008e", X"fe9d", X"ff05", X"fd44", X"fefd", X"07c7", X"0912", X"0361", X"ff5d", X"fe0e",
                                                        X"fe55", X"04a9", X"f88b", X"ff45", X"02f1", X"06d4", X"0781", X"04c6", X"110c", X"fddc", X"0418", X"117d", X"0e53", X"022a",
                                                        X"0167", X"0a6a", X"fb9c", X"0de6", X"0060", X"004f", X"f7e3", X"0862", X"0166", X"0005", X"0875", X"ff9b", X"f870", X"07b6",
                                                        X"fded", X"fe6a", X"0ba1", X"081a", X"f6e1", X"0f86", X"0302", X"00fb", X"f874", X"0702", X"0571", X"fb64", X"0085", X"0274",
                                                        X"f281", X"0986", X"f78a", X"f940", X"0b8b", X"07f6", X"fb15", X"05ae", X"0430", X"04c8", X"f72a", X"01fe", X"fe0d", X"02b9",
                                                        X"044a", X"ff80", X"feea", X"01d3", X"f73d", X"f52a", X"0a90", X"04e6", X"01a6", X"014a", X"f971", X"0502", X"fcf3", X"00fa",
                                                        X"f9a7", X"046a", X"fa74", X"fede", X"f623", X"0a5f", X"fdb9", X"f169", X"031a", X"fe54", X"ff71", X"f927", X"f914", X"04fe",
                                                        X"ff78", X"0383", X"0353", X"ffd1", X"fd49", X"fec8", X"feab", X"01d1", X"fd0f", X"ee08", X"04b8", X"0495", X"02f1", X"0399",
                                                        X"f426", X"04c3", X"02d9", X"ffac", X"08f6", X"f8c2", X"007a", X"06ce", X"06c5", X"fa04", X"fe7d", X"ed33", X"065c", X"0110",
                                                        X"f722", X"f920", X"003e", X"02b2", X"fba9", X"fce5", X"ffed", X"00b9", X"0358", X"01a5", X"04c7", X"0205", X"f850", X"fa7b",
                                                        X"03b1", X"05e4", X"fda6", X"f926", X"025b", X"027a", X"ff5c", X"fd09", X"ff68", X"01bc", X"025c", X"075c", X"0093", X"0716",
                                                        X"f466", X"fc1f", X"f7bd", X"06a2", X"f7c5", X"fbda", X"037f", X"fea7", X"f9b7", X"fd57", X"08a7", X"01fe", X"02b0", X"02ca",
                                                        X"0837", X"03fe", X"030b", X"0566", X"f8eb", X"093c", X"fc36", X"00db", X"01c0", X"02c5", X"fe00", X"ff78", X"f687", X"fef0",
                                                        X"03c1", X"0448", X"ffa2", X"f9db", X"fb22", X"08ea", X"ee68", X"ff32", X"013e", X"fe7b", X"01ad", X"fd59", X"0a2d", X"f990",
                                                        X"f917", X"ff14", X"04a3", X"01f7", X"fd7a", X"02b0", X"fad4", X"07b3", X"e950", X"ef0b", X"030d", X"feb2", X"054c", X"fa1d",
                                                        X"f05b", X"fe31", X"f276", X"00f5", X"f8e0", X"0275", X"ffa0", X"fe79", X"04ef", X"0959", X"f36e", X"f10e", X"0155", X"0647",
                                                        X"02b9", X"f72f", X"01e9", X"fcd4", X"f3ee", X"fd98", X"fa59", X"040e", X"f995", X"ef31", X"0002", X"0877", X"f249", X"fcaf",
                                                        X"f9ce", X"03b3", X"f77e", X"fcea", X"fae3", X"0262", X"0006", X"025e", X"f9b0", X"ff2d", X"fe8a", X"ffde", X"0656", X"074a",
                                                        X"f2fb", X"f255", X"fd4f", X"0847", X"f963", X"faf3", X"f9b4", X"000a", X"062c", X"00da", X"ffdd", X"fc9a", X"019d", X"ffed",
                                                        X"06bf", X"03ba", X"ff96", X"0272", X"ffb1", X"110b", X"04b5", X"02f5", X"fb61", X"0ae3", X"fdc6", X"fdcd", X"033d", X"f549",
                                                        X"ff20", X"1379", X"022e", X"fbad", X"053a", X"05e5", X"f6a9", X"fc7c", X"ff8a", X"feda", X"f772", X"ffcc", X"fdf1", X"0779",
                                                        X"0712", X"ffa9", X"01e5", X"fba8", X"00bd", X"fdef", X"06a3", X"054d", X"ff26", X"0a49", X"03f5", X"00a1", X"0469", X"0754",
                                                        X"f7a6", X"087a", X"02a0", X"fa88", X"ee43", X"04db", X"00ec", X"ffa9", X"06a1", X"fff8", X"fe4c", X"072d", X"01fc", X"00aa",
                                                        X"0010", X"0350", X"f6b4", X"043f", X"fcb4", X"fcb3", X"f076", X"028e", X"f261", X"f5a9", X"0cda", X"048e", X"fb16", X"01c3",
                                                        X"0245", X"00c6", X"f3e4", X"fdf1", X"fe6c", X"f8db", X"0113", X"fcff", X"fb87", X"0bc6", X"fd79", X"f03a", X"0488", X"0453",
                                                        X"fc5b", X"fd17", X"ff61", X"050f", X"eaf3", X"fd48", X"faa9", X"fef2", X"fd9d", X"01d0", X"0085", X"ffc1", X"fc7f", X"f394",
                                                        X"0129", X"fde4", X"f7c9", X"fc5a", X"fd92", X"0716", X"0851", X"fded", X"06a4", X"f8ca", X"fd87", X"0120", X"0705", X"0b72",
                                                        X"0010", X"f0dd", X"00cf", X"0168", X"005d", X"fcb5", X"fcf3", X"0622", X"0146", X"fd51", X"0c24", X"ff6e", X"0122", X"0608",
                                                        X"0732", X"fb1c", X"ff68", X"f820", X"fca1", X"0194", X"f8bd", X"f89c", X"0220", X"01e9", X"f964", X"037e", X"06c7", X"030f",
                                                        X"0e01", X"0c6e", X"080f", X"0630", X"0266", X"014b", X"f8fb", X"0148", X"0359", X"007c", X"0283", X"ffe6", X"06d4", X"0520",
                                                        X"007e", X"fcf6", X"0422", X"feb5", X"ffdd", X"ff94", X"fe16", X"0221", X"f933", X"027d", X"fc2e", X"efd4", X"0382", X"fa41",
                                                        X"f110", X"0375", X"f74e", X"fca9", X"045b", X"0706", X"057c", X"fc96", X"f4e1", X"0760", X"f8f7", X"f3ec", X"fe42", X"fd14",
                                                        X"0691", X"fb29", X"f928", X"fd05", X"f7e5", X"fd1c", X"fb4a", X"005f", X"ff8a", X"03ca", X"f548", X"0621", X"f21d", X"f464",
                                                        X"fd5b", X"08f2", X"0280", X"f829", X"f155", X"fdcc", X"fbbc", X"fc67", X"fd21", X"04c7", X"0076", X"000f", X"00c3", X"0d17",
                                                        X"f433", X"fcd1", X"f7bf", X"fa64", X"fdef", X"fb45", X"ee42", X"f920", X"fb2e", X"0195", X"0246", X"0b7c", X"0067", X"0240",
                                                        X"ffb7", X"0c20", X"ee99", X"046c", X"fd95", X"0a40", X"03cb", X"0085", X"f980", X"0640", X"f8d6", X"0745", X"fdda", X"0080",
                                                        X"fb68", X"fa8c", X"0156", X"0b20", X"f96c", X"fd26", X"fee4", X"fdb2", X"ff7b", X"ffed", X"ffb6", X"0991", X"09d6", X"0423",
                                                        X"0338", X"02eb", X"fa42", X"f8a9", X"0592", X"04b4", X"ff9e", X"0365", X"fdad", X"0a87", X"f403", X"ff5c", X"fde3", X"067b",
                                                        X"01d6", X"0029", X"0972", X"034d", X"fcd0", X"08c1", X"05cf", X"0394", X"068a", X"09af", X"f71f", X"0264", X"fa06", X"056b",
                                                        X"f2c0", X"08b7", X"fed5", X"08ab", X"05be", X"f62a", X"f98b", X"045a", X"020b", X"ff00", X"0730", X"052e", X"fc76", X"0368",
                                                        X"fae5", X"0345", X"f1d7", X"fef8", X"f4a4", X"01f6", X"05e8", X"fc6a", X"f990", X"f99b", X"ff9f", X"fdca", X"0786", X"fec5",
                                                        X"038b", X"0afc", X"fe45", X"03c9", X"03ee", X"fbbc", X"0015", X"ff56", X"fbbb", X"0003", X"f9c3", X"f53c", X"fd7a", X"f7ae",
                                                        X"0c59", X"00a1", X"ff0e", X"000b", X"fd0f", X"042d", X"faa6", X"f7d2", X"fb29", X"022b", X"f650", X"065b", X"f6b2", X"f5d7",
                                                        X"fa93", X"f426", X"0c12", X"fb94", X"056f", X"f6b2", X"00ac", X"048c", X"f8af", X"f9a5", X"fe22", X"f9f3", X"eaa7", X"0b71",
                                                        X"056f", X"fe16", X"fb8a", X"f26b", X"0870", X"f6d4", X"fd53", X"ffc8", X"ffe4", X"038c", X"f2b9", X"fe63", X"03bb", X"fbb1",
                                                        X"fe46", X"0013", X"0555", X"0011", X"f319", X"efc8", X"0092", X"fb29", X"fb62", X"f50e", X"02cb", X"02fb", X"f152", X"fd27",
                                                        X"0671", X"fb18", X"ff60", X"fa7c", X"03c4", X"1478", X"fd05", X"f535", X"fc46", X"064d", X"faf6", X"fd93", X"046b", X"ff0f",
                                                        X"ff2d", X"014c", X"027e", X"036b", X"fe9e", X"fe15", X"026a", X"08a3", X"fac5", X"fd73", X"fae5", X"05ae", X"06f9", X"023c",
                                                        X"fef4", X"01b3", X"ff0d", X"fbd1", X"0f43", X"0218", X"047f", X"0431", X"0410", X"037e", X"0216", X"fe7a", X"f4ff", X"fcfa",
                                                        X"0461", X"f4d0", X"0579", X"0079", X"ef9c", X"fcb1", X"f907", X"0836", X"04e4", X"040e", X"07f1", X"1401", X"00a1", X"0188",
                                                        X"fa41", X"f044", X"07ff", X"0198", X"fd66", X"fd5c", X"04b3", X"fb7c", X"00c0", X"fd68", X"01d3", X"07c8", X"0b0e", X"fd61",
                                                        X"fc96", X"0726", X"f9e5", X"f87d", X"fed2", X"088f", X"020e", X"f8a6", X"0331", X"fd8b", X"fd1f", X"fc4b", X"00ca", X"053a",
                                                        X"fe55", X"fdf8", X"feaf", X"0540", X"f8f6", X"f556", X"f8c9", X"0327", X"fdda", X"fbdb", X"01a1", X"fc49", X"f7c0", X"01d0",
                                                        X"030a", X"0839", X"026e", X"015b", X"00ec", X"099d", X"ff05", X"0590", X"02d9", X"fb7c", X"03b7", X"006d", X"074a", X"02fc",
                                                        X"0112", X"0200", X"fc38", X"ff79", X"fe69", X"f3dd", X"0359", X"0656", X"f940", X"fbf8", X"fc8e", X"ff59", X"f662", X"027e",
                                                        X"0523", X"0ad6", X"058c", X"05f5", X"ff40", X"fe8f", X"fe49", X"0ae0", X"0de4", X"0443", X"fda2", X"0003", X"00c8", X"0693",
                                                        X"f807", X"02e7", X"01b6", X"0802", X"ff4a", X"fea6", X"fdcb", X"fcbe", X"041f", X"08d8", X"044d", X"fd9e", X"02b8", X"03fe",
                                                        X"0472", X"01dc", X"f7f1", X"ff96", X"fc7a", X"09e4", X"fb17", X"fc44", X"fd31", X"0104", X"f8be", X"fcca", X"01b5", X"fb4b",
                                                        X"06e3", X"00e5", X"f9ab", X"1061", X"0362", X"023d", X"eadd", X"058c", X"f301", X"f708", X"00e8", X"f5a6", X"fb63", X"fbb2",
                                                        X"017c", X"f822", X"05e7", X"0816", X"f8e7", X"0849", X"fc58", X"0498", X"02b0", X"060e", X"f1b9", X"fd71", X"054f", X"faf6",
                                                        X"fd5b", X"030c", X"fc99", X"f74c", X"06fd", X"03c7", X"0092", X"0407", X"0083", X"04c9", X"03c5", X"01ba", X"f37d", X"053c",
                                                        X"fb6c", X"fd9c", X"fd19", X"fecd", X"ffb3", X"f76a", X"011a", X"0328", X"f3f1", X"027e", X"00c5", X"0312", X"f558", X"04ca",
                                                        X"faad", X"fe36", X"0210", X"f997", X"0446", X"fa0b", X"f789", X"f67f", X"0263", X"0062", X"fcc9", X"016e", X"fde0", X"01f1",
                                                        X"15a0", X"fb9e", X"fc74", X"06e9", X"0212", X"0392", X"045e", X"0248", X"fd38", X"f8fb", X"02c1", X"00af", X"f673", X"fa6a",
                                                        X"fec1", X"0302", X"0164", X"04f3", X"fa2e", X"fe74", X"0401", X"fe1e", X"066b", X"fa13", X"f557", X"f75d", X"0555", X"07f6",
                                                        X"f939", X"f9ee", X"fefe", X"018c", X"f683", X"068a", X"06e2", X"05be", X"01d3", X"05d0", X"098f", X"010b", X"fa75", X"ff48",
                                                        X"ff0c", X"f72b", X"f73d", X"f50d", X"0395", X"ff7a", X"08d2", X"01ef", X"ffd5", X"08f7", X"0262", X"fee2", X"0768", X"fcdd",
                                                        X"041e", X"05bf", X"01dd", X"02cb", X"fe5d", X"f5e1", X"f9e5", X"0481", X"0191", X"013c", X"063d", X"067a", X"02ce", X"042e",
                                                        X"04bc", X"04cb", X"0031", X"041f", X"f27a", X"ec89", X"fac2", X"ffa9", X"fc18", X"f7dc", X"f665", X"fb76", X"fe25", X"00cb",
                                                        X"ffd0", X"fc1d", X"0a8f", X"fe40", X"0487", X"04d0", X"ed25", X"f387", X"0112", X"fd78", X"00f8", X"f32d", X"f71d", X"f4a1",
                                                        X"f402", X"02e4", X"fb8b", X"0350", X"04b4", X"019d", X"f9bc", X"08d3", X"f4a1", X"f68e", X"0006", X"002d", X"0475", X"fa81",
                                                        X"fa2e", X"f692", X"067d", X"018d", X"00e0", X"08b9", X"04a4", X"0f1b", X"fec5", X"0910", X"fc9c", X"ec7b", X"fa1e", X"fe44",
                                                        X"fdfc", X"fa8b", X"ef51", X"fc5f", X"0269", X"004e", X"fb8a", X"faff", X"fc93", X"0a53", X"0483", X"0c08", X"f956", X"f79b",
                                                        X"fc15", X"09fe", X"f987", X"fe5d", X"f981", X"0010", X"016c", X"fe95", X"f535", X"fcb4", X"f4af", X"00a3", X"0714", X"0082",
                                                        X"0354", X"04b9", X"fae4", X"ff1e", X"fb29", X"ff68", X"f3e1", X"07c2", X"0836", X"045e", X"009b", X"f5ee", X"03c0", X"f57a",
                                                        X"ff07", X"031e", X"039a", X"046e", X"f60b", X"0428", X"fe17", X"0278", X"f672", X"07e4", X"042f", X"04fc", X"f779", X"f7df",
                                                        X"fecc", X"0425", X"07c1", X"fed2", X"0860", X"00df", X"fbf1", X"0bc4", X"fafa", X"02c4", X"fa25", X"056b", X"04b5", X"fe81",
                                                        X"0297", X"f67c", X"fd40", X"0acc", X"0835", X"f95b", X"0493", X"06cd", X"ffbc", X"030f", X"00fb", X"03bf", X"00f7", X"03ef",
                                                        X"f112", X"f6d1", X"005a", X"01e7", X"0831", X"08c5", X"f75d", X"f48f", X"018c", X"017b", X"006d", X"052f", X"06c5", X"0129",
                                                        X"fbef", X"fc6e", X"f1f3", X"f2ef", X"ed94", X"058b", X"f934", X"09e1", X"ed54", X"ec85", X"0229", X"f962", X"fbeb", X"0a20",
                                                        X"fc83", X"0330", X"fe59", X"fdd9", X"fb15", X"ef36", X"fb17", X"f93c", X"f87d", X"01bb", X"fcb2", X"f0db", X"01a4", X"f53f",
                                                        X"fb12", X"fa46", X"fd4e", X"ff46", X"f106", X"fd37", X"fa5b", X"fe6d", X"fabf", X"0a30", X"065c", X"f685", X"f9b5", X"f9d6",
                                                        X"047c", X"048a", X"f76f", X"f982", X"011b", X"071d", X"0968", X"01af", X"0f7b", X"0147", X"011e", X"fc98", X"0dde", X"05d3",
                                                        X"ff66", X"feb8", X"ff28", X"fd75", X"fa83", X"fea0", X"0165", X"02a1", X"02e7", X"ffa6", X"0295", X"05fa", X"03ca", X"0332",
                                                        X"0ed2", X"0789", X"01b5", X"0209", X"fd8a", X"fbe1", X"fef4", X"01bb", X"fbef", X"fdd2", X"ff50", X"042b", X"013a", X"039e",
                                                        X"0a79", X"07bc", X"001f", X"0ffe", X"fc5f", X"0150", X"f860", X"0138", X"fe11", X"f594", X"0263", X"fae0", X"0912", X"0099",
                                                        X"006c", X"022d", X"0171", X"05a6", X"04db", X"01fa", X"fb0f", X"023b", X"efda", X"052e", X"f9bd", X"fad7", X"fed7", X"fa27",
                                                        X"f8d9", X"0405", X"0342", X"025a", X"01ef", X"0354", X"ff58", X"1458", X"fedd", X"02a8", X"eec0", X"00be", X"014d", X"0629",
                                                        X"0190", X"f7c5", X"08cb", X"ffe7", X"001a", X"00a9", X"fdfb", X"05e0", X"fa93", X"1806", X"fbe9", X"030e", X"f5be", X"fb47",
                                                        X"ff5d", X"fa96", X"f8e6", X"fa8f", X"01ec", X"033f", X"0099", X"0111", X"fbf2", X"fe80", X"067e", X"03d7", X"fbf3", X"02c3",
                                                        X"f8e9", X"f77a", X"fb16", X"092b", X"fdf6", X"fbfe", X"f32b", X"040b", X"00bb", X"fd45", X"fd49", X"fff7", X"022a", X"0905",
                                                        X"02ec", X"0656", X"fc8e", X"fb6d", X"f8db", X"02ed", X"f38b", X"fd47", X"f295", X"03f7", X"04f2", X"04d8", X"fc70", X"f8d3",
                                                        X"fe4f", X"077e", X"0b3b", X"05f3", X"040b", X"0788", X"f90d", X"09c0", X"011f", X"0280", X"044e", X"0693", X"01e8", X"02bc",
                                                        X"0690", X"f801", X"0c28", X"0c1d", X"06f0", X"0654", X"0408", X"023a", X"f8f0", X"01c5", X"fe93", X"fffb", X"09bc", X"0918",
                                                        X"014d", X"03b3", X"04cd", X"fbc8", X"06c7", X"1118", X"fe9c", X"03a8", X"0067", X"0728", X"ff68", X"0b32", X"f96a", X"02f8",
                                                        X"06f1", X"053b", X"020c", X"fd66", X"01b2", X"fcdc", X"f69b", X"fcb3", X"fc0e", X"f6b5", X"fc03", X"0365", X"fb2e", X"0507",
                                                        X"fd6a", X"018a", X"f9a0", X"042b", X"f612", X"fd3c", X"fbe8", X"fea2", X"f990", X"ffd9", X"f487", X"f6df", X"050f", X"0852",
                                                        X"0198", X"08ca", X"fac5", X"0134", X"f8b2", X"02b2", X"fe6b", X"00f3", X"f8ba", X"fef2", X"f98c", X"033e", X"fba8", X"eee8",
                                                        X"088a", X"086a", X"f837", X"ffca", X"fe36", X"0041", X"f64f", X"001d", X"fddf", X"0079", X"f5d7", X"004b", X"03a5", X"0454",
                                                        X"f7e1", X"f32d", X"0a5f", X"04f1", X"f806", X"fa8b", X"fb0b", X"0024", X"0088", X"fcce", X"01e9", X"020a", X"fc0d", X"0045",
                                                        X"029a", X"0155", X"f78d", X"f8c8", X"0153", X"f847", X"f93f", X"fdb4", X"0178", X"0256", X"00ce", X"f85c", X"0139", X"0251",
                                                        X"00f2", X"0259", X"0d31", X"10db", X"f5ab", X"fafd", X"f909", X"f8af", X"f43d", X"f8c5", X"fb68", X"0404", X"04e6", X"fdd5",
                                                        X"03be", X"052d", X"05cb", X"0884", X"0a91", X"0647", X"fda4", X"00a3", X"fe68", X"faf2", X"f9fe", X"f933", X"0081", X"0150",
                                                        X"f601", X"fc95", X"052e", X"077f", X"08f9", X"0079", X"0252", X"08cb", X"feed", X"04a2", X"f6d9", X"01cd", X"0443", X"038a",
                                                        X"018b", X"00d2", X"fc8a", X"fee0", X"f8cb", X"fcca", X"0904", X"04a5", X"0048", X"00f7", X"f8b8", X"0317", X"eed5", X"fe83",
                                                        X"ffe7", X"052d", X"022e", X"ff9e", X"fb78", X"f895", X"f0a7", X"fb25", X"0798", X"ff6c", X"fda5", X"0380", X"0648", X"0775",
                                                        X"f9c0", X"f3e4", X"0051", X"0a5b", X"01ed", X"f9c4", X"002f", X"fb18", X"021d", X"fcbf", X"01ee", X"03c3", X"fddb", X"059d",
                                                        X"fd78", X"03f9", X"fc52", X"f13b", X"01b7", X"fd3f", X"05b6", X"fbb3", X"f8cb", X"fa0e", X"fb5c", X"035c", X"0280", X"fe92",
                                                        X"f9c7", X"059a", X"082f", X"0613", X"fc5e", X"f6ba", X"fef8", X"027d", X"fef5", X"fd6d", X"0435", X"fafe", X"f79c", X"0074",
                                                        X"04bb", X"fd30", X"0548", X"fcc0", X"0804", X"082a", X"0368", X"fe89", X"feb3", X"05fc", X"f71f", X"fea5", X"fed0", X"fb4a",
                                                        X"0a50", X"0796", X"03f5", X"024a", X"05d0", X"0afd", X"0c09", X"03a9", X"fd76", X"fa36", X"f788", X"ffbb", X"f97d", X"0206",
                                                        X"001c", X"036c", X"0662", X"05fc", X"fd40", X"ff69", X"053a", X"0995", X"0822", X"fd3c", X"08e5", X"0243", X"02c1", X"ff72",
                                                        X"fe1a", X"00f6", X"040b", X"09ae", X"095e", X"0482", X"fdfe", X"00b4", X"f85f", X"0624", X"0bc2", X"fabc", X"0791", X"0468",
                                                        X"fdb9", X"0865", X"04d2", X"fdef", X"08ac", X"050a", X"04d0", X"fbd5", X"f873", X"fdd0", X"f272", X"10b2", X"ff61", X"f4d6",
                                                        X"0339", X"0542", X"0316", X"054c", X"fd0a", X"feb0", X"0da6", X"ffb3", X"013e", X"f830", X"ffe4", X"ff10", X"ffc2", X"0a1b",
                                                        X"f726", X"f1d1", X"05e4", X"fda8", X"f61c", X"034d", X"01ce", X"fff9", X"0407", X"fb3e", X"f5b1", X"f86d", X"f43b", X"fb4a",
                                                        X"0822", X"f4d9", X"f226", X"ebdb", X"090b", X"003f", X"f422", X"ff56", X"0099", X"0483", X"f580", X"f69a", X"f980", X"fc09",
                                                        X"f4e4", X"04ae", X"fd71", X"05b8", X"f2df", X"edef", X"07c6", X"fc65", X"fd12", X"f4b6", X"0109", X"0539", X"fbf8", X"fd53",
                                                        X"fa76", X"fc17", X"ff5e", X"0124", X"0858", X"fe3e", X"fd69", X"f847", X"03dd", X"0398", X"fcb1", X"f990", X"0011", X"0020",
                                                        X"0391", X"072e", X"0313", X"00be", X"0032", X"03fd", X"0199", X"f0e8", X"00b1", X"fd9c", X"005d", X"00b8", X"02f5", X"fd58",
                                                        X"ff77", X"00f2", X"032f", X"0401", X"099c", X"fe0d", X"02b9", X"fbec", X"08e1", X"fee1", X"fda7", X"fc7e", X"fb74", X"01f6",
                                                        X"047e", X"fdd8", X"044f", X"fd82", X"fe41", X"ff85", X"fa63", X"fd79", X"00b7", X"05ac", X"0ba3", X"0609", X"f66a", X"ff53",
                                                        X"fe37", X"f7e0", X"fbbe", X"fff0", X"fcc8", X"fe26", X"fe19", X"f911", X"f94b", X"fe0e", X"0093", X"fe48", X"0102", X"0438",
                                                        X"f9f1", X"05bd", X"f75a", X"02f6", X"03e5", X"f9cc", X"041d", X"fd7a", X"f432", X"fec0", X"0556", X"fb42", X"ffa7", X"016f",
                                                        X"02cd", X"fe73", X"ff54", X"02d2", X"f325", X"f78f", X"00ff", X"fa04", X"00b9", X"f680", X"fd82", X"fce1", X"0186", X"fd6d",
                                                        X"05f7", X"0360", X"fe6e", X"efcc", X"0169", X"0478", X"f204", X"f1c5", X"ff10", X"fc52", X"ffa2", X"f6ac", X"ffd2", X"013b",
                                                        X"05e6", X"fe95", X"00cd", X"051d", X"053d", X"f63e", X"0145", X"0454", X"f7e1", X"f871", X"fddc", X"0d77", X"fd5f", X"f830",
                                                        X"fd5a", X"fa94", X"fbcc", X"0043", X"fca5", X"061a", X"fc25", X"fc75", X"0053", X"03eb", X"fd7d", X"00a8", X"fa4d", X"ffc0",
                                                        X"ffb9", X"fb91", X"f646", X"04dc", X"0357", X"fc26", X"0593", X"021b", X"03de", X"fbee", X"05aa", X"06a4", X"0311", X"f8a3",
                                                        X"fb44", X"096c", X"fadd", X"02eb", X"016f", X"04cd", X"001f", X"013f", X"04a9", X"f479", X"fcbb", X"0aa8", X"0277", X"fc7e",
                                                        X"0c19", X"0380", X"0039", X"095d", X"0236", X"02a0", X"054d", X"0664", X"059f", X"03d5", X"f756", X"fbf2", X"fd05", X"0a69",
                                                        X"fb40", X"faf1", X"1a21", X"09d2", X"00bc", X"0f51", X"019f", X"0842", X"030c", X"0ea8", X"fcaf", X"057f", X"f50c", X"fa14",
                                                        X"e5b8", X"0b54", X"f806", X"e66a");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"e66a";
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
