-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block406.vhd
-- Created: 2024-11-04 16:44:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block406
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage53/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block406 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block406;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block406 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"f07e", X"04eb", X"0320", X"ff89", X"edde", X"0560",
                                                        X"fcc6", X"06aa", X"0ac9", X"fb6a", X"0eaf", X"fbee", X"07b4", X"e082", X"09b6", X"ed1d", X"f9bc", X"0990", X"0290", X"fd6a",
                                                        X"f985", X"fbc0", X"05cd", X"0886", X"00ee", X"f997", X"0d80", X"fbd7", X"fdfa", X"f17a", X"ff1f", X"f6e7", X"f7df", X"08a4",
                                                        X"f8ee", X"00d6", X"fef9", X"fc18", X"f504", X"096a", X"0049", X"f9bf", X"0e40", X"f803", X"f147", X"f9df", X"0285", X"fb56",
                                                        X"fc5e", X"118a", X"f62f", X"fd96", X"ffed", X"fc04", X"f487", X"0933", X"f52f", X"fe89", X"0bec", X"00e5", X"eff9", X"04e9",
                                                        X"fcf7", X"fd2c", X"0082", X"0b2a", X"f7b8", X"0178", X"01f6", X"000a", X"0034", X"0024", X"f76e", X"0061", X"0007", X"0492",
                                                        X"fb1d", X"fe50", X"fbe4", X"fc02", X"01ad", X"06f7", X"f77a", X"fe8e", X"0117", X"0186", X"0921", X"fffa", X"ee79", X"fef8",
                                                        X"fce5", X"01ed", X"fec8", X"fb07", X"ff94", X"0096", X"ff77", X"0330", X"fd0f", X"fe8e", X"05ee", X"fc9c", X"0604", X"fce8",
                                                        X"f33c", X"fded", X"fb36", X"fdf8", X"fad8", X"f81e", X"fa44", X"0728", X"0775", X"01b1", X"fc8a", X"f7be", X"06c0", X"fd7c",
                                                        X"07d6", X"f938", X"03d7", X"02b0", X"f7bb", X"fb0c", X"fde7", X"0060", X"00c4", X"0932", X"0601", X"f8e5", X"fd37", X"f29d",
                                                        X"062d", X"fb8f", X"11d7", X"f6d8", X"077c", X"fe46", X"f852", X"0694", X"fd13", X"0623", X"fdbe", X"077b", X"0738", X"f823",
                                                        X"fb00", X"fcb8", X"0549", X"fc74", X"0460", X"f368", X"03f7", X"042c", X"f513", X"fc34", X"fcef", X"01d2", X"002b", X"0426",
                                                        X"0896", X"fdeb", X"fc80", X"f816", X"0461", X"00aa", X"051a", X"f604", X"0315", X"0337", X"f574", X"facc", X"fe3b", X"020d",
                                                        X"feea", X"07e3", X"0986", X"f81a", X"003b", X"f8a1", X"fc6e", X"fc4c", X"04f8", X"fcd2", X"0982", X"0486", X"f772", X"f3a9",
                                                        X"02c9", X"fd06", X"038b", X"0608", X"00ef", X"f35b", X"faa7", X"023c", X"01ad", X"fc00", X"0114", X"0106", X"017e", X"063c",
                                                        X"fa08", X"f756", X"0cab", X"f9ad", X"07e4", X"ff97", X"fc4d", X"ff1b", X"fd4f", X"f5c2", X"f428", X"0008", X"0b36", X"feac",
                                                        X"0381", X"04e4", X"fd81", X"f9cc", X"0196", X"f6e3", X"072b", X"fbf2", X"f869", X"ff17", X"01cf", X"f826", X"f076", X"0053",
                                                        X"0a18", X"0281", X"02d1", X"038a", X"06dd", X"f41c", X"0cfe", X"fea8", X"0ad0", X"fa2a", X"faf3", X"023b", X"0283", X"fe9a",
                                                        X"f3b0", X"ff03", X"07a8", X"063e", X"01c1", X"01e5", X"0893", X"faac", X"fb35", X"f485", X"0649", X"f859", X"fa0e", X"02c5",
                                                        X"ff00", X"fe4c", X"f8e4", X"fd69", X"05d9", X"07d2", X"0598", X"fc95", X"0a93", X"facb", X"021c", X"f622", X"0701", X"f429",
                                                        X"fd33", X"0615", X"0101", X"fe5b", X"05de", X"055c", X"faac", X"08a6", X"0514", X"fee1", X"10d4", X"fd45", X"036b", X"fdb3",
                                                        X"ffa1", X"fbe7", X"f846", X"10fd", X"ff51", X"febf", X"00e1", X"038f", X"01c8", X"09f7", X"fe1b", X"00a4", X"0c94", X"fa38",
                                                        X"f7dd", X"01b7", X"fec6", X"fca7", X"f42f", X"1029", X"0604", X"fcc1", X"0408", X"ffc9", X"0397", X"07ba", X"f5f2", X"fca9",
                                                        X"0849", X"ff8d", X"fa61", X"0323", X"fc33", X"ff36", X"ff33", X"08ad", X"fb0f", X"fade", X"0066", X"0093", X"0045", X"0348",
                                                        X"fb4e", X"017a", X"076e", X"fd68", X"fbc2", X"f6c4", X"02eb", X"03f5", X"008f", X"06f6", X"fb72", X"f660", X"0029", X"fd63",
                                                        X"01e6", X"fde9", X"f371", X"0257", X"ffc8", X"005f", X"ff01", X"f87c", X"fe4f", X"04df", X"04e0", X"0260", X"fa3a", X"0465",
                                                        X"03f9", X"fd44", X"004a", X"fea7", X"f69e", X"0344", X"f60a", X"fdca", X"fa61", X"f77e", X"fd2a", X"0728", X"0598", X"fa5c",
                                                        X"02b4", X"f805", X"0586", X"fbd6", X"0572", X"f354", X"f917", X"fb54", X"f3f3", X"ff3f", X"f5fd", X"f7d1", X"fca7", X"0bd4",
                                                        X"07cc", X"fcaa", X"043d", X"f611", X"0a66", X"01cd", X"0b78", X"f99b", X"000e", X"ff56", X"f61c", X"02eb", X"f9d8", X"0998",
                                                        X"03c2", X"07ae", X"099d", X"02cb", X"ff45", X"fc6a", X"02fb", X"fbbf", X"f91e", X"f8f2", X"fe6c", X"ff9b", X"f5ff", X"01c5",
                                                        X"f84f", X"0775", X"fd11", X"094b", X"0a1e", X"fb6a", X"fe49", X"f58b", X"010b", X"0035", X"09b1", X"fa7f", X"06de", X"0179",
                                                        X"f56f", X"f7e6", X"ffc5", X"07ef", X"05d1", X"0a0f", X"03a2", X"f81b", X"01b7", X"fc1a", X"f6b4", X"fdf1", X"0420", X"f4da",
                                                        X"04cf", X"02b6", X"fa8e", X"0383", X"013e", X"fe92", X"0581", X"0597", X"03a2", X"f17c", X"fdab", X"ff74", X"f4f3", X"0159",
                                                        X"fd12", X"fd8a", X"060a", X"04e7", X"f533", X"fab2", X"0960", X"fa98", X"0a0b", X"005c", X"02db", X"f69e", X"fc6f", X"fd45",
                                                        X"fa3d", X"02a2", X"fe60", X"01f8", X"03f4", X"071b", X"00ab", X"ffb6", X"0550", X"fcda", X"0537", X"fc6d", X"ffe6", X"fe0d",
                                                        X"ff26", X"fba8", X"f781", X"01f5", X"04d7", X"0823", X"03e5", X"03d1", X"016d", X"fc3f", X"fa7b", X"0445", X"045a", X"f8f6",
                                                        X"f6b8", X"fd10", X"002e", X"f58f", X"efe9", X"ffa5", X"099c", X"092f", X"02cb", X"0209", X"0880", X"f9ac", X"01ee", X"0054",
                                                        X"0676", X"f91d", X"f8a0", X"03f6", X"fddf", X"f0e8", X"f86f", X"006e", X"fc7e", X"0707", X"0276", X"fb69", X"0cb2", X"fab1",
                                                        X"05f8", X"fcaf", X"0504", X"f6ba", X"f35d", X"0d88", X"00ce", X"02c7", X"fddb", X"fffd", X"fb1f", X"0815", X"0788", X"fd12",
                                                        X"0ed7", X"f68b", X"0141", X"0236", X"0337", X"fc88", X"f247", X"0a71", X"ff64", X"00c2", X"fffa", X"fa42", X"fbfa", X"09c0",
                                                        X"ff37", X"ff1d", X"1322", X"fb73", X"f89e", X"02d8", X"0259", X"f8f8", X"f90b", X"0789", X"024b", X"03c9", X"05f6", X"fb4f",
                                                        X"099e", X"0b76", X"0471", X"fad0", X"0742", X"056a", X"f97b", X"03f5", X"fbf5", X"fbc5", X"fed8", X"06c2", X"fbf9", X"f305",
                                                        X"07cb", X"fd9f", X"f9aa", X"004c", X"f776", X"fde1", X"048a", X"04b7", X"fd5f", X"062f", X"ffb3", X"01b1", X"0428", X"0418",
                                                        X"f66b", X"f0d9", X"0a3c", X"fdd9", X"00d5", X"fee9", X"f374", X"0308", X"fe8e", X"0b79", X"f7db", X"fc73", X"fd97", X"07fc",
                                                        X"0549", X"07e2", X"f9ab", X"feaa", X"0480", X"0051", X"019e", X"fe2e", X"f6d2", X"fec1", X"f5c6", X"fee7", X"f966", X"fb49",
                                                        X"fc2c", X"0b86", X"0498", X"0445", X"fc15", X"fe15", X"07f9", X"f978", X"075d", X"0151", X"fa80", X"fd45", X"f42f", X"0350",
                                                        X"fad0", X"fefc", X"fd68", X"0ef0", X"0459", X"fc54", X"050d", X"f78c", X"0443", X"fcdd", X"f30c", X"f7f2", X"0028", X"0050",
                                                        X"f15c", X"0046", X"fc09", X"fdd9", X"fd27", X"09ae", X"05a1", X"f4c2", X"0150", X"fb27", X"0657", X"fc79", X"fd0d", X"f59e",
                                                        X"0387", X"fd82", X"f0b6", X"010f", X"fcb4", X"03e4", X"007d", X"0a8c", X"0eb5", X"f53a", X"0241", X"fb98", X"0351", X"ffc3",
                                                        X"12b4", X"f69a", X"0789", X"05a8", X"f8b0", X"010a", X"fe28", X"fc37", X"0280", X"0b20", X"09be", X"f5bb", X"fec6", X"f45d",
                                                        X"f9f5", X"00f7", X"03a1", X"f9cf", X"0c8e", X"ff2c", X"f553", X"0567", X"0274", X"ff0c", X"04ae", X"01df", X"044b", X"f502",
                                                        X"030a", X"fccb", X"f437", X"027d", X"faa4", X"fc2d", X"0a4b", X"03b7", X"fe73", X"fb65", X"0245", X"efb0", X"0b7e", X"ff37",
                                                        X"fe85", X"0202", X"fdb3", X"fef7", X"f394", X"0606", X"f839", X"068f", X"fcc7", X"0482", X"05ea", X"fb42", X"0118", X"f996",
                                                        X"06c8", X"fc7f", X"ff57", X"ffc2", X"00c7", X"f2fd", X"f550", X"00a9", X"ffa7", X"0cd0", X"fce5", X"0445", X"0456", X"fcc4",
                                                        X"08fd", X"ff27", X"0678", X"0103", X"f533", X"fa9c", X"01e4", X"fb7d", X"fd86", X"feb2", X"037e", X"0971", X"00e0", X"ff2a",
                                                        X"0721", X"faa0", X"055d", X"fb04", X"085e", X"fbb3", X"f7ed", X"feed", X"0988", X"0071", X"fcf1", X"fef4", X"0d85", X"090a",
                                                        X"fb63", X"fa87", X"0bd7", X"fc6b", X"091c", X"039d", X"03b5", X"f923", X"f61a", X"03be", X"0331", X"00fc", X"fdb6", X"fd83",
                                                        X"f8df", X"0ec9", X"07a7", X"fcc3", X"0d8d", X"02df", X"01a8", X"fc2b", X"04b7", X"fa09", X"f61e", X"074a", X"04b7", X"0364",
                                                        X"fe10", X"fdd8", X"f60e", X"0a01", X"0d31", X"f910", X"0c14", X"fe11", X"fdb4", X"fd26", X"0517", X"f8f4", X"f899", X"0923",
                                                        X"0506", X"fd6d", X"02d7", X"fbf2", X"0cb0", X"077f", X"fa47", X"fd07", X"0d69", X"fd8d", X"fee4", X"09bb", X"fa19", X"ff49",
                                                        X"fe23", X"0728", X"fde5", X"f6d7", X"0366", X"fb3a", X"fb8e", X"04d5", X"f8a6", X"f9c4", X"0352", X"0394", X"f841", X"ff05",
                                                        X"f999", X"00e3", X"fb95", X"0395", X"fa36", X"0198", X"0214", X"fd53", X"faa1", X"00d9", X"f89e", X"002a", X"ff06", X"04ed",
                                                        X"fc2a", X"0495", X"fd8a", X"08ba", X"0988", X"0692", X"f88d", X"f8e0", X"057d", X"fd73", X"059c", X"ff81", X"f843", X"02f0",
                                                        X"facf", X"fca2", X"fed0", X"f312", X"fb36", X"07f8", X"065d", X"0193", X"f40a", X"faff", X"0851", X"fd53", X"0130", X"fd1e",
                                                        X"fdab", X"ff1e", X"fa64", X"fcf4", X"fe06", X"fed0", X"f9a3", X"0abc", X"07d9", X"f99b", X"fb3b", X"f96b", X"05ee", X"fa3a",
                                                        X"05ba", X"f42f", X"0051", X"fcd5", X"f294", X"fe17", X"032d", X"07a4", X"0213", X"081e", X"0b67", X"fc35", X"003c", X"fa7e",
                                                        X"06c9", X"fe86", X"fd84", X"fc1f", X"0446", X"0163", X"f384", X"fc08", X"feee", X"fe13", X"f83e", X"0a31", X"0bcd", X"f3d4",
                                                        X"fc11", X"f9a6", X"05d8", X"00bb", X"ff15", X"fd9b", X"0b46", X"ff0d", X"f5cc", X"fe9b", X"0722", X"02c5", X"0342", X"0885",
                                                        X"0355", X"f3e1", X"0354", X"fef4", X"025d", X"00ac", X"fae6", X"fd48", X"0733", X"0248", X"f7ca", X"fcc0", X"04ee", X"f988",
                                                        X"07ef", X"0264", X"079f", X"f851", X"01cf", X"f6f8", X"f81a", X"020a", X"fd78", X"fb94", X"0497", X"0545", X"f828", X"fc54",
                                                        X"07d7", X"ff08", X"07c0", X"03a8", X"00ad", X"fbd7", X"05f5", X"fb93", X"f579", X"ffea", X"0726", X"01dc", X"04ad", X"0182",
                                                        X"036b", X"fa58", X"078e", X"fce2", X"090c", X"0184", X"f867", X"feed", X"00de", X"fa0f", X"f942", X"ff02", X"0092", X"04e6",
                                                        X"0442", X"033c", X"0a14", X"f388", X"fe31", X"f9cb", X"0733", X"fc4b", X"f96d", X"ff8d", X"0116", X"faca", X"fa13", X"fd29",
                                                        X"fd38", X"080f", X"024e", X"fcb7", X"08ed", X"fe9a", X"07ec", X"f411", X"05e9", X"f7fd", X"f6bf", X"0633", X"0241", X"fe7a",
                                                        X"004d", X"ff0b", X"0bb6", X"0afb", X"0816", X"ffd5", X"0cf6", X"f749", X"03ef", X"f552", X"0664", X"f7bc", X"f8f7", X"073b",
                                                        X"fa48", X"021a", X"000d", X"ff1a", X"01f3", X"06f5", X"044f", X"fc78", X"0b32", X"f8e7", X"fe5a", X"f072", X"008a", X"f77f",
                                                        X"fc9d", X"06e5", X"feb0", X"fd6e", X"fdb1", X"fc3b", X"0085", X"0803", X"041c", X"fef9", X"0aa2", X"fcbb", X"0034", X"fabe",
                                                        X"fc07", X"f8a1", X"0109", X"0d49", X"f970", X"01c6", X"010c", X"fef5", X"03e8", X"085a", X"0090", X"fbc6", X"0a76", X"f65f",
                                                        X"f71b", X"f503", X"ff20", X"fee6", X"fe23", X"0d40", X"f8bf", X"fbfa", X"067d", X"fd5b", X"fe0b", X"ffb3", X"f8a9", X"fd1d",
                                                        X"06fa", X"fb90", X"002e", X"efea", X"ff07", X"fcc3", X"00bb", X"07ae", X"f815", X"f7f3", X"0701", X"fffa", X"ffe7", X"fe69",
                                                        X"f831", X"010f", X"0121", X"004b", X"f7ff", X"f4b3", X"ffcc", X"02d1", X"0358", X"049c", X"f465", X"065d", X"0b4e", X"fce2",
                                                        X"15bd", X"03bd", X"f83c", X"0366", X"f863", X"fa7b", X"fcab", X"f9f6", X"f968", X"0488", X"04c0", X"054a", X"f818", X"0259",
                                                        X"0257", X"fd0e", X"fbb7", X"f758", X"f72a", X"fdf3", X"f405", X"fc88", X"fb1e", X"073d", X"fdbf", X"02d0", X"090d", X"ff2e",
                                                        X"fa0c", X"fd97", X"05c4", X"fd1a", X"0333", X"f177", X"fd12", X"ff77", X"f6e8", X"0014", X"fb57", X"0804", X"f89d", X"0960",
                                                        X"0821", X"f792", X"ff7f", X"fc21", X"0304", X"feba", X"06ac", X"f34e", X"02fb", X"0212", X"fa57", X"010a", X"fb60", X"09ae",
                                                        X"00bd", X"069f", X"0879", X"faf8", X"04a2", X"f797", X"0385", X"fd38", X"ff04", X"f7f8", X"0508", X"fc2d", X"fb6d", X"faa8",
                                                        X"fcd0", X"08a6", X"0171", X"03d6", X"09a7", X"f16b", X"fc7c", X"fb13", X"fb23", X"0033", X"04a3", X"fb86", X"0792", X"fe8b",
                                                        X"f76a", X"fbbe", X"041d", X"0109", X"06c9", X"0089", X"039e", X"f5bb", X"02f9", X"010b", X"f80c", X"017e", X"044d", X"fcf6",
                                                        X"07cd", X"feaf", X"fb53", X"fe6d", X"046e", X"f4e0", X"05b5", X"049c", X"005a", X"0129", X"0226", X"f822", X"f318", X"fdd9",
                                                        X"fdf1", X"ff3a", X"04f8", X"0008", X"ff95", X"fae4", X"0166", X"fec5", X"076f", X"fce5", X"ffdf", X"f7ee", X"fed8", X"feb9",
                                                        X"ef21", X"fef6", X"0171", X"0628", X"01b1", X"fbfd", X"03c6", X"fa8b", X"028b", X"fff9", X"052f", X"f5e6", X"fc5f", X"fca9",
                                                        X"00f0", X"019b", X"f36e", X"ff0d", X"0a07", X"0af5", X"fe40", X"fcd3", X"072d", X"f83e", X"00e2", X"002f", X"02ce", X"f39e",
                                                        X"f785", X"0734", X"fc68", X"f8c3", X"feb9", X"00d4", X"fb78", X"04e9", X"0099", X"f7c2", X"10dd", X"ff56", X"0351", X"f8cc",
                                                        X"02cf", X"fa36", X"fa48", X"0b18", X"01c2", X"f898", X"f982", X"ff66", X"069a", X"0a1b", X"04cb", X"00fa", X"07c7", X"0428",
                                                        X"fa1e", X"fd18", X"0081", X"f5d6", X"fe66", X"0ccd", X"0049", X"f944", X"0192", X"fed9", X"fc72", X"0d99", X"fffe", X"002c",
                                                        X"0fbe", X"fb73", X"f8b5", X"fc02", X"fb9d", X"ff13", X"ff2d", X"0b3a", X"fa2c", X"f7e0", X"0251", X"0068", X"05c3", X"0624",
                                                        X"f92a", X"fbf5", X"0dd9", X"fd70", X"fd3e", X"00e8", X"fba7", X"fed4", X"fd3c", X"06b0", X"f6b3", X"feea", X"fd8b", X"00f0",
                                                        X"f85f", X"03c2", X"fecf", X"fd58", X"031c", X"fdf9", X"ff9a", X"fcad", X"fafb", X"ffee", X"0492", X"05da", X"f9af", X"fadb",
                                                        X"03bf", X"ffd5", X"0215", X"0025", X"f429", X"fb64", X"fa84", X"fa96", X"f99e", X"0294", X"fc38", X"ffe3", X"03d9", X"00dc",
                                                        X"01f3", X"f5db", X"08bc", X"fcae", X"061c", X"f7e2", X"ed6f", X"00af", X"faad", X"088f", X"f83b", X"fef2", X"faa2", X"08bf",
                                                        X"0839", X"fda2", X"017f", X"03ce", X"04ed", X"fb9e", X"06f4", X"f610", X"f583", X"00c0", X"fcc8", X"009d", X"f8fb", X"078c",
                                                        X"f509", X"0d12", X"0c45", X"005d", X"007b", X"fe71", X"006b", X"ff4f", X"0433", X"f5d2", X"075d", X"0282", X"f567", X"025a",
                                                        X"fa06", X"02a6", X"00ec", X"0b84", X"0b69", X"fa93", X"fd2e", X"faac", X"078d", X"fed4", X"0c2e", X"f819", X"0918", X"fdb9",
                                                        X"f36a", X"01d2", X"f71a", X"0a44", X"047b", X"0987", X"0a42", X"f54c", X"fd94", X"ee17", X"0033", X"00c7", X"02c1", X"f5ba",
                                                        X"006a", X"ff6f", X"f353", X"feb6", X"fef0", X"02fd", X"ffa9", X"0934", X"0e50", X"f577", X"fecd", X"f85b", X"f5d6", X"0633",
                                                        X"03e1", X"f9e6", X"ffa1", X"015b", X"fa6b", X"fcfb", X"0842", X"0346", X"0511", X"00ec", X"ff72", X"f998", X"fe92", X"fa58",
                                                        X"f3dd", X"0113", X"fe4c", X"ffea", X"046a", X"009a", X"fc68", X"fb61", X"063b", X"f33e", X"0aa3", X"ffa0", X"02a2", X"f44d",
                                                        X"051b", X"f75d", X"fd1a", X"0156", X"f55c", X"00f0", X"0043", X"040f", X"0315", X"fc7a", X"ffd8", X"00f1", X"04b2", X"fda1",
                                                        X"fd65", X"0021", X"f94b", X"fccf", X"f598", X"0024", X"f08b", X"0533", X"0197", X"01f4", X"0794", X"f359", X"fe26", X"f4e7",
                                                        X"0312", X"fbeb", X"fad6", X"fdbc", X"0659", X"f79c", X"efe1", X"02aa", X"ff85", X"08cf", X"0561", X"0185", X"099f", X"f707",
                                                        X"01a6", X"fe1d", X"070a", X"fc13", X"f775", X"034f", X"0396", X"037a", X"fd10", X"fe26", X"f297", X"0886", X"ff1a", X"fc33",
                                                        X"0afd", X"fa82", X"033e", X"fbaa", X"020d", X"f77c", X"f9f7", X"0d2b", X"fde7", X"fba1", X"010d", X"00db", X"f8f3", X"03fc",
                                                        X"08e1", X"f984", X"091e", X"fe50", X"0534", X"01ea", X"0035", X"f84f", X"fa97", X"0959", X"ff37", X"02cb", X"04a3", X"fd15",
                                                        X"009a", X"0840", X"fdb8", X"ff07", X"0bfa", X"fc53", X"000b", X"06f2", X"fd56", X"fc36", X"f711", X"07a3", X"feff", X"ffad",
                                                        X"05a5", X"ff60", X"fa98", X"066b", X"ffcd", X"fc55", X"0b8f", X"00b1", X"fb33", X"ff7a", X"ffc2", X"fb94", X"0108", X"05d1",
                                                        X"fe66", X"00d8", X"0a9f", X"fe59", X"01db", X"049b", X"fdef", X"012d", X"058c", X"024d", X"fc0e", X"fdf9", X"00ac", X"01f6",
                                                        X"ffd1", X"0aed", X"f97c", X"fc10", X"083b", X"fcca", X"0155", X"ffad", X"f971", X"01a7", X"ff46", X"0409", X"fccf", X"f5af",
                                                        X"ff41", X"04e9", X"0594", X"0d2a", X"fb83", X"fbd3", X"0671", X"fe5d", X"1146", X"01dd", X"fb5e", X"0764", X"00d2", X"fa19",
                                                        X"f822", X"0383", X"003b", X"0764", X"04f7", X"0368", X"fc08", X"f9fb", X"0a1a", X"fe81", X"058a", X"f9f8", X"020f", X"042d",
                                                        X"f827", X"015e", X"fc67", X"faf3", X"f877", X"0b3c", X"0a34", X"00f7", X"fb2e", X"feda", X"06e0", X"ff99", X"0a1b", X"f4e3",
                                                        X"0a4e", X"00aa", X"f3c2", X"033f", X"fd24", X"0c09", X"0132", X"0b2b", X"0f88", X"fb4a", X"042f", X"fcbf", X"09bc", X"ff0b",
                                                        X"0a43", X"f70f", X"08a1", X"01bd", X"f788", X"0548", X"fbbe", X"074f", X"03d8", X"0e1f", X"0db5", X"fadb", X"022f", X"f784",
                                                        X"055f", X"fb9d", X"fa69", X"f3a1", X"0478", X"0061", X"f131", X"fabe", X"02d0", X"0796", X"fe79", X"0b1d", X"0c18", X"fc27",
                                                        X"013b", X"fd19", X"fda1", X"01da", X"0e14", X"f852", X"0651", X"00d6", X"f62b", X"003e", X"0459", X"fa43", X"0980", X"089c",
                                                        X"031c", X"fd7d", X"05c3", X"fa34", X"f43f", X"0300", X"1273", X"ff7a", X"0273", X"fffe", X"fec2", X"fc45", X"f78c", X"f8c5",
                                                        X"0724", X"03c5", X"ffc5", X"fda9", X"0188", X"f7bb", X"f60b", X"ffff", X"051a", X"fc1c", X"062a", X"02b0", X"002e", X"f2d3",
                                                        X"fe50", X"fd0e", X"09dd", X"fc6b", X"fc6e", X"001f", X"fd42", X"fbfb", X"f105", X"fef4", X"09e3", X"08bf", X"fd08", X"0195",
                                                        X"033b", X"fd48", X"05ab", X"fcae", X"060a", X"f669", X"fc58", X"03ec", X"fe88", X"f9e6", X"f681", X"fdda", X"0bbe", X"048f",
                                                        X"ff5b", X"fea1", X"0c1d", X"f7c8", X"0464", X"f67c", X"08fe", X"f9ba", X"fac5", X"fffb", X"fcb6", X"f816", X"fd6b", X"fc06",
                                                        X"0706", X"0873", X"ff7e", X"00e1", X"0986", X"fbf9", X"fd7e", X"ee71", X"0375", X"f936", X"f895", X"0923", X"fb19", X"f8b8",
                                                        X"fd4e", X"005a", X"07b1", X"0cfd", X"023a", X"fc9d", X"0df3", X"0210", X"0007", X"fea7", X"ffb2", X"f6bb", X"f22b", X"066d",
                                                        X"02cc", X"fc46", X"06e1", X"fb7d", X"012a", X"0c06", X"febc", X"fdf4", X"0ce5", X"ff12", X"004b", X"0554", X"0253", X"fced",
                                                        X"f8ab", X"0bb3", X"fec3", X"01da", X"01d6", X"006d", X"06bb", X"0450", X"0028", X"fb6f", X"08c7", X"0355", X"f688", X"028e",
                                                        X"fe91", X"0182", X"fd3a", X"09bb", X"f9ce", X"f777", X"0529", X"fcec", X"fde6", X"0255", X"ff46", X"fa21", X"04c9", X"035b",
                                                        X"fc21", X"fa18", X"fd98", X"020b", X"0666", X"0976", X"fb03", X"fef8", X"052e", X"0006", X"ff9d", X"0172", X"fa13", X"feef",
                                                        X"0066", X"ffdb", X"fec6", X"f57e", X"0378", X"04d2", X"0574", X"0a85", X"f75e", X"f5f1", X"0330", X"fcf9", X"005a", X"ff38",
                                                        X"fbe4", X"0583", X"004a", X"ffb6", X"fa53", X"f94c", X"02e7", X"0b1d", X"0b8a", X"05a8", X"033d", X"fca3", X"0cfd", X"fe6d",
                                                        X"0fe6", X"fa2e", X"f763", X"ffd5", X"f05e", X"0402", X"0417", X"04c5", X"fc63", X"0a8a", X"0e77", X"fdb5", X"f9da", X"ff53",
                                                        X"0bbd", X"fba5", X"09e1", X"f456", X"fc48", X"046e", X"f35b", X"fb1b", X"ffb7", X"0916", X"00ef", X"0b04", X"0c98", X"f5bb",
                                                        X"fbfd", X"ee6d", X"06cb", X"fd78", X"0122", X"f696", X"06b9", X"fe73", X"f3f5", X"00e5", X"f9e6", X"026c", X"ff16", X"0ea4",
                                                        X"0dd9", X"f9c8", X"0127", X"f9b6", X"0084", X"fbf9", X"f940", X"f865", X"0bb8", X"fcdf", X"f297", X"fcdb", X"f68c", X"fc5b",
                                                        X"05d4", X"0832", X"063e", X"fa3d", X"f736", X"fb66", X"f274", X"051a", X"f68d", X"f8d3", X"0e39", X"00ab", X"fa7b", X"00c9",
                                                        X"feea", X"ed95", X"0ea7", X"fddd");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"fddd";
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

