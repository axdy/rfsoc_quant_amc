function out_filt = roll_out_filter(filter)
% ROLL_OUT_FILTER takes input 4D filter and unrolls it to fit the GEMM
% requirement so that a matrix multiply operation can be used instead of
% convolution. Creates an N by CJK matrix.

    [N,C,J,K] = size(filter);
    out_filt = zeros(N,C*J*K);              % Setting size of desired GEMM filter
    for n = 1:N
        for c = 1:C
            filt_tmp = squeeze(filter(n,c,:,:));
            f1 = filt_tmp.';              % Vectorise current JxK filter in channel
            f = f1(:).';
            f_idx_start = ((c-1)*J*K)+1;    % calculate starting index for every 6 weights (JxK)
            for i=1:length(f)
                out_filt(n,(f_idx_start+i)-1) = f(i);                        
            end
        end
    end

end