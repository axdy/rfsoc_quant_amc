function gemm_out = gemm_transform_input(input_dim,filter_dim)
    % Function that performs im2col on each channel of input data. Im2col
    % populated with filter dimensions.
    
    % Inputs should be sizes of inputs (Not input themselves!)
    
    C = input_dim(1);
    
    % Index input
    input_index_1D = 1:(input_dim(1)*input_dim(2)*input_dim(3));
    input_index = permute(reshape(input_index_1D,input_dim(3),input_dim(2),input_dim(1)),[3 2 1]);
    
    % Output dims calculations
    dim1 = input_dim(2) - filter_dim(1) +1;   % Dimensions of output if filter has not padding
    dim2 = input_dim(3) - filter_dim(2) +1;
    im2col_out = zeros(filter_dim(1)*filter_dim(2),dim1*dim2); % im2col calculation output
    tmp_out = zeros(C,size(im2col_out,2),filter_dim(1)*filter_dim(2));
    gemm_out = zeros(size(im2col_out,2),C*filter_dim(1)*filter_dim(2));
    
    inc = 0;
    for c = 1:C
%         tmp_out(c,:,:) = im2col(squeeze(input_index(c,:,:)),filter_dim);
        b = cnn.gemm.indexPaddingReplication_inv([input_dim(2),input_dim(3)],filter_dim);
        tmp_out(c,:,:) = b + inc;
        inc = inc + (input_dim(2)*input_dim(3));
    end
    
    gemm_out = reshape(permute(tmp_out,[2 3 1]),size(gemm_out,1),size(gemm_out,2));
    
end