-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2.vhd
-- Created: 2024-11-05 16:19:45
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: -1
-- Target subsystem base rate: -1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2
-- Source Path: amc_cnn_8w16a_4x2
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2 IS
  PORT( IPCORE_CLK                        :   IN    std_logic;  -- ufix1
        IPCORE_RESETN                     :   IN    std_logic;  -- ufix1
        AXI4_Stream_Master_TREADY         :   IN    std_logic;  -- ufix1
        AXI4_Stream_Slave_TDATA           :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Stream_Slave_TVALID          :   IN    std_logic;  -- ufix1
        AXI4_Lite_ACLK                    :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARESETN                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_AWADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_AWVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_WDATA                   :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_WSTRB                   :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
        AXI4_Lite_WVALID                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_BREADY                  :   IN    std_logic;  -- ufix1
        AXI4_Lite_ARADDR                  :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
        AXI4_Lite_ARVALID                 :   IN    std_logic;  -- ufix1
        AXI4_Lite_RREADY                  :   IN    std_logic;  -- ufix1
        AXI4_Stream_Master_TDATA          :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Stream_Master_TVALID         :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Master_TLAST          :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Slave_TREADY          :   OUT   std_logic;  -- ufix1
        sampleNum                         :   OUT   std_logic_vector(2 DOWNTO 0);  -- ufix3
        validInput                        :   OUT   std_logic;  -- ufix1
        validConv1                        :   OUT   std_logic;  -- ufix1
        validConv2                        :   OUT   std_logic;  -- ufix1
        validDense1                       :   OUT   std_logic;  -- ufix1
        AXI4_Lite_AWREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_WREADY                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_BRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_BVALID                  :   OUT   std_logic;  -- ufix1
        AXI4_Lite_ARREADY                 :   OUT   std_logic;  -- ufix1
        AXI4_Lite_RDATA                   :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
        AXI4_Lite_RRESP                   :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
        AXI4_Lite_RVALID                  :   OUT   std_logic  -- ufix1
        );
