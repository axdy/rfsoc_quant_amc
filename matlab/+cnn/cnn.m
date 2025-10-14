function [conv1,act1,conv2,act2,flatten,fc1,act3,fc2,act4] = cnn(input,wconv1,wconv2,wfc1,wfc2,b1,b2,b3,b4)
    % Function to process convulutional network for AMC with not
    % transformation savings

    
    % Layer 1
    conv1 = cnn.conv_quantised(input,wconv1,b1,1,numerictype(1,10,8));
    relu_act1 = max(0,conv1);
    clip_act1 = fi(relu_act1,1,2,1);
    act1 = clip_act1;
    
    % Layer 2
    conv2 = cnn.conv_quantised(act1,wconv2,b2,1,numerictype(1,4,2));
    relu_act2 = max(0,conv2);
    clip_act2 = fi(relu_act2,1,2,1);
    act2 = clip_act2;
    
    % Flatten
    conv2_2d = reshape(act2,size(act2,1),[]);
    flatten = reshape(conv2_2d,1,[]);
    
    % Layer 3
    fc1 = flatten * wfc1;% + b3;
    relu_act3 = max(0,fc1);
    clip_act3 = fi(relu_act3,1,2,1);
    act3 = clip_act3;
    
    % Layer 4
    fc2 = act3 * wfc2 ;%+ b4;
    act4 = fc2;
end
