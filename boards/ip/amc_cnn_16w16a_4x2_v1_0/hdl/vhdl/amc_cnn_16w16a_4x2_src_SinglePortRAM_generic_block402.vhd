-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block402.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block402
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage5/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block402 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block402;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block402 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fd86", X"01ad", X"087b", X"0537", X"08e9", X"fa04",
                                                        X"0656", X"fba9", X"0970", X"0141", X"ffa0", X"044c", X"fe66", X"0842", X"fffd", X"0190", X"00b2", X"013a", X"05fd", X"0559",
                                                        X"0959", X"fcde", X"0faa", X"fdf4", X"faf3", X"046a", X"0380", X"021d", X"ff8e", X"02da", X"fe3d", X"0389", X"0349", X"07d1",
                                                        X"0f09", X"024c", X"0540", X"fcdc", X"0090", X"fa61", X"01c5", X"0604", X"fb06", X"fe4b", X"0072", X"0659", X"fb5a", X"fe78",
                                                        X"fd80", X"0106", X"0617", X"0000", X"0632", X"fc73", X"0677", X"068b", X"fcdc", X"03d5", X"fda6", X"fdf0", X"fef5", X"fc20",
                                                        X"fbc2", X"0008", X"0285", X"fe06", X"08dc", X"038c", X"02a7", X"fd6f", X"0658", X"ff6f", X"fcab", X"ff77", X"014c", X"044b",
                                                        X"fcf6", X"ff73", X"fdc2", X"fd2d", X"fe1e", X"feca", X"005a", X"fda2", X"0269", X"fd59", X"fce6", X"fd18", X"0140", X"fd97",
                                                        X"011a", X"00cb", X"fdf7", X"0348", X"037b", X"fd7c", X"fb91", X"ff97", X"08e9", X"036c", X"ff35", X"fb9d", X"0693", X"0191",
                                                        X"fec3", X"0367", X"fadf", X"fe96", X"00a2", X"02ac", X"fd5b", X"fa84", X"fafa", X"fee5", X"045e", X"033d", X"0378", X"fe8b",
                                                        X"f289", X"fc55", X"05f6", X"0154", X"f750", X"07af", X"fa4c", X"ff37", X"007d", X"fb44", X"f7bd", X"071d", X"08ed", X"0007",
                                                        X"028a", X"fa23", X"019b", X"024b", X"0241", X"ff37", X"faf7", X"01cc", X"02af", X"f78d", X"00f3", X"f859", X"fcdc", X"ff77",
                                                        X"fd5b", X"014a", X"0461", X"fe30", X"029a", X"00cd", X"ffb8", X"0065", X"ff18", X"f9b6", X"ff50", X"067a", X"ff08", X"ff95",
                                                        X"fc83", X"05d1", X"0087", X"0529", X"05d0", X"fc2e", X"025d", X"fd3b", X"00c9", X"04e3", X"0037", X"068d", X"fdd7", X"03a7",
                                                        X"fe78", X"00ee", X"fe7c", X"04d5", X"035e", X"fb23", X"085a", X"fbe6", X"fdb1", X"fe68", X"0780", X"0557", X"045d", X"00e8",
                                                        X"ff90", X"00d2", X"0056", X"0218", X"fdc0", X"fd64", X"00e0", X"fea7", X"0252", X"02e8", X"faa2", X"fb99", X"ff71", X"0303",
                                                        X"029d", X"feef", X"07ec", X"fea1", X"fc81", X"fe7e", X"fb01", X"fa81", X"034d", X"fdaa", X"058b", X"fd95", X"02af", X"fbce",
                                                        X"0765", X"036b", X"00b8", X"fc6c", X"0419", X"021d", X"fd00", X"ff82", X"ff17", X"034c", X"02d9", X"ff25", X"03af", X"01c0",
                                                        X"0359", X"f8b4", X"fc92", X"094b", X"fe6f", X"0025", X"0152", X"0136", X"010b", X"01f7", X"00cb", X"0055", X"060f", X"09df",
                                                        X"0109", X"fc6c", X"fe0b", X"fb32", X"02e7", X"02a8", X"017e", X"0147", X"0400", X"0751", X"011f", X"0133", X"003a", X"03d9",
                                                        X"0348", X"03f8", X"0593", X"ff6a", X"0128", X"020b", X"0563", X"00aa", X"ff30", X"fec1", X"0322", X"ff0e", X"02de", X"fbcd",
                                                        X"02aa", X"feec", X"08ef", X"026a", X"0945", X"ffc3", X"043f", X"fd85", X"05f2", X"063b", X"0286", X"0186", X"0104", X"0572",
                                                        X"06ef", X"fbdf", X"ff88", X"072b", X"09c3", X"0864", X"05ef", X"fda4", X"031a", X"0158", X"073b", X"ff29", X"0273", X"00e0",
                                                        X"fbdc", X"014a", X"00fa", X"01db", X"fd18", X"f9de", X"010e", X"0b09", X"05b5", X"fd25", X"03bc", X"fde4", X"0069", X"03fb",
                                                        X"0325", X"0347", X"0351", X"0295", X"fe1a", X"0130", X"ffeb", X"03d1", X"0866", X"fa6f", X"ffa3", X"fcf5", X"0ac3", X"ff4f",
                                                        X"08f7", X"06f9", X"fe74", X"fd21", X"0148", X"08e8", X"004c", X"fdf5", X"0020", X"04ea", X"00e9", X"fb0b", X"05ba", X"fd62",
                                                        X"0639", X"fd3a", X"0148", X"0645", X"fed8", X"0655", X"fe14", X"06f7", X"f979", X"01bc", X"00fd", X"f933", X"0442", X"051f",
                                                        X"ffc3", X"0216", X"050b", X"fa67", X"0177", X"069b", X"f799", X"018c", X"ff91", X"091f", X"00ad", X"ff2e", X"fdbc", X"0121",
                                                        X"09d2", X"0ec6", X"0006", X"fddb", X"0253", X"00f6", X"0413", X"0a5f", X"fd6f", X"00cc", X"f7af", X"ff11", X"03ea", X"fe82",
                                                        X"010a", X"0327", X"0150", X"fe9b", X"05f9", X"ff0a", X"09ef", X"02cf", X"fd47", X"03c1", X"fd9c", X"0661", X"fa29", X"fea8",
                                                        X"fe16", X"fdc8", X"012b", X"014e", X"0595", X"02e3", X"0319", X"fecb", X"07e7", X"fdd0", X"01fd", X"01ec", X"001c", X"0597",
                                                        X"fcfe", X"02a0", X"f795", X"fd45", X"034f", X"028e", X"09c2", X"fa57", X"0212", X"ff2a", X"f947", X"0098", X"ff23", X"0476",
                                                        X"0018", X"fead", X"02e8", X"03ee", X"ffa5", X"ff10", X"ff8f", X"060d", X"0311", X"fca5", X"0702", X"fbfe", X"f6cb", X"ff4c",
                                                        X"fc99", X"03f9", X"0161", X"fe85", X"0272", X"005a", X"f850", X"fcec", X"03d2", X"0327", X"0afb", X"ff84", X"0c62", X"fbb5",
                                                        X"0285", X"fe64", X"0041", X"03d6", X"fc24", X"03f0", X"fa9f", X"fd6d", X"faca", X"001a", X"008a", X"fa1e", X"03b3", X"ff31",
                                                        X"08fb", X"fe74", X"02a5", X"f756", X"fbdc", X"00c9", X"ff62", X"069b", X"fb11", X"0170", X"fa9f", X"04af", X"fcfb", X"fb12",
                                                        X"07ea", X"0138", X"0a9f", X"fbd9", X"0109", X"fb92", X"fdd3", X"03d4", X"fa7d", X"fc8f", X"fd57", X"0850", X"fd53", X"06ca",
                                                        X"fee1", X"fcf5", X"0147", X"0364", X"067c", X"fcf1", X"f0a5", X"ff67", X"040b", X"073d", X"fecc", X"feb4", X"fbdb", X"0c72",
                                                        X"ff1c", X"0012", X"fbec", X"fb5d", X"092f", X"02ea", X"075a", X"fe05", X"079b", X"012c", X"038c", X"05f2", X"fa00", X"fd79",
                                                        X"fbdf", X"07aa", X"fc33", X"fe70", X"0393", X"f9dd", X"0622", X"04ed", X"0735", X"fd81", X"fff2", X"fb36", X"fdb9", X"018e",
                                                        X"0149", X"fd27", X"fc5a", X"0d92", X"fffe", X"001d", X"02df", X"ff07", X"06ed", X"0502", X"06fd", X"ff20", X"ff57", X"fd01",
                                                        X"010e", X"077b", X"fe73", X"ff27", X"0398", X"078c", X"ff7c", X"0056", X"0337", X"ffc9", X"041f", X"00e1", X"072a", X"ff0a",
                                                        X"04b3", X"fb4f", X"fe79", X"0327", X"ff7e", X"0342", X"f6d5", X"06ec", X"fdbc", X"ffce", X"0382", X"0027", X"0452", X"00c2",
                                                        X"057d", X"0049", X"00f8", X"fede", X"0745", X"0263", X"0098", X"0672", X"ffdb", X"fac9", X"00d8", X"008c", X"02bb", X"fd03",
                                                        X"082e", X"008a", X"07d8", X"ff06", X"fdcf", X"fc46", X"05ad", X"0086", X"01b4", X"0003", X"fd0e", X"faf2", X"fddd", X"0020",
                                                        X"01bf", X"05ce", X"0911", X"03a9", X"02c8", X"fd36", X"025e", X"00c6", X"0447", X"0264", X"03a5", X"012a", X"fd5c", X"0476",
                                                        X"017e", X"028b", X"00e1", X"0091", X"055a", X"fa7b", X"0a59", X"02d0", X"07e0", X"fef5", X"00e5", X"ff60", X"054e", X"06d7",
                                                        X"072a", X"fdce", X"fe4a", X"01b6", X"008a", X"0073", X"0201", X"0721", X"0507", X"fe0c", X"fc2c", X"02d3", X"06c9", X"0863",
                                                        X"ff3a", X"03bd", X"feb4", X"01cf", X"ff26", X"ff82", X"0150", X"ff0f", X"00e4", X"fd84", X"06b7", X"01c2", X"03c8", X"fc02",
                                                        X"ff1a", X"012c", X"013b", X"fc30", X"079f", X"fb8a", X"008f", X"ffe6", X"fdcd", X"01c0", X"095d", X"031b", X"0653", X"fdb3",
                                                        X"f924", X"01a5", X"fd5c", X"087d", X"ff7d", X"fa49", X"0369", X"0687", X"f89a", X"055c", X"06ee", X"005c", X"047d", X"060c",
                                                        X"06ad", X"fcf8", X"0ad9", X"0037", X"08d0", X"08ef", X"00ce", X"096b", X"094e", X"0712", X"fdf4", X"0280", X"fd5a", X"ff6f",
                                                        X"0482", X"0127", X"0773", X"fcd9", X"036a", X"0460", X"0a6d", X"0650", X"ff51", X"fefb", X"0619", X"1053", X"fe0a", X"ff98",
                                                        X"febc", X"fa83", X"01eb", X"feb9", X"0a68", X"fee8", X"0205", X"febb", X"fe87", X"02a8", X"0766", X"0428", X"06e2", X"0865",
                                                        X"fc97", X"fb4a", X"fdf0", X"ff21", X"0439", X"03de", X"067c", X"fd33", X"0972", X"ffdf", X"0701", X"04c2", X"f9cd", X"fddc",
                                                        X"0437", X"07db", X"0378", X"000c", X"ff34", X"ff28", X"077d", X"fe56", X"fcdb", X"ffeb", X"f709", X"fff2", X"03c6", X"0498",
                                                        X"fff3", X"fef3", X"0478", X"0253", X"fb09", X"034a", X"03b1", X"f7bc", X"05d4", X"fbb1", X"09c4", X"015d", X"02a4", X"039f",
                                                        X"029f", X"0a3a", X"030c", X"01f9", X"fee9", X"02d8", X"0112", X"02a2", X"ffe2", X"fae2", X"02ee", X"0265", X"06d3", X"0018",
                                                        X"001b", X"fcc1", X"07a1", X"0938", X"03f2", X"f9ae", X"f667", X"ffd4", X"01df", X"0237", X"ffc8", X"0651", X"068b", X"02ff",
                                                        X"0853", X"fdb5", X"028f", X"fed3", X"fd71", X"0567", X"02b5", X"fbad", X"03d8", X"0446", X"fd1d", X"038c", X"fd7d", X"027f",
                                                        X"087b", X"fe6a", X"0977", X"ff57", X"f3ec", X"0034", X"f762", X"04bb", X"0198", X"067e", X"012a", X"ffb8", X"fca6", X"046b",
                                                        X"00d8", X"01b7", X"07a5", X"074e", X"05f3", X"fd3b", X"fda8", X"fc00", X"01a3", X"0597", X"ffd6", X"01fa", X"fec1", X"0774",
                                                        X"ff29", X"fce9", X"fda0", X"fe84", X"0565", X"ff20", X"fcf4", X"fce8", X"00b9", X"faf0", X"0532", X"0080", X"f8f0", X"0342",
                                                        X"0066", X"02e6", X"fa80", X"03d6", X"fae0", X"0072", X"071f", X"05d1", X"017d", X"febc", X"0077", X"fe76", X"06d5", X"feff",
                                                        X"ff18", X"0007", X"093d", X"066a", X"015b", X"fbed", X"01f7", X"063d", X"09e2", X"fb58", X"039d", X"fd55", X"0272", X"000a",
                                                        X"02b2", X"044b", X"f97d", X"ff22", X"01eb", X"0233", X"fa8b", X"fe6b", X"fd33", X"f8c3", X"006d", X"00ca", X"0259", X"f861",
                                                        X"fa2b", X"0216", X"0314", X"04c6", X"f9c4", X"0230", X"0300", X"fb97", X"f817", X"fdf8", X"fd1b", X"fed7", X"00a8", X"f9fc",
                                                        X"064b", X"fd2f", X"0785", X"01b1", X"f508", X"00de", X"fa31", X"f8f0", X"042b", X"051e", X"f962", X"0040", X"0636", X"fddf",
                                                        X"07e0", X"fe17", X"0ae2", X"fc56", X"066e", X"ff3e", X"fa42", X"0272", X"fc2b", X"00ef", X"fe62", X"007b", X"fc67", X"00bc",
                                                        X"fb6d", X"fd6f", X"0749", X"0045", X"0a87", X"fff4", X"fda4", X"fe9b", X"012b", X"0226", X"fdab", X"00cc", X"0277", X"07dd",
                                                        X"fd9d", X"003c", X"fdef", X"0140", X"0235", X"012e", X"0060", X"ffda", X"ffc1", X"002f", X"0610", X"0821", X"02c4", X"feb2",
                                                        X"04e9", X"027f", X"0494", X"0250", X"fe7d", X"03c0", X"ff89", X"0115", X"0588", X"ff43", X"0247", X"0357", X"01b8", X"05a9",
                                                        X"ff26", X"ff28", X"015b", X"000a", X"0711", X"fe1d", X"ff87", X"00a9", X"025c", X"0188", X"00ed", X"fe93", X"fc93", X"ff03",
                                                        X"0039", X"081e", X"fdc8", X"0170", X"0219", X"f529", X"ff38", X"fec1", X"0401", X"ff90", X"06e1", X"ff6d", X"fba3", X"00d0",
                                                        X"0aac", X"fd6f", X"006a", X"0648", X"01f5", X"0612", X"fb75", X"0618", X"0396", X"0017", X"ff08", X"0641", X"01d0", X"0251",
                                                        X"0bf1", X"004b", X"fcc0", X"fd88", X"01dc", X"01a5", X"ff0e", X"044e", X"fc35", X"fd8b", X"0259", X"fd96", X"0254", X"fe7f",
                                                        X"0700", X"fffb", X"03f9", X"ff11", X"05f7", X"fa65", X"029b", X"03cf", X"ff43", X"067c", X"03d8", X"043f", X"fd66", X"ffdd",
                                                        X"fbe1", X"f4f3", X"049c", X"fcd3", X"098d", X"008f", X"0c3e", X"0125", X"fdac", X"0579", X"06dd", X"06ff", X"0475", X"03b7",
                                                        X"fb28", X"ffad", X"025c", X"0017", X"04e9", X"05dd", X"06f2", X"fee0", X"0da0", X"fc17", X"0819", X"0263", X"fca5", X"fe77",
                                                        X"fbf5", X"0317", X"0456", X"fd59", X"0154", X"0137", X"0161", X"f588", X"045c", X"005d", X"0e68", X"0164", X"0547", X"0521",
                                                        X"fcb1", X"0447", X"0478", X"0233", X"0259", X"007b", X"fcc0", X"fbea", X"fe8a", X"00f2", X"02fb", X"fc60", X"0408", X"fc75",
                                                        X"fb69", X"057b", X"022a", X"feed", X"052d", X"0439", X"ffbf", X"fb5f", X"fec5", X"ff13", X"02b1", X"fecf", X"0473", X"01eb",
                                                        X"fd2d", X"fdd9", X"0124", X"0718", X"fa8b", X"fe45", X"0113", X"0306", X"08cf", X"ff8f", X"fff8", X"0268", X"0650", X"f796",
                                                        X"feb9", X"fdbc", X"00bf", X"ff10", X"fe7f", X"0429", X"fc3b", X"fe78", X"f7e4", X"fca5", X"fbb8", X"006e", X"ff69", X"fd2e",
                                                        X"0647", X"02d5", X"056d", X"ff78", X"0dac", X"ff54", X"0379", X"0628", X"0086", X"fe86", X"0030", X"01bf", X"02d4", X"0200",
                                                        X"fea7", X"0468", X"041a", X"fd21", X"0057", X"fdc3", X"fea7", X"ff6a", X"fe53", X"052b", X"0067", X"004a", X"0329", X"0116",
                                                        X"fe00", X"01db", X"fd32", X"04af", X"04f1", X"ffd1", X"04a2", X"fe30", X"0aff", X"fd77", X"0115", X"0381", X"0030", X"045d",
                                                        X"02c7", X"f4db", X"00e5", X"ff2f", X"fe85", X"0038", X"09fb", X"ff9d", X"0182", X"00df", X"ff5d", X"fb17", X"0269", X"ffc8",
                                                        X"fb0e", X"0123", X"010b", X"faac", X"fec2", X"00c4", X"fdf3", X"0231", X"099d", X"052d", X"0269", X"0085", X"f8f0", X"fb63",
                                                        X"0261", X"006c", X"f9f1", X"00a2", X"fcd3", X"fc0b", X"014f", X"031f", X"fd59", X"021f", X"06e0", X"0654", X"018c", X"005c",
                                                        X"030f", X"01e9", X"028a", X"fcc2", X"f5ea", X"0093", X"feef", X"06f3", X"fca2", X"fece", X"fee0", X"0496", X"04d0", X"03f3",
                                                        X"0423", X"ffeb", X"fc13", X"030d", X"0454", X"02d6", X"fada", X"fffa", X"02cb", X"0d38", X"fccb", X"fdd3", X"027d", X"0260",
                                                        X"0068", X"019b", X"006d", X"fb83", X"01aa", X"006e", X"040a", X"fdb1", X"f6d2", X"0039", X"fb32", X"0a28", X"01ab", X"fe97",
                                                        X"0481", X"04d3", X"0901", X"0421", X"086f", X"fcc1", X"065e", X"ff44", X"0023", X"00da", X"fd4f", X"04a3", X"fe46", X"0217",
                                                        X"fd96", X"02d3", X"fd36", X"05a9", X"0635", X"fbe8", X"05fd", X"016c", X"ffc7", X"000a", X"fd83", X"029d", X"fde3", X"0646",
                                                        X"ffcd", X"00f7", X"fc33", X"fd9e", X"fa42", X"04e1", X"003e", X"0586", X"ffda", X"febe", X"01e7", X"0109", X"ff9a", X"075d",
                                                        X"feca", X"0381", X"fed3", X"fc22", X"fe73", X"0195", X"fe33", X"fb8e", X"06a9", X"06d6", X"04b6", X"ff38", X"05d5", X"fed2",
                                                        X"0299", X"043c", X"fb5c", X"fe6f", X"00a6", X"081f", X"04a5", X"063a", X"ff5d", X"fbf1", X"0308", X"fd78", X"0a4e", X"ff2d",
                                                        X"0771", X"f6f8", X"0278", X"069e", X"fa91", X"00b1", X"fef2", X"0bb0", X"03a1", X"0346", X"fbbe", X"fe7c", X"0465", X"083c",
                                                        X"073f", X"fb84", X"f755", X"fef7", X"06c9", X"05b6", X"fe23", X"06df", X"02cc", X"0555", X"fa4f", X"fea8", X"feeb", X"023d",
                                                        X"08d6", X"027e", X"0454", X"0004", X"f4f8", X"fd39", X"fc5a", X"02ad", X"fafe", X"fe26", X"fe7e", X"fcec", X"fefa", X"00d3",
                                                        X"fe6e", X"010a", X"ff43", X"01e9", X"012b", X"0137", X"f5e9", X"0393", X"fa5b", X"0619", X"024d", X"025c", X"00f1", X"fbd1",
                                                        X"00cd", X"04e3", X"fe70", X"fc07", X"05a8", X"040f", X"0484", X"fcaf", X"f938", X"fb3c", X"fd0f", X"0598", X"fe6a", X"feb1",
                                                        X"0632", X"032b", X"fd7c", X"ffdc", X"02a0", X"02e4", X"0495", X"0673", X"0ba3", X"fc99", X"03a0", X"ffd8", X"06dd", X"0953",
                                                        X"0304", X"02f6", X"fc4e", X"0291", X"ff49", X"0354", X"0121", X"014b", X"00fa", X"0ce1", X"04f3", X"fb12", X"028f", X"f8de",
                                                        X"023d", X"06ff", X"fc9a", X"0856", X"fe4f", X"0857", X"fee3", X"033a", X"0390", X"0b65", X"0151", X"01c5", X"06be", X"fe66",
                                                        X"0842", X"015d", X"05fb", X"0403", X"0135", X"038a", X"fef6", X"0722", X"ff62", X"01ee", X"02c2", X"0468", X"08bf", X"0676",
                                                        X"0029", X"fe53", X"146b", X"fd5d", X"03a2", X"05a9", X"04a8", X"04d8", X"00a6", X"04d3", X"0124", X"0102", X"ff62", X"0467",
                                                        X"07b4", X"050e", X"04ce", X"01f6", X"071d", X"fb38", X"0444", X"08e8", X"fe9c", X"02c9", X"005b", X"0489", X"0023", X"fff6",
                                                        X"0170", X"fb0d", X"0aaf", X"02f0", X"0277", X"0010", X"fdb0", X"f8fd", X"04bf", X"083c", X"fc04", X"fdfc", X"ffdd", X"0264",
                                                        X"fe3b", X"ff54", X"fa29", X"fe96", X"02f6", X"fe7d", X"fdd9", X"0230", X"ff9c", X"01d5", X"091a", X"0a9c", X"00d3", X"ff1b",
                                                        X"0368", X"07b2", X"ff75", X"fcf7", X"ff97", X"057c", X"0399", X"0444", X"0655", X"fdd7", X"ff73", X"01d1", X"fc1a", X"0062",
                                                        X"00d3", X"fc0d", X"fdd1", X"03dd", X"fe28", X"001f", X"ff33", X"017f", X"0463", X"02c8", X"0cea", X"00d3", X"0040", X"ff90",
                                                        X"ff76", X"09f6", X"fbf3", X"0163", X"0465", X"f5ed", X"fc4d", X"02d3", X"fe48", X"0472", X"03ce", X"0318", X"02cf", X"fed2",
                                                        X"ff03", X"fa9c", X"f485", X"00e6", X"0048", X"ff7b", X"018c", X"fbc2", X"0190", X"0375", X"fc9d", X"002a", X"0e31", X"0182",
                                                        X"03bf", X"fefa", X"0d63", X"0230", X"fec6", X"05c2", X"fae2", X"0386", X"01be", X"087f", X"fd14", X"0502", X"01db", X"0080",
                                                        X"05e3", X"ffcb", X"0723", X"ffe9", X"0027", X"0217", X"02e0", X"02b6", X"00de", X"0190", X"0091", X"fe44", X"fc65", X"0153",
                                                        X"fdd0", X"fd84", X"09ed", X"01a2", X"0172", X"fecc", X"0017", X"fb99", X"05a8", X"0630", X"f9c8", X"03e3", X"007b", X"0144",
                                                        X"0135", X"0075", X"fe87", X"0182", X"0458", X"0420", X"024c", X"fd96", X"ff42", X"feb1", X"07c1", X"0785", X"fcf6", X"04aa",
                                                        X"01a1", X"ff57", X"fc10", X"ff45", X"00c8", X"fe52", X"ffef", X"0123", X"fc4a", X"ffd3", X"f7be", X"006f", X"0665", X"fd02",
                                                        X"fc66", X"02d7", X"0183", X"007d", X"0163", X"feed", X"fd2b", X"fd12", X"082c", X"0556", X"068f", X"fd5a", X"f208", X"00b8",
                                                        X"ff12", X"010f", X"01b5", X"03b7", X"0116", X"0497", X"01e7", X"02b3", X"ff8f", X"fc36", X"0466", X"0254", X"0afa", X"feef",
                                                        X"fec7", X"fce5", X"fec3", X"0031", X"f891", X"03a4", X"0554", X"011f", X"f6c7", X"02d3", X"fe86", X"08be", X"07c7", X"05c8",
                                                        X"08a1", X"fde3", X"0854", X"0322", X"f9ec", X"04c1", X"f737", X"00b2", X"fb3f", X"0887", X"f731", X"008f", X"fcab", X"fa79",
                                                        X"0ab8", X"05ca", X"039e", X"fd17", X"ff67", X"0249", X"ff41", X"04a5", X"fc0c", X"028e", X"fd86", X"04b5", X"031f", X"05c2",
                                                        X"fe0c", X"02be", X"0246", X"040e", X"081c", X"ff0c", X"fabb", X"01aa", X"0130", X"feb8", X"f443", X"fed1", X"fef5", X"fc36",
                                                        X"fa6e", X"ff60", X"0007", X"0524", X"ff85", X"05d0", X"00dc", X"fe0d", X"08d7", X"033d", X"04c5", X"0711", X"f984", X"fd89",
                                                        X"02b0", X"01af", X"fe37", X"ffca", X"01af", X"0219", X"04f3", X"023e", X"04e1", X"ff0d", X"0f00", X"007c", X"03df", X"06d8",
                                                        X"fb28", X"fdc9", X"fb61", X"0178", X"00fe", X"fe1d", X"fefd", X"f626", X"ffc6", X"0b30", X"02dd", X"01db", X"f5fc", X"fb74",
                                                        X"01ce", X"03b9", X"fe0e", X"f9b4", X"0042", X"01ae", X"005b", X"fc4a", X"0206", X"f916", X"024e", X"01b6", X"0762", X"fefb",
                                                        X"0177", X"f9e4", X"fe38", X"0241", X"fbd8", X"0691", X"ff68", X"ffcf", X"ffd9", X"ffa0", X"0362", X"01ee", X"097b", X"f7a8",
                                                        X"0656", X"fccb", X"049b", X"fa25", X"0406", X"0512", X"0014", X"02ff", X"05f1", X"ff49", X"ff7e", X"01bc", X"0055", X"033b",
                                                        X"02a5", X"ff4a", X"0549", X"fcdc", X"0758", X"0165", X"072b", X"05c0", X"fdd2", X"0789", X"fdcf", X"f5ff", X"fc91", X"ff6d",
                                                        X"fbec", X"fc71", X"0528", X"08f1", X"0245", X"fdcc", X"fa52", X"f988", X"fcb0", X"ff5d", X"0048", X"038b", X"fdd3", X"0230",
                                                        X"f748", X"019a", X"fdd0", X"0913", X"0440", X"0cf8", X"006a", X"ff1a", X"0509", X"008d", X"fadf", X"fb7e", X"fa42", X"013c",
                                                        X"fbb4", X"03d9", X"ff83", X"fe8f", X"ff5f", X"ff47", X"0643", X"0703", X"febf", X"fd23", X"fec4", X"f639", X"049e", X"fcd6",
                                                        X"fbb0", X"0703", X"009d", X"fe78", X"fd54", X"01b1", X"03d3", X"fcae", X"04ad", X"fa7a", X"0629", X"fecd", X"f956", X"fc35",
                                                        X"00a1", X"0893", X"fdf7", X"0304", X"01a9", X"fdb2", X"01bc", X"fce4", X"fffb", X"062a", X"0b66", X"fbd1", X"04d7", X"feb0",
                                                        X"faf7", X"fff6", X"fb73", X"050e", X"fe59", X"fff0", X"feac", X"fb3c", X"016b", X"007e", X"0105", X"01df", X"02c9", X"ff6a",
                                                        X"ffa8", X"00b9", X"067c", X"030b", X"05bf", X"ffa0", X"fd7f", X"019e", X"0036", X"ff82", X"f9e9", X"ffca", X"ff58", X"fa33",
                                                        X"07a2", X"fee8", X"019e", X"fe6f", X"0377", X"fba0", X"03b7", X"0403", X"fd26", X"038a", X"05d7", X"ff85", X"ff8e", X"0045",
                                                        X"fe75", X"fbf5", X"04fd", X"fba6", X"030b", X"fcfa", X"fd98", X"fd9a", X"ff45", X"fece", X"0071", X"02f9", X"02d0", X"f788",
                                                        X"0518", X"ffa6", X"fd38", X"00fe", X"0874", X"090e", X"0687", X"fb9e", X"f610", X"ff95", X"061a", X"076f", X"fdaa", X"0784",
                                                        X"fc8b", X"072c", X"0159", X"0239");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0239";
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

