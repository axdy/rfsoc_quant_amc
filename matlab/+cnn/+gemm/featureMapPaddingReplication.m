function b = featureMapPaddingReplication(a,block)
    % a - dimensions of featuremap
    % block - dimensions of kernel
    % Function calculates the index placesment for one block and 
    % adds offset for other blocks. Since the 
    C = a(1); H = a(2); W = a(3);
    JK = block(1) * block(2);
    ref = cnn.gemm.indexPaddingReplication([H W],block);
    b = zeros(C*block(1)*block(2),size(ref,2));
    in = ref;

    for c = 1:C     % loop through Channels
        lower = ((c-1)*JK) + 1;
        upper = (c*JK);
        for i = 1:upper-lower+1
            b(lower+i-1,:) = in(i,:);
        end
    %                 b(lower:upper,:) = in;
        in = in + (H*W);
    end
end

