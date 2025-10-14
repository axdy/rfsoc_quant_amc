function [conv1,act1,gemm_conv1,conv2,act2,flattened,fc1,act3,fc2,act4] = cnn_gemm(input,wconv1,wconv2,wfc1,wfc2)
    
    % input
    gemm_input = fi(input(cnn.gemm.indexPaddingReplication([2,128],[1,3])),1,18);
    
    % conv1 + activation
    conv1 = fi(wconv1 * gemm_input,1,18);
    relu_act1 = max(0, conv1);
    clip_act1 = fi(relu_act1,1,18);
    act1 = clip_act1;
    
    act1_out_reshape = reshape(act1,64,2,126);
    
    % Vectorise the output
    act1_out_vec = reshape(permute(act1_out_reshape,[3 2 1]),1,size(act1_out_reshape,1)*size(act1_out_reshape,2)*size(act1_out_reshape,3));
    
    % gemm reshape for input to layer 2
    gemm_conv1 = act1_out_vec(cnn.gemm.gemm_transform_input([64 2 126],[2 3]));
    
    % conv2 + activation
    conv2 = fi(gemm_conv1 * wconv2,1,18).';
    relu_act2  = max(0, conv2);
    clip_act2 = fi(relu_act2,1,18);
    act2 = clip_act2;
    
    % flatten
    flattened = reshape(act2,1,1984);
    
    % fully connected layer 1 + activation
    fc1  = fi(flattened * wfc1,1,18);
    relu_act3 = max(0, fc1);
    clip_act3 = cast(relu_act3,'like',fc1);
    act3 = clip_act3;
    
    % fully connected layer 2 + activation
    fc2  = fi(act3 * wfc2,1,18);
    act4 = fc2;
    
end

