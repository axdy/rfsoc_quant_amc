-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block408.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block408
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage55/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block408 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block408;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block408 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0071", X"fe63", X"feb9", X"fef3", X"fb23", X"05d4",
                                                        X"0187", X"039a", X"02c0", X"ffa6", X"0419", X"05c4", X"002a", X"eee4", X"fc4b", X"02ed", X"0349", X"faaa", X"0061", X"fe58",
                                                        X"023b", X"0362", X"f86c", X"05af", X"fdc4", X"fc70", X"0441", X"fe71", X"febc", X"f73b", X"fb4e", X"004e", X"0520", X"fd06",
                                                        X"fae9", X"feee", X"01ba", X"0334", X"05fc", X"03ef", X"023e", X"f824", X"03e2", X"fa3c", X"054b", X"fdc4", X"fbd1", X"03b6",
                                                        X"035c", X"f68c", X"fc66", X"0397", X"01ba", X"0196", X"0000", X"0317", X"048c", X"f97d", X"0311", X"ff8e", X"fe6b", X"f981",
                                                        X"ff3b", X"02b0", X"fbf1", X"0005", X"0319", X"072f", X"faf4", X"002a", X"feed", X"064d", X"fda0", X"faf9", X"03c2", X"fa89",
                                                        X"fcb7", X"f677", X"f60c", X"ffff", X"ffb2", X"fdcf", X"03ac", X"034f", X"00c6", X"0007", X"0090", X"00c1", X"fb26", X"fc1a",
                                                        X"ff2a", X"0077", X"066d", X"f951", X"0049", X"ff35", X"02f3", X"f9af", X"fc21", X"fd20", X"fc83", X"00a6", X"fc81", X"fd22",
                                                        X"faed", X"f7bb", X"ff75", X"fd50", X"fcd4", X"f612", X"fc10", X"0374", X"035f", X"feba", X"ff82", X"fe6a", X"fd62", X"fe14",
                                                        X"fd75", X"fdbb", X"fec5", X"f5fa", X"fed1", X"fd9f", X"faec", X"f820", X"f86d", X"0279", X"0048", X"f7a9", X"fd42", X"fe30",
                                                        X"fd91", X"fed8", X"03cd", X"ff06", X"fe15", X"fe7b", X"0282", X"fcd7", X"00e7", X"f9b8", X"fd6b", X"02db", X"00c9", X"0472",
                                                        X"fe49", X"fd1f", X"fa52", X"fe9d", X"ff98", X"0282", X"0183", X"fef5", X"02b2", X"0046", X"fa0d", X"fa28", X"f8f6", X"05b0",
                                                        X"025b", X"0093", X"02b9", X"fd45", X"fa68", X"01ee", X"03aa", X"0247", X"fed6", X"fccc", X"ff86", X"f82f", X"f793", X"fcc6",
                                                        X"ff2f", X"fe80", X"fda9", X"fdab", X"fa6e", X"ffce", X"f8a8", X"fefa", X"0177", X"03e7", X"00df", X"f95a", X"f846", X"fcea",
                                                        X"f804", X"f19e", X"feed", X"01c3", X"fed6", X"fb88", X"fcb9", X"01ba", X"fb4c", X"0094", X"0243", X"ff0c", X"ff43", X"f8b0",
                                                        X"f8ef", X"fdd8", X"f986", X"fe64", X"fae6", X"fd97", X"0340", X"fe9b", X"fda8", X"fd65", X"fb41", X"0388", X"fb1e", X"02e3",
                                                        X"04b7", X"fc13", X"ffdd", X"ff7b", X"ff9c", X"0190", X"fa56", X"fd96", X"0568", X"fba8", X"f7ed", X"fc41", X"fddb", X"01be",
                                                        X"f78d", X"0580", X"070c", X"fad3", X"fc89", X"0109", X"ff47", X"02e0", X"f75f", X"009b", X"fcea", X"f900", X"fe4f", X"f86f",
                                                        X"ff1c", X"040b", X"f3f6", X"045e", X"0043", X"fa93", X"005e", X"fa45", X"000c", X"fe22", X"fe4c", X"0519", X"fc08", X"fbaf",
                                                        X"0513", X"f721", X"f99b", X"01f0", X"f0f0", X"05ab", X"f9e0", X"000d", X"fe22", X"f5db", X"f98c", X"0609", X"fac4", X"02e5",
                                                        X"ff34", X"084e", X"fcf3", X"010b", X"f9e1", X"00bb", X"f535", X"04d1", X"0084", X"f70e", X"02b8", X"f79e", X"fee2", X"ff62",
                                                        X"f7a7", X"00a3", X"feb4", X"fdd9", X"fe18", X"0447", X"fc32", X"01e2", X"f919", X"0889", X"0293", X"fac6", X"022c", X"fed9",
                                                        X"ff02", X"fceb", X"ff70", X"0338", X"01ea", X"fc17", X"ff43", X"fa14", X"0053", X"fff7", X"00dd", X"fe58", X"fe31", X"f9c9",
                                                        X"048a", X"f722", X"f937", X"f5fb", X"f8d0", X"0487", X"025f", X"ff22", X"fc44", X"04ee", X"041a", X"ffcc", X"fdb4", X"0142",
                                                        X"fe7a", X"f732", X"059c", X"0320", X"03be", X"01e8", X"f6ea", X"0434", X"ff85", X"04fc", X"fc2c", X"00fd", X"fade", X"fdd1",
                                                        X"f7b6", X"02ff", X"02e5", X"fc52", X"02c0", X"fbf2", X"0412", X"fab6", X"f89b", X"0200", X"0360", X"ff25", X"f884", X"ff37",
                                                        X"00c8", X"fed0", X"facf", X"02aa", X"ff37", X"f969", X"004e", X"fb22", X"0360", X"fe8a", X"fb3e", X"0482", X"05c7", X"ff65",
                                                        X"fb46", X"fa17", X"fb28", X"05b0", X"fe8f", X"04a4", X"02f4", X"fd89", X"0571", X"fbb4", X"0393", X"f9af", X"013b", X"0300",
                                                        X"0426", X"fd15", X"fe99", X"02b7", X"fced", X"03a3", X"f8dd", X"037a", X"ff45", X"fd3b", X"03fa", X"fcae", X"0295", X"01ee",
                                                        X"ffe4", X"04c4", X"063b", X"02d3", X"ffa2", X"0003", X"009b", X"025a", X"fbc1", X"022a", X"01f4", X"fd71", X"fe6e", X"fc65",
                                                        X"01ae", X"fe5e", X"0319", X"0191", X"02d9", X"0398", X"f8d3", X"ffa5", X"06d4", X"0392", X"fd0e", X"ff98", X"0105", X"000d",
                                                        X"05de", X"06b7", X"0055", X"0284", X"fa89", X"06eb", X"04b2", X"fbc2", X"01f7", X"fb33", X"086a", X"02de", X"0761", X"ff8c",
                                                        X"041c", X"002e", X"0267", X"039e", X"ff75", X"fdb7", X"fbc9", X"053e", X"0116", X"ff2f", X"fcce", X"f450", X"0556", X"020f",
                                                        X"04c4", X"0396", X"fc7a", X"feaf", X"07f0", X"f976", X"0315", X"0515", X"fabe", X"0758", X"0725", X"0286", X"fe5b", X"fd61",
                                                        X"ff5e", X"00a6", X"03ec", X"0408", X"0025", X"0376", X"0030", X"00c5", X"0278", X"fded", X"0083", X"0490", X"01ad", X"02c4",
                                                        X"fd33", X"0a08", X"f9cb", X"040a", X"02e4", X"0500", X"0322", X"fbcb", X"0638", X"ff6d", X"040b", X"f8da", X"ff7d", X"057d",
                                                        X"03d7", X"ff77", X"fda3", X"fce6", X"fa2f", X"03c6", X"05ff", X"050c", X"0aef", X"fb12", X"0737", X"021f", X"06b5", X"f17e",
                                                        X"06dd", X"0440", X"061f", X"051f", X"fc9b", X"02ef", X"005f", X"05da", X"fe1a", X"069b", X"0400", X"fd01", X"0c42", X"fe51",
                                                        X"03ca", X"fc0d", X"fd85", X"04ca", X"064d", X"015a", X"fe89", X"059b", X"fdc3", X"05fb", X"09e5", X"034c", X"05ae", X"0214",
                                                        X"03ea", X"fd07", X"ff82", X"014e", X"ff1f", X"01f7", X"03b2", X"03fe", X"010b", X"ffcc", X"fa29", X"01c5", X"0d58", X"04a3",
                                                        X"01c0", X"fbd3", X"ff8a", X"01c6", X"fe70", X"f990", X"fc0b", X"02d7", X"0468", X"03c8", X"0028", X"0210", X"fd4f", X"0007",
                                                        X"fac7", X"fece", X"0106", X"fd98", X"02e5", X"037b", X"fe29", X"f48a", X"fc05", X"0057", X"080d", X"fae2", X"0292", X"f4e1",
                                                        X"0258", X"0131", X"03ba", X"fad8", X"fbec", X"fb08", X"feda", X"fcdc", X"fed9", X"032a", X"fa77", X"fe5c", X"0225", X"fe6f",
                                                        X"fa3f", X"f6e7", X"fb8a", X"0326", X"0fbe", X"ffc5", X"fb4e", X"faeb", X"ff20", X"fea0", X"fd34", X"017a", X"fa56", X"00af",
                                                        X"feeb", X"fc42", X"fe4d", X"0026", X"f903", X"fe69", X"0879", X"fea2", X"fe3f", X"f6f5", X"fffd", X"f8b1", X"fc3d", X"ec8a",
                                                        X"f90d", X"fd12", X"fe62", X"fa1b", X"ff56", X"fa4a", X"f9fc", X"ff34", X"fb83", X"01a3", X"fae8", X"f91e", X"03b9", X"fc13",
                                                        X"f85a", X"f851", X"0268", X"ff4a", X"fedc", X"fe42", X"fe3b", X"fe31", X"f6f9", X"00f7", X"ffe7", X"034c", X"fe55", X"f920",
                                                        X"00ab", X"fa62", X"fe59", X"00bd", X"ff14", X"fc12", X"01d0", X"f86a", X"03a1", X"f824", X"0082", X"fd8a", X"02d7", X"ff04",
                                                        X"fff2", X"fa30", X"0243", X"fb01", X"f66a", X"0169", X"f582", X"ffd5", X"ff12", X"f759", X"fc32", X"fc76", X"f681", X"feac",
                                                        X"027f", X"ffb8", X"00a4", X"f747", X"01f4", X"f773", X"f76a", X"f629", X"ff32", X"0260", X"0287", X"f91c", X"fa00", X"f9ca",
                                                        X"f9a7", X"fd06", X"fb4d", X"feb7", X"fcdc", X"f516", X"0084", X"f8d3", X"fcfb", X"f558", X"fca7", X"004b", X"fe43", X"fdd3",
                                                        X"fa0e", X"0473", X"f63e", X"fd21", X"fae0", X"003d", X"0139", X"f467", X"fc8d", X"fe0e", X"fdba", X"fb46", X"ffb4", X"ff2e",
                                                        X"fb34", X"f8c4", X"f59e", X"0101", X"f961", X"fd1d", X"0080", X"fdef", X"00a0", X"faf1", X"fdbc", X"fca0", X"f929", X"f79b",
                                                        X"0038", X"ffcf", X"029c", X"f9df", X"fbff", X"fe19", X"fa97", X"0096", X"f7e3", X"fdf4", X"fb04", X"f4a3", X"00ac", X"fdd8",
                                                        X"fc46", X"f6f8", X"f5f1", X"fefd", X"0188", X"01ac", X"02af", X"fddc", X"f83e", X"fde7", X"010b", X"02af", X"fe16", X"face",
                                                        X"f949", X"fe7d", X"f729", X"fd3b", X"f8a2", X"016b", X"0137", X"f95c", X"f69b", X"0131", X"f89c", X"00fd", X"f43e", X"f9c8",
                                                        X"fcf2", X"f988", X"fcdb", X"fe3f", X"fcc4", X"f894", X"fa72", X"00e7", X"04a5", X"fc04", X"017c", X"0011", X"f7d0", X"0090",
                                                        X"f6a3", X"02d9", X"fe1b", X"f6e7", X"00a0", X"00cd", X"0195", X"fb39", X"f724", X"fef6", X"fffa", X"fb38", X"fbe2", X"fcf4",
                                                        X"fb59", X"00a4", X"0011", X"055b", X"0161", X"f7d3", X"0761", X"fbb9", X"f8c0", X"018a", X"fd58", X"fa33", X"0029", X"ffc7",
                                                        X"fe47", X"fc7a", X"ff0e", X"fe10", X"0048", X"0117", X"02ee", X"f95f", X"02ff", X"ff1f", X"026a", X"012e", X"ff23", X"02e7",
                                                        X"05d1", X"fa4b", X"fda7", X"fdb7", X"fe0b", X"feab", X"0857", X"0274", X"fe29", X"fc76", X"0101", X"fdc3", X"f87c", X"ffe8",
                                                        X"f788", X"03b7", X"0132", X"ffdb", X"fb68", X"0148", X"fa66", X"0216", X"fd33", X"0019", X"00a5", X"fe84", X"071d", X"fceb",
                                                        X"fbd7", X"0364", X"fec3", X"fc52", X"075c", X"01bd", X"fd31", X"fee5", X"fe23", X"0240", X"025a", X"00c0", X"fc5d", X"f8f6",
                                                        X"01f6", X"0245", X"035f", X"f248", X"fa7c", X"0179", X"0596", X"fe5a", X"f78d", X"01b8", X"fcc1", X"01ff", X"01b0", X"fc8d",
                                                        X"fe87", X"025f", X"00d5", X"0187", X"ffa4", X"ff7e", X"ff8b", X"ff2d", X"08f8", X"f9f1", X"02c9", X"f949", X"fe24", X"0466",
                                                        X"043e", X"0248", X"fabd", X"0185", X"06e3", X"02ff", X"ff73", X"00cf", X"0259", X"028b", X"043c", X"fe3e", X"0424", X"0591",
                                                        X"0a3b", X"ffb3", X"f8be", X"fb22", X"01d4", X"fd82", X"0355", X"0055", X"00d4", X"036c", X"02c0", X"060b", X"04e9", X"f7a6",
                                                        X"fbb3", X"faf7", X"056c", X"fc6f", X"fe6f", X"fec7", X"0400", X"fcd7", X"ffcd", X"0054", X"0084", X"03c0", X"f964", X"067b",
                                                        X"0110", X"0085", X"f9b5", X"fa81", X"02ba", X"021b", X"fcb2", X"065d", X"fef8", X"0119", X"03f8", X"ff49", X"017e", X"0164",
                                                        X"fd66", X"0644", X"00ec", X"fbe4", X"fd8d", X"ff51", X"02f1", X"ffa0", X"ffb0", X"00d1", X"087e", X"0408", X"0288", X"ffa3",
                                                        X"0051", X"0819", X"0218", X"0a43", X"062c", X"f9b2", X"027d", X"026b", X"001c", X"037f", X"07ec", X"ffda", X"0601", X"fafe",
                                                        X"079c", X"fe76", X"0515", X"0a02", X"fc42", X"078a", X"076a", X"fdb2", X"f9a0", X"00d1", X"03ab", X"020f", X"0256", X"0280",
                                                        X"0425", X"005a", X"0512", X"fbc8", X"06fd", X"0288", X"fb31", X"09f3", X"0453", X"fcc6", X"fc16", X"fd1c", X"ff23", X"0199",
                                                        X"fb8f", X"00ca", X"0401", X"00ef", X"00ee", X"f7c9", X"00bd", X"008b", X"fe7a", X"06fd", X"0717", X"ff1f", X"0131", X"fb59",
                                                        X"fdde", X"fe0f", X"fea7", X"ff86", X"048d", X"fc61", X"ffea", X"fa69", X"feba", X"fd25", X"0084", X"05f0", X"0614", X"f9f4",
                                                        X"fb6c", X"0033", X"ff70", X"ffe7", X"fdaf", X"fddc", X"0380", X"feb3", X"0567", X"070b", X"fa47", X"0037", X"01ab", X"027a",
                                                        X"056b", X"0296", X"fc83", X"ff1a", X"f9fa", X"00e6", X"fc07", X"00db", X"026c", X"001a", X"03d2", X"fe9a", X"fc15", X"fefe",
                                                        X"fec4", X"058c", X"0339", X"026e", X"f8e7", X"f522", X"fe47", X"0492", X"0707", X"01f4", X"00f0", X"00b6", X"0270", X"fdb1",
                                                        X"fa31", X"f53e", X"fe88", X"0140", X"009e", X"fb1d", X"02f6", X"fd49", X"fdc8", X"00a7", X"00ee", X"fc30", X"fb85", X"fe7f",
                                                        X"ffdc", X"fcdb", X"fd07", X"f62d", X"fafc", X"0427", X"03ef", X"fab2", X"fb81", X"05ed", X"fa2c", X"033c", X"0234", X"0008",
                                                        X"ff1d", X"ff44", X"0370", X"fc57", X"058e", X"f804", X"fbbe", X"fffa", X"040a", X"0160", X"fdc1", X"01f5", X"f7e7", X"001a",
                                                        X"fd91", X"015a", X"faa9", X"fba3", X"0068", X"00f7", X"fb3e", X"fa6d", X"f2de", X"0132", X"047c", X"025b", X"f779", X"ff4c",
                                                        X"fc79", X"ffcb", X"fb54", X"0367", X"fe09", X"fca3", X"f987", X"ff69", X"000a", X"f338", X"fdbd", X"0199", X"03d5", X"faf9",
                                                        X"fd46", X"0763", X"f732", X"ff77", X"fb62", X"fa07", X"fcba", X"fa28", X"fefa", X"0049", X"fd15", X"fa84", X"fdc9", X"fe1f",
                                                        X"0726", X"f9e0", X"f9c8", X"fe76", X"fc4f", X"034f", X"01c7", X"000b", X"fd76", X"fbab", X"017c", X"fe08", X"fe9c", X"f7aa",
                                                        X"fdec", X"0176", X"031f", X"030f", X"f93a", X"00c9", X"fc45", X"ff84", X"00e0", X"016b", X"ff90", X"f656", X"00cd", X"f687",
                                                        X"f859", X"fd33", X"fd1e", X"007f", X"036c", X"fb70", X"fd90", X"0001", X"f63a", X"05a8", X"fef0", X"02d6", X"054c", X"fbb5",
                                                        X"ffc6", X"fbfb", X"fec2", X"f64e", X"0042", X"fce8", X"0601", X"f8f0", X"f898", X"fe91", X"fa52", X"009c", X"0215", X"ffb2",
                                                        X"002c", X"fc42", X"ff8c", X"01cc", X"04b3", X"f60f", X"fe7d", X"fff7", X"010e", X"0106", X"fa28", X"00bc", X"f826", X"0020",
                                                        X"097e", X"0767", X"005f", X"fd2e", X"0069", X"fcec", X"fd94", X"f957", X"fede", X"ff50", X"0062", X"faed", X"ff12", X"ff78",
                                                        X"fcdc", X"fe6a", X"fa0b", X"014b", X"006f", X"f9e9", X"03f7", X"ff92", X"fde8", X"f888", X"f8c5", X"02b7", X"fff3", X"fb62",
                                                        X"0128", X"0343", X"feab", X"0029", X"f762", X"0384", X"fcbc", X"f864", X"fdb1", X"01e9", X"fc8b", X"f748", X"fac0", X"05ed",
                                                        X"038f", X"ffda", X"fbd3", X"02a8", X"f72c", X"ff03", X"f770", X"05e5", X"fd12", X"ff43", X"fdb8", X"fcb2", X"f65f", X"ff50",
                                                        X"ff80", X"ff6f", X"0357", X"ffa2", X"f6d0", X"0466", X"f95d", X"0271", X"fac9", X"000b", X"fc7c", X"feea", X"fe93", X"fadb",
                                                        X"fdc8", X"ff10", X"fdc8", X"0119", X"03d6", X"0133", X"fc3f", X"fa07", X"0228", X"0125", X"00eb", X"fea1", X"00c3", X"fcab",
                                                        X"fd45", X"fbe9", X"0279", X"f95d", X"fc42", X"037e", X"017f", X"ff99", X"f7ee", X"025d", X"f9db", X"0439", X"09bb", X"01cc",
                                                        X"fdbe", X"fe41", X"02db", X"0102", X"fe00", X"f2c4", X"fad2", X"034f", X"005b", X"fc6d", X"fea6", X"fab7", X"fd27", X"0303",
                                                        X"0684", X"02a0", X"ffa7", X"00ab", X"017d", X"feb1", X"00c0", X"ef0f", X"fd03", X"0250", X"0a26", X"fd68", X"ff67", X"fc82",
                                                        X"fe1d", X"feff", X"0299", X"fc9e", X"f837", X"fd0d", X"02bf", X"faf6", X"0487", X"fcd5", X"f962", X"0260", X"057a", X"fec2",
                                                        X"fcbf", X"fd86", X"fad6", X"01ea", X"01cb", X"0524", X"ff80", X"00da", X"0216", X"014d", X"030d", X"faed", X"fec2", X"ffff",
                                                        X"0123", X"0027", X"fb40", X"ff7e", X"fde2", X"ff50", X"fee9", X"0251", X"037c", X"fda1", X"0847", X"fc43", X"ff9a", X"ff07",
                                                        X"fe22", X"02a5", X"03e1", X"0185", X"fa51", X"fb6c", X"0204", X"ff42", X"0059", X"05ca", X"0027", X"ff54", X"078a", X"ffa4",
                                                        X"ff55", X"f5ff", X"fd57", X"00f8", X"0758", X"074d", X"fb7f", X"fbfe", X"feab", X"03e2", X"fcb4", X"05d0", X"0164", X"fcfc",
                                                        X"0697", X"00b3", X"0064", X"f854", X"fea4", X"01c1", X"05ca", X"02fd", X"fc76", X"017a", X"00a3", X"02e8", X"0576", X"0436",
                                                        X"01e9", X"0003", X"00b1", X"fbb6", X"fed8", X"fbf9", X"0091", X"0567", X"05db", X"fcc7", X"fb2a", X"fb3e", X"fd48", X"00e6",
                                                        X"035e", X"013a", X"0572", X"fea5", X"0b0a", X"fe39", X"06b5", X"ffee", X"0015", X"0706", X"03a8", X"003c", X"ff74", X"0200",
                                                        X"0260", X"02f6", X"fda6", X"0518", X"0678", X"0314", X"0699", X"fc04", X"0955", X"ff69", X"03aa", X"02e6", X"066b", X"ff9d",
                                                        X"fea5", X"fb7f", X"fd0b", X"0100", X"f9b8", X"00b9", X"044b", X"ffcf", X"0906", X"fe2f", X"020c", X"01ac", X"fd43", X"0866",
                                                        X"027c", X"040c", X"01f9", X"0178", X"044d", X"0373", X"05c8", X"ff62", X"0a40", X"003e", X"09f0", X"0624", X"09da", X"ffce",
                                                        X"fe50", X"0471", X"0483", X"01f6", X"feb7", X"0052", X"04fa", X"0304", X"06ad", X"01df", X"0033", X"fe13", X"0689", X"03bd",
                                                        X"ff64", X"ffe9", X"ffda", X"0589", X"0789", X"ff65", X"fd05", X"fcd3", X"03a1", X"021a", X"fda7", X"fff4", X"08a3", X"03ef",
                                                        X"06c9", X"065e", X"011a", X"013a", X"ffcc", X"0584", X"0626", X"fe1d", X"fed1", X"fcff", X"fee7", X"035c", X"01e6", X"0232",
                                                        X"07db", X"02df", X"01af", X"ffdf", X"ff6e", X"0bbb", X"02e2", X"03be", X"0563", X"02b6", X"fca5", X"fe3d", X"04ea", X"0295",
                                                        X"00b1", X"06d6", X"06ce", X"ffd0", X"04c3", X"fc52", X"0097", X"fff7", X"fc5b", X"032a", X"067b", X"ff44", X"f7f1", X"fdf8",
                                                        X"02b5", X"fd6a", X"0e15", X"007d", X"0199", X"003d", X"06b1", X"fab4", X"02c3", X"f996", X"fe9d", X"0788", X"002a", X"0092",
                                                        X"fad2", X"fdba", X"f9fa", X"048e", X"0376", X"02e2", X"018e", X"017c", X"0135", X"063c", X"fc63", X"fcee", X"01f6", X"08d4",
                                                        X"0451", X"fd2b", X"fe12", X"03a4", X"01fb", X"066c", X"012d", X"0471", X"041a", X"00bf", X"0378", X"fd69", X"fe9e", X"02b8",
                                                        X"fcdd", X"0198", X"0326", X"02c2", X"fce9", X"fc30", X"ff55", X"0222", X"03fe", X"018a", X"ff45", X"0222", X"060b", X"ff2d",
                                                        X"fcd5", X"f9a9", X"0067", X"0a42", X"05ad", X"fdc7", X"0314", X"fbb0", X"065e", X"00b5", X"0643", X"03f9", X"ff1c", X"04e1",
                                                        X"036e", X"0157", X"07ef", X"03fe", X"fcb4", X"0642", X"0396", X"f675", X"ffbf", X"fe0f", X"fe7c", X"05f3", X"0eab", X"fe0c",
                                                        X"0638", X"ff2a", X"00a6", X"fc3f", X"02f8", X"fb36", X"00b3", X"024a", X"029e", X"02a4", X"fc3f", X"f761", X"ffb7", X"014a",
                                                        X"0019", X"fe94", X"0105", X"ff6e", X"02cd", X"fe08", X"017e", X"04e5", X"fc25", X"04b5", X"0312", X"0213", X"fca4", X"f9e8",
                                                        X"007e", X"ffb8", X"04dc", X"ffa0", X"ffe4", X"fcdf", X"039f", X"fe00", X"030f", X"f97d", X"023f", X"0632", X"0226", X"01c3",
                                                        X"fb45", X"00ed", X"fbac", X"03fe", X"06c1", X"ff8a", X"0526", X"fdd9", X"041e", X"fb49", X"ff10", X"f483", X"f961", X"0534",
                                                        X"09a6", X"fe87", X"fc0a", X"0042", X"fd59", X"0168", X"ff7a", X"feca", X"048c", X"fcf8", X"09bd", X"019e", X"fffc", X"f83b",
                                                        X"fdbd", X"0520", X"062f", X"0194", X"fe46", X"02f1", X"fc6c", X"0500", X"fdd1", X"fedf", X"00e4", X"fe83", X"0016", X"fa05",
                                                        X"fe6a", X"fd42", X"fce7", X"0156", X"03a4", X"0550", X"f987", X"067c", X"fe77", X"060b", X"fdaa", X"0000", X"00a5", X"fc0e",
                                                        X"084e", X"0342", X"057f", X"f901", X"fe76", X"0063", X"04bf", X"00c3", X"027e", X"fe5f", X"03f5", X"043f", X"fe9e", X"03fa",
                                                        X"07c8", X"fc27", X"043f", X"fd97", X"054a", X"0106", X"0050", X"0656", X"057d", X"faff", X"fc59", X"f71f", X"036a", X"0521",
                                                        X"f926", X"0426", X"ff06", X"fe95", X"0787", X"011f", X"08b0", X"01ae", X"fee0", X"0799", X"0657", X"0249", X"fa01", X"fe92",
                                                        X"05c0", X"01bc", X"00a3", X"03af", X"01e6", X"0496", X"0774", X"ff9a", X"002e", X"f616", X"fef7", X"043f", X"0342", X"00da",
                                                        X"ff7a", X"031a", X"fde5", X"0438", X"06da", X"ffdf", X"0466", X"fd52", X"0931", X"fbc6", X"fc15", X"ff29", X"035c", X"031e",
                                                        X"0115", X"fed4", X"0352", X"00c8", X"fd8c", X"ff15", X"0360", X"03de", X"fc49", X"00d3", X"08a3", X"fe2e", X"0618", X"fffc",
                                                        X"01d7", X"0747", X"0346", X"fb24", X"fc3b", X"05f2", X"03f2", X"ff39", X"037a", X"0321", X"fdd0", X"0075", X"085f", X"027f",
                                                        X"01d4", X"f82b", X"f654", X"067d", X"03a4", X"fe13", X"ffd8", X"f36c", X"047a", X"fe6d", X"f700", X"0462", X"0151", X"fe7b",
                                                        X"ffa4", X"05bf", X"01b9", X"fab3", X"fc95", X"063d", X"0483", X"fd4a", X"ff3c", X"fd83", X"ff7f", X"06a4", X"ff81", X"0199",
                                                        X"038f", X"fd42", X"008d", X"03eb", X"0722", X"fd26", X"00d0", X"04aa", X"0383", X"018f", X"04ad", X"0280", X"fe2b", X"045d",
                                                        X"0467", X"00b1", X"fafb", X"ff9c", X"ffa0", X"013b", X"00a0", X"02e3", X"f7f7", X"0820", X"02aa", X"0071", X"febe", X"049a",
                                                        X"fe53", X"01f5", X"04dd", X"01ad", X"01e7", X"fe78", X"05a9", X"00a3", X"03d8", X"fd07", X"009f", X"06d0", X"06eb", X"02f6",
                                                        X"fe06", X"01be", X"fee0", X"0191", X"fd27", X"064f", X"057f", X"fd81", X"0470", X"f8fc", X"fde6", X"fafb", X"fcb6", X"0390",
                                                        X"ff54", X"fe25", X"fc21", X"0604", X"00d2", X"0267", X"ff49", X"0110", X"050d", X"fbc3", X"035c", X"0077", X"fd97", X"fc87",
                                                        X"fac4", X"0357", X"0465", X"ff31", X"f9df", X"ff67", X"02de", X"0a2e", X"0641", X"0047", X"fe56", X"f980", X"0044", X"ff32",
                                                        X"01de", X"fae4", X"ffe2", X"0821");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0821";
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
