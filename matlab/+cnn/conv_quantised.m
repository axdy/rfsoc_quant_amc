function out = conv_quantised(data,filt,bias,s,output_type)
%CONV_QUANTISED 
    % Convolves 'filt' over 'data' using stride 's'
    % N - number of filters, C - Channels, H - Height, W - width
    
    [filt_N, filt_C, filt_H, filt_W] = size(filt);
    [data_C, data_H, data_W] = size(data);
    
    assert(filt_C == data_C, 'Dimensions must agree');
    
    % Calculate the output dimension (C,H,W)
    outdim_C = ceil((data_C - filt_C)/s)+1;                                 % Always 1
    outdim_H = ceil((data_H - filt_H)/s)+1;
    outdim_W = ceil((data_W - filt_W)/s)+1;
    outdim_N = filt_N;
    
    out = fi(zeros(outdim_N, outdim_H, outdim_W),output_type);
    
    % Convolve the filter over every part of the image, adding the bias at
    % each stage
    
    for curr_N = 1:filt_N
        out_h = 1;
        for curr_H = 1:s:data_H-filt_H+1
            out_w = 1;
            for curr_W = 1:s:data_W-filt_W+1
                filter = reshape(filt(curr_N,:,:,:), size(filt, 2), size(filt,3), size(filt,4));
                data_partial = data(:,curr_H:curr_H+filt_H-1,curr_W:curr_W+filt_W-1);
                summation1 = sum(filter.*data_partial);
                summation2 = sum(summation1);
                summation3 = sum(summation2);
                out(curr_N,out_h,out_w) = summation3;% + bias(curr_N);
                out_w = out_w + 1;
            end
            out_h = out_h + 1;
        end
    end    
end

