-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block400.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block400
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage48/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block400 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block400;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block400 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0686", X"0ddf", X"ff81", X"fb04", X"0c3a", X"010e",
                                                        X"fb7c", X"fbd6", X"e585", X"fbc0", X"fa0e", X"f59f", X"ef23", X"00c3", X"ee6e", X"0d0f", X"0316", X"0516", X"fb41", X"01f3",
                                                        X"035b", X"01bb", X"0879", X"f9a1", X"e964", X"0214", X"f569", X"fc0c", X"ee1f", X"0f29", X"f86a", X"0a1a", X"05a8", X"00a4",
                                                        X"fcab", X"feed", X"0684", X"010a", X"0fa0", X"fe39", X"fe53", X"fc1f", X"f9d9", X"ffe2", X"fc81", X"050e", X"fbc3", X"07c1",
                                                        X"0500", X"0264", X"faa3", X"f7ad", X"0538", X"fd04", X"045a", X"f882", X"00c1", X"0189", X"007d", X"fd53", X"05cd", X"ff1f",
                                                        X"fec7", X"04db", X"003b", X"fe86", X"ee6e", X"00c9", X"01e0", X"ff96", X"056b", X"fdca", X"09ac", X"02db", X"fc6d", X"fc03",
                                                        X"00a1", X"f9dd", X"00c0", X"0447", X"0234", X"0394", X"fb42", X"01b5", X"0146", X"fe5b", X"f925", X"0338", X"0708", X"feac",
                                                        X"020e", X"fbbb", X"f7ca", X"f673", X"042b", X"0346", X"03d6", X"fafb", X"0627", X"03ca", X"f2e2", X"01f0", X"fe8b", X"00cb",
                                                        X"047a", X"00c5", X"0069", X"fc82", X"002e", X"f30e", X"0a29", X"0025", X"fe5e", X"01ae", X"fe1c", X"f412", X"f180", X"02c1",
                                                        X"04a6", X"0255", X"fed4", X"0066", X"028b", X"01d2", X"0bfc", X"ebac", X"0c32", X"fb33", X"fc06", X"ff45", X"028a", X"fc26",
                                                        X"ebb9", X"0088", X"f766", X"081b", X"fb9b", X"fedd", X"0652", X"fa0e", X"0c9a", X"dde1", X"04b6", X"f7cd", X"f8f8", X"f9c3",
                                                        X"fa60", X"f8fc", X"e905", X"00aa", X"0079", X"0c37", X"02b6", X"001e", X"0588", X"feb5", X"0ab7", X"da68", X"0306", X"0011",
                                                        X"f954", X"fd0c", X"0832", X"f9f5", X"f1c5", X"fef0", X"08e9", X"0c7c", X"0177", X"04d6", X"09e9", X"0278", X"0360", X"f683",
                                                        X"041b", X"fab0", X"f92c", X"0280", X"ff35", X"074c", X"fbb9", X"015f", X"01bb", X"0be2", X"fea9", X"0008", X"0784", X"f955",
                                                        X"ff26", X"fbb2", X"0083", X"f848", X"f8df", X"fe46", X"fd99", X"f789", X"fd78", X"ffcc", X"ffc1", X"0550", X"0573", X"fe8c",
                                                        X"0841", X"02d7", X"fce3", X"0854", X"06aa", X"fde4", X"ff65", X"000e", X"0171", X"0095", X"04b1", X"fc6e", X"f71d", X"051c",
                                                        X"00ff", X"f719", X"fb99", X"fed1", X"f8e7", X"000b", X"fe18", X"fbdc", X"03f2", X"06cf", X"ec93", X"fd22", X"092d", X"fd56",
                                                        X"fec6", X"0248", X"f479", X"ff1d", X"ff4a", X"055f", X"fef6", X"f7b6", X"f410", X"027c", X"0292", X"0b20", X"fac5", X"fac3",
                                                        X"05ad", X"ffab", X"033f", X"ff7d", X"f1bb", X"060a", X"fa02", X"0581", X"fc7d", X"e7ba", X"fa5e", X"04e4", X"03f0", X"0523",
                                                        X"fb95", X"03fa", X"006a", X"ff9b", X"0cb8", X"fc59", X"edfe", X"fe97", X"fcf1", X"fbec", X"f966", X"f5b9", X"ff01", X"0b88",
                                                        X"082c", X"0a42", X"0306", X"015d", X"05cb", X"ff6b", X"03a0", X"f977", X"f79a", X"fba9", X"f715", X"fe6b", X"f830", X"f865",
                                                        X"fdc3", X"0af9", X"07ef", X"02f7", X"0528", X"face", X"05ce", X"fb4b", X"008d", X"f320", X"fdf7", X"0115", X"f53b", X"ff16",
                                                        X"014f", X"0136", X"fc62", X"082c", X"08f8", X"fdd7", X"f8ee", X"faa4", X"094d", X"fb7f", X"05d8", X"f40a", X"fdc9", X"ffb1",
                                                        X"f5ee", X"0062", X"f905", X"fc42", X"fa7b", X"0843", X"0055", X"ffab", X"f778", X"fe68", X"033c", X"fdd5", X"ff0f", X"f5c1",
                                                        X"0170", X"ffad", X"fa64", X"0106", X"fcbe", X"ff63", X"fe97", X"0a33", X"005c", X"ff06", X"fa79", X"0581", X"f782", X"fdc8",
                                                        X"00a1", X"fb8d", X"0a3e", X"fdda", X"fe1f", X"00f6", X"ff39", X"fd71", X"0829", X"006f", X"fe37", X"fb20", X"f9f1", X"003a",
                                                        X"f3c7", X"fe0a", X"ef9c", X"f940", X"fdcf", X"023f", X"f5d1", X"fbc0", X"05bd", X"f0c9", X"0320", X"fc61", X"0373", X"fc65",
                                                        X"fb27", X"06d4", X"f362", X"01ce", X"fad3", X"ffba", X"f633", X"ff01", X"fa00", X"ff7f", X"033c", X"f361", X"0377", X"fef9",
                                                        X"fde0", X"fe23", X"f74f", X"fb21", X"f012", X"002d", X"fe82", X"07cc", X"0355", X"0554", X"0565", X"ffdc", X"ffd5", X"e8ae",
                                                        X"01b5", X"fe18", X"f9b6", X"f894", X"04fd", X"fcba", X"f29f", X"023b", X"036a", X"07c5", X"0043", X"0029", X"0554", X"0058",
                                                        X"04ac", X"ed34", X"080e", X"fbc3", X"fa68", X"fe2a", X"fc08", X"f4a7", X"f3b8", X"0065", X"00f0", X"0cce", X"00a8", X"ffe3",
                                                        X"09c1", X"ff2f", X"0b44", X"e311", X"0401", X"f97b", X"fcf4", X"01b3", X"fa45", X"fbd6", X"f6a0", X"0321", X"fc69", X"07b2",
                                                        X"071b", X"01e7", X"0781", X"f806", X"050d", X"f3fa", X"02d4", X"fa87", X"ff0a", X"fe66", X"f56e", X"02d6", X"00de", X"03eb",
                                                        X"ff6c", X"09f5", X"ff45", X"041f", X"0330", X"fc25", X"0307", X"0e3e", X"fda9", X"00ad", X"0268", X"003f", X"fb7d", X"f7fd",
                                                        X"fd83", X"037d", X"f4d1", X"0307", X"fd0b", X"fd22", X"08a1", X"01d1", X"fea1", X"0604", X"0094", X"fe4d", X"0259", X"05b6",
                                                        X"fc69", X"fcc0", X"fb9a", X"034f", X"f781", X"003b", X"f5dd", X"fbdb", X"fdc3", X"f7c5", X"f343", X"0075", X"01eb", X"00d2",
                                                        X"00e4", X"04c5", X"fa6f", X"0287", X"faee", X"fe86", X"045d", X"fc5d", X"f4cf", X"ff8e", X"fc65", X"0839", X"fa60", X"f54d",
                                                        X"fd7f", X"03d5", X"01d1", X"ff92", X"fb8d", X"fc1b", X"0620", X"fb1f", X"f1b7", X"fde0", X"f08b", X"fc7a", X"fcd7", X"03ab",
                                                        X"f96d", X"fb66", X"fca8", X"086d", X"0500", X"feac", X"f722", X"0282", X"051c", X"fd1a", X"fe41", X"f7fd", X"f505", X"faa5",
                                                        X"f9f0", X"02c0", X"f857", X"05ca", X"f6fd", X"0a6a", X"066a", X"04ba", X"f9cc", X"f9b7", X"0526", X"ff31", X"0150", X"f6a9",
                                                        X"faae", X"fd6d", X"f96f", X"fa85", X"f865", X"047e", X"fd73", X"0ddb", X"021c", X"0426", X"02ac", X"f6d0", X"0700", X"fdc3",
                                                        X"1a9f", X"fdeb", X"fcaa", X"0078", X"fc38", X"00e5", X"fe53", X"fab6", X"0117", X"0971", X"05c9", X"fac0", X"fc27", X"0454",
                                                        X"029e", X"0144", X"0b76", X"fc0f", X"0655", X"fb8d", X"fba1", X"fe9b", X"03de", X"f2ea", X"0131", X"02c3", X"036d", X"fe6e",
                                                        X"fad1", X"fbaa", X"fd67", X"0161", X"f46d", X"fd72", X"003a", X"fb92", X"0353", X"f94f", X"05f9", X"0297", X"06e3", X"057d",
                                                        X"03f1", X"fc15", X"01f6", X"f8fb", X"f73a", X"fe0c", X"06f8", X"fe0e", X"fc25", X"fee5", X"0510", X"ff06", X"fdfa", X"f49d",
                                                        X"035e", X"ff8c", X"0069", X"fe35", X"010d", X"fc80", X"f365", X"01f9", X"0341", X"fcfc", X"068d", X"fbd7", X"fc2c", X"0013",
                                                        X"08a7", X"e179", X"035a", X"ffcc", X"ff58", X"00a4", X"fb3e", X"f749", X"f1a0", X"006d", X"0200", X"0515", X"fbe9", X"03dc",
                                                        X"05ba", X"fc8a", X"07f5", X"e58f", X"0377", X"001a", X"f894", X"fcd6", X"ff42", X"fd0a", X"ef64", X"029d", X"04f9", X"09bc",
                                                        X"00a4", X"057a", X"099e", X"00e6", X"02ae", X"efa6", X"0670", X"febb", X"f99b", X"0397", X"0494", X"efaf", X"f596", X"0226",
                                                        X"0038", X"0d6f", X"0445", X"fed2", X"05f4", X"0200", X"06fd", X"fdb5", X"0316", X"fcc4", X"ff65", X"ff90", X"ff94", X"ffe6",
                                                        X"fdf8", X"03b5", X"fe5c", X"079f", X"fc4e", X"fe66", X"0616", X"00b5", X"0472", X"0d3c", X"fe90", X"ff41", X"fb9a", X"08d4",
                                                        X"fc6e", X"ff87", X"00d1", X"03a0", X"f9b8", X"071c", X"08c2", X"03c2", X"0a5a", X"041b", X"04a4", X"0cbc", X"06ae", X"fdae",
                                                        X"ff24", X"0519", X"fdb9", X"0363", X"011d", X"fe75", X"06a6", X"0308", X"013e", X"0087", X"098f", X"00b3", X"fbd6", X"083f",
                                                        X"f940", X"00cd", X"0528", X"098e", X"f6d2", X"fc78", X"08db", X"02e5", X"07ac", X"019b", X"fde3", X"036a", X"fd36", X"00b4",
                                                        X"0003", X"0308", X"f89b", X"02c0", X"06dd", X"06cf", X"fd5e", X"fd1b", X"0480", X"feb7", X"fedc", X"fe99", X"f152", X"03cb",
                                                        X"fed4", X"007a", X"f7ff", X"f58b", X"f8fe", X"0416", X"0473", X"0507", X"f4f6", X"fef2", X"0403", X"fb65", X"f6ef", X"f9ce",
                                                        X"f42b", X"fd6a", X"ff02", X"0026", X"f501", X"fd48", X"fcc8", X"06b7", X"096a", X"0457", X"fb90", X"f574", X"0440", X"000b",
                                                        X"02cb", X"f6b3", X"ef99", X"fda5", X"fa00", X"0429", X"f8b8", X"ff3b", X"f769", X"08f1", X"0134", X"fca9", X"0239", X"fdb9",
                                                        X"037c", X"fa21", X"0634", X"f7e5", X"eed6", X"fa59", X"f993", X"0216", X"fd27", X"f642", X"f5f5", X"08b6", X"08bb", X"0560",
                                                        X"0054", X"05d0", X"085c", X"ff4d", X"0c15", X"f9d7", X"febc", X"fe25", X"f916", X"0111", X"fb9f", X"fb24", X"fd5c", X"0a6f",
                                                        X"064d", X"faf3", X"ffc8", X"050c", X"0102", X"fe7f", X"153f", X"f9fa", X"020e", X"ffd1", X"fb57", X"fea9", X"0191", X"f7f9",
                                                        X"ff6e", X"052c", X"02a2", X"fbee", X"fd2c", X"fc2c", X"fd49", X"ffa8", X"06ea", X"fbc2", X"03db", X"04cc", X"0310", X"04a0",
                                                        X"ff68", X"fb39", X"07d5", X"01d3", X"03f1", X"fb73", X"fcf2", X"fa19", X"f976", X"fe45", X"03a6", X"00ce", X"00f4", X"fe21",
                                                        X"037f", X"fcf8", X"fe72", X"f649", X"06e0", X"00a8", X"042f", X"fd3a", X"fc6d", X"007d", X"ee28", X"0504", X"00fa", X"07a5",
                                                        X"00d6", X"00ef", X"0342", X"0049", X"03f5", X"f625", X"02d6", X"f8d4", X"fd63", X"0285", X"fbfa", X"f26c", X"eb6c", X"04ab",
                                                        X"ff01", X"06bb", X"01d5", X"038e", X"018f", X"fff5", X"00af", X"ea7b", X"04dd", X"fb24", X"f7ab", X"ff15", X"ff47", X"f8f8",
                                                        X"ee80", X"0371", X"fe6e", X"0721", X"fe98", X"0256", X"01dd", X"fc68", X"040a", X"e60c", X"0480", X"fb80", X"f881", X"0009",
                                                        X"f9a6", X"fb38", X"eece", X"ff2f", X"fed1", X"095b", X"ffdf", X"03be", X"0229", X"f9ea", X"03dc", X"ec07", X"0674", X"f889",
                                                        X"fd7f", X"040b", X"f900", X"ffbd", X"f603", X"01ef", X"079a", X"0b9d", X"05ef", X"006b", X"079c", X"ff16", X"01b8", X"0222",
                                                        X"fffd", X"f8d8", X"09a5", X"02a8", X"012e", X"f5a4", X"fd7c", X"013a", X"0570", X"0af0", X"056a", X"fd19", X"07cb", X"06b0",
                                                        X"0214", X"06ed", X"0411", X"fcd4", X"0162", X"04b5", X"fefb", X"020f", X"002c", X"0035", X"f2cb", X"07dc", X"0714", X"fed4",
                                                        X"05ee", X"04d2", X"0114", X"0913", X"011a", X"fcd4", X"ff28", X"048a", X"ff06", X"047e", X"007a", X"0200", X"f385", X"fbc5",
                                                        X"fb47", X"fc5a", X"0234", X"f8ab", X"fa04", X"fb04", X"fdbd", X"fd8a", X"fbb2", X"037e", X"fa24", X"054c", X"028e", X"0264",
                                                        X"0665", X"fca9", X"f8ba", X"fef7", X"ffef", X"ff9a", X"fcbe", X"f21e", X"f66b", X"0144", X"0611", X"030c", X"ff1e", X"fc1e",
                                                        X"03f2", X"fba3", X"0162", X"fffb", X"edc8", X"020b", X"fc76", X"00f0", X"f4b0", X"eded", X"f3c1", X"04e9", X"05de", X"048c",
                                                        X"f4bc", X"01bc", X"01b3", X"fe2b", X"fe71", X"f982", X"ebfc", X"0022", X"f8ee", X"057a", X"f30f", X"fa40", X"fb36", X"09b1",
                                                        X"06b4", X"0554", X"fc91", X"f21a", X"08fe", X"017d", X"0624", X"f95d", X"f7c8", X"fe12", X"fad7", X"03b5", X"fc95", X"044e",
                                                        X"03b3", X"0cd6", X"07bc", X"0098", X"024f", X"f766", X"0603", X"01e5", X"0052", X"004a", X"ffd4", X"fafe", X"fac1", X"f9e7",
                                                        X"0302", X"024e", X"fdbb", X"07bd", X"07ff", X"0677", X"fe0c", X"fef0", X"0651", X"032b", X"121f", X"faa9", X"01c0", X"0051",
                                                        X"0098", X"fdcb", X"0397", X"f7a5", X"ff9b", X"0a78", X"0540", X"f5a4", X"fefc", X"04df", X"02fa", X"00cb", X"1289", X"0005",
                                                        X"ff39", X"01ec", X"fcde", X"01b1", X"047d", X"f994", X"0855", X"049d", X"0312", X"f9de", X"fed7", X"0058", X"f1eb", X"0357",
                                                        X"fb59", X"ff54", X"0103", X"ff77", X"fdc6", X"00de", X"0727", X"f479", X"03d1", X"fc47", X"fb47", X"021f", X"0224", X"fa19",
                                                        X"ee18", X"0285", X"0097", X"0519", X"0391", X"ffd9", X"009e", X"02fe", X"0600", X"e034", X"0744", X"f9e6", X"f896", X"f87e",
                                                        X"011e", X"f8cc", X"e859", X"00b4", X"0866", X"0367", X"fdc8", X"fad7", X"0323", X"ff17", X"04e7", X"dcc5", X"06bb", X"f8c5",
                                                        X"fe16", X"fb14", X"f892", X"f807", X"f099", X"0325", X"f60a", X"0731", X"01a5", X"0073", X"0269", X"fdad", X"07fb", X"ec0c",
                                                        X"0385", X"fc05", X"fb69", X"fd42", X"f732", X"fd54", X"f195", X"0487", X"05ae", X"081c", X"0094", X"fdee", X"084a", X"f9bc",
                                                        X"0611", X"f839", X"0940", X"f661", X"f982", X"054a", X"ffb7", X"f854", X"fc15", X"0058", X"1171", X"0b01", X"002a", X"fc14",
                                                        X"08c0", X"0183", X"ffde", X"0413", X"ff93", X"fa74", X"ff7f", X"0340", X"fbef", X"fa30", X"ff94", X"0132", X"f2c4", X"0cfd",
                                                        X"07ce", X"f98c", X"04b4", X"f940", X"018b", X"073e", X"0081", X"f7b2", X"fdc0", X"046f", X"fc97", X"0043", X"0552", X"02e3",
                                                        X"f7b1", X"0225", X"ff8e", X"faac", X"0426", X"fae1", X"f6fd", X"07f5", X"f75e", X"fa17", X"049f", X"0ab7", X"f635", X"ff30",
                                                        X"01bd", X"fe31", X"fb70", X"0285", X"fc94", X"0510", X"02d6", X"038b", X"fdb0", X"fd05", X"fcd7", X"03ca", X"0420", X"05c2",
                                                        X"fcfb", X"0505", X"028f", X"feeb", X"f7a2", X"fc45", X"ecb7", X"02c6", X"0011", X"ffbb", X"f8fb", X"00bb", X"f90e", X"0363",
                                                        X"04a9", X"04b9", X"f7e3", X"01db", X"02d2", X"fdd1", X"01ab", X"f5ca", X"f40b", X"022d", X"fa7b", X"04cb", X"faf9", X"fca4",
                                                        X"fdf8", X"0765", X"02d0", X"0a3f", X"f957", X"fb90", X"0b7c", X"ff40", X"f70c", X"f7ee", X"ea78", X"fc79", X"f73a", X"ffab",
                                                        X"fa68", X"fc36", X"f70e", X"088f", X"0430", X"0174", X"fa70", X"fc6d", X"07b9", X"fb14", X"0424", X"f8ac", X"fb91", X"fe76",
                                                        X"f65d", X"03f7", X"fe13", X"0249", X"ff9a", X"0e0f", X"04b8", X"070d", X"fdf5", X"fdc2", X"05fa", X"fec1", X"0954", X"fa32",
                                                        X"fc95", X"ffe0", X"f926", X"03da", X"f88a", X"0849", X"fb6a", X"0953", X"073c", X"fd72", X"fe62", X"ff0b", X"001a", X"fc57",
                                                        X"11c2", X"f8ec", X"0242", X"fcdd", X"f964", X"fdcd", X"fcc2", X"ff1d", X"04ad", X"0a5c", X"0810", X"f9b3", X"f4e2", X"01e1",
                                                        X"0480", X"fed3", X"fdea", X"f580", X"01a6", X"ff35", X"fbb5", X"006a", X"fbab", X"fa94", X"026a", X"0527", X"03d2", X"f954",
                                                        X"f63e", X"fbee", X"f674", X"fe03", X"f314", X"fa41", X"0756", X"fe17", X"0032", X"ff8a", X"ff57", X"fd1c", X"05a9", X"01b1",
                                                        X"02a8", X"0197", X"fd23", X"fa35", X"f907", X"0378", X"f6e2", X"028b", X"fc6c", X"0237", X"fe67", X"027a", X"035c", X"f214",
                                                        X"fc5b", X"fc22", X"f933", X"f9b5", X"0306", X"01bb", X"f19a", X"00ef", X"0228", X"0213", X"fa23", X"04d3", X"0518", X"fe9b",
                                                        X"02fb", X"eafb", X"0692", X"039c", X"fbbd", X"fc89", X"fe51", X"02b3", X"ef44", X"05c8", X"fe96", X"0b04", X"fc6b", X"0404",
                                                        X"072b", X"f996", X"06e9", X"e9e6", X"05d0", X"fe3a", X"feae", X"f8e4", X"faaf", X"0668", X"f3e7", X"0471", X"078a", X"06e3",
                                                        X"05e5", X"0544", X"0219", X"ff27", X"090f", X"f3d7", X"09bd", X"fb75", X"fd88", X"033e", X"0098", X"ff39", X"fdb7", X"0094",
                                                        X"0685", X"0764", X"0496", X"0331", X"0429", X"03ae", X"fefd", X"fe5b", X"0196", X"f508", X"fbfa", X"0439", X"041b", X"f893",
                                                        X"0114", X"ff93", X"02c1", X"059b", X"0912", X"00f1", X"069e", X"fffa", X"fc44", X"11d1", X"0316", X"f9c2", X"fa90", X"020d",
                                                        X"f76f", X"fdc0", X"fff1", X"00b4", X"0037", X"087b", X"000e", X"fc85", X"0198", X"0b7e", X"01ee", X"08d1", X"003a", X"fd78",
                                                        X"00e5", X"03cc", X"f8f1", X"fc08", X"0224", X"fe8b", X"0030", X"0050", X"fba7", X"f836", X"01b9", X"002c", X"ff7e", X"ffc9",
                                                        X"f8a4", X"ffa0", X"fb4b", X"0b97", X"f9fc", X"08b6", X"05c7", X"fdf6", X"ffbd", X"01b4", X"f5c4", X"fa35", X"008f", X"0098",
                                                        X"0106", X"f56c", X"f274", X"0805", X"03cb", X"05ca", X"fcdf", X"fdcc", X"070d", X"0121", X"0343", X"fab3", X"f480", X"0377",
                                                        X"f83b", X"04f5", X"f9d2", X"fe86", X"f7dd", X"0954", X"0779", X"062d", X"f7f7", X"0044", X"04c5", X"fe91", X"0c6a", X"fb60",
                                                        X"f6bb", X"fc28", X"facc", X"f884", X"fd86", X"ff19", X"02ab", X"0b67", X"05c9", X"00ce", X"fb17", X"003f", X"03fd", X"017d",
                                                        X"ffcc", X"f9cf", X"f673", X"013d", X"f85f", X"fe95", X"f2bb", X"01e6", X"fe21", X"0b16", X"0ca9", X"01b4", X"f4ac", X"f6a3",
                                                        X"0398", X"fd7c", X"05dd", X"f807", X"fa8c", X"01fa", X"fd15", X"ff49", X"f95a", X"ff36", X"fd88", X"0c2b", X"0819", X"01ad",
                                                        X"fa45", X"0107", X"0482", X"ff89", X"05e2", X"fab6", X"097b", X"ffcb", X"fa49", X"fd1a", X"fef5", X"0323", X"01b4", X"0636",
                                                        X"04f8", X"f213", X"00b6", X"fc39", X"fc60", X"fe83", X"0a5d", X"f9a8", X"0703", X"fe38", X"fe1f", X"fd45", X"0339", X"f5fc",
                                                        X"06f8", X"01fa", X"0123", X"f4ff", X"fdef", X"fcfb", X"ed55", X"004e", X"f637", X"fb64", X"0372", X"fd89", X"f8f0", X"ff47",
                                                        X"fdef", X"fc78", X"03d4", X"fb55", X"00df", X"fc32", X"fcf6", X"0477", X"ebfe", X"0173", X"fba1", X"ff85", X"fad5", X"fdc3",
                                                        X"0269", X"ff7f", X"0061", X"f22b", X"0609", X"faba", X"f905", X"fea1", X"fd32", X"eed9", X"e15e", X"02c0", X"fb41", X"05e9",
                                                        X"036d", X"007c", X"002b", X"044a", X"04d7", X"f039", X"0703", X"f943", X"f958", X"f9bb", X"03da", X"ff78", X"f00e", X"01d8",
                                                        X"ff98", X"0848", X"f5fc", X"fa97", X"0401", X"009a", X"08b6", X"e79b", X"ff53", X"fb37", X"f594", X"fbe2", X"ffa3", X"0211",
                                                        X"f492", X"ff03", X"0948", X"07d2", X"05c8", X"fd71", X"09a6", X"fc24", X"0b63", X"f0d0", X"0496", X"f891", X"f5c0", X"fa02",
                                                        X"f996", X"fca4", X"f069", X"02d5", X"fd34", X"069a", X"0950", X"ffe6", X"07b5", X"ff2a", X"0033", X"fbeb", X"040a", X"f686",
                                                        X"fc42", X"03e1", X"f52a", X"04c4", X"fe3c", X"0421", X"f65c", X"0ae4", X"ffa7", X"fdf8", X"09c4", X"ff40", X"01aa", X"060e",
                                                        X"fe74", X"f707", X"063c", X"0383", X"fc25", X"fecb", X"0524", X"030c", X"0149", X"0438", X"fade", X"fbd6", X"04b2", X"029d",
                                                        X"fd41", X"0107", X"ffed", X"fe60", X"0282", X"0273", X"fbf3", X"ff59", X"048b", X"0340", X"f9d0", X"082c", X"ef82", X"fff9",
                                                        X"05bc", X"019a", X"0162", X"f61d", X"f419", X"fe76", X"03a9", X"083f", X"f691", X"fdca", X"05f7", X"ffb5", X"f31a", X"fed4",
                                                        X"e9db", X"043b", X"fe2e", X"03ec", X"016c", X"f693", X"f6a5", X"0143", X"089d", X"0e7e", X"ff1e", X"fd22", X"06d8", X"043d",
                                                        X"feb2", X"fe10", X"f111", X"fd3d", X"fdd8", X"0794", X"f798", X"f365", X"fb95", X"0655", X"08e8", X"0952", X"f45e", X"056b",
                                                        X"0565", X"ffb8", X"fe24", X"fa74", X"eefa", X"02a6", X"02f1", X"0439", X"fc71", X"f851", X"fe5d", X"0a56", X"071f", X"0bef",
                                                        X"01dc", X"ff13", X"08fd", X"ffc7", X"016c", X"fa74", X"f642", X"022d", X"fddd", X"fdd5", X"fc36", X"0014", X"fffd", X"0d3a",
                                                        X"090b", X"0676", X"006b", X"fb5a", X"08e2", X"02d0", X"ffde", X"fc98", X"00cc", X"fe91", X"fd39", X"027a", X"fc6d", X"025b",
                                                        X"fbee", X"0ae8", X"05a4", X"fdb7", X"0566", X"f6df", X"0ac3", X"0301", X"ffad", X"fb98", X"fd09", X"ff74", X"0515", X"f9f1",
                                                        X"fbba", X"fab7", X"0074", X"0ae9", X"0348", X"fc75", X"ff00", X"ff9a", X"febc", X"01ef", X"0386", X"fd93", X"fe1f", X"ff66",
                                                        X"0125", X"0030", X"fd3c", X"f797", X"0691", X"0497", X"fe3a", X"00c1", X"01a8", X"fecf", X"f0d3", X"0160", X"0454", X"ffa0",
                                                        X"05bf", X"0539", X"f9e5", X"011c", X"fa8f", X"f6a7", X"0ba1", X"fd21", X"fea5", X"f8de", X"0336", X"0273", X"ef61", X"01a6",
                                                        X"fefd", X"0520", X"fb3c", X"0045", X"01d8", X"fd26", X"064a", X"e2cb", X"0b69", X"fdac", X"0434", X"f9e1", X"fa3d", X"f58c",
                                                        X"e811", X"016d", X"fc8f", X"0932", X"0266", X"fef0", X"054d", X"f890", X"085c", X"e1d7", X"07fe", X"faca", X"f9c0", X"fb92",
                                                        X"fb28", X"f163", X"e6b3", X"03c9", X"0c28", X"0697", X"f939", X"fb77", X"0419", X"f882", X"0e4f", X"dcc0", X"02e4", X"f8f1",
                                                        X"fc36", X"fb30", X"fca3", X"fe88", X"f107", X"032d", X"f62c", X"0bb4", X"04cd", X"0055", X"0962", X"f690", X"08ba", X"ef66",
                                                        X"02e0", X"f1c1", X"0188", X"03f4", X"fb4f", X"f8e4", X"fee6", X"034a", X"0142", X"0757", X"fc90", X"01b3", X"10aa", X"0022",
                                                        X"fb12", X"f9e6", X"f794", X"f187");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f187";
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
