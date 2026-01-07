% Modulation scheme generator

rng(67);

% Number of frames
numFramesPerModType = 1000;

% Constants for all mods
sps = 8;
spf = 8192;
symbolsPerFrame = spf/sps;
rolloff = 0.5;
filter_length = 10;
fs = 128e6;
% filter coefficients
filterCoeffs = rcosdesign(rolloff, filter_length, sps);

%% Channel
% SNRs = [-20,-16,-12,-8,-4,0,4,8,12,16,20,24];
% SNR = 24;
maxOffset = 5;
fc = 300e6;
fs = 128e6;
multipathChannel = comm.RicianChannel(...
    'SampleRate', fs,...
    'PathDelays', [0 1.8 3.4]/fs,...
    'AveragePathGains', [0 -2 -10],...
    'KFactor', 4,...
    'MaximumDopplerShift',4);

frequencyShifter = comm.PhaseFrequencyOffset(...
    'SampleRate', fs);

%% QPSK

QPSK = zeros(numFramesPerModType,2,spf/2);

for i=0:size(QPSK,1)-1

    d = randi([0 3], spf/sps, 1);
    % d = [0; 0; 0; 0; d; 1];

    syms = pskmod(d,4,pi/4);

    % Pulse shape
    tx = filter(filterCoeffs, 1, upsample(syms,sps));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    QPSK(i+1,:,:) = framesReal;

end


% QPSK = [real(out), imag(out)];
%% BPSK

BPSK = zeros(numFramesPerModType,2,spf/2);

for i=0:size(BPSK,1)-1
    
    d = randi([0 1], spf/sps, 1);
    
    syms = pskmod(d,2);

    % Pulse shape
    tx = filter(filterCoeffs, 1, upsample(syms,sps));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    BPSK(i+1,:,:) = framesReal;    
    
end
%% QAM16

d = randi([0 15], spf/sps, 1);

syms = qammod(d,16,'UnitAveragePower',true);

out = filter(filterCoeffs, 1, upsample(syms,sps));

QAM16 = zeros(numFramesPerModType,2,spf/2);

for i=0:size(QAM16,1)-1
    
    d = randi([0 15], spf/sps, 1);

    syms = qammod(d,16,'UnitAveragePower',true);

    tx = filter(filterCoeffs, 1, upsample(syms,sps));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    QAM16(i+1,:,:) = framesReal;    
    
end
%% QAM64

QAM64 = zeros(numFramesPerModType,2,spf/2);

for i=0:size(QAM64,1)-1
    
    d = randi([0 63], spf/sps, 1);

    syms = qammod(d, 64, 'UnitAveragePower', true);

    tx = filter(filterCoeffs, 1, upsample(syms,sps));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    QAM64(i+1,:,:) = framesReal;    
    
end
%% 8PSK

PSK8 = zeros(numFramesPerModType,2,spf/2);

for i=0:size(PSK8,1)-1
    
    d = randi([0 7], spf/sps, 1);

    syms = pskmod(d, 8);

    tx = filter(filterCoeffs, 1, upsample(syms,sps));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    PSK8(i+1,:,:) = framesReal;    
    
end
%% PAM4

PAM4 = zeros(numFramesPerModType,2,spf/2);

for i=0:size(PAM4,1)-1
    
    amp = 1 / sqrt(mean(abs(pammod(0:3, 4)).^2));

    d = randi([0 3], spf/sps, 1);

    syms = pammod(d,4);

    tx = complex(filter(filterCoeffs, 1, upsample(syms,sps)));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    PAM4(i+1,:,:) = framesReal;    
    
end
%% GFSK

GFSK = zeros(numFramesPerModType,2,spf/2);

for i=0:size(GFSK,1)-1
    
    d = randi([0 1], spf/sps, 1);
    M = 2;
    mod = comm.CPMModulator(...
        'ModulationOrder', M, ...
        'FrequencyPulse', 'Gaussian', ...
        'BandwidthTimeProduct', 0.5, ...
        'ModulationIndex', 1, ...
        'SamplesPerSymbol', sps);
    meanM = mean(0:M-1);

    tx = mod(2*(d-meanM));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    GFSK(i+1,:,:) = framesReal;    
    
