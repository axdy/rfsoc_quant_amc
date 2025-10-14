function [conv_bias] = add_bias(conv_out, bias, varargin)
    
    dim = 1;
    numerictype = conv_out.numerictype;

    if ~isempty(varargin)
        for c = 3:2:length(varargin)
            switch varargin{c}
                case {'dim'}
                    dim = varargin{c+1};
                case {'numerictype'}
                    numerictype = varargin{c+1};
            end
        end
    end

    assert(length(bias) == size(conv_out,dim));
    
%     conv_bias = fi(zeros(size(conv_out,1), size(conv_out,2)),numerictype);
    
    if dim == 1
        for i = 1:size(conv_out,2)
            conv_bias(:,i) = conv_out(:,i) + bias;
        end
    elseif dim == 2
        for i = 1:size(conv_out,1)
            conv_bias(i,:) = conv_out(i,:) + bias;
        end  
    end
end