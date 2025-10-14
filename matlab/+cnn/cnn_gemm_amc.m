% function [conv1,conv1_bias,act1,gemm_conv1,conv2,conv2_bias,act2,flattened,...
%             fc1,fc1_bias,act3,fc2,fc2_bias,act4] = cnn_gemm_amc(...
%                         input,wconv1,wconv2,wfc1,wfc2)
%     
%     % input
%     gemm_input = input(cnn.gemm.indexPaddingReplication([2,128],[1,3]));
%     
%     % conv1 + activation
%     conv1 = fi(wconv1 * gemm_input,1,16,15);
%     conv1_bias = conv1;
%     act1 = fi(max(0, conv1_bias),1,16,15);
%     
%     act1_out_reshape = reshape(act1,64,2,126);
%     
%     % Vectorise the output
%     act1_out_vec = reshape(permute(act1_out_reshape,[3 2 1]),1,size(act1_out_reshape,1)*size(act1_out_reshape,2)*size(act1_out_reshape,3));
%     
%     % gemm reshape for input to layer 2
%     gemm_conv1 = act1_out_vec(cnn.gemm.gemm_transform_input([64 2 126],[2 3]));
%     
%     % conv2 + activation
%     conv2 = fi(gemm_conv1 * wconv2,1,16,16).';
%     conv2_bias = conv2;
%     act2 = fi(max(0, conv2_bias),1,16,16);
%     
%     % flatten
%     flattened = reshape(act2,1,1984);
%     
%     % fully connected layer 1 + activation
%     fc1  = fi(flattened * wfc1,1,16,13);
%     fc1_bias = fc1;
%     act3 = fi(max(0, fc1_bias),1,16,13);
%     
%     % fully connected layer 2 + activation
%     fc2  = fi(act3 * wfc2,1,16);
%     fc2_bias = fc2;
%     act4 = fc2_bias;
%     
% end
function [conv1,conv1_bias,act1,gemm_conv1,conv2,conv2_bias,act2,flattened,...
            fc1,fc1_bias,act3,fc2,fc2_bias,act4] = cnn_gemm_amc(...
                        input,wconv1,wconv2,wfc1,wfc2)
    
    % input
    gemm_input = fi(input(cnn.gemm.indexPaddingReplication([2,128],[1,3])),1,16,14);
    
    % conv1 + activation
    conv1 = fi(wconv1 * gemm_input,1,16);
    conv1_bias = conv1;
    act1 = fi(max(0, conv1_bias),1,16,14);
    
    act1_out_reshape = reshape(act1,64,2,126);
    
    % Vectorise the output
    act1_out_vec = reshape(permute(act1_out_reshape,[3 2 1]),1,size(act1_out_reshape,1)*size(act1_out_reshape,2)*size(act1_out_reshape,3));
    
    % gemm reshape for input to layer 2
    gemm_conv1 = act1_out_vec(cnn.gemm.gemm_transform_input([64 2 126],[2 3]));
    
    % conv2 + activation
    conv2 = fi(gemm_conv1 * wconv2,1,16).';
    conv2_bias = conv2;
    act2 = fi(max(0, conv2_bias),1,16,14);
    
    % flatten
    flattened = reshape(act2,1,1984);
    
    % fully connected layer 1 + activation
    fc1  = fi(flattened * wfc1,1,16);
    fc1_bias = fc1;
    act3 = fi(max(0, fc1_bias),1,16,12);
    
    % fully connected layer 2 + activation
    fc2  = fi(act3 * wfc2,1,16);
%     fc2  = act3 * wfc2;
    fc2_bias = fc2;
    act4 = fc2_bias;
    
end