-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block365.vhd
-- Created: 2023-08-04 11:27:17
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block365
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage16/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block365 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block365;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block365 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"fdf9", X"fcb6", X"1569", X"fd1d", X"124d", X"f2fa",
                                                        X"f362", X"e273", X"ed25", X"0a47", X"0ac6", X"ffd4", X"fdfa", X"f812", X"04ca", X"ea78", X"f374", X"f636", X"18ca", X"06d0",
                                                        X"05c9", X"098e", X"08a9", X"fe66", X"fbf0", X"0221", X"1713", X"fc00", X"00ec", X"f8cb", X"0191", X"00ad", X"00bb", X"03e4",
                                                        X"02d8", X"01c1", X"fdb9", X"f285", X"0cc0", X"fcc4", X"fc85", X"08da", X"ff12", X"0eb6", X"f1b0", X"f908", X"0225", X"043e",
                                                        X"ff2a", X"ff78", X"f30a", X"f0ce", X"0b89", X"fe3d", X"f96c", X"ef10", X"0f17", X"f7c1", X"10e1", X"0b9f", X"04e4", X"05e1",
                                                        X"fbfc", X"06d0", X"f2f5", X"feb5", X"ecea", X"f656", X"1111", X"f19e", X"fa33", X"f7e5", X"17b3", X"0350", X"004a", X"ef5e",
                                                        X"ec52", X"e0ea", X"02ca", X"01b2", X"fb4e", X"0085", X"f801", X"f124", X"0775", X"fa9f", X"f124", X"0672", X"1527", X"fae9",
                                                        X"109d", X"fca1", X"e773", X"0218", X"0594", X"0f06", X"f2d0", X"09ae", X"fb08", X"f981", X"ff48", X"ec6d", X"eabe", X"ea7e",
                                                        X"ff05", X"0d73", X"097d", X"fb36", X"f925", X"fb67", X"f2eb", X"10be", X"00d4", X"0286", X"fa21", X"f19c", X"0141", X"0265",
                                                        X"fe8c", X"13c9", X"e5a7", X"fbcc", X"0ee9", X"eccb", X"029e", X"f2d8", X"0971", X"0d49", X"f503", X"0add", X"09b1", X"f682",
                                                        X"0904", X"ebf4", X"012f", X"fa44", X"10c6", X"0298", X"f711", X"0dfa", X"f59c", X"f171", X"fe29", X"020c", X"e916", X"092b",
                                                        X"eb85", X"f155", X"fce7", X"e4d1", X"0473", X"ea47", X"f9e6", X"fab1", X"f731", X"0fab", X"0081", X"fb15", X"f662", X"fac6",
                                                        X"fbd0", X"f90f", X"227c", X"f2dc", X"1e47", X"f8e2", X"fda0", X"e8b3", X"1141", X"f6ad", X"009b", X"0d49", X"040f", X"f9d6",
                                                        X"1fbe", X"0557", X"f2e5", X"0aba", X"17c8", X"e82e", X"101c", X"f858", X"03c4", X"f10d", X"ffe9", X"f137", X"1744", X"0eb3",
                                                        X"031c", X"eee6", X"fb6b", X"fe5e", X"e157", X"008d", X"f4ba", X"f5e5", X"07d6", X"f98f", X"f65e", X"18a3", X"020a", X"0de4",
                                                        X"0c9d", X"0138", X"050c", X"f41f", X"efd2", X"fd85", X"f02a", X"0d1d", X"f0cc", X"eeef", X"1292", X"f475", X"f439", X"f434",
                                                        X"e6ba", X"16f9", X"1152", X"0ad7", X"0d55", X"050f", X"0425", X"032a", X"f844", X"0615", X"0d22", X"ee6c", X"086a", X"f146",
                                                        X"edde", X"0648", X"f0c2", X"ff5d", X"f558", X"fd5b", X"fddf", X"e1a1", X"fbb4", X"0061", X"fb2f", X"0dc5", X"1780", X"e684",
                                                        X"1162", X"fcca", X"ed85", X"fc6b", X"f759", X"0a9a", X"1409", X"0471", X"1129", X"feea", X"f1be", X"11d3", X"f807", X"06d3",
                                                        X"f472", X"e867", X"0f4d", X"f447", X"fffd", X"f848", X"1178", X"f927", X"0d68", X"025c", X"fed4", X"ea93", X"e625", X"fd0f",
                                                        X"f5e4", X"faa9", X"fed0", X"fd1f", X"1185", X"f96e", X"e959", X"e959", X"03e6", X"0a8f", X"1125", X"0838", X"0c37", X"f551",
                                                        X"ec05", X"fc93", X"e93c", X"03d4", X"0327", X"ee7b", X"1ce3", X"e292", X"f53a", X"f54d", X"13ee", X"fb3e", X"1b2a", X"fa99",
                                                        X"fd42", X"023f", X"d6f9", X"0f22", X"e537", X"eacf", X"f8fc", X"052a", X"fe7f", X"e98a", X"ffaf", X"001d", X"f212", X"001a",
                                                        X"0012", X"113a", X"0aff", X"f21b", X"ec84", X"0f3f", X"da72", X"0378", X"f30e", X"f274", X"1acb", X"ea88", X"f0f1", X"f0ca",
                                                        X"ed6d", X"0ffa", X"0ae6", X"02be", X"0e38", X"faac", X"e26c", X"0b86", X"da8e", X"00ca", X"2102", X"f1ae", X"fe2b", X"ce4b",
                                                        X"fdc1", X"efd9", X"f8ba", X"fba1", X"0180", X"02e5", X"0189", X"ee82", X"e226", X"0981", X"de83", X"0b60", X"006f", X"fa22",
                                                        X"0f35", X"e350", X"f8c8", X"0a88", X"fbb3", X"f5ff", X"0b6a", X"fa1d", X"119e", X"05ba", X"e7f0", X"fe5f", X"d3f5", X"16a2",
                                                        X"056d", X"e43d", X"0418", X"ec90", X"ff42", X"0540", X"efdc", X"05d5", X"10d5", X"eea9", X"f735", X"0809", X"da96", X"0545",
                                                        X"ceb2", X"06e1", X"f119", X"f28f", X"078c", X"f751", X"fa44", X"f6aa", X"06ff", X"ff66", X"1a6f", X"fa7e", X"fb8d", X"faf6",
                                                        X"df13", X"f53f", X"f153", X"000c", X"013e", X"f621", X"0180", X"e386", X"0ed6", X"fdc8", X"e0bc", X"f84a", X"0d57", X"00c8",
                                                        X"1d3d", X"07a3", X"00fe", X"f54e", X"e072", X"0234", X"e069", X"ec66", X"03ca", X"f582", X"1018", X"0234", X"2007", X"0bb3",
                                                        X"13b3", X"0224", X"00df", X"0189", X"f9e2", X"0c11", X"f05f", X"0463", X"01c7", X"f933", X"0c72", X"f146", X"0378", X"ff9d",
                                                        X"dbf6", X"043a", X"207f", X"0f90", X"132f", X"09da", X"f0a8", X"0cdf", X"e259", X"1121", X"f052", X"fffb", X"f5ec", X"f78c",
                                                        X"eb1f", X"ee48", X"0e7e", X"053e", X"1e5a", X"01d1", X"019a", X"00e3", X"e1de", X"0a0e", X"de41", X"0bf9", X"1d77", X"fd46",
                                                        X"025d", X"eb93", X"f831", X"0451", X"0bcc", X"01d8", X"fa2c", X"0300", X"0608", X"063e", X"e7b9", X"1568", X"feb7", X"0d87",
                                                        X"eb90", X"f405", X"fc89", X"09cd", X"ec0c", X"1187", X"001a", X"0ca8", X"fcf9", X"0e55", X"0b7b", X"0b18", X"f537", X"14ee",
                                                        X"f67d", X"0425", X"1a2a", X"f84a", X"f4fe", X"edf6", X"dc8d", X"ffd4", X"09d4", X"0dea", X"ff1d", X"010e", X"0e59", X"fad5",
                                                        X"ecd6", X"0a00", X"ef9f", X"098f", X"0bbb", X"f606", X"edb7", X"fd48", X"f6ca", X"ff1b", X"f3d0", X"e67e", X"0c68", X"f19f",
                                                        X"ffd0", X"fa01", X"f191", X"05dd", X"e87a", X"053a", X"124b", X"ffc2", X"fb1a", X"fb96", X"ed76", X"fc30", X"f1b4", X"03bf",
                                                        X"16d2", X"ef02", X"f88c", X"ec07", X"e5e3", X"09e1", X"eb88", X"0a43", X"03fb", X"f731", X"fd8e", X"f246", X"009d", X"edaa",
                                                        X"e459", X"e45a", X"11ea", X"0d58", X"0294", X"04ad", X"004f", X"fb0d", X"0423", X"14be", X"ed7f", X"f666", X"fe03", X"0698",
                                                        X"ed1b", X"07d1", X"063d", X"0b22", X"fadd", X"fdea", X"0107", X"f98f", X"0803", X"0637", X"f7fe", X"0735", X"fba9", X"fcb6",
                                                        X"0328", X"098a", X"fa1c", X"094a", X"0bad", X"f34a", X"f223", X"f6ae", X"10ee", X"f821", X"f54e", X"03ae", X"e13a", X"057d",
                                                        X"0ea1", X"00d3", X"0469", X"fbbb", X"0980", X"0ed3", X"f465", X"0647", X"2c5a", X"f47e", X"f04a", X"f43f", X"f0e2", X"fc7c",
                                                        X"0674", X"01e8", X"fccb", X"00bc", X"fdb6", X"f9b4", X"0073", X"fcab", X"f1e5", X"0ab8", X"1452", X"f09f", X"0274", X"fa73",
                                                        X"f53e", X"f2a6", X"04e4", X"0af6", X"e7b6", X"fac1", X"ff39", X"f4bb", X"0336", X"ffbd", X"ec05", X"ec36", X"08ab", X"f6ec",
                                                        X"f59e", X"e326", X"f5e3", X"eedc", X"f935", X"0989", X"18e8", X"02b5", X"0986", X"002c", X"f77b", X"00c1", X"f5b0", X"f0cc",
                                                        X"f839", X"fcca", X"fbad", X"03fd", X"f4f4", X"002e", X"e639", X"0227", X"1374", X"013c", X"169c", X"f9bc", X"0d9d", X"0120",
                                                        X"1257", X"f58f", X"06e5", X"f054", X"f125", X"04d5", X"f04c", X"0d19", X"0167", X"fe00", X"0c41", X"0502", X"123c", X"f245",
                                                        X"0286", X"f5dd", X"1bb6", X"fa2e", X"18d7", X"01b4", X"0539", X"e5fb", X"00c2", X"f358", X"ffa3", X"f7fd", X"de14", X"0241",
                                                        X"04e6", X"0e2c", X"011a", X"fba5", X"f8a2", X"efcd", X"03a7", X"1061", X"f4cb", X"078d", X"f925", X"f496", X"fe65", X"ff0a",
                                                        X"16a3", X"e408", X"0945", X"01c4", X"0847", X"fb3d", X"1638", X"1778", X"2110", X"0596", X"0055", X"f07e", X"076b", X"05b1",
                                                        X"fbc5", X"0ce7", X"0cf2", X"ebc3", X"fbe9", X"012b", X"010a", X"038a", X"f909", X"fa05", X"f518", X"1907", X"036b", X"f2cd",
                                                        X"fc8c", X"febf", X"f58f", X"fafd", X"118d", X"f404", X"fa2f", X"09de", X"f307", X"0dee", X"08e5", X"02ca", X"0487", X"faff",
                                                        X"0d03", X"0534", X"f9f4", X"fe25", X"136f", X"fa40", X"0546", X"ff37", X"036e", X"f7de", X"034f", X"01e0", X"0d4b", X"0798",
                                                        X"fab0", X"fc32", X"004d", X"fb1d", X"0b55", X"02e1", X"fe4a", X"f9b6", X"0c69", X"f54c", X"ec47", X"f73f", X"014b", X"0057",
                                                        X"e514", X"f813", X"0c72", X"06da", X"f904", X"e090", X"ed7f", X"ec9d", X"0387", X"fcaa", X"eb2b", X"00d6", X"019b", X"0490",
                                                        X"efef", X"edba", X"f1d6", X"e9bf", X"1fad", X"fffd", X"062d", X"fedc", X"148f", X"ecb5", X"031c", X"ff50", X"189f", X"06fb",
                                                        X"fee1", X"081f", X"0019", X"050d", X"1b5a", X"02fe", X"fd83", X"fffb", X"fb0f", X"f8c6", X"0e71", X"00b9", X"137b", X"0040",
                                                        X"14a1", X"f2dd", X"0f00", X"f9a1", X"0710", X"0096", X"f607", X"feae", X"17f5", X"04e5", X"0c41", X"fc8b", X"0b85", X"f679",
                                                        X"ff3f", X"199a", X"125a", X"f9bc", X"0d36", X"010f", X"0f66", X"f0fc", X"1177", X"f5a7", X"fb5e", X"0217", X"f9e2", X"f7d9",
                                                        X"133f", X"0a5d", X"ec4d", X"0152", X"0afa", X"00cc", X"fa59", X"0424", X"098f", X"fb4a", X"08fd", X"0c7d", X"fcd8", X"ffce",
                                                        X"f537", X"f155", X"07de", X"0fdc", X"007d", X"ff39", X"05ef", X"0d08", X"f304", X"fd32", X"f1f0", X"fde4", X"e3ee", X"fdbc",
                                                        X"01bf", X"fb60", X"f86b", X"f0ef", X"033a", X"0abc", X"f687", X"16d6", X"1b72", X"f37d", X"f5ca", X"005d", X"ff0e", X"07ad",
                                                        X"0657", X"f56b", X"0c4f", X"f86e", X"f785", X"00fd", X"f17f", X"f596", X"f433", X"f600", X"0d7d", X"00f5", X"ff47", X"097b",
                                                        X"f4c3", X"0dd7", X"1e2b", X"0166", X"0c1d", X"0296", X"f672", X"e125", X"e45d", X"f63e", X"0964", X"21fa", X"dfc7", X"fe12",
                                                        X"0087", X"0918", X"00fe", X"fbdf", X"00b5", X"f3e2", X"f5dc", X"fd5d", X"072d", X"e9a1", X"1059", X"eeb5", X"07b8", X"f83a",
                                                        X"fb98", X"0012", X"07e4", X"0307", X"0127", X"f3d2", X"fd60", X"fec7", X"01d6", X"fd75", X"f196", X"f43c", X"f401", X"f1b6",
                                                        X"fc25", X"0724", X"ff08", X"f89a", X"0be6", X"f260", X"01e8", X"0bfb", X"1d77", X"0e2a", X"09fd", X"02ef", X"f5e8", X"fd84",
                                                        X"0d11", X"f40e", X"0ab2", X"fff4", X"03f4", X"fc3d", X"fef2", X"0183", X"123c", X"fa74", X"1751", X"f4c1", X"0fae", X"f0f2",
                                                        X"efc0", X"05e6", X"f5bf", X"f3e5", X"fe6a", X"034e", X"0568", X"f647", X"0505", X"0d60", X"ffe9", X"fb72", X"0d22", X"f948",
                                                        X"0b7c", X"fcca", X"dfd4", X"08ce", X"04b6", X"e1bf", X"00ab", X"f8eb", X"fe15", X"fcd8", X"024c", X"087f", X"0a2d", X"0916",
                                                        X"fd43", X"f642", X"03bc", X"e3ec", X"fc5e", X"04d0", X"01a2", X"0202", X"01c9", X"0216", X"de73", X"f938", X"f262", X"f815",
                                                        X"f9e3", X"eff1", X"117f", X"fc3c", X"0933", X"0c6b", X"e248", X"f026", X"022e", X"02c8", X"0690", X"f8c7", X"0f30", X"fabd",
                                                        X"0482", X"0a79", X"fc02", X"0feb", X"000d", X"fa64", X"0ccb", X"0199", X"f9bc", X"010a", X"0c4f", X"f979", X"07e4", X"f5fa",
                                                        X"02aa", X"eec7", X"0b89", X"f394", X"ed88", X"ec2c", X"def1", X"e950", X"f9f2", X"057a", X"fc19", X"ff37", X"fddc", X"f064",
                                                        X"0e86", X"112f", X"16cb", X"f3c6", X"124c", X"fefb", X"f7e6", X"000b", X"fb30", X"f08f", X"1fe5", X"f982", X"f667", X"0114",
                                                        X"0e15", X"0c66", X"062d", X"0a1c", X"0b6a", X"f43a", X"fd55", X"02d5", X"0868", X"009f", X"0c4d", X"09da", X"1085", X"0b63",
                                                        X"040f", X"fc87", X"f877", X"0b5e", X"064e", X"fe9a", X"ec63", X"fb9b", X"075d", X"fb68", X"0a08", X"f9a2", X"0f68", X"fc0f",
                                                        X"07cc", X"0b6e", X"fc30", X"0043", X"0953", X"efd4", X"0a13", X"00fe", X"e6a6", X"05a7", X"0a24", X"0ed1", X"034c", X"f8cc",
                                                        X"0c47", X"f658", X"0423", X"fae0", X"fdd1", X"0102", X"fc96", X"fc68", X"fb1a", X"10ae", X"0587", X"fd69", X"09ad", X"f6c5",
                                                        X"f7d9", X"fd4e", X"f71c", X"f0d3", X"086f", X"f090", X"fa8f", X"e363", X"ebc5", X"fed0", X"040b", X"140b", X"eb6b", X"0908",
                                                        X"059d", X"0a17", X"f75d", X"08ef", X"edc7", X"0f1f", X"03e7", X"ee4a", X"f33b", X"fbcb", X"eb14", X"11b1", X"fd3e", X"08a6",
                                                        X"0c59", X"11cf", X"0958", X"f8c8", X"09ca", X"0e17", X"e733", X"fe53", X"eeb2", X"0b67", X"ef9d", X"f4ee", X"07bb", X"f85d",
                                                        X"f25a", X"0a4f", X"00d9", X"ecf4", X"0f63", X"06f0", X"f26c", X"0a5a", X"20bb", X"011c", X"f0c5", X"efd0", X"fd45", X"f072",
                                                        X"f36f", X"ff01", X"040f", X"f963", X"0b7d", X"086a", X"fb48", X"007b", X"0869", X"f4d7", X"fefb", X"eef7", X"0592", X"084e",
                                                        X"ebb9", X"f360", X"153b", X"021f", X"eeab", X"004a", X"0405", X"f48a", X"0db7", X"07e2", X"f9f0", X"fb5a", X"19f4", X"0545",
                                                        X"140d", X"f3c7", X"e465", X"014d", X"f65d", X"f887", X"0e08", X"0ec9", X"ff0a", X"0370", X"02e1", X"04d3", X"0b06", X"0e5d",
                                                        X"24e1", X"f883", X"0208", X"08bf", X"f21c", X"0cdc", X"feb1", X"fa1b", X"f966", X"02b5", X"160b", X"09fa", X"0ed4", X"ec79",
                                                        X"0477", X"f7c6", X"05d9", X"f88c", X"1c7c", X"f773", X"09fd", X"ecc9", X"0509", X"fa42", X"0d4c", X"f901", X"f2ad", X"fc3c",
                                                        X"0631", X"e90f", X"ff58", X"f3b2", X"f226", X"0497", X"fd32", X"17fa", X"f5c3", X"0023", X"1e51", X"f0d2", X"00b4", X"08b2",
                                                        X"fd45", X"0559", X"f14e", X"fbaa", X"0f28", X"0416", X"19da", X"08b7", X"0b5f", X"0e0d", X"ef70", X"05b0", X"0461", X"00ce",
                                                        X"1230", X"0035", X"2187", X"f52f", X"049f", X"09c0", X"fa94", X"0869", X"13d4", X"0fd5", X"ea64", X"fa2c", X"ea67", X"f2d5",
                                                        X"026c", X"f904", X"fe7a", X"06a3", X"f0b6", X"0126", X"f746", X"107d", X"f4f0", X"0915", X"fbd9", X"051d", X"0f46", X"0d30",
                                                        X"fc50", X"f2eb", X"facd", X"ff96", X"06f0", X"ffae", X"f37f", X"eb79", X"f899", X"03c2", X"0445", X"fb11", X"01f2", X"0d74",
                                                        X"e52a", X"03f5", X"fef2", X"fd35", X"079e", X"fedd", X"0b41", X"0c33", X"1bde", X"0919", X"021f", X"0c06", X"fff1", X"f508",
                                                        X"e8a2", X"0b8a", X"1818", X"1613", X"0c0f", X"ea62", X"f46f", X"efc8", X"00ce", X"0d31", X"f490", X"f981", X"f0ca", X"0a44",
                                                        X"0236", X"08fb", X"14ea", X"f4f9", X"0f56", X"1a1c", X"ea21", X"f8f5", X"f6b9", X"f421", X"f8fc", X"feb8", X"f656", X"07da",
                                                        X"022f", X"0a6d", X"0652", X"f8c4", X"0678", X"f1e1", X"1b0e", X"f50f", X"fa07", X"f83a", X"1143", X"f30f", X"fb38", X"f93f",
                                                        X"e70d", X"f017", X"11ec", X"f963", X"0355", X"ffaa", X"e3e9", X"ecd8", X"0d22", X"fc25", X"05c9", X"f3e7", X"0a17", X"fc22",
                                                        X"0e6c", X"0d34", X"071d", X"0583", X"ee3c", X"157e", X"efe0", X"f4bb", X"1696", X"0df2", X"0082", X"069e", X"e7af", X"0025",
                                                        X"f574", X"0c96", X"f545", X"0680", X"0210", X"0d1b", X"0616", X"0644", X"0cb3", X"1c09", X"e376", X"0bf6", X"016d", X"edc1",
                                                        X"f992", X"05bc", X"fd54", X"0073", X"f49f", X"fc3a", X"06b7", X"10d5", X"0063", X"ef95", X"0fbf", X"0fe3", X"1770", X"0507",
                                                        X"01eb", X"0303", X"f62c", X"fa0b", X"e7b5", X"0500", X"fedd", X"0b00", X"fa19", X"f66a", X"0abb", X"ffea", X"02a4", X"f746",
                                                        X"1b5d", X"07a7", X"eb40", X"0031", X"f339", X"064f", X"f893", X"003c", X"0193", X"f82c", X"17ae", X"0414", X"fb88", X"135e",
                                                        X"ffba", X"fd4a", X"e56b", X"fc69", X"f94a", X"f2fb", X"eb9f", X"fb6b", X"f66e", X"00cd", X"03a0", X"ffb3", X"0b1a", X"00f3",
                                                        X"0644", X"12b1", X"0c72", X"ff56", X"f15f", X"f4c8", X"0988", X"fdae", X"081d", X"fdd4", X"ec54", X"e9be", X"f58a", X"0f71",
                                                        X"eb6f", X"096e", X"f6d2", X"fdd3", X"0d03", X"f390", X"fc54", X"f9f5", X"1ce8", X"0b67", X"f840", X"005f", X"fce8", X"ffcf",
                                                        X"089e", X"20cd", X"0143", X"00e9", X"0f25", X"0b68", X"0c99", X"08f7", X"f262", X"0450", X"0d7a", X"08cd", X"0e81", X"fb8e",
                                                        X"0af9", X"fbb3", X"020a", X"f7c3", X"0258", X"07ae", X"f3ce", X"0531", X"f51c", X"0e20", X"0fa4", X"ecb4", X"f7e3", X"08e3",
                                                        X"f714", X"0d57", X"f863", X"0526", X"038f", X"fd20", X"fe37", X"07e5", X"f3ab", X"1768", X"fb37", X"0940", X"09a9", X"fb2b",
                                                        X"03a1", X"ff0e", X"e551", X"f3fc", X"fb8e", X"fa43", X"0e8e", X"fba4", X"eed5", X"f577", X"f64f", X"fdf4", X"f5f7", X"0890",
                                                        X"ed37", X"0a37", X"1185", X"047e", X"f208", X"faa2", X"f56f", X"ef68", X"03ac", X"05ba", X"153e", X"f3b6", X"050b", X"02b0",
                                                        X"fb6c", X"fc5f", X"f98e", X"e5ea", X"f7a5", X"0d38", X"04c3", X"f640", X"fc41", X"f066", X"fe61", X"0d7d", X"f328", X"01a2",
                                                        X"f00d", X"11b7", X"f762", X"ffe5", X"f257", X"f243", X"0eb7", X"0c12", X"ffae", X"02d6", X"f5be", X"f20c", X"0b6e", X"10ee",
                                                        X"017f", X"0211", X"01d5", X"086e", X"f6b2", X"fadb", X"1b69", X"f7a8", X"11bf", X"fe00", X"094a", X"0311", X"fc71", X"f39e",
                                                        X"fe2f", X"0623", X"fdb5", X"00cd", X"0c0c", X"01c6", X"1630", X"ff46", X"1040", X"f62f", X"0f13", X"f12c", X"fa50", X"0279",
                                                        X"0299", X"f7b9", X"fe82", X"0ab7", X"0ca4", X"05af", X"0482", X"12a9", X"06c8", X"12ad", X"fb70", X"f5dc", X"1478", X"fd12",
                                                        X"e9c6", X"0275", X"0944", X"f441", X"0442", X"ff03", X"f457", X"02ee", X"f404", X"198b", X"fed7", X"0fad", X"e2fa", X"094a",
                                                        X"fb59", X"f32e", X"f7bd", X"02d8", X"045c", X"fad3", X"072b", X"fde8", X"f5c6", X"033d", X"f660", X"0067", X"f48f", X"0eb7",
                                                        X"1914", X"fbe2", X"ed6d", X"f2aa", X"e37d", X"ee2d", X"fdfe", X"fcf9", X"ffe2", X"073a", X"1651", X"09a1", X"0efd", X"06e7",
                                                        X"f9c4", X"0103", X"1e53", X"0557", X"f2ff", X"f8b0", X"f2de", X"f196", X"0406", X"0917", X"fb21", X"ffe6", X"0bcb", X"f7a2",
                                                        X"ff03", X"f72e", X"03b7", X"06d8", X"fe96", X"f40e", X"059d", X"0465", X"e4dd", X"f6f0", X"052b", X"f28e", X"f55a", X"0a58",
                                                        X"1b7f", X"ed5c", X"f753", X"f8bf", X"fc39", X"111c", X"01c1", X"ffd1", X"ebc7", X"063b", X"ecd0", X"f8a3", X"08ca", X"f93d",
                                                        X"0675", X"1770", X"fe21", X"fcee", X"14c6", X"0c07", X"ef74", X"ff4f", X"0dd1", X"fc4f", X"0032", X"fbf1", X"f713", X"0708",
                                                        X"035c", X"038b", X"0003", X"0db4", X"1f9d", X"0102", X"07c6", X"fe2a", X"04ae", X"03f2", X"f275", X"e4a1", X"01c0", X"f683",
                                                        X"f3ea", X"fd2d", X"0833", X"fa52", X"03dd", X"fd28", X"f70f", X"0f27", X"06fe", X"0465", X"0a0e", X"09d7", X"29f3", X"f4a0",
                                                        X"08bd", X"1240", X"0246", X"0041", X"039e", X"f06a", X"021c", X"f81d", X"eac0", X"089d", X"ff10", X"ecfd", X"fcdc", X"fab6",
                                                        X"fe56", X"0d18", X"fc44", X"0517", X"fea3", X"fd44", X"0a25", X"ecc5", X"0cf8", X"0425", X"eeb6", X"0c87", X"042a", X"033c",
                                                        X"fc75", X"0777", X"0303", X"0c58", X"010c", X"1646", X"0154", X"fc93", X"f711", X"04e4", X"fd6d", X"01a6", X"1904", X"f184",
                                                        X"f394", X"17b8", X"00b4", X"1975", X"fd97", X"f4d9", X"09cf", X"0058", X"f8aa", X"eb39", X"06a8", X"039c", X"07aa", X"fb28",
                                                        X"ef60", X"f199", X"fa9c", X"040d", X"f5b4", X"0494", X"0d9b", X"0a13", X"fef3", X"f830", X"f78c", X"fb47", X"edfa", X"0674",
                                                        X"fba7", X"0a8d", X"14b4", X"f8e1", X"02ee", X"0336", X"f003", X"f98f", X"e918", X"f3db", X"fdad", X"04da", X"06cd", X"fbcd",
                                                        X"0894", X"0387", X"0be8", X"0cec", X"f59b", X"f21e", X"ff62", X"098f", X"001a", X"0a7d", X"0484", X"f205", X"0662", X"0f3b",
                                                        X"ed39", X"efe5", X"06f5", X"f40d", X"0c19", X"f8f1", X"fad4", X"0105", X"f62b", X"04f3", X"f677", X"ebee", X"eecb", X"fe0b",
                                                        X"1180", X"f8d5", X"0257", X"fe17", X"0356", X"f200", X"feee", X"f45a", X"28d9", X"0628", X"0e2d", X"f5b7", X"10a1", X"0370",
                                                        X"fcbd", X"046b", X"f9ea", X"fb09", X"f95a", X"eca4", X"19d0", X"f845", X"0285", X"008a", X"f146", X"fcfa", X"e6bb", X"fc88",
                                                        X"0566", X"0e62", X"04d0", X"fb8a", X"15e8", X"0e7e", X"00ee", X"f8ce", X"0f48", X"f236", X"f79b", X"06d9", X"213f", X"0e8f",
                                                        X"f78d", X"0643", X"f5c1", X"0939", X"08f5", X"f405", X"06d2", X"0696", X"f51d", X"f5f8", X"f417", X"fa7e", X"1492", X"f7b9",
                                                        X"0306", X"08e6", X"f76c", X"0890", X"ef5f", X"fed7", X"13a7", X"06e7", X"08a6", X"e9b7", X"f921", X"0416", X"f3c3", X"00ec",
                                                        X"fc15", X"f875", X"f2c7", X"fa59", X"fa11", X"ff97", X"ffbe", X"0ab0", X"fff0", X"f35f", X"048d", X"ece6", X"f9d7", X"e49a",
                                                        X"ff15", X"eeeb", X"fbd8", X"08b4", X"f8af", X"fa47", X"021b", X"0023", X"15a2", X"1033", X"ece1", X"f2c3", X"e8b6", X"f067",
                                                        X"e9d5", X"f4fb", X"f891", X"f7ad");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f7ad";
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

