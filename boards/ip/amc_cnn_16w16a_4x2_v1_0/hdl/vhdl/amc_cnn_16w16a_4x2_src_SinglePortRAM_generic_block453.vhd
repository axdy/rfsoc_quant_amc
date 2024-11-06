-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block453.vhd
-- Created: 2024-11-04 16:44:21
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block453
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage96/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block453 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block453;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block453 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0ab1", X"0ee3", X"fb4d", X"f33b", X"031d", X"ff09",
                                                        X"088f", X"01e1", X"f26f", X"1015", X"0df5", X"feac", X"03b7", X"1485", X"0066", X"0dac", X"06d8", X"0a8b", X"f6d2", X"00da",
                                                        X"fd6a", X"ff14", X"07af", X"05f0", X"0273", X"0d3d", X"05a5", X"003d", X"ff55", X"1006", X"0486", X"058a", X"05ca", X"06f8",
                                                        X"f7c2", X"f61a", X"fa31", X"ff81", X"f9c5", X"0209", X"f7ae", X"02b3", X"0298", X"f9f6", X"fdf0", X"fad3", X"04ff", X"030d",
                                                        X"045e", X"0043", X"f504", X"ff59", X"fda3", X"010a", X"f936", X"0723", X"fd2f", X"04c6", X"014b", X"fabd", X"0955", X"ffaa",
                                                        X"050d", X"008f", X"0377", X"0207", X"f40e", X"f949", X"015c", X"fd0d", X"fd91", X"06b6", X"f4aa", X"05c4", X"00c5", X"0026",
                                                        X"fd69", X"fe69", X"0294", X"fd78", X"fde4", X"07f5", X"f97e", X"fab4", X"007d", X"fc24", X"fb9e", X"04d1", X"f4dd", X"0a37",
                                                        X"067f", X"faba", X"f84a", X"0928", X"fe2a", X"0000", X"0140", X"0219", X"efd7", X"ffac", X"ffa5", X"fd9f", X"fff1", X"078f",
                                                        X"f1f3", X"085a", X"085a", X"fb46", X"06bb", X"08a2", X"00d9", X"0021", X"fed8", X"04ec", X"f469", X"fb19", X"06df", X"ff10",
                                                        X"ff1e", X"06c9", X"f9f5", X"0980", X"074d", X"0115", X"0014", X"098a", X"fe6a", X"0210", X"07bc", X"0754", X"f6c7", X"fb3a",
                                                        X"018e", X"feca", X"ffb7", X"056a", X"f504", X"06f0", X"03f7", X"f35e", X"008e", X"003e", X"03b9", X"04bc", X"03cd", X"09b4",
                                                        X"fbc7", X"feda", X"ff28", X"00a1", X"05d6", X"07e2", X"f627", X"0a46", X"0422", X"02ce", X"fd7a", X"f217", X"01eb", X"fe78",
                                                        X"01dc", X"0718", X"fafd", X"fe2f", X"fcd1", X"0082", X"0813", X"02b9", X"fcce", X"0b31", X"ffe0", X"0377", X"fa96", X"02bf",
                                                        X"0399", X"019d", X"02ed", X"044a", X"f1e2", X"f5fb", X"01ce", X"017c", X"fbe1", X"0783", X"fa88", X"0c06", X"083a", X"f91c",
                                                        X"fecf", X"0909", X"05ef", X"04e6", X"0339", X"00fc", X"ef2c", X"fadf", X"fa5c", X"02ef", X"fae3", X"0393", X"ff58", X"0b44",
                                                        X"063b", X"fcb6", X"054b", X"09ed", X"010d", X"05ba", X"ffe5", X"0521", X"f453", X"f669", X"ff2e", X"000f", X"fc3f", X"008e",
                                                        X"f712", X"04bf", X"031d", X"fec1", X"00b0", X"0728", X"01c5", X"059b", X"0324", X"06a2", X"f4d0", X"fe60", X"fa2e", X"feec",
                                                        X"f871", X"0083", X"f9bc", X"0f21", X"090f", X"fd8c", X"fe86", X"04ef", X"0925", X"07cf", X"013a", X"0852", X"f050", X"fb26",
                                                        X"ff23", X"0296", X"ff6c", X"046b", X"f6c7", X"109a", X"0aa9", X"fd93", X"fa87", X"0e41", X"07b7", X"07a3", X"0398", X"05ac",
                                                        X"f204", X"fdd9", X"fcb2", X"0049", X"fb79", X"048a", X"f803", X"1446", X"08ba", X"f6fa", X"fceb", X"0c8f", X"0698", X"068e",
                                                        X"057b", X"0632", X"f359", X"0aa1", X"0047", X"fbf5", X"05f6", X"0389", X"fdc7", X"0f7e", X"0511", X"fe3e", X"0405", X"035f",
                                                        X"0876", X"02fb", X"0351", X"0ac0", X"f13a", X"fc72", X"fd06", X"006c", X"00e7", X"0097", X"f9c5", X"0ce3", X"0836", X"fe47",
                                                        X"028f", X"01c7", X"047d", X"fdf6", X"025e", X"06e9", X"eef3", X"f509", X"f787", X"ffee", X"f9ea", X"0752", X"faa5", X"0a5d",
                                                        X"09ad", X"021d", X"fb4e", X"f5a9", X"027d", X"01ff", X"04f4", X"09fc", X"f175", X"fafa", X"f953", X"ff08", X"0142", X"0693",
                                                        X"fccd", X"0838", X"0909", X"fc29", X"02b2", X"00c0", X"07dc", X"05ff", X"ffb8", X"0b5d", X"f2e8", X"fbf5", X"fde7", X"ffd2",
                                                        X"0174", X"0195", X"f9cb", X"0d05", X"0631", X"00fe", X"0bb2", X"fcea", X"018d", X"02ae", X"00b7", X"05d9", X"f26f", X"034b",
                                                        X"fc75", X"0070", X"06d9", X"fff6", X"f487", X"111d", X"ff66", X"ffa1", X"0357", X"f77b", X"00bf", X"01c8", X"00b5", X"06e1",
                                                        X"fca4", X"0323", X"f950", X"00b6", X"0c4b", X"0892", X"f723", X"0d79", X"05d4", X"ffe2", X"fbb8", X"035a", X"071b", X"04da",
                                                        X"011e", X"0744", X"eee3", X"f88b", X"fb4f", X"ff14", X"091f", X"06a1", X"fb1b", X"0b3f", X"0312", X"0079", X"021b", X"05be",
                                                        X"08f2", X"019f", X"fed6", X"07ee", X"f227", X"f6cf", X"fce8", X"0041", X"031b", X"075e", X"fae3", X"09d6", X"055a", X"fca1",
                                                        X"0497", X"0737", X"0331", X"ffab", X"fef4", X"08b3", X"ea5a", X"ff8a", X"f6f8", X"0149", X"02c2", X"077a", X"060e", X"0d38",
                                                        X"0b44", X"fea5", X"0a0c", X"03c8", X"083e", X"01ca", X"fb07", X"0ab9", X"f1f7", X"f987", X"f870", X"002e", X"f48a", X"064f",
                                                        X"fb2c", X"0bf5", X"0e87", X"fc5d", X"069d", X"0ab8", X"02cf", X"ffd8", X"fcec", X"0695", X"f3b1", X"f9db", X"fbd8", X"fe43",
                                                        X"0066", X"05d1", X"fdca", X"0d75", X"0774", X"fb91", X"0050", X"06d2", X"055a", X"059c", X"fed1", X"040e", X"f699", X"013f",
                                                        X"fa8f", X"febb", X"ff4d", X"014b", X"f95b", X"0482", X"08a5", X"fb53", X"fa53", X"0702", X"fc75", X"0778", X"060c", X"08f5",
                                                        X"f467", X"faa8", X"ff15", X"00de", X"0031", X"0469", X"f7ab", X"0c6d", X"0602", X"fb60", X"fd5e", X"094d", X"0070", X"0919",
                                                        X"0823", X"fee9", X"f432", X"f5de", X"0163", X"0268", X"ff64", X"0018", X"f173", X"0d54", X"fceb", X"053f", X"fa0c", X"09c0",
                                                        X"fe4d", X"0466", X"044e", X"001b", X"f249", X"fcd2", X"ffe3", X"0103", X"07a3", X"083d", X"fd90", X"0ab8", X"04ff", X"0450",
                                                        X"060f", X"0b8c", X"0588", X"02de", X"0426", X"0166", X"f9de", X"02e3", X"003e", X"fec3", X"f731", X"0542", X"f910", X"071a",
                                                        X"0a83", X"0208", X"0208", X"fe35", X"0330", X"fff9", X"0201", X"080c", X"f1cf", X"fc79", X"fd82", X"ff51", X"0680", X"0ab2",
                                                        X"fd0a", X"06a0", X"038f", X"ff2b", X"0d82", X"09d1", X"0525", X"ffa9", X"fe6e", X"015b", X"f49d", X"f7e1", X"00bc", X"fe3e",
                                                        X"01bc", X"034c", X"ffb0", X"0763", X"0201", X"fc5e", X"02d5", X"fc97", X"0321", X"0042", X"020e", X"09c4", X"ecc2", X"055f",
                                                        X"f9c5", X"01a1", X"fc32", X"fff0", X"f2d6", X"0e84", X"01bc", X"fd05", X"00d4", X"fc14", X"0030", X"0438", X"fb7e", X"0346",
                                                        X"ead4", X"fc82", X"f726", X"0132", X"fbc5", X"0913", X"f84e", X"09b6", X"fea8", X"fccf", X"0480", X"f118", X"02b8", X"0096",
                                                        X"0514", X"0637", X"f5e0", X"ff29", X"ff55", X"fd14", X"fd83", X"081d", X"f593", X"0d16", X"0667", X"f9f8", X"03f2", X"fb98",
                                                        X"fe62", X"020f", X"0119", X"0367", X"f21d", X"fbf9", X"f6e7", X"fe20", X"f9a8", X"ff1e", X"f4ed", X"062e", X"0387", X"0520",
                                                        X"f794", X"febb", X"ffbc", X"004c", X"ffba", X"fe6d", X"f977", X"fc27", X"fc7f", X"0251", X"fd97", X"06ea", X"018f", X"08aa",
                                                        X"027b", X"03e5", X"0158", X"07eb", X"fe59", X"03b2", X"fb49", X"0b31", X"f235", X"fda0", X"f96e", X"ffbf", X"ee15", X"0608",
                                                        X"f326", X"07e1", X"0578", X"0048", X"014a", X"fc47", X"068a", X"06cc", X"fee0", X"0c2c", X"ee4a", X"04d2", X"f95e", X"fbe5",
                                                        X"fc41", X"ff33", X"023d", X"0ab3", X"0892", X"fb9e", X"0809", X"fe60", X"0591", X"03ef", X"0367", X"02ec", X"e8f5", X"0172",
                                                        X"f97f", X"fca7", X"fc17", X"02ee", X"fb8e", X"1027", X"012a", X"fb6a", X"008b", X"0ddf", X"031a", X"077b", X"fee7", X"08ce",
                                                        X"f27a", X"0365", X"faa1", X"0074", X"0e00", X"059e", X"f6c3", X"0719", X"0b30", X"ffa9", X"00be", X"fe08", X"050c", X"016e",
                                                        X"03e6", X"0509", X"f57a", X"00e0", X"0264", X"fb28", X"011e", X"03cf", X"faf1", X"09ed", X"074d", X"fbd5", X"f6c5", X"fc07",
                                                        X"0814", X"0090", X"03d6", X"0679", X"ead2", X"fd01", X"fb9f", X"ff2b", X"f60d", X"013a", X"f182", X"0c84", X"0a32", X"fc78",
                                                        X"fbea", X"faa2", X"f901", X"fe7b", X"0537", X"0c76", X"f578", X"f584", X"fa25", X"00c7", X"fba3", X"0633", X"f520", X"0b31",
                                                        X"00de", X"00d3", X"00c5", X"0adf", X"00e7", X"001d", X"013b", X"084a", X"ec5f", X"f251", X"fecb", X"fd18", X"f64d", X"0ad0",
                                                        X"f810", X"0df9", X"0866", X"fe02", X"0500", X"01dc", X"0364", X"05a4", X"0572", X"0abd", X"f86c", X"f3f6", X"fd7b", X"00e1",
                                                        X"fcf1", X"0c8e", X"fc5b", X"0d39", X"08e7", X"fe4a", X"04b7", X"ff29", X"05ff", X"0739", X"fc54", X"0892", X"f477", X"fc04",
                                                        X"fa00", X"fee1", X"0601", X"0799", X"f215", X"11da", X"0b61", X"0118", X"09a6", X"0130", X"035d", X"05f8", X"fc72", X"091f",
                                                        X"f4f9", X"fd96", X"fbd0", X"fe69", X"fb19", X"04e3", X"f0db", X"097f", X"086f", X"0183", X"ff1a", X"047d", X"0400", X"042e",
                                                        X"00b5", X"0349", X"f77a", X"f801", X"f985", X"fee4", X"0a4a", X"05f1", X"fc5e", X"0d2b", X"05fd", X"fe25", X"fd0a", X"f494",
                                                        X"0592", X"07d7", X"0058", X"0962", X"f366", X"fda0", X"f950", X"0047", X"0082", X"0847", X"f66c", X"0719", X"08ca", X"001d",
                                                        X"fe87", X"f8f0", X"fe7a", X"0474", X"fb30", X"053e", X"f30e", X"0012", X"f8c1", X"ff9a", X"f94c", X"05d2", X"fbcd", X"089a",
                                                        X"08a0", X"0745", X"0260", X"00dd", X"0b9b", X"fc6a", X"03ba", X"ff11", X"f5fe", X"f7fe", X"00aa", X"010d", X"f401", X"ffbd",
                                                        X"f969", X"09d9", X"fe88", X"0317", X"055e", X"08ca", X"0645", X"0508", X"04e9", X"fe29", X"f87c", X"fd74", X"fb66", X"003a",
                                                        X"030d", X"0012", X"fd98", X"0a35", X"073a", X"054b", X"0054", X"f832", X"0439", X"0713", X"026b", X"fef2", X"fbdf", X"f6d1",
                                                        X"01af", X"fef0", X"029b", X"080f", X"f820", X"0d4f", X"0392", X"fa22", X"faae", X"0687", X"ffb7", X"093f", X"ff2c", X"078b",
                                                        X"f848", X"fa0d", X"fc55", X"017e", X"fcf7", X"028e", X"0330", X"06ed", X"0360", X"fbcb", X"f4da", X"0684", X"0418", X"0358",
                                                        X"00b7", X"08dc", X"fa90", X"058f", X"fe08", X"ffb4", X"04a1", X"05c0", X"f33a", X"0acc", X"09b2", X"f9ce", X"f9b9", X"08a1",
                                                        X"0062", X"0490", X"03c2", X"023d", X"f5d6", X"f937", X"fb18", X"063c", X"0816", X"fe5f", X"f6fc", X"07f9", X"0014", X"0692",
                                                        X"0151", X"0276", X"06ca", X"02ad", X"0724", X"042d", X"f373", X"0227", X"ff51", X"007e", X"0357", X"046e", X"f64b", X"0626",
                                                        X"ff6b", X"f7f8", X"060f", X"07c3", X"0269", X"0594", X"0a1d", X"0495", X"f122", X"fca5", X"01d3", X"fef5", X"f402", X"038d",
                                                        X"f0f1", X"0ecf", X"fdb4", X"ffec", X"00ac", X"fe82", X"007e", X"05dd", X"071f", X"021e", X"f71e", X"f6f4", X"fbdf", X"00b2",
                                                        X"0eac", X"0112", X"f174", X"0d02", X"04b4", X"fea5", X"00b7", X"0d31", X"033f", X"04b6", X"ffa7", X"01cc", X"f155", X"f8ca",
                                                        X"fe20", X"0134", X"03fd", X"019b", X"f79e", X"0c45", X"033a", X"fbab", X"0ae3", X"032a", X"09d4", X"074c", X"0329", X"ffb0",
                                                        X"f58a", X"f68a", X"fca3", X"ffc7", X"00b8", X"005c", X"fc66", X"0bf1", X"076d", X"fa1e", X"0b7e", X"0652", X"076a", X"055b",
                                                        X"0261", X"0061", X"f5dd", X"fbbc", X"fe1d", X"024c", X"fec8", X"01a6", X"02d7", X"0934", X"07d9", X"0154", X"0284", X"037e",
                                                        X"020d", X"0263", X"fe8a", X"0c73", X"ee9d", X"f771", X"fa38", X"ff38", X"05b4", X"047d", X"fa97", X"0ddf", X"0a00", X"03f2",
                                                        X"00c5", X"fc3c", X"01c4", X"0326", X"fdfb", X"0d3b", X"f376", X"fcd1", X"fdc1", X"014a", X"05b3", X"0594", X"f795", X"0bf1",
                                                        X"0b03", X"057b", X"ff41", X"ff96", X"018c", X"02fa", X"004d", X"057e", X"f52a", X"fef3", X"fc08", X"ff88", X"0978", X"045a",
                                                        X"fb8e", X"05a9", X"0840", X"0193", X"ffa6", X"06a5", X"03cb", X"0612", X"fef3", X"026a", X"f619", X"f621", X"f9e4", X"01f2",
                                                        X"fad5", X"0a5d", X"fd53", X"0347", X"027d", X"ffb8", X"0516", X"ff4c", X"ff1f", X"0403", X"02ed", X"048b", X"efc1", X"0146",
                                                        X"faf9", X"fd7c", X"f828", X"0744", X"fc1a", X"0856", X"068c", X"028c", X"0627", X"037c", X"fce6", X"0439", X"0205", X"05d5",
                                                        X"eb65", X"f877", X"f930", X"0421", X"f865", X"0664", X"fc98", X"0fb9", X"0807", X"0825", X"0169", X"006d", X"0a82", X"085f",
                                                        X"09e9", X"01f4", X"f3a9", X"fc5b", X"fc96", X"0042", X"fe8c", X"0644", X"fac0", X"07f8", X"04aa", X"fcf5", X"fb5f", X"057f",
                                                        X"03ab", X"0650", X"0598", X"0da8", X"f85c", X"0923", X"fa38", X"fe53", X"fe58", X"093e", X"fc5a", X"072e", X"08cd", X"016a",
                                                        X"fd55", X"f7b5", X"044a", X"056b", X"07b9", X"08d4", X"f0a5", X"01f1", X"fd21", X"fd5c", X"f29c", X"0a82", X"f8a2", X"063a",
                                                        X"091b", X"fe96", X"09dc", X"0b1e", X"fcf3", X"03f9", X"00d8", X"00b6", X"e94d", X"f6da", X"fe8f", X"ff6a", X"028b", X"04cd",
                                                        X"fbee", X"0b86", X"0b0f", X"f9ba", X"00e7", X"0705", X"0348", X"05e5", X"04f9", X"0acc", X"f940", X"f814", X"fadc", X"02a8",
                                                        X"0a0f", X"03a2", X"fc0b", X"1680", X"0787", X"0354", X"fa32", X"0400", X"05a5", X"0638", X"061b", X"061d", X"f928", X"fc55",
                                                        X"fa00", X"0222", X"00fb", X"048e", X"f86a", X"0709", X"0246", X"fe53", X"fb63", X"f85f", X"fdb1", X"0503", X"0234", X"0520",
                                                        X"f390", X"fe98", X"fe3b", X"0009", X"f5f0", X"0591", X"f3f6", X"044d", X"0dfd", X"ff4f", X"042a", X"fe5d", X"018e", X"051f",
                                                        X"0317", X"0645", X"eca9", X"0021", X"fedf", X"01c6", X"f346", X"081b", X"f543", X"09da", X"0ba3", X"0424", X"f7ba", X"057f",
                                                        X"ff58", X"07b2", X"0720", X"0b2a", X"f531", X"fd7e", X"fe4f", X"0194", X"0717", X"0b98", X"f8bd", X"0f81", X"0810", X"fed5",
                                                        X"fbfe", X"0500", X"01a9", X"00dc", X"01a1", X"0992", X"f48b", X"0071", X"01b0", X"fef9", X"fec0", X"088a", X"f5aa", X"0f9e",
                                                        X"0990", X"fecf", X"fe32", X"08c4", X"fea6", X"fee0", X"053f", X"08a4", X"eb95", X"fea8", X"f97b", X"0202", X"0d62", X"040c",
                                                        X"0044", X"0df8", X"04cb", X"0498", X"fd9c", X"1396", X"05a4", X"ffa3", X"040c", X"0634", X"f683", X"fc24", X"fec4", X"008d",
                                                        X"f8c0", X"03fa", X"0132", X"03d1", X"07aa", X"ffd1", X"02d5", X"07ed", X"feb1", X"01eb", X"0570", X"0220", X"fc84", X"f77a",
                                                        X"f867", X"02fd", X"ec81", X"07ed", X"f9b7", X"0381", X"0528", X"f98d", X"fc8a", X"fd70", X"00ff", X"0422", X"00a3", X"022a",
                                                        X"f285", X"000c", X"f524", X"0167", X"f576", X"023f", X"f908", X"0610", X"08d4", X"fc53", X"0232", X"0321", X"ff0d", X"01b1",
                                                        X"fccb", X"0a6e", X"e952", X"fa13", X"f960", X"fc90", X"f90d", X"0443", X"ff3e", X"04a5", X"07ef", X"0497", X"fe69", X"047a",
                                                        X"0769", X"0795", X"fbbe", X"0230", X"f029", X"fc6f", X"fc47", X"fd9c", X"f3ca", X"0717", X"f8e0", X"0bd8", X"07e9", X"052b",
                                                        X"fbd4", X"0f5f", X"02e8", X"041f", X"0424", X"0b47", X"e90f", X"f60e", X"fb20", X"fd6d", X"f577", X"0703", X"ff1a", X"10a3",
                                                        X"07c1", X"0a91", X"0196", X"0611", X"026a", X"06d9", X"0539", X"0d45", X"f1c9", X"fcb7", X"00fb", X"ff94", X"fe7f", X"0702",
                                                        X"fbad", X"0a72", X"0839", X"fbb8", X"fd61", X"ff76", X"0209", X"05e3", X"fa78", X"0bc9", X"f74f", X"016f", X"f8b9", X"fd60",
                                                        X"f844", X"07cf", X"f448", X"07ea", X"043b", X"f9d3", X"fa9a", X"0af0", X"030b", X"06ee", X"fed1", X"0671", X"fca0", X"fa7d",
                                                        X"fb64", X"fbce", X"0220", X"01ec", X"f568", X"0109", X"0613", X"f856", X"01f4", X"0173", X"fd98", X"0000", X"012f", X"05fa",
                                                        X"f653", X"038a", X"fdd6", X"fd66", X"02f5", X"fe5f", X"fbd9", X"077e", X"0b81", X"fda8", X"f796", X"0090", X"031f", X"02c2",
                                                        X"0679", X"05e9", X"edbb", X"ee78", X"00cb", X"fc02", X"00a0", X"05de", X"0117", X"0c94", X"093b", X"0352", X"fdc7", X"0b04",
                                                        X"fbdc", X"0328", X"fde1", X"fd5d", X"f0a9", X"f6fb", X"045e", X"fabe", X"f971", X"022c", X"0012", X"0a56", X"08e6", X"fae9",
                                                        X"fce5", X"165d", X"0296", X"033b", X"ffdc", X"04fc", X"eff0", X"f904", X"0066", X"ff99", X"f216", X"022d", X"f3fd", X"058f",
                                                        X"04db", X"fd29", X"fc8e", X"0f54", X"fde4", X"ffc2", X"ffcf", X"0b69", X"f644", X"f87b", X"fafe", X"022a", X"00fa", X"09e1",
                                                        X"018a", X"0510", X"fe93", X"fb87", X"00ab", X"fc1b", X"0573", X"0005", X"ffa1", X"0676", X"f135", X"fa5a", X"f74a", X"fe5c",
                                                        X"fcf7", X"0822", X"0253", X"09f7", X"0b4e", X"04e5", X"f80e", X"f741", X"0b5f", X"00d2", X"fd0b", X"04ec", X"f636", X"f26f",
                                                        X"faa9", X"fbb1", X"fa29", X"0a67", X"fff0", X"0969", X"083a", X"fd31", X"05bf", X"065d", X"0651", X"ff6b", X"fe8d", X"0c2e",
                                                        X"edd2", X"001a", X"0067", X"fcea", X"f15c", X"0b2c", X"f7c1", X"0b74", X"09c7", X"fea1", X"0650", X"02d2", X"fc4e", X"0440",
                                                        X"fd37", X"042f", X"ef4e", X"0352", X"fb35", X"ffd9", X"06bc", X"09c8", X"f18b", X"0a1f", X"06ee", X"fee9", X"038f", X"0c60",
                                                        X"f8cb", X"fc4f", X"0002", X"07ce", X"f13d", X"fff3", X"fdda", X"fbaf", X"f69c", X"04cb", X"f470", X"09ff", X"0663", X"fc3e",
                                                        X"fc70", X"116b", X"ff88", X"02e6", X"0037", X"0aa7", X"f580", X"fb44", X"fe14", X"ffc4", X"044f", X"0885", X"fa69", X"089c",
                                                        X"067b", X"012b", X"0187", X"f84c", X"05cd", X"0469", X"047c", X"0a94", X"f0c6", X"f5c9", X"0478", X"03d6", X"f519", X"0874",
                                                        X"f2e0", X"0dfd", X"09e6", X"fd06", X"fce8", X"0640", X"02cf", X"0287", X"0373", X"0a7f", X"eb4d", X"f3f4", X"0026", X"047a",
                                                        X"0335", X"061b", X"f77e", X"0cd2", X"07ff", X"fc08", X"0790", X"03e6", X"0447", X"0956", X"fdbe", X"0c29", X"fb3f", X"00d2",
                                                        X"f68b", X"03c4", X"0545", X"0763", X"f552", X"0cc9", X"0b58", X"0405", X"014e", X"0179", X"050f", X"078e", X"ff15", X"02e5",
                                                        X"f848", X"0126", X"f94c", X"0249", X"0152", X"02e7", X"fb73", X"10ae", X"0b70", X"fab8", X"0628", X"036d", X"09db", X"0702",
                                                        X"fef2", X"0cfe", X"eede", X"fe8d", X"fb2d", X"0108", X"0491", X"03db", X"fb0f", X"0a56", X"09a7", X"fc77", X"0353", X"fb9b",
                                                        X"0654", X"0296", X"0111", X"03cf", X"ee21", X"fcea", X"fc34", X"fde5", X"058b", X"04b7", X"fe41", X"0fa4", X"0c52", X"02ca",
                                                        X"02e2", X"048c", X"0643", X"0549", X"0091", X"0ba5", X"ed13", X"fa75", X"ff1b", X"003d", X"f723", X"0635", X"fede", X"0955",
                                                        X"04cd", X"04c9", X"01e4", X"033e", X"04da", X"051a", X"034a", X"0462", X"f606", X"ff53", X"066a", X"006d", X"f50d", X"0562",
                                                        X"f238", X"096a", X"095a", X"f904", X"0610", X"0710", X"ff17", X"03d8", X"0437", X"072b", X"f98d", X"ffc5", X"02c4", X"ff4e",
                                                        X"0056", X"08e8", X"fc76", X"0d2c", X"0eac", X"fd1f", X"0132", X"13ff", X"0760", X"0a23", X"036f", X"0d19", X"fbac", X"fa08",
                                                        X"00f9", X"ff29", X"0390", X"0b3e", X"0015", X"0a0a", X"0ccf", X"fe59", X"040c", X"06b6", X"fc60", X"08c1", X"003f", X"0cc7",
                                                        X"faf9", X"f5bd", X"0108", X"0060", X"0491", X"098f", X"ff7b", X"0916", X"02ca", X"fd1d", X"0158", X"fdf8", X"04c6", X"049d",
                                                        X"04a4", X"0abd", X"ef85", X"ffc3", X"fea9", X"01df", X"ffe6", X"07f2", X"f041", X"0b22", X"062e", X"fef4", X"fc38", X"0182",
                                                        X"03fc", X"06f2", X"0648", X"05f6", X"f297", X"0334", X"f8e0", X"ffed", X"02aa", X"0593", X"fda0", X"08fc", X"07be", X"fb60",
                                                        X"0029", X"014c", X"06e1", X"0643", X"03aa", X"0aed", X"f70c", X"fae0", X"fe70", X"fee1", X"04a9", X"0ac7", X"f976", X"09ac",
                                                        X"09d3", X"fd85", X"0600", X"0911", X"012d", X"0066", X"feb5", X"0f5b", X"f2f9", X"fc2c", X"0111", X"ffcb", X"fcd7", X"092d",
                                                        X"f322", X"0a4e", X"068a", X"02f6", X"fd39", X"fa2e", X"fb1a", X"0106", X"fde5", X"09ab", X"f41a", X"f4f9", X"fdc3", X"0090",
                                                        X"f8e9", X"0426", X"f2b3", X"0c52", X"0b54", X"092e", X"036c", X"f6bd", X"02c4", X"036a", X"0341", X"0523", X"f7a3", X"00b1",
                                                        X"f3e5", X"00f8", X"0a5e", X"055c", X"f141", X"0a71", X"069f", X"0203", X"0408", X"f8b4", X"0344", X"0555", X"0105", X"0724",
                                                        X"f485", X"fa62", X"f972", X"feb0", X"0817", X"0545", X"fc85", X"0810", X"057b", X"fad5", X"fc84", X"01c3", X"0577", X"02fc",
                                                        X"fed5", X"080e", X"f552", X"fd1e", X"0014", X"fd1f", X"0a36", X"051d", X"fead", X"fffc", X"09fc", X"fdc4", X"0572", X"ffef",
                                                        X"09a5", X"03c3", X"ff3d", X"04d0", X"f22b", X"ffca", X"046d", X"f9b7", X"f63e", X"042f", X"f0cd", X"0984", X"0ec3", X"01f6",
                                                        X"08d1", X"0879", X"f6a8", X"08ca");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"08ca";
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
