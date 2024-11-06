-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block354.vhd
-- Created: 2024-11-04 16:44:13
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block354
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage120/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block354 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block354;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block354 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0461", X"0acb", X"0045", X"0224", X"077c", X"fe4f",
                                                        X"fd10", X"0643", X"efd6", X"fee3", X"0c46", X"058d", X"f3e6", X"efef", X"fd4b", X"04f5", X"fc84", X"0e0b", X"03ed", X"0531",
                                                        X"0345", X"fefc", X"fc62", X"09a5", X"f148", X"fa04", X"0a7c", X"082d", X"fc4b", X"014a", X"fa34", X"00a4", X"f67b", X"1035",
                                                        X"fe11", X"0426", X"fe9c", X"0146", X"fe66", X"0954", X"0121", X"f958", X"0e8f", X"ff49", X"022c", X"0101", X"faea", X"f752",
                                                        X"f506", X"07cf", X"fce5", X"0533", X"fd84", X"03e1", X"0ca8", X"06c3", X"07f3", X"fb59", X"0ed0", X"0661", X"0026", X"f959",
                                                        X"fce4", X"fcf7", X"f74c", X"fffc", X"f72d", X"ff97", X"fa31", X"0009", X"fed0", X"0677", X"0032", X"fd9a", X"08ca", X"0e24",
                                                        X"ff62", X"f2fe", X"02ad", X"fed8", X"fad7", X"ff03", X"f610", X"fd18", X"fb9b", X"0284", X"fa86", X"04ec", X"fdbb", X"023b",
                                                        X"0851", X"042b", X"021e", X"f4c3", X"03fd", X"fc10", X"fcf9", X"003a", X"f30f", X"fa7c", X"f8f7", X"02f8", X"f77f", X"0537",
                                                        X"fcf4", X"01fb", X"013f", X"0964", X"045f", X"fa41", X"0674", X"fddb", X"0274", X"fd72", X"f561", X"026c", X"fa81", X"0255",
                                                        X"010d", X"00d7", X"009c", X"00a4", X"f786", X"01f2", X"0795", X"04b5", X"0169", X"00bc", X"047b", X"fd3b", X"f96d", X"ffde",
                                                        X"f8ee", X"03f2", X"00ad", X"fcc4", X"087a", X"02a2", X"f642", X"fb3f", X"ff99", X"02ba", X"04d6", X"0263", X"08eb", X"f262",
                                                        X"00e3", X"fd68", X"f951", X"0152", X"f3f3", X"fbbb", X"0558", X"0452", X"f722", X"06d2", X"01f9", X"f743", X"ffec", X"04ca",
                                                        X"0a4a", X"ef24", X"fce8", X"00c6", X"feac", X"00ff", X"ff63", X"fb44", X"03a7", X"0434", X"f204", X"06a3", X"03e0", X"009c",
                                                        X"ff49", X"0839", X"0cf4", X"f56b", X"fb65", X"0152", X"01e3", X"00bc", X"fc9c", X"f025", X"fc4c", X"01b1", X"efc7", X"0399",
                                                        X"f970", X"089d", X"022e", X"0511", X"0c86", X"fb5a", X"f73c", X"0305", X"fe23", X"fdbc", X"fd5a", X"fa5c", X"ff1a", X"05bc",
                                                        X"f870", X"ff67", X"0017", X"0a8c", X"0499", X"0922", X"0a54", X"00a2", X"f8b4", X"0707", X"035c", X"fc17", X"0017", X"fd78",
                                                        X"03dc", X"fb7e", X"004d", X"fcd4", X"fd53", X"0504", X"0158", X"0801", X"0559", X"02d1", X"f954", X"05c9", X"05b3", X"ffc8",
                                                        X"fab9", X"fb6e", X"f991", X"fa20", X"ff8f", X"fd7f", X"fe51", X"014c", X"feb2", X"025e", X"fecc", X"07ce", X"f660", X"ffd9",
                                                        X"02c1", X"fe8b", X"e821", X"feb4", X"fa9f", X"023f", X"0731", X"0469", X"f681", X"ee9b", X"fd22", X"05f4", X"fac5", X"0b17",
                                                        X"ff2b", X"05f1", X"ffa6", X"fec2", X"0137", X"083c", X"f594", X"fe3f", X"0d62", X"fc4b", X"f36d", X"f172", X"f7e4", X"fd97",
                                                        X"f9e9", X"0c11", X"f775", X"06db", X"fbb9", X"ff7e", X"0260", X"0860", X"f82c", X"fa47", X"0aa3", X"027a", X"fe02", X"fac7",
                                                        X"f8c4", X"011b", X"f952", X"0f31", X"fb96", X"02c0", X"f5ad", X"ffb5", X"f72b", X"08c6", X"ff89", X"fbdd", X"0bb7", X"06cf",
                                                        X"f6ba", X"05f2", X"fcc3", X"fe9f", X"f786", X"08e3", X"f3af", X"027b", X"fc82", X"005e", X"f75f", X"0ba8", X"fc63", X"fa17",
                                                        X"0e6d", X"07f8", X"ffe9", X"f49b", X"fded", X"fc1b", X"f3d6", X"02a2", X"fa6e", X"fbca", X"fd44", X"0252", X"fcf6", X"06af",
                                                        X"02e1", X"fdfd", X"0c8e", X"04fb", X"09fe", X"f83b", X"03f3", X"fa0b", X"f5f2", X"0091", X"f8b3", X"fcc3", X"ffb5", X"0306",
                                                        X"f1d4", X"0685", X"ffa1", X"045d", X"06ea", X"fd22", X"ff87", X"fd52", X"0235", X"f6e3", X"0308", X"f9a6", X"01a9", X"f984",
                                                        X"fc77", X"0271", X"f8b2", X"0277", X"08a4", X"036e", X"0211", X"080a", X"0552", X"0b9c", X"00fe", X"fe80", X"044e", X"f45e",
                                                        X"fd17", X"fd9a", X"f307", X"047d", X"fe93", X"fcdd", X"0144", X"01b8", X"f872", X"0d78", X"04e4", X"0bc4", X"04e2", X"fe36",
                                                        X"04b3", X"fa0a", X"eea6", X"0232", X"fb2e", X"0043", X"f1a4", X"fa0c", X"022c", X"02fc", X"f4ef", X"085f", X"fee8", X"0803",
                                                        X"061c", X"0249", X"07ff", X"f096", X"fa96", X"facc", X"fde0", X"0166", X"f174", X"f549", X"045a", X"050d", X"f3ae", X"0808",
                                                        X"fedd", X"0509", X"06d6", X"080d", X"0ab7", X"f466", X"fdfd", X"02f8", X"f77f", X"0063", X"f908", X"f447", X"062d", X"0050",
                                                        X"eec5", X"0293", X"fb74", X"0122", X"0255", X"0c22", X"0ceb", X"f8b8", X"fdd9", X"0389", X"fcff", X"008f", X"f557", X"f5f9",
                                                        X"03cb", X"fd41", X"f183", X"07bc", X"fea7", X"0ac2", X"0219", X"081c", X"0e39", X"fafa", X"fed5", X"028d", X"06b5", X"012e",
                                                        X"01dc", X"f987", X"01fd", X"0053", X"f63d", X"fded", X"ffee", X"0c83", X"0413", X"048d", X"0a17", X"0483", X"f8a4", X"00f8",
                                                        X"07e5", X"facf", X"fa86", X"fc65", X"ffd9", X"008a", X"fc07", X"fdea", X"f98c", X"fe7c", X"fc51", X"0987", X"0bd6", X"05f8",
                                                        X"fd37", X"f7db", X"0720", X"fcad", X"fc3e", X"ff71", X"f6a9", X"fcfb", X"ff08", X"faf0", X"f973", X"f7ed", X"f831", X"0643",
                                                        X"fe37", X"04af", X"f995", X"0a95", X"01aa", X"ff77", X"f5a7", X"fda4", X"fc2d", X"fd34", X"046d", X"ff36", X"fccb", X"f86e",
                                                        X"fc3f", X"00d4", X"f82d", X"0aa8", X"f8a7", X"fcb9", X"fbf6", X"ff5e", X"fa2e", X"01e4", X"fa41", X"0274", X"0932", X"fe02",
                                                        X"fe21", X"ed88", X"03d1", X"fb8c", X"f5ad", X"0c5d", X"00ea", X"0065", X"fe0a", X"018b", X"07b2", X"076d", X"f852", X"fa7e",
                                                        X"0c53", X"01ad", X"fabb", X"fdaa", X"ffc1", X"fcaa", X"f6e8", X"0c45", X"f989", X"fb2e", X"fe70", X"ffd2", X"f914", X"0826",
                                                        X"fc10", X"ff26", X"0c31", X"0491", X"0124", X"0069", X"fd8f", X"fcff", X"f685", X"032e", X"f627", X"fdd9", X"fe59", X"0198",
                                                        X"fe3c", X"0645", X"021e", X"fb96", X"0bce", X"ff45", X"021f", X"f9e9", X"fe44", X"fc02", X"f51a", X"07bd", X"f5e5", X"feff",
                                                        X"00b1", X"00a1", X"fe39", X"078b", X"0689", X"fe18", X"0887", X"fb66", X"00e4", X"f973", X"05ba", X"fdac", X"0068", X"0110",
                                                        X"f7c7", X"ff1a", X"f8d8", X"0346", X"fa9b", X"061f", X"0451", X"02bd", X"04b9", X"0295", X"0765", X"06a5", X"03ce", X"fe0e",
                                                        X"fe9a", X"073a", X"fbd0", X"fca7", X"fc77", X"060c", X"f4e5", X"00a8", X"fb46", X"0168", X"0505", X"01ee", X"0255", X"0848",
                                                        X"03a8", X"fd01", X"0469", X"faec", X"f8dd", X"f6c4", X"f5b0", X"ffce", X"fc08", X"f772", X"00ba", X"02fd", X"f74a", X"0825",
                                                        X"05cc", X"00c9", X"06b6", X"fe7b", X"070c", X"f3c8", X"f861", X"fd5e", X"fa00", X"0334", X"f123", X"f828", X"05ed", X"008b",
                                                        X"efaa", X"04eb", X"08a2", X"f440", X"0693", X"023c", X"081d", X"f7e1", X"fb0b", X"021e", X"fa49", X"02c4", X"ffc6", X"f5c5",
                                                        X"fe7d", X"03d0", X"f52c", X"0007", X"ff55", X"f80e", X"01c2", X"06f1", X"0ec4", X"f205", X"fca8", X"00fe", X"ff02", X"0366",
                                                        X"03bd", X"f156", X"020e", X"035f", X"f715", X"0175", X"fd2c", X"0554", X"0548", X"060e", X"0bdb", X"f701", X"feae", X"fed3",
                                                        X"0221", X"fddb", X"fe01", X"f467", X"08ae", X"fd94", X"f556", X"0800", X"00ec", X"05ee", X"034d", X"071c", X"0be0", X"f3d1",
                                                        X"fc25", X"f7ed", X"0462", X"fbb2", X"f63a", X"fcc0", X"fc4f", X"0020", X"f32c", X"00b8", X"f94e", X"0250", X"01ae", X"093b",
                                                        X"0799", X"fe4a", X"fce1", X"fb37", X"01f2", X"fefa", X"f41f", X"f8c2", X"fa2d", X"0069", X"ffd8", X"fa12", X"0094", X"f30f",
                                                        X"fc82", X"0790", X"03ba", X"0636", X"f542", X"0286", X"ff1a", X"ff7f", X"f716", X"febf", X"f76d", X"fc67", X"0131", X"f8c5",
                                                        X"feac", X"ee78", X"f9ba", X"0907", X"fbbe", X"0543", X"fb31", X"09ee", X"028f", X"fba9", X"fb6e", X"02a2", X"f267", X"fc74",
                                                        X"027c", X"f8d2", X"f694", X"ecce", X"fd07", X"fe7a", X"fb6d", X"07e1", X"f592", X"0221", X"00d9", X"fd9e", X"ff39", X"0544",
                                                        X"f9bb", X"f9cb", X"06b1", X"fb23", X"f179", X"f984", X"f9ce", X"fdc8", X"fdc0", X"0e26", X"f71b", X"009f", X"fe40", X"fea9",
                                                        X"fef3", X"0eec", X"f8da", X"fc7e", X"0b9e", X"0609", X"f64e", X"fc1f", X"fe36", X"fc0d", X"f5d6", X"0925", X"f9a2", X"040f",
                                                        X"fdc4", X"fd69", X"fcc3", X"0ac0", X"fa44", X"fa99", X"0da4", X"0256", X"0416", X"f9c2", X"ff55", X"f6d2", X"f474", X"01c9",
                                                        X"f3ea", X"fd1f", X"fde1", X"0165", X"f877", X"0eb2", X"017d", X"fc9d", X"0a85", X"fe07", X"097a", X"f89a", X"007c", X"f6c1",
                                                        X"f6ed", X"fc5e", X"f390", X"f8ed", X"fefc", X"fec2", X"f08a", X"06de", X"0297", X"fc02", X"0ba6", X"fe2c", X"0477", X"f30b",
                                                        X"fbd1", X"fc10", X"f8e8", X"018e", X"f5ce", X"07be", X"f763", X"ff57", X"f735", X"02fd", X"0370", X"ff1d", X"0903", X"043a",
                                                        X"0425", X"f77f", X"0397", X"fbdd", X"fc33", X"fd19", X"f489", X"fc25", X"faa3", X"ffe5", X"f140", X"ff90", X"fa2b", X"04b4",
                                                        X"0460", X"015a", X"0302", X"f6b2", X"047b", X"fb65", X"00d8", X"f6e6", X"f315", X"f9ac", X"f644", X"03ef", X"ead8", X"fe30",
                                                        X"0431", X"05d3", X"fbdf", X"0426", X"fd13", X"fccc", X"0228", X"fe76", X"0750", X"f75c", X"f609", X"f2f1", X"f765", X"ff8b",
                                                        X"ff46", X"0335", X"ffcb", X"01b4", X"f39b", X"f962", X"03ab", X"f872", X"0490", X"036b", X"0d59", X"f808", X"f917", X"0042",
                                                        X"fd0b", X"fd66", X"0066", X"fb20", X"ffab", X"0026", X"eebe", X"ff3e", X"01ac", X"fbc1", X"ff12", X"0446", X"0865", X"f085",
                                                        X"fc75", X"fdcc", X"04f0", X"feaf", X"0105", X"f880", X"0673", X"0094", X"f006", X"fc31", X"000f", X"00e1", X"fe4b", X"035c",
                                                        X"0d71", X"fc74", X"f8f2", X"032d", X"010b", X"fe88", X"f6f3", X"f3ae", X"097b", X"0161", X"f629", X"fd78", X"02b2", X"fcca",
                                                        X"014a", X"0955", X"0be5", X"01a4", X"fe16", X"f226", X"0625", X"0034", X"fd7a", X"f548", X"fd64", X"ff25", X"f122", X"fc12",
                                                        X"fa7b", X"0acb", X"0332", X"0977", X"0454", X"fd43", X"0195", X"0238", X"0030", X"01f8", X"f654", X"f64e", X"f98a", X"fbe7",
                                                        X"fcc9", X"fe9a", X"fe82", X"fef5", X"02ad", X"02da", X"033b", X"0749", X"fbf7", X"09ce", X"0021", X"fd4b", X"f13d", X"0132",
                                                        X"feb2", X"fc32", X"04be", X"ff29", X"f6c4", X"fb5c", X"fd39", X"036c", X"0201", X"07e7", X"fa86", X"fc87", X"0537", X"f85c",
                                                        X"f330", X"00a9", X"fcae", X"feb0", X"06e9", X"001c", X"f73e", X"fc7c", X"f999", X"0539", X"f74b", X"083a", X"f92a", X"0218",
                                                        X"00e9", X"fcaf", X"f6d3", X"081d", X"fca3", X"f990", X"0841", X"ff54", X"f37d", X"fc26", X"f8a5", X"fa87", X"fc8c", X"097e",
                                                        X"f879", X"0774", X"fd2a", X"0273", X"f3b7", X"03df", X"f3a8", X"fbdf", X"0d48", X"0660", X"f1fd", X"0397", X"ffe8", X"fb14",
                                                        X"fa25", X"0e6e", X"fc85", X"09f3", X"fe6e", X"01b2", X"f95d", X"0a0d", X"fd83", X"fd13", X"092c", X"02d7", X"0165", X"fab0",
                                                        X"ffa2", X"fecc", X"f66c", X"0879", X"f6ac", X"fd81", X"fb3f", X"000b", X"f51e", X"0a49", X"f81d", X"fc70", X"0a8b", X"0475",
                                                        X"fc10", X"f1ca", X"fb45", X"f85a", X"f459", X"02fc", X"f3b6", X"f570", X"00e8", X"0268", X"fa2d", X"0746", X"0501", X"fb75",
                                                        X"0938", X"03fc", X"06db", X"f62c", X"00eb", X"fb52", X"fc59", X"0239", X"f651", X"05bb", X"f9c1", X"0079", X"f715", X"02c4",
                                                        X"0164", X"fff0", X"07df", X"0a22", X"053f", X"fbda", X"090b", X"fd60", X"fc9f", X"f71e", X"f13d", X"faeb", X"f487", X"0380",
                                                        X"08e1", X"048e", X"ffba", X"0274", X"fcf4", X"05e1", X"0498", X"faec", X"00a1", X"fcba", X"0295", X"fae6", X"f47c", X"008b",
                                                        X"f403", X"02dc", X"fbcb", X"fcf2", X"0632", X"0073", X"f684", X"0241", X"01c5", X"029b", X"0852", X"035a", X"0675", X"f01f",
                                                        X"fdcd", X"fd6d", X"f506", X"01bf", X"fbbf", X"fa80", X"ff1c", X"00c8", X"f6ec", X"05bf", X"fe49", X"fd9f", X"0642", X"0426",
                                                        X"0c0a", X"f2ae", X"f4e1", X"00a8", X"fbe8", X"03cc", X"f865", X"fe8d", X"03a9", X"0505", X"efb3", X"0b21", X"027a", X"f64f",
                                                        X"0184", X"052f", X"081b", X"f739", X"fe02", X"0111", X"fe62", X"0359", X"fd60", X"f843", X"0308", X"00b4", X"ef59", X"f91e",
                                                        X"fe2c", X"0905", X"fb5e", X"083a", X"0d28", X"f5d7", X"f939", X"06a6", X"feda", X"00b1", X"ff6e", X"fa38", X"fd37", X"fdb7",
                                                        X"f29b", X"03fb", X"fd7e", X"f980", X"0434", X"07bf", X"0b56", X"ffe6", X"f412", X"04a9", X"02cc", X"ff4c", X"f4a4", X"fd12",
                                                        X"fb1e", X"0068", X"f616", X"fc68", X"fdc6", X"04bf", X"008c", X"0583", X"08dc", X"0403", X"f5b7", X"fa57", X"07ee", X"fff0",
                                                        X"fbe4", X"f686", X"fbb6", X"01c0", X"f7c0", X"f673", X"f994", X"fc8f", X"fd56", X"0648", X"08bc", X"05e8", X"f678", X"f6bb",
                                                        X"0384", X"ff11", X"f24d", X"fb7a", X"0078", X"02fb", X"ff89", X"fa0d", X"026d", X"f027", X"feba", X"06bf", X"04e6", X"09d5",
                                                        X"f3c3", X"0112", X"03d6", X"fb8b", X"017c", X"034d", X"f483", X"0148", X"0780", X"01fb", X"fa0b", X"f139", X"fc7f", X"07af",
                                                        X"f4cf", X"0663", X"00b7", X"09eb", X"0067", X"0285", X"02cd", X"077c", X"fd1f", X"ff3d", X"0b95", X"fd5d", X"0199", X"f633",
                                                        X"fc06", X"ffd1", X"f4f9", X"0726", X"fc48", X"05f2", X"fd17", X"fea6", X"f8f9", X"09a0", X"f832", X"fe0c", X"0f4d", X"ff47",
                                                        X"fb41", X"f62a", X"f730", X"f980", X"f6cd", X"05de", X"f923", X"0334", X"fcd4", X"fef1", X"fcd3", X"0bba", X"0178", X"fd33",
                                                        X"0ca8", X"0258", X"fdd0", X"006e", X"fba5", X"fcb3", X"f627", X"0633", X"ff88", X"03e0", X"fa36", X"0012", X"fe65", X"07c5",
                                                        X"0502", X"f892", X"07ed", X"0476", X"fc28", X"06bb", X"0069", X"ffc2", X"fd0d", X"fdb0", X"f49b", X"fd27", X"f812", X"0407",
                                                        X"faa5", X"0822", X"0765", X"f894", X"051e", X"08d4", X"01a4", X"f77a", X"fdab", X"fb5e", X"028a", X"0430", X"f337", X"fde4",
                                                        X"f6e4", X"0351", X"f8d3", X"060c", X"fff2", X"fd74", X"ff6c", X"04be", X"f78e", X"0987", X"0311", X"fa40", X"f9d1", X"fbca",
                                                        X"ede2", X"f8f2", X"f680", X"061d", X"f191", X"022b", X"feaa", X"0567", X"011d", X"0927", X"ffeb", X"0ae1", X"037a", X"ff10",
                                                        X"ffc8", X"f6d1", X"f6e1", X"f792", X"f5a8", X"0375", X"f8ba", X"06e9", X"01f3", X"0645", X"fc21", X"fcff", X"087e", X"ff27",
                                                        X"0398", X"fc23", X"0561", X"f7f0", X"fd56", X"fc4e", X"f7e2", X"01be", X"05bd", X"faf2", X"0726", X"ff26", X"f7e3", X"0823",
                                                        X"08a7", X"fb20", X"0211", X"005a", X"088e", X"f691", X"f8ea", X"fc7b", X"f805", X"0043", X"0067", X"f2e1", X"0665", X"fdb0",
                                                        X"f633", X"03d9", X"0057", X"f26b", X"02e6", X"04fd", X"0d52", X"f949", X"f564", X"0a41", X"fd2b", X"0079", X"fade", X"f729",
                                                        X"f972", X"ff7e", X"f058", X"01e1", X"fd36", X"0674", X"fc6d", X"09e8", X"0aa2", X"f521", X"f4af", X"0485", X"fc6b", X"ffc9",
                                                        X"f1b9", X"f734", X"05e3", X"f95f", X"f29d", X"ff28", X"003f", X"0082", X"0565", X"0873", X"0fee", X"f87f", X"fc04", X"05cf",
                                                        X"0771", X"0419", X"f8a6", X"fb62", X"f9f7", X"00b1", X"f689", X"fdc9", X"f98e", X"063d", X"014a", X"06f6", X"1005", X"01df",
                                                        X"f6fb", X"0511", X"05e8", X"ff8d", X"ed04", X"fa78", X"fcb4", X"fbca", X"f979", X"0421", X"fc7c", X"0215", X"fd87", X"0d4c",
                                                        X"05e8", X"0593", X"fbb9", X"fa3c", X"042d", X"00ce", X"f5f3", X"fbc4", X"03de", X"fa33", X"fd53", X"fb5d", X"fbe2", X"f7e9",
                                                        X"fdea", X"0898", X"fb2f", X"0804", X"fb09", X"0674", X"ffd6", X"002d", X"fc1b", X"05fd", X"fb01", X"ffc3", X"0ac0", X"fd6c",
                                                        X"f447", X"f866", X"f910", X"03cb", X"fb13", X"0b3c", X"f8b7", X"051f", X"00d2", X"fda4", X"fb2b", X"075c", X"f95e", X"fde0",
                                                        X"08b2", X"f991", X"fa59", X"fa5a", X"fce9", X"037e", X"f846", X"0fe1", X"fe7e", X"fa6f", X"fd41", X"faf9", X"0205", X"092d",
                                                        X"fa69", X"fc80", X"07a9", X"063b", X"fbba", X"00c9", X"fa32", X"ffbc", X"f37b", X"0cbc", X"f46e", X"0941", X"fcd7", X"fcb5",
                                                        X"fb44", X"09e4", X"0390", X"fadc", X"10e6", X"fa2c", X"fc38", X"024d", X"0414", X"fea9", X"f5eb", X"0a2d", X"f51b", X"034c",
                                                        X"fda6", X"01b6", X"f951", X"0c71", X"fb82", X"fb9e", X"0e1a", X"026c", X"f5b9", X"fdb3", X"0060", X"fb08", X"fad3", X"0393",
                                                        X"f745", X"0102", X"fcb9", X"026b", X"fde3", X"06e7", X"fcf1", X"ffb0", X"0b2b", X"0f97", X"fff9", X"f936", X"ffec", X"fced",
                                                        X"f7c3", X"041c", X"f585", X"fb40", X"fabb", X"0152", X"ef44", X"0860", X"03f2", X"015a", X"05ab", X"ff15", X"0248", X"016d",
                                                        X"0458", X"fa98", X"fa15", X"fc1f", X"f666", X"f9e3", X"fe08", X"fe45", X"f355", X"04e7", X"feaf", X"00d2", X"0737", X"05d8",
                                                        X"0335", X"0cff", X"00f1", X"0027", X"044b", X"f196", X"f96a", X"fabb", X"f822", X"0318", X"f4e3", X"0148", X"053d", X"feae",
                                                        X"fb04", X"05f7", X"ffeb", X"fb81", X"0318", X"0123", X"0580", X"f787", X"f6df", X"fecd", X"f514", X"02b3", X"f92e", X"fb21",
                                                        X"016c", X"0132", X"f61a", X"0433", X"01d6", X"ff7d", X"005d", X"011d", X"072f", X"f742", X"fc25", X"041a", X"f9e4", X"0157",
                                                        X"fe16", X"f4cb", X"0263", X"0075", X"f2fb", X"0627", X"fbff", X"f4d8", X"0253", X"06f7", X"0a08", X"f00a", X"f9bb", X"0332",
                                                        X"fd34", X"fb0e", X"fa07", X"f2e2", X"f9e3", X"025f", X"f17c", X"092a", X"ffee", X"fe10", X"0066", X"0529", X"0be6", X"f35a",
                                                        X"f26a", X"fe18", X"00dd", X"fedb", X"fb2f", X"f6cd", X"0258", X"020e", X"f31f", X"0424", X"fdba", X"0d54", X"0116", X"0a0c",
                                                        X"0c85", X"ff2e", X"fc27", X"0314", X"04e5", X"fd7e", X"fabb", X"f4bd", X"faf4", X"0060", X"fb6e", X"02be", X"fe12", X"0d28",
                                                        X"f8e6", X"07a5", X"0ca8", X"065c", X"f34d", X"03a6", X"ffc0", X"ff1e", X"fb3a", X"fbeb", X"0331", X"000c", X"fbea", X"ff26",
                                                        X"fb8a", X"01e9", X"fcd8", X"0893", X"0611", X"09d4", X"f866", X"005a", X"000c", X"0233", X"f2ef", X"fe88", X"fd27", X"fb99",
                                                        X"017c", X"00e5", X"ffb1", X"fdde", X"f92e", X"03c1", X"044e", X"0764", X"fd36", X"0e7f", X"ffe4", X"00b5", X"fae1", X"fb65",
                                                        X"f9d5", X"fa00", X"03a2", X"fef8", X"f85a", X"f0de", X"009c", X"02ec", X"fad8", X"0dd2", X"fafa", X"0d35", X"010b", X"fe34",
                                                        X"fca6", X"06a0", X"fe1c", X"f9db", X"0b14", X"0bfa", X"fbc2", X"f326", X"fd5c", X"0010", X"fbe1", X"0729", X"fbb4", X"08a9",
                                                        X"fda4", X"ffc7", X"fb7c", X"08d6", X"fb84", X"fb86", X"09e2", X"0474", X"fbfa", X"04fa", X"faf9", X"000b", X"f637", X"0624",
                                                        X"0445", X"06b7", X"0522", X"00f1", X"febf", X"09cd", X"fe2d", X"ff8e", X"0f9e", X"fe70", X"0008", X"fbe8", X"fcdf", X"feae",
                                                        X"f744", X"069d", X"f71c", X"fd1e", X"fb9f", X"0087", X"fbc8", X"0ae7", X"020d", X"00f1", X"0a91", X"0895", X"fb53", X"f5b7",
                                                        X"fd80", X"fabf", X"f6bb", X"0104", X"ff45", X"f7f4", X"fac7", X"00fd", X"f27f", X"0d91", X"076f", X"fb50", X"0a1a", X"0834",
                                                        X"fc1d", X"f37d", X"042b", X"fc93", X"f9e0", X"f965", X"fe4a", X"ff50", X"0229", X"016d", X"f4d9", X"04d0", X"fa17", X"fd57",
                                                        X"07c1", X"01a6", X"02df", X"ffb8", X"0185", X"fa16", X"fc6b", X"fc18", X"f903", X"f62b", X"f8d7", X"0243", X"f28c", X"025a",
                                                        X"ff3a", X"fecc", X"03b3", X"0225", X"036f", X"0420", X"04a6", X"fd52", X"012f", X"f6cf", X"f75f", X"ff75", X"f636", X"0540",
                                                        X"fbad", X"0181", X"0135", X"fd2b", X"fb0b", X"04ce", X"0706", X"fbab", X"03d8", X"0198", X"05f6", X"f04e", X"fd9c", X"0172",
                                                        X"f3e6", X"0238", X"0332", X"fdaf", X"04aa", X"ff99", X"f76e", X"0069", X"0063", X"f717", X"03b5", X"ffc3", X"0adb", X"f5f8",
                                                        X"f425", X"f41c", X"f63a", X"ffac", X"fc27", X"f7ef", X"0151", X"0386", X"ef51", X"044b", X"047f", X"fbef", X"02fd", X"091f",
                                                        X"0e7c", X"f018", X"f1b7", X"fa8c", X"ff64", X"0183", X"f51a", X"f4bb", X"021a", X"036f", X"e9dc", X"03af", X"02fe", X"f84c",
                                                        X"fde1", X"05b8", X"13d5", X"f425", X"f6c0", X"0255", X"0852", X"fed4", X"ee5e", X"f612", X"ff39", X"fa0e", X"f26e", X"fe77",
                                                        X"fdc2", X"0711", X"fd09", X"0791");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"0791";
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

