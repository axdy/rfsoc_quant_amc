function [conv1,act1,conv2,act2,flatten,fc1,act3,fc2, act4] = cnn_float(input,wconv1,wconv2,wfc1,wfc2,b1,b2,b3,b4)
%CNN_FLOAT function to process convolutional neural network for AMC without
%transforms or quantisations. Used to compare again tensorflow data.
% #Works
    
    % Layer 1
    conv1 = cnn.conv(input,wconv1,b1,1);
    act1 = conv1;
    act1(act1<0) = 0;
    
    % Layer 2
    conv2 = cnn.conv(act1,wconv2,b2,1);
    act2 = conv2;
    act2(act2<0) = 0;
    
    % Flatten
    conv2_2d = reshape(act2,size(act2,1),[]);
    flatten  = reshape(conv2_2d,1,[]);
    
    % Layer 3
    fc1 = flatten * wfc1 + b3;
    act3 = fc1;
    act3(act3<0) = 0;
    
    % Layer 4
    fc2 = act3 * wfc2 + b4;
    act4 = fc2;

end

