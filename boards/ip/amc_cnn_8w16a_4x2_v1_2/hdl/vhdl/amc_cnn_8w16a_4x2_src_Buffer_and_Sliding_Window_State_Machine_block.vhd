-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/amc_model_w8a16_4x2/amc_cnn_8w16a_4x2_src_Buffer_and_Sliding_Window_State_Machine_block.vhd
-- Created: 2024-11-05 16:19:12
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: amc_cnn_8w16a_4x2_src_Buffer_and_Sliding_Window_State_Machine_block
-- Source Path: amc_model_w8a16_4x2/DUT HDL/Conv Layer 2/Buffer and Sliding Window State Machine
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY amc_cnn_8w16a_4x2_src_Buffer_and_Sliding_Window_State_Machine_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        validIn                           :   IN    std_logic;
        ready_nx_layer                    :   IN    std_logic;
        wr_addr                           :   OUT   std_logic_vector(8 DOWNTO 0);  -- ufix9
        wr_en                             :   OUT   std_logic;
        rd_addr                           :   OUT   std_logic_vector(8 DOWNTO 0);  -- ufix9
        rd_row_idx                        :   OUT   std_logic_vector(6 DOWNTO 0);  -- ufix7
        validOut                          :   OUT   std_logic;
        ready_prev                        :   OUT   std_logic
        );
END amc_cnn_8w16a_4x2_src_Buffer_and_Sliding_Window_State_Machine_block;


ARCHITECTURE rtl OF amc_cnn_8w16a_4x2_src_Buffer_and_Sliding_Window_State_Machine_block IS

  -- Functions
  -- HDLCODER_TO_STDLOGIC 
  FUNCTION hdlcoder_to_stdlogic(arg: boolean) RETURN std_logic IS
  BEGIN
    IF arg THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END FUNCTION;


  -- Signals
  SIGNAL wr_addr_tmp                      : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL rd_addr_tmp                      : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL rd_row_idx_tmp                   : unsigned(6 DOWNTO 0);  -- ufix7
  SIGNAL reg_ready_nx_layer               : std_logic;
  SIGNAL reg_flag                         : std_logic;
  SIGNAL reg_ready_flag                   : std_logic;
  SIGNAL reg_input_count                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL reg_count_out_cols               : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL reg_repeat_frame                 : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL reg_track_stored                 : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL state                            : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL state_not_empty                  : std_logic;
  SIGNAL sw_reg_i                         : std_logic;  -- ufix1
  SIGNAL sw_reg_j                         : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL sw_reg_a                         : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL sw_reg_b                         : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL reg_ready_nx_layer_next          : std_logic;
  SIGNAL reg_flag_next                    : std_logic;
  SIGNAL reg_ready_flag_next              : std_logic;
  SIGNAL reg_input_count_next             : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL reg_count_out_cols_next          : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL reg_repeat_frame_next            : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL reg_track_stored_next            : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL state_next                       : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL state_not_empty_next             : std_logic;
  SIGNAL sw_reg_i_next                    : std_logic;  -- ufix1
  SIGNAL sw_reg_j_next                    : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL sw_reg_a_next                    : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL sw_reg_b_next                    : unsigned(2 DOWNTO 0);  -- ufix3

