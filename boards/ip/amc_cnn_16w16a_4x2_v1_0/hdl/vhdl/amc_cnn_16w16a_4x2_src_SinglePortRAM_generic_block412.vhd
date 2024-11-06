-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w16a16_4x2/amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block412.vhd
-- Created: 2024-11-04 16:44:18
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block412
-- Source Path: amc_model_w16a16_4x2/DUT HDL/Dense Layer 1/Dense Layer 1/Weight Storage59/SinglePortRAM_generic
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block412 IS
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
END amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block412;


ARCHITECTURE rtl OF amc_cnn_16w16a_4x2_src_SinglePortRAM_generic_block412 IS

  -- Local Type Definitions
  TYPE ram_type IS ARRAY (2**AddrWidth - 1 DOWNTO 0) of std_logic_vector(DataWidth - 1 DOWNTO 0);

  -- Signals
  SIGNAL ram                              : ram_type := (X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000",
                                                        X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0000", X"0b4f", X"05e7", X"fb17", X"f07b", X"088f", X"05d7",
                                                        X"ee3e", X"040b", X"00a3", X"0298", X"f71f", X"0b52", X"0554", X"056e", X"f53a", X"ebe1", X"01f9", X"02f5", X"fc54", X"f83b",
                                                        X"022c", X"0185", X"05e5", X"068c", X"01bb", X"fee3", X"fd2b", X"fff8", X"041e", X"0955", X"f59d", X"f4f0", X"03fb", X"0513",
                                                        X"fc79", X"0ef6", X"00ec", X"ffc7", X"0237", X"05e7", X"fdd5", X"ffdf", X"f936", X"f908", X"04fd", X"fd28", X"f3db", X"fc0a",
                                                        X"f451", X"fdc1", X"fabc", X"00e4", X"01b0", X"fd37", X"0639", X"02ab", X"0a49", X"ffc5", X"fb8d", X"070c", X"08b9", X"fea2",
                                                        X"f45e", X"026d", X"f691", X"f78b", X"fc93", X"fca8", X"02fb", X"fab2", X"f248", X"0357", X"03cd", X"0509", X"0124", X"08cd",
                                                        X"074b", X"03c0", X"f81a", X"043a", X"f908", X"f911", X"f5a6", X"0504", X"04f5", X"f954", X"fc17", X"02a1", X"0799", X"ff8f",
                                                        X"003a", X"fdf2", X"00a0", X"01f2", X"fc05", X"0620", X"fb67", X"02c3", X"fb90", X"0562", X"0207", X"f907", X"f6d6", X"07de",
                                                        X"0f3a", X"fab6", X"0421", X"f020", X"ff0d", X"04e8", X"0077", X"08b7", X"fac4", X"fefe", X"f83b", X"0a8f", X"04ac", X"f7c8",
                                                        X"f784", X"038b", X"01d7", X"fbfa", X"02b9", X"f267", X"051e", X"0b69", X"fdad", X"07c6", X"01a1", X"0199", X"f7da", X"06c5",
                                                        X"0563", X"fcd0", X"02a7", X"06a7", X"0566", X"fda5", X"0555", X"efa5", X"fa83", X"0992", X"04f3", X"05d6", X"0313", X"000a",
                                                        X"fd66", X"06b3", X"020c", X"fb22", X"04ed", X"ff50", X"08f3", X"ff63", X"0710", X"fbcd", X"fee3", X"020d", X"0115", X"0232",
                                                        X"ff79", X"fb29", X"f983", X"0e3e", X"fe00", X"fcee", X"013e", X"fc62", X"02db", X"fedb", X"07f2", X"fcc6", X"fdc8", X"ff9d",
                                                        X"ff09", X"fa2a", X"0827", X"fadb", X"fb76", X"06a6", X"f88e", X"022f", X"0159", X"fd98", X"08e5", X"fd95", X"0359", X"fc6d",
                                                        X"ff00", X"f90f", X"f5ba", X"f9b4", X"08d9", X"0256", X"fc39", X"092c", X"0341", X"fc1e", X"0432", X"01ea", X"fc5e", X"fc75",
                                                        X"fa44", X"00a3", X"01ee", X"0198", X"f791", X"f740", X"06cb", X"0040", X"f922", X"f832", X"009e", X"ff44", X"f6dd", X"fd46",
                                                        X"03c4", X"fe48", X"fd32", X"058c", X"fcbd", X"03cd", X"fd7c", X"f6bf", X"08bf", X"fed8", X"fdc4", X"05be", X"fc54", X"028f",
                                                        X"fdf9", X"0334", X"041a", X"0612", X"fd70", X"0818", X"f659", X"fa0e", X"fdb1", X"f5a7", X"03b7", X"0d5a", X"f7dd", X"fe20",
                                                        X"fe03", X"02f9", X"0c2b", X"07f1", X"0100", X"0622", X"000e", X"05d2", X"f5b9", X"01a2", X"f4fe", X"fa14", X"00a6", X"08ff",
                                                        X"0006", X"fa56", X"0c32", X"0425", X"0b94", X"055c", X"021f", X"020f", X"01bd", X"0565", X"047d", X"fab8", X"f2cd", X"f7e5",
                                                        X"fcd5", X"055b", X"f9b6", X"015f", X"01c5", X"ff59", X"f3b2", X"039a", X"0b08", X"fbd0", X"fb88", X"072d", X"fa33", X"0614",
                                                        X"f760", X"fb37", X"018d", X"0401", X"f7e9", X"ff8d", X"0170", X"0184", X"06a4", X"0687", X"0e1c", X"fdea", X"ffe9", X"080f",
                                                        X"fc16", X"fdf5", X"f881", X"fda2", X"fe5f", X"04c2", X"f83a", X"06ba", X"f8aa", X"fece", X"024c", X"04ae", X"0b98", X"f929",
                                                        X"fee8", X"fcfd", X"0908", X"f653", X"fbdc", X"000f", X"fd63", X"f870", X"f5e4", X"02d6", X"f951", X"fd45", X"0547", X"00f6",
                                                        X"0f7b", X"fd4c", X"0206", X"f829", X"08f7", X"058f", X"03c8", X"0208", X"feff", X"ff45", X"f066", X"0899", X"fdc4", X"fc6a",
                                                        X"efa9", X"05aa", X"097e", X"0799", X"0635", X"fb07", X"0268", X"0d71", X"006b", X"0557", X"fcf0", X"f95f", X"fc7f", X"0bda",
                                                        X"042b", X"fd8f", X"fd88", X"f8c0", X"038c", X"0114", X"09bd", X"f687", X"0a0e", X"12b6", X"ff52", X"0219", X"fc41", X"f7c3",
                                                        X"fb81", X"0711", X"0354", X"fbbe", X"fd48", X"fc8e", X"ff7a", X"0110", X"0825", X"f9ee", X"ffe7", X"0bda", X"0239", X"063b",
                                                        X"0228", X"fa3e", X"ff82", X"103f", X"0046", X"f770", X"019f", X"fb29", X"074c", X"fbe8", X"0a72", X"ff64", X"fc3b", X"0f7d",
                                                        X"fd07", X"0154", X"fd79", X"f257", X"0191", X"05fd", X"00da", X"f942", X"f4a7", X"f5ea", X"0477", X"fa15", X"0543", X"054b",
                                                        X"05b7", X"04c2", X"fecb", X"0025", X"ff06", X"f559", X"fd80", X"0559", X"f689", X"fd70", X"041c", X"f69c", X"0581", X"03f9",
                                                        X"06a1", X"071c", X"0098", X"0b62", X"00cb", X"fef9", X"06ec", X"068d", X"fdec", X"062b", X"f8c1", X"ff83", X"047b", X"02ba",
                                                        X"081c", X"fdf2", X"066a", X"fea5", X"fb35", X"0434", X"0332", X"feb1", X"05a0", X"0d9e", X"00b9", X"0341", X"0168", X"00bf",
                                                        X"fae6", X"0971", X"0598", X"02ca", X"ff9f", X"0385", X"f0d1", X"0dd6", X"fe1d", X"fc0b", X"03c8", X"052d", X"0003", X"067b",
                                                        X"00d1", X"017b", X"0d99", X"0540", X"05b5", X"fde2", X"fc98", X"050d", X"fc50", X"15da", X"fd7a", X"fd0e", X"0453", X"0a77",
                                                        X"fe31", X"fb81", X"fec3", X"0553", X"f934", X"013a", X"040a", X"ff30", X"f3fb", X"0b8c", X"f855", X"0609", X"f4bf", X"f556",
                                                        X"0258", X"021d", X"f64a", X"076a", X"fe41", X"0315", X"fb35", X"fbcc", X"0426", X"fcc0", X"f8dc", X"025e", X"0016", X"0020",
                                                        X"f912", X"f315", X"0304", X"0bb5", X"fe41", X"07fc", X"fee4", X"029d", X"050a", X"067e", X"01b5", X"ff5a", X"f89e", X"0003",
                                                        X"f7e7", X"feb0", X"f434", X"f0ef", X"01eb", X"035a", X"018c", X"fe5d", X"0388", X"0250", X"efb1", X"0732", X"0893", X"0092",
                                                        X"f98e", X"fadc", X"f9bc", X"0539", X"f1fe", X"fa10", X"011f", X"006b", X"fff9", X"066d", X"0356", X"00af", X"034c", X"04d3",
                                                        X"055a", X"002c", X"fa53", X"00b3", X"0473", X"0905", X"f7ab", X"fa6e", X"0549", X"018a", X"f80c", X"f984", X"fe94", X"fe75",
                                                        X"ffcc", X"0258", X"08ef", X"011c", X"0167", X"0156", X"0314", X"0385", X"fac5", X"fe52", X"0507", X"fb3a", X"fa42", X"f9f3",
                                                        X"fc3b", X"013c", X"fef8", X"00cd", X"0c35", X"fd53", X"0142", X"001e", X"0413", X"fd46", X"032e", X"052e", X"fdbb", X"fa71",
                                                        X"fd44", X"0288", X"038e", X"fc0b", X"f939", X"04c4", X"06c0", X"000f", X"020d", X"fc10", X"047c", X"fc90", X"ff49", X"0459",
                                                        X"fc76", X"fbb2", X"f781", X"0068", X"fbbb", X"f942", X"f85c", X"0295", X"0b38", X"009b", X"065e", X"02fe", X"ffbc", X"08d4",
                                                        X"04a2", X"0335", X"fa4a", X"f8f5", X"f758", X"069b", X"fbd4", X"f826", X"fec0", X"03a6", X"02c5", X"fde9", X"0024", X"fab2",
                                                        X"07e0", X"0a6e", X"0381", X"04c2", X"fd6c", X"f78a", X"fcce", X"0b52", X"fea7", X"fe03", X"f584", X"fd2b", X"fec3", X"fab3",
                                                        X"0473", X"fd11", X"067e", X"0297", X"fec7", X"05b7", X"fe30", X"fd2c", X"fc82", X"0877", X"fb3d", X"f904", X"04b6", X"fe15",
                                                        X"07bf", X"ff8c", X"03a8", X"00cf", X"00d9", X"0881", X"ffcf", X"03b8", X"fb6a", X"0266", X"f795", X"0547", X"fb8c", X"fb5a",
                                                        X"055c", X"fa51", X"f868", X"01da", X"0487", X"f60b", X"f261", X"054e", X"fe8b", X"01fe", X"017d", X"faee", X"fe28", X"039c",
                                                        X"fd25", X"fb2f", X"ff18", X"fb30", X"013b", X"020f", X"07b6", X"faec", X"f7c3", X"0136", X"fc89", X"026e", X"01e8", X"fa83",
                                                        X"f904", X"0096", X"fb8e", X"fd59", X"0ae2", X"0004", X"018b", X"0239", X"0839", X"fda2", X"0491", X"01fd", X"fed1", X"fa99",
                                                        X"05c5", X"0024", X"f812", X"0a80", X"04d6", X"0095", X"08aa", X"048a", X"01b7", X"fc0b", X"06a2", X"0300", X"fd84", X"0827",
                                                        X"f829", X"fc3a", X"0874", X"03a6", X"f5d7", X"026a", X"0033", X"03b6", X"fe61", X"fb3d", X"03a9", X"ff0f", X"034f", X"0199",
                                                        X"fcb7", X"f973", X"fb08", X"facc", X"0938", X"0204", X"f793", X"fe65", X"fa82", X"0117", X"fdf5", X"01c1", X"04c3", X"0591",
                                                        X"febb", X"fa3f", X"03b2", X"fe68", X"fb9a", X"f69d", X"06b1", X"0736", X"f9b2", X"fd80", X"03c4", X"00ea", X"05e2", X"ffdb",
                                                        X"098b", X"04bf", X"fd4b", X"04c3", X"012d", X"0c03", X"f816", X"faf0", X"ffdc", X"045b", X"f51d", X"f94d", X"05c5", X"fead",
                                                        X"f83a", X"0366", X"025d", X"0181", X"f9e4", X"0505", X"027e", X"fefc", X"f2c7", X"f697", X"03ed", X"0522", X"f7e0", X"f923",
                                                        X"fcdf", X"046e", X"03c5", X"ff99", X"0848", X"ff35", X"ff89", X"0aa0", X"0371", X"0de3", X"fc1d", X"fa60", X"fe15", X"fefb",
                                                        X"00dd", X"f550", X"028d", X"ff70", X"001f", X"fba9", X"0608", X"fdab", X"fc5d", X"03e1", X"0e0e", X"0b7e", X"00de", X"ffda",
                                                        X"0baa", X"fbc2", X"02ea", X"ffbe", X"f6d0", X"ff3e", X"06b9", X"f854", X"02bd", X"f8f8", X"fc5e", X"01a2", X"06af", X"fcfc",
                                                        X"feb7", X"020d", X"fe7d", X"fbb1", X"fac8", X"018b", X"fafc", X"fc1f", X"fa63", X"fc93", X"0941", X"fad3", X"02e4", X"fc45",
                                                        X"fe3c", X"05c6", X"0247", X"07b6", X"f3ef", X"eefa", X"f3f2", X"0acf", X"ff0f", X"f5d1", X"f58c", X"01ec", X"06e3", X"00d3",
                                                        X"02ff", X"07de", X"0581", X"04b4", X"04bd", X"0b0f", X"fc16", X"fb02", X"fdf7", X"0179", X"0625", X"f67f", X"06db", X"ff05",
                                                        X"0656", X"025a", X"0639", X"f9fd", X"0488", X"ff57", X"0395", X"0953", X"fb55", X"ff1b", X"fb23", X"09ff", X"0179", X"fba2",
                                                        X"1273", X"01c6", X"fe82", X"fe43", X"0940", X"ffa1", X"059d", X"fb69", X"f6aa", X"0572", X"fd34", X"ff54", X"f97e", X"0cc1",
                                                        X"f20b", X"fa22", X"0738", X"0244", X"03ca", X"ffe4", X"07c5", X"fd39", X"0225", X"046c", X"0028", X"0432", X"0423", X"fc0f",
                                                        X"fe5a", X"102c", X"f888", X"f88a", X"f8ee", X"fcd8", X"09ae", X"f9b9", X"00da", X"fced", X"f2ec", X"0022", X"0145", X"0236",
                                                        X"07da", X"0231", X"00ae", X"061c", X"03e8", X"ff14", X"e9d3", X"ff6f", X"fd82", X"fc7b", X"04d3", X"faf5", X"f868", X"052f",
                                                        X"fdb4", X"fc5a", X"08b5", X"02c3", X"01f2", X"ff9f", X"ff66", X"fe44", X"0121", X"fe93", X"0a79", X"fa86", X"05a2", X"fe20",
                                                        X"fee1", X"011f", X"fa26", X"fa3f", X"06c5", X"0018", X"041f", X"0d42", X"fe76", X"0161", X"008e", X"fee9", X"080f", X"ffb3",
                                                        X"0588", X"fd1c", X"f275", X"071d", X"0132", X"f6fa", X"0425", X"04a8", X"fd92", X"068b", X"fdd1", X"fe6a", X"f9e6", X"016a",
                                                        X"04f2", X"fd0c", X"0204", X"0226", X"f350", X"01f7", X"f82e", X"f1fa", X"0793", X"0967", X"fa0f", X"ff6c", X"0491", X"ff26",
                                                        X"081e", X"0a65", X"ff00", X"ffbd", X"0000", X"0e53", X"ffc9", X"003e", X"f8ae", X"f0bc", X"fe52", X"00ba", X"fad5", X"fba0",
                                                        X"0421", X"0346", X"fed5", X"07af", X"feba", X"fe41", X"024c", X"05f9", X"f8ac", X"f5eb", X"f562", X"ef70", X"0459", X"00d0",
                                                        X"fb7e", X"fc70", X"0551", X"03ce", X"0210", X"05ac", X"035e", X"0074", X"f8be", X"0b2f", X"03c5", X"00e6", X"f1b6", X"f990",
                                                        X"feba", X"0053", X"f89c", X"fab9", X"069b", X"fdf0", X"0307", X"037a", X"fe73", X"03c7", X"f6d7", X"09e8", X"0504", X"10b2",
                                                        X"f38e", X"fd5c", X"015a", X"ff8f", X"f8f2", X"013a", X"fb8c", X"fc06", X"0be3", X"081e", X"09aa", X"fda6", X"fb3c", X"0266",
                                                        X"00c7", X"1244", X"f609", X"0186", X"fa48", X"faf1", X"f945", X"008b", X"f9b1", X"fb94", X"0791", X"0a9a", X"0920", X"fc9f",
                                                        X"ff5d", X"0678", X"08d4", X"02df", X"0535", X"02e6", X"fa20", X"014c", X"fb08", X"0527", X"fe40", X"faec", X"f931", X"0484",
                                                        X"0d82", X"fa81", X"f555", X"0650", X"054a", X"0553", X"f79a", X"04f5", X"f377", X"013d", X"fade", X"ff5e", X"00bd", X"f8ab",
                                                        X"eaf7", X"fdf2", X"00f1", X"fe4c", X"0189", X"f865", X"0b69", X"0a89", X"fb44", X"01a3", X"f8f5", X"fb57", X"f89c", X"fe78",
                                                        X"f96b", X"fc97", X"08d1", X"fe26", X"0774", X"01e9", X"0211", X"fca5", X"0bc0", X"042f", X"0296", X"0b00", X"f7f4", X"ff92",
                                                        X"f9fd", X"058e", X"f7d7", X"f7a7", X"09bb", X"0238", X"083d", X"fd43", X"0342", X"fd0a", X"fed3", X"fb03", X"0270", X"0589",
                                                        X"f888", X"0031", X"ff0c", X"ff24", X"0057", X"fc32", X"074e", X"030b", X"0504", X"ff92", X"07cd", X"ef57", X"0708", X"f5a6",
                                                        X"fc10", X"033a", X"fda1", X"f557", X"f614", X"0484", X"fdcf", X"fcd9", X"0051", X"fce5", X"043c", X"ffc7", X"07c3", X"f93b",
                                                        X"f57c", X"ffe9", X"fedd", X"0021", X"04de", X"f84e", X"fcd3", X"1072", X"fcc0", X"fbd4", X"089a", X"03a9", X"0b5b", X"fee2",
                                                        X"08bf", X"fd26", X"02b6", X"06aa", X"ff12", X"fe3f", X"011b", X"fefc", X"0012", X"08b3", X"fd2e", X"02ec", X"f77f", X"fde8",
                                                        X"06a1", X"fbf3", X"052a", X"01d0", X"f46f", X"014c", X"02e2", X"f691", X"07b8", X"fdbb", X"0251", X"fdf0", X"0015", X"0054",
                                                        X"fe51", X"fcc4", X"04a8", X"041e", X"03ce", X"03c8", X"f18b", X"130a", X"fbab", X"f33c", X"0bba", X"0168", X"fa62", X"feff",
                                                        X"00c3", X"04ad", X"0462", X"011b", X"fd5d", X"0176", X"0382", X"fee3", X"0382", X"0682", X"fc3e", X"f32e", X"05b3", X"001a",
                                                        X"fb14", X"fc57", X"fa37", X"fc5d", X"fb8e", X"0441", X"0111", X"0655", X"fbb4", X"fe28", X"f6bc", X"038e", X"fa3e", X"f751",
                                                        X"0661", X"039b", X"fb55", X"0074", X"004e", X"0082", X"04bc", X"05c0", X"0ca3", X"fd4d", X"f978", X"07fa", X"f80d", X"0b21",
                                                        X"f3ac", X"f160", X"01ec", X"054f", X"fa47", X"fa6f", X"02e9", X"00d6", X"f6fa", X"0153", X"04b9", X"0139", X"051c", X"0718",
                                                        X"05ce", X"fe70", X"00ac", X"f8ae", X"fb68", X"fc99", X"fa6b", X"fbdf", X"f6eb", X"0305", X"0bbf", X"071a", X"06c0", X"01d6",
                                                        X"068a", X"0f68", X"05b6", X"0f3d", X"fefc", X"fa21", X"fcdd", X"0307", X"fcb1", X"005f", X"ff0c", X"01d5", X"029f", X"0392",
                                                        X"0372", X"fc4d", X"00de", X"fbb8", X"0646", X"fd8f", X"f873", X"009b", X"f7ed", X"fef5", X"fced", X"013b", X"0141", X"fb28",
                                                        X"ff1a", X"0604", X"0fa3", X"f7bf", X"0760", X"042e", X"00e3", X"0011", X"fee3", X"035a", X"f8d4", X"f942", X"f79d", X"072d",
                                                        X"002b", X"fb2d", X"f11a", X"008b", X"05e3", X"fe84", X"08a9", X"ffc5", X"ff02", X"0d57", X"fd85", X"09ad", X"f92b", X"fcbb",
                                                        X"f68e", X"02b7", X"f650", X"fa19", X"fa52", X"fed0", X"0922", X"fdd3", X"0641", X"024a", X"03c8", X"f527", X"fc2b", X"0785",
                                                        X"ecfd", X"fe2d", X"fcb5", X"0dfb", X"fdbb", X"f918", X"05b7", X"fcfc", X"fe8b", X"fb4f", X"0e44", X"ff84", X"07ae", X"fb3a",
                                                        X"ffbd", X"07dc", X"f614", X"0113", X"fa59", X"03d1", X"fdc3", X"f65e", X"fb11", X"0670", X"0a59", X"fde1", X"0b65", X"f9a2",
                                                        X"fa8b", X"f6d0", X"01aa", X"07f0", X"00af", X"01c2", X"fd3e", X"052e", X"07b8", X"fb79", X"fe61", X"fe81", X"0a52", X"fff8",
                                                        X"052f", X"fa3c", X"fcf9", X"ffa3", X"fe15", X"0252", X"05f8", X"01d0", X"00d5", X"0c97", X"027a", X"fc70", X"0965", X"04b8",
                                                        X"036a", X"00a1", X"0e30", X"fcc4", X"fd6f", X"0571", X"ffb7", X"02b4", X"0a64", X"05bb", X"ffbb", X"f910", X"fca2", X"fd3b",
                                                        X"fa83", X"033b", X"055d", X"ff92", X"045d", X"0508", X"ff5e", X"0bd0", X"01a4", X"fddf", X"07da", X"0222", X"fc26", X"0263",
                                                        X"fae6", X"ff5c", X"f7a7", X"0868", X"069e", X"fc71", X"fd63", X"f7aa", X"ffa7", X"f474", X"fa7e", X"f8c6", X"0838", X"0717",
                                                        X"fe09", X"07d1", X"fc46", X"fdf1", X"0222", X"0670", X"0545", X"023b", X"0323", X"0089", X"f89b", X"0772", X"f58f", X"fe04",
                                                        X"0664", X"03ba", X"fc95", X"faf4", X"ff92", X"ffd4", X"fb13", X"01da", X"02ba", X"0083", X"fa01", X"0896", X"004f", X"019a",
                                                        X"f48b", X"f61a", X"0373", X"06c5", X"fbe8", X"fcce", X"0976", X"fdf4", X"f051", X"072f", X"ff77", X"f43f", X"fce6", X"fd05",
                                                        X"faa1", X"075d", X"f614", X"f39b", X"05c6", X"0358", X"fcdc", X"f240", X"0630", X"0042", X"f8f7", X"051f", X"03b1", X"f8bf",
                                                        X"0808", X"0013", X"fc1e", X"0ef5", X"f49c", X"f461", X"0200", X"04a0", X"0114", X"f964", X"0104", X"fc9a", X"0e7a", X"028e",
                                                        X"0a18", X"fa25", X"fb15", X"04bb", X"0786", X"00b5", X"f973", X"f90c", X"00ea", X"068d", X"0130", X"f780", X"ffe4", X"fc9b",
                                                        X"0219", X"02ce", X"0771", X"fe64", X"fdd6", X"0247", X"fdcc", X"fffb", X"f866", X"f693", X"ffea", X"03c6", X"fb3b", X"0808",
                                                        X"fa16", X"fe47", X"fff2", X"058d", X"0428", X"fb3b", X"0033", X"034b", X"05f5", X"f131", X"f4de", X"fc5f", X"fe07", X"ffbc",
                                                        X"f153", X"f56e", X"ffec", X"fe35", X"edcb", X"0751", X"fb73", X"00de", X"fe62", X"021a", X"0343", X"fdf4", X"fbe2", X"fde3",
                                                        X"f9db", X"f9b4", X"f63b", X"0470", X"0323", X"01e6", X"07a8", X"0929", X"082a", X"fe1d", X"048e", X"fd9c", X"050a", X"0352",
                                                        X"fbb1", X"059d", X"fb0b", X"fac7", X"fc0a", X"016c", X"009c", X"0067", X"fb87", X"0a27", X"fff7", X"ff8f", X"0567", X"fd0b",
                                                        X"0a2f", X"0cd2", X"0464", X"02ee", X"fcbd", X"f7fb", X"0387", X"0945", X"fd5f", X"fe9d", X"f79a", X"0034", X"02e3", X"fb1b",
                                                        X"046b", X"fff4", X"0067", X"0c99", X"04ad", X"05a9", X"fda3", X"fabb", X"fb47", X"074c", X"00a7", X"fcf7", X"0114", X"fb6b",
                                                        X"ff84", X"f761", X"03fb", X"f9f5", X"007c", X"114d", X"fb19", X"05e1", X"f96c", X"0279", X"f955", X"061b", X"03d0", X"ff62",
                                                        X"fefc", X"fb3d", X"05f4", X"f935", X"04c0", X"fa5c", X"052a", X"156c", X"fd5e", X"03ee", X"0109", X"fe6a", X"fe70", X"1017",
                                                        X"06d5", X"f8ea", X"ffa0", X"f6e8", X"fea6", X"01cd", X"0897", X"fa97", X"00df", X"1054", X"0459", X"04af", X"064f", X"f764",
                                                        X"fdf6", X"0c1c", X"03ae", X"fc97", X"ff8e", X"f90f", X"0bd6", X"0245", X"04cc", X"fbe4", X"f4cc", X"ff9d", X"030f", X"0095",
                                                        X"0572", X"f858", X"fd7f", X"f892", X"01d6", X"ff86", X"039c", X"0144", X"0403", X"030d", X"08fd", X"03c1", X"fdfb", X"ff1b",
                                                        X"fc1e", X"008d", X"05a6", X"fe24", X"ff68", X"0723", X"fe0c", X"0125", X"04da", X"fcfd", X"058a", X"fe3e", X"07f8", X"00ba",
                                                        X"f998", X"fdf3", X"039e", X"fa20", X"0514", X"031e", X"0342", X"04ec", X"fdb4", X"fc49", X"fc3b", X"fd67", X"01ee", X"fe73",
                                                        X"045d", X"0606", X"f852", X"0508", X"f9a2", X"f7b8", X"0579", X"05f4", X"f9c6", X"faa3", X"0833", X"ff75", X"068a", X"0428",
                                                        X"02e5", X"002c", X"ffac", X"0b08", X"0003", X"0240", X"fb9f", X"f677", X"03e8", X"ff63", X"f7b3", X"fab1", X"04cb", X"005b",
                                                        X"f7e0", X"043e", X"05af", X"0266", X"fd01", X"02c3", X"027c", X"f903", X"fa72", X"f9c9", X"071c", X"fec5", X"0257", X"f5b4",
                                                        X"0649", X"0172", X"0369", X"0611", X"08b1", X"0213", X"005d", X"0128", X"fec6", X"08fa", X"f786", X"ffb2", X"fe93", X"063b",
                                                        X"fd44", X"03d1", X"0149", X"056f", X"0483", X"0894", X"0a91", X"fcad", X"fc01", X"03f1", X"066c", X"1169", X"fcbe", X"fa51",
                                                        X"0719", X"06fa", X"fa50", X"fc93", X"043e", X"0395", X"f861", X"0597", X"04c0", X"011b", X"f79f", X"06ae", X"020b", X"0526",
                                                        X"fc46", X"fe9e", X"f9c3", X"01df", X"0731", X"fc9e", X"0812", X"fdb0", X"0382", X"0917", X"0922", X"fe5f", X"fe90", X"0041",
                                                        X"02d2", X"fed3", X"fc59", X"0429", X"f775", X"ff89", X"f80a", X"05a4", X"fdf2", X"fe2f", X"f7d8", X"08dc", X"02de", X"fa31",
                                                        X"fd15", X"0771", X"09f9", X"0087", X"fb78", X"0311", X"fc61", X"ff0b", X"f9d2", X"0bc5", X"f73e", X"ff14", X"f154", X"02c5",
                                                        X"01bc", X"f63f", X"ff38", X"fe56", X"0c95", X"032c", X"fcb7", X"067d", X"fb6c", X"ff79", X"ff55", X"104c", X"0335", X"f9e2",
                                                        X"fcb4", X"024c", X"0212", X"f6a4", X"ff24", X"f816", X"08cc", X"0bd2", X"fa00", X"0c8e", X"fb0d", X"ff00", X"0146", X"0448",
                                                        X"04bf", X"f912", X"fe2d", X"fcae", X"05ae", X"fcb6", X"0dd8", X"fbe6", X"04cb", X"07d2", X"03e5", X"05f5", X"ff6b", X"f887",
                                                        X"fcf0", X"08e3", X"0265", X"fa76", X"f518", X"ff94", X"01a4", X"f8cc", X"0a2b", X"0042", X"00f1", X"079d", X"feb2", X"0698",
                                                        X"0a98", X"fd32", X"0573", X"0fe9", X"01d1", X"01dc", X"0bba", X"fe86", X"fe5a", X"02a7", X"03b8", X"0219", X"f746", X"04cb",
                                                        X"00f3", X"02ed", X"14d8", X"04fc", X"fddc", X"143d", X"fc44", X"054e", X"01a9", X"01f8", X"0795", X"0528", X"0614", X"fd67",
                                                        X"ea76", X"0a78", X"f7e2", X"f428");
  SIGNAL data_int                         : std_logic_vector(DataWidth - 1 DOWNTO 0) := X"f428";
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