end
%% CPFSK

CPFSK = zeros(numFramesPerModType,2,spf/2);

for i=0:size(CPFSK,1)-1
    
    d = randi([0 1], spf/sps, 1);
    M = 2;
    mod = comm.CPFSKModulator(...
        'ModulationOrder', M, ...
        'ModulationIndex', 0.5, ...
        'SamplesPerSymbol', sps);
    meanM = mean(0:M-1);

    tx = mod(2*(d-meanM));

    % Channel
    reset(multipathChannel);
    outMultipathChan = multipathChannel(tx);

    % Clock Offset factor
    clockOffset = (rand()* 2*maxOffset) - maxOffset;
    C = 1 + clockOffset / 1e6;

    % Add frequency offset
    frequencyShifter.FrequencyOffset = -(C-1)*fc;
    outFreqShifter = frequencyShifter(outMultipathChan);

    % Add sampling time drift
    t = (0:length(tx)-1)' / fs;
    newFs = fs * C;
    tp = (0:length(tx)-1)' / newFs;
    outTimeDrift = interp1(t, outFreqShifter, tp);

    % numFramePerModTypeAdd noise
    rx = awgn(outTimeDrift,SNR,0);

    % Get frames
    framesComplex = frameGenerator(rx,spf/2,spf/2,50,sps);

    % Real-frames
    I = permute(real(framesComplex), [3 1 4 2]);
    Q = permute(imag(framesComplex), [3 1 4 2]);
    framesReal = cat(1, I, Q);
    
    CPFSK(i+1,:,:) = framesReal;    
    
end

%% Train/Validation/Test Split
allMods = cat(1,QPSK, BPSK, QAM16, QAM64, PSK8, PAM4, GFSK, CPFSK);
labels = repelem([{'QPSK'},{'BPSK'},{'QAM16'},{'QAM64'},{'PSK8'},{'PAM4'},{'GFSK'},{'CPFSK'}],[numFramesPerModType]);

% Shuffle
rng(12345);
idx = [1:length(labels)];
idx = idx(randperm(length(idx)));

totalFrames = numFramesPerModType * 8;

% Training/Validation/Test split
percentTrainingSet = 0.8;
percentValidationSet = 0.1;
percentTestSet = 0.1;

train_idx = idx(1:floor(totalFrames*percentTrainingSet));
valid_idx = idx(floor(totalFrames*percentTrainingSet)+1:floor(totalFrames*percentTrainingSet)+floor(totalFrames*percentValidationSet));
test_idx  = idx(floor(totalFrames*percentTrainingSet)+floor(totalFrames*percentValidationSet)+1:floor(totalFrames*percentTrainingSet)+floor(totalFrames*percentValidationSet)+floor(totalFrames*percentValidationSet));

train_mods = allMods(train_idx,:,:);
label_train = labels(train_idx);
valid_mods = allMods(valid_idx,:,:);
label_valid = labels(valid_idx);
test_mods = allMods(test_idx,:,:);
label_test = labels(test_idx);
%% write to file

save(sprintf('mods_schemes_SNR_%d.mat',SNR),'train_mods','label_train','valid_mods','label_valid','test_mods','label_test','-v7.3');

%% Help functions

function y = frameGenerator(x, windowLength, stepSize, offset, sps)
    numSamples = length(x);
    numFrames = ...
      floor(((numSamples-offset)-(windowLength-stepSize))/stepSize);

    y = zeros([windowLength,numFrames],class(x));

    startIdx = offset + randi([0 sps]);
    frameCnt = 1;
    while startIdx + windowLength < numSamples
      xWindowed = x(startIdx+(0:windowLength-1),1);
      framePower = mean(abs(xWindowed).^2);
      xWindowed = xWindowed / sqrt(framePower);
      y(:,frameCnt) = xWindowed;
      frameCnt = frameCnt + 1;
      startIdx = startIdx + stepSize;
    end

end