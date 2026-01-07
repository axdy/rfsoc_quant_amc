import numpy as np
import scipy
import mat73
import pickle

snrs = ['-20', '-16', '-12', '-8', '-4', '0', '4', '8', '12', '16', '20', '24', '28', '30']
mods = ['QPSK', 'BPSK', 'QAM16', 'QAM64', 'PSK8', 'PAM4', 'GFSK', 'CPFSK']

# Initialize dictionaries to store data for each modulation scheme across all SNRs
mod_data = {mod: {} for mod in mods}

# Loop through each SNR and collect data
for snr in snrs:
    print(f"Processing SNR: {snr} dB")
    
    dataset = mat73.loadmat(f'mods_schemes_{snr}.mat')
    
    train_mods = dataset['train_mods']
    label_train = dataset['label_train']
    
    # Temporary storage for this SNR
    snr_mod_data = {mod: np.array([]) for mod in mods}
    
    for i in range(len(label_train)):
        label = label_train[i]
        data = train_mods[i, :, :]
        
        if snr_mod_data[label].size == 0:
            snr_mod_data[label] = data
        else:
            snr_mod_data[label] = np.dstack((snr_mod_data[label], data))
    
    # Store this SNR's data with tuple key (mod, snr)
    for mod in mods:
        if snr_mod_data[mod].size > 0:
            mod_data[mod][(mod, snr)] = snr_mod_data[mod]

# Save a separate file for each modulation scheme
for mod in mods:
    if mod_data[mod]:
        filename = f'transmit_{mod.upper()}_SNR.pkl'
        with open(filename, 'wb') as f:
            pickle.dump(mod_data[mod], f)
        
        print(f"Saved {filename} with {len(mod_data[mod])} SNR levels")