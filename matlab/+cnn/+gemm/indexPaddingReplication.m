function b = indexPaddingReplication(a,block) % im2col but without assignment at the end
        ma = a(1); na = a(2); % Dimensions of 
        m = block(1); n = block(2);

        if any([ma na] < [m n]) % if neighborhood is larger than image
            b = zeros(m*n,0);
            return
        end

        % Create Hankel-like indexing sub matrix.
        mc = block(1); nc = ma-m+1; nn = na-n+1;
        cidx = (0:mc-1)'; ridx = 1:nc;
        t = cidx(:,ones(nc,1)) + ridx(ones(mc,1),:);    % Hankel Subscripts
        tt = zeros(mc*n,nc);
        rows = 1:mc;
        for i=0:n-1
            tt(i*mc+rows,:) = t+ma*i;
        end
        ttt = zeros(mc*n,nc*nn);
        cols = 1:nc;
        for j=0:nn-1
            ttt(:,j*nc+cols) = tt+ma*j;
        end

        b = ttt;
end