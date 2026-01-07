SNRs = [-20,-16,-12,-8,-4,0,4,8,12,16,20,24,28,30];

for i=1:length(SNRs)
    SNR = SNRs(i);
    generateModulationSchemesSNR;
end