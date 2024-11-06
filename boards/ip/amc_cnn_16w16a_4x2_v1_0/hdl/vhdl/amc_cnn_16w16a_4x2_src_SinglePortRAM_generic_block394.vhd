-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block394.vhd
-- Created: 2024-11-04 16:44:16
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block394
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage42/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block394 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block394;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block394 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"f550", X"0659", X"05f6", X"fb14", X"0dc0", X"fcd1",
                                                        X"002f", X"07fa", X"f18b", X"fdf4", X"090d", X"fea0", X"f89c", X"1746", X"fdc2", X"fc88", X"f79b", X"0b6c", X"fd84", X"0028",
                                                        X"055e", X"fe85", X"038d", X"074e", X"ee91", X"005f", X"0647", X"06a2", X"fec4", X"0a33", X"fbc8", X"fdcd", X"ff3b", X"07b6",
                                                        X"f6a4", X"ff0f", X"fe34", X"ffc0", X"ff09", X"06cd", X"f8ab", X"054f", X"0811", X"02da", X"0334", X"080b", X"00dd", X"f8ea",
                                                        X"fdbf", X"0821", X"f2ef", X"043c", X"fec6", X"fcd2", X"f138", X"048a", X"fdc1", X"035d", X"097a", X"fcfa", X"fa36", X"05f3",
                                                        X"065d", X"ffed", X"fc28", X"064b", X"f988", X"05b1", X"031c", X"fa73", X"f736", X"0348", X"f6d9", X"00e9", X"0709", X"0694",
                                                        X"fb98", X"0a85", X"fb12", X"fb54", X"ffb6", X"09e2", X"f9e5", X"fecc", X"02cc", X"00e3", X"0105", X"0118", X"f603", X"ff8c",
                                                        X"07b4", X"fde8", X"fde3", X"0ae5", X"ff60", X"f6ba", X"ffc9", X"0bb8", X"feb2", X"ff89", X"0268", X"fc8b", X"f804", X"ffa7",
                                                        X"f9f7", X"fdfa", X"061e", X"0890", X"f786", X"0c4e", X"05a7", X"ffbd", X"f999", X"0724", X"fdff", X"0753", X"fe68", X"fd9b",
                                                        X"f68c", X"0531", X"f4a0", X"ff16", X"0a1a", X"05da", X"fc84", X"0b1d", X"0192", X"fba1", X"fc70", X"0a35", X"ff20", X"06c0",
                                                        X"00b2", X"0023", X"0043", X"09db", X"f950", X"011f", X"093a", X"ff85", X"f9be", X"07e9", X"fa33", X"fb7e", X"fa79", X"08f0",
                                                        X"fad1", X"fbb5", X"ff94", X"f8df", X"00bc", X"01ab", X"f8e7", X"00e4", X"0841", X"019b", X"f778", X"09dd", X"ffa9", X"fff9",
                                                        X"fbeb", X"05ae", X"f762", X"079f", X"04d3", X"f7e3", X"f7fb", X"feae", X"f779", X"0230", X"0ccc", X"0293", X"fa76", X"0a1a",
                                                        X"fe72", X"fd32", X"f854", X"04b9", X"f910", X"0dd3", X"0213", X"fac9", X"f6bd", X"fdf7", X"ef76", X"010f", X"0707", X"033a",
                                                        X"00da", X"0019", X"fa1a", X"0045", X"f76f", X"0546", X"fe40", X"0726", X"0310", X"fcb6", X"033e", X"004f", X"f07e", X"01f9",
                                                        X"094c", X"032b", X"faee", X"0910", X"fe0c", X"fe9c", X"ff99", X"070f", X"f86e", X"0a5d", X"01cb", X"fab8", X"02e5", X"ff76",
                                                        X"fcd4", X"0739", X"09d1", X"0204", X"fe26", X"023a", X"076c", X"0300", X"fc93", X"09d1", X"fe14", X"085f", X"04f4", X"010b",
                                                        X"04b1", X"0400", X"f3c3", X"049e", X"08b6", X"027f", X"f9af", X"03ea", X"fd84", X"fdcb", X"fd45", X"033a", X"fbc9", X"02ba",
                                                        X"0174", X"0250", X"fb4c", X"03ff", X"fd34", X"070e", X"01c3", X"fe13", X"fc20", X"0df7", X"fa96", X"ffd0", X"fe39", X"0af0",
                                                        X"fbf9", X"0230", X"0472", X"fdea", X"0411", X"06c9", X"fe4a", X"0107", X"054b", X"01e2", X"fc2b", X"1230", X"017f", X"fde6",
                                                        X"fcdf", X"0f3f", X"003e", X"0c1e", X"02e0", X"fe92", X"00ac", X"04d4", X"f981", X"0344", X"07d2", X"02f9", X"feca", X"0b20",
                                                        X"022f", X"fead", X"fcb9", X"0935", X"f98e", X"fef9", X"fdb8", X"fcbe", X"011a", X"018b", X"f677", X"01ba", X"034d", X"ff2f",
                                                        X"f766", X"fe24", X"fbc6", X"fcbc", X"faf0", X"0286", X"0080", X"1038", X"01dd", X"00bc", X"fbb4", X"fcaf", X"044d", X"ffbb",
                                                        X"05e8", X"fca8", X"fda8", X"09a7", X"05be", X"fe45", X"ff4e", X"031c", X"fdd0", X"0790", X"058c", X"fc13", X"041a", X"06be",
                                                        X"fac9", X"012d", X"0c26", X"feeb", X"f9cc", X"0c38", X"0257", X"02fb", X"033f", X"0849", X"f647", X"f9e6", X"05b3", X"fe02",
                                                        X"fc83", X"02ff", X"f340", X"0435", X"0ab2", X"024a", X"f38f", X"0ac8", X"fc0b", X"fea9", X"ff68", X"02fc", X"fc85", X"07cb",
                                                        X"0aeb", X"f9eb", X"0499", X"006c", X"f8bc", X"004a", X"09e1", X"fde3", X"fcbf", X"0752", X"fd68", X"0281", X"0079", X"03f3",
                                                        X"f608", X"03ce", X"02d4", X"fc94", X"009a", X"049a", X"f9e2", X"07a6", X"0d92", X"ff3a", X"f794", X"06dc", X"fe87", X"ffbf",
                                                        X"fd31", X"0b02", X"fd40", X"09bd", X"023d", X"ff9e", X"00f6", X"0535", X"f7a4", X"00a3", X"080e", X"027d", X"f71e", X"08c3",
                                                        X"0259", X"fd98", X"fd05", X"0d76", X"fd4c", X"00ba", X"0405", X"02f1", X"f3b8", X"0779", X"f4f3", X"0439", X"0951", X"f702",
                                                        X"f6cc", X"07eb", X"054c", X"00ce", X"fc5c", X"0422", X"021c", X"00b5", X"ffb3", X"fbfe", X"fbba", X"0317", X"f647", X"faaf",
                                                        X"08d9", X"02eb", X"f61e", X"0718", X"fc6b", X"00f7", X"fe59", X"0c4a", X"faa3", X"075a", X"027d", X"003b", X"fb02", X"ff07",
                                                        X"f1e8", X"00f6", X"0b76", X"fd46", X"fa13", X"0d17", X"f99a", X"010c", X"fade", X"0b4e", X"f92f", X"03e7", X"0334", X"fc1c",
                                                        X"fd16", X"02d4", X"f38e", X"fc23", X"0ac5", X"0083", X"f0b6", X"14ba", X"fc6d", X"037b", X"fba8", X"0ade", X"fe00", X"098b",
                                                        X"03e2", X"fe2c", X"0187", X"0797", X"f84b", X"039d", X"0aef", X"04ff", X"f79b", X"08a5", X"032f", X"fd67", X"f907", X"03ae",
                                                        X"fc47", X"065c", X"05e2", X"fcae", X"fa3c", X"fe4d", X"fabd", X"fe79", X"0994", X"047b", X"f8e2", X"0c4d", X"fe29", X"ff5d",
                                                        X"fd0e", X"0a9a", X"ffc4", X"03a5", X"01d3", X"fbae", X"019f", X"044d", X"fc2a", X"ffec", X"0a83", X"039d", X"0350", X"08b8",
                                                        X"0123", X"fd34", X"f62b", X"0479", X"00c3", X"0676", X"fee2", X"fcd3", X"f824", X"0338", X"f75e", X"fdc6", X"09ad", X"00f8",
                                                        X"fa20", X"0d03", X"fda9", X"ffc5", X"f7f7", X"0b6e", X"f9b3", X"06ec", X"0254", X"0041", X"fcca", X"0653", X"f845", X"0323",
                                                        X"06d7", X"0547", X"ffe0", X"0dc1", X"0193", X"fe9d", X"0038", X"068f", X"fcb2", X"07ff", X"018f", X"fa36", X"f556", X"045e",
                                                        X"f553", X"fdbd", X"09ff", X"0738", X"faa6", X"16d1", X"0310", X"feea", X"ffb9", X"054e", X"f7f4", X"0987", X"fd80", X"0009",
                                                        X"fb10", X"0385", X"fb1e", X"ffe3", X"04e7", X"0141", X"f9b6", X"13ad", X"fe7d", X"fe95", X"0100", X"0d73", X"fe84", X"03aa",
                                                        X"00ea", X"ff86", X"ffcb", X"014b", X"f927", X"0067", X"0555", X"fc15", X"f8e2", X"0e9f", X"fe69", X"fc0b", X"f9fe", X"08ff",
                                                        X"ffec", X"015b", X"01ab", X"fea2", X"0099", X"fb7d", X"ef1a", X"fdec", X"07de", X"fc4e", X"fcf2", X"ffcb", X"fb7b", X"007a",
                                                        X"fb48", X"0594", X"fe1c", X"02c5", X"faf2", X"fc99", X"0b5b", X"001c", X"f3cc", X"0190", X"0a40", X"09e9", X"fd86", X"fddf",
                                                        X"fd46", X"fc7a", X"fd5d", X"0584", X"fb17", X"030f", X"0259", X"fa36", X"038f", X"02c3", X"f7b0", X"0188", X"0a57", X"01e8",
                                                        X"fab9", X"0985", X"fd03", X"fd7b", X"f7d3", X"06f7", X"f3b2", X"ff49", X"03f0", X"fef7", X"fac2", X"fbf1", X"f339", X"ff6c",
                                                        X"0b49", X"03a1", X"f99b", X"04d3", X"fa18", X"fed3", X"fb5b", X"08bf", X"fcf6", X"0655", X"0582", X"fb75", X"ff81", X"02b3",
                                                        X"f534", X"ff49", X"07fb", X"0799", X"f9e4", X"0c1d", X"0011", X"ff59", X"fcc4", X"0a65", X"0014", X"05ff", X"ff53", X"fcf3",
                                                        X"07fb", X"059b", X"fda8", X"003f", X"0292", X"fc3c", X"fe72", X"033a", X"fb79", X"0090", X"0106", X"0b61", X"f83c", X"ff7d",
                                                        X"02f2", X"fe10", X"f88b", X"ff4e", X"f2e3", X"027b", X"03be", X"026b", X"fa06", X"072a", X"f9e4", X"ff50", X"00cf", X"0c27",
                                                        X"feb6", X"0ec5", X"0012", X"fc77", X"0533", X"062a", X"f37c", X"03f9", X"070b", X"fcbb", X"fbc9", X"093e", X"001e", X"0161",
                                                        X"fc34", X"081a", X"f8ef", X"0488", X"fa6a", X"ff34", X"0037", X"00e7", X"f5ed", X"0171", X"0558", X"fca1", X"fff6", X"0534",
                                                        X"fd44", X"fb2b", X"fedf", X"0ac4", X"f9ba", X"002a", X"0129", X"00c2", X"0416", X"05f3", X"fa4f", X"0107", X"085f", X"0261",
                                                        X"046a", X"09d7", X"0286", X"fb5d", X"fd34", X"061c", X"f8cd", X"01a6", X"0352", X"febe", X"feee", X"0558", X"f8e9", X"fdad",
                                                        X"0670", X"0074", X"05ce", X"01e7", X"0281", X"ffb7", X"fc68", X"047e", X"fb14", X"fcf8", X"0417", X"fe29", X"ffd6", X"070e",
                                                        X"04f0", X"0319", X"0760", X"feaa", X"fd9d", X"0515", X"01b0", X"fe09", X"fa4f", X"06a4", X"fe14", X"044d", X"0599", X"fc2d",
                                                        X"f667", X"0567", X"f6ee", X"077e", X"09b6", X"fc7b", X"fb28", X"0582", X"fe6c", X"0056", X"fa28", X"0836", X"fa4e", X"01a5",
                                                        X"04c9", X"fa86", X"f8cf", X"fffe", X"f910", X"005a", X"0958", X"00e7", X"f795", X"0198", X"fda0", X"00b7", X"f8b0", X"073d",
                                                        X"fe24", X"03b8", X"fbcf", X"fd13", X"fbab", X"ff75", X"fbfb", X"ffec", X"0529", X"ffcb", X"f878", X"0722", X"0138", X"fedd",
                                                        X"fb2a", X"0979", X"f80c", X"06b7", X"ff86", X"ff4c", X"fbf9", X"0b66", X"fb98", X"01ff", X"02a6", X"035a", X"f7ad", X"09cf",
                                                        X"015c", X"fe62", X"fec0", X"0efc", X"f6df", X"05cf", X"0843", X"fdd4", X"fd2b", X"009f", X"f2ca", X"04cf", X"0a63", X"04d5",
                                                        X"ff68", X"0909", X"fc97", X"0064", X"fb1d", X"0711", X"f634", X"04b9", X"0508", X"00b7", X"0441", X"008a", X"f9ff", X"fa6e",
                                                        X"0b86", X"fc58", X"f8de", X"0f93", X"fc38", X"01b4", X"fbc4", X"02a9", X"f59e", X"04b0", X"fd3f", X"fd3d", X"01b7", X"02a0",
                                                        X"fc99", X"00a0", X"0aba", X"062c", X"f9f1", X"0370", X"fc50", X"ff29", X"0164", X"0da2", X"fb49", X"00c0", X"0194", X"0139",
                                                        X"0144", X"02a9", X"f71b", X"02b4", X"0570", X"fb42", X"fbc2", X"0837", X"022c", X"fc4f", X"fe76", X"0565", X"f16e", X"07f4",
                                                        X"feec", X"feb8", X"f54a", X"0148", X"f770", X"00ed", X"0946", X"0c64", X"021b", X"039c", X"00dd", X"fe0e", X"fbdd", X"07e4",
                                                        X"ffe9", X"f8f7", X"fd25", X"fe6d", X"fecf", X"018b", X"fc93", X"02e1", X"091d", X"0391", X"000b", X"069d", X"fd56", X"fd34",
                                                        X"01d8", X"0736", X"f62e", X"0ba6", X"01c3", X"fb79", X"ff89", X"febf", X"eef3", X"fa25", X"09de", X"01da", X"fa05", X"0d80",
                                                        X"f907", X"040a", X"01a2", X"0aea", X"ed60", X"07b4", X"02ad", X"fb83", X"f6a9", X"ffaa", X"fb01", X"ff8c", X"0bef", X"fbd5",
                                                        X"fdb9", X"1186", X"f7dd", X"00b1", X"fb85", X"02c1", X"fb72", X"0f4c", X"fb75", X"ffe4", X"f643", X"0301", X"fffd", X"0440",
                                                        X"08f1", X"04b1", X"fb22", X"0cd3", X"03a8", X"fc91", X"005a", X"07d2", X"f882", X"03c9", X"0301", X"fc0f", X"f51a", X"0044",
                                                        X"f754", X"fc71", X"08c3", X"fd03", X"fee2", X"153a", X"fe39", X"ff7f", X"f90e", X"087c", X"fb97", X"ffd0", X"fedf", X"017b",
                                                        X"fc9b", X"05b5", X"ff2a", X"fce5", X"0ace", X"0901", X"0549", X"0374", X"0102", X"ff7f", X"f834", X"042a", X"f6ec", X"00fc",
                                                        X"01ec", X"fb95", X"f462", X"037a", X"f5d7", X"00ed", X"0d8c", X"0200", X"fe6d", X"069a", X"f9ab", X"fcaa", X"fc30", X"0fb9",
                                                        X"03d3", X"055d", X"06ba", X"fa71", X"f4c9", X"091c", X"fb6c", X"008e", X"0c69", X"008d", X"f7bc", X"0014", X"ff59", X"fc1d",
                                                        X"fbc8", X"0aa8", X"fc86", X"fce5", X"0431", X"fbdc", X"03b2", X"05b4", X"fb76", X"0274", X"0e99", X"022c", X"fd9f", X"0f3c",
                                                        X"03c3", X"fdc0", X"ff75", X"07f8", X"fed3", X"0451", X"007d", X"fe68", X"044f", X"0390", X"fba2", X"ffe3", X"0837", X"0305",
                                                        X"fa7d", X"1165", X"fe55", X"fd09", X"ff77", X"0a75", X"fa71", X"04e3", X"02d4", X"fb16", X"fa53", X"0677", X"fa61", X"fd72",
                                                        X"01b5", X"01f0", X"f668", X"090b", X"fae8", X"fc20", X"fe9a", X"0b81", X"fc04", X"060a", X"0426", X"fbbb", X"f239", X"04b5",
                                                        X"faaf", X"fcc1", X"026e", X"01e9", X"fbca", X"03d1", X"fca0", X"fa3b", X"fb83", X"08bf", X"fe24", X"0286", X"0315", X"fa3e",
                                                        X"fff6", X"092e", X"f35d", X"fe0d", X"0aae", X"ff1e", X"02c5", X"078f", X"fafd", X"fe39", X"0264", X"10fc", X"f742", X"f900",
                                                        X"0610", X"fc56", X"f97b", X"06e9", X"0182", X"001f", X"078b", X"ff8a", X"0065", X"0f4e", X"ff87", X"fedd", X"ff89", X"0bf6",
                                                        X"f95b", X"042f", X"0361", X"ff0d", X"fc59", X"0704", X"fd56", X"000a", X"036d", X"00e8", X"0191", X"1152", X"032b", X"010f",
                                                        X"f7ca", X"0a38", X"fac7", X"0881", X"ffdf", X"fb72", X"006a", X"0440", X"f5d3", X"ffe7", X"0629", X"0210", X"fb97", X"1487",
                                                        X"fec8", X"ffa1", X"fa88", X"0473", X"fc6e", X"00cc", X"ff42", X"fa11", X"fab7", X"02f1", X"f53e", X"0005", X"038c", X"fc6e",
                                                        X"fb72", X"0ab6", X"fd8a", X"017d", X"fee0", X"0b30", X"fb49", X"014a", X"0982", X"fff6", X"0126", X"0196", X"f2f8", X"0338",
                                                        X"0bd6", X"01f8", X"f3d5", X"091e", X"0127", X"0395", X"faaa", X"03d9", X"ff6d", X"04bb", X"046e", X"006a", X"00c9", X"063f",
                                                        X"f928", X"04a1", X"08a2", X"fe8d", X"f96d", X"0fa8", X"fee3", X"fee8", X"fbe9", X"04a1", X"0145", X"0042", X"04b4", X"fbb9",
                                                        X"ff4d", X"0670", X"edde", X"fca8", X"06d3", X"05ac", X"fe56", X"0fa0", X"f9d5", X"faf1", X"fd91", X"1168", X"f9a1", X"ff46",
                                                        X"075a", X"00d3", X"f13c", X"052f", X"f82e", X"01e0", X"0b0e", X"0396", X"fb6a", X"1014", X"ffa7", X"fa1c", X"fda1", X"0950",
                                                        X"fccb", X"0715", X"0484", X"ff69", X"0117", X"0481", X"f915", X"0105", X"08ce", X"026c", X"00a4", X"0cdc", X"fc0e", X"0127",
                                                        X"fd93", X"084a", X"ffb7", X"fcac", X"0166", X"00c2", X"0237", X"00f3", X"f826", X"016f", X"0a56", X"021f", X"027c", X"0d63",
                                                        X"076b", X"fcc0", X"fd3c", X"0551", X"ff90", X"fb24", X"00b8", X"fbca", X"fbf8", X"0670", X"f003", X"fc74", X"062c", X"020b",
                                                        X"fd79", X"0b6a", X"fdc8", X"ff5a", X"fe3b", X"057a", X"fc12", X"0359", X"fe58", X"0322", X"0066", X"0639", X"f86b", X"011c",
                                                        X"0bcb", X"0365", X"fb59", X"0b54", X"0767", X"fdbf", X"fc92", X"0bb5", X"0043", X"0d5a", X"040d", X"fd77", X"f27c", X"05c2",
                                                        X"ea0b", X"0118", X"0b5f", X"001a", X"fe5d", X"1710", X"00e3", X"0177", X"fdd9", X"0b30", X"fba1", X"03f0", X"050f", X"fc42",
                                                        X"07a3", X"056c", X"f24d", X"0379", X"0480", X"03c3", X"fc97", X"1101", X"fc20", X"fe85", X"fe68", X"069c", X"f8ee", X"fb1b",
                                                        X"05a0", X"fae5", X"06a8", X"035a", X"f289", X"06be", X"097e", X"00bc", X"fdaa", X"129d", X"00bc", X"fe48", X"fbd1", X"0a3e",
                                                        X"f88c", X"0052", X"0798", X"fbb5", X"0547", X"0075", X"f2fb", X"03d9", X"0a79", X"08fa", X"f855", X"06ce", X"f86d", X"00b0",
                                                        X"01a1", X"0478", X"fac2", X"ff37", X"fd5e", X"f9f4", X"016a", X"09d7", X"fe5d", X"0679", X"0928", X"fbab", X"f6d0", X"1100",
                                                        X"00d8", X"fce4", X"fc63", X"0ed7", X"f83a", X"01de", X"0101", X"fe2b", X"0431", X"0711", X"fede", X"04a8", X"11cc", X"ffae",
                                                        X"f928", X"0d8d", X"0028", X"fd8f", X"f7a3", X"0a92", X"fd6a", X"07c1", X"036b", X"fe71", X"0653", X"00ce", X"f5d7", X"ff0f",
                                                        X"0bd5", X"031c", X"f76a", X"0783", X"fed8", X"fe16", X"ff08", X"041a", X"f9e1", X"080d", X"ff0d", X"fd56", X"ffdd", X"024e",
                                                        X"f904", X"0231", X"061b", X"ff63", X"f818", X"08e5", X"fd52", X"fe40", X"fd91", X"02a1", X"f62a", X"0963", X"05e5", X"fc0a",
                                                        X"fe32", X"011b", X"fc0b", X"ffdf", X"0335", X"fbc1", X"ff15", X"06ff", X"fdb7", X"02e0", X"0155", X"06ab", X"fb8e", X"0668",
                                                        X"01f7", X"fbe4", X"062b", X"00aa", X"ee9b", X"07d7", X"0654", X"fb55", X"01e8", X"0f9c", X"02dd", X"0185", X"ff46", X"0869",
                                                        X"fe8c", X"03a0", X"0709", X"ffc4", X"067d", X"0109", X"f909", X"004e", X"0931", X"012e", X"037f", X"10d4", X"feea", X"0016",
                                                        X"fe4b", X"0552", X"fe12", X"0772", X"0281", X"fdd4", X"0675", X"039c", X"f711", X"0129", X"0adf", X"ff4c", X"fb72", X"093d",
                                                        X"faac", X"fde8", X"fce9", X"04fc", X"fa0d", X"000d", X"0530", X"ff10", X"fe03", X"0488", X"fd6a", X"04ad", X"09f7", X"0604",
                                                        X"fac7", X"0ed1", X"ffee", X"fc97", X"fb5e", X"0712", X"f9b9", X"fbf9", X"0356", X"fb81", X"0952", X"059d", X"ff81", X"00cf",
                                                        X"0606", X"0244", X"063b", X"0940", X"fb8c", X"fe49", X"f8b2", X"04fa", X"ff27", X"0330", X"01e2", X"fec7", X"f9e4", X"057d",
                                                        X"f1ad", X"fed4", X"07c5", X"0134", X"040b", X"0bba", X"fac4", X"02be", X"f5e4", X"07e8", X"f9c5", X"fead", X"01ba", X"fb3a",
                                                        X"fde8", X"016c", X"f7a6", X"ff6b", X"0974", X"fed7", X"0217", X"0714", X"fdb3", X"fe69", X"fded", X"0c32", X"0003", X"0c34",
                                                        X"04a6", X"fea8", X"02bb", X"062a", X"f8a1", X"fea1", X"0768", X"03ad", X"fcfd", X"010f", X"ff29", X"fe75", X"fd4f", X"0a16",
                                                        X"fa45", X"02b6", X"053f", X"f9ee", X"01c6", X"009a", X"f9c7", X"0201", X"0101", X"fd35", X"ff49", X"faeb", X"fb34", X"fdea",
                                                        X"fb7c", X"07df", X"f878", X"0645", X"fd3d", X"fac4", X"f947", X"003c", X"f35b", X"0243", X"010b", X"0361", X"fd7c", X"0033",
                                                        X"016e", X"fe2a", X"0060", X"0581", X"f54e", X"fcfc", X"fe8e", X"fcff", X"02db", X"0775", X"fcac", X"02a2", X"0138", X"ff0d",
                                                        X"ff3d", X"0705", X"fbdd", X"fdc0", X"fd24", X"06df", X"fa58", X"04dc", X"fe3b", X"00df", X"fde2", X"0360", X"f13a", X"fec2",
                                                        X"0604", X"ff08", X"f8f5", X"0f0c", X"f833", X"fe02", X"fc19", X"07bd", X"fa9b", X"0880", X"0114", X"0088", X"f598", X"06a3",
                                                        X"f67a", X"0008", X"03a9", X"0721", X"0379", X"05f2", X"00f4", X"ff71", X"fd28", X"040a", X"fda0", X"0778", X"ff05", X"fc53",
                                                        X"feec", X"0727", X"fa0f", X"02ff", X"0b44", X"01bb", X"05bd", X"06b6", X"028c", X"f92f", X"fc3e", X"0419", X"f6d7", X"03c1",
                                                        X"04fa", X"fb5d", X"01d2", X"0709", X"0009", X"fe2e", X"042a", X"fe1c", X"0732", X"077a", X"fad1", X"00cc", X"02c8", X"06cf",
                                                        X"fa45", X"0528", X"078f", X"fe9b", X"fd70", X"0252", X"f33f", X"0087", X"08ee", X"0177", X"01b7", X"0bb3", X"fa77", X"0242",
                                                        X"fd07", X"0a2a", X"fc5e", X"0c6e", X"0100", X"01b0", X"fbd7", X"0489", X"f645", X"fcbc", X"0628", X"01b7", X"fb00", X"0be5",
                                                        X"fbef", X"fe50", X"fb9f", X"080a", X"04d2", X"0141", X"03dd", X"fd43", X"feb9", X"040c", X"f54f", X"021e", X"0ae0", X"028a",
                                                        X"fc35", X"1085", X"fefe", X"fc0e", X"002d", X"06fc", X"013f", X"febc", X"0539", X"fbd7", X"0a30", X"ffaf", X"f87b", X"fc8e",
                                                        X"0458", X"fe50", X"ff3f", X"046b", X"fac2", X"fce8", X"010f", X"031d", X"ffbe", X"fad7", X"031e", X"fdd7", X"030c", X"ff3d",
                                                        X"ffd1", X"024a", X"09ec", X"0974", X"fc42", X"0a2e", X"f9a7", X"ff80", X"ffe6", X"0ccd", X"fbcd", X"ffe5", X"febc", X"fe25",
                                                        X"0165", X"03b1", X"f947", X"00ff", X"0a37", X"06b3", X"fd20", X"1552", X"fb27", X"fb67", X"fc05", X"0340", X"f7fc", X"f80c",
                                                        X"000c", X"0059", X"0185", X"0673", X"f9a2", X"053f", X"05a0", X"0490", X"fbc4", X"0247", X"00be", X"f80c", X"fd9a", X"06d3",
                                                        X"fd0b", X"044b", X"febb", X"017e", X"ff35", X"05d0", X"fa51", X"fd90", X"0aa5", X"01b6", X"fafc", X"0b2f", X"02e9", X"fbb0",
                                                        X"ff0c", X"0640", X"0227", X"050a", X"00f1", X"002f", X"fc60", X"0695", X"fd6b", X"fcc6", X"0912", X"033a", X"0009", X"040f",
                                                        X"002a", X"fdf2", X"f6b4", X"0bec", X"fbca", X"08b0", X"0579", X"fdb9", X"fbd8", X"06b8", X"f436", X"fdf0", X"0426", X"0702",
                                                        X"fdd0", X"09db", X"fe95", X"fd54", X"faa3", X"028d", X"f4eb", X"0349", X"0525", X"fa3a", X"eae1", X"0609", X"f399", X"027d",
                                                        X"0b1e", X"0431", X"fd2e", X"023c", X"fea8", X"01a5", X"fb86", X"0708", X"f75c", X"fcf9", X"004c", X"f9d4", X"087c", X"0874",
                                                        X"ed89", X"0007", X"0802", X"ffc8", X"f6d4", X"08a7", X"feb8", X"fe12", X"fcf9", X"02e1", X"fdbf", X"feda", X"fd6c", X"f983",
                                                        X"0483", X"028c", X"facc", X"fedc", X"04d9", X"fb94", X"fed8", X"0898", X"ff70", X"fee2", X"f71f", X"0501", X"f86b", X"fbe3",
                                                        X"ff92", X"fea3", X"fea2", X"02f3", X"fc32", X"0420", X"08cb", X"faae", X"fec4", X"0580", X"003c", X"00dc", X"fd3b", X"0863",
                                                        X"f769", X"0728", X"f7a1", X"0084", X"02d5", X"0093", X"fb76", X"043b", X"09b8", X"082a", X"ff0b", X"ff8e", X"fd40", X"f7dc",
                                                        X"f8ee", X"03ff", X"fb80", X"fc0e", X"fde5", X"fe6a", X"ffe0", X"0401", X"f3ed", X"055b", X"08ff", X"fdb4", X"0581", X"02d1",
                                                        X"01a7", X"f749", X"fb9b", X"0d28", X"f6ef", X"0005", X"0377", X"f7d8", X"01a2", X"087d", X"e5e4", X"01e2", X"0957", X"fcaa",
                                                        X"f786", X"09e3", X"f9d2", X"f8f5");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f8f5";
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
