-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block362.vhd
-- Created: 2024-11-04 16:44:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block362
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage13/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block362 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block362;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block362 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"f097", X"03c5", X"f9f0", X"0db2", X"fbcc", X"fe02",
                                                        X"f790", X"0965", X"0642", X"fda6", X"fabe", X"fbae", X"fe53", X"07f3", X"ffcd", X"0f1e", X"f6fe", X"0862", X"0439", X"01ed",
                                                        X"009e", X"0094", X"f4f2", X"0bbe", X"04cc", X"fbec", X"fa5f", X"fae4", X"05c1", X"fe7c", X"043e", X"0701", X"fb7c", X"fe6a",
                                                        X"03db", X"08b4", X"0370", X"0350", X"f3f5", X"0efe", X"fd67", X"fe14", X"fc5c", X"fa02", X"055e", X"f81b", X"ff4a", X"0072",
                                                        X"0090", X"04f3", X"020e", X"0e25", X"02a7", X"fc64", X"0ac9", X"09a1", X"fbe5", X"ff06", X"ffaa", X"f65f", X"fa89", X"0913",
                                                        X"ffab", X"0521", X"08d9", X"0625", X"fadc", X"111e", X"032b", X"fd25", X"08e7", X"fe96", X"fb8a", X"0000", X"fbd1", X"fc2c",
                                                        X"fd60", X"05d1", X"fcd3", X"fff6", X"05e7", X"022f", X"fc9e", X"05bc", X"fd1c", X"0052", X"ffb6", X"fc93", X"0268", X"fbc3",
                                                        X"fefc", X"ea40", X"0175", X"0c93", X"fe86", X"fc16", X"06bf", X"0790", X"f5fb", X"068d", X"0177", X"010e", X"05dd", X"fafa",
                                                        X"fafe", X"f907", X"02db", X"ffac", X"fcd1", X"04e4", X"fd2c", X"fe76", X"09fe", X"050f", X"fc43", X"05fd", X"02bd", X"fe75",
                                                        X"fb54", X"f74d", X"0227", X"f914", X"077f", X"053b", X"f92a", X"0b8f", X"f9de", X"f3de", X"042f", X"02a2", X"f8eb", X"feb9",
                                                        X"0002", X"fcab", X"032e", X"f577", X"042b", X"fd2b", X"06ff", X"fdf4", X"f57b", X"f4dd", X"fe94", X"f248", X"032c", X"fd25",
                                                        X"00ae", X"fe3d", X"ff54", X"fd4a", X"ec72", X"f8c4", X"018b", X"faca", X"0273", X"fe56", X"fef0", X"fd5c", X"0141", X"f8d3",
                                                        X"0146", X"fe2d", X"fbf7", X"f88d", X"062f", X"ffc3", X"fe6e", X"fd1c", X"08a2", X"fc66", X"044a", X"0d07", X"019e", X"fc83",
                                                        X"fc14", X"f576", X"f62c", X"f34b", X"ffe0", X"f532", X"0d69", X"ff7b", X"faa6", X"f8fb", X"01a3", X"03c3", X"019e", X"08f1",
                                                        X"07fd", X"0200", X"f2dc", X"fa0b", X"f9e6", X"f73d", X"fd4f", X"efb2", X"02b3", X"fc7d", X"01f9", X"fb50", X"0621", X"0970",
                                                        X"0094", X"0e54", X"fd8c", X"11ea", X"fac9", X"04f9", X"fdef", X"f393", X"f9d4", X"fd78", X"0226", X"ff9d", X"023d", X"0343",
                                                        X"02cf", X"086e", X"ff3a", X"03b7", X"0249", X"0771", X"f6bb", X"0658", X"ffc8", X"fc82", X"fb6c", X"ff0a", X"0557", X"fcf8",
                                                        X"03f8", X"01d5", X"09ce", X"0430", X"fd1b", X"0610", X"fd1b", X"0ff4", X"01a5", X"08fd", X"fb16", X"01ba", X"ff50", X"0344",
                                                        X"07f9", X"f935", X"f9cc", X"0703", X"0254", X"fc14", X"ffef", X"0329", X"044b", X"fbe7", X"fadc", X"0693", X"fc2e", X"fd3d",
                                                        X"f8f6", X"0882", X"0281", X"ff14", X"f271", X"0699", X"ff44", X"f5e9", X"fd6f", X"fdfc", X"09ed", X"fcb0", X"fdcd", X"0146",
                                                        X"fe32", X"f551", X"fa31", X"0307", X"0078", X"fbf5", X"ed5e", X"0cc1", X"040c", X"f72e", X"f9c1", X"fbda", X"0139", X"03b8",
                                                        X"fc1d", X"00b8", X"f95d", X"03b2", X"fe35", X"0576", X"0123", X"fde0", X"fbfc", X"0983", X"0bf6", X"fcc1", X"0302", X"f3c5",
                                                        X"0622", X"09bf", X"fda7", X"ffb2", X"ff85", X"0776", X"f345", X"0558", X"fea3", X"fbe5", X"fe63", X"0be9", X"0503", X"f75d",
                                                        X"0cef", X"f31a", X"0043", X"070b", X"0685", X"ffc3", X"08fb", X"09e8", X"f6ea", X"0985", X"ffe5", X"007e", X"fd43", X"0469",
                                                        X"00b3", X"fa3c", X"003e", X"f2ab", X"f72c", X"0306", X"fe6c", X"0418", X"0432", X"059b", X"fd9d", X"0c90", X"06bf", X"0086",
                                                        X"0d92", X"03b6", X"fbae", X"fcc3", X"0162", X"ecf9", X"fe52", X"09f2", X"fb1d", X"0491", X"0c27", X"04c5", X"ff49", X"07f0",
                                                        X"0215", X"fe36", X"04a7", X"ff8f", X"fc61", X"f890", X"03fa", X"f9f6", X"f790", X"0bf3", X"fd2b", X"fa43", X"09bd", X"fabc",
                                                        X"f75a", X"ffcd", X"fe5a", X"00d3", X"05ea", X"f8c9", X"f77f", X"fcf2", X"0140", X"fe6c", X"fcaf", X"0bc7", X"f92a", X"f73a",
                                                        X"0617", X"034d", X"fdf1", X"08f0", X"0474", X"0470", X"f02a", X"fbd3", X"03ef", X"f77b", X"08fd", X"fff1", X"fa80", X"0d05",
                                                        X"fc23", X"f51a", X"0a07", X"fa9d", X"fc26", X"fa92", X"067b", X"02cd", X"fece", X"0287", X"0728", X"f894", X"043b", X"0031",
                                                        X"0240", X"0865", X"f9a6", X"f209", X"008a", X"ffec", X"ffc0", X"f9f3", X"0193", X"02e3", X"fc71", X"072e", X"0257", X"f9fb",
                                                        X"069e", X"0813", X"00ef", X"0002", X"fa55", X"f36a", X"0003", X"fed2", X"fb6e", X"fc0e", X"06de", X"fb38", X"0184", X"fc11",
                                                        X"01f3", X"032a", X"050c", X"071d", X"01aa", X"0613", X"f83c", X"fe72", X"fcb8", X"0176", X"fdc0", X"01a7", X"036e", X"fe4d",
                                                        X"f527", X"fdd6", X"09fd", X"035b", X"05de", X"0556", X"fbef", X"0078", X"f79c", X"ff31", X"fd39", X"fcdb", X"fb0a", X"f71c",
                                                        X"0342", X"f803", X"000d", X"ff93", X"04b7", X"039d", X"03a3", X"09c3", X"fc97", X"f6d5", X"f865", X"0051", X"fddb", X"f962",
                                                        X"fa92", X"ff09", X"03b9", X"fa51", X"0100", X"039b", X"0964", X"0458", X"ff5f", X"0947", X"00ff", X"1d57", X"fb6b", X"08a5",
                                                        X"f4bb", X"fcd7", X"feb1", X"fc84", X"0096", X"fee0", X"fb83", X"0763", X"0951", X"feca", X"ff71", X"0b13", X"020b", X"06af",
                                                        X"ffd5", X"087d", X"f321", X"fe30", X"fece", X"0534", X"facb", X"fe57", X"f4a6", X"00da", X"fe4c", X"00e3", X"000a", X"04a8",
                                                        X"fb84", X"09f3", X"fce5", X"0658", X"f610", X"fe4f", X"0093", X"0ecb", X"fc66", X"fce2", X"f139", X"0c2d", X"052e", X"f7d6",
                                                        X"f958", X"f893", X"fbea", X"078a", X"fed3", X"046b", X"fa39", X"fc42", X"feb8", X"0c37", X"0023", X"fbcc", X"f829", X"0a5e",
                                                        X"0098", X"f965", X"fae3", X"f6d7", X"fd93", X"0a0f", X"00f6", X"0155", X"0144", X"04af", X"fb69", X"0d6f", X"0413", X"fca6",
                                                        X"f5c6", X"06ef", X"fe2a", X"f4c0", X"fd29", X"f022", X"faed", X"0e9d", X"ffac", X"ff6a", X"0742", X"08d6", X"0053", X"0cba",
                                                        X"fd2f", X"fee7", X"f6cf", X"0113", X"ff11", X"f4e5", X"ff69", X"fb9a", X"fa04", X"0423", X"f858", X"0443", X"0af5", X"0508",
                                                        X"019f", X"0601", X"052a", X"01ce", X"09b9", X"03f6", X"080e", X"fa37", X"075e", X"f510", X"fda9", X"f8f5", X"fd17", X"fd84",
                                                        X"08d8", X"01d1", X"ffef", X"0bae", X"0492", X"0190", X"15dd", X"f85e", X"0a09", X"fe6c", X"ff57", X"f676", X"fd20", X"007e",
                                                        X"018d", X"f634", X"080b", X"0031", X"f73d", X"fd3e", X"009c", X"feef", X"fec1", X"f7c9", X"0172", X"fc8a", X"0886", X"f9d3",
                                                        X"053b", X"091b", X"f7f8", X"f7c6", X"0801", X"0051", X"f9cf", X"02ac", X"05be", X"ff57", X"0386", X"ff73", X"056f", X"fe94",
                                                        X"0a94", X"064c", X"03ac", X"0f21", X"fd5f", X"fce4", X"0b45", X"ff21", X"fe5f", X"fafd", X"06ea", X"029f", X"011b", X"00bb",
                                                        X"fdb2", X"021a", X"05e7", X"ff81", X"0674", X"0d33", X"f503", X"0015", X"fb06", X"ff60", X"fd7f", X"ff53", X"fc42", X"03c7",
                                                        X"0e6c", X"0081", X"0604", X"0433", X"07d6", X"09e3", X"fca3", X"1584", X"0162", X"f447", X"fe0c", X"0802", X"fcdd", X"f810",
                                                        X"00aa", X"fd16", X"fa3b", X"0662", X"0b21", X"fd33", X"051f", X"0bdd", X"fd23", X"fa7e", X"fe0b", X"f85e", X"ff0d", X"ffe7",
                                                        X"f601", X"f44b", X"07a4", X"ffe4", X"f2de", X"fd22", X"04fe", X"04e7", X"ff50", X"08fb", X"00f6", X"0a66", X"fd86", X"005a",
                                                        X"0142", X"f1e1", X"fda3", X"f95e", X"04fe", X"fe1d", X"046f", X"fe5a", X"ffd5", X"0230", X"fc7d", X"05fb", X"fa40", X"0842",
                                                        X"f8c0", X"02b4", X"f91c", X"f953", X"fcf4", X"0479", X"071b", X"fe25", X"0316", X"0251", X"005e", X"0187", X"01a7", X"0103",
                                                        X"fdff", X"01cb", X"f9b1", X"0470", X"fb2a", X"006e", X"fe94", X"0186", X"ff8a", X"fd55", X"fafd", X"0886", X"fd34", X"fd97",
                                                        X"00fa", X"ffeb", X"fcdc", X"f9dc", X"f82f", X"0717", X"f765", X"fb8a", X"f9ce", X"0381", X"0392", X"fb57", X"0626", X"0c5a",
                                                        X"06f6", X"fd51", X"fe10", X"f981", X"fa2d", X"fd02", X"fc7d", X"0b23", X"fc7f", X"feb6", X"fb93", X"0ba1", X"fc98", X"fcd8",
                                                        X"0338", X"0535", X"014d", X"004a", X"fea8", X"f829", X"f8bf", X"074d", X"fe24", X"05a3", X"01de", X"fd42", X"fd99", X"08f1",
                                                        X"f8ba", X"fda0", X"0aaf", X"0a17", X"fdb9", X"f4ce", X"02d5", X"f232", X"f939", X"0887", X"fabc", X"0311", X"ff0c", X"06de",
                                                        X"f91d", X"112b", X"0045", X"ffd8", X"f306", X"0a8d", X"0174", X"f9e2", X"0455", X"f288", X"ffc1", X"108a", X"028b", X"f8f4",
                                                        X"088c", X"fd7f", X"00b2", X"0f41", X"01c6", X"0039", X"fca5", X"fc9a", X"0429", X"f757", X"0211", X"eebb", X"fa6d", X"0c06",
                                                        X"fbc0", X"fd6b", X"0def", X"0436", X"0113", X"06bf", X"021a", X"ff1c", X"03b2", X"fe4d", X"01bb", X"fe80", X"0355", X"f35a",
                                                        X"0059", X"fb40", X"fc18", X"fed8", X"0b06", X"f94c", X"f990", X"0046", X"0256", X"fcfa", X"fe57", X"facc", X"0f16", X"fadc",
                                                        X"0226", X"f19a", X"ff18", X"01ef", X"0221", X"f797", X"0670", X"06c4", X"f976", X"0161", X"01d7", X"024a", X"0417", X"f891",
                                                        X"fa41", X"f39f", X"03dc", X"fa8e", X"01f5", X"fe52", X"f514", X"f345", X"0254", X"063a", X"fa46", X"0158", X"0343", X"0338",
                                                        X"0644", X"f415", X"f762", X"fc19", X"071d", X"0478", X"00bd", X"fb27", X"fe1a", X"f82a", X"0425", X"040a", X"fcd6", X"fcb5",
                                                        X"0533", X"ff65", X"0274", X"011b", X"02d8", X"03b4", X"08b4", X"0122", X"feb4", X"fe21", X"fbfd", X"f86c", X"fe24", X"fcf8",
                                                        X"fbe3", X"fe21", X"05c3", X"fe7f", X"f5b0", X"fbd1", X"0128", X"fde5", X"073b", X"051b", X"fe9f", X"fbdb", X"f8f3", X"f828",
                                                        X"0205", X"fb81", X"02f7", X"fdda", X"0462", X"fefe", X"044b", X"fc68", X"0413", X"053a", X"083b", X"0f38", X"07c8", X"0552",
                                                        X"fad4", X"fcaa", X"045f", X"fa0f", X"028d", X"f82e", X"08cf", X"fd9c", X"0572", X"feed", X"0b0f", X"045d", X"fce8", X"00e3",
                                                        X"012c", X"11c0", X"fdbf", X"00de", X"fd0e", X"0034", X"ff8e", X"f765", X"08f7", X"fdd7", X"fdde", X"fe8c", X"06ca", X"0180",
                                                        X"fa5d", X"0616", X"03a6", X"17e9", X"fb67", X"03a5", X"0307", X"fe60", X"f93b", X"fce0", X"0601", X"fc55", X"04e8", X"03dc",
                                                        X"0681", X"057c", X"fbaa", X"076c", X"ff61", X"0140", X"01b8", X"04f7", X"f9d4", X"0192", X"fff6", X"0003", X"fff7", X"fc39",
                                                        X"036f", X"03f7", X"002f", X"008f", X"f8fd", X"00d0", X"f423", X"1791", X"f49f", X"0575", X"f3a2", X"fdf1", X"fdbb", X"0214",
                                                        X"0393", X"fae5", X"f7e5", X"0650", X"f78b", X"fb6d", X"f945", X"0104", X"034f", X"0eff", X"f8fa", X"0364", X"f772", X"f8d7",
                                                        X"f7f8", X"0960", X"f8dc", X"f7fb", X"f311", X"0bd6", X"fc88", X"eecd", X"f98e", X"fa47", X"f8b9", X"0b22", X"f8c3", X"0603",
                                                        X"f71f", X"fd13", X"f9f5", X"0aff", X"ffa6", X"fd53", X"e789", X"08bc", X"fdff", X"f868", X"fc5c", X"fd03", X"fece", X"08e6",
                                                        X"0094", X"03c7", X"fc42", X"00b2", X"f9ed", X"0cb3", X"0195", X"fdb0", X"fb75", X"03ba", X"0498", X"f7a7", X"ffc9", X"f6a8",
                                                        X"feb1", X"157d", X"0045", X"f9ef", X"0540", X"0244", X"fc92", X"0813", X"0395", X"01dd", X"00a7", X"01b2", X"038d", X"02a3",
                                                        X"fd6e", X"f112", X"feeb", X"15d5", X"ffa0", X"0095", X"0b20", X"040d", X"fdcc", X"0cb8", X"0273", X"01b2", X"0330", X"0433",
                                                        X"0710", X"f862", X"fda6", X"f42b", X"fd52", X"0b10", X"0174", X"015d", X"0ae9", X"0757", X"011f", X"06bc", X"092a", X"ff80",
                                                        X"0087", X"0140", X"ff02", X"0011", X"0467", X"f9c1", X"fdea", X"182d", X"fd45", X"00fe", X"0314", X"ffb3", X"fc93", X"0abd",
                                                        X"0232", X"ffb6", X"f9df", X"fe56", X"fdaf", X"fc7d", X"04e1", X"ff4c", X"0111", X"10c2", X"fb9d", X"f8e1", X"feb3", X"f8f0",
                                                        X"0375", X"fe66", X"0461", X"00cb", X"f7f1", X"0192", X"0083", X"f928", X"062f", X"048e", X"027d", X"f123", X"fb73", X"f851",
                                                        X"05d8", X"fc37", X"ff84", X"fddb", X"0010", X"ff79", X"fe13", X"f80f", X"0455", X"fdbf", X"0522", X"ff3a", X"0220", X"08bf",
                                                        X"f8db", X"f93e", X"0631", X"002e", X"fa31", X"fdd9", X"0122", X"0130", X"0146", X"ff4d", X"01b2", X"029f", X"06be", X"0347",
                                                        X"099e", X"0aa7", X"f72e", X"fd3d", X"02e1", X"06c6", X"fa90", X"fba3", X"031c", X"fec0", X"032e", X"fe5d", X"001a", X"0aad",
                                                        X"048e", X"0b2b", X"f9c3", X"0658", X"fa62", X"0032", X"fec9", X"fd07", X"0058", X"f684", X"08ae", X"fbb7", X"0b6d", X"0533",
                                                        X"0620", X"0945", X"0396", X"0879", X"fdb0", X"11c7", X"fc4c", X"fd2c", X"f899", X"edca", X"f64c", X"fa02", X"0817", X"fe4b",
                                                        X"f900", X"04fc", X"fd7f", X"06b5", X"022d", X"09fb", X"06bd", X"fcf9", X"f95b", X"02d4", X"fe22", X"fe72", X"f733", X"051d",
                                                        X"fe39", X"fe9d", X"07a1", X"07c6", X"ff17", X"03b3", X"fce2", X"0c1c", X"00b0", X"02fc", X"f884", X"0348", X"fb50", X"0181",
                                                        X"0039", X"0521", X"06c1", X"fd2b", X"f276", X"0a0c", X"027d", X"fe0b", X"ffae", X"fcad", X"fa6b", X"0459", X"fa1d", X"06ed",
                                                        X"f758", X"f3fb", X"fccb", X"08d3", X"fd93", X"fb60", X"fdac", X"06fd", X"00bf", X"fb8e", X"fd6b", X"0354", X"ff79", X"0311",
                                                        X"fbb6", X"08f2", X"0102", X"fc54", X"f788", X"0a25", X"fdbd", X"01e9", X"f9ec", X"0a13", X"ffce", X"fe3e", X"fec3", X"ffa5",
                                                        X"074d", X"f1fb", X"fcf6", X"0467", X"fda2", X"00ad", X"fca8", X"10e2", X"010a", X"0438", X"0232", X"058e", X"fd42", X"0328",
                                                        X"fa58", X"f8d7", X"fd9a", X"073d", X"ffe1", X"fdba", X"0687", X"020d", X"0067", X"098e", X"00f3", X"00be", X"fafe", X"0489",
                                                        X"0633", X"fc35", X"f57e", X"f41b", X"feec", X"0706", X"02ce", X"ffbd", X"02be", X"0613", X"0364", X"0f73", X"0162", X"ff90",
                                                        X"fff4", X"031e", X"031b", X"fa12", X"050e", X"f9f7", X"00c0", X"1bdf", X"00f7", X"fa6c", X"0a6b", X"0356", X"ff07", X"092b",
                                                        X"0333", X"027d", X"0470", X"fd99", X"f7d6", X"fc35", X"fa3b", X"fc95", X"fc13", X"0242", X"ffe6", X"fb6c", X"0753", X"0367",
                                                        X"fdf3", X"0426", X"ff46", X"0030", X"070e", X"004b", X"048f", X"fafa", X"039c", X"f6f3", X"fbcf", X"0a9b", X"fdfe", X"f7ff",
                                                        X"03b1", X"0893", X"fe5d", X"09ca", X"06fb", X"fe57", X"04da", X"fd8a", X"f819", X"f6ba", X"0324", X"f98c", X"fd69", X"fc70",
                                                        X"f54a", X"fad2", X"05e3", X"f9cd", X"fdfb", X"0149", X"fbde", X"f9ea", X"0793", X"008b", X"fd24", X"f5e6", X"0560", X"fe09",
                                                        X"fcaa", X"0777", X"f8c9", X"f562", X"0224", X"fd1a", X"f689", X"f79f", X"fe94", X"0175", X"f7ce", X"f5bb", X"091e", X"fc08",
                                                        X"0347", X"0285", X"f87c", X"fb61", X"fdab", X"f3ef", X"fb0b", X"fed6", X"fbcf", X"fddb", X"0464", X"ff3d", X"033a", X"fa57",
                                                        X"0d07", X"02f8", X"0cbe", X"0570", X"06eb", X"f6e5", X"009a", X"f5e3", X"febf", X"fe74", X"fdf4", X"e8d3", X"061b", X"fead",
                                                        X"ffb7", X"fc76", X"07a7", X"0457", X"08a0", X"08c8", X"0bf4", X"faf2", X"f88e", X"01d3", X"fd7f", X"fdc3", X"fcad", X"fc1e",
                                                        X"09c3", X"0125", X"f2d6", X"0195", X"050c", X"0679", X"058e", X"0e62", X"0656", X"fbda", X"f3b6", X"04af", X"fb81", X"fd5f",
                                                        X"001f", X"0101", X"0189", X"fc73", X"0766", X"0220", X"06f5", X"082e", X"04bc", X"0b04", X"f8ca", X"0109", X"fb0e", X"07ad",
                                                        X"f8b9", X"fb68", X"0244", X"0608", X"051c", X"fc79", X"01b1", X"002c", X"0248", X"01a6", X"02c6", X"0b75", X"fcf7", X"0ff2",
                                                        X"fc81", X"090d", X"f27d", X"0885", X"ffaf", X"04fc", X"00ae", X"fe8b", X"fa02", X"07d3", X"ff5c", X"fbf2", X"f85c", X"06f1",
                                                        X"fe8a", X"0ab1", X"fd43", X"069c", X"f55b", X"08c7", X"ff5b", X"0572", X"fed7", X"ffa6", X"f09c", X"0777", X"fadb", X"fc9d",
                                                        X"f2d5", X"0002", X"02ed", X"fc53", X"fb08", X"00d8", X"f32b", X"f9d8", X"02ac", X"02fc", X"005d", X"fc8e", X"f414", X"0ac4",
                                                        X"fc94", X"fbaf", X"f42a", X"fe52", X"006f", X"ff5e", X"f8d5", X"02f7", X"f92a", X"095e", X"fb4f", X"0bfa", X"fec3", X"fda2",
                                                        X"091b", X"0d93", X"fe97", X"fe28", X"ff88", X"0086", X"0391", X"088d", X"05a4", X"0791", X"fad7", X"ff66", X"fb89", X"102d",
                                                        X"feab", X"feb1", X"fdf5", X"0470", X"0bb6", X"f90a", X"fceb", X"f1ac", X"02f7", X"0bb1", X"fee7", X"0198", X"0738", X"0afb",
                                                        X"f7f3", X"0ba5", X"ff28", X"fc1e", X"0780", X"04c0", X"0ad6", X"fab3", X"face", X"f8d0", X"ff6a", X"0ee3", X"00f2", X"ffbe",
                                                        X"04c5", X"02d9", X"f8f5", X"0feb", X"fe0f", X"fe19", X"0764", X"fdf0", X"fabb", X"f7b9", X"fc64", X"f16e", X"01f7", X"123f",
                                                        X"f736", X"f8e9", X"0636", X"fd6b", X"ffba", X"07db", X"fb48", X"0094", X"fdad", X"fcfa", X"038e", X"f423", X"0095", X"f3ff",
                                                        X"f95e", X"fe52", X"fe88", X"f84e", X"041c", X"0114", X"fba9", X"08d4", X"014d", X"017b", X"0338", X"fe4c", X"f5e3", X"f3cc",
                                                        X"026a", X"f9d9", X"ffd1", X"f8ac", X"fb34", X"f3f0", X"fd38", X"fb01", X"fffc", X"018b", X"03b0", X"fdab", X"ff37", X"ffb8",
                                                        X"fadc", X"f9eb", X"012d", X"008d", X"082d", X"07d6", X"fa41", X"f442", X"026c", X"fc57", X"f8ca", X"f726", X"01eb", X"0235",
                                                        X"fdef", X"f73a", X"0459", X"fa59", X"08b2", X"fded", X"06e0", X"0113", X"f68a", X"f54d", X"fbb3", X"f97e", X"fc8b", X"f938",
                                                        X"00aa", X"fcae", X"0d2a", X"fad3", X"fb90", X"0502", X"0ab4", X"0511", X"05d6", X"058e", X"fd6d", X"f591", X"fcdf", X"ff26",
                                                        X"f84f", X"f1cb", X"02dc", X"fb20", X"0b48", X"faa1", X"0482", X"061e", X"0830", X"07ce", X"fffc", X"08ac", X"fc02", X"f82c",
                                                        X"fe9e", X"04e4", X"f9fc", X"f288", X"064d", X"fd39", X"f6e5", X"0208", X"0350", X"02a6", X"fe47", X"087a", X"fa97", X"0bc9",
                                                        X"fc42", X"fcc0", X"0585", X"f8cb", X"fb14", X"fb28", X"0759", X"fef6", X"066f", X"fe13", X"031b", X"08b1", X"fb9f", X"0e8f",
                                                        X"f909", X"0a6a", X"f870", X"030b", X"fbfb", X"f9fc", X"fdf7", X"faa6", X"0568", X"0031", X"0274", X"06ef", X"00d6", X"026e",
                                                        X"fd91", X"0535", X"00e6", X"0043", X"fd09", X"0411", X"fced", X"0131", X"014e", X"fafb", X"fe5e", X"0067", X"0750", X"06e5",
                                                        X"04e4", X"fe49", X"f948", X"00f2", X"feaf", X"108d", X"fd22", X"0477", X"f9c9", X"033a", X"f847", X"055e", X"fb80", X"010a",
                                                        X"f7e8", X"0bb5", X"04f7", X"fe0e", X"00c3", X"fe74", X"fdb2", X"0048", X"fffc", X"06fb", X"f715", X"02c0", X"fb9d", X"06aa",
                                                        X"fe54", X"fdd6", X"fec2", X"093e", X"0333", X"fdde", X"ffd0", X"f908", X"f8e8", X"006c", X"03bc", X"05e4", X"fa46", X"03cd",
                                                        X"ff99", X"053e", X"f8c3", X"ff4b", X"ff68", X"0985", X"00c0", X"fe36", X"f8ed", X"fad7", X"03c1", X"f8e3", X"058f", X"0794",
                                                        X"fb30", X"ff14", X"fb68", X"0af4", X"049a", X"0154", X"f05d", X"0a2d", X"fd03", X"f937", X"fabc", X"efd8", X"03f9", X"f74b",
                                                        X"fc99", X"0129", X"08aa", X"09f8", X"02ec", X"0a3d", X"0005", X"ff4e", X"04ef", X"0029", X"0390", X"f794", X"014f", X"f520",
                                                        X"f660", X"0c9a", X"03b3", X"0344", X"07b6", X"0908", X"fd8b", X"023c", X"04c5", X"00ec", X"fa8e", X"04ec", X"034b", X"f5f4",
                                                        X"ff30", X"f328", X"fb89", X"0eca", X"fe8f", X"fff1", X"0795", X"056c", X"fc8e", X"0742", X"0306", X"01aa", X"0286", X"fd09",
                                                        X"ff2e", X"f646", X"01ab", X"fca6", X"0082", X"114b", X"faca", X"f945", X"09fb", X"f6e0", X"fc3b", X"f97d", X"03b4", X"0071",
                                                        X"0cfc", X"f628", X"ff04", X"f796", X"03cb", X"05cc", X"0690", X"fefa", X"f96f", X"f5eb", X"0432", X"fcf3", X"0102", X"0aba",
                                                        X"ff73", X"00b9", X"f31f", X"f89d", X"fb36", X"fb0d", X"06f8", X"067d", X"0376", X"05ac", X"ffc0", X"fada", X"023d", X"0116",
                                                        X"f7c0", X"fd3d", X"071e", X"ffec", X"f639", X"f8b6", X"fad1", X"00d0", X"0bf8", X"0313", X"03b8", X"0147", X"f5a3", X"f6d2",
                                                        X"02ce", X"099e", X"f79d", X"f8d4", X"048a", X"fd6a", X"f6e1", X"fd94", X"0a8c", X"022f", X"0a0f", X"054e", X"010c", X"03df",
                                                        X"fb94", X"fa54", X"f5c6", X"fd91", X"0113", X"e590", X"10dc", X"f839", X"f888", X"03b4", X"0159", X"0191", X"0926", X"0b52",
                                                        X"03b8", X"0667", X"f795", X"072b");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"072b";
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