END amc_cnn_8w16a_4x2;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2 IS

  -- Component Declarations
  COMPONENT amc_cnn_8w16a_4x2_reset_sync
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset_in                        :   IN    std_logic;  -- ufix1
          reset_out                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_axi_lite
    PORT( reset                           :   IN    std_logic;
          AXI4_Lite_ACLK                  :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARESETN               :   IN    std_logic;  -- ufix1
          AXI4_Lite_AWADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_AWVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_WDATA                 :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_WSTRB                 :   IN    std_logic_vector(3 DOWNTO 0);  -- ufix4
          AXI4_Lite_WVALID                :   IN    std_logic;  -- ufix1
          AXI4_Lite_BREADY                :   IN    std_logic;  -- ufix1
          AXI4_Lite_ARADDR                :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Lite_ARVALID               :   IN    std_logic;  -- ufix1
          AXI4_Lite_RREADY                :   IN    std_logic;  -- ufix1
          read_ip_timestamp               :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_AWREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_WREADY                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_BRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_BVALID                :   OUT   std_logic;  -- ufix1
          AXI4_Lite_ARREADY               :   OUT   std_logic;  -- ufix1
          AXI4_Lite_RDATA                 :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Lite_RRESP                 :   OUT   std_logic_vector(1 DOWNTO 0);  -- ufix2
          AXI4_Lite_RVALID                :   OUT   std_logic;  -- ufix1
          write_axi_enable                :   OUT   std_logic;  -- ufix1
          write_enable                    :   OUT   std_logic;  -- ufix1
          reset_internal                  :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_axi4_stream_slave
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          AXI4_Stream_Slave_TDATA         :   IN    std_logic_vector(15 DOWNTO 0);  -- ufix16
          AXI4_Stream_Slave_TVALID        :   IN    std_logic;  -- ufix1
          user_ready                      :   IN    std_logic;  -- ufix1
          AXI4_Stream_Slave_TREADY        :   OUT   std_logic;  -- ufix1
          user_data                       :   OUT   std_logic_vector(15 DOWNTO 0);  -- ufix16
          user_valid                      :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_dut
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          dut_enable                      :   IN    std_logic;  -- ufix1
          dataIn                          :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          validIn                         :   IN    std_logic;  -- ufix1
          enable                          :   IN    std_logic;  -- ufix1
          treadyIn                        :   IN    std_logic;  -- ufix1
          ce_out                          :   OUT   std_logic;  -- ufix1
          dataOut                         :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          validOut                        :   OUT   std_logic;  -- ufix1
          tlast                           :   OUT   std_logic;  -- ufix1
          treadyOut                       :   OUT   std_logic;  -- ufix1
          sampleNum                       :   OUT   std_logic_vector(2 DOWNTO 0);  -- ufix3
          validInput                      :   OUT   std_logic;  -- ufix1
          validConv1                      :   OUT   std_logic;  -- ufix1
          validConv2                      :   OUT   std_logic;  -- ufix1
          validDense1                     :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT amc_cnn_8w16a_4x2_axi4_stream_master
    PORT( clk                             :   IN    std_logic;  -- ufix1
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          AXI4_Stream_Master_TREADY       :   IN    std_logic;  -- ufix1
          user_data                       :   IN    std_logic_vector(31 DOWNTO 0);  -- ufix32
          user_valid                      :   IN    std_logic;  -- ufix1
          user_TLAST                      :   IN    std_logic;  -- ufix1
          AXI4_Stream_Master_TDATA        :   OUT   std_logic_vector(31 DOWNTO 0);  -- ufix32
          AXI4_Stream_Master_TVALID       :   OUT   std_logic;  -- ufix1
          AXI4_Stream_Master_TLAST        :   OUT   std_logic;  -- ufix1
          user_ready                      :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : amc_cnn_8w16a_4x2_reset_sync
    USE ENTITY work.amc_cnn_8w16a_4x2_reset_sync(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_axi_lite
    USE ENTITY work.amc_cnn_8w16a_4x2_axi_lite(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_axi4_stream_slave
    USE ENTITY work.amc_cnn_8w16a_4x2_axi4_stream_slave(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_dut
    USE ENTITY work.amc_cnn_8w16a_4x2_dut(rtl);

  FOR ALL : amc_cnn_8w16a_4x2_axi4_stream_master
    USE ENTITY work.amc_cnn_8w16a_4x2_axi4_stream_master(rtl);

  -- Signals
  SIGNAL reset                            : std_logic;
  SIGNAL ip_timestamp                     : unsigned(31 DOWNTO 0);  -- ufix32
  SIGNAL reset_cm                         : std_logic;  -- ufix1
  SIGNAL reset_internal                   : std_logic;  -- ufix1
  SIGNAL reset_before_sync                : std_logic;  -- ufix1
  SIGNAL AXI4_Lite_BRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL AXI4_Lite_RDATA_tmp              : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL AXI4_Lite_RRESP_tmp              : std_logic_vector(1 DOWNTO 0);  -- ufix2
  SIGNAL write_axi_enable                 : std_logic;  -- ufix1
  SIGNAL write_enable                     : std_logic;  -- ufix1
  SIGNAL const_1_1                        : std_logic;  -- ufix1
  SIGNAL tlast_sig                        : std_logic;  -- ufix1
  SIGNAL top_user_TLAST                   : std_logic;  -- ufix1
  SIGNAL validOut_sig                     : std_logic;  -- ufix1
  SIGNAL top_user_valid                   : std_logic;  -- ufix1
  SIGNAL top_user_ready                   : std_logic;  -- ufix1
  SIGNAL treadyIn_sig                     : std_logic;  -- ufix1
  SIGNAL top_user_valid_1                 : std_logic;  -- ufix1
  SIGNAL validIn_sig                      : std_logic;  -- ufix1
  SIGNAL treadyOut_sig                    : std_logic;  -- ufix1
  SIGNAL top_user_ready_1                 : std_logic;  -- ufix1
  SIGNAL top_user_data                    : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL top_user_data_unsigned           : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL dataIn_sig                       : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL ce_out_sig                       : std_logic;  -- ufix1
  SIGNAL dataOut_sig                      : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL sampleNum_sig                    : std_logic_vector(2 DOWNTO 0);  -- ufix3
  SIGNAL validInput_sig                   : std_logic;  -- ufix1
  SIGNAL validConv1_sig                   : std_logic;  -- ufix1
  SIGNAL validConv2_sig                   : std_logic;  -- ufix1
  SIGNAL validDense1_sig                  : std_logic;  -- ufix1
  SIGNAL AXI4_Stream_Master_TDATA_tmp     : std_logic_vector(31 DOWNTO 0);  -- ufix32

BEGIN
  u_amc_cnn_8w16a_4x2_reset_sync_inst : amc_cnn_8w16a_4x2_reset_sync
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset_in => reset_before_sync,  -- ufix1
              reset_out => reset
              );

  u_amc_cnn_8w16a_4x2_axi_lite_inst : amc_cnn_8w16a_4x2_axi_lite
    PORT MAP( reset => reset,
              AXI4_Lite_ACLK => AXI4_Lite_ACLK,  -- ufix1
              AXI4_Lite_ARESETN => AXI4_Lite_ARESETN,  -- ufix1
              AXI4_Lite_AWADDR => AXI4_Lite_AWADDR,  -- ufix16
              AXI4_Lite_AWVALID => AXI4_Lite_AWVALID,  -- ufix1
              AXI4_Lite_WDATA => AXI4_Lite_WDATA,  -- ufix32
              AXI4_Lite_WSTRB => AXI4_Lite_WSTRB,  -- ufix4
              AXI4_Lite_WVALID => AXI4_Lite_WVALID,  -- ufix1
              AXI4_Lite_BREADY => AXI4_Lite_BREADY,  -- ufix1
              AXI4_Lite_ARADDR => AXI4_Lite_ARADDR,  -- ufix16
              AXI4_Lite_ARVALID => AXI4_Lite_ARVALID,  -- ufix1
              AXI4_Lite_RREADY => AXI4_Lite_RREADY,  -- ufix1
              read_ip_timestamp => std_logic_vector(ip_timestamp),  -- ufix32
              AXI4_Lite_AWREADY => AXI4_Lite_AWREADY,  -- ufix1
              AXI4_Lite_WREADY => AXI4_Lite_WREADY,  -- ufix1
              AXI4_Lite_BRESP => AXI4_Lite_BRESP_tmp,  -- ufix2
              AXI4_Lite_BVALID => AXI4_Lite_BVALID,  -- ufix1
              AXI4_Lite_ARREADY => AXI4_Lite_ARREADY,  -- ufix1
              AXI4_Lite_RDATA => AXI4_Lite_RDATA_tmp,  -- ufix32
              AXI4_Lite_RRESP => AXI4_Lite_RRESP_tmp,  -- ufix2
              AXI4_Lite_RVALID => AXI4_Lite_RVALID,  -- ufix1
              write_axi_enable => write_axi_enable,  -- ufix1
              write_enable => write_enable,  -- ufix1
              reset_internal => reset_internal  -- ufix1
              );

  u_amc_cnn_8w16a_4x2_axi4_stream_slave_inst : amc_cnn_8w16a_4x2_axi4_stream_slave
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              enb => const_1_1,
              AXI4_Stream_Slave_TDATA => AXI4_Stream_Slave_TDATA,  -- ufix16
              AXI4_Stream_Slave_TVALID => AXI4_Stream_Slave_TVALID,  -- ufix1
              user_ready => top_user_ready_1,  -- ufix1
              AXI4_Stream_Slave_TREADY => AXI4_Stream_Slave_TREADY,  -- ufix1
              user_data => top_user_data,  -- ufix16
              user_valid => top_user_valid_1  -- ufix1
              );

  u_amc_cnn_8w16a_4x2_dut_inst : amc_cnn_8w16a_4x2_dut
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              dut_enable => write_axi_enable,  -- ufix1
              dataIn => std_logic_vector(dataIn_sig),  -- sfix16_En14
              validIn => validIn_sig,  -- ufix1
              enable => write_enable,  -- ufix1
              treadyIn => treadyIn_sig,  -- ufix1
              ce_out => ce_out_sig,  -- ufix1
              dataOut => dataOut_sig,  -- ufix32
              validOut => validOut_sig,  -- ufix1
              tlast => tlast_sig,  -- ufix1
              treadyOut => treadyOut_sig,  -- ufix1
              sampleNum => sampleNum_sig,  -- ufix3
              validInput => validInput_sig,  -- ufix1
              validConv1 => validConv1_sig,  -- ufix1
              validConv2 => validConv2_sig,  -- ufix1
              validDense1 => validDense1_sig  -- ufix1
              );

  u_amc_cnn_8w16a_4x2_axi4_stream_master_inst : amc_cnn_8w16a_4x2_axi4_stream_master
    PORT MAP( clk => IPCORE_CLK,  -- ufix1
              reset => reset,
              enb => const_1_1,
              AXI4_Stream_Master_TREADY => AXI4_Stream_Master_TREADY,  -- ufix1
              user_data => dataOut_sig,  -- ufix32
              user_valid => top_user_valid,  -- ufix1
              user_TLAST => top_user_TLAST,  -- ufix1
              AXI4_Stream_Master_TDATA => AXI4_Stream_Master_TDATA_tmp,  -- ufix32
              AXI4_Stream_Master_TVALID => AXI4_Stream_Master_TVALID,  -- ufix1
              AXI4_Stream_Master_TLAST => AXI4_Stream_Master_TLAST,  -- ufix1
              user_ready => top_user_ready  -- ufix1
              );

  ip_timestamp <= unsigned'(X"8FB5BA63");

  reset_cm <=  NOT IPCORE_RESETN;

  reset_before_sync <= reset_cm OR reset_internal;

  const_1_1 <= '1';

  top_user_TLAST <= tlast_sig;

  top_user_valid <= validOut_sig;

  treadyIn_sig <= top_user_ready;

  validIn_sig <= top_user_valid_1;

  top_user_ready_1 <= treadyOut_sig;

  top_user_data_unsigned <= unsigned(top_user_data);

  dataIn_sig <= signed(top_user_data_unsigned);

  validInput <= validInput_sig;

  validConv1 <= validConv1_sig;

  validConv2 <= validConv2_sig;

  validDense1 <= validDense1_sig;

  AXI4_Stream_Master_TDATA <= AXI4_Stream_Master_TDATA_tmp;

  sampleNum <= sampleNum_sig;

  AXI4_Lite_BRESP <= AXI4_Lite_BRESP_tmp;

  AXI4_Lite_RDATA <= AXI4_Lite_RDATA_tmp;

  AXI4_Lite_RRESP <= AXI4_Lite_RRESP_tmp;

END rtl;

