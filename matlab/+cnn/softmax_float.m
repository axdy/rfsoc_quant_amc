function [a] = softmax_float(n)
    a = exp(n)/sum(exp(n));
end