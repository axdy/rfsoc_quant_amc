function b = indexPaddingReplication_inv(a,block) % im2col but without assignment at the end
        ma = a(1); na = a(2); % Dimensions of 
        m = block(1); n = block(2);

        if any([ma na] < [m n]) % if neighborhood is larger than image
            b = zeros(m*n,0);
            return
        end

        % Create Hankel-like indexing sub matrix.
        mc = block(1); nc = ma-m+1; nn = na-n+1;
        out_mat = zeros(nn,m*n); % Output size is calculated by the size 
        % total size of filter and expected output size from processing filter.
        
        cidx = 1:nn; % column index for processing all possible filter column positions
        ridx = 1:nc; % row index for processing all possible filter row positions
        
        % Make indecies of a
        list = 1:a(1)*a(2);
        input = reshape(list,a(2),a(1)).';
        
        outidx = 1;
        for i = ridx
            for j = cidx
                
                tmp_roll = zeros(1,m*n);
                tmpidx = 1;
                % Count through filter
                for r = 0:m-1
                    
                    for c = 0:n-1
                        tmp_roll(tmpidx) = input(i+r,j+c);
                        tmpidx = tmpidx + 1;
                    end
                
                end
                out_mat(outidx,:) = tmp_roll;
                outidx = outidx+1;
            end
        end
       b = out_mat;
       out_dim = [nc, nn]; % output dimension of none gemm output
end