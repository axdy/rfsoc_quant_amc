-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16/amc_cnn_16w16a_src_SinglePortRAM_generic_block348.vhd
-- Created: 2023-08-04 11:27:14
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_src_SinglePortRAM_generic_block348
-- Source Path: amc_model_w16a16/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage115/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_src_SinglePortRAM_generic_block348 IS
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
END amc_cnn_16w16a_src_SinglePortRAM_generic_block348;


ARCHITECTURE rtl OF amc_cnn_16w16a_src_SinglePortRAM_generic_block348 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"1acc", X"0012", X"fd86", X"fe48", X"0b29", X"f69b",
                                                        X"fe38", X"ff7e", X"02ec", X"1e30", X"13d7", X"d953", X"034c", X"ebac", X"169a", X"0711", X"07c0", X"039b", X"0873", X"f67c",
                                                        X"0c95", X"1023", X"0553", X"0265", X"f247", X"0fba", X"fd7f", X"0afe", X"eeb7", X"f1bf", X"20b4", X"072d", X"f6f7", X"075e",
                                                        X"0f48", X"082e", X"f2ff", X"f3b5", X"12f7", X"0d9f", X"f14c", X"ed6b", X"ce68", X"0001", X"facb", X"05c3", X"0496", X"efeb",
                                                        X"f1ca", X"05a5", X"0c5c", X"fde2", X"0642", X"0c54", X"f880", X"09a1", X"1dc8", X"0673", X"152e", X"0052", X"1311", X"fcc2",
                                                        X"0943", X"e628", X"fd64", X"f005", X"1d6d", X"0240", X"194e", X"02b7", X"f62e", X"e889", X"fdb0", X"f78a", X"f90c", X"ef41",
                                                        X"1167", X"f87c", X"03a1", X"0354", X"f3b3", X"16d2", X"104b", X"dd96", X"0c76", X"e84f", X"0f8c", X"01ad", X"f2fd", X"0548",
                                                        X"20b4", X"0171", X"0041", X"1557", X"044f", X"f6fa", X"17af", X"f4b6", X"dc3b", X"180e", X"01e7", X"fd91", X"ed08", X"1101",
                                                        X"f7fc", X"019d", X"e880", X"0050", X"07fb", X"0e40", X"125d", X"f637", X"05a3", X"ee2b", X"fc3c", X"f72a", X"00b5", X"12e4",
                                                        X"0d21", X"fa63", X"f9e3", X"101c", X"ff40", X"124e", X"0263", X"0529", X"1edc", X"04f8", X"0e1a", X"e506", X"f529", X"fc5d",
                                                        X"0cfa", X"efe4", X"1393", X"1036", X"012a", X"04ce", X"1d04", X"03b4", X"1304", X"0e76", X"0225", X"1215", X"0a37", X"0702",
                                                        X"141e", X"ee70", X"1137", X"fd4e", X"1dee", X"0865", X"ea70", X"0c24", X"e42a", X"0a5d", X"03e9", X"0696", X"1201", X"f26c",
                                                        X"eb87", X"e83d", X"daef", X"ed8b", X"0220", X"ffbe", X"fcf2", X"f9f9", X"fdf4", X"fcd4", X"068f", X"0c40", X"f190", X"f95e",
                                                        X"0b2f", X"fb3d", X"f68d", X"f376", X"1774", X"f441", X"fb9a", X"e5e2", X"fcc2", X"fe7f", X"e26e", X"10d9", X"0573", X"04e7",
                                                        X"120a", X"ebc2", X"09f5", X"059e", X"0f4d", X"030d", X"f60d", X"0c77", X"069b", X"f730", X"121b", X"0cd7", X"f891", X"ffca",
                                                        X"fe04", X"10c8", X"1032", X"0026", X"00f1", X"fb7b", X"03aa", X"f253", X"f346", X"e88e", X"f3d7", X"13d7", X"f910", X"f208",
                                                        X"0faa", X"f0df", X"fc3c", X"fac5", X"e7ab", X"00ee", X"f908", X"f576", X"04c4", X"025c", X"0913", X"1740", X"0fee", X"0b7a",
                                                        X"105c", X"f05d", X"0505", X"f349", X"108a", X"0432", X"0b05", X"fbae", X"0a90", X"078c", X"0bd7", X"fd74", X"e489", X"0a6d",
                                                        X"15ff", X"ee3e", X"f67d", X"2896", X"1f8a", X"0a41", X"01bc", X"0aa7", X"fa13", X"0f47", X"1079", X"f56e", X"feb1", X"f145",
                                                        X"15e8", X"17f5", X"fd6c", X"0424", X"1988", X"0d4b", X"f408", X"f5a4", X"1139", X"fdc8", X"04eb", X"f776", X"0ddf", X"f2d2",
                                                        X"faab", X"ffa5", X"19d2", X"0c8c", X"e6c8", X"f525", X"08a1", X"eea4", X"ed39", X"1244", X"064b", X"eb68", X"e7d7", X"fc40",
                                                        X"084b", X"028f", X"f85c", X"08cc", X"f64b", X"0eb9", X"eb1a", X"0a8a", X"178c", X"16bd", X"0c95", X"1b56", X"f10d", X"f51d",
                                                        X"f3dd", X"f037", X"f3ea", X"ec7e", X"fec4", X"f885", X"1127", X"1008", X"f98c", X"0c94", X"f843", X"097f", X"f566", X"f8f0",
                                                        X"f3d5", X"ef2e", X"0302", X"0399", X"fce2", X"129a", X"06cb", X"0ddc", X"e412", X"0ee3", X"df64", X"0afb", X"130b", X"f6db",
                                                        X"ddf7", X"20cb", X"11ab", X"01e3", X"1566", X"f855", X"15f4", X"f08f", X"f2e7", X"0587", X"fe98", X"f68e", X"f4e5", X"f4f0",
                                                        X"fd0c", X"f8c8", X"f634", X"108b", X"0005", X"fcfb", X"0bd0", X"00b8", X"e732", X"fa92", X"f2c6", X"0718", X"edb0", X"f990",
                                                        X"1012", X"062f", X"0684", X"0e88", X"0fa4", X"f778", X"0944", X"f3cd", X"f615", X"12d1", X"fc65", X"e8d1", X"0286", X"1697",
                                                        X"f90a", X"fb3a", X"d4a2", X"0b31", X"fccc", X"07a1", X"1610", X"1735", X"f4b4", X"ff84", X"0d9c", X"f2e6", X"0741", X"0188",
                                                        X"f9b2", X"eeb4", X"09f9", X"050f", X"f31d", X"0453", X"fe7a", X"f15a", X"01e1", X"f3fc", X"21b7", X"f5b6", X"0e34", X"06c5",
                                                        X"f576", X"efa9", X"0ce6", X"fd59", X"171d", X"0aa6", X"0869", X"f675", X"1b9e", X"fb11", X"0123", X"fb16", X"f30c", X"fc91",
                                                        X"fb09", X"f5be", X"fd78", X"f8ea", X"e35c", X"04d4", X"1495", X"fa39", X"ffd6", X"eee9", X"f409", X"ec3a", X"fad3", X"fdfc",
                                                        X"1764", X"f85c", X"0c26", X"f4dc", X"f658", X"0d95", X"e611", X"f919", X"e65a", X"eb63", X"0852", X"0875", X"f8c6", X"fa75",
                                                        X"1053", X"fe09", X"0045", X"11c1", X"f034", X"0879", X"0aa0", X"007e", X"ff9a", X"047d", X"042d", X"f338", X"fc6f", X"05d3",
                                                        X"0fe7", X"f881", X"f7a4", X"ff4b", X"ef8c", X"0e87", X"0b98", X"04a4", X"feeb", X"f148", X"ffce", X"f6e6", X"2149", X"e498",
                                                        X"f665", X"03b5", X"1a89", X"06a5", X"0bef", X"167f", X"112c", X"0a93", X"0088", X"fd2e", X"0ad7", X"ed37", X"02f9", X"0c6b",
                                                        X"f3a2", X"fa37", X"09f4", X"0897", X"ffcf", X"f6a1", X"dba8", X"074f", X"09c3", X"00b6", X"fd6b", X"fac5", X"0bf1", X"f4c5",
                                                        X"13df", X"1755", X"05d6", X"f6a0", X"fe83", X"f76b", X"1635", X"1426", X"fcf2", X"fdf4", X"09ff", X"13c9", X"f02d", X"f85f",
                                                        X"17c2", X"ea6c", X"0535", X"ff49", X"0038", X"fd45", X"e811", X"f452", X"fc97", X"0866", X"243b", X"096d", X"0aec", X"0779",
                                                        X"fae6", X"ffd4", X"139b", X"effc", X"02d5", X"2458", X"e564", X"fd76", X"fcc0", X"eeb0", X"ea9e", X"02c1", X"f7cc", X"e89e",
                                                        X"fb8a", X"1a61", X"ec6b", X"045f", X"1b43", X"f0cf", X"07e4", X"02dd", X"1450", X"014a", X"e31c", X"01a7", X"0095", X"0721",
                                                        X"1c3e", X"f555", X"edab", X"020f", X"f75a", X"f96f", X"0a9a", X"ef71", X"0cf5", X"06a3", X"1fd8", X"f3b3", X"0887", X"010c",
                                                        X"0bb5", X"fd13", X"fd4e", X"0110", X"e401", X"04fb", X"f4f8", X"face", X"047c", X"fd67", X"179c", X"fae2", X"f079", X"1c11",
                                                        X"f430", X"2135", X"fa40", X"f956", X"fd82", X"f596", X"f8fc", X"0216", X"057e", X"f825", X"0011", X"02f6", X"208e", X"ff58",
                                                        X"051e", X"049c", X"fab0", X"0686", X"ff60", X"f30c", X"f65c", X"f606", X"0610", X"fdb7", X"02b2", X"01ed", X"0a0c", X"03f9",
                                                        X"fb21", X"0ed5", X"ee6f", X"e6d5", X"e808", X"fe98", X"fef8", X"f57c", X"f4a7", X"f6f0", X"e787", X"0d9a", X"0ed5", X"0293",
                                                        X"ed4e", X"f320", X"06aa", X"0438", X"1445", X"062e", X"faac", X"0d42", X"f40c", X"eab7", X"1159", X"0d65", X"ea54", X"01c2",
                                                        X"f9f6", X"0270", X"0722", X"0d5b", X"fd92", X"1d19", X"f659", X"0e04", X"f54d", X"1490", X"12c2", X"0466", X"1bcc", X"f99e",
                                                        X"f4c0", X"0235", X"f84f", X"f364", X"01c9", X"f134", X"ff09", X"f5c6", X"1bcf", X"0c03", X"ea81", X"18d5", X"069e", X"ea32",
                                                        X"0f71", X"f62e", X"188c", X"02a4", X"11b5", X"f9b2", X"048c", X"08a8", X"f5b4", X"f256", X"f5cc", X"fee3", X"f8c1", X"f1fb",
                                                        X"1b5c", X"faac", X"097c", X"178c", X"f382", X"fe4c", X"0958", X"fa7b", X"093b", X"06d8", X"0b85", X"fdb8", X"0d15", X"f4ec",
                                                        X"0910", X"f98e", X"0897", X"ea42", X"fc12", X"147b", X"0e83", X"fb9e", X"0f50", X"f72a", X"08f1", X"fc0f", X"f071", X"012f",
                                                        X"0585", X"ee5a", X"f401", X"f656", X"f711", X"0d68", X"ef55", X"ec85", X"1e0b", X"fb05", X"f4cc", X"fb31", X"e726", X"0e4e",
                                                        X"ed46", X"f839", X"d873", X"f722", X"efe0", X"e698", X"faf8", X"0a79", X"f043", X"f891", X"1e95", X"04b7", X"0df8", X"ffe9",
                                                        X"ee9a", X"f805", X"efc3", X"0a40", X"e860", X"e710", X"f787", X"f7dd", X"013b", X"0194", X"f057", X"03fa", X"197f", X"033f",
                                                        X"0851", X"f133", X"ef8e", X"ff39", X"022d", X"e96d", X"113f", X"0004", X"1005", X"06bb", X"0915", X"f4f9", X"e0eb", X"01c6",
                                                        X"ec7e", X"f843", X"0fea", X"0554", X"e983", X"0bf6", X"fa54", X"ef51", X"15a4", X"ec6d", X"f4a6", X"efab", X"0d05", X"f13a",
                                                        X"0436", X"132d", X"0d2b", X"0878", X"069c", X"e74a", X"f1f4", X"fda2", X"fd88", X"f5b9", X"de0d", X"e658", X"f6b5", X"f509",
                                                        X"095f", X"f9aa", X"0474", X"fbac", X"faad", X"05c2", X"f50b", X"fa05", X"f521", X"f88a", X"fa6e", X"f719", X"0e19", X"f438",
                                                        X"ffdf", X"e690", X"fb66", X"e847", X"0c80", X"0519", X"0f81", X"02a6", X"fae9", X"ffc1", X"01cd", X"fb1b", X"0940", X"f770",
                                                        X"fe87", X"f741", X"0305", X"fb63", X"f6c3", X"097b", X"e67d", X"f523", X"1bb2", X"fca1", X"fa78", X"0451", X"07d3", X"03ef",
                                                        X"0d77", X"0e82", X"101b", X"17e9", X"0f03", X"05e7", X"1860", X"fad5", X"171e", X"f1dd", X"f44a", X"fea7", X"fe5b", X"0826",
                                                        X"17d2", X"fcb1", X"0ee5", X"0833", X"e408", X"ee2f", X"0e59", X"fb66", X"ff6b", X"076a", X"0761", X"12b3", X"f68b", X"f215",
                                                        X"f68f", X"fa1e", X"1a32", X"0389", X"14dc", X"0a51", X"06d9", X"02af", X"013b", X"0c2c", X"06f4", X"0579", X"147d", X"09db",
                                                        X"e15b", X"1577", X"099e", X"03fa", X"093c", X"08a7", X"1996", X"0578", X"fd80", X"fcbb", X"f378", X"04d9", X"029c", X"ee30",
                                                        X"09ed", X"fe3a", X"f673", X"0747", X"f74c", X"03c8", X"1606", X"061c", X"0790", X"fe50", X"244d", X"0ba7", X"ee1b", X"03ce",
                                                        X"0602", X"f490", X"1511", X"090b", X"eae9", X"01ab", X"eb2a", X"07ed", X"0017", X"f1ce", X"0669", X"f273", X"19a6", X"01dc",
                                                        X"e0ed", X"04ce", X"ef8e", X"1713", X"0697", X"1081", X"dc73", X"13c6", X"ff52", X"f80a", X"0057", X"0127", X"f8f1", X"fe12",
                                                        X"ea1b", X"0c90", X"f38f", X"1a6b", X"0ba8", X"f90b", X"123d", X"f560", X"fb39", X"f55e", X"02ae", X"0cd5", X"028b", X"0323",
                                                        X"1055", X"0bb8", X"f57d", X"e8a3", X"fbb6", X"fc95", X"1155", X"f7c6", X"e242", X"0db6", X"f17f", X"f70b", X"1702", X"1186",
                                                        X"f530", X"f883", X"0a43", X"f0a2", X"d7e0", X"fa4f", X"012f", X"0377", X"f528", X"0da3", X"053c", X"ea8e", X"f23d", X"03b7",
                                                        X"fe10", X"0b88", X"06af", X"01e2", X"f674", X"fb4e", X"1254", X"f9aa", X"fa2d", X"0261", X"f628", X"03e0", X"0731", X"1229",
                                                        X"061a", X"f903", X"1041", X"fab5", X"f500", X"fb73", X"fc04", X"e4a2", X"19e6", X"ea09", X"110e", X"e481", X"005e", X"09ad",
                                                        X"fb31", X"08b9", X"f90c", X"fa30", X"1179", X"1394", X"efd5", X"f374", X"fc1e", X"0c39", X"0472", X"fa02", X"f639", X"038d",
                                                        X"0bcd", X"f948", X"e52a", X"ee62", X"1e34", X"f9ed", X"190c", X"fc39", X"f8e7", X"f338", X"ef5b", X"ffd4", X"fc02", X"e79a",
                                                        X"1380", X"ebb7", X"0cb9", X"fca1", X"f5b9", X"f843", X"fc2f", X"fd29", X"0418", X"0315", X"edaa", X"ebdd", X"f643", X"fbda",
                                                        X"ec76", X"0087", X"e73b", X"efad", X"1e3b", X"0877", X"0f9b", X"ff1a", X"f314", X"eb7d", X"ff41", X"f373", X"f1c3", X"10d2",
                                                        X"fb0f", X"0b8d", X"fe24", X"fd6d", X"f6dc", X"fbaa", X"f28e", X"ee44", X"0c4e", X"085a", X"12b4", X"1493", X"131e", X"e1b1",
                                                        X"0336", X"f883", X"eff7", X"0f62", X"e5e6", X"f624", X"0351", X"f753", X"03c6", X"e9b5", X"f5be", X"205c", X"0618", X"f650",
                                                        X"007f", X"0c5e", X"05ac", X"0697", X"f66a", X"ecdf", X"0d7b", X"f214", X"fd1d", X"f154", X"f909", X"038a", X"0054", X"fb22",
                                                        X"083e", X"04c4", X"eb71", X"f588", X"fbff", X"eaf1", X"fee1", X"01a4", X"04bd", X"f0f9", X"071f", X"043b", X"fae6", X"fa57",
                                                        X"0f4e", X"f868", X"06a4", X"f88c", X"18fc", X"f7ec", X"0ae0", X"fc21", X"0c5b", X"0d40", X"e132", X"ee81", X"0943", X"0b27",
                                                        X"ffe8", X"061f", X"f344", X"0821", X"e99c", X"fa03", X"f4b7", X"0a8a", X"1169", X"003e", X"f42b", X"fc63", X"edf7", X"0180",
                                                        X"0302", X"13cb", X"fff5", X"fe8b", X"fd22", X"07c7", X"043f", X"033f", X"f266", X"f902", X"0d83", X"fc0b", X"1c4e", X"ff7f",
                                                        X"1734", X"046d", X"0128", X"1061", X"104b", X"f566", X"f3c7", X"1d8f", X"f643", X"0b0b", X"f36e", X"f972", X"fe0a", X"046d",
                                                        X"0c7b", X"0319", X"e4dd", X"0756", X"fb6f", X"f149", X"0b31", X"1556", X"fa18", X"e8f8", X"efef", X"fd23", X"09d1", X"0b94",
                                                        X"04b7", X"0f74", X"ff99", X"0931", X"ffe1", X"01cc", X"f4cb", X"0f09", X"138d", X"0660", X"eaa0", X"fb66", X"fea6", X"fde7",
                                                        X"03c2", X"04af", X"01cc", X"154d", X"056f", X"08f0", X"eeb0", X"0f73", X"e9e0", X"0bba", X"0068", X"084e", X"f67a", X"fedd",
                                                        X"07fd", X"f38a", X"eb7f", X"1c57", X"167f", X"fd4e", X"f945", X"f969", X"eea4", X"10c1", X"0294", X"13ba", X"0a71", X"0ed1",
                                                        X"e681", X"f19f", X"fc76", X"02ce", X"fa2d", X"1aeb", X"0981", X"0018", X"ff34", X"0af8", X"e6f5", X"13f7", X"050f", X"01ef",
                                                        X"f1aa", X"0570", X"0da9", X"01d8", X"ff6d", X"f80b", X"fcd8", X"eced", X"132a", X"fd8d", X"10e7", X"fe2b", X"db0b", X"01d4",
                                                        X"e823", X"0066", X"27ce", X"e807", X"1659", X"05a2", X"f309", X"0435", X"03e3", X"1999", X"00fd", X"f158", X"0b34", X"0854",
                                                        X"0441", X"fa6e", X"f068", X"f8c9", X"f255", X"f2e2", X"f86b", X"1b80", X"f7ba", X"1086", X"0a57", X"09df", X"f932", X"0ceb",
                                                        X"f204", X"0e75", X"f97a", X"f697", X"ff8f", X"fe3b", X"0bac", X"f49d", X"eb20", X"eddd", X"09fa", X"f36b", X"0bfc", X"fa6e",
                                                        X"ea4a", X"fedd", X"fba3", X"f0a5", X"1b3f", X"f546", X"fb27", X"0886", X"054a", X"ef86", X"07eb", X"138d", X"f97e", X"17aa",
                                                        X"063f", X"f9b3", X"f5b8", X"0e62", X"f1ad", X"ee9e", X"1d29", X"f181", X"0351", X"f331", X"00c6", X"0942", X"fe72", X"e83b",
                                                        X"265d", X"e9d3", X"0a19", X"f98f", X"e790", X"0369", X"e6fd", X"dc31", X"18f7", X"ebfa", X"ff4f", X"f617", X"09a2", X"f73c",
                                                        X"f862", X"e0c2", X"1559", X"f2e6", X"fe9b", X"0b4b", X"ecb8", X"08ab", X"eaef", X"0d8d", X"e1b1", X"03f6", X"f4e3", X"efa1",
                                                        X"0261", X"104f", X"e2d9", X"042e", X"1c0e", X"fcd8", X"000f", X"fa07", X"ed78", X"0879", X"fa04", X"03b3", X"162c", X"fde2",
                                                        X"0451", X"fab3", X"0ff9", X"e4b7", X"0dd7", X"15ae", X"1271", X"f61c", X"027f", X"0448", X"de02", X"04f3", X"fe43", X"eee3",
                                                        X"1b50", X"1196", X"efa7", X"051f", X"1530", X"eba1", X"f3e6", X"0221", X"2c83", X"f4e4", X"158f", X"ea8d", X"fd68", X"0575",
                                                        X"08a5", X"f9b3", X"f668", X"0afb", X"04eb", X"fedc", X"fee2", X"f371", X"e7cc", X"1df6", X"007a", X"0e96", X"fc6f", X"f2b7",
                                                        X"ec08", X"fa6c", X"efff", X"f97b", X"f01b", X"f903", X"0a7b", X"fdc4", X"1d69", X"f7e1", X"fe5d", X"fcf9", X"0e07", X"1082",
                                                        X"042c", X"0c09", X"fe86", X"eb9e", X"ffee", X"0563", X"f354", X"0969", X"074c", X"e29e", X"1124", X"ef0d", X"f75f", X"1545",
                                                        X"0c0a", X"f212", X"02eb", X"fb81", X"03be", X"eadc", X"1193", X"f273", X"08ed", X"16f6", X"fbe2", X"fb67", X"12a7", X"fdea",
                                                        X"f857", X"1b02", X"f890", X"02ae", X"fe4b", X"f99a", X"ffd2", X"0e45", X"1c7f", X"009f", X"e7fa", X"1869", X"0ed6", X"f864",
                                                        X"ff58", X"040e", X"f305", X"045b", X"e0b5", X"f896", X"eb97", X"0858", X"0e11", X"f2ff", X"1866", X"ec9f", X"06cd", X"004c",
                                                        X"0651", X"f73d", X"10f4", X"09ee", X"f5e0", X"0701", X"eb66", X"fde2", X"0349", X"0931", X"1c0e", X"1215", X"1d5a", X"03ad",
                                                        X"0345", X"f833", X"f3e3", X"2793", X"ffe7", X"137b", X"f47d", X"0f40", X"eddb", X"f2a6", X"0c5b", X"eee7", X"0788", X"e50a",
                                                        X"0448", X"ecae", X"033c", X"1750", X"0a54", X"028f", X"16d7", X"0784", X"06c3", X"f913", X"dc7b", X"fcfe", X"f4ed", X"f4d5",
                                                        X"0e3b", X"016c", X"0caf", X"f62c", X"eb95", X"1356", X"021d", X"1183", X"f738", X"fa9c", X"ef52", X"d629", X"dc8e", X"ef89",
                                                        X"1bd9", X"0e9b", X"0193", X"024e", X"06fc", X"1257", X"d0c7", X"f186", X"f6eb", X"fd62", X"f63c", X"ff8f", X"16c9", X"0c4a",
                                                        X"e215", X"1553", X"fbb2", X"f35c", X"173e", X"fcb5", X"fd36", X"0d06", X"f28d", X"e415", X"f081", X"12ad", X"0f5d", X"154e",
                                                        X"f184", X"0f87", X"e900", X"ff0f", X"f879", X"07d3", X"0256", X"0ac4", X"fe54", X"092b", X"1aa7", X"0a90", X"fb0d", X"09e4",
                                                        X"0251", X"fee4", X"fd72", X"1009", X"f2b7", X"f5b1", X"120c", X"0a62", X"1071", X"f572", X"0e2b", X"1a7b", X"fa37", X"f4fc",
                                                        X"ea11", X"09f6", X"f633", X"1c06", X"fe66", X"f20c", X"07f1", X"f587", X"e846", X"fea9", X"15e6", X"ff7f", X"0f62", X"012a",
                                                        X"2e1a", X"ee1b", X"ffbf", X"061f", X"f0e3", X"1715", X"0cb0", X"13cb", X"03e5", X"f684", X"0f90", X"00ae", X"1712", X"072c",
                                                        X"e33e", X"0570", X"eac1", X"de76", X"f18a", X"e55d", X"15bd", X"26a4", X"f273", X"1f8a", X"15e1", X"fc38", X"0307", X"f6a7",
                                                        X"04dd", X"fb22", X"ee48", X"df29", X"d879", X"e180", X"f4a8", X"fd89", X"0746", X"ff07", X"0d44", X"0910", X"13fc", X"f53a",
                                                        X"0698", X"07c3", X"dec8", X"06bb", X"e75b", X"1126", X"f50d", X"fe6e", X"019c", X"f228", X"efd3", X"ef30", X"0f28", X"073c",
                                                        X"12c3", X"08c5", X"04c7", X"f9dd", X"d509", X"02e4", X"f00d", X"f60a", X"0305", X"ed4b", X"f433", X"f464", X"e094", X"f7c7",
                                                        X"f864", X"1bf5", X"0933", X"093e", X"11a0", X"ff9d", X"df02", X"e864", X"e88d", X"019a", X"f559", X"df1e", X"0b02", X"035a",
                                                        X"0d22", X"066a", X"e47b", X"0394", X"fecd", X"fe87", X"072c", X"f8e2", X"dcd8", X"01cc", X"f832", X"f691", X"0602", X"f7be",
                                                        X"febe", X"03d5", X"0327", X"f486", X"15cf", X"02c6", X"1330", X"f93e", X"0532", X"f95e", X"f16c", X"fa7b", X"f380", X"0322",
                                                        X"e13c", X"efea", X"f260", X"f34d", X"f004", X"0c0d", X"f44a", X"193d", X"197a", X"03c2", X"0821", X"fafc", X"f5d4", X"fbbd",
                                                        X"fb13", X"1a5c", X"edac", X"0af8", X"04d4", X"ec04", X"f2b9", X"00d8", X"1a03", X"08ff", X"f333", X"0b1f", X"0ecc", X"0d38",
                                                        X"f252", X"f894", X"efa5", X"f373", X"fc24", X"f7f7", X"f654", X"10d9", X"f625", X"f7e7", X"0a1b", X"fc99", X"076e", X"008e",
                                                        X"fe47", X"010a", X"ef34", X"07c3", X"0842", X"fbe9", X"e580", X"fbd6", X"00ab", X"f379", X"ed2d", X"f3ab", X"1e54", X"f73c",
                                                        X"fb60", X"ecb4", X"f3f9", X"e5f4", X"0775", X"0820", X"080d", X"fd5a", X"e785", X"0b95", X"02e3", X"f9de", X"151f", X"0205",
                                                        X"f730", X"f78a", X"f7e8", X"02ed", X"08e3", X"ffac", X"0c8d", X"f9a7", X"1e92", X"0ff0", X"de33", X"1914", X"fdcd", X"ff12",
                                                        X"1c4c", X"090c", X"f577", X"fb1e", X"e05e", X"f5d8", X"0cd6", X"0498", X"0f25", X"0078", X"1244", X"0aa5", X"f3e1", X"1e14",
                                                        X"0769", X"179d", X"1f7a", X"f33c", X"fff3", X"065c", X"01a3", X"f88e", X"00c8", X"1210", X"1150", X"f1d8", X"10af", X"13e2",
                                                        X"df99", X"f9e7", X"0aa8", X"fc8e", X"11a9", X"f610", X"fdc9", X"052e", X"f40d", X"f944", X"f25b", X"ef35", X"155e", X"0583",
                                                        X"110d", X"fdfe", X"0bda", X"f74d", X"e261", X"fb26", X"115e", X"fb7a", X"ef56", X"002a", X"e4d6", X"0fe4", X"0689", X"dce2",
                                                        X"0ece", X"09d7", X"1728", X"0bad", X"0a50", X"1dbe", X"e5aa", X"18a3", X"131e", X"fe5d", X"0c2b", X"1542", X"eb13", X"fb4e",
                                                        X"19bf", X"fede", X"073d", X"e044", X"04ef", X"efbf", X"f6aa", X"0721", X"db63", X"1395", X"20ac", X"e9e4", X"f720", X"0462",
                                                        X"1eb9", X"0217", X"05ef", X"f7ee", X"0d13", X"fb8f", X"1dbe", X"eb85", X"07f0", X"fa4e", X"f4e0", X"ff33", X"1285", X"0c55",
                                                        X"fe68", X"fd98", X"0681", X"02ab", X"076d", X"f4d2", X"0644", X"e5ad", X"ed79", X"f4e2", X"e189", X"fe2a", X"fb3b", X"f155",
                                                        X"0766", X"09de", X"1708", X"1160", X"1038", X"033a", X"0cdf", X"f118", X"ff3c", X"04e3", X"08bd", X"ef73", X"17b3", X"e245",
                                                        X"e570", X"ec77", X"f130", X"028f", X"e40e", X"03c2", X"fbfc", X"1656", X"143f", X"f9fd", X"0d12", X"ebc2", X"f2c4", X"0b68",
                                                        X"e816", X"e0b9", X"0abc", X"f0af", X"10a7", X"1e25", X"e506", X"053d", X"faa3", X"fba3", X"08a0", X"12c4", X"fa05", X"fedc",
                                                        X"ea01", X"ee9a", X"059f", X"df0e", X"f8f8", X"fec4", X"02a3", X"ff77", X"0bcf", X"f880", X"17c2", X"01e1", X"117d", X"00b2",
                                                        X"f15e", X"00ca", X"f53b", X"0051", X"e17e", X"e2c3", X"fc4f", X"f807", X"ead2", X"f7e8", X"0527", X"214c", X"16fe", X"0a27",
                                                        X"04b9", X"03fb", X"f741", X"0766");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0766";
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

