function Wq = quantized_relu(W,nb)
%QUANTIZED_RELU performed relu version of quantization
%The weights' binarization function, 
% # Reference:
% - [QuantizedNet: Training Deep Neural Networks with Weights and 
%   Activations Constrained to +1 or -1, Courbariaux et al. 2016](http://arxiv.org/abs/1602.02830}

relu_W = max(0,W); % FP relu
clip_W = double(fi(relu_W,1,nb,nb-1));
Wq = clip_W;
end

