function [wconv_bram] = package_weights(weights_4d,total_weights)
% PACKAGE_WEIGHTS function to take 4d 2-bit convolutional weights and
% package them up into one fi number to store into BRAM.
% Data format: 4D tensor with dims in order [N, C, H, W]

    % Constants
    BRAM_SIZE   = 72;
    WEIGHT_SIZE = 2;
    WEIGHTS_PER_ADDRESS = BRAM_SIZE/WEIGHT_SIZE;
    
    % Roll out filter
    wconv_gemm = cnn.gemm.roll_out_filter(weights_4d).';
    
    % Quantise into 2-bits and unroll GEMM matrix
    q_wconv_vec = fi(wconv_gemm(:),1,2,1);
    
    num_columns = ceil(total_weights/36);
    
    wconv_bram_mat = cast(zeros(num_columns,36),'like',q_wconv_vec);
    
    wconv_bram_mat_T = wconv_bram_mat.';
    
    wconv_bram_mat_T(1:length(q_wconv_vec)) = q_wconv_vec.';
    
    wconv_bram_mat = wconv_bram_mat_T.';
    
%     wconv_bram_cell = num2cell(wconv_bram_mat);
    
    wconv_bram = fi(zeros(6,1),0,72,0);
    
    for i=1:size(wconv_bram_mat,1)
        wconv_bram(i) = bitconcat(wconv_bram_mat(i,:));
    end
end