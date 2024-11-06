-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block346.vhd
-- Created: 2024-11-04 16:44:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block346
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage113/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block346 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block346;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block346 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0f51", X"f660", X"006f", X"fd9e", X"0840", X"fdf4",
                                                        X"fa51", X"fa69", X"f5f6", X"fc7c", X"ef47", X"f6a6", X"f415", X"056b", X"f72f", X"1147", X"085b", X"0085", X"ffdc", X"088f",
                                                        X"fbd7", X"050e", X"035c", X"0061", X"fd83", X"fd89", X"f361", X"ff18", X"f8ad", X"04ae", X"01a8", X"0a53", X"08b6", X"ffd8",
                                                        X"0027", X"080c", X"fbd0", X"039a", X"faff", X"011f", X"08c4", X"ff39", X"f323", X"023d", X"0324", X"0cc1", X"06c6", X"0431",
                                                        X"09f5", X"fffa", X"fed8", X"039f", X"f4b5", X"fe8a", X"06a4", X"fe2f", X"007f", X"fe81", X"f84f", X"f7f5", X"0193", X"0c9b",
                                                        X"fe98", X"0610", X"0616", X"014a", X"fba4", X"ff36", X"00c8", X"fe87", X"f7f7", X"00f3", X"0478", X"024a", X"fadd", X"0057",
                                                        X"ff27", X"0c02", X"fadc", X"042c", X"0987", X"0379", X"fcd7", X"015f", X"0090", X"008a", X"fda0", X"fa36", X"fa76", X"fb70",
                                                        X"fb7c", X"f91c", X"fde2", X"0df0", X"f68d", X"0212", X"08b2", X"fec8", X"fdc3", X"fef4", X"0573", X"feb3", X"f6f7", X"ee22",
                                                        X"f95c", X"fbc3", X"fe75", X"011d", X"00e3", X"037d", X"fdf1", X"0bde", X"08d3", X"f893", X"060a", X"029e", X"fd58", X"fd36",
                                                        X"fa12", X"f85d", X"fc69", X"fdd5", X"fd67", X"0477", X"fbb3", X"f309", X"fd69", X"09f3", X"0810", X"fe29", X"fcf9", X"fd59",
                                                        X"fe86", X"fb98", X"f731", X"fcb0", X"0107", X"00bd", X"fe4a", X"03e7", X"00ea", X"f3d7", X"05c8", X"089a", X"0491", X"f62d",
                                                        X"fefc", X"fb57", X"fef9", X"01c8", X"f778", X"f7c8", X"fdc9", X"0254", X"01fc", X"0575", X"fc54", X"035a", X"00e3", X"060a",
                                                        X"09af", X"f9ec", X"00b3", X"0577", X"0330", X"febb", X"f3b2", X"fb1e", X"047e", X"02da", X"faa2", X"06a9", X"ff9a", X"08f5",
                                                        X"01da", X"0573", X"06ac", X"ffbb", X"ff7e", X"0119", X"0461", X"ff0a", X"f7c2", X"fea4", X"f86c", X"fb81", X"f280", X"04b5",
                                                        X"ffd6", X"062c", X"fe88", X"067e", X"086b", X"fa4d", X"01fa", X"0136", X"08c4", X"ff87", X"fc33", X"f7c6", X"fd54", X"0417",
                                                        X"fb07", X"03cc", X"02ed", X"fa8f", X"ff52", X"0eef", X"0847", X"0667", X"0193", X"0914", X"fe58", X"035f", X"0015", X"fd50",
                                                        X"f63e", X"0438", X"ee71", X"ff4c", X"01a5", X"f6b6", X"f937", X"0a18", X"0721", X"ffae", X"fd03", X"069b", X"04d3", X"01d8",
                                                        X"fad9", X"fe99", X"f84a", X"01ae", X"facd", X"ffea", X"f9c8", X"04cb", X"fb32", X"0a1a", X"0969", X"002b", X"094d", X"0444",
                                                        X"060e", X"0076", X"fb89", X"fde4", X"03af", X"fe99", X"fa2b", X"fa5a", X"f6d2", X"07a7", X"0112", X"0aac", X"0861", X"f8ec",
                                                        X"045f", X"0375", X"fd8c", X"ff4e", X"fb8d", X"f406", X"f9df", X"0037", X"f334", X"ff15", X"0244", X"feeb", X"fdbc", X"09d5",
                                                        X"07db", X"fca2", X"0758", X"08c3", X"f8e9", X"00bd", X"fd59", X"f797", X"f82b", X"01a3", X"f4ee", X"02ce", X"0478", X"09ed",
                                                        X"fdd3", X"0481", X"010a", X"f79f", X"fdcf", X"00c3", X"fdfb", X"fcd6", X"f9a1", X"f9fa", X"fdcf", X"ffc9", X"f90a", X"05a8",
                                                        X"fe94", X"087b", X"ffe7", X"03c6", X"0208", X"f991", X"fff6", X"0398", X"066a", X"fb12", X"f3c0", X"fc67", X"fd3a", X"01c4",
                                                        X"f9f0", X"fdf2", X"035a", X"0a15", X"fdbb", X"0926", X"05fa", X"fbec", X"f8ea", X"f990", X"0452", X"fd34", X"f032", X"f85c",
                                                        X"fe73", X"04fe", X"f5f5", X"09e9", X"016c", X"fc2c", X"0218", X"0ab3", X"0cd9", X"fb4d", X"fa69", X"0483", X"fd5f", X"0320",
                                                        X"fc06", X"fa98", X"feb6", X"03d1", X"f1ab", X"01b7", X"fbf7", X"ff09", X"007b", X"0afb", X"06bf", X"ff0a", X"f861", X"0007",
                                                        X"035a", X"fec9", X"f653", X"f9a5", X"0098", X"fdbc", X"f916", X"ffa0", X"f86f", X"fe80", X"ff60", X"0aaa", X"0cdb", X"01d1",
                                                        X"ffad", X"0929", X"04bb", X"fc91", X"0059", X"faa6", X"f820", X"0461", X"f7db", X"0340", X"fab5", X"02ef", X"fbcb", X"0dfd",
                                                        X"0671", X"00d3", X"f889", X"0394", X"fdb4", X"fe4e", X"fa14", X"fd4c", X"fb46", X"041d", X"f844", X"000a", X"0070", X"0a6b",
                                                        X"fdd9", X"0973", X"0874", X"fa21", X"fc28", X"01df", X"f8c2", X"ffb8", X"01f2", X"fbcd", X"fb7f", X"0327", X"f238", X"0009",
                                                        X"0221", X"fc8c", X"fe52", X"083e", X"0813", X"f899", X"f98b", X"02f1", X"00eb", X"fe4f", X"f878", X"031e", X"f9f1", X"01bf",
                                                        X"f521", X"f621", X"024b", X"0a1b", X"fb83", X"0e10", X"05ae", X"fc0d", X"fe13", X"08a7", X"fae3", X"fc25", X"fc0b", X"f92b",
                                                        X"fd6f", X"0052", X"f859", X"ff9b", X"0977", X"0785", X"ff56", X"07dc", X"0aa4", X"fbe7", X"ff47", X"00bf", X"fc8c", X"fdc8",
                                                        X"fc7f", X"fbf8", X"fae2", X"0085", X"f537", X"ffcd", X"fafc", X"076a", X"fe7d", X"0652", X"0ad4", X"01ef", X"005d", X"fe13",
                                                        X"0070", X"fd18", X"f78c", X"fe1a", X"025c", X"0349", X"fc88", X"00cb", X"fb2a", X"01d2", X"ffcb", X"04eb", X"0b87", X"019b",
                                                        X"fa86", X"f5f8", X"08bb", X"fdb4", X"f5f7", X"fea4", X"00fc", X"0136", X"f927", X"010f", X"fd6c", X"098f", X"f938", X"091a",
                                                        X"0b46", X"0080", X"fda6", X"fd89", X"fe64", X"fe50", X"f954", X"f78c", X"fdf2", X"ff35", X"f667", X"fa41", X"f32f", X"0745",
                                                        X"0069", X"05f2", X"063b", X"0217", X"fda5", X"0574", X"0349", X"ffe2", X"f8c2", X"fd69", X"f833", X"0285", X"f682", X"fbd7",
                                                        X"00d0", X"08cd", X"03c9", X"028a", X"084b", X"01f0", X"f9fe", X"f6ae", X"fc3a", X"02a3", X"fccc", X"fa2d", X"07b1", X"00a0",
                                                        X"f24e", X"fd70", X"fe6a", X"0754", X"02eb", X"0767", X"0867", X"ff33", X"03be", X"f970", X"ff1f", X"fe4e", X"fd3e", X"018e",
                                                        X"044b", X"01af", X"f99e", X"f8e6", X"ff57", X"00d0", X"0142", X"09ca", X"08cc", X"fd68", X"faec", X"05f3", X"f989", X"0009",
                                                        X"fe50", X"f7d6", X"05ff", X"fb18", X"f276", X"fa04", X"0191", X"07e2", X"fda1", X"05f1", X"0812", X"05b2", X"f8ba", X"0054",
                                                        X"0023", X"fd8b", X"fe4c", X"fefb", X"0171", X"ffcc", X"011e", X"fb96", X"f736", X"0ad9", X"fdd4", X"0c66", X"0822", X"fc8f",
                                                        X"ff23", X"fba9", X"0420", X"f815", X"f638", X"f66a", X"0a61", X"ff53", X"fd86", X"fa9e", X"f5e0", X"068b", X"002b", X"0a4b",
                                                        X"007f", X"0408", X"051b", X"060a", X"0780", X"f9f2", X"f615", X"fcbb", X"fcda", X"039c", X"014f", X"024c", X"0057", X"08de",
                                                        X"fcf5", X"0981", X"0468", X"0718", X"ff2a", X"073e", X"030b", X"ffe5", X"fa07", X"f9b2", X"ff73", X"fe03", X"f3f6", X"07a4",
                                                        X"fb2f", X"0bb6", X"fd26", X"07e7", X"07c1", X"fe87", X"01b3", X"02be", X"fc27", X"0135", X"fb05", X"fe07", X"032c", X"034f",
                                                        X"f443", X"03e9", X"f576", X"0759", X"093e", X"0845", X"06ca", X"fce1", X"021a", X"00d7", X"fde0", X"ffa4", X"0126", X"fe7d",
                                                        X"0478", X"ff18", X"fc32", X"049e", X"0372", X"0522", X"0071", X"01d5", X"0b65", X"fb17", X"00ac", X"0013", X"036e", X"ff15",
                                                        X"fbd4", X"fcbb", X"0635", X"f535", X"fe47", X"f911", X"f8d0", X"fe90", X"05b0", X"0280", X"0b7c", X"fdde", X"03fb", X"fb4c",
                                                        X"033e", X"fde4", X"f7c2", X"fb6d", X"04e8", X"fdad", X"f41c", X"032c", X"fe35", X"0390", X"0055", X"056d", X"0b40", X"fd96",
                                                        X"fa8f", X"f4ed", X"0379", X"fcc9", X"fc0d", X"f88a", X"0992", X"f6db", X"f772", X"fb4b", X"0595", X"01fe", X"f85a", X"0b27",
                                                        X"0945", X"02cc", X"feb5", X"ff65", X"0179", X"fe9d", X"f230", X"fd58", X"0216", X"fe7d", X"f63c", X"fe86", X"0192", X"07b9",
                                                        X"ffd2", X"0869", X"0ae4", X"00eb", X"f946", X"ff0e", X"0125", X"fe4d", X"039a", X"f6f4", X"fc0f", X"ff91", X"fa93", X"014a",
                                                        X"fa74", X"039e", X"00ca", X"084a", X"0ca9", X"030a", X"fb3e", X"024a", X"03c2", X"faa9", X"f969", X"fe09", X"007a", X"066f",
                                                        X"f65b", X"fd8a", X"fa92", X"0493", X"fc9f", X"0af0", X"0b36", X"f8ae", X"fb20", X"fbae", X"04db", X"f97d", X"f9ec", X"fa53",
                                                        X"0026", X"03a2", X"fef3", X"fc7c", X"fe9c", X"06d1", X"fe1b", X"04cf", X"062b", X"f590", X"003f", X"f9ed", X"04d9", X"fa67",
                                                        X"fdf8", X"f6ad", X"f912", X"ff5f", X"f96c", X"fab9", X"0185", X"00c5", X"fde3", X"0236", X"04e3", X"f904", X"fbfa", X"ff30",
                                                        X"feeb", X"f843", X"009c", X"f7fd", X"f98c", X"f7ef", X"f5b1", X"fd05", X"0393", X"0ca7", X"f64a", X"0641", X"0a9c", X"f5e8",
                                                        X"fa44", X"054f", X"f9d2", X"002b", X"f3dd", X"f40a", X"00f4", X"fcc0", X"f186", X"fd2b", X"fe66", X"0982", X"01c2", X"0546",
                                                        X"0b5c", X"f710", X"f56f", X"0225", X"fd0d", X"fd7f", X"fafb", X"f828", X"fecc", X"04a3", X"f34f", X"fb82", X"02ed", X"0bbd",
                                                        X"00b1", X"0a0e", X"078e", X"02b9", X"efff", X"fd51", X"0411", X"fe15", X"f755", X"ff53", X"0221", X"0770", X"f94b", X"fd9c",
                                                        X"fb8c", X"0e4b", X"0117", X"0acf", X"0bb1", X"023a", X"fb43", X"0331", X"05e9", X"006b", X"0538", X"f9e4", X"fcb8", X"036d",
                                                        X"f963", X"fcfc", X"f9bc", X"0eac", X"f895", X"0718", X"0833", X"021d", X"f9d6", X"002a", X"04c8", X"fcff", X"0f07", X"fac9",
                                                        X"03b5", X"fcdd", X"fbf4", X"017b", X"fd0a", X"0a74", X"facd", X"0848", X"0903", X"0413", X"00c0", X"04a0", X"02ce", X"002c",
                                                        X"f7b0", X"fcc8", X"0644", X"fcab", X"f5d8", X"faec", X"fdb0", X"0813", X"ff65", X"0a4a", X"049d", X"fe89", X"fa13", X"fde2",
                                                        X"000f", X"fb09", X"fb07", X"ffd2", X"0055", X"fd36", X"f56e", X"fe91", X"fd87", X"fea6", X"f8e2", X"061c", X"0878", X"fd50",
                                                        X"fe22", X"fcc2", X"00b7", X"fe10", X"fe28", X"ff5c", X"ffb7", X"ff3a", X"f29c", X"02b4", X"00ca", X"fdf2", X"fb56", X"09ca",
                                                        X"0a93", X"ff4b", X"feb1", X"f9b1", X"fddc", X"feb7", X"f5db", X"f612", X"008d", X"fff2", X"f4e9", X"f6e7", X"ff70", X"0763",
                                                        X"044a", X"0954", X"06bf", X"fc11", X"fc1c", X"0bbe", X"fd71", X"fa14", X"fc37", X"fa65", X"f929", X"fe00", X"0128", X"0000",
                                                        X"0358", X"05aa", X"0036", X"0b96", X"0e02", X"fd65", X"01ad", X"038e", X"0665", X"f953", X"fb66", X"f2cd", X"00cb", X"fd56",
                                                        X"f82a", X"fcd4", X"ff35", X"05a0", X"f67f", X"08d7", X"0b48", X"00cd", X"fec7", X"ff2d", X"062c", X"fcf8", X"f6f6", X"f720",
                                                        X"04db", X"fc16", X"0223", X"ffb8", X"010e", X"0298", X"fb90", X"04a0", X"0323", X"fa2a", X"ff54", X"ff1f", X"ff31", X"fb02",
                                                        X"fd03", X"f607", X"0450", X"ff5f", X"fd68", X"08b0", X"fb27", X"03d8", X"0012", X"06c0", X"085a", X"fb5e", X"ff3e", X"f9a9",
                                                        X"015f", X"fb8f", X"ff14", X"fe3f", X"0c22", X"03b7", X"015f", X"0352", X"080b", X"fe8e", X"027e", X"0d5b", X"031d", X"051e",
                                                        X"fb49", X"ff95", X"fead", X"fb24", X"fd01", X"fc38", X"07f4", X"021a", X"f9c8", X"0256", X"ff44", X"f847", X"0397", X"0678",
                                                        X"09bb", X"f939", X"f541", X"0514", X"0180", X"fcfd", X"ffa6", X"f998", X"fb42", X"03d7", X"f73b", X"ffc7", X"0062", X"fcc7",
                                                        X"fca9", X"0781", X"0391", X"f7d9", X"ffae", X"05bb", X"007e", X"faf8", X"03ff", X"fe6a", X"086e", X"00b3", X"f820", X"ffee",
                                                        X"0529", X"0b60", X"01b2", X"0969", X"0afb", X"fc2b", X"fffd", X"fc59", X"09e1", X"fa0d", X"fd37", X"0053", X"0543", X"ffec",
                                                        X"fa60", X"0482", X"fcaa", X"050c", X"f848", X"0a88", X"096b", X"ffe5", X"fc7b", X"0855", X"fe85", X"fc68", X"f6e0", X"fee8",
                                                        X"fe5f", X"ff25", X"fae5", X"fe53", X"f9e3", X"ff22", X"fbe4", X"07a6", X"0567", X"011f", X"006e", X"0392", X"fce9", X"ffd5",
                                                        X"f4ec", X"f9c0", X"fe39", X"faa4", X"f776", X"01e3", X"f871", X"08db", X"028f", X"093a", X"0e7c", X"014e", X"024d", X"0868",
                                                        X"000c", X"ff50", X"f9de", X"fc98", X"096f", X"fe67", X"fa68", X"fdb7", X"0217", X"07f3", X"0151", X"07ce", X"08d2", X"fef5",
                                                        X"01f7", X"0873", X"03eb", X"0101", X"0078", X"fd80", X"0286", X"fc10", X"f964", X"0352", X"fe12", X"012f", X"fc1b", X"060d",
                                                        X"0342", X"0200", X"01f6", X"0226", X"01c2", X"fcaa", X"fccd", X"fb6e", X"0ade", X"fe5b", X"fa91", X"04e0", X"fe62", X"f93d",
                                                        X"058b", X"05a6", X"0719", X"01a9", X"0028", X"fd6a", X"054b", X"fba2", X"f43d", X"fc2b", X"01a1", X"0233", X"f483", X"04b5",
                                                        X"096f", X"068f", X"fdc7", X"08f4", X"0a05", X"00a5", X"fdec", X"ffd6", X"041e", X"01f0", X"f4f0", X"03ba", X"00b2", X"fe8b",
                                                        X"f465", X"fd4e", X"05bf", X"031b", X"01fd", X"08fa", X"0a97", X"fd5b", X"02d2", X"feea", X"0313", X"fd8a", X"01a5", X"fe77",
                                                        X"febd", X"ff2c", X"f06a", X"fae5", X"0126", X"022e", X"022b", X"0b34", X"0a43", X"faba", X"fe7e", X"0943", X"00c9", X"fe97",
                                                        X"ef49", X"fafb", X"03c3", X"f75a", X"f34c", X"ffbd", X"fd6b", X"044f", X"fe5c", X"0a99", X"04f5", X"fe63", X"ff7c", X"0892",
                                                        X"0232", X"fe1e", X"fbc9", X"0024", X"fc50", X"fe54", X"fa2c", X"0350", X"023d", X"fea2", X"fda8", X"0836", X"00f9", X"fd8b",
                                                        X"ffdb", X"fb14", X"00d6", X"fa4f", X"ffb3", X"fd46", X"fa0a", X"fde6", X"00ad", X"ff24", X"f75a", X"fc17", X"f939", X"035e",
                                                        X"060f", X"00c5", X"06c0", X"fd34", X"0030", X"faf2", X"ff8d", X"fa1a", X"fa30", X"fa6d", X"f980", X"ffc1", X"f831", X"f7c3",
                                                        X"ff4e", X"05f7", X"072f", X"00eb", X"00e7", X"0384", X"fc21", X"fd00", X"ffc0", X"fcb5", X"06cb", X"fe0f", X"fa5b", X"0006",
                                                        X"fe59", X"0645", X"ffcc", X"0298", X"08c7", X"f9ca", X"f55f", X"fbd9", X"f9ae", X"fe10", X"0109", X"fbaf", X"fa82", X"0378",
                                                        X"f528", X"0334", X"046b", X"06ed", X"07e3", X"07c2", X"0dcc", X"fa1d", X"fd0d", X"f8e6", X"0542", X"0148", X"00ec", X"fbdc",
                                                        X"015d", X"0a5a", X"f89c", X"fd56", X"fef0", X"0882", X"fe72", X"0b29", X"0bf6", X"0005", X"fcf1", X"06af", X"0684", X"fc91",
                                                        X"060a", X"ffeb", X"013b", X"022b", X"f937", X"fe2d", X"056b", X"02ee", X"fe80", X"0d85", X"0acc", X"fc73", X"009c", X"0475",
                                                        X"03bb", X"fda8", X"0902", X"fb10", X"f8be", X"016e", X"fbde", X"0206", X"fb69", X"0228", X"fc24", X"0ad8", X"0378", X"0256",
                                                        X"0247", X"0d83", X"0055", X"fca1", X"0096", X"0034", X"f517", X"fcfe", X"00eb", X"00bb", X"f63d", X"00ce", X"f61e", X"09b8",
                                                        X"0918", X"03de", X"036c", X"fad7", X"ff61", X"fc69", X"f6cb", X"fb30", X"fddf", X"fc8e", X"f472", X"05ee", X"fb62", X"02d8",
                                                        X"fa87", X"076f", X"084a", X"fb64", X"fb10", X"056d", X"fc81", X"ff9c", X"03de", X"fc46", X"04bc", X"ffb3", X"f6bf", X"04db",
                                                        X"f9e9", X"072a", X"0542", X"098a", X"09d3", X"fbc6", X"fe44", X"01ad", X"fe19", X"fffc", X"09f4", X"fce5", X"03b4", X"011e",
                                                        X"f8e3", X"fcb6", X"ff00", X"fce0", X"087b", X"087d", X"0c22", X"03de", X"ff0d", X"0aec", X"fd43", X"013f", X"f753", X"fbbe",
                                                        X"fb5d", X"00c6", X"f56d", X"f934", X"ffa3", X"071c", X"045c", X"00bb", X"0735", X"fef0", X"fcd1", X"f6ce", X"01ac", X"fdd1",
                                                        X"f622", X"f838", X"0732", X"ff2f", X"f43c", X"fa98", X"feee", X"03bd", X"fdc2", X"051e", X"09b8", X"fe4b", X"050a", X"ffd5",
                                                        X"005b", X"fe17", X"0c3d", X"f994", X"f98f", X"fd8b", X"f63e", X"fdd3", X"ff51", X"00d9", X"f97f", X"06db", X"060d", X"ffca",
                                                        X"fb42", X"0479", X"002b", X"fc3b", X"02bf", X"0070", X"0078", X"ffcc", X"fc00", X"0a99", X"f4d4", X"00a3", X"fca2", X"0466",
                                                        X"07ee", X"fd96", X"febe", X"fb79", X"fcbb", X"fe8c", X"f58f", X"fd9c", X"0776", X"ffd9", X"00b6", X"f904", X"f3e4", X"0180",
                                                        X"ff7e", X"080a", X"039a", X"00da", X"fae6", X"04a4", X"ff13", X"fff4", X"f2bd", X"fcea", X"fd77", X"02e3", X"f3e7", X"0013",
                                                        X"045a", X"02d0", X"fec8", X"0b14", X"048b", X"f9e3", X"ffa8", X"fedb", X"ffd1", X"fef9", X"fdcc", X"fa0d", X"fd24", X"fdf8",
                                                        X"f3b8", X"ffcd", X"03f5", X"0442", X"fa69", X"067d", X"0bac", X"00ba", X"0060", X"031a", X"02b3", X"0126", X"fa8a", X"fc23",
                                                        X"016e", X"0121", X"fa5a", X"fc1d", X"fa39", X"0125", X"0116", X"05bd", X"06fa", X"fc3b", X"0411", X"fd93", X"0319", X"ff29",
                                                        X"f9dd", X"fcb1", X"ffc4", X"038c", X"f722", X"f9d7", X"fded", X"07b9", X"041d", X"0696", X"07c2", X"003e", X"0101", X"008c",
                                                        X"010a", X"fec7", X"0460", X"fd62", X"077e", X"0054", X"f56d", X"008b", X"00f8", X"0384", X"ff55", X"077d", X"05f7", X"fb2d",
                                                        X"fed1", X"04c4", X"052d", X"ff74", X"0330", X"fac2", X"fb29", X"fd4d", X"f281", X"fe42", X"ffd3", X"065f", X"f644", X"0961",
                                                        X"0622", X"ff63", X"f546", X"046e", X"fe46", X"ff9b", X"fa64", X"f993", X"f8a7", X"0452", X"f94f", X"03b3", X"036f", X"0882",
                                                        X"fcff", X"0a31", X"096f", X"fcc7", X"f97b", X"0647", X"01c4", X"febb", X"0031", X"fa7d", X"fa72", X"030d", X"fa5f", X"f96e",
                                                        X"f9f4", X"04c9", X"f99a", X"0bca", X"03d6", X"fce3", X"0437", X"0738", X"037a", X"ff8e", X"fdca", X"f71e", X"024a", X"0022",
                                                        X"f5d7", X"02b9", X"fdaf", X"09db", X"007f", X"07f2", X"05d6", X"f60b", X"ff83", X"fcf0", X"031e", X"fb7f", X"f004", X"f941",
                                                        X"017a", X"fed8", X"fb98", X"05ed", X"01bf", X"1597", X"0019", X"0d74", X"028e", X"f636", X"0194", X"0790", X"ff36", X"fcf2",
                                                        X"f19c", X"fb27", X"04ff", X"ffea", X"f946", X"f4c6", X"0313", X"117a", X"0031", X"0696", X"05b5", X"ff6c", X"fc57", X"058f",
                                                        X"0120", X"f944", X"f653", X"f96e", X"0936", X"fe0a", X"0114", X"f954", X"0040", X"0b2c", X"012b", X"0bea", X"04ab", X"fdec",
                                                        X"02cd", X"0167", X"00ff", X"fb5c", X"f58d", X"f959", X"070d", X"fa86", X"fd7a", X"0159", X"0115", X"075e", X"fe07", X"09dd",
                                                        X"060a", X"f941", X"00eb", X"fd6e", X"0165", X"fa44", X"f303", X"f91a", X"fade", X"fce2", X"fc76", X"fb1e", X"fe75", X"0145",
                                                        X"00d3", X"07c9", X"0c41", X"00ca", X"fe07", X"f9f5", X"fb9f", X"fcf0", X"f13e", X"fd8c", X"f95a", X"015f", X"ff55", X"fdc2",
                                                        X"fe9a", X"fcec", X"0036", X"0681", X"04f2", X"058a", X"fd5d", X"ff59", X"03fe", X"fe3a", X"066c", X"faeb", X"fa91", X"01f0",
                                                        X"f515", X"ff9e", X"fb4a", X"0396", X"fe4b", X"06f9", X"0384", X"fba7", X"fdc5", X"0707", X"03b9", X"fc3d", X"0418", X"fa9a",
                                                        X"04b1", X"ffe9", X"f836", X"ff6c", X"fe5a", X"ffdb", X"fb84", X"05b7", X"0784", X"feac", X"fcb4", X"039b", X"00fa", X"fe3c",
                                                        X"fab2", X"f857", X"f6fc", X"fe3f", X"f442", X"03fe", X"00ea", X"fcc1", X"ffac", X"0826", X"079d", X"fd42", X"fb28", X"05fa",
                                                        X"fec2", X"fefa", X"fb1a", X"fb67", X"064e", X"fd48", X"f62d", X"00b3", X"f732", X"f8a8", X"fe1b", X"04cc", X"076d", X"fcd9",
                                                        X"fcb4", X"0188", X"026a", X"fb94", X"fc2e", X"f6d7", X"0161", X"fc50", X"f4a5", X"fd6b", X"036d", X"0441", X"02ad", X"0532",
                                                        X"0a4f", X"fd95", X"fde5", X"f652", X"0621", X"fc4a", X"f704", X"fc0f", X"0ab8", X"020b", X"f551", X"fe21", X"0201", X"0628",
                                                        X"fbfa", X"05ac", X"0831", X"fefc", X"0045", X"0153", X"0145", X"fe35", X"0453", X"f81a", X"042c", X"011f", X"f780", X"fd80",
                                                        X"fc0e", X"fbd8", X"f861", X"0a3e", X"0763", X"fde6", X"0458", X"0ae5", X"029d", X"fa34", X"fbb9", X"f428", X"0309", X"fdfb",
                                                        X"fef3", X"fe24", X"f908", X"004b", X"00de", X"088f", X"0644", X"0070", X"01d0", X"017c", X"fd65", X"fa25", X"f2f5", X"f794",
                                                        X"f5af", X"027f", X"fc48", X"fe9e", X"fc82", X"fdd0", X"fb84", X"0800", X"07ce", X"ffef", X"fe42", X"001a", X"06a9", X"ffa9",
                                                        X"f765", X"fcde", X"0107", X"faf7", X"facb", X"f8b6", X"ffbd", X"0423", X"fa70", X"0373", X"04c3", X"fd9f", X"01e3", X"0081",
                                                        X"08d5", X"0004", X"f84c", X"fc35", X"04b8", X"fc46", X"ff7f", X"004c", X"fa94", X"0517", X"05c1", X"0887", X"073a", X"ff78",
                                                        X"01b4", X"0523", X"fe48", X"0131", X"f9f2", X"ff18", X"0def", X"039a", X"fd19", X"fe52", X"00b3", X"03c3", X"0086", X"0993",
                                                        X"05bc", X"ffc5", X"fd09", X"0109", X"fe4c", X"fedd", X"f65a", X"0059", X"08cf", X"fe1a", X"f0ab", X"09b1", X"02f0", X"faa5",
                                                        X"0329", X"0c5a", X"0dd7", X"f556", X"05c5", X"02c7", X"0aab", X"fe86", X"eeb6", X"f391", X"0064", X"f9a3", X"e99c", X"00ec",
                                                        X"ffa0", X"08b4", X"fc65", X"1113");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"1113";
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
