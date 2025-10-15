% Initialise CNN weights and input

inputs_path = './input_30dB.mat'; % Move the .mat file with model inputs from the training scripts here (adjust name)
test_data_input = load(inputs_path);
test_data_input.inputs = squeeze(test_data_input.inputs);
weights_path = './model_16w16a.mat'; % Move the .mat file with model weights from the training scripts (adjust name)
amc_weights = load(weights_path);
% ensure conv dims are H, W, C, N
Wconv1 = permute(amc_weights.Wconv1,[3 4 2 1]);
Wconv2 = permute(amc_weights.Wconv2,[3 4 2 1]);
% ensure dense dims are in_size, out_size
Wdense1 = amc_weights.Wdense1.';
Wdense2 = amc_weights.Wdense2.';

gemm_wconv1 = fi(hInterleaveFilters(Wconv1),1,16); % Adjust bit-width to match desired bit-width
gemm_wconv2 = fi(hInterleaveFilters(Wconv2),1,16); % Adjust bit-width to match desired bit-width
wdense1 = fi(Wdense1,1,16); % Adjust bit-width to match desired bit-width
wdense2 = fi(Wdense2,1,16); % Adjust bit-width to match desired bit-width

X_test = fi(test_data_input.inputs(1:50,:,:),1,16,14); % Run the first 50 frames through the model
datatypeInput = X_test.numerictype;

input = fi(squeeze(test_data_input.inputs(50,:,:)),1,16,14);
wconv1_permuted = permute(Wconv1,[4 3 1 2]);
wconv1          = fi(cnn.gemm.roll_out_filter(wconv1_permuted),1,16); % Adjust bit-width to match desired bit-width
wconv2_permuted = permute(Wconv2,[4 3 1 2]);
wconv2          = fi(cnn.gemm.roll_out_filter(wconv2_permuted),1,16).'; % Adjust bit-width to match desired bit-width
wfc1   = fi(Wdense1,1,16); % Adjust bit-width to match desired bit-width
wfc2   = fi(Wdense2,1,16); % Adjust bit-width to match desired bit-width

a1 = 99;
a2 = 99;
a3 = 99;
a4 = 99;

% progress bar
f = waitbar(0,'Initialising...');

total_loops = 1000;
for i=1:total_loops
input = fi(squeeze(test_data_input.inputs(i,:,:)),1,16,14);
[out_gemm.conv1,out_gemm.b1,out_gemm.act1,out_gemm.gemm_conv1,out_gemm.conv2,out_gemm.b2,...
out_gemm.act2,out_gemm.flatten,out_gemm.fc1,out_gemm.b3,out_gemm.act3,out_gemm.fc2,out_gemm.b4,out_gemm.act4] = ...
    cnn.cnn_gemm_amc(input,wconv1,wconv2,wfc1,wfc2);
if out_gemm.conv1.numerictype.FractionLength < a1
    a1 = out_gemm.conv1.numerictype.FractionLength;
end
if out_gemm.conv2.numerictype.FractionLength < a2
    a2 = out_gemm.conv2.numerictype.FractionLength;
end
if out_gemm.act3.numerictype.FractionLength < a3
    a3 = out_gemm.act3.numerictype.FractionLength;
end
if out_gemm.fc2.numerictype.FractionLength < a4
    a4 = out_gemm.fc2.numerictype.FractionLength;
end
waitbar(i/total_loops,f,'Calculating...');
end
close(f);

a1
a2
a3
a4

% Process cnn and output intermediate points
[out_gemm.conv1,out_gemm.b1,out_gemm.act1,out_gemm.gemm_conv1,out_gemm.conv2,out_gemm.b2,...
out_gemm.act2,out_gemm.flatten,out_gemm.fc1,out_gemm.b3,out_gemm.act3,out_gemm.fc2,out_gemm.b4,out_gemm.act4] = ...
    cnn.cnn_gemm_amc(input,wconv1,wconv2,wfc1,wfc2);

% accumulator fixed_point
accumoutdatatype1 = fixdt(1,34,28);
accumoutdatatype2 = fixdt(1,41,30);
accumoutdatatype3 = fixdt(1,57,38);%fixdt(1,43,29);
accumoutdatatype4 = fixdt(1,39,26);

% activation data type
% The accumulator bit-widths may need adjusting, but these should work for
% most weight results.
datatypeLayer1 = fixdt(1,34,28);
datatypeLayer2 = fixdt(1,41,30);
datatypeLayer3 = fixdt(1,57,38);
datatypeLayer4 = fixdt(1,16,a4); % the final bit-width is calculated using the script above (a1, a2, a3, a4).

conv1_numerictype = datatypeLayer1;

act1datatype = datatypeLayer1;
act2datatype = datatypeLayer2;
act3datatype = datatypeLayer3;

[dataIn, valid] = prepareDatasetTesting(squeeze(X_test));
dataIna = dataIn;


function [dataIn, valid] = prepareDatasetTesting(X_test)

    x_real = reshape(squeeze(X_test(:,1,:)).',1,[]);
    x_imag = reshape(squeeze(X_test(:,2,:)).',1,[]);
    
    dataIn = squeeze(complex(x_real, x_imag));
    valid = true(length(dataIn),1);

end