BEGIN
  Buffer_and_Sliding_Window_State_Machine_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset = '1' THEN
        state_not_empty <= '0';
        reg_ready_nx_layer <= '0';
        reg_flag <= '0';
        reg_ready_flag <= '1';
        reg_input_count <= to_unsigned(16#000#, 9);
        reg_count_out_cols <= to_unsigned(16#000#, 9);
        reg_repeat_frame <= to_unsigned(16#0#, 3);
        reg_track_stored <= to_unsigned(16#000#, 9);
        state <= to_unsigned(16#0#, 3);
        sw_reg_i <= '0';
        sw_reg_j <= to_unsigned(16#00#, 8);
        sw_reg_a <= to_unsigned(16#0#, 2);
        sw_reg_b <= to_unsigned(16#0#, 3);
      ELSIF enb = '1' THEN
        reg_ready_nx_layer <= reg_ready_nx_layer_next;
        reg_flag <= reg_flag_next;
        reg_ready_flag <= reg_ready_flag_next;
        reg_input_count <= reg_input_count_next;
        reg_count_out_cols <= reg_count_out_cols_next;
        reg_repeat_frame <= reg_repeat_frame_next;
        reg_track_stored <= reg_track_stored_next;
        state <= state_next;
        state_not_empty <= state_not_empty_next;
        sw_reg_i <= sw_reg_i_next;
        sw_reg_j <= sw_reg_j_next;
        sw_reg_a <= sw_reg_a_next;
        sw_reg_b <= sw_reg_b_next;
      END IF;
    END IF;
  END PROCESS Buffer_and_Sliding_Window_State_Machine_process;

  Buffer_and_Sliding_Window_State_Machine_output : PROCESS (ready_nx_layer, reg_count_out_cols, reg_flag, reg_input_count, reg_ready_flag,
       reg_ready_nx_layer, reg_repeat_frame, reg_track_stored, state,
       state_not_empty, sw_reg_a, sw_reg_b, sw_reg_i, sw_reg_j, validIn)
    VARIABLE reg_flag_temp : std_logic;
    VARIABLE reg_ready_flag_temp : std_logic;
    VARIABLE reg_count_out_cols_temp : unsigned(8 DOWNTO 0);
    VARIABLE reg_track_stored_temp : unsigned(8 DOWNTO 0);
    VARIABLE state_temp : unsigned(2 DOWNTO 0);
    VARIABLE add_cast : unsigned(2 DOWNTO 0);
    VARIABLE add_temp : unsigned(2 DOWNTO 0);
    VARIABLE add_cast_0 : unsigned(18 DOWNTO 0);
    VARIABLE add_temp_0 : unsigned(8 DOWNTO 0);
    VARIABLE mul_temp : unsigned(17 DOWNTO 0);
    VARIABLE add_cast_1 : unsigned(18 DOWNTO 0);
    VARIABLE add_temp_1 : unsigned(18 DOWNTO 0);
    VARIABLE cast : unsigned(13 DOWNTO 0);
    VARIABLE add_cast_2 : unsigned(1 DOWNTO 0);
    VARIABLE add_temp_2 : unsigned(1 DOWNTO 0);
  BEGIN
    add_temp := to_unsigned(16#0#, 3);
    add_temp_0 := to_unsigned(16#000#, 9);
    mul_temp := to_unsigned(16#00000#, 18);
    add_temp_1 := to_unsigned(16#00000#, 19);
    add_temp_2 := to_unsigned(16#0#, 2);
    add_cast := to_unsigned(16#0#, 3);
    add_cast_0 := to_unsigned(16#00000#, 19);
    add_cast_1 := to_unsigned(16#00000#, 19);
    cast := to_unsigned(16#0000#, 14);
    add_cast_2 := to_unsigned(16#0#, 2);
    reg_flag_temp := reg_flag;
    reg_ready_flag_temp := reg_ready_flag;
    reg_count_out_cols_temp := reg_count_out_cols;
    reg_track_stored_temp := reg_track_stored;
    state_temp := state;
    reg_input_count_next <= reg_input_count;
    reg_repeat_frame_next <= reg_repeat_frame;
    state_not_empty_next <= state_not_empty;
    sw_reg_i_next <= sw_reg_i;
    sw_reg_j_next <= sw_reg_j;
    sw_reg_a_next <= sw_reg_a;
    sw_reg_b_next <= sw_reg_b;
    -- States
    -- Write samples to buffer
    -- Wait for ready to perform sliding window
    -- Slide window for next layer input
    -- Constant Variables
    IF ( NOT state_not_empty) = '1' THEN 
      state_not_empty_next <= '1';
      state_temp := to_unsigned(16#1#, 3);
    END IF;
    validOut <= '0';
    rd_addr_tmp <= to_unsigned(16#000#, 9);
    wr_addr_tmp <= to_unsigned(16#000#, 9);
    wr_en <= '0';
    ready_prev <= '0';
    rd_row_idx_tmp <= to_unsigned(16#00#, 7);
    CASE state_temp IS
      WHEN "001" =>
        IF validIn = '1' THEN 
          wr_en <= '1';
          wr_addr_tmp <= reg_input_count;
          reg_track_stored_temp := reg_track_stored + to_unsigned(16#001#, 9);
          reg_flag_temp := '1';
          IF reg_input_count = to_unsigned(16#0FB#, 9) THEN 
            reg_input_count_next <= to_unsigned(16#000#, 9);
          ELSE 
            reg_input_count_next <= reg_input_count + to_unsigned(16#001#, 9);
          END IF;
        END IF;
        IF (ready_nx_layer AND ( NOT reg_ready_nx_layer)) = '1' THEN 
          reg_ready_flag_temp := '1';
        END IF;
        IF ((reg_flag_temp AND reg_ready_flag_temp) AND hdlcoder_to_stdlogic(reg_count_out_cols < reg_track_stored_temp)) = '1' THEN 
          -- Sliding window operation for GEMM transform for next layer
          --                 rd_addr = cast(((sw_reg.i + sw_reg.a) * stride_C) + sw_reg.c + ...
          --                         ((sw_reg.j + sw_reg.b) * stride_K_C),'like',reg.rd_addr);
          add_cast := '0' & '0' & sw_reg_i;
          add_temp := add_cast + resize(sw_reg_a, 3);
          add_cast_0 := resize(add_temp & '0' & '0' & '0' & '0' & '0' & '0' & '0', 19);
          add_temp_0 := resize(sw_reg_j, 9) + resize(sw_reg_b, 9);
          -- CSD Encoding (256) : 100000000; Cost (Adders) = 0
          mul_temp := resize(add_temp_0 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18);
          add_cast_1 := resize(mul_temp, 19);
          add_temp_1 := add_cast_0 + add_cast_1;
          cast := resize(add_temp_1(18 DOWNTO 7), 14);
          reg_count_out_cols_temp := cast(8 DOWNTO 0);
          rd_addr_tmp <= reg_count_out_cols_temp;
          rd_row_idx_tmp <= to_unsigned(16#00#, 7);
          validOut <= '1';
          IF reg_repeat_frame = to_unsigned(16#3#, 3) THEN 
            reg_repeat_frame_next <= to_unsigned(16#0#, 3);
            -- loop over kernel y direction
            IF sw_reg_b = to_unsigned(16#2#, 3) THEN 
              -- SAME HERE
              sw_reg_b_next <= to_unsigned(16#0#, 3);
              -- loop over kernel x direction
              IF sw_reg_a = to_unsigned(16#1#, 2) THEN 
                -- AND HERE
                sw_reg_a_next <= to_unsigned(16#0#, 2);
                -- loop over input y direction
                IF sw_reg_i = '0' THEN 
                  -- AND HERE
                  sw_reg_i_next <= '0';
                  -- loop over input x direction
                  IF sw_reg_j = to_unsigned(16#7B#, 8) THEN 
                    -- AND HERE
                    sw_reg_j_next <= to_unsigned(16#00#, 8);
                    ready_prev <= '1';
                    reg_flag_temp := '0';
                    reg_ready_flag_temp := '0';
                    reg_track_stored_temp := to_unsigned(16#000#, 9);
                    -- Reset to zero
                  ELSE 
                    sw_reg_j_next <= sw_reg_j + to_unsigned(16#01#, 8);
                  END IF;
                ELSE 
                  add_cast_2 := '0' & sw_reg_i;
                  add_temp_2 := add_cast_2 + to_unsigned(16#1#, 2);
                  sw_reg_i_next <= add_temp_2(0);
                END IF;
              ELSE 
                sw_reg_a_next <= sw_reg_a + to_unsigned(16#1#, 2);
              END IF;
            ELSE 
              sw_reg_b_next <= sw_reg_b + to_unsigned(16#1#, 3);
            END IF;
          ELSE 
            reg_repeat_frame_next <= reg_repeat_frame + to_unsigned(16#1#, 3);
          END IF;
        END IF;
      WHEN OTHERS => 
        NULL;
    END CASE;
    reg_ready_nx_layer_next <= ready_nx_layer;
    reg_flag_next <= reg_flag_temp;
    reg_ready_flag_next <= reg_ready_flag_temp;
    reg_count_out_cols_next <= reg_count_out_cols_temp;
    reg_track_stored_next <= reg_track_stored_temp;
    state_next <= state_temp;
  END PROCESS Buffer_and_Sliding_Window_State_Machine_output;


  wr_addr <= std_logic_vector(wr_addr_tmp);

  rd_addr <= std_logic_vector(rd_addr_tmp);

  rd_row_idx <= std_logic_vector(rd_row_idx_tmp);

END rtl;

