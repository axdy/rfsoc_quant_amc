-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block369.vhd
-- Created: 2024-11-04 16:44:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block369
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage2/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block369 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block369;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block369 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fd69", X"0356", X"fa90", X"017a", X"fc2e", X"f0b4",
                                                        X"f721", X"fb6b", X"f8be", X"fe40", X"f68b", X"0335", X"f459", X"02be", X"01b6", X"fe86", X"fd76", X"ff8f", X"f44d", X"079b",
                                                        X"f95b", X"fb21", X"f167", X"fe36", X"03ee", X"ffdc", X"fb59", X"fbb3", X"fa92", X"01af", X"ff25", X"fb8f", X"fa7f", X"fe28",
                                                        X"efde", X"f835", X"f642", X"fcf2", X"edc8", X"fb09", X"0974", X"0324", X"019f", X"03c9", X"fd0b", X"0212", X"03c7", X"f91a",
                                                        X"f78e", X"fe1c", X"f964", X"fbec", X"f7c0", X"fd36", X"f948", X"03cd", X"034d", X"ff87", X"ff80", X"061b", X"fea7", X"fb4c",
                                                        X"feab", X"f978", X"f9a7", X"0217", X"f943", X"006e", X"0216", X"fd0e", X"f118", X"026b", X"fad7", X"ff85", X"fab2", X"ff6e",
                                                        X"04dd", X"fbb9", X"fc41", X"fc4a", X"fc9d", X"f776", X"fafc", X"07a1", X"0375", X"fb0c", X"efde", X"f9e1", X"f652", X"ff9c",
                                                        X"fca2", X"ff8c", X"ffd8", X"faa4", X"f5b0", X"fe56", X"fce1", X"f79b", X"f48a", X"03af", X"fcb5", X"fde7", X"f040", X"fefa",
                                                        X"ff23", X"ff11", X"fdaa", X"0214", X"00f3", X"ff2d", X"fcc0", X"fe8a", X"03a9", X"fe69", X"f57b", X"0031", X"0781", X"fcd3",
                                                        X"fa42", X"fd5c", X"fe7a", X"02d0", X"fefb", X"03b4", X"0546", X"fd36", X"0120", X"fdaa", X"0463", X"01c8", X"f29c", X"ffd3",
                                                        X"0529", X"fdd3", X"00ef", X"fc6c", X"0565", X"064f", X"0293", X"0101", X"076c", X"05b6", X"0735", X"02da", X"04c2", X"0181",
                                                        X"f6e0", X"f9c4", X"0578", X"ffac", X"0349", X"02f4", X"00d5", X"08d0", X"0380", X"0775", X"0c18", X"0e63", X"082f", X"0598",
                                                        X"01ea", X"fbf7", X"f938", X"1243", X"060e", X"fd39", X"f618", X"00df", X"051b", X"04c0", X"fef3", X"02e6", X"093b", X"0dcb",
                                                        X"04c6", X"0656", X"063f", X"00ed", X"fef4", X"0f3b", X"043c", X"023e", X"02a9", X"fe85", X"0533", X"0bbe", X"0287", X"085b",
                                                        X"0110", X"0919", X"0d7a", X"023c", X"0589", X"0651", X"02c3", X"09c6", X"0a29", X"003d", X"036e", X"0073", X"01dc", X"0b29",
                                                        X"009f", X"0577", X"01e7", X"fede", X"067a", X"07bc", X"0743", X"0aea", X"ffb2", X"fbdd", X"0aaa", X"00e0", X"0a87", X"0441",
                                                        X"0632", X"0c4a", X"ff7d", X"0053", X"0694", X"fa69", X"09ad", X"051b", X"07b6", X"0633", X"05e0", X"fe64", X"05ea", X"0190",
                                                        X"1311", X"0249", X"0514", X"0a85", X"0149", X"01cb", X"0607", X"fbdc", X"06b7", X"05ef", X"fd76", X"0506", X"fd15", X"06cb",
                                                        X"0481", X"ff1d", X"0e3e", X"04df", X"01f7", X"0418", X"ffd7", X"00d0", X"ff5c", X"f927", X"ff4f", X"0022", X"ff23", X"fd09",
                                                        X"f7d0", X"f9e0", X"013b", X"fe6f", X"03bc", X"0078", X"ff85", X"0289", X"fbbd", X"0233", X"ff01", X"0450", X"000c", X"fc6e",
                                                        X"fa26", X"fb9e", X"f9a4", X"0216", X"fedc", X"fc9f", X"0c05", X"feba", X"012b", X"01e7", X"fb90", X"08ad", X"f83d", X"fa08",
                                                        X"fe44", X"fdf4", X"0327", X"fc7b", X"f5c9", X"fe8d", X"fd26", X"fe58", X"0326", X"f953", X"fd01", X"fe6a", X"f7cf", X"ff16",
                                                        X"f07c", X"fe66", X"f55d", X"fa78", X"fc21", X"0199", X"f478", X"0068", X"f4fc", X"fc93", X"07df", X"fb94", X"fc42", X"fc70",
                                                        X"fb36", X"0148", X"f04a", X"ef1f", X"f902", X"f9ad", X"f744", X"fa5f", X"f981", X"ffb4", X"f555", X"f76f", X"fd51", X"00e8",
                                                        X"fe41", X"ef27", X"f933", X"f897", X"f7b9", X"f674", X"f8f2", X"f590", X"f8e0", X"fd80", X"ef9d", X"093b", X"fa86", X"f59d",
                                                        X"ed53", X"fec3", X"fe0f", X"e9eb", X"fa23", X"f82e", X"f6b9", X"f717", X"f2fa", X"f2a2", X"f799", X"f658", X"f876", X"04fb",
                                                        X"f1e5", X"f5cd", X"e264", X"fb03", X"f281", X"ec97", X"f479", X"0344", X"fd96", X"f223", X"efee", X"f5d9", X"fbf0", X"f254",
                                                        X"f27d", X"fce6", X"ecb5", X"f8b4", X"d73d", X"fbcb", X"f8f1", X"eac4", X"f592", X"fd13", X"f6ee", X"ebe2", X"f4e8", X"f289",
                                                        X"fa89", X"fe87", X"fa28", X"fffc", X"ef79", X"f532", X"e738", X"011d", X"f563", X"e947", X"fb27", X"fc39", X"f99b", X"f06a",
                                                        X"f4af", X"f81f", X"f848", X"f997", X"f0fc", X"f81f", X"f5a2", X"f65b", X"d004", X"022c", X"f7b8", X"edcb", X"fcaf", X"fb3b",
                                                        X"f864", X"f96d", X"f873", X"f4ac", X"fbac", X"fda2", X"f204", X"fc59", X"f2b4", X"f7f2", X"dbef", X"fba1", X"fa96", X"f3f2",
                                                        X"fcd0", X"ff50", X"f2be", X"f980", X"016b", X"f901", X"f4c6", X"fc4a", X"f8d1", X"f9de", X"f6db", X"f5d8", X"d1e9", X"fbf7",
                                                        X"f46d", X"f394", X"fae8", X"fc1c", X"fec9", X"fa6a", X"0088", X"fcae", X"f5c3", X"ffc3", X"faf1", X"fdb9", X"f64e", X"fabc",
                                                        X"d318", X"fc27", X"f6dd", X"fa17", X"fcf1", X"03e6", X"0604", X"f3da", X"fe55", X"fd17", X"f927", X"006d", X"ed7b", X"0a82",
                                                        X"fb62", X"fc9a", X"e019", X"fee8", X"fdfc", X"0225", X"feaa", X"fd58", X"0100", X"fc07", X"fe56", X"ffcc", X"005e", X"04dc",
                                                        X"f296", X"0316", X"0214", X"fc6b", X"ea0b", X"ff64", X"feef", X"046d", X"00a6", X"ff66", X"010e", X"f937", X"086e", X"fdbe",
                                                        X"ffe6", X"00d1", X"098e", X"fe94", X"07a9", X"fe10", X"f86e", X"0188", X"0446", X"0a2c", X"0327", X"0202", X"0432", X"0871",
                                                        X"0791", X"0108", X"03f8", X"0536", X"057b", X"051d", X"0a76", X"0088", X"f28c", X"00ef", X"02d0", X"0c47", X"0051", X"0229",
                                                        X"0b83", X"0a00", X"02cd", X"fdad", X"0676", X"085b", X"0477", X"026f", X"0a87", X"013e", X"fc3b", X"003c", X"082b", X"1138",
                                                        X"0277", X"0d68", X"0f44", X"0da2", X"00a4", X"04c2", X"0449", X"02e1", X"039f", X"0445", X"0f4e", X"070a", X"fdf8", X"014b",
                                                        X"09dc", X"1470", X"ff6f", X"08b7", X"0d88", X"0e2e", X"0548", X"00fa", X"0345", X"060b", X"01d2", X"09da", X"111c", X"06d2",
                                                        X"0f15", X"0308", X"08a4", X"1531", X"0661", X"0918", X"07a0", X"0bf2", X"0557", X"0469", X"0441", X"0806", X"0576", X"04aa",
                                                        X"110c", X"06f9", X"112a", X"01ab", X"047e", X"1689", X"077c", X"06ca", X"0b19", X"05cb", X"06bd", X"087e", X"06ec", X"09ae",
                                                        X"fe96", X"0918", X"0a09", X"04e4", X"0d9f", X"fee8", X"ff5d", X"131f", X"0664", X"ff95", X"0719", X"03d6", X"0896", X"060b",
                                                        X"0599", X"0943", X"06e0", X"0513", X"089b", X"066f", X"11cf", X"0279", X"0064", X"12a6", X"047b", X"03c5", X"05e0", X"078d",
                                                        X"06e8", X"04e2", X"0471", X"ff2a", X"04b9", X"0642", X"07ee", X"043d", X"112f", X"ff95", X"0016", X"0be9", X"0405", X"0030",
                                                        X"0232", X"07be", X"08be", X"0322", X"01a7", X"fd62", X"0214", X"fbf9", X"04f9", X"026e", X"13db", X"0335", X"0312", X"09ea",
                                                        X"0574", X"0830", X"022e", X"070a", X"08f5", X"03a8", X"04ba", X"0570", X"0ac6", X"00fc", X"06e2", X"fbb1", X"0af4", X"01ae",
                                                        X"02a4", X"0460", X"013a", X"000c", X"fd41", X"0035", X"0354", X"008f", X"0190", X"0729", X"fd82", X"0282", X"06cd", X"fdd1",
                                                        X"042c", X"ff46", X"061d", X"ff30", X"fef0", X"ff2f", X"ff13", X"fbbc", X"06a3", X"0537", X"02f7", X"0167", X"0010", X"fa79",
                                                        X"fd2e", X"fa4d", X"0df4", X"fd83", X"0168", X"fd3c", X"fe59", X"0735", X"f8e2", X"fe65", X"03b7", X"00c9", X"fc19", X"fe14",
                                                        X"00f1", X"01f7", X"fad9", X"fa0b", X"02c9", X"ffa6", X"f5b8", X"fc98", X"feb5", X"0051", X"fba5", X"f6b6", X"ff90", X"fd15",
                                                        X"fb04", X"ff8c", X"fa9d", X"fe16", X"f8ca", X"f5ec", X"f521", X"fd7e", X"f81d", X"f70c", X"fcfa", X"fba8", X"013b", X"eeaf",
                                                        X"f8bb", X"fc9e", X"faef", X"fe17", X"fd1f", X"048f", X"f883", X"f527", X"f627", X"fd73", X"fe3a", X"f68d", X"f88c", X"fdb5",
                                                        X"fabf", X"f5b4", X"fdb2", X"fa9c", X"fa9e", X"fa0d", X"f8e7", X"f9ed", X"f855", X"f976", X"f890", X"fdbe", X"fb6f", X"f4c7",
                                                        X"f844", X"f9c3", X"fd19", X"f45f", X"faec", X"fa4b", X"fcb2", X"faf6", X"f9c1", X"ef81", X"fa72", X"f88f", X"ed58", X"fad1",
                                                        X"018b", X"f877", X"f833", X"01c2", X"fc37", X"fc1c", X"fa44", X"f8b7", X"fbcf", X"f966", X"f33f", X"f8a2", X"f69c", X"f780",
                                                        X"eccb", X"fe1e", X"fe65", X"fb6d", X"f8d0", X"fac1", X"f6b6", X"fcf4", X"fb40", X"f829", X"0016", X"fc73", X"f7b0", X"fd38",
                                                        X"f9af", X"fd62", X"f078", X"fb5e", X"fa13", X"fde0", X"f647", X"fc28", X"f553", X"fd26", X"f931", X"f901", X"fe8d", X"ffbb",
                                                        X"f798", X"02e5", X"fa4f", X"fdd9", X"f519", X"fe1a", X"feab", X"fcb9", X"f8ed", X"fb4a", X"f9f9", X"f641", X"f661", X"f744",
                                                        X"fdee", X"fa5d", X"f24e", X"fab1", X"fb2b", X"fabf", X"f0e5", X"004f", X"fe1a", X"f742", X"fc0a", X"fa57", X"ff57", X"f9ee",
                                                        X"fe6f", X"fb1f", X"fb7a", X"f971", X"f556", X"012c", X"fbab", X"fc11", X"f08e", X"ff3d", X"ff3d", X"fc66", X"007d", X"02b8",
                                                        X"0385", X"fbd5", X"fe55", X"fc4c", X"fedf", X"fd5b", X"fb34", X"fa57", X"ff46", X"fe5b", X"ee8d", X"0174", X"fc52", X"001e",
                                                        X"0507", X"018f", X"04e6", X"f9ce", X"fa25", X"fec9", X"00c5", X"fd59", X"fa6a", X"07e3", X"ff30", X"ff50", X"f273", X"fe38",
                                                        X"054d", X"0129", X"00c1", X"fca3", X"ff28", X"0478", X"033f", X"0188", X"02b0", X"032f", X"0085", X"05ef", X"0604", X"f920",
                                                        X"f53c", X"0386", X"07e6", X"037c", X"018b", X"0007", X"0450", X"fd7b", X"0491", X"02ee", X"031a", X"0630", X"f710", X"05f2",
                                                        X"060f", X"fcb5", X"f508", X"0500", X"093f", X"086e", X"0360", X"fa56", X"09f1", X"04eb", X"093c", X"ff32", X"05c0", X"0434",
                                                        X"f5af", X"00c1", X"06c4", X"fe2f", X"fadd", X"0188", X"040b", X"0898", X"03f1", X"07fc", X"071f", X"f896", X"0535", X"018f",
                                                        X"03cd", X"046d", X"f84c", X"029d", X"09d4", X"0044", X"feb7", X"0292", X"03aa", X"0a77", X"032b", X"08d1", X"05b0", X"009e",
                                                        X"0a5e", X"08bd", X"02fb", X"053f", X"f88f", X"fae2", X"0acc", X"ff5e", X"06e3", X"fda1", X"02f7", X"0be0", X"0271", X"fbab",
                                                        X"ff71", X"060a", X"055c", X"041d", X"02b5", X"031f", X"fa7f", X"0094", X"09fa", X"fca7", X"00be", X"fd46", X"04ff", X"0d08",
                                                        X"035f", X"fcab", X"0592", X"0560", X"08a9", X"08a9", X"0023", X"04c3", X"01f7", X"0666", X"06e2", X"006b", X"ff9e", X"fcfa",
                                                        X"03d3", X"0f0c", X"06cd", X"fab3", X"04d3", X"01c1", X"0b33", X"0651", X"0268", X"07ca", X"f9f6", X"09ae", X"0581", X"000b",
                                                        X"098e", X"ff41", X"04af", X"0bd9", X"0295", X"031a", X"ffd4", X"0338", X"0766", X"0136", X"05d7", X"04bb", X"ff6b", X"fa0f",
                                                        X"08a0", X"03d7", X"0578", X"051d", X"0358", X"0e98", X"017d", X"02d7", X"0087", X"0790", X"0305", X"fecd", X"0144", X"035a",
                                                        X"01e6", X"0464", X"0428", X"03ed", X"141e", X"00d1", X"02c8", X"0808", X"fea3", X"045e", X"039b", X"05f5", X"04ae", X"0076",
                                                        X"0390", X"0780", X"f91d", X"f8e4", X"0546", X"034b", X"0825", X"fe09", X"06f3", X"08e4", X"f969", X"0646", X"0050", X"0b4d",
                                                        X"ffbd", X"feb1", X"03e9", X"ff87", X"f86f", X"01e6", X"0204", X"01ba", X"0410", X"00d2", X"0243", X"0a3c", X"ff24", X"faa8",
                                                        X"fdb8", X"089e", X"fe00", X"fdf0", X"fe37", X"fb3e", X"f3aa", X"fe3f", X"0297", X"fc7e", X"022e", X"0085", X"fed3", X"087a",
                                                        X"0456", X"f935", X"fa29", X"0c13", X"00c8", X"ffda", X"fdb2", X"fb63", X"f3aa", X"fdac", X"fdff", X"febb", X"0449", X"035e",
                                                        X"05d0", X"034c", X"01fd", X"fdcc", X"ffe3", X"008e", X"05da", X"0233", X"0233", X"013d", X"f82f", X"0273", X"ff8a", X"ff82",
                                                        X"0388", X"031a", X"01a1", X"05cb", X"fed4", X"f76a", X"fdcf", X"f682", X"01fd", X"0040", X"ff9f", X"fea0", X"ffd8", X"fb36",
                                                        X"003c", X"fbf7", X"0062", X"fd47", X"fbd5", X"0143", X"fe56", X"fdf9", X"fe9c", X"f7d2", X"ff54", X"fe77", X"fdab", X"fb0a",
                                                        X"fb4c", X"f3c8", X"fdb0", X"fc64", X"f7c9", X"042c", X"0252", X"03ed", X"fe5c", X"ffae", X"006f", X"ff54", X"08e3", X"ffdc",
                                                        X"fc3a", X"fb81", X"fc83", X"028b", X"01c4", X"fd7a", X"f5bf", X"026f", X"fe2a", X"0250", X"013f", X"ffc4", X"fd43", X"03f1",
                                                        X"0481", X"fde3", X"fe5a", X"fe7c", X"f057", X"fdcb", X"ff4a", X"fb80", X"eb4d", X"fef4", X"0134", X"01a9", X"fec0", X"0522",
                                                        X"05a2", X"fcae", X"0316", X"00d3", X"0121", X"00c0", X"f4fa", X"07cd", X"00f2", X"fbc8", X"e62e", X"fe8d", X"03c2", X"ff6d",
                                                        X"fc5a", X"fd40", X"0420", X"fb6e", X"0454", X"fe06", X"00d7", X"fec1", X"fa0a", X"fc4c", X"056d", X"fdbb", X"fb3d", X"fc04",
                                                        X"fd8e", X"021c", X"f99e", X"04f4", X"04b9", X"ff52", X"0522", X"0319", X"020d", X"006e", X"0111", X"faea", X"0817", X"fb14",
                                                        X"f601", X"0339", X"035b", X"0688", X"0030", X"0124", X"fcc6", X"ff89", X"0406", X"fe17", X"fd3b", X"fe9c", X"fc9a", X"065f",
                                                        X"005e", X"fd0c", X"f0e8", X"ff15", X"02b0", X"0749", X"0150", X"fe51", X"00b5", X"07fe", X"0696", X"fe1f", X"0351", X"054d",
                                                        X"f488", X"0335", X"0325", X"02da", X"f85a", X"017c", X"ff52", X"0f98", X"011e", X"fd78", X"0337", X"09ba", X"0925", X"0071",
                                                        X"024b", X"02d1", X"fa55", X"fe2a", X"0707", X"030a", X"fe6c", X"0169", X"061e", X"113c", X"0030", X"0131", X"019d", X"075e",
                                                        X"072b", X"0180", X"053f", X"00d9", X"fb37", X"fc6c", X"0d88", X"021d", X"06ae", X"fb62", X"05ce", X"15e9", X"0118", X"0324",
                                                        X"07be", X"04b9", X"070f", X"02b5", X"0513", X"023c", X"faaf", X"010a", X"0e1a", X"02e8", X"0d02", X"fddf", X"05ae", X"158f",
                                                        X"05c0", X"09d5", X"0aec", X"0aa7", X"0712", X"088c", X"04b2", X"0333", X"031f", X"00b5", X"0b30", X"05c8", X"0b32", X"ff3e",
                                                        X"051e", X"1310", X"ffed", X"0049", X"0701", X"0bd5", X"079c", X"045e", X"04ca", X"028e", X"02fa", X"fe7a", X"128a", X"0611",
                                                        X"0c90", X"02b3", X"079a", X"1262", X"0453", X"0072", X"095c", X"0e8e", X"09ea", X"038a", X"04a1", X"04bb", X"fdaa", X"fcaf",
                                                        X"0cb8", X"04b3", X"0a15", X"0484", X"0ced", X"1218", X"064e", X"fdfb", X"08ae", X"097b", X"0611", X"0776", X"0631", X"066a",
                                                        X"f7ea", X"ff2c", X"0635", X"0430", X"0d8a", X"0191", X"0401", X"0f57", X"0784", X"fda1", X"febb", X"0ee1", X"07af", X"083d",
                                                        X"0416", X"018a", X"fccd", X"0411", X"09db", X"01c7", X"1a86", X"0228", X"02ea", X"0bad", X"046a", X"f5af", X"08b7", X"0a44",
                                                        X"0c6b", X"0648", X"0552", X"ff79", X"03aa", X"050d", X"05fc", X"0173", X"1d45", X"0296", X"01e3", X"08d7", X"03fe", X"01c3",
                                                        X"040e", X"057a", X"0786", X"00d1", X"0398", X"fe08", X"0180", X"02fe", X"080e", X"fe5e", X"0967", X"fe30", X"03c4", X"0121",
                                                        X"0715", X"05c5", X"041e", X"f9ba", X"0257", X"fff8", X"ff6c", X"0208", X"fe69", X"fc4b", X"028f", X"fe11", X"019c", X"f935",
                                                        X"01a0", X"00b8", X"04e1", X"fc79", X"0356", X"021e", X"0431", X"0279", X"f79e", X"0232", X"f9a2", X"fe83", X"0213", X"fd2e",
                                                        X"06be", X"fe48", X"fcc2", X"0037", X"005b", X"03ba", X"00b2", X"022d", X"062b", X"feb8", X"faec", X"0464", X"fde0", X"0723",
                                                        X"01ff", X"f9e7", X"0484", X"01af", X"fd7b", X"f83f", X"ff12", X"ff01", X"fce4", X"f7ac", X"034a", X"fe05", X"fd1c", X"03f7",
                                                        X"fd42", X"0188", X"f96b", X"f8de", X"01f4", X"fff9", X"02b9", X"f7f3", X"ff2f", X"0055", X"f33b", X"fb40", X"fbe4", X"fc58",
                                                        X"fadf", X"fae8", X"fc2f", X"fa64", X"f4dc", X"faa4", X"f152", X"0072", X"fcb0", X"f243", X"fd23", X"0200", X"fbb8", X"fabf",
                                                        X"fcbb", X"f990", X"fa7c", X"f8c0", X"fb2a", X"07e0", X"f822", X"fa2c", X"fa14", X"fbb4", X"f707", X"f34e", X"f6bd", X"029e",
                                                        X"f825", X"f553", X"f5cd", X"f5d7", X"fd4e", X"fafb", X"f1d6", X"fd0a", X"fc67", X"f778", X"e658", X"fb3f", X"0121", X"f415",
                                                        X"fa61", X"031d", X"f8e4", X"f37e", X"f5b0", X"f46c", X"fda2", X"fc4d", X"ee9b", X"f7d9", X"fe19", X"fa12", X"e26f", X"007e",
                                                        X"fdc2", X"f48f", X"f41f", X"fc4d", X"fbe1", X"f22e", X"f4b2", X"f7f8", X"00be", X"fafb", X"f13a", X"0008", X"fac1", X"fb26",
                                                        X"eafe", X"ff39", X"fdab", X"f8bd", X"f95e", X"fffd", X"fd13", X"fc60", X"f9a9", X"f684", X"f9e7", X"fdce", X"eb0c", X"fd01",
                                                        X"f4c3", X"fe38", X"e0de", X"0097", X"fe8f", X"f92f", X"f7b6", X"012e", X"fc97", X"0164", X"f5f6", X"f770", X"fb06", X"f467",
                                                        X"f08d", X"0844", X"f40e", X"fbc2", X"df11", X"0271", X"003f", X"fb7e", X"facf", X"fc1d", X"fdc9", X"fa1c", X"fc58", X"f888",
                                                        X"fc21", X"fa2f", X"eaae", X"ffb9", X"f9a2", X"fcb0", X"e8f1", X"020f", X"fdbc", X"fb0e", X"fcb1", X"011b", X"0357", X"fa6c",
                                                        X"fe45", X"fc6f", X"fffa", X"fe62", X"f342", X"ffe7", X"f927", X"fe31", X"e890", X"fd62", X"fdd5", X"0114", X"ff5d", X"fad4",
                                                        X"01f3", X"fc89", X"fe60", X"fc32", X"fb67", X"fb16", X"f538", X"06d5", X"fc1d", X"0070", X"f361", X"fc74", X"fa83", X"0285",
                                                        X"03ef", X"ffb9", X"fb76", X"fdec", X"0147", X"fbde", X"0321", X"fe9a", X"f4cb", X"05f9", X"0062", X"fbd9", X"e935", X"ffc8",
                                                        X"0165", X"01e4", X"064b", X"0590", X"0207", X"0047", X"04b3", X"fe02", X"0288", X"0581", X"fcb6", X"fc6c", X"0802", X"ff55",
                                                        X"edac", X"03e4", X"fefd", X"03ba", X"0163", X"04ad", X"0021", X"0910", X"0689", X"fe8e", X"03bf", X"0c75", X"00ab", X"0097",
                                                        X"0941", X"fe54", X"f59c", X"000b", X"0504", X"07dd", X"0118", X"03f3", X"0262", X"0000", X"03dc", X"00a3", X"ffdf", X"02f1",
                                                        X"ff0f", X"0a04", X"0590", X"ff20", X"f2f1", X"037d", X"03b7", X"0720", X"00bd", X"fff9", X"0519", X"0561", X"0968", X"0103",
                                                        X"ff18", X"06c6", X"01f3", X"09ed", X"04ad", X"ff7d", X"f6d9", X"0616", X"017c", X"0cd5", X"0383", X"0264", X"054c", X"fd44",
                                                        X"0c37", X"0188", X"03a9", X"05a3", X"fe29", X"0afd", X"05ee", X"ff31", X"fca4", X"fec7", X"017e", X"05c2", X"0742", X"fe04",
                                                        X"070b", X"0372", X"0475", X"056c", X"01f9", X"ff93", X"0102", X"04d3", X"04a7", X"002d", X"00d1", X"ff3a", X"ffa2", X"084c",
                                                        X"ff54", X"fca1", X"072a", X"fcf9", X"09bc", X"0412", X"0485", X"024a", X"fc35", X"0313", X"07b7", X"ff1e", X"01eb", X"fb18",
                                                        X"024d", X"0df7", X"0412", X"0063", X"0523", X"fbe1", X"02dc", X"0273", X"031c", X"046f", X"f93b", X"0019", X"08f0", X"01d1",
                                                        X"10ad", X"fce8", X"07f9", X"0d4b", X"fec8", X"0064", X"008a", X"02a1", X"0150", X"052d", X"057f", X"03fc", X"fe9e", X"0410",
                                                        X"0597", X"ff6a", X"076c", X"fe29", X"0955", X"0d94", X"feed", X"00fc", X"ffb9", X"0586", X"03ec", X"04ec", X"0116", X"02cc",
                                                        X"fea0", X"fdd4", X"03ba", X"fd8b", X"01f7", X"041b", X"ffda", X"06d5", X"fef1", X"fd0d", X"ff91", X"05f8", X"00d4", X"fdd1",
                                                        X"00f9", X"fd20", X"f6e0", X"fcbb", X"fb38", X"fe91", X"fc88", X"0261", X"0857", X"07bc", X"fe21", X"fb3b", X"ff53", X"01af",
                                                        X"ff77", X"fdf7", X"012e", X"ff76", X"fbf4", X"03c5", X"fefb", X"ff05", X"ff76", X"ffa5", X"00f9", X"05bb", X"fdfd", X"fdc9",
                                                        X"055b", X"ffa4", X"ff32", X"fc6a", X"ff8f", X"fc95", X"fddf", X"0245", X"01fb", X"fdef", X"03dd", X"fefd", X"fd2c", X"02a0",
                                                        X"fad9", X"01fa", X"019d", X"fcce", X"fd38", X"fe61", X"fae6", X"fdc6", X"f834", X"03de", X"02d4", X"fc43", X"03d4", X"fe0a",
                                                        X"f898", X"059b", X"fe12", X"03ad", X"011b", X"fb00", X"fb8d", X"fcab", X"fc20", X"fea1", X"fb8b", X"03c7", X"01e8", X"fa39",
                                                        X"fd6b", X"fddc", X"fe34", X"fe56", X"f9d3", X"fe1e", X"f88f", X"0144", X"ffb1", X"f97d", X"ff8d", X"ffa1", X"fca0", X"fe1a",
                                                        X"01f0", X"f8f5", X"f88f", X"fd42", X"0492", X"01a1", X"fb04", X"016b", X"fa38", X"f426", X"03e1", X"f8be", X"fab2", X"025e",
                                                        X"f5ad", X"062c", X"fd4a", X"fd38", X"fd0c", X"fa41", X"fe70", X"0368", X"02ef", X"009b", X"ffda", X"fd5c", X"0284", X"f9d1",
                                                        X"fee0", X"ff63", X"fa01", X"f468", X"ffd8", X"fa85", X"fa17", X"fe51", X"ff95", X"0193", X"00cf", X"ffd5", X"0529", X"f7f3",
                                                        X"0671", X"fbe5", X"fa33", X"fae0", X"0310", X"020e", X"04b5", X"f388", X"f926", X"f9a4", X"0329", X"007c", X"fe98", X"ffa7",
                                                        X"fd85", X"fef9", X"0778", X"fc4f");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fc4f";
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

