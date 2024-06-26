-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block429.vhd
-- Created: 2023-08-04 11:27:26
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block429
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage74/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block429 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block429;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block429 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"ec46", X"26cb", X"c5b7", X"057b", X"fc6f", X"eac6",
                                                        X"f79a", X"1b18", X"0172", X"e3ef", X"c680", X"072f", X"f4ad", X"ebc4", X"c97e", X"ea7d", X"f4f4", X"f636", X"0c47", X"ff23",
                                                        X"f1bd", X"e612", X"0ef7", X"effa", X"f73a", X"ed4f", X"fa4e", X"feee", X"fb34", X"ed63", X"fe16", X"f60f", X"04bd", X"08df",
                                                        X"1f1f", X"e995", X"e4ec", X"0443", X"0d44", X"030d", X"ea05", X"0024", X"226f", X"04d3", X"0901", X"0b46", X"f889", X"f5ae",
                                                        X"f8f8", X"1874", X"e5c7", X"07a1", X"eed3", X"09d5", X"fc5e", X"0533", X"f321", X"f8f5", X"10a7", X"1847", X"0ed4", X"171f",
                                                        X"0b48", X"f424", X"0d3f", X"0988", X"eadd", X"ee04", X"051a", X"1521", X"f84c", X"12a2", X"09e8", X"ed65", X"f774", X"184f",
                                                        X"075d", X"f20d", X"ef8a", X"0537", X"1321", X"fb97", X"d6d1", X"efd7", X"f2e6", X"1481", X"e681", X"e8a5", X"ea9a", X"120b",
                                                        X"eee2", X"fbab", X"1185", X"d852", X"021f", X"0a15", X"0b59", X"11d3", X"f23e", X"f10d", X"0ddc", X"1f03", X"e571", X"13dd",
                                                        X"0425", X"1da4", X"0cd0", X"0068", X"fb8b", X"e778", X"fc7c", X"eec3", X"fc67", X"040d", X"02c8", X"ee37", X"f6bc", X"fe9e",
                                                        X"d2fd", X"15ea", X"dab5", X"16f3", X"f51e", X"004b", X"de1d", X"019f", X"fa56", X"0e83", X"0b10", X"fd39", X"efa0", X"f804",
                                                        X"fa9e", X"f75a", X"e17b", X"fec5", X"f5c2", X"203e", X"fd51", X"fb01", X"0110", X"06a5", X"f0ba", X"1160", X"fc2f", X"f30f",
                                                        X"ed98", X"02e8", X"13e9", X"1264", X"0052", X"fd3c", X"f738", X"20a6", X"e7c3", X"044e", X"16b9", X"eda7", X"082f", X"01f8",
                                                        X"1d22", X"12c3", X"166d", X"0946", X"fac5", X"ebce", X"132f", X"05bf", X"eae2", X"e6ac", X"fc62", X"0a25", X"f3e9", X"f368",
                                                        X"fe55", X"f55c", X"0f4a", X"dc92", X"e289", X"e5b2", X"fde6", X"f003", X"01da", X"ef3c", X"f498", X"0ca4", X"282c", X"027c",
                                                        X"24df", X"ff35", X"049d", X"f628", X"0a24", X"08a8", X"f356", X"f9ca", X"fd98", X"0509", X"05cc", X"f48c", X"0e47", X"0791",
                                                        X"1152", X"15b4", X"f973", X"ef1a", X"0289", X"0295", X"f71e", X"113c", X"27f3", X"0cab", X"ee9b", X"f973", X"f8dc", X"1d41",
                                                        X"f3f8", X"05db", X"0670", X"09f2", X"053e", X"13fd", X"0bcb", X"0005", X"f709", X"f855", X"1e9c", X"ee0a", X"049f", X"e7a8",
                                                        X"efcc", X"1c18", X"f587", X"f1e4", X"db00", X"fc3c", X"1bc4", X"e625", X"e84c", X"04f5", X"f6f7", X"107b", X"e409", X"f575",
                                                        X"f628", X"f323", X"e2ef", X"2ee3", X"ea11", X"ff43", X"f219", X"0c65", X"ec21", X"fef5", X"e564", X"04d1", X"f746", X"f976",
                                                        X"ed96", X"f7b2", X"e900", X"0481", X"05d5", X"0441", X"ff8e", X"f73e", X"d2a7", X"009c", X"ffe7", X"ff2f", X"ec69", X"fda1",
                                                        X"f522", X"f249", X"14a5", X"f8c9", X"f915", X"01d0", X"1278", X"1b86", X"ee4f", X"ec21", X"e776", X"fd1b", X"fcec", X"f912",
                                                        X"f0cd", X"e9d5", X"fca3", X"076c", X"f7c9", X"0ef0", X"e496", X"fd17", X"12d1", X"f180", X"f608", X"f66b", X"f9a5", X"1209",
                                                        X"0cc7", X"0b70", X"ff9d", X"f894", X"0292", X"fc14", X"045e", X"0203", X"0094", X"18ca", X"01f9", X"ef14", X"f4d1", X"1691",
                                                        X"089c", X"eee4", X"01b0", X"089e", X"0ef4", X"e90e", X"f274", X"eee4", X"1ec0", X"0f8a", X"f3f4", X"0d9a", X"1ef5", X"0c85",
                                                        X"f5e9", X"0673", X"23c8", X"f3cf", X"fe22", X"ffc5", X"03f4", X"0482", X"05f1", X"094f", X"e048", X"0783", X"fb52", X"f0c7",
                                                        X"0a4b", X"f324", X"0312", X"00ab", X"05e1", X"fc85", X"023e", X"053b", X"f3e2", X"1073", X"11f6", X"ee22", X"1b97", X"0ed7",
                                                        X"ff25", X"02ab", X"c9d2", X"ef93", X"f8b1", X"130e", X"fdb8", X"0838", X"0f34", X"10d4", X"efd6", X"241a", X"0c1b", X"ec45",
                                                        X"f53a", X"f70a", X"06bd", X"0147", X"c41b", X"eebf", X"dea3", X"193b", X"f104", X"0810", X"fed3", X"f8f4", X"f825", X"1d90",
                                                        X"fdcc", X"12ef", X"e97e", X"cbfa", X"ffd6", X"0ad6", X"def2", X"0314", X"172d", X"10ed", X"db4f", X"f530", X"ef64", X"1070",
                                                        X"edd4", X"fdb6", X"0d0f", X"05fb", X"de9d", X"ef6b", X"0f08", X"187f", X"f70c", X"040d", X"0c87", X"009a", X"ffb7", X"16f5",
                                                        X"f9d2", X"e81f", X"0976", X"0544", X"fd2f", X"021c", X"0226", X"0496", X"2038", X"0612", X"0a69", X"e555", X"f560", X"deeb",
                                                        X"18c2", X"0c45", X"013c", X"fe60", X"0ca5", X"f6f7", X"154b", X"f9e8", X"06a3", X"ed52", X"edd9", X"04e6", X"17d0", X"ed96",
                                                        X"014c", X"f00a", X"21d3", X"05ae", X"074a", X"fd0d", X"1b72", X"0234", X"0312", X"fba8", X"e368", X"0530", X"e560", X"00cc",
                                                        X"0ac3", X"0e4c", X"fcca", X"11a7", X"1bf2", X"15fc", X"ffeb", X"fcdd", X"0f24", X"f327", X"08c7", X"0fb4", X"0f22", X"f6ac",
                                                        X"0248", X"05ef", X"0641", X"f863", X"fe3b", X"0bb4", X"0802", X"f6db", X"0a2c", X"f6ed", X"fb9d", X"f61b", X"03e8", X"0a8b",
                                                        X"02ec", X"e8dc", X"f0ee", X"e6d0", X"fd20", X"fbbe", X"2160", X"ef28", X"d4a8", X"fb4c", X"f212", X"1eb6", X"0296", X"18a0",
                                                        X"f58c", X"1edd", X"1535", X"f673", X"094a", X"ee01", X"002c", X"0971", X"f321", X"f279", X"e8ab", X"fea1", X"094d", X"0113",
                                                        X"d845", X"0586", X"e9e2", X"fa6f", X"0b99", X"020f", X"0404", X"fbad", X"f7e7", X"12ef", X"0ab2", X"f6c9", X"d96e", X"ef03",
                                                        X"eb57", X"f13d", X"c7c7", X"ef93", X"171c", X"1c2d", X"12f7", X"03a5", X"0550", X"f4e8", X"04d7", X"f981", X"e1ce", X"e7f5",
                                                        X"e882", X"076d", X"fa96", X"f6bd", X"f500", X"e2a4", X"f52e", X"1d4d", X"c6d2", X"09f6", X"f907", X"f7a7", X"fcc0", X"04c7",
                                                        X"1cff", X"f84b", X"0045", X"0fd4", X"0102", X"eed8", X"f651", X"fc8e", X"f145", X"1222", X"15e0", X"0b55", X"ef2e", X"1234",
                                                        X"0319", X"f9a8", X"0d36", X"e7ad", X"0932", X"07e3", X"f7e6", X"194a", X"0c7d", X"ff3e", X"058e", X"18bf", X"03f2", X"014d",
                                                        X"e750", X"0d71", X"197e", X"1333", X"e0be", X"f7af", X"1852", X"14b5", X"01e4", X"0cf0", X"12a8", X"0c4d", X"02b9", X"0f06",
                                                        X"e7df", X"0a53", X"ff3e", X"1936", X"fc2b", X"e919", X"f5b0", X"f0e3", X"15f9", X"125b", X"08ed", X"1445", X"011b", X"0618",
                                                        X"03ae", X"051e", X"fdac", X"fbff", X"ff22", X"f9b7", X"d569", X"ebd7", X"ea7f", X"0252", X"00ff", X"ffaa", X"101e", X"e234",
                                                        X"e6cf", X"fe86", X"19f4", X"f322", X"f183", X"f65c", X"02c0", X"13be", X"d77b", X"f72b", X"0d22", X"ed85", X"da27", X"e627",
                                                        X"e60d", X"fb00", X"f16b", X"065b", X"0d00", X"fca2", X"f42f", X"0080", X"f9ad", X"245a", X"db67", X"06e7", X"093e", X"05d3",
                                                        X"e4af", X"fb7f", X"fe91", X"f51c", X"f241", X"ff66", X"20c0", X"08f4", X"02ef", X"f363", X"1caf", X"1f83", X"ddc4", X"0740",
                                                        X"0274", X"02e2", X"135b", X"0060", X"fc35", X"0a24", X"fefe", X"075b", X"f409", X"18f8", X"fa0b", X"09a9", X"f10c", X"ef45",
                                                        X"0b37", X"f46c", X"efde", X"1b77", X"f361", X"e6f0", X"0a01", X"1b1b", X"1305", X"06f8", X"fc3c", X"ef1f", X"063d", X"0f01",
                                                        X"e8be", X"efe2", X"0b67", X"fe3e", X"05f7", X"03ca", X"10ac", X"fb48", X"0759", X"fce8", X"fe0a", X"1165", X"12f0", X"0fe5",
                                                        X"f447", X"069d", X"0d01", X"f9fc", X"0808", X"f16a", X"fba5", X"03ca", X"1ccc", X"090e", X"0359", X"02e3", X"f412", X"f80d",
                                                        X"0d5c", X"f7eb", X"035d", X"f113", X"f229", X"09de", X"111f", X"e7b1", X"2207", X"1b27", X"071b", X"e72c", X"fe29", X"039b",
                                                        X"04f1", X"03ec", X"0102", X"fda7", X"f3e5", X"0055", X"ea0b", X"0712", X"0ff2", X"fab4", X"01d7", X"0de2", X"02ef", X"fecb",
                                                        X"e324", X"f387", X"fd21", X"07b8", X"f3e9", X"1ff5", X"e7f0", X"de72", X"0cdc", X"f78e", X"f19a", X"1107", X"e4bc", X"067f",
                                                        X"d1a7", X"09fe", X"eb56", X"067e", X"feaf", X"03d6", X"fbb3", X"16e0", X"e35a", X"f08f", X"f0b7", X"fbaf", X"ce73", X"fc1a",
                                                        X"26bd", X"eb42", X"cfc1", X"01d3", X"09e9", X"04d6", X"f431", X"f198", X"04ce", X"169b", X"e855", X"1060", X"fda6", X"f576",
                                                        X"f206", X"1aed", X"1719", X"f8e6", X"d117", X"1788", X"f922", X"f0f4", X"da85", X"f816", X"fab2", X"1f07", X"ed5b", X"fd9a",
                                                        X"fec8", X"fad3", X"f11c", X"09e7", X"f471", X"f44d", X"f1e5", X"ff02", X"fe68", X"ff88", X"ee65", X"0169", X"0bbe", X"e254",
                                                        X"dfeb", X"11ea", X"fd1f", X"076d", X"1935", X"157d", X"27e9", X"ff75", X"0324", X"0d6c", X"f212", X"03a0", X"f293", X"0e45",
                                                        X"0137", X"0e16", X"f5f8", X"fdc7", X"1a3c", X"148e", X"083f", X"12c1", X"e2ce", X"0577", X"16b0", X"e629", X"060a", X"061d",
                                                        X"f9b4", X"f0a9", X"04c2", X"0f3f", X"f85e", X"1c13", X"04ad", X"ff0d", X"08fb", X"e285", X"02fa", X"eae3", X"0ca1", X"06de",
                                                        X"08ba", X"11fa", X"14a7", X"f46d", X"fcbd", X"14ec", X"1a32", X"10c6", X"fa50", X"16da", X"f804", X"f31e", X"f5ff", X"fa5b",
                                                        X"fa92", X"0239", X"f6ef", X"08a3", X"f65a", X"0786", X"1b07", X"0eb2", X"fe60", X"1414", X"1aef", X"344c", X"de86", X"f87e",
                                                        X"f3f3", X"26c2", X"f6c8", X"f027", X"ef19", X"109e", X"fcab", X"197a", X"ee40", X"1628", X"d867", X"ffaf", X"0202", X"073a",
                                                        X"caff", X"f7e7", X"e71e", X"f936", X"d46f", X"0458", X"f4df", X"0d46", X"f8b7", X"fea3", X"1110", X"104a", X"dcc0", X"09d4",
                                                        X"095a", X"135f", X"c3d5", X"f807", X"03d6", X"074d", X"e9d2", X"06c4", X"f1b3", X"0611", X"f0fd", X"f783", X"1249", X"f492",
                                                        X"1787", X"e353", X"edd4", X"1444", X"faf8", X"0036", X"13d6", X"feb0", X"ec0e", X"f0ad", X"e8eb", X"eda5", X"ff71", X"fb85",
                                                        X"0393", X"177e", X"e08c", X"0bb1", X"093a", X"219d", X"00c0", X"08f0", X"f12b", X"fc50", X"03f3", X"f12b", X"f954", X"0159",
                                                        X"fd60", X"fea3", X"1b7a", X"06ac", X"1553", X"0578", X"e972", X"0c21", X"04e6", X"e92d", X"0d98", X"2108", X"100f", X"faef",
                                                        X"0efb", X"fd2a", X"14cc", X"15f1", X"1220", X"152f", X"f0dc", X"ef3c", X"e605", X"09a5", X"07db", X"10b2", X"e1f7", X"f384",
                                                        X"fcfd", X"1e0b", X"1be7", X"f9fd", X"0e56", X"1bec", X"fc76", X"f448", X"e306", X"df55", X"10eb", X"f587", X"045a", X"0478",
                                                        X"111d", X"ed43", X"f04f", X"faaa", X"fdbb", X"edab", X"ed4b", X"0393", X"f825", X"10cb", X"ee6f", X"06a4", X"e1b4", X"05c3",
                                                        X"fb46", X"0f80", X"0642", X"ebfe", X"e006", X"0584", X"013a", X"f256", X"de60", X"ea97", X"0289", X"0c5b", X"f01d", X"01e0",
                                                        X"f7ea", X"f608", X"ef66", X"169d", X"0e22", X"ff6c", X"dc96", X"ef9a", X"f151", X"eedc", X"f1df", X"f389", X"0474", X"0f9f",
                                                        X"ed1e", X"f594", X"fd30", X"01d9", X"e0da", X"1014", X"013e", X"f448", X"d57a", X"0006", X"f0c2", X"008f", X"ea91", X"f15b",
                                                        X"f7d0", X"171d", X"ecc0", X"fa52", X"fc4d", X"f752", X"035c", X"efa7", X"1f08", X"f6db", X"d62c", X"008b", X"fd62", X"0c7d",
                                                        X"effb", X"f03a", X"f9f5", X"17e7", X"eaaf", X"17c3", X"0dd8", X"fa7b", X"13a6", X"e6ed", X"0b68", X"fd24", X"0369", X"1b22",
                                                        X"0770", X"0b0c", X"f118", X"ff4b", X"0f30", X"06e2", X"f78f", X"1145", X"fbf9", X"01be", X"0c5c", X"d7d2", X"23bb", X"f015",
                                                        X"00dc", X"fd68", X"0156", X"083d", X"f9ac", X"02c1", X"06c8", X"0a4f", X"f73b", X"fd3f", X"fdf5", X"fa10", X"0eed", X"0a66",
                                                        X"0ddc", X"0a3d", X"1c58", X"ff3c", X"1cf1", X"edfd", X"026c", X"15d5", X"0ec6", X"066b", X"06f8", X"f6b0", X"1550", X"1289",
                                                        X"e9e6", X"f363", X"eaa6", X"f47b", X"fb6e", X"fab4", X"10ce", X"0c62", X"0b76", X"025e", X"fb55", X"0c31", X"e171", X"2344",
                                                        X"ff47", X"027f", X"ed2b", X"ebc9", X"081c", X"e89f", X"fd43", X"116d", X"edfb", X"109d", X"ece2", X"055f", X"f94e", X"080c",
                                                        X"f9b3", X"f2fd", X"f331", X"0bfa", X"d871", X"0507", X"f6b3", X"eeb4", X"dc1d", X"fb8b", X"067a", X"02d4", X"0eac", X"1951",
                                                        X"f373", X"1bdc", X"e0b7", X"1166", X"02c8", X"28c7", X"cc46", X"ffd0", X"1c1f", X"1dd2", X"034a", X"f3e2", X"189a", X"fbfa",
                                                        X"f567", X"0f71", X"fab4", X"ebab", X"eb9e", X"115c", X"fc1a", X"fe2c", X"cc85", X"e5f7", X"0334", X"023b", X"f746", X"0530",
                                                        X"f907", X"f987", X"fc7f", X"0236", X"0ea6", X"eb99", X"f27f", X"f16d", X"0444", X"1c0f", X"0b5d", X"f1c5", X"eb12", X"14aa",
                                                        X"fde4", X"ffb3", X"12ee", X"0cc9", X"03c3", X"0828", X"0a48", X"0dce", X"0293", X"ff20", X"f90d", X"fb92", X"0c80", X"fb85",
                                                        X"e776", X"fc86", X"0816", X"11f7", X"f321", X"f8a9", X"1ffc", X"fea8", X"1274", X"f963", X"16fb", X"f0ae", X"08b1", X"f9c6",
                                                        X"1176", X"f8f8", X"1212", X"df79", X"fad3", X"edec", X"09ad", X"f10f", X"0657", X"077e", X"0121", X"fbcc", X"fc36", X"0592",
                                                        X"ed96", X"f2bb", X"09ce", X"f40c", X"e555", X"eab8", X"125a", X"fd0c", X"ef15", X"ea71", X"fc00", X"0127", X"072c", X"f78c",
                                                        X"ec1e", X"ef64", X"ef47", X"f7f9", X"fed5", X"0518", X"1994", X"f499", X"f7cc", X"fcc6", X"0220", X"0999", X"0406", X"1887",
                                                        X"f4e5", X"fdf1", X"e2c2", X"0374", X"112f", X"ef5d", X"e2b2", X"1582", X"14ff", X"edfe", X"d8e9", X"ebae", X"f9f7", X"f330",
                                                        X"f3e8", X"108b", X"f661", X"0402", X"0660", X"eddb", X"0afa", X"ff71", X"f8e9", X"f413", X"eb4d", X"ed34", X"c746", X"fdb2",
                                                        X"f176", X"efce", X"e560", X"037e", X"f15d", X"1e2e", X"1294", X"fd21", X"eb3b", X"fdcb", X"f4a2", X"f62e", X"2479", X"fa8f",
                                                        X"d265", X"1b49", X"1220", X"fbd8", X"eb0c", X"f608", X"edc4", X"2432", X"05cd", X"0810", X"10ae", X"0bdb", X"0384", X"177c",
                                                        X"0925", X"f501", X"09a9", X"fc1b", X"ffd3", X"08c9", X"ef20", X"f7cb", X"fba7", X"10c2", X"1749", X"f58f", X"0f80", X"fc31",
                                                        X"ff25", X"0348", X"e3f6", X"08d1", X"f9b6", X"1dd1", X"f840", X"faff", X"0653", X"fd05", X"0d4e", X"0fa1", X"eb33", X"136d",
                                                        X"f911", X"f1c8", X"0aa1", X"e851", X"d6c7", X"09e3", X"10b3", X"fc99", X"027c", X"f275", X"110e", X"ecc0", X"0c11", X"f55a",
                                                        X"da04", X"ff96", X"fe87", X"0028", X"1980", X"05f0", X"f57c", X"de46", X"114e", X"0ea3", X"19bd", X"eb00", X"fff2", X"f99d",
                                                        X"f628", X"f547", X"fb4b", X"1979", X"06b0", X"08c9", X"0845", X"0667", X"140c", X"1cba", X"0726", X"fe1b", X"0fd1", X"0280",
                                                        X"0d55", X"0a91", X"f7e8", X"0a85", X"eee1", X"e3d8", X"e23f", X"17c3", X"def9", X"0295", X"ede8", X"2772", X"fb4a", X"f559",
                                                        X"07aa", X"eb3c", X"fef3", X"fe2e", X"0e0c", X"f9ff", X"1318", X"f0f5", X"ff3b", X"0947", X"d56b", X"fd74", X"07db", X"0504",
                                                        X"ed2a", X"f183", X"0cff", X"fd9e", X"ecfb", X"ffed", X"fe96", X"f7ec", X"3500", X"fc11", X"075b", X"2b81", X"d47d", X"035a",
                                                        X"0c25", X"051e", X"06e1", X"0009", X"10d4", X"fc57", X"e722", X"fd9a", X"1438", X"f475", X"2354", X"0e7d", X"f016", X"fcdc",
                                                        X"e1d5", X"0813", X"e955", X"1949", X"f5e0", X"0106", X"0b30", X"ffac", X"0a8c", X"056c", X"0a2b", X"f32d", X"f048", X"07cf",
                                                        X"1944", X"0544", X"0045", X"fcc2", X"ecb8", X"e59f", X"0bbb", X"fe67", X"054c", X"07b8", X"0827", X"0b91", X"08c9", X"0dfa",
                                                        X"26fb", X"002f", X"ffba", X"09b8", X"17a2", X"f91c", X"fe59", X"0643", X"0012", X"01f1", X"148e", X"031d", X"0aaf", X"f3c4",
                                                        X"00c6", X"fa04", X"28d1", X"032e", X"f3bf", X"f92f", X"ece8", X"1a8b", X"0191", X"e717", X"11ca", X"e9b3", X"0c02", X"ec44",
                                                        X"0342", X"fa4a", X"f888", X"f8d5", X"ddbb", X"f4b6", X"f51a", X"f9e5", X"182a", X"1243", X"eac2", X"f818", X"f704", X"efaa",
                                                        X"0f0d", X"049b", X"f842", X"0223", X"034c", X"1501", X"18e5", X"0c42", X"f721", X"f74a", X"139d", X"f500", X"273e", X"0878",
                                                        X"f1fa", X"002c", X"ff59", X"ee57", X"e92c", X"1092", X"f8b1", X"05f8", X"eb0b", X"ff0d", X"0183", X"05d5", X"d1d3", X"f20c",
                                                        X"1d0d", X"0810", X"db10", X"0420", X"01a9", X"f68a", X"f0ce", X"0e12", X"fa20", X"23e3", X"ddfd", X"fd12", X"f062", X"ef27",
                                                        X"c480", X"2db0", X"ee98", X"0ac7", X"c6f8", X"f8ab", X"f30f", X"f188", X"de15", X"0cb1", X"eb14", X"3258", X"05f4", X"f029",
                                                        X"045b", X"f207", X"fe45", X"1185", X"1cf1", X"f464", X"df91", X"0cf7", X"f776", X"15fb", X"d676", X"f151", X"f8b2", X"07f5",
                                                        X"196d", X"f920", X"0a18", X"fd76", X"06fb", X"f1e8", X"1e07", X"0304", X"00ae", X"fa90", X"00d4", X"ef5d", X"fe62", X"fc01",
                                                        X"10e7", X"104e", X"0497", X"1390", X"02ea", X"13d6", X"1186", X"0712", X"0389", X"ede2", X"1ea5", X"015b", X"0e6f", X"ee27",
                                                        X"108f", X"02ba", X"ff6e", X"f356", X"f6a0", X"f636", X"ee96", X"fea8", X"1c5a", X"0faa", X"f6f6", X"06fa", X"f721", X"143d",
                                                        X"1bef", X"12a8", X"0621", X"fa7b", X"f135", X"0078", X"0177", X"f83d", X"fbe8", X"056f", X"0870", X"194c", X"e84e", X"0771",
                                                        X"11b2", X"0183", X"e2e2", X"0cc9", X"0469", X"eb81", X"01d8", X"02b0", X"13f5", X"fb63", X"ef11", X"1d7d", X"debc", X"e8e0",
                                                        X"0176", X"2b24", X"1543", X"edec", X"edc3", X"df67", X"0aee", X"15af", X"f832", X"069b", X"dbd9", X"0cf2", X"0864", X"05ac",
                                                        X"d241", X"0299", X"0ecb", X"28e8", X"f580", X"fc9b", X"0cad", X"07aa", X"0018", X"fc7b", X"168b", X"f966", X"0c5e", X"02af",
                                                        X"fcbd", X"1444", X"ce76", X"f2eb", X"fcf8", X"ffbe", X"e42e", X"00a3", X"0874", X"f6a9", X"e750", X"0290", X"065f", X"f1b7",
                                                        X"f17c", X"0389", X"078a", X"0864", X"c9bb", X"f6e2", X"e0da", X"fa4b", X"ee89", X"1396", X"f653", X"0b66", X"0298", X"0068",
                                                        X"03e4", X"0e71", X"0469", X"eaf7", X"1c6f", X"f870", X"fd51", X"0637", X"0984", X"0812", X"1012", X"04e1", X"1271", X"f2ac",
                                                        X"0f15", X"081b", X"fb6b", X"def1", X"f4ba", X"fae6", X"1cd3", X"f620", X"f274", X"f041", X"0272", X"e161", X"0d82", X"06b3",
                                                        X"138e", X"f4cc", X"0632", X"e98a", X"0ac7", X"f6b6", X"117d", X"fe73", X"0344", X"fa92", X"fe1c", X"ee5e", X"f4eb", X"edda",
                                                        X"1485", X"0cbe", X"05cf", X"0da6", X"138a", X"0b9e", X"fc3b", X"029d", X"f86a", X"03e7", X"0e6c", X"033c", X"2148", X"f156",
                                                        X"1374", X"eeb9", X"2053", X"faf6", X"fac1", X"0a92", X"0c26", X"fe29", X"ff89", X"164f", X"ea14", X"e4f9", X"f637", X"f58a",
                                                        X"09f7", X"f201", X"f4b0", X"ed02", X"eb16", X"fd13", X"031a", X"e927", X"f752", X"0e33", X"f6de", X"2ba0", X"e9a6", X"e517",
                                                        X"049d", X"fbb9", X"e6e6", X"222d", X"2017", X"ff2a", X"d70b", X"02c2", X"fce3", X"f5c8", X"f549", X"0af8", X"0225", X"f83d",
                                                        X"f24c", X"0404", X"f3e6", X"02ce", X"dc39", X"fa46", X"f6de", X"ef24", X"cabe", X"0333", X"049d", X"0313", X"dac1", X"056a",
                                                        X"fc4e", X"eea9", X"0aa0", X"e5ea", X"f900", X"fe2b", X"e682", X"2242", X"1ce2", X"1125", X"fbc3", X"1985", X"e4c3", X"f128",
                                                        X"f699", X"0323", X"e9c6", X"04d7", X"d3ca", X"fef8", X"071b", X"e078", X"f9b0", X"0d7d", X"03fc", X"e990", X"0e3b", X"fbea",
                                                        X"159b", X"04d1", X"fdfc", X"edfd", X"f2e7", X"06ba", X"0335", X"10fb", X"f1a2", X"ebed", X"0c4a", X"00d1", X"e386", X"f8c8",
                                                        X"0fd3", X"061d", X"fe51", X"0849", X"02d1", X"f5af", X"f982", X"193a", X"fad2", X"07f2", X"1014", X"167c", X"203a", X"eab2",
                                                        X"08c1", X"04ce", X"0fed", X"04b5", X"ebe6", X"103e", X"03b3", X"0bf9", X"e2e1", X"171c", X"f6a6", X"f20c", X"f388", X"02d1",
                                                        X"04c7", X"f0a1", X"eebd", X"126a", X"18b9", X"0a09", X"0246", X"f976", X"0113", X"fee0", X"f655", X"0cc5", X"e6c9", X"0b8e",
                                                        X"fe09", X"f409", X"f546", X"f73b", X"0a88", X"f008", X"f098", X"f615", X"e6b8", X"ff66", X"0c0d", X"009d", X"147b", X"f7a8",
                                                        X"0c6d", X"e869", X"15a7", X"1009", X"dc52", X"fd63", X"ea0e", X"f55e", X"0594", X"e979", X"055d", X"048e", X"0a91", X"2103",
                                                        X"ff84", X"1493", X"11fd", X"0883", X"f555", X"1507", X"ce8d", X"f0af", X"ed37", X"16f6", X"f1cc", X"08eb", X"05dc", X"08c9",
                                                        X"f9a9", X"0171", X"082a", X"1ad1", X"e1fe", X"e245", X"092e", X"04f9", X"b1a1", X"efad", X"0318", X"0ac5", X"0653", X"19c8",
                                                        X"f361", X"1eb5", X"031a", X"1771");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"1771";
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

